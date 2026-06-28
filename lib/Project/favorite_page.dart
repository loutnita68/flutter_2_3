import 'package:flutter/material.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  int _currentIndex = 2;
  final Color cambodiaGold = const Color(0xFFF2C94C);
  final Color cambodiaDark = const Color(0xFF2D3436);
  final Color cambodiaGray = const Color(0xFF636E72);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu_rounded, size: 40),
        title: const Center(
          child: Text(
            "Favorites",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                "https://i.pinimg.com/736x/11/50/10/1150106db13b0cae280f5165a8632b71.jpg",
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            const SizedBox(height: 8),
            // --- SearchSection ---
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.04),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Icon(Icons.search, color: Colors.grey.shade400, size: 24),
                  const SizedBox(width: 12),
                  Expanded(
                    child: TextField(
                      style: TextStyle(color: cambodiaDark, fontSize: 15),
                      decoration: InputDecoration(
                        hintText: 'Search your saved places...',
                        hintStyle: TextStyle(
                          color: Colors.grey.shade400,
                          fontSize: 15,
                        ),
                        border: InputBorder.none,
                        isDense: true,
                        contentPadding: EdgeInsets.zero,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),
            // --- FavoritesList ---
            _buildDestinationCard(
              title: 'Angkor Wat',
              location: 'Siem Reap, Cambodia',
              description:
                  'The largest religious monument in the world, this UNESCO World Heritage site is a...',
              imageUrl:
                  'https://lh3.googleusercontent.com/aida-public/AB6AXuBEI_aSbVXyM79sBvI6LJoT8JEADjI2PSrye3QKqNV30mXIrRadY8NiZ41R_iX2ewMJlvlqe7ocrlkd378ixc8z7iNkzO6kBzDP7AHp0ePE0HeZr0yDRHwZiV7MX4bmUyL7y0laecznkv9kR0yX4xkpC78E0nyr53EDZ3av4SgMu7u19TY0VBjpVnnCtB01wFPLsBRHCSHJgCWgSrS4QQGBBSSSslt3v-VELaxuf8S5sPeCWVqSTpZOy5D9atF1LriwDQuoi7m9GK4',
              tagText: 'TEMPLE',
            ),

            const SizedBox(height: 24),

            _buildDestinationCard(
              title: 'Koh Rong',
              location: 'Sihanoukville Province',
              description:
                  'Known for its sandy coves and coral reefs, the island is perfect for a relaxing getaway...',
              imageUrl:
                  'https://lh3.googleusercontent.com/aida-public/AB6AXuBOhJ_syDc6bXZM4jpOD3sbo0BDxUGKgSMGGODwz3mnqZCQvjtvPvIniFBwO-8WB-VtgV7IJaqLxdCRYFI3DH0LiKdRBWsvVWjdLJtjmLsPgwpZkMpJ02jMm8PYrRIdMrAVcy-YYK2a6hDmJmHB2BYEiZDG21eGsZT3mSe1AOlNoe-tKq9JUplZpT8TpP5Fn-mc9ILLNjn-iWdMkBbUnSxcazgBFh6_gTtC05VgMNvSDmhxvdfoYyAuBQOCXBpsoVoDBDhV3tdetbY',
              tagText: 'NATURE',
            ),

            const SizedBox(height: 96),
          ],
        ),
      ),
      // --- Bottom Navigation Bar ---
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.06),
              blurRadius: 10,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(index: 0, icon: Icons.home_rounded, label: 'Home'),
            _buildNavItem(
              index: 1,
              icon: Icons.explore_rounded,
              label: 'Explore',
            ),
            _buildActiveNavItem(label: 'Saved'),
            _buildNavItem(
              index: 3,
              icon: Icons.person_rounded,
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }

  // ── Moved out of _buildActiveNavItem, now a proper sibling method ──

  Widget _buildDestinationCard({
    required String title,
    required String location,
    required String description,
    required String imageUrl,
    required String tagText,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(24),
                ),
                child: SizedBox(
                  height: 220,
                  width: double.infinity,
                  child: Image(
                    image: NetworkImage(imageUrl),
                    fit: BoxFit.cover,
                    errorBuilder: _imageFallback,
                  ),
                ),
              ),
              // Favourite heart button
              Positioned(
                top: 16,
                right: 16,
                child: Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.04),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: const Center(
                    child: Icon(Icons.favorite, color: Colors.red, size: 20),
                  ),
                ),
              ),
              // Category tag
              Positioned(
                bottom: 16,
                left: 16,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: cambodiaGold,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Text(
                    tagText,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.1,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: cambodiaDark,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),
                Row(
                  children: [
                    Icon(Icons.location_on, size: 16, color: cambodiaGray),
                    const SizedBox(width: 4),
                    Text(
                      location,
                      style: TextStyle(color: cambodiaGray, fontSize: 13),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Text(
                  description,
                  style: TextStyle(
                    color: cambodiaGray,
                    fontSize: 14,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem({
    required int index,
    required IconData icon,
    required String label,
  }) {
    return InkWell(
      onTap: () => setState(() => _currentIndex = index),
      child: SizedBox(
        width: 64,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 24, color: Colors.grey.shade400),
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(color: Colors.grey.shade400, fontSize: 11),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActiveNavItem({required String label}) {
    const Color goldColor = Color(0xFFF2C94C);

    return SizedBox(
      width: 64,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 48,
            height: 40,
            decoration: BoxDecoration(
              color: goldColor.withOpacity(0.2),
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Icon(Icons.favorite, size: 24, color: goldColor),
          ),
          const SizedBox(height: 2),
          Text(
            label,
            style: const TextStyle(
              color: goldColor,
              fontSize: 11,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

// Top-level helper — fine outside the class
Widget _imageFallback(
  BuildContext context,
  Object error,
  StackTrace? stackTrace,
) {
  return Container(
    color: Colors.grey.shade200,
    child: const Center(
      child: Icon(
        Icons.image_not_supported_outlined,
        color: Colors.grey,
        size: 28,
      ),
    ),
  );
}

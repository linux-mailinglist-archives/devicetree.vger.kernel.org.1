Return-Path: <devicetree+bounces-94474-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 45AF5955A24
	for <lists+devicetree@lfdr.de>; Sun, 18 Aug 2024 01:06:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C47661F2149C
	for <lists+devicetree@lfdr.de>; Sat, 17 Aug 2024 23:06:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6CC7155751;
	Sat, 17 Aug 2024 23:06:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b="qZiRRxHo";
	dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b="GY8gdclP"
X-Original-To: devicetree@vger.kernel.org
Received: from fhigh1-smtp.messagingengine.com (fhigh1-smtp.messagingengine.com [103.168.172.152])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D97A143886;
	Sat, 17 Aug 2024 23:06:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=103.168.172.152
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723936013; cv=none; b=kWENCwUI9hcUM+U8vmGs/m5u3JS5jAA5ZxvUeuY80165yaTT1EY9QDQ96UcHR8s37f6Wx8OLNKrRYnfE+7IsS5sX/DSOgOsj59UwOcSSM7T+GFRGuIe4/DI5zYWuwaOFmbvXDsanNpIvu9g6f6B4snVflIM75fuZviRr1uTE83Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723936013; c=relaxed/simple;
	bh=nPiK8buWCYxBq1Iwf7cZP55lCXbkndTBbi0OO5WbyM8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=g4IWv3dBJW0IjiBqeDPxkQGHiuk10++f3PYADfrTgWZojwbVGq5NWRTsjr9y2CpLQWV6atGatyE5AK9lHBDNgFMfx0jVrVQyiQmg7DJeY1UEyHNkgNcwUITD3KXSiDR1WMvMVZvPWR9lH7G5a3O/TvrWJlgF2nPZNOGi3stTRFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com; spf=pass smtp.mailfrom=testtoast.com; dkim=pass (2048-bit key) header.d=testtoast.com header.i=@testtoast.com header.b=qZiRRxHo; dkim=pass (2048-bit key) header.d=messagingengine.com header.i=@messagingengine.com header.b=GY8gdclP; arc=none smtp.client-ip=103.168.172.152
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=testtoast.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=testtoast.com
Received: from phl-compute-03.internal (phl-compute-03.nyi.internal [10.202.2.43])
	by mailfhigh.nyi.internal (Postfix) with ESMTP id 3B819114AA1F;
	Sat, 17 Aug 2024 19:06:51 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-03.internal (MEProxy); Sat, 17 Aug 2024 19:06:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=testtoast.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm3; t=1723936011; x=
	1724022411; bh=99VpuwRojOCmSdLqSG6OJkbeh7lMVOnteUcN+XPRRAw=; b=q
	ZiRRxHodNcRkIVGvsirZo9+nVlZtR1U10Q1S1mzFaFlxoAErvT7iCutu295K9Bqj
	XB3uwXC+FWD3Fnuj8sS+WRSGlXAnsfNT8mRo27wC1TxGE6exwCxWKqm89Nd4IX9Y
	ob2QVsulRIC6UbV5zRFS/97QttFZp2smbC97fNx+3YU9Fn+OxnLJTs6GEFvgd1CL
	KTE2YSogKqsBHXvlyu8/x/o6QQDRD1g0De5Ptws6UMLvFVBXLZ2jmLaXimwhrWNK
	SH3BimQSNxkFj1/uuJP6vhgPMILdKdnsRXSVQfKIOK8yK25dvaG5FSzrWvu2A7SY
	gHq5ple7f7pZe/4oDakQA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1723936011; x=
	1724022411; bh=99VpuwRojOCmSdLqSG6OJkbeh7lMVOnteUcN+XPRRAw=; b=G
	Y8gdclPwbAsgv/X0DrwiA+XGugWH914x+DpUrRxmKfzhCorxjK34hK8xGpKg948+
	8obEA/XWdxSEdgqTMMCoXBfZQKSKUG3rt8HY+eZZk7goNILdD8QYeYIvui+xcyUY
	cgZeaO0gaAh4Y2g9Ll21QOxqLY+4bEEPZu99J1TRhylw7irmOlqAJRp5KhSYCLll
	YEoVV1E8grRK2AOE80gt+myGDTn4I8aVHXgPd6cjkMRE34kQE6BwbuL55HzSyvod
	c0tRvEO7WYEKV8MxagZ7fVcIfZslyWjWwdOLrtUtKm0UKsikSAGq8fehuf0zFY5i
	ymPUVypaNoQQnyyWNqM2w==
X-ME-Sender: <xms:Cy3BZmDMItGSZWmiNRu3wz0QWvY7ExCMXgLtM7brpAGiMb0TdyAn5w>
    <xme:Cy3BZghh5T-mFwOJTVwxQ7XvTV4XSreKa7hcUY1PMlfhb4JkktYIkiWfe6FAi6FAX
    3wEENVdlAXftdKDCA>
X-ME-Received: <xmr:Cy3BZpnYl6SaoV7bszoQjG1OVDQjXVjCR8joZySVsZbGPHa1wtqOlSKVE1lFVrvWzUtzN7x8dKPpR1LBWz1BcrbhRdNP33lknk8gml7hNE8ZjpHk>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudduuddgudejucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
    rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
    htshculddquddttddmnecujfgurhephffvvefufffkofgjfhgggfestdekredtredttden
    ucfhrhhomheptfihrghnucghrghlkhhlihhnuceorhihrghnsehtvghsthhtohgrshhtrd
    gtohhmqeenucggtffrrghtthgvrhhnpeffheeiffegtdfgffejteevgeefkeelieelkeev
    ueetffetteduffevgeeiieehteenucevlhhushhtvghrufhiiigvpeefnecurfgrrhgrmh
    epmhgrihhlfhhrohhmpehrhigrnhesthgvshhtthhorghsthdrtghomhdpnhgspghrtghp
    thhtohepvddvpdhmohguvgepshhmthhpohhuthdprhgtphhtthhopehmrhhiphgrrhguse
    hkvghrnhgvlhdrohhrghdprhgtphhtthhopeifvghnshestghsihgvrdhorhhgpdhrtghp
    thhtohepmhgrrghrthgvnhdrlhgrnhhkhhhorhhstheslhhinhhugidrihhnthgvlhdrtg
    homhdprhgtphhtthhopehtiihimhhmvghrmhgrnhhnsehsuhhsvgdruggvpdhrtghpthht
    oheprghirhhlihgvugesghhmrghilhdrtghomhdprhgtphhtthhopegurghnihgvlhesfh
    hffihllhdrtghhpdhrtghpthhtohepjhgvrhhnvghjrdhskhhrrggsvggtsehgmhgrihhl
    rdgtohhmpdhrtghpthhtohepshgrmhhuvghlsehshhholhhlrghnugdrohhrghdprhgtph
    htthhopehrohgshheskhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:Cy3BZkwbMCH2w8Q87dhYt6gOGE88PPej16eflqq5aegfptT1L_SjkQ>
    <xmx:Cy3BZrSrVajEJhUAe40oGbBC1IdPyh4Q940qal4d57_LCbR7etCI6g>
    <xmx:Cy3BZvZvlId0F7-O3zlDGMsIfJcDx5TclUE4PfSr2mQ9Nc-zvAz0dA>
    <xmx:Cy3BZkRBMBSnRatKgcSPEciliPwLVQuuSKwLaCogvb4d869ISch3lA>
    <xmx:Cy3BZqCWVZtVKfaq-MSgGDYyBg-uxQ3lcA3IyVhyN_1pwrhmwKseXFi8>
Feedback-ID: idc0145fc:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 17 Aug 2024 19:06:44 -0400 (EDT)
From: Ryan Walklin <ryan@testtoast.com>
To: Maxime Ripard <mripard@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>
Cc: Andre Przywara <andre.przywara@arm.com>,
	Chris Morgan <macroalpha82@gmail.com>,
	John Watts <contact@jookia.org>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Ryan Walklin <ryan@testtoast.com>
Subject: [PATCH v3 10/26] drm: sun4i: de3: add YUV support to the color space correction module
Date: Sun, 18 Aug 2024 10:45:57 +1200
Message-ID: <20240817230503.158889-11-ryan@testtoast.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240817230503.158889-1-ryan@testtoast.com>
References: <20240817230503.158889-1-ryan@testtoast.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Jernej Skrabec <jernej.skrabec@gmail.com>

Add coefficients and support for YUV formats to the display engine
colorspace and dynamic range correction submodule.

Signed-off-by: Jernej Skrabec <jernej.skrabec@gmail.com>
Signed-off-by: Ryan Walklin <ryan@testtoast.com>
---
 drivers/gpu/drm/sun4i/sun8i_csc.c | 164 +++++++++++++++++++++++++++++-
 1 file changed, 162 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun8i_csc.c b/drivers/gpu/drm/sun4i/sun8i_csc.c
index 8a336ccb27d33..e12a81fa91083 100644
--- a/drivers/gpu/drm/sun4i/sun8i_csc.c
+++ b/drivers/gpu/drm/sun4i/sun8i_csc.c
@@ -5,6 +5,8 @@
 
 #include <drm/drm_print.h>
 
+#include <uapi/linux/media-bus-format.h>
+
 #include "sun8i_csc.h"
 #include "sun8i_mixer.h"
 
@@ -107,6 +109,135 @@ static const u32 yuv2rgb_de3[2][3][12] = {
 	},
 };
 
+/* always convert to limited mode */
+static const u32 rgb2yuv_de3[3][12] = {
+	[DRM_COLOR_YCBCR_BT601] = {
+		0x0000837A, 0x0001021D, 0x00003221, 0x00000040,
+		0xFFFFB41C, 0xFFFF6B03, 0x0000E0E1, 0x00000200,
+		0x0000E0E1, 0xFFFF43B1, 0xFFFFDB6E, 0x00000200,
+	},
+	[DRM_COLOR_YCBCR_BT709] = {
+		0x00005D7C, 0x00013A7C, 0x00001FBF, 0x00000040,
+		0xFFFFCC78, 0xFFFF52A7, 0x0000E0E1, 0x00000200,
+		0x0000E0E1, 0xFFFF33BE, 0xFFFFEB61, 0x00000200,
+	},
+	[DRM_COLOR_YCBCR_BT2020] = {
+		0x00007384, 0x00012A21, 0x00001A13, 0x00000040,
+		0xFFFFC133, 0xFFFF5DEC, 0x0000E0E1, 0x00000200,
+		0x0000E0E1, 0xFFFF3135, 0xFFFFEDEA, 0x00000200,
+	},
+};
+
+/* always convert to limited mode */
+static const u32 yuv2yuv_de3[2][3][3][12] = {
+	[DRM_COLOR_YCBCR_LIMITED_RANGE] = {
+		[DRM_COLOR_YCBCR_BT601] = {
+			[DRM_COLOR_YCBCR_BT601] = {
+				0x00020000, 0x00000000, 0x00000000, 0x00000000,
+				0x00000000, 0x00020000, 0x00000000, 0x00000000,
+				0x00000000, 0x00000000, 0x00020000, 0x00000000,
+			},
+			[DRM_COLOR_YCBCR_BT709] = {
+				0x00020000, 0xFFFFC4D7, 0xFFFF9589, 0xFFC00040,
+				0x00000000, 0x0002098B, 0x00003AAF, 0xFE000200,
+				0x00000000, 0x0000266D, 0x00020CF8, 0xFE000200,
+			},
+			[DRM_COLOR_YCBCR_BT2020] = {
+				0x00020000, 0xFFFFBFCE, 0xFFFFC5FF, 0xFFC00040,
+				0x00000000, 0x00020521, 0x00001F89, 0xFE000200,
+				0x00000000, 0x00002C87, 0x00020F07, 0xFE000200,
+			},
+		},
+		[DRM_COLOR_YCBCR_BT709] = {
+			[DRM_COLOR_YCBCR_BT601] = {
+				0x00020000, 0x000032D9, 0x00006226, 0xFFC00040,
+				0x00000000, 0x0001FACE, 0xFFFFC759, 0xFE000200,
+				0x00000000, 0xFFFFDAE7, 0x0001F780, 0xFE000200,
+			},
+			[DRM_COLOR_YCBCR_BT709] = {
+				0x00020000, 0x00000000, 0x00000000, 0x00000000,
+				0x00000000, 0x00020000, 0x00000000, 0x00000000,
+				0x00000000, 0x00000000, 0x00020000, 0x00000000,
+			},
+			[DRM_COLOR_YCBCR_BT2020] = {
+				0x00020000, 0xFFFFF782, 0x00003036, 0xFFC00040,
+				0x00000000, 0x0001FD99, 0xFFFFE5CA, 0xFE000200,
+				0x00000000, 0x000005E4, 0x0002015A, 0xFE000200,
+			},
+		},
+		[DRM_COLOR_YCBCR_BT2020] = {
+			[DRM_COLOR_YCBCR_BT601] = {
+				0x00020000, 0x00003B03, 0x000034D2, 0xFFC00040,
+				0x00000000, 0x0001FD8C, 0xFFFFE183, 0xFE000200,
+				0x00000000, 0xFFFFD4F3, 0x0001F3FA, 0xFE000200,
+			},
+			[DRM_COLOR_YCBCR_BT709] = {
+				0x00020000, 0x00000916, 0xFFFFD061, 0xFFC00040,
+				0x00000000, 0x0002021C, 0x00001A40, 0xFE000200,
+				0x00000000, 0xFFFFFA19, 0x0001FE5A, 0xFE000200,
+			},
+			[DRM_COLOR_YCBCR_BT2020] = {
+				0x00020000, 0x00000000, 0x00000000, 0x00000000,
+				0x00000000, 0x00020000, 0x00000000, 0x00000000,
+				0x00000000, 0x00000000, 0x00020000, 0x00000000,
+			},
+		},
+	},
+	[DRM_COLOR_YCBCR_FULL_RANGE] = {
+		[DRM_COLOR_YCBCR_BT601] = {
+			[DRM_COLOR_YCBCR_BT601] = {
+				0x0001B7B8, 0x00000000, 0x00000000, 0x00000040,
+				0x00000000, 0x0001C1C2, 0x00000000, 0xFE000200,
+				0x00000000, 0x00000000, 0x0001C1C2, 0xFE000200,
+			},
+			[DRM_COLOR_YCBCR_BT709] = {
+				0x0001B7B8, 0xFFFFCC08, 0xFFFFA27B, 0x00000040,
+				0x00000000, 0x0001CA24, 0x0000338D, 0xFE000200,
+				0x00000000, 0x000021C1, 0x0001CD26, 0xFE000200,
+			},
+			[DRM_COLOR_YCBCR_BT2020] = {
+				0x0001B7B8, 0xFFFFC79C, 0xFFFFCD0C, 0x00000040,
+				0x00000000, 0x0001C643, 0x00001BB4, 0xFE000200,
+				0x00000000, 0x0000271D, 0x0001CEF5, 0xFE000200,
+			},
+		},
+		[DRM_COLOR_YCBCR_BT709] = {
+			[DRM_COLOR_YCBCR_BT601] = {
+				0x0001B7B8, 0x00002CAB, 0x00005638, 0x00000040,
+				0x00000000, 0x0001BD32, 0xFFFFCE3C, 0xFE000200,
+				0x00000000, 0xFFFFDF6A, 0x0001BA4A, 0xFE000200,
+			},
+			[DRM_COLOR_YCBCR_BT709] = {
+				0x0001B7B8, 0x00000000, 0x00000000, 0x00000040,
+				0x00000000, 0x0001C1C2, 0x00000000, 0xFE000200,
+				0x00000000, 0x00000000, 0x0001C1C2, 0xFE000200,
+			},
+			[DRM_COLOR_YCBCR_BT2020] = {
+				0x0001B7B8, 0xFFFFF88A, 0x00002A5A, 0x00000040,
+				0x00000000, 0x0001BFA5, 0xFFFFE8FA, 0xFE000200,
+				0x00000000, 0x0000052D, 0x0001C2F1, 0xFE000200,
+			},
+		},
+		[DRM_COLOR_YCBCR_BT2020] = {
+			[DRM_COLOR_YCBCR_BT601] = {
+				0x0001B7B8, 0x000033D6, 0x00002E66, 0x00000040,
+				0x00000000, 0x0001BF9A, 0xFFFFE538, 0xFE000200,
+				0x00000000, 0xFFFFDA2F, 0x0001B732, 0xFE000200,
+			},
+			[DRM_COLOR_YCBCR_BT709] = {
+				0x0001B7B8, 0x000007FB, 0xFFFFD62B, 0x00000040,
+				0x00000000, 0x0001C39D, 0x0000170F, 0xFE000200,
+				0x00000000, 0xFFFFFAD1, 0x0001C04F, 0xFE000200,
+			},
+			[DRM_COLOR_YCBCR_BT2020] = {
+				0x0001B7B8, 0x00000000, 0x00000000, 0x00000040,
+				0x00000000, 0x0001C1C2, 0x00000000, 0xFE000200,
+				0x00000000, 0x00000000, 0x0001C1C2, 0xFE000200,
+			},
+		},
+	},
+};
+
 static void sun8i_csc_setup(struct regmap *map, u32 base,
 			    enum format_type fmt_type,
 			    enum drm_color_encoding encoding,
@@ -148,12 +279,27 @@ static void sun8i_csc_setup(struct regmap *map, u32 base,
 	regmap_write(map, SUN8I_CSC_CTRL(base), val);
 }
 
+static const u32 *sun8i_csc_get_de3_yuv_table(enum drm_color_encoding in_enc,
+					      enum drm_color_range in_range,
+					      u32 out_format,
+					      enum drm_color_encoding out_enc)
+{
+	if (out_format == MEDIA_BUS_FMT_RGB888_1X24)
+		return yuv2rgb_de3[in_range][in_enc];
+
+	/* check for identity transformation */
+	if (in_range == DRM_COLOR_YCBCR_LIMITED_RANGE && out_enc == in_enc)
+		return NULL;
+
+	return yuv2yuv_de3[in_range][in_enc][out_enc];
+}
+
 static void sun8i_de3_ccsc_setup(struct sunxi_engine *engine, int layer,
 				 enum format_type fmt_type,
 				 enum drm_color_encoding encoding,
 				 enum drm_color_range range)
 {
-	u32 addr, val, mask;
+	u32 addr, val = 0, mask;
 	struct regmap *map;
 	const u32 *table;
 	int i;
@@ -164,14 +310,28 @@ static void sun8i_de3_ccsc_setup(struct sunxi_engine *engine, int layer,
 
 	switch (fmt_type) {
 	case FORMAT_TYPE_RGB:
-		val = 0;
+		if (engine->format == MEDIA_BUS_FMT_RGB888_1X24)
+			break;
+		val = mask;
+		addr = SUN50I_MIXER_BLEND_CSC_COEFF(DE3_BLD_BASE, layer, 0);
+		regmap_bulk_write(map, addr, rgb2yuv_de3[engine->encoding], 12);
 		break;
 	case FORMAT_TYPE_YUV:
+		table = sun8i_csc_get_de3_yuv_table(encoding, range,
+						    engine->format,
+						    engine->encoding);
+		if (!table)
+			break;
 		val = mask;
 		addr = SUN50I_MIXER_BLEND_CSC_COEFF(DE3_BLD_BASE, layer, 0);
 		regmap_bulk_write(map, addr, table, 12);
 		break;
 	case FORMAT_TYPE_YVU:
+		table = sun8i_csc_get_de3_yuv_table(encoding, range,
+						    engine->format,
+						    engine->encoding);
+		if (!table)
+			table = yuv2yuv_de3[range][encoding][encoding];
 		val = mask;
 		for (i = 0; i < 12; i++) {
 			if ((i & 3) == 1)
-- 
2.46.0



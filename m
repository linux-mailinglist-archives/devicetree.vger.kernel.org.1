Return-Path: <devicetree+bounces-239001-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B7F4C606F9
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 15:15:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E0DF43BCFC9
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 14:14:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A39102F6590;
	Sat, 15 Nov 2025 14:14:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Y4vg6YTo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA7E42FD1AE
	for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 14:14:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763216057; cv=none; b=ft1cRvJnqxR9ioEQsh2YrCgN+Ouz0NSzOE+wEwx2OA8h8Fp6ZmsYIMpkb8XKr7rtbhshQSd7gmyX//VNguE5GHOpJZJGbtjwWqypwfTPtpGZt/mpJ8mbM/xBPJymaUBSqqKYfgl29jUv4SXQlncVkLkNMn4gREUkCBDRwo+8xwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763216057; c=relaxed/simple;
	bh=aG0vNN2zVi7p1GToVdpDOjQmhx7Tshg7Tk0b4TzISHM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=S/Y3+fFVugAg5RtbquW13Jb1VtwKqWVdgdhx6krg7urCNF6lEuwrPud9nQpTBnWYW71x6QhQKnHUwB1Fb4FRiX+LPwTvMYLlMARYrp0YpbKmtW6r+sFXdDMS+PdKh//6cTBBwahuc2w8m15EwM9NVV4lnrE4qhi3LRAhxnSCBuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Y4vg6YTo; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-640aa1445c3so4560047a12.1
        for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 06:14:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763216054; x=1763820854; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MocqCxWcaLZfsHWYqTZWM/wBzmMvMPkWJzIzBgPappQ=;
        b=Y4vg6YTob9b24D9POBdIUlohajimMBtbCB3j77g9JPri2BPFxE/jPxPc0NSk4Eq/VK
         /hit9RBAEeiC1mZX/2rFdLG95rt4p2e8VFG68Y46x25R1Q6p1M4oEeHh3/YfH/n0mqa8
         vgZw0EDb9VSIkdyl4cRcH6tAi5NAPuEfug00LdgmeT5ZJqWn7bSG606oo7qp/6xWxU1s
         8NpreEIkVMG7H3y3xcpKXYjYK0m1pWh1SUNDiU3oNry5rOItsaIvHmbN2EhJ4cMNOZrn
         c1nU8Bix7zxJKjqeh1k6ag4KqzksqtLmWMza7Z6GdHazHN3SnKhTG7bE+1rJHxDXZb47
         H5cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763216054; x=1763820854;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=MocqCxWcaLZfsHWYqTZWM/wBzmMvMPkWJzIzBgPappQ=;
        b=gD5DFj52xTFIslhEPakacmcJDB0sRdPBz90KQlM0qOgQ8orqjsSVTf9um9q4/ThyPZ
         B6j8SiY280p2EQESaqzOTqRvvNNWbrRBF6zG+POobKow2AGkW0lhCqt7allAjtcBoPwj
         p7TytV0YZdXAaWC8AzODtA7XhQXrXMBLijMfNFY5i+UAXx1FI7A+zXxRXbMK+iGHgFz6
         ia6fQO1W/VFlwCVd3eRTGc6ZcdC0ivpwJcEFu9opy5QoA+r8Az1Xc8np89gTULSbH/oN
         DQjR5OK9JEHoXfN6QHTLkGhfSZLNz/2dBh5VaEGIPN+j3KZxlS+FTcFgYmdLYdobHTEI
         td0g==
X-Forwarded-Encrypted: i=1; AJvYcCW4qkaF7c+uErcASL5B32JuAKO7o+O6PySUTqI0br1OG6vbILKTWkcV3NTwdxj9Yn+W+/cdw+7hlXdg@vger.kernel.org
X-Gm-Message-State: AOJu0Yxz4fQ5RoGelAHJyQRxYELVskjXL1uOGD7mrZsUHE5b6XoI8H2C
	wnTk3nIyRzYZ7RS6DGr6eTwnwJfjL6LW5I0gOAorfiA26pPt+QrLhG9H
X-Gm-Gg: ASbGncs6CURkuQOEhWTb0+4EQxBS2TlTAt7upZvmAidTr6Y3Bq3F5Bg4YivVYaKepFm
	hNO/dZEAKmLdcXfftz45YvApVwpooF0EFmp77o6jqLDfJ+6NKlfKOkLRRCD01PbYczriCtBKnw9
	WJI7IopdKX0E+w7qNEWIX0nNK1lyg6037J8oEgZY3n1e08mPcxn+WSW7z5F8pldMPkSCmt9vOUt
	lL+CX2a4mZg9LVIzs8zDaSzgrhGprSUnsM2yEAw4kxNKw9j1e7dyos6Et7UPsD83u39qzbh1LtA
	shxHUx6oZcr4yT4GJGMiwM7V2cGMzghxG8GIwQDft5ZJL77Xpt/9EKgDsKBRq6kXDm1cDWVi7ZO
	aBs+HcwUbu0XaZueaIdRWX1xJRrIImnzKl5oItuyn3lMysgqEvKapbclCktX0cTQ7AT1NwVHpvm
	x69ukTlCPDLjidKc6VzcOHkMAzBZNRy/r3qRNCUUk0DQteYzdTAbx5/gZT
X-Google-Smtp-Source: AGHT+IFSj1aDwiro/wwK4L9h7pp1M9ctQw+POyBArF5AsNHZz7cGsgDc33Ii1wskS73N5JZnJxCpEQ==
X-Received: by 2002:a17:906:f145:b0:b73:6d56:f3ff with SMTP id a640c23a62f3a-b736d573ee7mr440406566b.20.1763216054020;
        Sat, 15 Nov 2025 06:14:14 -0800 (PST)
Received: from jernej-laptop (178-79-73-218.dynamic.telemach.net. [178.79.73.218])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fda933fsm606189866b.56.2025.11.15.06.14.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Nov 2025 06:14:13 -0800 (PST)
From: Jernej Skrabec <jernej.skrabec@gmail.com>
To: wens@csie.org,
	samuel@sholland.org
Cc: mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Jernej Skrabec <jernej.skrabec@gmail.com>
Subject: [PATCH 1/7] drm/sun4i: Add support for DE33 CSC
Date: Sat, 15 Nov 2025 15:13:41 +0100
Message-ID: <20251115141347.13087-2-jernej.skrabec@gmail.com>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <20251115141347.13087-1-jernej.skrabec@gmail.com>
References: <20251115141347.13087-1-jernej.skrabec@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

DE33 has channel CSC units (for each plane separately) so pipeline can
be configured to output in desired colorspace.

Signed-off-by: Jernej Skrabec <jernej.skrabec@gmail.com>
---
 drivers/gpu/drm/sun4i/sun8i_csc.c | 71 +++++++++++++++++++++++++++++++
 drivers/gpu/drm/sun4i/sun8i_csc.h |  5 +++
 2 files changed, 76 insertions(+)

diff --git a/drivers/gpu/drm/sun4i/sun8i_csc.c b/drivers/gpu/drm/sun4i/sun8i_csc.c
index ce81c12f511d..70fc9b017d17 100644
--- a/drivers/gpu/drm/sun4i/sun8i_csc.c
+++ b/drivers/gpu/drm/sun4i/sun8i_csc.c
@@ -205,6 +205,72 @@ static void sun8i_de3_ccsc_setup(struct regmap *map, int layer,
 			   mask, val);
 }
 
+/* extract constant from high word and invert sign if necessary */
+static u32 sun8i_de33_ccsc_get_constant(u32 value)
+{
+	value >>= 16;
+
+	if (value & BIT(15))
+		return 0x400 - (value & 0x3ff);
+
+	return value;
+}
+
+static void sun8i_de33_convert_table(const u32 *src, u32 *dst)
+{
+	dst[0] = sun8i_de33_ccsc_get_constant(src[3]);
+	dst[1] = sun8i_de33_ccsc_get_constant(src[7]);
+	dst[2] = sun8i_de33_ccsc_get_constant(src[11]);
+	memcpy(&dst[3], src, sizeof(u32) * 12);
+	dst[6] &= 0xffff;
+	dst[10] &= 0xffff;
+	dst[14] &= 0xffff;
+}
+
+static void sun8i_de33_ccsc_setup(struct regmap *map, int layer,
+				  enum sun8i_csc_mode mode,
+				  enum drm_color_encoding encoding,
+				  enum drm_color_range range)
+{
+	u32 addr, val, base, csc[15];
+	const u32 *table;
+	int i;
+
+	table = yuv2rgb_de3[range][encoding];
+	base = DE33_CCSC_BASE + layer * DE33_CH_SIZE;
+
+	switch (mode) {
+	case SUN8I_CSC_MODE_OFF:
+		val = 0;
+		break;
+	case SUN8I_CSC_MODE_YUV2RGB:
+		val = SUN8I_CSC_CTRL_EN;
+		sun8i_de33_convert_table(table, csc);
+		regmap_bulk_write(map, SUN50I_CSC_COEFF(base, 0), csc, 15);
+		break;
+	case SUN8I_CSC_MODE_YVU2RGB:
+		val = SUN8I_CSC_CTRL_EN;
+		sun8i_de33_convert_table(table, csc);
+		for (i = 0; i < 15; i++) {
+			addr = SUN50I_CSC_COEFF(base, i);
+			if (i > 3) {
+				if (((i - 3) & 3) == 1)
+					addr = SUN50I_CSC_COEFF(base, i + 1);
+				else if (((i - 3) & 3) == 2)
+					addr = SUN50I_CSC_COEFF(base, i - 1);
+			}
+			regmap_write(map, addr, csc[i]);
+		}
+		break;
+	default:
+		val = 0;
+		DRM_WARN("Wrong CSC mode specified.\n");
+		return;
+	}
+
+	regmap_write(map, SUN8I_CSC_CTRL(base), val);
+}
+
 static u32 sun8i_csc_get_mode(struct drm_plane_state *state)
 {
 	const struct drm_format_info *format;
@@ -238,6 +304,11 @@ void sun8i_csc_config(struct sun8i_layer *layer,
 				     mode, state->color_encoding,
 				     state->color_range);
 		return;
+	} else if (layer->cfg->de_type == SUN8I_MIXER_DE33) {
+		sun8i_de33_ccsc_setup(layer->regs, layer->channel,
+				      mode, state->color_encoding,
+				      state->color_range);
+		return;
 	}
 
 	base = ccsc_base[layer->cfg->ccsc][layer->channel];
diff --git a/drivers/gpu/drm/sun4i/sun8i_csc.h b/drivers/gpu/drm/sun4i/sun8i_csc.h
index 2a4b79599610..d2ba5f8611aa 100644
--- a/drivers/gpu/drm/sun4i/sun8i_csc.h
+++ b/drivers/gpu/drm/sun4i/sun8i_csc.h
@@ -18,9 +18,14 @@ struct sun8i_layer;
 #define CCSC10_OFFSET 0xA0000
 #define CCSC11_OFFSET 0xF0000
 
+#define DE33_CCSC_BASE 0x800
+
 #define SUN8I_CSC_CTRL(base)		((base) + 0x0)
 #define SUN8I_CSC_COEFF(base, i)	((base) + 0x10 + 4 * (i))
 
+#define SUN50I_CSC_COEFF(base, i)	((base) + 0x04 + 4 * (i))
+#define SUN50I_CSC_ALPHA(base)		((base) + 0x40)
+
 #define SUN8I_CSC_CTRL_EN		BIT(0)
 
 void sun8i_csc_config(struct sun8i_layer *layer,
-- 
2.51.2



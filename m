Return-Path: <devicetree+bounces-174829-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D984BAAECF7
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 22:23:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1AB0E189C9DC
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 20:23:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D46B28F511;
	Wed,  7 May 2025 20:22:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Y5scj15n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAD9F28ECC6
	for <devicetree@vger.kernel.org>; Wed,  7 May 2025 20:22:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746649365; cv=none; b=K/5KIP+ecA3h4CeSllkGRYJeSA2tf3VRf/qte0orLklrXY0393vsuTP5oR8NfvaPZawn7le1QiUCzuuUKcKksnkB1wj07W15OQ1iX+PBDQWfmGbWsUT+Qqz/BR+GwgIx+LrUr7pQOmhaMc+WnXhnDfJ12Hx/TV3p88kcmx0v9KA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746649365; c=relaxed/simple;
	bh=105MDarhqJaX0H3J6r3L38bq+RTGOwx1haSXsEHBquQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KguaF4MvximqyULTk55fvZOlHZ9VGj1S4lqwUeybD/T7jg8Z2ED3N6KDwo3u12CDNcTCTTqf+de7x1dTfN59f1wscMINTpJ20tXcNKvTvJggF+PLaXyAptGq5vNUiIJex39DTgKOoOqMHLrLuCgDQIaHphMgOpfKPnY5Pw+UN6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Y5scj15n; arc=none smtp.client-ip=209.85.210.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f54.google.com with SMTP id 46e09a7af769-7301c227512so140071a34.2
        for <devicetree@vger.kernel.org>; Wed, 07 May 2025 13:22:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746649362; x=1747254162; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NyxyGKOhdeBoSewax9mMg22YYljQWuA4ui8yO4vMooE=;
        b=Y5scj15nGBPpK9cGO00SsqXwXCgHFtA0IA59LdmS16SfWarc/zfOY5ZfUQO8f/Z5cZ
         Z1i4FZ3Rj2KPZ4PBp6I2Os+lWnMWWadj5yXJkRYdz3qNwAMlVcy2q0buQMOMUmTtF+ds
         yy6g3d3ehll3+oLoRSZsTe8w5RpQmfmWa//ykUrfLGcwJ+GJtgY2B7L8T2Qz6BtrzP/G
         HNcpNN+Bbtm4t/gJvNcJWY5tTCENEFDj0KF9yJm6+NYzeTGZuQuoN5SoZFM2dhwuIQGk
         G29u1RssaKSfWEA6iMZJ0xWN6RwMCqmbFScr+eQWx2IS044Ax0/eliDmt8oMKZOax2ZI
         FCnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746649362; x=1747254162;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NyxyGKOhdeBoSewax9mMg22YYljQWuA4ui8yO4vMooE=;
        b=pva0EwBNDAMjPJTwfZEDpmftEkCr4xAyJXykZrAvS7P4fNEBgk2IexCf8K/0mVagO2
         C19pj/xfY2qFoPUjIV+6OXvIwvnzHAi+h1RIrpVOK0KYEEVz2+L52mDhF2sv4k/Xt1PD
         cfzLYRXgk8qNeucCWvM6W7UC5bXzjR2myLvnsOUwdNpfSrZQgOwZ/zBcCYZFVgKwD/HM
         dkkAuLyIAG+l0pGPOUytIUjtOtKkteEoV/ozAKgDJR1MBRJRqoEhhciQMzk1CKJe6hD9
         AB6PFkmSqV2t4DTXhNnQ9VrHQQzlHMlgqTpkbgVLSuUYOAvoICszBobhFhl5mOIBzGFd
         0C2w==
X-Gm-Message-State: AOJu0Yx+dbw1KaBDFz50l/Frwr1f1RWqL1X8kU6xlk424/gq7pEogd+V
	BUiWV2r5auhiqdvePWkdDMRcDoigWWUJ21kHiiNTh6MWmU0AoRgJ
X-Gm-Gg: ASbGncuE5hUAjAVJjt1j/TA5dj/Ij4yFH7apbvizYV4sTtUt7nGunlFFHxmxe48ufZX
	j7disZZqJuG/jCZHvPIF5RI3VFpciZSRt/IWP6oDq6HSHBaPnO5IynOjjQr71aR8V16rdPU+dRt
	5Xm3HMMf/xvoLgg2Zyb/G6CzDwQE4yYTc8t8Tl1peGSwe6b6rYpJUTS7PZgL2BQKczLy/40hu3y
	fH2JEKhplH1/N8PcjKHSNYzYu4PYq1XiqPXAxSLQ98YDgXKnIu43iERtpm3PrkkTcSmPo9dVIC3
	blCHBpsD6AppC74Oo9KPv+VN79UxRR/rDlglFh5P21oqhJs0Ykdm/l+eAhyoB0wJLR691+4=
X-Google-Smtp-Source: AGHT+IHjxCL4ilnBbhzBiVvVv0rtl3RMnbLX5YjwRMZiBzGEtkE2X44D+/p+uvnENdOwMRWrcTLoQA==
X-Received: by 2002:a05:6830:90b:b0:72a:d54:a780 with SMTP id 46e09a7af769-73210afb31dmr2552776a34.17.1746649361838;
        Wed, 07 May 2025 13:22:41 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf:e46c:46ba:cecd:a52c])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-732109df2dcsm725945a34.9.2025.05.07.13.22.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 May 2025 13:22:41 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-sunxi@lists.linux.dev
Cc: devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	ryan@testtoast.com,
	macromorgan@hotmail.com,
	p.zabel@pengutronix.de,
	tzimmermann@suse.de,
	maarten.lankhorst@linux.intel.com,
	simona@ffwll.ch,
	airlied@gmail.com,
	mripard@kernel.org,
	samuel@sholland.org,
	jernej.skrabec@gmail.com,
	wens@csie.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org
Subject: [PATCH V9 19/24] drm/sun4i: tcon: Add support for R40 LCD
Date: Wed,  7 May 2025 15:19:38 -0500
Message-ID: <20250507201943.330111-20-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250507201943.330111-1-macroalpha82@gmail.com>
References: <20250507201943.330111-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

The Allwinner H616 and related SOCs have an LCD timing controller
(TCON) which is compatible with the R40 SOC's controller and existing
sun4i driver. The H616 does not expose this controller but the H700 and
T507 (based on the same die) do. The controller supports LVDS and RGB
output.

Add quirks and compatible string to cover these SOCs.

Signed-off-by: Jernej Skrabec <jernej.skrabec@gmail.com>
Signed-off-by: Ryan Walklin <ryan@testtoast.com>
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 drivers/gpu/drm/sun4i/sun4i_tcon.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/sun4i/sun4i_tcon.c b/drivers/gpu/drm/sun4i/sun4i_tcon.c
index 960e83c8291d..8cc8488483ec 100644
--- a/drivers/gpu/drm/sun4i/sun4i_tcon.c
+++ b/drivers/gpu/drm/sun4i/sun4i_tcon.c
@@ -1514,6 +1514,14 @@ static const struct sun4i_tcon_quirks sun8i_a83t_tv_quirks = {
 	.has_channel_1		= true,
 };
 
+static const struct sun4i_tcon_quirks sun8i_r40_lcd_quirks = {
+	.supports_lvds		= true,
+	.has_channel_0		= true,
+	.set_mux		= sun8i_r40_tcon_tv_set_mux,
+	.dclk_min_div		= 1,
+	.setup_lvds_phy		= sun6i_tcon_setup_lvds_phy,
+};
+
 static const struct sun4i_tcon_quirks sun8i_r40_tv_quirks = {
 	.has_channel_1		= true,
 	.polarity_in_ch0	= true,
@@ -1555,6 +1563,7 @@ const struct of_device_id sun4i_tcon_of_table[] = {
 	{ .compatible = "allwinner,sun8i-a33-tcon", .data = &sun8i_a33_quirks },
 	{ .compatible = "allwinner,sun8i-a83t-tcon-lcd", .data = &sun8i_a83t_lcd_quirks },
 	{ .compatible = "allwinner,sun8i-a83t-tcon-tv", .data = &sun8i_a83t_tv_quirks },
+	{ .compatible = "allwinner,sun8i-r40-tcon-lcd", .data = &sun8i_r40_lcd_quirks },
 	{ .compatible = "allwinner,sun8i-r40-tcon-tv", .data = &sun8i_r40_tv_quirks },
 	{ .compatible = "allwinner,sun8i-v3s-tcon", .data = &sun8i_v3s_quirks },
 	{ .compatible = "allwinner,sun9i-a80-tcon-lcd", .data = &sun9i_a80_tcon_lcd_quirks },
-- 
2.43.0



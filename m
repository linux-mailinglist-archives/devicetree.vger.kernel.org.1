Return-Path: <devicetree+bounces-134353-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E7409FD486
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 14:04:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0E1FC1653EC
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 13:04:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9584A1F4260;
	Fri, 27 Dec 2024 13:02:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b="PtOI7bjL"
X-Original-To: devicetree@vger.kernel.org
Received: from omta36.uswest2.a.cloudfilter.net (omta36.uswest2.a.cloudfilter.net [35.89.44.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2242E1F3D37
	for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 13:02:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=35.89.44.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735304552; cv=none; b=V5p+OUNotqz/3Icnh06hmg2ImTcpxa89Bnn89+jjByzF2/+34vtYIqMRI4V8nTlkaTra25Za0+CuP7A0XPE94kHSaie2MADvS6yBe7bpGuebVxVTWc0fpncsmd7PP8oFJjQL3z0+H/KZmrhVSwgwyac3SBzwEr/2mFuCJroxt80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735304552; c=relaxed/simple;
	bh=cEYXVRlHCL2jiFXMcJ1CyLQxMMvsOuDFr2JBco5EkAo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kqUxWSDwz0m9B4hkvEnFEfAww9S0AKsXAn3S0bXY+9zAaIKpFEyAGqIN4KeZ5uOjzvDRkh3FaydEERUWxZRRGtPhREhSL2ZcweCx7ITZkar83PI8Z8yiZFaqf7R0WZSYPbe0Jk6Orvqvi0zlwtgetj4DD5Sk6f3ZchadDHEAmIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com; spf=pass smtp.mailfrom=linumiz.com; dkim=pass (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b=PtOI7bjL; arc=none smtp.client-ip=35.89.44.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linumiz.com
Received: from eig-obgw-5002a.ext.cloudfilter.net ([10.0.29.215])
	by cmsmtp with ESMTPS
	id QxPAtcLzpqvuoR9z4tyI5r; Fri, 27 Dec 2024 13:02:31 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id R9z2tK3mMcEKuR9z3t4q6n; Fri, 27 Dec 2024 13:02:30 +0000
X-Authority-Analysis: v=2.4 cv=Z7YnH2RA c=1 sm=1 tr=0 ts=676ea566
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=IkcTkHD0fZMA:10 a=RZcAm9yDv7YA:10 a=-pn6D5nKLtMA:10 a=vU9dKmh3AAAA:8
 a=cKcOzP3ZHZptonc-xdQA:9 a=QEXdDO2ut3YA:10 a=rsP06fVo5MYu2ilr0aT5:22
 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Cc:To:In-Reply-To:References:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=CrJYnGSuQ/C3gLGR8duqgqPICFRR6aXoD7bOvZZBy6U=; b=PtOI7bjL4Mp4xekZH+9uZKiw66
	cEgchDjuMlDQL9kYe3JUhGFacDfNfd6K2mqyBsktb4/UpG28g22/8M/x54xTD82PztXkWhS2cSg2x
	NkaJGU1MRINdNgw2dv9QHpMZAzlx8LmZGwzXpCI6JeYl0uv6feRf7HuR6uGILuqnnKZqB7oK6fM1G
	y0HGe7kjFF9JM7S8gXDjQTT/ODMeL66pm8+9UNaF/k5CVQbvA6oIn4Q6KTeW4b2mTAV1J36N1Zo6F
	tiuCtuZTlLU6XZAM4ZP4NhuTnS6hg5v/Ae9mjqotZ7e/Lp+3XszmWaufRpNvzMjwGE3Uqmdn3T2bv
	2nxh3aow==;
Received: from [122.165.245.213] (port=58270 helo=[127.0.1.1])
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <parthiban@linumiz.com>)
	id 1tR9yy-002EaQ-0f;
	Fri, 27 Dec 2024 18:32:24 +0530
From: Parthiban Nallathambi <parthiban@linumiz.com>
Date: Fri, 27 Dec 2024 18:31:01 +0530
Subject: [PATCH RESEND 12/22] drm/sun4i: Add support for a100/a133 mixer
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241227-a133-display-support-v1-12-abad35b3579c@linumiz.com>
References: <20241227-a133-display-support-v1-0-abad35b3579c@linumiz.com>
In-Reply-To: <20241227-a133-display-support-v1-0-abad35b3579c@linumiz.com>
To: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, 
 Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, Maxime Ripard <mripard@kernel.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Linus Walleij <linus.walleij@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: iommu@lists.linux.dev, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org, 
 linux-phy@lists.infradead.org, 
 Parthiban Nallathambi <parthiban@linumiz.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1735304469; l=1309;
 i=parthiban@linumiz.com; s=20241125; h=from:subject:message-id;
 bh=cEYXVRlHCL2jiFXMcJ1CyLQxMMvsOuDFr2JBco5EkAo=;
 b=kSsb52W5aIpmsEUWgcLL9oyR6vimTz/CpZY1YctGWA+Fuk9JBPio4SPL4Ap9jXkX5+ibjTHTI
 9gKVjWeTj1CBpDedcWH2cUYx9mVpXBr2l997BSAds/HZnuHa8OnNfdw
X-Developer-Key: i=parthiban@linumiz.com; a=ed25519;
 pk=PrcMZ/nwnHbeXNFUFUS833wF3DAX4hziDHEbBp1eNb8=
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-79.webhostbox.net
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - linumiz.com
X-BWhitelist: no
X-Source-IP: 122.165.245.213
X-Source-L: No
X-Exim-ID: 1tR9yy-002EaQ-0f
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([127.0.1.1]) [122.165.245.213]:58270
X-Source-Auth: parthiban@linumiz.com
X-Email-Count: 374
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfOLe5rOUAkVJYUGKoEIEJbp0yAybMJCq4M1+FHLUmGBzhPXnMaXsxu/hxAJmpB7qTzD1xk8tFgjQSIVo1NY3ieJ5FycejJ5dcw/sqOJJuIPvAUTmYJ7q
 kE/hzWBrAwrg3QZ/C1saPi4CDeNiU+VixUp+xzTKffmLOgDJLsMlTHASjaGXivTopa6zHTk8T0QCp9rZO8Bxkny7nTz4Wkcn9G0=

Mixers in Allwinner A100/A133 have similar capabilities as others
SoCs with DE2. Add support for them.

Signed-off-by: Parthiban Nallathambi <parthiban@linumiz.com>
---
 drivers/gpu/drm/sun4i/sun8i_mixer.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/gpu/drm/sun4i/sun8i_mixer.c b/drivers/gpu/drm/sun4i/sun8i_mixer.c
index 8b41d33baa30..0a1fccb87d5d 100644
--- a/drivers/gpu/drm/sun4i/sun8i_mixer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_mixer.c
@@ -714,6 +714,15 @@ static const struct sun8i_mixer_cfg sun50i_a64_mixer1_cfg = {
 	.vi_num		= 1,
 };
 
+static const struct sun8i_mixer_cfg sun50i_a100_mixer0_cfg = {
+	.ccsc		= CCSC_MIXER0_LAYOUT,
+	.mod_rate	= 300000000,
+	.scaler_mask	= 0xf,
+	.scanline_yuv	= 2560,
+	.ui_num		= 2,
+	.vi_num		= 2,
+};
+
 static const struct sun8i_mixer_cfg sun50i_h6_mixer0_cfg = {
 	.ccsc		= CCSC_MIXER0_LAYOUT,
 	.is_de3		= true,
@@ -765,6 +774,10 @@ static const struct of_device_id sun8i_mixer_of_table[] = {
 		.compatible = "allwinner,sun50i-a64-de2-mixer-1",
 		.data = &sun50i_a64_mixer1_cfg,
 	},
+	{
+		.compatible = "allwinner,sun50i-a100-de2-mixer-0",
+		.data = &sun50i_a100_mixer0_cfg,
+	},
 	{
 		.compatible = "allwinner,sun50i-h6-de3-mixer-0",
 		.data = &sun50i_h6_mixer0_cfg,

-- 
2.39.5



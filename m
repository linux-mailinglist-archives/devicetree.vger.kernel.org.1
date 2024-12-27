Return-Path: <devicetree+bounces-134354-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B489FD48D
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 14:04:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 956CD3A2B08
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 13:04:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA39E1F427D;
	Fri, 27 Dec 2024 13:02:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b="h60Cnhqq"
X-Original-To: devicetree@vger.kernel.org
Received: from omta36.uswest2.a.cloudfilter.net (omta36.uswest2.a.cloudfilter.net [35.89.44.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32DDC1F4272
	for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 13:02:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=35.89.44.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735304562; cv=none; b=F0WyIeIJBm8oJE+FuxxSpx5NDCVJdze8vfoO+4rERi3ROQwYIsQrLm787Up7mcd3hvRTwt9QfDQpPWuS9r5mz/8nkbYoREBmNkaM+N+pZ79Hj5ayKc6WkCFm83Dt7aUWW8/RZo3xGa953ZSEYlphcFuVLSI3Ls+ZIYZVzxTsYhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735304562; c=relaxed/simple;
	bh=sSqsAP7aI8LtOIYP4k3+cQUQommzJizcH73kj4wGkh0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WbeD4oWmFK1CI0F62zkpQ+bNXay2JQc9tCNGmcmt/XTEtUXzgUf94aGlarg0M70poO2K2ZyiK/dEawjLpTpxwjQkP0I/03tm5KlIsiW9QBDt4kbEj9JJ0KysE8zlSHVT0h4SCtpvO2sXiLIscEcr8HEvQZFDeNeweqVMWl4wFNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com; spf=pass smtp.mailfrom=linumiz.com; dkim=pass (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b=h60Cnhqq; arc=none smtp.client-ip=35.89.44.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linumiz.com
Received: from eig-obgw-5004a.ext.cloudfilter.net ([10.0.29.221])
	by cmsmtp with ESMTPS
	id R7wVtdcadqvuoR9zFtyIAC; Fri, 27 Dec 2024 13:02:41 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id R9zCt8EQXWvXpR9zDtAlOR; Fri, 27 Dec 2024 13:02:40 +0000
X-Authority-Analysis: v=2.4 cv=LtdZyWdc c=1 sm=1 tr=0 ts=676ea570
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=IkcTkHD0fZMA:10 a=RZcAm9yDv7YA:10 a=-pn6D5nKLtMA:10 a=vU9dKmh3AAAA:8
 a=zUiwhsQguGSo42tcF88A:9 a=QEXdDO2ut3YA:10 a=rsP06fVo5MYu2ilr0aT5:22
 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Cc:To:In-Reply-To:References:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=2ZTlzpcY9Nrn1bF4NErKmO8JMU6UkWIH2f9/tcnoXh0=; b=h60CnhqqUMOGMSy70Z9VL1KUwR
	QffNVIHiXr70rv8OaqklP2hQD1GZDLPCvHOlxd5uvj6QaJazLHM3OwPGlG+r8iU/SzsgtF4Phr2XQ
	7Hn59WEPTyLnxuhnq17Sxqa1cBmN0AOcvbD+N9RqQzPMb+uwYB9AwAuUMnAieCDBytl6A6DR+f+RR
	O9Ds+jOusKNNHaHNVkCxO+rlrbuaC4aJoPVHcV0pO+OnwhPnPinhO3H2qv51In/GVZlAg9/nxN/oK
	ZvurWpl0JUcWI2PdbSH03MaY9xlcydEvt39sD3kPEHkGQnR+xGSoI+lXS3C13XgV74Ps8cdlwmPzn
	v/f2DOUQ==;
Received: from [122.165.245.213] (port=58270 helo=[127.0.1.1])
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <parthiban@linumiz.com>)
	id 1tR9z7-002EaQ-3D;
	Fri, 27 Dec 2024 18:32:34 +0530
From: Parthiban Nallathambi <parthiban@linumiz.com>
Date: Fri, 27 Dec 2024 18:31:03 +0530
Subject: [PATCH RESEND 14/22] drm/sun4i: add a100/a133 tcon top quirks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241227-a133-display-support-v1-14-abad35b3579c@linumiz.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1735304469; l=1225;
 i=parthiban@linumiz.com; s=20241125; h=from:subject:message-id;
 bh=sSqsAP7aI8LtOIYP4k3+cQUQommzJizcH73kj4wGkh0=;
 b=etgR0WozJ6FedUsj8QZRkuSuTGoFif4KjCLqCjwbv8L+qrj612zBtWKektRdXpvUXmgZ3F4+O
 VxDXUVsKYOlDuQzikqiyQK7UFWoo15bkUVFCvaacYMP2PpZaPaJ+PWt
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
X-Exim-ID: 1tR9z7-002EaQ-3D
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([127.0.1.1]) [122.165.245.213]:58270
X-Source-Auth: parthiban@linumiz.com
X-Email-Count: 432
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfEPW+ZJfvhZBMwRvNXC6MxA8Z/h+Ll25dItPs//g+XOAnEMwirc5V3mCyybs5zX4oeTImf+PrS2VLKPJvwKLuzF70M0s0LinBqNM/dYtiyEnaQ6hrCYk
 KeB7q2FKy8VVcAu4kMejZgZhbUn7XIWtZl2V+j/TLLPukCel04ZXolF+YvLW84c/t+ZILAd1lObiKwpgBClVNjG+YEt+WqavcRM=

A100/A133 comes with 2 x LVDS, 1 x DSI without TV support. Add
quirks with tv0 disabled. DSI support is not added.

Signed-off-by: Parthiban Nallathambi <parthiban@linumiz.com>
---
 drivers/gpu/drm/sun4i/sun8i_tcon_top.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/sun4i/sun8i_tcon_top.c b/drivers/gpu/drm/sun4i/sun8i_tcon_top.c
index bd9d0840ead7..a777b30ecea0 100644
--- a/drivers/gpu/drm/sun4i/sun8i_tcon_top.c
+++ b/drivers/gpu/drm/sun4i/sun8i_tcon_top.c
@@ -280,6 +280,10 @@ static const struct sun8i_tcon_top_quirks sun20i_d1_tcon_top_quirks = {
 	.has_dsi	= true,
 };
 
+static const struct sun8i_tcon_top_quirks sun50i_a100_tcon_top_quirks = {
+	/* TODO DSI support */
+};
+
 static const struct sun8i_tcon_top_quirks sun50i_h6_tcon_top_quirks = {
 	.has_tcon_tv0	= true,
 };
@@ -294,6 +298,10 @@ const struct of_device_id sun8i_tcon_top_of_table[] = {
 		.compatible = "allwinner,sun20i-d1-tcon-top",
 		.data = &sun20i_d1_tcon_top_quirks
 	},
+	{
+		.compatible = "allwinner,sun50i-a100-tcon-top",
+		.data = &sun50i_a100_tcon_top_quirks
+	},
 	{
 		.compatible = "allwinner,sun50i-h6-tcon-top",
 		.data = &sun50i_h6_tcon_top_quirks

-- 
2.39.5



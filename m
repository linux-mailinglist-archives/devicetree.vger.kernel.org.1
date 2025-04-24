Return-Path: <devicetree+bounces-170181-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 04C3AA9A1EB
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 08:27:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6A6A2163DAF
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 06:26:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72C65212FAB;
	Thu, 24 Apr 2025 06:22:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="qy7NHEoZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34680207A32
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 06:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745475757; cv=none; b=uuX1LtmvK2ogpMvOy6QrF8t66BFb3yaAQWzUD/T1qmLMgxHhyU07R7GIE0tFzbPN/r3X7rMk/+YtiP00MGb+BL95ZR5VLq0f8FF1KjnxCUa8UDrkZrSc/LqsJAiOQKTA0B+fDEXbgxBlwZnVYa4HG/saJvnYbv4OltIDKs3JVL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745475757; c=relaxed/simple;
	bh=7yYZJd86bIYU+vT8RAjY7wEp1oq0Xfmfy1RQITDVRe8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jc7Tye4VlinA+tlgdcu65fbvpiSMlACjqLpWRG8mGAVzJZOoTCv0R7J8BmXztU0s5oLp2wiAeLzszT9Ak2otQyubqR3mfm1iDbEqoDCKVDrxYwet3t38HGNQmeS5GaO9yjPMFYi4k21KqHT+8u8EZ1raboxWk4vINSWlDaCx9Cs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=qy7NHEoZ; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-43cf0d787eeso6341165e9.3
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 23:22:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1745475752; x=1746080552; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8grfYWwIX4hpiA7jlx82Mk2yoAsYJcNHuOuvJvnYwRc=;
        b=qy7NHEoZK8v2NqtBimdBQ6h8eVD+ofk2n6xWKA5CxfSkA38GiWmaAwnHa7O/Rd/I1J
         N9anPEx3rXow21dmR2dUvxiYnq4t8WBs6TsippebzUIvJvt50bsT8FBHUJLMtwuNVuNf
         1DsK/36rF1pJrivjbGO+RJRhi8w9A3z4osJ0Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745475752; x=1746080552;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8grfYWwIX4hpiA7jlx82Mk2yoAsYJcNHuOuvJvnYwRc=;
        b=gOy5sT7INgSgST6LCMC5kLWplMDM68M7bKPe5NIAoYFJLTzv08iFApMzrUNQtwH0FH
         LRzpGVGJs1LCRGkjUL65ec5+16q24Q5hCO/4rGnkONkxMLDG8lQgdX2EVj7Uhr3rPFRq
         lV7PVvC2EdRUNLNq1rmJM0OcJIQ0ow8s1PQxktmUqA0tb2L5+oFeDKfjzg5cRDeMic8C
         b9Ol6d9fNvm9JRXwcAbWVEGFCVr848qPhvQGHkTtcP3RL+/dusWCnYKacZQ7UOL4Iclt
         m3a9DiGh5JggVyzdxZ/Ppf61ULGaASIlI5V85Wp7eDm/MyLcIZ1o5QX5YlF6kLFnUX3N
         ieLg==
X-Forwarded-Encrypted: i=1; AJvYcCWbX7HB2DI5C9B2SWlWk7tBd0Skg41+Vp+dXiqhUCLlU1dEHJaP6BaZDGDnAC0uohiZUjPtFK2yl2SC@vger.kernel.org
X-Gm-Message-State: AOJu0YxrMG3qEOTO35+6CLWdpk0OAorhhXJ1Dq/oHgSSyKZ6TGzDdxQD
	DsFL9wy85JRDC0U10rao/lG/YX7piL5F+C7ew3SqqVvnw7jaoXOrwzsv4AMvcms=
X-Gm-Gg: ASbGncs0CuswO/4gz6LrBXpNL2p2DURdjb/i+sm2v3+sYGyWssss7i37rErXeK0FjMa
	XztRMzSaeTdlDXYsIwkaKuUzceThNB1MG8RbS38gdVYfipWe8mQkkX0VSKMtdA26vNhXggRiFkz
	N46FyodDR+GKcepVX8YT8ObSzLn3yjzyOXuZ1sasYGh0g1Cs2Uec0BxTg34C0CQRYpH4ipSilQp
	GeVUYE7NUdMLOBAXn/A9eYaV5KYIEq2gI+AU+io1tK0abuB3F7boGp/xexXTY5BkmE7R+s60w3r
	8N0rc6deIQgAUie2A+IaaEDDajAmZ/jAOznfU8/AlzWifLfUkrgff0TBJxPcEe/+E9IwfJusWPb
	/jd6d
X-Google-Smtp-Source: AGHT+IEM0/VMCcdJocFhRZ/eLD26SRY/PzYxq7+AJZINwcLXa5TSv1nOFj6pBR4AmZJ1H3dAT+70rw==
X-Received: by 2002:a05:600c:4693:b0:43d:b32:40aa with SMTP id 5b1f17b1804b1-4409bcfc1f6mr10567655e9.3.1745475752419;
        Wed, 23 Apr 2025 23:22:32 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.. ([2.196.40.65])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4409d2bf8dbsm7243435e9.35.2025.04.23.23.22.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 23:22:32 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: Peng Fan <peng.fan@nxp.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	linux-amarula@amarulasolutions.com,
	Abel Vesa <abelvesa@kernel.org>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v12 18/19] arm64: dts: imx8mn: add PLLs to clock controller module (CCM)
Date: Thu, 24 Apr 2025 08:21:48 +0200
Message-ID: <20250424062154.2999219-19-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250424062154.2999219-1-dario.binacchi@amarulasolutions.com>
References: <20250424062154.2999219-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the PLLs generated by anatop to the clock list of the Clock
Controller Module (CCM) node.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

(no changes since v4)

Changes in v4:
- New

 arch/arm64/boot/dts/freescale/imx8mn.dtsi | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
index 49be492b5687..01013c1fd61d 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
@@ -643,9 +643,14 @@ clk: clock-controller@30380000 {
 					     <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
 				#clock-cells = <1>;
 				clocks = <&osc_32k>, <&osc_24m>, <&clk_ext1>, <&clk_ext2>,
-					 <&clk_ext3>, <&clk_ext4>;
+					 <&clk_ext3>, <&clk_ext4>,
+					 <&anatop IMX8MN_ANATOP_AUDIO_PLL1>,
+					 <&anatop IMX8MN_ANATOP_AUDIO_PLL2>,
+					 <&anatop IMX8MN_ANATOP_DRAM_PLL>,
+					 <&anatop IMX8MN_ANATOP_VIDEO_PLL>;
 				clock-names = "osc_32k", "osc_24m", "clk_ext1", "clk_ext2",
-					      "clk_ext3", "clk_ext4";
+					      "clk_ext3", "clk_ext4", "audio_pll1", "audio_pll2",
+					      "dram_pll", "video_pll";
 				assigned-clocks = <&clk IMX8MN_CLK_A53_SRC>,
 						<&clk IMX8MN_CLK_A53_CORE>,
 						<&clk IMX8MN_CLK_NOC>,
-- 
2.43.0



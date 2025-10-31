Return-Path: <devicetree+bounces-233744-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DEF5C251FA
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 13:57:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 045694F5870
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 12:55:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E021342CA5;
	Fri, 31 Oct 2025 12:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BrhUviks"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A66C733C50B
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 12:55:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761915333; cv=none; b=ZWc330Te/J2Ky+3p1GSRHwlBA+MwrECbs5P2SauCZeXC8KTKEULAU6Js1P2SCsMrroiEdITjdxYxZ7GtCvMZIydmj0EDP6UdEzE5wlnbPIYwLl/29LDZbcOaE1TYydOZBlR6qnwHIDGIWKl/pdJptwHPm8lbEShG8OQTobuGRgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761915333; c=relaxed/simple;
	bh=maxNummCODk3xOKN9REfqVWBI6syLE7tsnIUSjVMlfQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=mDgvhzv5xSMeBBnzMcF0t3YWT5KHWCwn6MrLDstLua0PrzjaIblfC2xMqjM82O1VPn/qLu75ZUIeZESFi/7zr2JqmHL2ebZNe0AhLUmVYyQ8+jJUYmTs8e/JCDTRkmCZmRno+PfwCzuQwIqp4fqfIAiEhw3x2SpbHX7bEtwOE5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BrhUviks; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-47721293fd3so12958905e9.1
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 05:55:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761915330; x=1762520130; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Ur2nzdK93Gujnnrr7/bhg1o+Yu3Nd/Uvn3Pjsb5/zzU=;
        b=BrhUviks04ASNyscWvpdQa4fgI7a1O+Zed/X9+Ue8fZrAVB0HTnUC1tco+vpsijy5Q
         5JKHfiBmIWB6QHh9ccihqbC86KDvb/RnRqT8RkBFxROcN6RTLbloUfcr5BFTwKKO0Zic
         DEDSKzUjcZxJDv8mOo0dhWijx9YVVeEdOVMp3qb7R+zYyvuDXt5Kd2Yl9c1NDqt0z6hH
         JKMaQF9DcQRS5P5hkqC5peHJLQnx6WVLm/IMnkqK8A7Bdxk8meU3eHu3mExX81wmiCnm
         FNsmpnb2bIEblzXQnZbzyDcyN2qhvLqu5oMkrwrVBmxvuLn/pABKo521vxR/s7Th1+Ee
         Er0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761915330; x=1762520130;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ur2nzdK93Gujnnrr7/bhg1o+Yu3Nd/Uvn3Pjsb5/zzU=;
        b=wwyWLCwMOiH3EwPs4n4xTqLs0kRrNTAI4q5v4i98KyHry1+PMjmMw7O0owjmvPQlD+
         rwg4NJyg81fh60VefF46Y3tLz7q/dFAAddn8KjHBuCHESYj79aZFAs7EhjvTytsfUBeo
         JtoV4BD9nvtMAppNqhGgtWM8iMztRLiQM6o/scSU6KGbU3U+4l+JTxxpPQz/MPuW8q/3
         5pKaMow1d2PXED0WKeayXcRE85Q8H1A5v+zYt0ePWWjaQV/1j+Ilj7R+Us5+8jgsM+bc
         KUV/K8Sa1Ybcb+/bZx4TevgTPlyRq8xShB5iNFzSiMp/DdxZRWpz8KDdvJQC8R8tDw6i
         wXAg==
X-Forwarded-Encrypted: i=1; AJvYcCWhNWOlYO1ZR00V0XFtj2gdPhQZ8w+JW1KoXwyzOg34K3fp0Yn2MrYAd+vynSBGPAS6pgoNpN4vBv74@vger.kernel.org
X-Gm-Message-State: AOJu0YzJCiiq88LUfnliqYdcZeO1ZT2UPVz5siFIeloku/LxsuEWHcNZ
	M+1XLFn8vCV1nDAyJG85IVWn3CoQulJc+9TGV+S53UU5fi1w8fm3zGXo
X-Gm-Gg: ASbGncuyjLCP9t6pfloH6bEYWhTlNsfkSKsNMaU4opZZHWoUc4BjbKxV2lnTvgOy8ha
	p0//A80y7r2VGzLQdmF9l8mh3OLtlBIlpycDRq2tS5uMkXQKKnKRHnelFapMcZC7wHI5HImyMmj
	if628iPGKLWT9sl+BHV2UoTQznaY+q3FM/3Zm56lPnWWNU6FJaEnx5TNu/RMsYSVZhX0MBQamiJ
	tPHee4aaRtKdcVBkt0XOD2r+3w6mapdgha3afhb7s1y2h8WEICELIamQgD2Q2hj4c11py2Eds+Z
	tUMbCMS06zWkPIsNANJ3NZGtyjfzrQYaqDCBmce85YcupiB80sIwdaL/nIHONK4DxjbrM7OzKCt
	N6zEt/PpHCR2uysvg2b17NnFoZwRYNhcQarEGcpO0WU5paGwgxp/jxh2yzMMLrH1js9xo/qqaFj
	wkufTxTrY37OBQz3Xl8B/e8ps5DK6lThIF4BkzhTYkHNVGG6t0VH+BR6h56CXCK9k1nEXWiY8sK
	CjuweBK1BL7Sk8I
X-Google-Smtp-Source: AGHT+IHKkMjFYDq3sA/7iAVV6Ds+dv03BvTAXq+xvomUp5eBrJogf0XF/TD11Cyme54hAMfPd6Wl0w==
X-Received: by 2002:a05:600c:c4a5:b0:475:ddad:c3a9 with SMTP id 5b1f17b1804b1-4773010641fmr38615415e9.13.1761915329775;
        Fri, 31 Oct 2025 05:55:29 -0700 (PDT)
Received: from toolbox.int.toradex.com (248.201.173.83.static.wline.lns.sme.cust.swisscom.ch. [83.173.201.248])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429c54efcadsm99111f8f.5.2025.10.31.05.55.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 05:55:29 -0700 (PDT)
From: max.oss.09@gmail.com
To: Max Krummenacher <max.krummenacher@toradex.com>
Cc: Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: imx8qm-apalis: add pwm used by the backlight
Date: Fri, 31 Oct 2025 13:55:07 +0100
Message-ID: <20251031125510.433175-1-max.oss.09@gmail.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Max Krummenacher <max.krummenacher@toradex.com>

Add pwm node used by the backlight output pin BKL1_PWM and
reference it from the pwm-backlight node.

Signed-off-by: Max Krummenacher <max.krummenacher@toradex.com>

---

 arch/arm64/boot/dts/freescale/imx8-apalis-eval.dtsi       | 5 ++++-
 arch/arm64/boot/dts/freescale/imx8-apalis-ixora-v1.1.dtsi | 5 ++++-
 arch/arm64/boot/dts/freescale/imx8-apalis-ixora-v1.2.dtsi | 5 ++++-
 arch/arm64/boot/dts/freescale/imx8-apalis-v1.1.dtsi       | 7 +++++--
 4 files changed, 17 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8-apalis-eval.dtsi b/arch/arm64/boot/dts/freescale/imx8-apalis-eval.dtsi
index 311d4950793c..06790255a764 100644
--- a/arch/arm64/boot/dts/freescale/imx8-apalis-eval.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-apalis-eval.dtsi
@@ -109,7 +109,10 @@ &pciea {
 	status = "okay";
 };
 
-/* TODO: Apalis BKL1_PWM */
+/* Apalis BKL1_PWM */
+&pwm_lvds1 {
+	status = "okay";
+};
 
 /* Apalis DAP1 */
 &sai1 {
diff --git a/arch/arm64/boot/dts/freescale/imx8-apalis-ixora-v1.1.dtsi b/arch/arm64/boot/dts/freescale/imx8-apalis-ixora-v1.1.dtsi
index 3d8731504ce1..7022de46b8bf 100644
--- a/arch/arm64/boot/dts/freescale/imx8-apalis-ixora-v1.1.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-apalis-ixora-v1.1.dtsi
@@ -196,7 +196,10 @@ &pciea {
 	status = "okay";
 };
 
-/* TODO: Apalis BKL1_PWM */
+/* Apalis BKL1_PWM */
+&pwm_lvds1 {
+	status = "okay";
+};
 
 /* Apalis DAP1 */
 &sai1 {
diff --git a/arch/arm64/boot/dts/freescale/imx8-apalis-ixora-v1.2.dtsi b/arch/arm64/boot/dts/freescale/imx8-apalis-ixora-v1.2.dtsi
index 106e802a68ba..12732ed7f811 100644
--- a/arch/arm64/boot/dts/freescale/imx8-apalis-ixora-v1.2.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-apalis-ixora-v1.2.dtsi
@@ -245,7 +245,10 @@ &pciea {
 	status = "okay";
 };
 
-/* TODO: Apalis BKL1_PWM */
+/* Apalis BKL1_PWM */
+&pwm_lvds1 {
+	status = "okay";
+};
 
 /* Apalis DAP1 */
 &sai1 {
diff --git a/arch/arm64/boot/dts/freescale/imx8-apalis-v1.1.dtsi b/arch/arm64/boot/dts/freescale/imx8-apalis-v1.1.dtsi
index 86d018f470c1..66261c0286d6 100644
--- a/arch/arm64/boot/dts/freescale/imx8-apalis-v1.1.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-apalis-v1.1.dtsi
@@ -18,7 +18,7 @@ backlight: backlight {
 		brightness-levels = <0 45 63 88 119 158 203 255>;
 		default-brightness-level = <4>;
 		enable-gpios = <&lsio_gpio1 4 GPIO_ACTIVE_HIGH>; /* Apalis BKL1_ON */
-		/* TODO: hook-up to Apalis BKL1_PWM */
+		pwms = <&pwm_lvds1 0 6666667 PWM_POLARITY_INVERTED>;
 		status = "disabled";
 	};
 
@@ -799,7 +799,10 @@ &phyx2_lpcg {
 		 <&hsio_refa_clk>, <&hsio_per_clk>;
 };
 
-/* TODO: Apalis BKL1_PWM */
+&pwm_lvds1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pwm_bkl>;
+};
 
 /* Apalis DAP1 */
 &sai1 {
-- 
2.42.0



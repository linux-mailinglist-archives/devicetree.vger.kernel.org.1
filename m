Return-Path: <devicetree+bounces-153759-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 18AE4A4DB2F
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 11:46:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 29AF2177EAA
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 10:45:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61B211FF7DC;
	Tue,  4 Mar 2025 10:42:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jB+NySUc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6650D1FF7AD
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 10:42:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741084928; cv=none; b=PH47eOjvTTxiSJJq7RLdHSAUG3iVkUrlFIqJ6Ti57nprd8stMf3kDAAaGjbN5v0HNn4pynPWR4U9UGs4EyYkBV+23gRzlgSyj1klTvDf+3tWnrwaBU/AnBtemIwxjqaHQ34wedcd+4cZ2nOmN3HEpyoutNohv7PcSYMMsQ2hXQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741084928; c=relaxed/simple;
	bh=lj+LKYBIbZHMRgSOHlWkhtGfvLPPYNRUo3TcX1HTbxM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BEJihsDMGgRsCED3uUlSyJMsvyPZeGatubsdHI7wF/cZF1SxOs6mMd1Mqp8Bv+vXhgJzLM59weUjDGtYk5XwNFr594+ucXOp0HGfrpYzttGYESt95w8GBAn9ospn/WvNRoFCsT2VZ+10eYLXq1Ym+GhuB/ScVt70VB2QdpTISVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jB+NySUc; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-43bc526c7c8so1981575e9.3
        for <devicetree@vger.kernel.org>; Tue, 04 Mar 2025 02:42:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741084925; x=1741689725; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GDxLGGq40mrprdt8U26xMTW1xjWdDPFqwzgumK7bnvA=;
        b=jB+NySUcTT6dUHfnGaqdiGBjze25TFujdi0TPrmY+th5Kkt+YL476VNg55mX6MRTtg
         CpuzeTg33b2YD2vLWBDG4UMpUlGU7lfpeQhkkH7nifTVykKyOybE8dFwm3Twxd1arwbI
         rSkAuEBMi5LBWU3k5GlWutLACDVm2tXANfwL/WAkETP+lR1YcfGCW/or5UD9i6zxkX3P
         4yTZHrZWgEkGjUgDSDmZIKwMzbJ90KSHHZjeHthSDSApiSsjg5EQsZgL9KfnlUMfDZ2s
         +zApmqQYLA+PzYptsPJXfkRRE9NzsFnZIx0sUkC+2BZXFlTjISwiF2iQ6w8HcF8nFgCJ
         WBsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741084925; x=1741689725;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GDxLGGq40mrprdt8U26xMTW1xjWdDPFqwzgumK7bnvA=;
        b=vW1UNAfqap3KYQgDrMmgAsWPpBcPXoAiTxwxOa+vsIrIr/FBIn2PcjN28ddHhlW8Mg
         fwHfqlUGMJSe2tcJYk1rZz9nHxUA47Uup9zU9rpEyY6GtPPx3dLvKxrOPTcL9uEvS67p
         xaDWn/ppA86YoASj+7Lu3gGel47WP6clfnWly+WS3m9GoMn50KuOIpVjH8x3JcfIDKXR
         uiTEsDBbzi4hmPUWBhTrBWXiIfLQjoc/Ukgk/Tv3JvptKtddnL7g6RM07yEDoHsYB59n
         opMdA1LmDzo8ev2Veas4kHJx7VfW4xWsGwJKmpnymbN9liTpEs6KyiL6gral0FA7n+9o
         OL7A==
X-Forwarded-Encrypted: i=1; AJvYcCU5yxY2KzXpOvJBTaK6r+sDomyy7cNT+cU89rhuGq7S5bLevuthwbrS7LL/u8Oi7h33SxHxfhQsW2+8@vger.kernel.org
X-Gm-Message-State: AOJu0YyZ+G2iYR2PXK06s5QZ0BMYWtSCrs1/ZMO9YNy+a5gGGfJ2eQz2
	QUMtqJPgnb8cnNY+0jvrg6wg7Z2Q8jRYiQHTkcsrn/5pfa4jULt9BVuXHCuZpuP1SvVPylHMOPT
	W370=
X-Gm-Gg: ASbGncugdMUHz5W9rVjPutJIS4SKUEgJSOS3fnrAtG3jcqRLJpxNL/T6WMDzW3sxKEH
	HLcCb1ldYdy1lUr4Bes4DAoZ2OZBW5ztYvt7lKPNuwc/rcZOZkvIh7jXBqVn7jFkB2rJDvHxRCr
	PIev2F+98MUr+7FhhkZD3qvp44yQZSdl/OH8mN2UYEhyh2P1o4enyErR9jMC4ThC/M/l5evNvFV
	ra4oJpCduU+SVJ0cKYYbnx5f7hYqUPQIAy0IDOuX0kMIRImB3qT7pGtFNOV/1sUeJtY4OqNA425
	kYx8KTIcYmbyhF9RBpF4x1BxqqB0WrzvOmofLZJ0qRUYNu7W9ir67mH05bM=
X-Google-Smtp-Source: AGHT+IEBaeeS+ss4bvkyeewcMs2ci2tWe2j9anwRxAUmA/kmrMhdWw1KWJLeZhb3ucTu5owhQtYxHA==
X-Received: by 2002:a05:600c:3b8e:b0:43b:c228:1ee0 with SMTP id 5b1f17b1804b1-43bc2282147mr23743515e9.7.1741084924557;
        Tue, 04 Mar 2025 02:42:04 -0800 (PST)
Received: from krzk-bin.. ([178.197.206.225])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390e47b792asm17202257f8f.53.2025.03.04.02.42.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Mar 2025 02:42:04 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] arm64: dts: rockchip: Add ES8388 audio codec fallback on RK3588 boards
Date: Tue,  4 Mar 2025 11:42:00 +0100
Message-ID: <20250304104200.76178-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250304104200.76178-1-krzysztof.kozlowski@linaro.org>
References: <20250304104200.76178-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Devicetree bindings for ES8388 audio codec expect the device to be
marked as compatible with ES8328.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changeset depends on bindings patch being accepted to ASoC:
https://lore.kernel.org/all/20250304103808.75236-1-krzysztof.kozlowski@linaro.org/

Please take it to the same or next merge cycle as above ASoC binding.
---
 arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts         | 2 +-
 arch/arm64/boot/dts/rockchip/rk3588-orangepi-5.dtsi      | 2 +-
 arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts      | 2 +-
 arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts        | 2 +-
 arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts   | 2 +-
 arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts | 2 +-
 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtsi     | 2 +-
 7 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
index 27a7895595ee..e77a38d726e0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
@@ -472,7 +472,7 @@ &i2c7 {
 	status = "okay";
 
 	es8388: audio-codec@11 {
-		compatible = "everest,es8388";
+		compatible = "everest,es8388", "everest,es8328";
 		reg = <0x11>;
 		clocks = <&cru I2S0_8CH_MCLKOUT>;
 		assigned-clocks = <&cru I2S0_8CH_MCLKOUT>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5.dtsi
index a98e804a0949..81031b99c9b9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5.dtsi
@@ -276,7 +276,7 @@ &i2c7 {
 
 	/* PLDO2 vcca 1.8V, BUCK8 gated by PLDO2 being enabled */
 	es8388: audio-codec@11 {
-		compatible = "everest,es8388";
+		compatible = "everest,es8388", "everest,es8328";
 		reg = <0x11>;
 		clocks = <&cru I2S0_8CH_MCLKOUT>;
 		AVDD-supply = <&vcc_3v3_s0>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts b/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
index 088cfade6f6f..e07888c9948f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
@@ -311,7 +311,7 @@ &i2c7 {
 	status = "okay";
 
 	es8388: audio-codec@11 {
-		compatible = "everest,es8388";
+		compatible = "everest,es8388", "everest,es8328";
 		reg = <0x11>;
 		assigned-clocks = <&cru I2S0_8CH_MCLKOUT>;
 		assigned-clock-rates = <12288000>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
index bc4077575beb..7c948b2653da 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
@@ -242,7 +242,7 @@ &i2c3 {
 	status = "okay";
 
 	es8388: audio-codec@11 {
-		compatible = "everest,es8388";
+		compatible = "everest,es8388", "everest,es8328";
 		reg = <0x11>;
 		clocks = <&cru I2S0_8CH_MCLKOUT>;
 		assigned-clocks = <&cru I2S0_8CH_MCLKOUT>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts b/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
index 812bba0aef1a..b79ce3ec1186 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
@@ -611,7 +611,7 @@ &i2c7 {
 	status = "okay";
 
 	es8388: audio-codec@11 {
-		compatible = "everest,es8388";
+		compatible = "everest,es8388", "everest,es8328";
 		reg = <0x11>;
 		assigned-clock-rates = <12288000>;
 		assigned-clocks = <&cru I2S0_8CH_MCLKOUT>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index 74a4f03e05e3..73042e7416bc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -412,7 +412,7 @@ &i2c7 {
 	status = "okay";
 
 	es8388: audio-codec@11 {
-		compatible = "everest,es8388";
+		compatible = "everest,es8388", "everest,es8328";
 		reg = <0x11>;
 		assigned-clock-rates = <12288000>;
 		assigned-clocks = <&cru I2S0_8CH_MCLKOUT>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtsi
index 9e16960b8705..a48bcb6b6a91 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtsi
@@ -268,7 +268,7 @@ &i2c6 {
 	status = "okay";
 
 	es8388: audio-codec@10 {
-		compatible = "everest,es8388";
+		compatible = "everest,es8388", "everest,es8328";
 		reg = <0x10>;
 		clocks = <&cru I2S1_8CH_MCLKOUT>;
 		AVDD-supply = <&vcc_3v3_s0>;
-- 
2.43.0



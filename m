Return-Path: <devicetree+bounces-224410-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EDD84BC3B0B
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 09:38:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1E3D64F7F78
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 07:37:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42A5A2FCBF9;
	Wed,  8 Oct 2025 07:31:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Tin0ufH3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B19512FBDF1
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 07:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759908717; cv=none; b=sjypzhDPUfsBuum1BFpNemkhhGDtnaPcNTMvyYhXVi5pBvrfSH1fOaZzxQuhUc7ACWoW9+vm5oz2elDQDc6MUMfJYxEekwoR+o3UBcBRRhEfX9VJjVvTV4CShUL9KSpERSDNtCsg5iJbcXpPklHOqkrkKbqyqpx7vBaz+mEFSVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759908717; c=relaxed/simple;
	bh=iiHfTmqTpfmKU38rkhczSgtC8/xhyV+ts8JmJCC3QqE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WzFeR9O51cNp/eGzC1BgFb5X7GSoyH1dQnk039fvjGQFonJra2fkhxDsYNHg0ox2UauZA8nCw/hRA26ofixdVBLAPiW4rN3rohYgul8+9k/gp7QU1TJazKLTS2fyRp3EkN4TFUkJs3v5Jl2Hz5coA3atZ+c7D2RFncBGizSqRro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Tin0ufH3; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-57a604fecb4so9085869e87.1
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 00:31:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759908712; x=1760513512; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ihAxrvGeeqbDGS2s2nWoaKnfeN+9tvG68aYZNvqbzNU=;
        b=Tin0ufH3HoWUW+4fy9yfVmADSrO5zIl6I/OfDFntMk7Dz3OnhCacE0jGZChjrWAC+U
         nsy9i6YJJDZCpRwSXroV4OT1+rceGLCu6JEHXcEB//YJVZel7ApWr2WPNyEsETk8W8ic
         xyD5gwPrE/5Igs5Cyfi4rWAs8Xs/UlApTKJWZ1l/99AO8luaUk9UB1Lv0ndHj3EbnK1u
         buUwpV/Yqxtl9WXbyA7mxxFh3jb4NxztAGsOb9jl1ciscI7hfx8csu/mkF6Hs+dBjDPl
         e3olL+xWa5+Qbo11UHikaD0hrTQq7Kewv6h2FZCb0Bk8ljK/X1zenTJ0MflbrbI1oLuP
         waKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759908712; x=1760513512;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ihAxrvGeeqbDGS2s2nWoaKnfeN+9tvG68aYZNvqbzNU=;
        b=nQH7dFRFJqgg3Scm9lGPrAGEv/xZqCBwwdmSghwoiBD/MT6lIE8AMT9FlsXFO9/gWm
         WCKMUEYDtkJGmIIwqr6ry6Dz43Pybh/UjLu5NpssQZHMhQuPaiti+acR8C3EjK4Ohlr/
         jxqwSeSmQ0WaRsDy1aTvABHvuFPqiB0BdciFngtXP1nqm8OL26eUGQCL274KyOxc6SMP
         ZHdrGUnLww7MGSxzT+YesdvfftAulj6R2fpdAB3XjQRaBh69KywZoCCtJNOb4YHHiDy7
         UrJJWcg+yqCD33i3zUBOq1yrfTcOg39B1qGA202aNGiKcWqvchKAVkraCvEX1/RrPuUB
         JS2Q==
X-Forwarded-Encrypted: i=1; AJvYcCX65bIfqgml4hy+muZORJEYpi1jsfdASvS4taohVFXgSIGsVngE22eiGC6Fg2sM+i5nLEWx0PRrljgI@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5noxoNjdMdL4UtPblxQFeQI4RZtwWjiex6NyngFYw1NdlkyWq
	bg5pgWM6VEyh3BxRbf/LYA81h8ltGYVG9rUFpWwYci/k16QvJO6QaaxD
X-Gm-Gg: ASbGncshUF9abOs0sCaBd2lLkxnZFAHmSi7RrxUDZPcY46crwuMu2DOcmuuDwNPjjGa
	UlE5Ud3mgQrfy4YLMOGKX4bEZb3h8f1SN7MOE1zndLGnTeIejCfe8YHCLO5UrIZ4MwK6YW8Qk2c
	iZusKYlDKckT4r8cQi+D7nHDrifq5CMI0uHuS3yaJtpqVcZ8j8Omh+xFHhmkYyqUitF6jN8V4gE
	2gPjVRlPCtMUWcKRfEWeS0EmFNwocEmlJZav1PaL+kSnooeBqHSbP0iemYJKiyyhX6sZ3qBFJjX
	F9KOv9Bg2+hHUdJOTGcgEkE+JY6l/kdI4t15l4UD7nA2sCN9PJRn3k9v67dMb3yi/cb9tp5TBV5
	iI+OkcJddIcCqR48xUYl+xVJydavPJtuE1REcbA==
X-Google-Smtp-Source: AGHT+IHLfcoP/CF+9Jgh7CWd/VCkL/1kWm6zkDko2dBTHVx0gAsAz99mKegLte9a4Cyd6nve7U60ng==
X-Received: by 2002:a05:6512:3d0d:b0:57f:492:3263 with SMTP id 2adb3069b0e04-5906d87b37cmr670856e87.1.1759908712166;
        Wed, 08 Oct 2025 00:31:52 -0700 (PDT)
Received: from xeon.. ([188.163.112.70])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58b0118d22bsm6911016e87.85.2025.10.08.00.31.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 00:31:51 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Sowjanya Komatineni <skomatineni@nvidia.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Prashant Gaikwad <pgaikwad@nvidia.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Mikko Perttunen <mperttunen@nvidia.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	=?UTF-8?q?Jonas=20Schw=C3=B6bel?= <jonasschwoebel@yahoo.de>,
	Dmitry Osipenko <digetx@gmail.com>,
	Charan Pedumuru <charan.pedumuru@gmail.com>,
	Diogo Ivo <diogo.ivo@tecnico.ulisboa.pt>,
	Aaron Kling <webgeek1234@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-tegra@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-staging@lists.linux.dev
Subject: [PATCH v4 23/24] ARM: tegra: add CSI nodes for Tegra20 and Tegra30
Date: Wed,  8 Oct 2025 10:30:45 +0300
Message-ID: <20251008073046.23231-24-clamor95@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251008073046.23231-1-clamor95@gmail.com>
References: <20251008073046.23231-1-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add CSI node to Tegra20 and Tegra30 device trees.

Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
---
 arch/arm/boot/dts/nvidia/tegra20.dtsi | 19 ++++++++++++++++++-
 arch/arm/boot/dts/nvidia/tegra30.dtsi | 24 ++++++++++++++++++++++--
 2 files changed, 40 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/nvidia/tegra20.dtsi b/arch/arm/boot/dts/nvidia/tegra20.dtsi
index 6ae07b316c8a..5cdbf1246cf8 100644
--- a/arch/arm/boot/dts/nvidia/tegra20.dtsi
+++ b/arch/arm/boot/dts/nvidia/tegra20.dtsi
@@ -64,7 +64,7 @@ mpe@54040000 {
 
 		vi@54080000 {
 			compatible = "nvidia,tegra20-vi";
-			reg = <0x54080000 0x00040000>;
+			reg = <0x54080000 0x00000800>;
 			interrupts = <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&tegra_car TEGRA20_CLK_VI>;
 			resets = <&tegra_car 20>;
@@ -72,6 +72,23 @@ vi@54080000 {
 			power-domains = <&pd_venc>;
 			operating-points-v2 = <&vi_dvfs_opp_table>;
 			status = "disabled";
+
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			ranges = <0x0 0x54080000 0x4000>;
+
+			csi: csi@800 {
+				compatible = "nvidia,tegra20-csi";
+				reg = <0x800 0x200>;
+				clocks = <&tegra_car TEGRA20_CLK_CSI>;
+				power-domains = <&pd_venc>;
+				#nvidia,mipi-calibrate-cells = <1>;
+				status = "disabled";
+
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
 		};
 
 		epp@540c0000 {
diff --git a/arch/arm/boot/dts/nvidia/tegra30.dtsi b/arch/arm/boot/dts/nvidia/tegra30.dtsi
index 20b3248d4d2f..be752a245a55 100644
--- a/arch/arm/boot/dts/nvidia/tegra30.dtsi
+++ b/arch/arm/boot/dts/nvidia/tegra30.dtsi
@@ -150,8 +150,8 @@ mpe@54040000 {
 		};
 
 		vi@54080000 {
-			compatible = "nvidia,tegra30-vi";
-			reg = <0x54080000 0x00040000>;
+			compatible = "nvidia,tegra30-vi", "nvidia,tegra20-vi";
+			reg = <0x54080000 0x00000800>;
 			interrupts = <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&tegra_car TEGRA30_CLK_VI>;
 			resets = <&tegra_car 20>;
@@ -162,6 +162,26 @@ vi@54080000 {
 			iommus = <&mc TEGRA_SWGROUP_VI>;
 
 			status = "disabled";
+
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			ranges = <0x0 0x54080000 0x4000>;
+
+			csi: csi@800 {
+				compatible = "nvidia,tegra30-csi";
+				reg = <0x800 0x200>;
+				clocks = <&tegra_car TEGRA30_CLK_CSI>,
+					 <&tegra_car TEGRA30_CLK_CSIA_PAD>,
+					 <&tegra_car TEGRA30_CLK_CSIB_PAD>;
+				clock-names = "csi", "csia-pad", "csib-pad";
+				power-domains = <&pd_venc>;
+				#nvidia,mipi-calibrate-cells = <1>;
+				status = "disabled";
+
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
 		};
 
 		epp@540c0000 {
-- 
2.48.1



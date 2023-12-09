Return-Path: <devicetree+bounces-23466-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 977FC80B582
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 18:30:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 47AEE1F2106A
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 17:30:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28C8D1864B;
	Sat,  9 Dec 2023 17:30:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XQfuoC89"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82DDB10DA
	for <devicetree@vger.kernel.org>; Sat,  9 Dec 2023 09:30:49 -0800 (PST)
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-50bfd7be487so3567245e87.0
        for <devicetree@vger.kernel.org>; Sat, 09 Dec 2023 09:30:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702143048; x=1702747848; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ho0A//e5nku1XNpPeOxEQX2rLe6R8q7cIXkFFUGZs5k=;
        b=XQfuoC899DKmgqKuh+tHzDE7HmdiKLtYQ4fCxhj4QzXaPMH5Rk4siM/t937Sbc+EiG
         e1T2cPaztFiv+I268Af71rCSWUX4AdTqzj/75NLUzUAhlSAmqDVkYlpT6zsO5116rjn2
         zdZ5v7jKVibbgcU09cUEE/87WHXbBxVtzokxar/lQ2nyKcCsUpxXif0U8h41FbPgQXNV
         dZhnTDWcw9vnfFKI8AbJOOhZfzS23cn92dGka4aZyipd7I9AKrX/AwmxICThM4G0PmWx
         kBf1wp1Fg4Do7osu55QfI2k1mtZnewQAeBEtcaAROQKBaxnLlmto+1Uq1YtO96f5+jvU
         QHyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702143048; x=1702747848;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ho0A//e5nku1XNpPeOxEQX2rLe6R8q7cIXkFFUGZs5k=;
        b=V0wNhYqp/324qJ+LPModpgHM+ouObkck58tfiHmVbwmox9CnVHlQYnf8Z7RF0U9rSq
         pbfIUwqsfsLEeLPZ7jM9rqyGf53jfFMZ09TcgLz2auDJzJ3d3nJTmPt1YiT6uXKEo05Y
         6OCNnUq8+qhtsBUAHYeVNMRfJpR6rVX5rsRXE7aeNRiPF/3xBIr1RaMPjx7eG8l+RmoX
         xIHLyGr9s3rrC5fKZ+UZsNEIrIHuXCXJk1z/VF6x1TtElvRUdCubG32oO2H3B+HoOBTZ
         Qjklgay3sTYX4KS2FQqe7HZcPVbWqI614pUilIBcvzGinUxZkcq/nGHgaMuxQwi+E8ni
         PSCw==
X-Gm-Message-State: AOJu0YxMR/fjF+HKp8NejV9uSrGRPtvFvV9KY28aj6JVLTUHNbqEfVJu
	KDD7FjxKWY2a19T/xxkxxUAJKA==
X-Google-Smtp-Source: AGHT+IET7Oq0v4OfJpxjjj6CVCaSQsJKZm5hQL+iKxCrZeOieOHs80ikD6xhP3WVTvX3gaMnsgb0XQ==
X-Received: by 2002:a05:6512:2386:b0:50b:e995:d9e6 with SMTP id c6-20020a056512238600b0050be995d9e6mr969488lfv.93.1702143047640;
        Sat, 09 Dec 2023 09:30:47 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id m26-20020a50931a000000b0054ce5c00e74sm1926621eda.88.2023.12.09.09.30.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Dec 2023 09:30:47 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 01/15] ARM: dts: socfpga: drop unsupported cdns,page-size and cdns,block-size
Date: Sat,  9 Dec 2023 18:30:30 +0100
Message-Id: <20231209173044.257684-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

cdns,page-size and cdns,block-size are neither documented nor used by
Linux, so remove them to fix dtbs_check warnings like:

  socfpga_arria5_socdk.dtb: flash@0: Unevaluated properties are not allowed ('cdns,block-size', 'cdns,page-size' were unexpected)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../arm/boot/dts/intel/socfpga/socfpga_arria10_socdk_qspi.dts | 2 --
 arch/arm/boot/dts/intel/socfpga/socfpga_arria5_socdk.dts      | 2 --
 arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_socdk.dts    | 2 --
 arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_sockit.dts   | 2 --
 arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_sodia.dts    | 2 --
 .../boot/dts/intel/socfpga/socfpga_cyclone5_vining_fpga.dts   | 4 ----
 6 files changed, 14 deletions(-)

diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_arria10_socdk_qspi.dts b/arch/arm/boot/dts/intel/socfpga/socfpga_arria10_socdk_qspi.dts
index 11ccdc6c2dc6..0434f1c7b665 100644
--- a/arch/arm/boot/dts/intel/socfpga/socfpga_arria10_socdk_qspi.dts
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga_arria10_socdk_qspi.dts
@@ -17,8 +17,6 @@ flash0: flash@0 {
 		spi-max-frequency = <100000000>;
 
 		m25p,fast-read;
-		cdns,page-size = <256>;
-		cdns,block-size = <16>;
 		cdns,read-delay = <3>;
 		cdns,tshsl-ns = <50>;
 		cdns,tsd2d-ns = <50>;
diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_arria5_socdk.dts b/arch/arm/boot/dts/intel/socfpga/socfpga_arria5_socdk.dts
index c48385702a85..7342f5942b0d 100644
--- a/arch/arm/boot/dts/intel/socfpga/socfpga_arria5_socdk.dts
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga_arria5_socdk.dts
@@ -124,8 +124,6 @@ flash: flash@0 {
 		spi-max-frequency = <100000000>;
 
 		m25p,fast-read;
-		cdns,page-size = <256>;
-		cdns,block-size = <16>;
 		cdns,read-delay = <4>;
 		cdns,tshsl-ns = <50>;
 		cdns,tsd2d-ns = <50>;
diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_socdk.dts b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_socdk.dts
index c7f5fa0ba0f2..d37a982e8571 100644
--- a/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_socdk.dts
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_socdk.dts
@@ -129,8 +129,6 @@ flash0: flash@0 {
 		spi-max-frequency = <100000000>;
 
 		m25p,fast-read;
-		cdns,page-size = <256>;
-		cdns,block-size = <16>;
 		cdns,read-delay = <4>;
 		cdns,tshsl-ns = <50>;
 		cdns,tsd2d-ns = <50>;
diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_sockit.dts b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_sockit.dts
index 3dd99c7c95e0..9e4db7407f1a 100644
--- a/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_sockit.dts
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_sockit.dts
@@ -174,8 +174,6 @@ flash: flash@0 {
 		spi-max-frequency = <100000000>;
 
 		m25p,fast-read;
-		cdns,page-size = <256>;
-		cdns,block-size = <16>;
 		cdns,read-delay = <4>;
 		cdns,tshsl-ns = <50>;
 		cdns,tsd2d-ns = <50>;
diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_sodia.dts b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_sodia.dts
index 2564671fc1c6..ce0d6514eeb5 100644
--- a/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_sodia.dts
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_sodia.dts
@@ -121,8 +121,6 @@ flash0: flash@0 {
 		spi-max-frequency = <100000000>;
 
 		m25p,fast-read;
-		cdns,page-size = <256>;
-		cdns,block-size = <16>;
 		cdns,read-delay = <4>;
 		cdns,tshsl-ns = <50>;
 		cdns,tsd2d-ns = <50>;
diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_vining_fpga.dts b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_vining_fpga.dts
index e0630b0eed03..65f390bf8975 100644
--- a/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_vining_fpga.dts
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga_cyclone5_vining_fpga.dts
@@ -229,8 +229,6 @@ flash@0 {
 		spi-max-frequency = <100000000>;
 		m25p,fast-read;
 
-		cdns,page-size = <256>;
-		cdns,block-size = <16>;
 		cdns,read-delay = <4>;
 		cdns,tshsl-ns = <50>;
 		cdns,tsd2d-ns = <50>;
@@ -246,8 +244,6 @@ flash@1 {
 		spi-max-frequency = <100000000>;
 		m25p,fast-read;
 
-		cdns,page-size = <256>;
-		cdns,block-size = <16>;
 		cdns,read-delay = <4>;
 		cdns,tshsl-ns = <50>;
 		cdns,tsd2d-ns = <50>;
-- 
2.34.1



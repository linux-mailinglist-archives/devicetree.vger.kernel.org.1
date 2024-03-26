Return-Path: <devicetree+bounces-53475-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 253C188C67F
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 16:13:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D47CE307140
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 15:13:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E28F313C9C8;
	Tue, 26 Mar 2024 15:13:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CYMttxlv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1CCA13C834
	for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 15:13:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711465990; cv=none; b=jMCXb2xEeiPCZa9CDDHj18YzZQ/VNnql6T0YqKGJLaczY5o1VN15a/rOgv5vnVddJF+4vUQk7cv79vsbo0hBkYJDUtua8RN51/a+/mtplyiVvrQuBKO20o56R6YvsdVf7dsm/xf19GcT81w7Z+WsbVaMu2kp/di6PTfPBRyu8eA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711465990; c=relaxed/simple;
	bh=7lkzSUm1Ul8V+EdUeWY/X1nNxSh2jzQA9QP9ImmSGcc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UhYGxB08K1gG7+8YZGoVoqOfryIbAGel7zaIO8w3KWEK7ae6nzzzD0gFMqVmRNhS5IAQ/iaGByfSQpuHQ0B+Oc9Dapb9EzAP/vP7akp+hvYqWrEmAOu+fHJbFGQHMzCamswxrAhMacWitTC3d/1R31jPcOC9RWNHA18+TmHNa08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CYMttxlv; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-341cf28e055so1511091f8f.0
        for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 08:13:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711465987; x=1712070787; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kWKDIY/u2md2wNjgeXLoADhUE8Z+aSwj/NWl7yNcIbo=;
        b=CYMttxlv7yNvDasdFvqrx67JTDU67YnFk7ZZXAgtMMh9DeIvbc5vHaxhrfmMg8exEz
         5AlWw06qHDh2wLYHRbeNTJgfdLH3el2yyUNaoDRPp6VmfVL3qPxXxEfPk+cBcithbxlI
         T2CkFiNbueSkUPon9RAsdjswm3UBGyngYzEharnW1d76lt1rWyBUigAaD3a9tGwUo9ib
         e0PfNuwdcelRnwT5+qs5Nv0916Xv5MuA1xg55oE3JtImeF1pm9Sz6sUGG4RV4hVjZVHf
         KAXZw8yI0n4cn77QCG4hzIxkjKtnJIP2YkjL6HNN00WiINimIZXT4FXL5aADW1hCeI5M
         7BOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711465987; x=1712070787;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kWKDIY/u2md2wNjgeXLoADhUE8Z+aSwj/NWl7yNcIbo=;
        b=vb4xuooR+JU1xcuH5rf7ghD4LdPPu3GA0hnFCsn0YaOoi4IgkaGEcn8EEHiMEoX0ll
         ujaEHfnXuDFzs52nVzqN0gVCSIOwT+9Gc6XiQ7lmTlOEzjmov2QI2gm3/SCWBzuUtPKT
         sNeEjSN6EELZXmF9jFHilnfKwBsZFK6AJt7FOfTFW9+2Yi32B504YnibouafxPc/p/i1
         SVxtKVvC06vhx7tgDTd27nlKWutzzhERuGYQOMpxBTQ4n73vIWNmcdbcvi6RWZOAEcbY
         EWNEqd3nqC8tGBSdHmKlsBawFhvw9s77eul69wtZF1ScAQquXehnc2o19wxaHLICj00S
         Ncaw==
X-Forwarded-Encrypted: i=1; AJvYcCWQQ93Ob5APLSZBxUO3EAM5g1BMXMi5Xgrf7pVSYHhRq9+rHCSHiCpRGbvuk5eO/ZtAOEE9HxfFvO13SruU26SEz6qRZCh+4P8s+g==
X-Gm-Message-State: AOJu0YzRTSNADHYfiDlG+IbLvd/r/xItmgM2tolnDGM2HRts83rXtNik
	QZZAYIKTrTHAhO8eJ/RqUl90d3pIpyL1nlUlqsMq3Hu08baGh6kb8gmJxgc1RPU=
X-Google-Smtp-Source: AGHT+IGRhfxsdkHs1sY7r1Bc4R3NcncGG/37vNy8SK4lp3sdCXyiwe+1uY1F95BtgmWu/vUaWrS2QA==
X-Received: by 2002:adf:e28f:0:b0:33e:6833:8fa9 with SMTP id v15-20020adfe28f000000b0033e68338fa9mr8121240wri.44.1711465987252;
        Tue, 26 Mar 2024 08:13:07 -0700 (PDT)
Received: from ta2.c.googlers.com.com (158.100.79.34.bc.googleusercontent.com. [34.79.100.158])
        by smtp.gmail.com with ESMTPSA id b1-20020a5d40c1000000b0033e7a204dc7sm12325692wrq.32.2024.03.26.08.13.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Mar 2024 08:13:06 -0700 (PDT)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: peter.griffin@linaro.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: alim.akhtar@samsung.com,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	andre.draszik@linaro.org,
	willmcvicker@google.com,
	kernel-team@android.com,
	Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH v3 4/5] arm64: dts: exynos: gs101: join lines close to 80 chars
Date: Tue, 26 Mar 2024 15:13:00 +0000
Message-ID: <20240326151301.348932-5-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.44.0.396.g6e790dbe36-goog
In-Reply-To: <20240326151301.348932-1-tudor.ambarus@linaro.org>
References: <20240326151301.348932-1-tudor.ambarus@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

These lines fit 81 characters, which is pretty close to 80.
Join the lines for better readability.

Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>
Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index cfb3ddc7f885..690deca37e4f 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -374,8 +374,7 @@ pinctrl_peric0: pinctrl@10840000 {
 		};
 
 		usi8: usi@109700c0 {
-			compatible = "google,gs101-usi",
-				     "samsung,exynos850-usi";
+			compatible = "google,gs101-usi", "samsung,exynos850-usi";
 			reg = <0x109700c0 0x20>;
 			ranges;
 			#address-cells = <1>;
@@ -403,8 +402,7 @@ hsi2c_8: i2c@10970000 {
 		};
 
 		usi_uart: usi@10a000c0 {
-			compatible = "google,gs101-usi",
-				     "samsung,exynos850-usi";
+			compatible = "google,gs101-usi", "samsung,exynos850-usi";
 			reg = <0x10a000c0 0x20>;
 			ranges;
 			#address-cells = <1>;
@@ -419,8 +417,7 @@ usi_uart: usi@10a000c0 {
 			serial_0: serial@10a00000 {
 				compatible = "google,gs101-uart";
 				reg = <0x10a00000 0xc0>;
-				interrupts = <GIC_SPI 634
-					      IRQ_TYPE_LEVEL_HIGH 0>;
+				interrupts = <GIC_SPI 634 IRQ_TYPE_LEVEL_HIGH 0>;
 				clocks = <&cmu_peric0 CLK_GOUT_PERIC0_PERIC0_TOP1_PCLK_0>,
 					 <&cmu_peric0 CLK_GOUT_PERIC0_PERIC0_TOP1_IPCLK_0>;
 				clock-names = "uart", "clk_uart_baud0";
@@ -454,8 +451,7 @@ pinctrl_peric1: pinctrl@10c40000 {
 		};
 
 		usi12: usi@10d500c0 {
-			compatible = "google,gs101-usi",
-				     "samsung,exynos850-usi";
+			compatible = "google,gs101-usi", "samsung,exynos850-usi";
 			reg = <0x10d500c0 0x20>;
 			ranges;
 			#address-cells = <1>;
-- 
2.44.0.396.g6e790dbe36-goog



Return-Path: <devicetree+bounces-220807-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AED6B9A8C1
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 17:15:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 46F411B26388
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 15:16:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D94C30FC2B;
	Wed, 24 Sep 2025 15:15:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IoN95KSI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24824307AFA
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 15:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758726926; cv=none; b=nJlI0viIx22eRoGzH6diKM3M/PHfWUo7YhapJyvEb4LitUB4tDa3r52V3ifn44Q7ZlpMbKV4WWN1OBq1ZBA6oo8NLKfWBlE4tgM4lERwrMgRY7qOFDpSn4a/xlarUJ6dnOWPAqisO7ca9aZeDbv7xEkDECZjt6lcTrggUsmZE9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758726926; c=relaxed/simple;
	bh=fbP+TlGg3NLAStwFGbaJsLnhS+YJCTLqAERnvsIlpbU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=DzHWx3AgcVWPsfJQDQ1t3c504zWMi82JkbDxoU9C4wqC9wNNR+UGsZA2ivbzFMwxijy7afhXopVdMh1hsoWTvvm2wSuBofMv1P72SHrujA1+zQtg9VEKemPsHeN057mf6hJTgjFUiNuDWqw3oQJu/93HRiHORarTEbQPwsJcePQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IoN95KSI; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3e8ef75b146so6417880f8f.0
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 08:15:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758726921; x=1759331721; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yH8er2WLBKFy2pvhJtg/nSPNfqLqFULuGIksUuRQwfc=;
        b=IoN95KSIwvcAZtzEgfb4Az9yz/3zwsa6R/01ugjV1orzswNz43zDNgPIbiPjslWYx0
         P07KSGPzjFuc+ZIws9Nk2whxl+ShBZraIQDCVsCVDbSyp0S+Ht91A0emE5r27Mg7/7Xa
         FzoZewr0Dmp6ZoJUPuWFkjobgXjVnH+6kR2QXlpe7Fuu7zhuMLGNAEvy7+sp3jZRdOvQ
         A6CfVr3KWRhgPfeBOsI/k4poj3GybLlPGVrD8QLoUqM/BJ/KvvFiO+km6OQBGxtE8SQq
         UeN/BFYK3yDJp0ZmxJcBIGKB7cfdjO/SNFsdTn73BNEJ6D4yfWyj//Q6QDSnsruKf5Bx
         7S8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758726921; x=1759331721;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yH8er2WLBKFy2pvhJtg/nSPNfqLqFULuGIksUuRQwfc=;
        b=W1fpIZLCHPV7w41/7nlkMdKR0m42ioJP0KR+PN9AP4xjbTXmM8AigoPxokTjmNLck2
         E+F/UD8BlCSGk2A89hVLftIC1yCoWEVvshcGKCcyBcgt66P0MrOM8JQkaJ25mbmvpbZO
         hEEa6j5TYidL4uGhnghLPLusT7Sfb8Js1bHOf1rB+QqpzxSlOOKkd1+w0p1eLera8e5H
         2AR7lsI01l47SOpnnhazWDm9dUxGHxrU3cR5jHkcriMan35Oq6+pyCTJCrYKtCRKW5HH
         9V5+kDxibfTYo3/ecSyKf1TZDBUEUbPGvRISA4R/U0Wzv5xgBO0G+/f4gORYkdHwAyaZ
         txCA==
X-Forwarded-Encrypted: i=1; AJvYcCXZ0wAqOeFIrjR+tQ8GzszDlXg5DUDqkqPk6sswb8kiFnlrkdv//REOfeYmNXTCq1E/XplrcVakbAAc@vger.kernel.org
X-Gm-Message-State: AOJu0YzHzXDzEsiI/0RURdP5wSpTVGpiSu4U299kt5C/951RRxv719dz
	Rb2Xnh+aC2uyY8LN9XpeceORdixfFuwyPZF4nMz2O0ZeszwjR/7Jr7xH2o5LnCA5CoE=
X-Gm-Gg: ASbGncvvXl8pYI4gOJHtxAROvOC95HiID8lxh31YO3gMCSJzN34ICCHEjg5aKehLGnW
	1Nb0Lw4fatHzroGjITV7YCCae2DrXg7KyIO0VeBSpALf/A4BUWtzw6THlXRt84/gjWqCPe3sr9O
	wK4dP+xhaUsUTLMU91hdn2VYtP9dtT72AlTWi0N+21SXFrREH4LGZJFoh2UXpEyZafgbKNob8WL
	do25ya9AwZKKr9bhmDF0IXBb785efSA1TzNpM/kegVr+JgAWahoNm/pGhAEvZ9iWEwKNTM5YOA/
	An7pcPN/Isk0YCfLeeSNcf5PmZTZHoQqT6VCviD38duazrXmaLP2V6ikpiBy51Ot9kBzM53nE0c
	uDHS4vWJZrfhKxDny+esTsR+PuDrKw2yuLXNjS5C8wZ4AOilxLEDJH9bwt2YUhj/aV5PtRUwN8v
	s=
X-Google-Smtp-Source: AGHT+IGgDCS8ayniuFNQT5/k9DeS1jl9iWus2UZI/q9DVCjLLBthhuyhs6xf+tcMVx3nO1q2hjSHog==
X-Received: by 2002:a05:6000:1884:b0:402:a740:1edd with SMTP id ffacd0b85a97d-40e4ba3a51dmr315711f8f.39.1758726921493;
        Wed, 24 Sep 2025 08:15:21 -0700 (PDT)
Received: from ta2.c.googlers.com (213.53.77.34.bc.googleusercontent.com. [34.77.53.213])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e2a996bf1sm36541855e9.1.2025.09.24.08.15.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 08:15:20 -0700 (PDT)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Wed, 24 Sep 2025 15:14:42 +0000
Subject: [PATCH v4 2/3] arm64: dts: exynos: gs101: add CPU clocks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250924-acpm-dvfs-dt-v4-2-3106d49e03f5@linaro.org>
References: <20250924-acpm-dvfs-dt-v4-0-3106d49e03f5@linaro.org>
In-Reply-To: <20250924-acpm-dvfs-dt-v4-0-3106d49e03f5@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 willmcvicker@google.com, kernel-team@android.com, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758726918; l=3181;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=fbP+TlGg3NLAStwFGbaJsLnhS+YJCTLqAERnvsIlpbU=;
 b=jyG1osPC3rtt7uF+ad2Qp5/Or0/SPA2xOcoNoupHjypQ2VNpx8eT81G/wEh2mhALZVnNSsyJy
 50+W5DUMM9RDHBOJrxr2gCo10bcNTUDZHNDByUXpXYqFLmrF+p/kXCo
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Add the GS101 CPU clocks exposed through the ACPM protocol.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
Tested-by: Peter Griffin <peter.griffin@linaro.org> # on gs101-oriole
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index f88d45a368af7ef88e8cdc84b3a81a63a753832c..7326801c9ebf270496997839185594c3c1776577 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -7,6 +7,7 @@
  */
 
 #include <dt-bindings/clock/google,gs101.h>
+#include <dt-bindings/clock/google,gs101-acpm.h>
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/soc/samsung,exynos-usi.h>
@@ -72,6 +73,7 @@ cpu0: cpu@0 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a55";
 			reg = <0x0000>;
+			clocks = <&acpm_ipc GS101_CLK_ACPM_DVFS_CPUCL0>;
 			enable-method = "psci";
 			cpu-idle-states = <&ananke_cpu_sleep>;
 			capacity-dmips-mhz = <250>;
@@ -82,6 +84,7 @@ cpu1: cpu@100 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a55";
 			reg = <0x0100>;
+			clocks = <&acpm_ipc GS101_CLK_ACPM_DVFS_CPUCL0>;
 			enable-method = "psci";
 			cpu-idle-states = <&ananke_cpu_sleep>;
 			capacity-dmips-mhz = <250>;
@@ -92,6 +95,7 @@ cpu2: cpu@200 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a55";
 			reg = <0x0200>;
+			clocks = <&acpm_ipc GS101_CLK_ACPM_DVFS_CPUCL0>;
 			enable-method = "psci";
 			cpu-idle-states = <&ananke_cpu_sleep>;
 			capacity-dmips-mhz = <250>;
@@ -102,6 +106,7 @@ cpu3: cpu@300 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a55";
 			reg = <0x0300>;
+			clocks = <&acpm_ipc GS101_CLK_ACPM_DVFS_CPUCL0>;
 			enable-method = "psci";
 			cpu-idle-states = <&ananke_cpu_sleep>;
 			capacity-dmips-mhz = <250>;
@@ -112,6 +117,7 @@ cpu4: cpu@400 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a76";
 			reg = <0x0400>;
+			clocks = <&acpm_ipc GS101_CLK_ACPM_DVFS_CPUCL1>;
 			enable-method = "psci";
 			cpu-idle-states = <&enyo_cpu_sleep>;
 			capacity-dmips-mhz = <620>;
@@ -122,6 +128,7 @@ cpu5: cpu@500 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a76";
 			reg = <0x0500>;
+			clocks = <&acpm_ipc GS101_CLK_ACPM_DVFS_CPUCL1>;
 			enable-method = "psci";
 			cpu-idle-states = <&enyo_cpu_sleep>;
 			capacity-dmips-mhz = <620>;
@@ -132,6 +139,7 @@ cpu6: cpu@600 {
 			device_type = "cpu";
 			compatible = "arm,cortex-x1";
 			reg = <0x0600>;
+			clocks = <&acpm_ipc GS101_CLK_ACPM_DVFS_CPUCL2>;
 			enable-method = "psci";
 			cpu-idle-states = <&hera_cpu_sleep>;
 			capacity-dmips-mhz = <1024>;
@@ -142,6 +150,7 @@ cpu7: cpu@700 {
 			device_type = "cpu";
 			compatible = "arm,cortex-x1";
 			reg = <0x0700>;
+			clocks = <&acpm_ipc GS101_CLK_ACPM_DVFS_CPUCL2>;
 			enable-method = "psci";
 			cpu-idle-states = <&hera_cpu_sleep>;
 			capacity-dmips-mhz = <1024>;

-- 
2.51.0.536.g15c5d4f767-goog



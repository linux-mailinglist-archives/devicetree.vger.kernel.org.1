Return-Path: <devicetree+bounces-206359-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E085FB2C2C3
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 14:10:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A75041BA3206
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 12:11:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D40B3375DA;
	Tue, 19 Aug 2025 12:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MrRgKEKm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D717335BD0
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 12:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755605435; cv=none; b=k6JMtJoSNR/+ekzXUYVYXxl/A3WihGqRGSokKniYkNMAFdTQYHKaHw7IswfIfsiPpMv7JRbDbb6ud/4uuOCs7c5l/+I2uES5rKshEV39YAHYepezZFZ6/dz4JCPAuNdMSXdDFfq0CH13BVUw2SOe6woe5465qJNkU9VW0/gYcHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755605435; c=relaxed/simple;
	bh=nqRaXwOYUnbNG0j2pkHNtlxp7R1a7PqyphjeUytPpmQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=f+1WSjzZiH2wLkZ+pMprBdGePiPWyhNEkmqFyRkFsNJXBPcYtO3yRmaUIXLNmt1zZlxz1/UU7OVdT9dgNpj19NYfpE2+O3vW14AzIZH+JoCGMxCeGpHDoUidvWwNvA3doj3bV1MFNYMNzgEcgmo2Z4QzI1u18XOdcTQ17Nyjk9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MrRgKEKm; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-3b9ba300cb9so3268299f8f.1
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 05:10:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755605431; x=1756210231; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2R8D30km/KSA0O4LJJjN/QUo92gPxApdF/JdH5YvZSM=;
        b=MrRgKEKmifbADj5O9EzoyijMXjJ3Ds00E8WZjlEqINctrzxGyyATb67UO3k1lwpdr/
         F+df57i7A0XP/RyYehUgvy1PEHw3ap7h00FVQtKztNUZGcXCwVKK5cezF3wP9E46E6E1
         9n57cHM0aOESOJMoQARsmFLtgFtcRMYeDzl+b6O4aFd9WCUogXfazcpei1esjjcialp/
         S/TRaRXNZg7EWuvSBsG9Tfz+O/x2zaXpW+uHErt6NoYvbjavwXcFhZVJGO1hWNq/yJGU
         4HfiLvvGmhZl9WYMXP04OjbfAncWtzu06xNQxzwQw0GbH60Y9z6zHnuP1EUVp3fhfKO6
         x+tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755605431; x=1756210231;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2R8D30km/KSA0O4LJJjN/QUo92gPxApdF/JdH5YvZSM=;
        b=GtMS5pkGFskJZcxzkmCCWrN6Vqk5Cv33V6H3SKh44baY3U5bAMPY3ZeGahbUgOVyhz
         QswWR9oYaTSiH2jdjGftC7kCr+BF65NUQsJTfhFbjd7WCnnelLr0SK7yjU+EFApMSH1y
         XArp1vFchcHnp4Tpvqx4WrTsuCPKbCKDGppD3+gMNaVkkdyM5ozqPIZl9Ps6xSaKIFYw
         ETkPoxpnHoV1uKfFK7rkqGOfNlZdh3ZvoPHrct1I3j/j+hOhq5LPtsX2MKOgD+nX+wYI
         Md6xW0WyiudAeDqrU7zb08k2TFugrz93SuHIXD4A/4omOC6Hztq4qIphruBf0QjaU5eR
         xqJA==
X-Forwarded-Encrypted: i=1; AJvYcCUAq0xs8XA28K/WoaZ9YWIDtbGKC4P4Mahhf9/R1PyqscMIPsCgv+ORYtguG7MVD0Al2IOPzUBshi6M@vger.kernel.org
X-Gm-Message-State: AOJu0Yw02yRrcknfpME3TKAFHvZWqq3+KdFzdsJOuUgvGMTYJeYoXQQX
	1NB9eglsS2JLQalYIYXA7x/AhbUK90Tb1oKLuZo0VB5jjCV+2W5T+vmlINl4LUK7FYA=
X-Gm-Gg: ASbGnctFXoT/O1vYJq+vkF4aKSrN/KC9a7nWsJdM48Go8qzN8mgIfDD9DFsczT5wnB5
	3o38UwkKr/rz9WNjXacRlAO0zcRVV+AFbkpKxON3rBYKARR29zbMAHqif6fKExgeJzFRUTiYI5j
	iNby+6N2ypErCSWZbHDp6IMb1yawOzfH24wgCaXdFMKXhRUUW2xh4406YlyY9sF6hE2esUMxqgc
	3yyoZ8/ptzThPaG6sUhj2LkBo+zL3nNmfeG116sP4X3eX3rSPt6IvvodxhzOQGSZVDNkt3a0OO8
	b+tHOmqUK5m+y5laXfetAEymLL1IcDisCjyu10QDp+UUZ88Uk0yE3in2gIugCCGvFwfB20TDJi+
	zOUpcTvVxTsMMA3xxAYauSmU1KwZdoxlbnoe90VPqp/XTuyW7XFnEEjvy9vXDUU/CYJEdeeFev+
	gyuQ==
X-Google-Smtp-Source: AGHT+IFppDDMa2VTL2CIGZHM9gzBH35t1wQZSmplPnzJjHi59FMlVUz9oCZUMUh1Ng+uHKmRdhHOVw==
X-Received: by 2002:a5d:5d0a:0:b0:3b7:8acf:1887 with SMTP id ffacd0b85a97d-3c1333b5d05mr1714373f8f.13.1755605431436;
        Tue, 19 Aug 2025 05:10:31 -0700 (PDT)
Received: from ta2.c.googlers.com (245.92.187.35.bc.googleusercontent.com. [35.187.92.245])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3c074d43b9asm3464410f8f.24.2025.08.19.05.10.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 05:10:30 -0700 (PDT)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Tue, 19 Aug 2025 12:10:21 +0000
Subject: [PATCH 2/3] arm64: dts: exynos: gs101: add CPU clocks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250819-acpm-dvfs-dt-v1-2-4e38b95408c4@linaro.org>
References: <20250819-acpm-dvfs-dt-v1-0-4e38b95408c4@linaro.org>
In-Reply-To: <20250819-acpm-dvfs-dt-v1-0-4e38b95408c4@linaro.org>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755605429; l=2818;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=nqRaXwOYUnbNG0j2pkHNtlxp7R1a7PqyphjeUytPpmQ=;
 b=pFUBFj/DVmeY+1QROIBAVpK6j8hChOM2KVuU6gLsrewVj4sNAL6TBghVOuWhfLXWLQ2nbVtIP
 K8YHpySm5NaC08vEfS1NamJQbC18pPnsZa5Tc0q0R/snEt9EkN0plWQ
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

The GS101 CPU clocks are exposed through the ACPM protocol. Add them.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index d010b8ffc4e09562519d6796691fe573c68b7ac7..42926f8bde8889ec99ecf9fc551629a0453e788f 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -72,6 +72,7 @@ cpu0: cpu@0 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a55";
 			reg = <0x0000>;
+			clocks = <&acpm_dvfs_clocks CLK_ACPM_DVFS_CPUCL0>;
 			enable-method = "psci";
 			cpu-idle-states = <&ananke_cpu_sleep>;
 			capacity-dmips-mhz = <250>;
@@ -82,6 +83,7 @@ cpu1: cpu@100 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a55";
 			reg = <0x0100>;
+			clocks = <&acpm_dvfs_clocks CLK_ACPM_DVFS_CPUCL0>;
 			enable-method = "psci";
 			cpu-idle-states = <&ananke_cpu_sleep>;
 			capacity-dmips-mhz = <250>;
@@ -92,6 +94,7 @@ cpu2: cpu@200 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a55";
 			reg = <0x0200>;
+			clocks = <&acpm_dvfs_clocks CLK_ACPM_DVFS_CPUCL0>;
 			enable-method = "psci";
 			cpu-idle-states = <&ananke_cpu_sleep>;
 			capacity-dmips-mhz = <250>;
@@ -102,6 +105,7 @@ cpu3: cpu@300 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a55";
 			reg = <0x0300>;
+			clocks = <&acpm_dvfs_clocks CLK_ACPM_DVFS_CPUCL0>;
 			enable-method = "psci";
 			cpu-idle-states = <&ananke_cpu_sleep>;
 			capacity-dmips-mhz = <250>;
@@ -112,6 +116,7 @@ cpu4: cpu@400 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a76";
 			reg = <0x0400>;
+			clocks = <&acpm_dvfs_clocks CLK_ACPM_DVFS_CPUCL1>;
 			enable-method = "psci";
 			cpu-idle-states = <&enyo_cpu_sleep>;
 			capacity-dmips-mhz = <620>;
@@ -122,6 +127,7 @@ cpu5: cpu@500 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a76";
 			reg = <0x0500>;
+			clocks = <&acpm_dvfs_clocks CLK_ACPM_DVFS_CPUCL1>;
 			enable-method = "psci";
 			cpu-idle-states = <&enyo_cpu_sleep>;
 			capacity-dmips-mhz = <620>;
@@ -132,6 +138,7 @@ cpu6: cpu@600 {
 			device_type = "cpu";
 			compatible = "arm,cortex-x1";
 			reg = <0x0600>;
+			clocks = <&acpm_dvfs_clocks CLK_ACPM_DVFS_CPUCL2>;
 			enable-method = "psci";
 			cpu-idle-states = <&hera_cpu_sleep>;
 			capacity-dmips-mhz = <1024>;
@@ -142,6 +149,7 @@ cpu7: cpu@700 {
 			device_type = "cpu";
 			compatible = "arm,cortex-x1";
 			reg = <0x0700>;
+			clocks = <&acpm_dvfs_clocks CLK_ACPM_DVFS_CPUCL2>;
 			enable-method = "psci";
 			cpu-idle-states = <&hera_cpu_sleep>;
 			capacity-dmips-mhz = <1024>;

-- 
2.51.0.rc1.167.g924127e9c0-goog



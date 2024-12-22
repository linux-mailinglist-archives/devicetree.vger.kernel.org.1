Return-Path: <devicetree+bounces-133417-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D18769FA77C
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 18:56:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D0EDE1886F69
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 17:56:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01B981AB530;
	Sun, 22 Dec 2024 17:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HVp9mOW8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C5D41AA7AB;
	Sun, 22 Dec 2024 17:53:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734890032; cv=none; b=ZEgX/j9O0ivE8rzDGJRHqTbrTvAaFr3DBTpNuWN2AwVzpzT4Q1H5oAgPlzlrzofEQjiIAYZRzXNP6ZEVc4TdN/LSFetIkezW7x4tukNeE6YITAxMaBDdG06J7Hzbj6CpErgSRxC9lvq1L+nWDJ0gMX7R3AM1eGr4TiJj40FYMj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734890032; c=relaxed/simple;
	bh=FDt1FqU/zIoFTXuzxOz4REOMI6cmEaiKw/gsPCp8HkM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fIqkiOssBB4aFP0uMtSqwlpixDUzN4gfC/u2aOj0Zp5OdshEq/fVR+aqsCf8qlBVRviC1ADga1G0TacvNRQqB42DWird58oDI7DZrVjFl3BfTWAF5zMsQYdROxI9zcvAGoToXLrN8DbKL6mw1zGKCX/Q6CUv/hWJsb7W8iOtuWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HVp9mOW8; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-2166651f752so34973255ad.3;
        Sun, 22 Dec 2024 09:53:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734890031; x=1735494831; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z/0ozbwgqLpSEC7BNfh+14HxpMViab/4nt5SwTR3z10=;
        b=HVp9mOW86MKz41OBs5h9ThxBWelq//0w15NTzKUbRxKgHtoEFgeuMdqINJ2kWPcCQI
         yc0BZiPbt/RJ++faiJx446i5A2JV/mpsXr8uxF3bmQF3myemCyhds3NyZJcvDXRpUKBW
         B0ATWUbvSjSOf2cPjEoHFSiSvH09Evtg7o+FZzEUa0gt/FfckRrpJ8T2/S04eJQZcBU3
         B7kzeBGLZRBlNK80ceZZSv2C6BjjQUr2NwXOpacPLnzb4DiqbjtNI8Izz8SStetFrcEs
         SxqTnCfoGHQVxT5anpTYvvEVPQ7DvpaOcPtSam3D8sx/KnIL/H1YZMvZ/CsN+OxX4An9
         xMDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734890031; x=1735494831;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z/0ozbwgqLpSEC7BNfh+14HxpMViab/4nt5SwTR3z10=;
        b=FU1Awo0NZfH+ADzVHbuNxoRrUXI2ClZ4awmwOC1Vq8KmBSRO6TTEb+qohlxvhZOoD5
         g7V5STQ7b82Gu83HjaQIkYLtEJsgLgbXbSGd6in/I8yBLzVyYxhSJM7iMawiZgLdbuIm
         tjy5fMj4102N+n3oc+PuX7XFol7nMNpY/W5uINHW+1DRoH1CiXjZJjhdg+rY2TOzsgBD
         XMR9F8/m37+eS9pEOuxN6YNl9NplIra3NtHMURDYpLyA+/ckXCAJH4fDFzN6EsLlO352
         Su+K7raDpKAee7IrIOVZZy+8Dhszx280YwZW3Q2rOuas9EgwLPAl/aSPlSqjVMiZzzUc
         WBjw==
X-Forwarded-Encrypted: i=1; AJvYcCVWlNColzcwJ1mWjeTZNvNuBdiyeQdFrRS5gP5+R4sc/UoeI/ezpHXrNAqwnizZyqQZqOdF4TvLjc1DG5ag@vger.kernel.org, AJvYcCWx+IoaOm4Rs9uE32fB5DtipTRVPU4er7Rl4LCyWAryjTqKBuVTxVyGqmYyVTPiANz6g/jxs7UGNxGi@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/pHBGTJYYRevs4COlf4Jm/VHeBBxtsX/cDXy6ctR9uT+z2pKF
	Y8Tadbl70Zub+CkYMWqDgHaS+mfkasYyurnnHuxQPjF7m9+dK5e0
X-Gm-Gg: ASbGncv6vjUCOKR/73UNfzJY/WQHgovDgBeq6GK0a/7j1GhWasYjRNrm15YibpSzOvW
	VUdZR72NK948Dqlz3lrWXMZDtZ6BTX4xCENhh7cA9jm0EAdlLmwwFu82T9kMBMNYYYMX/1PL+V+
	gVh9dcUqFoqO73K1csxCFu6Tqs1cfjk1xy2wyjG6kTkXZa0/129SWpeuc+rHmJO4UboCZ4p7ih1
	9aeEvXaEmuy841HqbuKcbQGqxjRwBBwXBvS6CpXs89YHgpcwzweKqbI3A==
X-Google-Smtp-Source: AGHT+IH9Z25ox7c01rsb5rHxjzRde+7TgfHUfkTa1aO2FEH4mP2CeHiSwbC1+asK4GfWKXt5+iT0qg==
X-Received: by 2002:a17:902:da81:b0:216:61d2:46b8 with SMTP id d9443c01a7336-219e6ea1c0cmr148322515ad.23.1734890030784;
        Sun, 22 Dec 2024 09:53:50 -0800 (PST)
Received: from nick-mbp.. ([59.188.211.160])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-219dca04c33sm59503685ad.247.2024.12.22.09.53.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Dec 2024 09:53:50 -0800 (PST)
From: Nick Chan <towinchenmi@gmail.com>
To: Hector Martin <marcan@marcan.st>,
	Sven Peter <sven@svenpeter.dev>,
	Alyssa Rosenzweig <alyssa@rosenzweig.io>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	asahi@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Nick Chan <towinchenmi@gmail.com>
Subject: [PATCH 9/9] arm64: dts: apple: t8015: Add cpufreq nodes
Date: Mon, 23 Dec 2024 01:52:09 +0800
Message-ID: <20241222175314.151437-10-towinchenmi@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241222175314.151437-1-towinchenmi@gmail.com>
References: <20241222175314.151437-1-towinchenmi@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add cpufreq nodes for Apple A11 SoC.

Signed-off-by: Nick Chan <towinchenmi@gmail.com>
---
 arch/arm64/boot/dts/apple/t8015.dtsi | 123 +++++++++++++++++++++++++++
 1 file changed, 123 insertions(+)

diff --git a/arch/arm64/boot/dts/apple/t8015.dtsi b/arch/arm64/boot/dts/apple/t8015.dtsi
index 8828d830e5be..f93ce2c8b251 100644
--- a/arch/arm64/boot/dts/apple/t8015.dtsi
+++ b/arch/arm64/boot/dts/apple/t8015.dtsi
@@ -58,6 +58,9 @@ cpu_e0: cpu@0 {
 			compatible = "apple,mistral";
 			reg = <0x0 0x0>;
 			cpu-release-addr = <0 0>; /* To be filled by loader */
+			performance-domains = <&cpufreq_e>;
+			operating-points-v2 = <&mistral_opp>;
+			capacity-dmips-mhz = <633>;
 			enable-method = "spin-table";
 			device_type = "cpu";
 		};
@@ -66,6 +69,9 @@ cpu_e1: cpu@1 {
 			compatible = "apple,mistral";
 			reg = <0x0 0x1>;
 			cpu-release-addr = <0 0>; /* To be filled by loader */
+			performance-domains = <&cpufreq_e>;
+			operating-points-v2 = <&mistral_opp>;
+			capacity-dmips-mhz = <633>;
 			enable-method = "spin-table";
 			device_type = "cpu";
 		};
@@ -74,6 +80,9 @@ cpu_e2: cpu@2 {
 			compatible = "apple,mistral";
 			reg = <0x0 0x2>;
 			cpu-release-addr = <0 0>; /* To be filled by loader */
+			performance-domains = <&cpufreq_e>;
+			operating-points-v2 = <&mistral_opp>;
+			capacity-dmips-mhz = <633>;
 			enable-method = "spin-table";
 			device_type = "cpu";
 		};
@@ -82,6 +91,9 @@ cpu_e3: cpu@3 {
 			compatible = "apple,mistral";
 			reg = <0x0 0x3>;
 			cpu-release-addr = <0 0>; /* To be filled by loader */
+			performance-domains = <&cpufreq_e>;
+			operating-points-v2 = <&mistral_opp>;
+			capacity-dmips-mhz = <633>;
 			enable-method = "spin-table";
 			device_type = "cpu";
 		};
@@ -90,6 +102,9 @@ cpu_p0: cpu@10004 {
 			compatible = "apple,monsoon";
 			reg = <0x0 0x10004>;
 			cpu-release-addr = <0 0>; /* To be filled by loader */
+			performance-domains = <&cpufreq_p>;
+			operating-points-v2 = <&monsoon_opp>;
+			capacity-dmips-mhz = <1024>;
 			enable-method = "spin-table";
 			device_type = "cpu";
 		};
@@ -98,11 +113,107 @@ cpu_p1: cpu@10005 {
 			compatible = "apple,monsoon";
 			reg = <0x0 0x10005>;
 			cpu-release-addr = <0 0>; /* To be filled by loader */
+			performance-domains = <&cpufreq_p>;
+			operating-points-v2 = <&monsoon_opp>;
+			capacity-dmips-mhz = <1024>;
 			enable-method = "spin-table";
 			device_type = "cpu";
 		};
 	};
 
+	mistral_opp: opp-table-0 {
+		compatible = "operating-points-v2";
+
+		opp01 {
+			opp-hz = /bits/ 64 <300000000>;
+			opp-level = <1>;
+			clock-latency-ns = <1800>;
+		};
+		opp02 {
+			opp-hz = /bits/ 64 <453000000>;
+			opp-level = <2>;
+			clock-latency-ns = <140000>;
+		};
+		opp03 {
+			opp-hz = /bits/ 64 <672000000>;
+			opp-level = <3>;
+			clock-latency-ns = <105000>;
+		};
+		opp04 {
+			opp-hz = /bits/ 64 <972000000>;
+			opp-level = <4>;
+			clock-latency-ns = <115000>;
+		};
+		opp05 {
+			opp-hz = /bits/ 64 <1272000000>;
+			opp-level = <5>;
+			clock-latency-ns = <125000>;
+		};
+		opp06 {
+			opp-hz = /bits/ 64 <1572000000>;
+			opp-level = <6>;
+			clock-latency-ns = <135000>;
+		};
+#if 0
+		/* Not available until CPU deep sleep is implemented */
+		opp07 {
+			opp-hz = /bits/ 64 <1680000000>;
+			opp-level = <7>;
+			clock-latency-ns = <135000>;
+			turbo-mode;
+		};
+#endif
+	};
+
+	monsoon_opp: opp-table-1 {
+		compatible = "operating-points-v2";
+
+		opp01 {
+			opp-hz = /bits/ 64 <300000000>;
+			opp-level = <1>;
+			clock-latency-ns = <1400>;
+		};
+		opp02 {
+			opp-hz = /bits/ 64 <453000000>;
+			opp-level = <2>;
+			clock-latency-ns = <140000>;
+		};
+		opp03 {
+			opp-hz = /bits/ 64 <853000000>;
+			opp-level = <3>;
+			clock-latency-ns = <110000>;
+		};
+		opp04 {
+			opp-hz = /bits/ 64 <1332000000>;
+			opp-level = <4>;
+			clock-latency-ns = <110000>;
+		};
+		opp05 {
+			opp-hz = /bits/ 64 <1812000000>;
+			opp-level = <5>;
+			clock-latency-ns = <125000>;
+		};
+		opp06 {
+			opp-hz = /bits/ 64 <2064000000>;
+			opp-level = <6>;
+			clock-latency-ns = <130000>;
+		};
+		opp07 {
+			opp-hz = /bits/ 64 <2304000000>;
+			opp-level = <7>;
+			clock-latency-ns = <140000>;
+		};
+#if 0
+		/* Not available until CPU deep sleep is implemented */
+		opp08 {
+			opp-hz = /bits/ 64 <2376000000>;
+			opp-level = <8>;
+			clock-latency-ns = <140000>;
+			turbo-mode;
+		};
+#endif
+	};
+
 	soc {
 		compatible = "simple-bus";
 		#address-cells = <2>;
@@ -110,6 +221,18 @@ soc {
 		nonposted-mmio;
 		ranges;
 
+		cpufreq_e: performance-controller@208e20000 {
+			compatible = "apple,t8015-cluster-cpufreq", "apple,t8103-cluster-cpufreq", "apple,cluster-cpufreq";
+			reg = <0x2 0x08e20000 0 0x1000>;
+			#performance-domain-cells = <0>;
+		};
+
+		cpufreq_p: performance-controller@208ea0000 {
+			compatible = "apple,t8015-cluster-cpufreq", "apple,t8103-cluster-cpufreq", "apple,cluster-cpufreq";
+			reg = <0x2 0x08ea0000 0 0x1000>;
+			#performance-domain-cells = <0>;
+		};
+
 		serial0: serial@22e600000 {
 			compatible = "apple,s5l-uart";
 			reg = <0x2 0x2e600000 0x0 0x4000>;
-- 
2.47.1



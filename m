Return-Path: <devicetree+bounces-133415-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E1BD9FA778
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 18:55:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 91583165F9C
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 17:55:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E71321A8F61;
	Sun, 22 Dec 2024 17:53:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="buS2+ghR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C9FF1A76C7;
	Sun, 22 Dec 2024 17:53:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734890027; cv=none; b=Cl8DJjN+fOf43ZVAMK9e7wfMsiJDtJGEhrXFUNepuAdUE4dB0Wc4pbCAxcR6sKUhnztkzvu8/CJi79rR/xGRvc2LM5YcrdrnB1Y+aC5+wdV6V5SkyKb3YH6oPkZfpmU1DYxi6W+PKpbpivGdNbxRu4QaZBi6VBlfWfGdDRpP44A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734890027; c=relaxed/simple;
	bh=+yIUnaFzABCSNsWu+QLrwfrQQ765t78wpX/Bo983hVg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=D/MPOO/BODFjlf0hG4WRPsMdJgc03JdPUZvkQDV77/UFmLhZ4ALIn8SNmOApDmkO2c++4bHocWzAcU5Qh+VW3H9S6LZYfzzaSxhsoeDuuj+pEOSwiyvav/YhCl0baVO7Sz4PQfwe7XQQY0Xz7XbwUhPpiFhC1VjWrn5BJtzYsVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=buS2+ghR; arc=none smtp.client-ip=209.85.216.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-2ee67e9287fso3149302a91.0;
        Sun, 22 Dec 2024 09:53:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734890026; x=1735494826; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z/KAd6ZG61rvLfDgYI7Mlxb/svbdRtzyfwFEiO6AV1E=;
        b=buS2+ghRvP7wUfU5w+iYZ1QiuOIcwYuuDKkkWTFBLR4ol7YaPYGrq6f6hr7iffZFee
         GTt/RwcAGh0kH5iplgJhWZAESSBCKiWnh+PNDlUMuskNC4CRvmN00SVaVP127aqUF2Pa
         Gu8ueGCksPij14DtnHgZSUswDd3BZ6ajsfFHiWjLhP6DiFi+C1EgUEd+VkeTR4oOIwvL
         K+GSBVZ6A08eiu/xfc8IRim0ztgCiq/H2XewMXx2I1DzkdCnjvZwHPQHUkU6ywlD4El4
         97fBZ55bvODEMu+o601zRFdkAZTJCraoMiy0PqNDdDbs6uHgljjew1ORYYK/qQjmuVfe
         y4jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734890026; x=1735494826;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z/KAd6ZG61rvLfDgYI7Mlxb/svbdRtzyfwFEiO6AV1E=;
        b=tNQgTd973X2fkHmOYWjJrwdMHXzAaD2RQz+W6RKu2aWc3JTv1ybQypYMNLeUGT5dO2
         e0WJPMkai9FjUYs9Xqd28IrKxG5JA5GhFeIjj4gW7DT/MYNvv1Y7YFjhi+8KC9G8py4F
         a3PT76Ye5nYMepWD51c1m8oJRdV0vt+XsNYmwmRAnTJRmnumv38ANJYqMcKfM/OwGki3
         j703OaArWamhy7CjUC1+VF1nPBbZlpOG99BP2/wb547rrTfPXa03R/D9dtutZ2qRM4Ky
         9Wxnht4UkyBX7WrX0XP7cr7epgj/5hyMTED7pvYTG6mr18a+rBnDeXxsxgfGos5rq7gx
         PlnA==
X-Forwarded-Encrypted: i=1; AJvYcCWAwFtZa4qcp8p7/wPEI9EOmr1bejLpX0Ms6PlWY82Isz2AsXvMEIBkuunUiDXC76nVcC/7zLEvGwXmBUWe@vger.kernel.org, AJvYcCWVuWzrSnxBcnfu5XqtwnWjX2nHoT909MPVMN33mjpgdWwue+XM2xnu0QCWZ9rAERB+5hGsDtLUCwWZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1Qai/sXrOijtqJFnLYbfN/Wg1O9JdQI2Nln/QIZvDMBnlKhFR
	AaXLp0okKWLOTDu1t2pAzfLmKSkZv0k4HFhpatmspa9V6k9ZTXC6
X-Gm-Gg: ASbGnctvgUAA8hLSA54yURi4+8lzxYmHOA6sxttIv5Z+jEr5qtsWiybRq9ap6eakQm2
	NcM1s45wrF1FkQlt/C6Y/LyaNzCxF/5FNyYJNHR56unrs1ed/5Gfkjj4QJZynKwECOhKIMzrb1K
	V2gBPUL82qNmp7nMqiGFXip4Ds5Ebvh6TdB/OGyCKaGsJOH4StLzgdn0HpxuZypua2dA76jZCO4
	XLI3OvY9yz4B1p/cycXTjzLnj8XPBdA1HDvIPIeLqVU7QzsnYyc4hRNTg==
X-Google-Smtp-Source: AGHT+IH9tlB/rmfezrDSl76YkabU54LtEQtOU5kl6hHg06X9hhNLuJNfsi6jeaPgR5oNfIdZXyn2Bg==
X-Received: by 2002:a17:90a:f94d:b0:2ea:4a6b:79d1 with SMTP id 98e67ed59e1d1-2f452e149bbmr15214572a91.11.1734890025758;
        Sun, 22 Dec 2024 09:53:45 -0800 (PST)
Received: from nick-mbp.. ([59.188.211.160])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-219dca04c33sm59503685ad.247.2024.12.22.09.53.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Dec 2024 09:53:45 -0800 (PST)
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
Subject: [PATCH 7/9] arm64: dts: apple: t8011: Add cpufreq nodes
Date: Mon, 23 Dec 2024 01:52:07 +0800
Message-ID: <20241222175314.151437-8-towinchenmi@gmail.com>
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

Add cpufreq nodes for Apple A10 SoC. There is a transparent hardware
big.LITTLE switcher in this SoC. Spoof E-core p-state frequencies such
that CPU capacity does not appear to change when switching between core
types.

Signed-off-by: Nick Chan <towinchenmi@gmail.com>
---
 arch/arm64/boot/dts/apple/t8011.dtsi | 79 ++++++++++++++++++++++++++++
 1 file changed, 79 insertions(+)

diff --git a/arch/arm64/boot/dts/apple/t8011.dtsi b/arch/arm64/boot/dts/apple/t8011.dtsi
index 6c4ed9dc4a50..3a3d5b615a6a 100644
--- a/arch/arm64/boot/dts/apple/t8011.dtsi
+++ b/arch/arm64/boot/dts/apple/t8011.dtsi
@@ -32,6 +32,8 @@ cpu0: cpu@0 {
 			compatible = "apple,hurricane-zephyr";
 			reg = <0x0 0x0>;
 			cpu-release-addr = <0 0>; /* To be filled by loader */
+			operating-points-v2 = <&fusion_opp>;
+			performance-domains = <&cpufreq>;
 			enable-method = "spin-table";
 			device_type = "cpu";
 		};
@@ -40,6 +42,8 @@ cpu1: cpu@1 {
 			compatible = "apple,hurricane-zephyr";
 			reg = <0x0 0x1>;
 			cpu-release-addr = <0 0>; /* To be filled by loader */
+			operating-points-v2 = <&fusion_opp>;
+			performance-domains = <&cpufreq>;
 			enable-method = "spin-table";
 			device_type = "cpu";
 		};
@@ -48,11 +52,80 @@ cpu2: cpu@2 {
 			compatible = "apple,hurricane-zephyr";
 			reg = <0x0 0x2>;
 			cpu-release-addr = <0 0>; /* To be filled by loader */
+			operating-points-v2 = <&fusion_opp>;
+			performance-domains = <&cpufreq>;
 			enable-method = "spin-table";
 			device_type = "cpu";
 		};
 	};
 
+	fusion_opp: opp-table {
+		compatible = "operating-points-v2";
+
+		/*
+		 * Apple Fusion Architecture: Hardwired big.LITTLE switcher
+		 * that use p-state transitions to switch between cores.
+		 *
+		 * The E-core frequencies are adjusted so performance scales
+		 * linearly with reported clock speed.
+		 */
+
+		opp01 {
+			opp-hz = /bits/ 64 <172000000>; /* 300 MHz, E-core */
+			opp-level = <1>;
+			clock-latency-ns = <12000>;
+		};
+		opp02 {
+			opp-hz = /bits/ 64 <230000000>; /* 396 MHz, E-core */
+			opp-level = <2>;
+			clock-latency-ns = <135000>;
+		};
+		opp03 {
+			opp-hz = /bits/ 64 <448000000>; /* 768 MHz, E-core */
+			opp-level = <3>;
+			clock-latency-ns = <105000>;
+		};
+		opp04 {
+			opp-hz = /bits/ 64 <662000000>; /* 1152 MHz, E-core */
+			opp-level = <4>;
+			clock-latency-ns = <115000>;
+		};
+		opp05 {
+			opp-hz = /bits/ 64 <804000000>;
+			opp-level = <5>;
+			clock-latency-ns = <122000>;
+		};
+		opp06 {
+			opp-hz = /bits/ 64 <1140000000>;
+			opp-level = <6>;
+			clock-latency-ns = <120000>;
+		};
+		opp07 {
+			opp-hz = /bits/ 64 <1548000000>;
+			opp-level = <7>;
+			clock-latency-ns = <125000>;
+		};
+		opp08 {
+			opp-hz = /bits/ 64 <1956000000>;
+			opp-level = <8>;
+			clock-latency-ns = <135000>;
+		};
+		opp09 {
+			opp-hz = /bits/ 64 <2316000000>;
+			opp-level = <9>;
+			clock-latency-ns = <140000>;
+		};
+#if 0
+		/* Not available until CPU deep sleep is implemented */
+		opp10 {
+			opp-hz = /bits/ 64 <2400000000>;
+			opp-level = <10>;
+			clock-latency-ns = <140000>;
+			turbo-mode;
+		};
+#endif
+	};
+
 	soc {
 		compatible = "simple-bus";
 		#address-cells = <2>;
@@ -60,6 +133,12 @@ soc {
 		nonposted-mmio;
 		ranges;
 
+		cpufreq: performance-controller@202f20000 {
+			compatible = "apple,t8010-cluster-cpufreq", "apple,t8103-cluster-cpufreq", "apple,cluster-cpufreq";
+			reg = <0x2 0x02f20000 0 0x1000>;
+			#performance-domain-cells = <0>;
+		};
+
 		serial0: serial@20a0c0000 {
 			compatible = "apple,s5l-uart";
 			reg = <0x2 0x0a0c0000 0x0 0x4000>;
-- 
2.47.1



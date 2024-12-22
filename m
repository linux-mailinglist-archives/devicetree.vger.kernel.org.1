Return-Path: <devicetree+bounces-133410-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C33C19FA76E
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 18:54:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3227B16604D
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 17:54:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37431194C86;
	Sun, 22 Dec 2024 17:53:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WuY36qW0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49EF5192D8F;
	Sun, 22 Dec 2024 17:53:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734890016; cv=none; b=a8aQaUZZGZDCB+AWGYxH1xFB11N3Vz29EDEPUYdXG1SMFiLLco4RYbYBZJnOmAqJkWo+chZHr2O5op5pauQySua3A3sIJYRU8p4j67OZHbUvsgwrrD/Cgqkockf0zXCsi+fDDuAnKDFrye3Dzt47A6VVx7prvArfkHrwh4tL888=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734890016; c=relaxed/simple;
	bh=0Cq+UU767vBhrCOrurBWHzG95rj5medVh11tERdyEPI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=i2zxM0VR17pOvgYMakhK0Iuv5XpAvEDsg7tNlz8xwWl9XSaeL5vyVTlfnkNOoDCXt1RSGWXHfPgQG0I2QIJ1GLfoqa7Hk82wYCbkdi/6FbKPPXt+3C6bQeOv0BYZ1uAPAIMP9EcMtjTGoBVzVKpFkg6AzuAJklDEWt/0cT2iv4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WuY36qW0; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-2163b0c09afso31090325ad.0;
        Sun, 22 Dec 2024 09:53:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734890012; x=1735494812; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rtAevhAcl5mLOcbysjZVxoXh3giA/+VpnoU+zggYcjc=;
        b=WuY36qW0Shph6WUHuPl5x0QrY4EuII/Ovq7EGHcfrqoe3z2O5c1B4pGSuIm4//HJ/h
         NoUhqtwZFu9Gj4FerTGQaaePnDXKzs5a4eGucvSEGJpo7j2Qqz+i3zNG0MrzCqvKZidD
         e82quvYdV/D1JS5oSlLSx+hk3G4j/lptvEkpWGU0eYlWdn1P1MRMaS5sW7fgo02c1+/K
         jGBxzYTrTGTiDWN3M2HfdW2zMurMXspQAoh0zmCOSnPK56ZtTSihy9gF7UoH4ssWRMD1
         VxbmSfjMd0ZwM13oaPc7xUOnMHPgluSUp6drdXKfd1fqx2eZ+OFg8dBD/SlMj2Kk7xvL
         nKHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734890012; x=1735494812;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rtAevhAcl5mLOcbysjZVxoXh3giA/+VpnoU+zggYcjc=;
        b=pAH0+XoN4vt4bPr1Lc3K2+8eBfRBnl27vDgwu46gRB31kKpPsjx6Jbpl6QT4KeBpUf
         rFUVFmRBRq+dg1kGHTrwAdH3sVC0CnHUZlctp7rTg4uMQI0F4r/e7+J+ng4P8oIvvlTv
         hqxJqEKCjZmO8uRyy9gjjS1HXp9QZJtggm/43fNf2eOxqkVzjQKvchOVtGF0YJPqUPat
         s02Pr/Zr2gIX9TOOocJ+MUGF5kqL6q7AbsIom4G1Ak9XfeCECB3cIeAPSMCikCa0wv5f
         3NYm6j2HdrLjTN7Wz0umKcYf+tJzrmDrBqiY0I9gd5OIBSJLBUGKf/uWt/7u84WvE/K+
         OlSw==
X-Forwarded-Encrypted: i=1; AJvYcCV/iEafsyktrRfkONCKK0KPeFWUCdu8EBR7EfoYZKgOJK3/xgCic5S0pNj63hlng8MKL+jibhZuraus@vger.kernel.org, AJvYcCWLtmD3ydVkDIa/pp6BuG/D/SuixYWhS+5OjzUTfqr29EFmCibtvCJ1iPDnr0yDvwhg742/hEC/93eu4vv5@vger.kernel.org
X-Gm-Message-State: AOJu0YyU8EbA68PIAv4FUSbqRqY+NLb4PfXRhIKxPgPJqXYQhZxCwGpn
	tCJrCZSn0HMoPxjF+z7GISSxLLYXT2NNIBojVo4b6wUHXYOkeUtU
X-Gm-Gg: ASbGncvWIMYNsTFBozABJvKuqfYva/vjg1cigpgZwEYR7WcrPsihvdbywUDvDoW2uF3
	U2gWoRpRv0BQ7hTqzwvEfk8qOk7PKgeeDxQA0YRW0G14VranqWEhilbG7TwA8rxQM6qPfhPjfBU
	KD62VLyh7OkD4lkP0Q37Vz64OyH9U3S4VrtqlYp5rkKc54ZfvNrNcblGtPXJiP0LXP1zHRzoHbp
	tVxQM/KdOxLejdGtGAAG5Vc5J7z1U6kVUIfuDMZRgFdizayBeovte84JA==
X-Google-Smtp-Source: AGHT+IF2KoPvt/ETH1hPxEDJoTm61CI8csX/SPatjjjJtYa8dbIbPi5ngLMR/RAK693YnfRC+n3frg==
X-Received: by 2002:a17:90b:548e:b0:2ee:741c:e9f4 with SMTP id 98e67ed59e1d1-2f452e220c3mr14926747a91.11.1734890012557;
        Sun, 22 Dec 2024 09:53:32 -0800 (PST)
Received: from nick-mbp.. ([59.188.211.160])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-219dca04c33sm59503685ad.247.2024.12.22.09.53.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Dec 2024 09:53:32 -0800 (PST)
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
Subject: [PATCH 2/9] arm64: dts: apple: t7000: Add cpufreq nodes
Date: Mon, 23 Dec 2024 01:52:02 +0800
Message-ID: <20241222175314.151437-3-towinchenmi@gmail.com>
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

Add cpufreq nodes for Apple A8 SoC.

Signed-off-by: Nick Chan <towinchenmi@gmail.com>
---
 arch/arm64/boot/dts/apple/t7000-6.dtsi     |  4 ++
 arch/arm64/boot/dts/apple/t7000-j42d.dts   |  4 ++
 arch/arm64/boot/dts/apple/t7000-mini4.dtsi |  4 ++
 arch/arm64/boot/dts/apple/t7000.dtsi       | 46 ++++++++++++++++++++++
 4 files changed, 58 insertions(+)

diff --git a/arch/arm64/boot/dts/apple/t7000-6.dtsi b/arch/arm64/boot/dts/apple/t7000-6.dtsi
index f60ea4a4a387..0d08e2589449 100644
--- a/arch/arm64/boot/dts/apple/t7000-6.dtsi
+++ b/arch/arm64/boot/dts/apple/t7000-6.dtsi
@@ -48,3 +48,7 @@ switch-mute {
 		};
 	};
 };
+
+&typhoon_opp06 {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/apple/t7000-j42d.dts b/arch/arm64/boot/dts/apple/t7000-j42d.dts
index 2231db6a739d..24fe5a99f3ab 100644
--- a/arch/arm64/boot/dts/apple/t7000-j42d.dts
+++ b/arch/arm64/boot/dts/apple/t7000-j42d.dts
@@ -29,3 +29,7 @@ framebuffer0: framebuffer@0 {
 &serial6 {
 	status = "okay";
 };
+
+&typhoon_opp06 {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/apple/t7000-mini4.dtsi b/arch/arm64/boot/dts/apple/t7000-mini4.dtsi
index c64ddc402fda..773c69449902 100644
--- a/arch/arm64/boot/dts/apple/t7000-mini4.dtsi
+++ b/arch/arm64/boot/dts/apple/t7000-mini4.dtsi
@@ -49,3 +49,7 @@ switch-mute {
 		};
 	};
 };
+
+&typhoon_opp06 {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/apple/t7000.dtsi b/arch/arm64/boot/dts/apple/t7000.dtsi
index a7cc29e84c84..4105cf70391b 100644
--- a/arch/arm64/boot/dts/apple/t7000.dtsi
+++ b/arch/arm64/boot/dts/apple/t7000.dtsi
@@ -33,6 +33,8 @@ cpu0: cpu@0 {
 			compatible = "apple,typhoon";
 			reg = <0x0 0x0>;
 			cpu-release-addr = <0 0>; /* To be filled in by loader */
+			performance-domains = <&cpufreq>;
+			operating-points-v2 = <&typhoon_opp>;
 			enable-method = "spin-table";
 			device_type = "cpu";
 		};
@@ -41,11 +43,49 @@ cpu1: cpu@1 {
 			compatible = "apple,typhoon";
 			reg = <0x0 0x1>;
 			cpu-release-addr = <0 0>; /* To be filled in by loader */
+			performance-domains = <&cpufreq>;
+			operating-points-v2 = <&typhoon_opp>;
 			enable-method = "spin-table";
 			device_type = "cpu";
 		};
 	};
 
+	typhoon_opp: opp-table {
+		compatible = "operating-points-v2";
+
+		opp01 {
+			opp-hz = /bits/ 64 <300000000>;
+			opp-level = <1>;
+			clock-latency-ns = <300>;
+		};
+		opp02 {
+			opp-hz = /bits/ 64 <396000000>;
+			opp-level = <2>;
+			clock-latency-ns = <50000>;
+		};
+		opp03 {
+			opp-hz = /bits/ 64 <600000000>;
+			opp-level = <3>;
+			clock-latency-ns = <29000>;
+		};
+		opp04 {
+			opp-hz = /bits/ 64 <840000000>;
+			opp-level = <4>;
+			clock-latency-ns = <29000>;
+		};
+		opp05 {
+			opp-hz = /bits/ 64 <1128000000>;
+			opp-level = <5>;
+			clock-latency-ns = <36000>;
+		};
+		typhoon_opp06: opp06 {
+			opp-hz = /bits/ 64 <1392000000>;
+			opp-level = <6>;
+			clock-latency-ns = <42000>;
+			status = "disabled"; /* Not available on N102 */
+		};
+	};
+
 	soc {
 		compatible = "simple-bus";
 		#address-cells = <2>;
@@ -53,6 +93,12 @@ soc {
 		nonposted-mmio;
 		ranges;
 
+		cpufreq: performance-controller@202220000 {
+			compatible = "apple,t7000-cluster-cpufreq", "apple,s5l8960x-cluster-cpufreq";
+			reg = <0x2 0x02220000 0 0x1000>;
+			#performance-domain-cells = <0>;
+		};
+
 		serial0: serial@20a0c0000 {
 			compatible = "apple,s5l-uart";
 			reg = <0x2 0x0a0c0000 0x0 0x4000>;
-- 
2.47.1



Return-Path: <devicetree+bounces-133409-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9047F9FA76C
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 18:53:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F330A165F9E
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 17:53:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DC66192D67;
	Sun, 22 Dec 2024 17:53:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YJQYxXHs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCA861917FF;
	Sun, 22 Dec 2024 17:53:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734890012; cv=none; b=rS6WQvRRk8e67Zz2YuLreGY7IpsIuSPM08pWc+nOKrCosvXZ8ZxfxSd6Qm+FZJJmUzIJ030hQRtUDXFl98zaPP9r4F2ZjW1b1mXo6SxID1mGR9DF/pz94DE+76mTzzEmtE7LUveKqtGPamTx/jafHPyXSQKC/4FAHnObvpS5O6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734890012; c=relaxed/simple;
	bh=2/EWb2y9vaOjsRj9KCGDfkcMC2KEIFfMdArb73Is9hg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FwCFhZ9dHKhea0pLYYBaszbSefcgdjB4g/v/lvh8bPzjz9bLhjE67oE4PK3xv0ZeRdtffnWv7xd4B/9zrgsmt1fs1vhzofzMGdW+53qSjAYJxfTMrVTu/mrScPKOrWf0sbB0HpNP6a6Qd1wmet2DhRrHe7JJI0GGA7oxXDvIEI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YJQYxXHs; arc=none smtp.client-ip=209.85.216.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-2f43da61ba9so2766937a91.2;
        Sun, 22 Dec 2024 09:53:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734890010; x=1735494810; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k7D2M/MnbL5flgWw2rKwlq0CEQX5AIdMs90nrhL6FHw=;
        b=YJQYxXHsET65miR37Wh9+XwiVsLkvzNSoiVZRZONFjVI5PsXf/XrnNB+7bnTQArc10
         8XVkJ/t/OwXvGdcnyC/qCqT+jaGR6A3TBFHNZUojZbaEAE7N0qwBSu56wJ5b4oEiCA0F
         MbWcUjIBvBY8KpVzFjIUUJQ4xIqruTh1s/8Aw7D1IR5UQr3gr9vNQFxLxXkeZ8EC5jFO
         S7QoyTGvDn39RllZYgna/aLyryC2/HZhnvbZGlOl/LNhgbMqUCx583ML0FnVcaIpA/So
         Hoj5RfQAkK9CsQa0Y3wCaKvNkvB3chJShTND0+M1S7Y/taNhxXGClRlgzBnElfd0+Huv
         jdog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734890010; x=1735494810;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k7D2M/MnbL5flgWw2rKwlq0CEQX5AIdMs90nrhL6FHw=;
        b=ow8LfbS6FwYBGvSmiNvpbgWLZLY+ZRhB6vDwdAjyMUXMk98zOOACAuxDo4Z49FVhfK
         zWR1lHaS32LBfCs+oVfG2kCXY66Cjp/0kSLpWnfRM9fd6qvdaNfo+mptbBxSvYu1cqgr
         zTchiSj7Z6a/JHav9GpUalPYomIWn8qq40hFVWpAsi6yHRpWHcPk32dJDdkkLLz8Qomw
         ZXmk9C0eTzUgbLa2DFSDpXeHb3jFfc7u6ebPGqjJrbRJYBlc7RCVXljaWpUXmKagFeSj
         xQY92Rz4S3tfO59LiGMYS4uhJ56BPiPQyiaqIYYRc+FPVoi0CLa9nDHQ6sFyHj8YlbKV
         3foA==
X-Forwarded-Encrypted: i=1; AJvYcCUrp6YaJtua/KQY6gjPxFQYMRLBCEm1xv801ol2jPVzzqKMdyhyKSgc3muvUk+WyndD12TaHY1B/sgBLxCw@vger.kernel.org, AJvYcCXhSJr7X9O+FSzRAgE7gnkTzMFVbFwSPpgSKshm4ke+rEXzdWgMg0UjJh6rPBPEnGXhSteONR5m4jSp@vger.kernel.org
X-Gm-Message-State: AOJu0Ywa5u3k7ynF5cDjGGqumswT5tUPO6V5hqCqWZ913XD77VJCe5pR
	zKZIIP/wU5EK44Kh2OO42foFFOj+a4Dxdv7yjnuWbgPzE/2YCrJp
X-Gm-Gg: ASbGncsVPm3TWXJq6Q8FEs/fdBuzVC+t+zQ/Nr4O/NfH6VECQGhDrGT0HnOqOvVBSUh
	OSf8l9AYEXINRq4wb8ukIfCpRfXqoqyr5PrdBjA4p0uucLuy2hXZ6SV/NnqmwLMde0+GMtG5PW5
	JAsWj+bSJuPo2RcrK5EXeXWx1LsdhcMse0cj9oy537Sr0mGGyEt1ZcraYKMOpRUKCflLvds7yUv
	MmjJKsIBYAafyhTowvX0MCZcnfT6m76UXxioezmnPqWFtBS624748uVTQ==
X-Google-Smtp-Source: AGHT+IGNjqPGyp34z6F4Pa36n3bRrRA3pu+NGo6p5zJv9wwviF9JJ8DZZK9qBdjxFH57nOXjguVXYQ==
X-Received: by 2002:a17:90b:528a:b0:2ee:8619:210b with SMTP id 98e67ed59e1d1-2f452ec3589mr15457101a91.29.1734890010048;
        Sun, 22 Dec 2024 09:53:30 -0800 (PST)
Received: from nick-mbp.. ([59.188.211.160])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-219dca04c33sm59503685ad.247.2024.12.22.09.53.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Dec 2024 09:53:29 -0800 (PST)
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
Subject: [PATCH 1/9] arm64: dts: apple: s5l8960x: Add cpufreq nodes
Date: Mon, 23 Dec 2024 01:52:01 +0800
Message-ID: <20241222175314.151437-2-towinchenmi@gmail.com>
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

Add cpufreq nodes for Apple A7 SoC.

Signed-off-by: Nick Chan <towinchenmi@gmail.com>
---
 arch/arm64/boot/dts/apple/s5l8960x-5s.dtsi    |  1 +
 arch/arm64/boot/dts/apple/s5l8960x-air1.dtsi  |  1 +
 arch/arm64/boot/dts/apple/s5l8960x-mini2.dtsi |  1 +
 arch/arm64/boot/dts/apple/s5l8960x-opp.dtsi   | 45 +++++++++++++++++++
 arch/arm64/boot/dts/apple/s5l8960x.dtsi       | 10 +++++
 arch/arm64/boot/dts/apple/s5l8965x-opp.dtsi   | 45 +++++++++++++++++++
 6 files changed, 103 insertions(+)
 create mode 100644 arch/arm64/boot/dts/apple/s5l8960x-opp.dtsi
 create mode 100644 arch/arm64/boot/dts/apple/s5l8965x-opp.dtsi

diff --git a/arch/arm64/boot/dts/apple/s5l8960x-5s.dtsi b/arch/arm64/boot/dts/apple/s5l8960x-5s.dtsi
index 0b16adf07f79..83c0a4deb5ba 100644
--- a/arch/arm64/boot/dts/apple/s5l8960x-5s.dtsi
+++ b/arch/arm64/boot/dts/apple/s5l8960x-5s.dtsi
@@ -8,6 +8,7 @@
 
 #include "s5l8960x.dtsi"
 #include "s5l8960x-common.dtsi"
+#include "s5l8960x-opp.dtsi"
 #include <dt-bindings/input/input.h>
 
 / {
diff --git a/arch/arm64/boot/dts/apple/s5l8960x-air1.dtsi b/arch/arm64/boot/dts/apple/s5l8960x-air1.dtsi
index 741c5a9f21dd..d88894e0fce7 100644
--- a/arch/arm64/boot/dts/apple/s5l8960x-air1.dtsi
+++ b/arch/arm64/boot/dts/apple/s5l8960x-air1.dtsi
@@ -8,6 +8,7 @@
 
 #include "s5l8960x.dtsi"
 #include "s5l8960x-common.dtsi"
+#include "s5l8965x-opp.dtsi"
 #include <dt-bindings/input/input.h>
 
 / {
diff --git a/arch/arm64/boot/dts/apple/s5l8960x-mini2.dtsi b/arch/arm64/boot/dts/apple/s5l8960x-mini2.dtsi
index b27ef5680626..261b5008a6b4 100644
--- a/arch/arm64/boot/dts/apple/s5l8960x-mini2.dtsi
+++ b/arch/arm64/boot/dts/apple/s5l8960x-mini2.dtsi
@@ -8,6 +8,7 @@
 
 #include "s5l8960x.dtsi"
 #include "s5l8960x-common.dtsi"
+#include "s5l8960x-opp.dtsi"
 #include <dt-bindings/input/input.h>
 
 / {
diff --git a/arch/arm64/boot/dts/apple/s5l8960x-opp.dtsi b/arch/arm64/boot/dts/apple/s5l8960x-opp.dtsi
new file mode 100644
index 000000000000..e4d568c4a119
--- /dev/null
+++ b/arch/arm64/boot/dts/apple/s5l8960x-opp.dtsi
@@ -0,0 +1,45 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
+/*
+ * Operating points for Apple S5L8960X "A7" SoC, Up to 1296 MHz
+ *
+ * target-type: N51, N53, J85, J86. J87, J85m, J86m, J87m
+ *
+ * Copyright (c) 2024, Nick Chan <towinchenmi@gmail.com>
+ */
+
+/ {
+	cyclone_opp: opp-table {
+		compatible = "operating-points-v2";
+
+		opp01 {
+			opp-hz = /bits/ 64 <300000000>;
+			opp-level = <1>;
+			clock-latency-ns = <15500>;
+		};
+		opp02 {
+			opp-hz = /bits/ 64 <396000000>;
+			opp-level = <2>;
+			clock-latency-ns = <43000>;
+		};
+		opp03 {
+			opp-hz = /bits/ 64 <600000000>;
+			opp-level = <3>;
+			clock-latency-ns = <26000>;
+		};
+		opp04 {
+			opp-hz = /bits/ 64 <840000000>;
+			opp-level = <4>;
+			clock-latency-ns = <30000>;
+		};
+		opp05 {
+			opp-hz = /bits/ 64 <1128000000>;
+			opp-level = <5>;
+			clock-latency-ns = <39500>;
+		};
+		opp06 {
+			opp-hz = /bits/ 64 <1296000000>;
+			opp-level = <6>;
+			clock-latency-ns = <45500>;
+		};
+	};
+};
diff --git a/arch/arm64/boot/dts/apple/s5l8960x.dtsi b/arch/arm64/boot/dts/apple/s5l8960x.dtsi
index 0218ecac1d83..449c69d0d92f 100644
--- a/arch/arm64/boot/dts/apple/s5l8960x.dtsi
+++ b/arch/arm64/boot/dts/apple/s5l8960x.dtsi
@@ -33,6 +33,8 @@ cpu0: cpu@0 {
 			compatible = "apple,cyclone";
 			reg = <0x0 0x0>;
 			cpu-release-addr = <0 0>; /* To be filled by loader */
+			operating-points-v2 = <&cyclone_opp>;
+			performance-domains = <&cpufreq>;
 			enable-method = "spin-table";
 			device_type = "cpu";
 		};
@@ -41,6 +43,8 @@ cpu1: cpu@1 {
 			compatible = "apple,cyclone";
 			reg = <0x0 0x1>;
 			cpu-release-addr = <0 0>; /* To be filled by loader */
+			operating-points-v2 = <&cyclone_opp>;
+			performance-domains = <&cpufreq>;
 			enable-method = "spin-table";
 			device_type = "cpu";
 		};
@@ -53,6 +57,12 @@ soc {
 		nonposted-mmio;
 		ranges;
 
+		cpufreq: performance-controller@202220000 {
+			compatible = "apple,s5l8960x-cluster-cpufreq";
+			reg = <0x2 0x02220000 0 0x1000>;
+			#performance-domain-cells = <0>;
+		};
+
 		serial0: serial@20a0a0000 {
 			compatible = "apple,s5l-uart";
 			reg = <0x2 0x0a0a0000 0x0 0x4000>;
diff --git a/arch/arm64/boot/dts/apple/s5l8965x-opp.dtsi b/arch/arm64/boot/dts/apple/s5l8965x-opp.dtsi
new file mode 100644
index 000000000000..d34dae74a90c
--- /dev/null
+++ b/arch/arm64/boot/dts/apple/s5l8965x-opp.dtsi
@@ -0,0 +1,45 @@
+// SPDX-License-Identifier: GPL-2.0+ OR MIT
+/*
+ * Operating points for Apple S5L8965X "A7" Rev A SoC, Up to 1392 MHz
+ *
+ * target-type: J71, J72, J73
+ *
+ * Copyright (c) 2024, Nick Chan <towinchenmi@gmail.com>
+ */
+
+/ {
+	cyclone_opp: opp-table {
+		compatible = "operating-points-v2";
+
+		opp01 {
+			opp-hz = /bits/ 64 <300000000>;
+			opp-level = <1>;
+			clock-latency-ns = <10000>;
+		};
+		opp02 {
+			opp-hz = /bits/ 64 <600000000>;
+			opp-level = <2>;
+			clock-latency-ns = <49000>;
+		};
+		opp03 {
+			opp-hz = /bits/ 64 <840000000>;
+			opp-level = <3>;
+			clock-latency-ns = <30000>;
+		};
+		opp04 {
+			opp-hz = /bits/ 64 <1128000000>;
+			opp-level = <4>;
+			clock-latency-ns = <39500>;
+		};
+		opp05 {
+			opp-hz = /bits/ 64 <1296000000>;
+			opp-level = <5>;
+			clock-latency-ns = <45500>;
+		};
+		opp06 {
+			opp-hz = /bits/ 64 <1392000000>;
+			opp-level = <6>;
+			clock-latency-ns = <46500>;
+		};
+	};
+};
-- 
2.47.1



Return-Path: <devicetree+bounces-133412-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C01E9FA772
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 18:54:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BFA721660BF
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 17:54:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84E27199FD0;
	Sun, 22 Dec 2024 17:53:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="d2GUX7sn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E26721993B5;
	Sun, 22 Dec 2024 17:53:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734890020; cv=none; b=Tux1VIa/YJ0y9GeXWc2RDGWSRbLem06gynIWLqw6oulYkplJYhXa6KcElNngBzNxP3sLdljeAV6Xs38NiFllUw2Bd67XnniTPyjJPMTPmpMr/whPd2oE7y5K1nsgYWCTZYfEXd8tsICFikMiFSafy7Eyz1jpvHTEIO2+kBsFcqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734890020; c=relaxed/simple;
	bh=2vkVOlA6yZGay51SznQ0EJpwIFuqxMY1bzPE6/AMxt0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HQGNWVJT2wXsR4++1cZpR9K9p1FvaP0mHcDFZ5BI50Avfp3tMusQ7W1clscDbY1g3FbPQ0dxRXsLvZghChm3mtZ6RC/8nQAdw6GJh/M03qjZDs0lL6ffTIZLuhntPOIOr234D8NYCucDy6ggdOO1RKqbBKYBxguejRfe7Fxt1ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=d2GUX7sn; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-2164b1f05caso31477395ad.3;
        Sun, 22 Dec 2024 09:53:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734890018; x=1735494818; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wPevbon6m/T00pf3vYuYkO653KRfOrsNDd02bFq47S4=;
        b=d2GUX7sn9dQYl9MLrR4UNbXx6ygc9QKf4AWxgeNPmDlwpOPcSsv2cJJaFZl0Sy2Z/L
         zf0Bt6r6TCE5RJO6i1jXDokQbGFmTgGk+ghBfIig5K6lN0J9S1bp4fzpU3iid3biiSMI
         QWuvOFFKZVlA6sxTT+E0U5WEe2pKB/jWj4DaCvI6dC3Q6SwPrf7jJ9670sXgTj3SIY5n
         cIRXSmrfoflS0IhgkEyStd65i5tzRkh2tdg9NPODPpj0WhwDThIFL3d1ET5dGPuSEmDK
         o8E3DbDqeGjPD0sy4KDvQviWtqSxh7A1l1Z7WdUD6sszTk1z3zK4ITysZmSbAox+oNzl
         uAzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734890018; x=1735494818;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wPevbon6m/T00pf3vYuYkO653KRfOrsNDd02bFq47S4=;
        b=iZ0ucrRG7XhrYZKPjSdNk6x9gnf9e/n19CoIWIsJW/C0+qD3PjIBcCeEIQUkekGZ84
         GcUYI2b29ebFlP3c3emMJTXTglRfOHFvDpbUfV3dbxOQsroVYDRxK7UEAExm9zRC0lh0
         2i+Pbfqc4LvFh65ZQYOyfMRWAbSuAUBybolHhpPrIEP3EtnluSwiUq6iHMoMcJ0ztM4A
         CtM+42yKHqKsjDNeIZz/+v77j2psYuEuJskX8JLYyzHICs9Q4YZ8RYTKk2jo0pWL0SRI
         TmioVIj8G3V2lQ5kKt0uJZndmgesJXVInqv4KmN7/vwBqKTXatLkQbIeA21T926NS5yW
         xegg==
X-Forwarded-Encrypted: i=1; AJvYcCVnLGNM4tvKwVsE7un3yXnqMHeWiqsx9/qDWpKLnw1kLBlEyI8IdNXPRB9bpu4fsv64m9R4TfYHtNqWeXSz@vger.kernel.org, AJvYcCWwYh4az7SbBulvg4NSTWcNmgr3NVfU87XJ/c4bejgSa4Ae0tvQRdM2aI4GRZzqCyUWvwYKDd5ooXgt@vger.kernel.org
X-Gm-Message-State: AOJu0YyPIbx06MVBQE2Z/2x2k5YBDeaKh46M7xZuedheGK4djtBufNH9
	NShgxMIgzkYlT9oTcgroYkioZOKkAJX+E/akQYUHRtBOUPYkeXnK
X-Gm-Gg: ASbGnctTwUBEQxZqfCRHMPWpoN7COVx0SMpUVLns5HS9Mh6q1cd6J83u6gcePN84kvg
	hHKEgD6tdZKr1lnMZYtfYWMeXyaAMxA/d9rLAbLdJgORLGcyDtyCmvfUydBIgoLAPtccfPQaWDS
	zLknOokqOzWK2SpN0JqmD1vVlMtuSx5I4oCbfrmHlLvPighcoMPkhTAA4Xvw4ZWMGOWIAOinoDE
	ImKwWBzLfvUIGs1NA7oD2sOF45Q1ciY3TU1GXkiJhqwK7rzjwSzC3Fh2A==
X-Google-Smtp-Source: AGHT+IE7f2w+pW5eXG5g7QIlLGxjJq2YFC2yMAhiVeASPpXTfKK7ET7lE8ZEKwanTLgnFmV/NW71uQ==
X-Received: by 2002:a17:903:94d:b0:216:46f4:7e30 with SMTP id d9443c01a7336-219e6f11764mr154607305ad.43.1734890018302;
        Sun, 22 Dec 2024 09:53:38 -0800 (PST)
Received: from nick-mbp.. ([59.188.211.160])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-219dca04c33sm59503685ad.247.2024.12.22.09.53.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Dec 2024 09:53:37 -0800 (PST)
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
Subject: [PATCH 4/9] arm64: dts: apple: Add cpufreq nodes for S8000/S8003
Date: Mon, 23 Dec 2024 01:52:04 +0800
Message-ID: <20241222175314.151437-5-towinchenmi@gmail.com>
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

Add cpufreq nodes for the two variants of Apple A9 SoC. The difference is
that S8000 is slower than S8003 in state transitions.

Change the copyright information in s8000.dtsi and s8003.dtsi as well
since these are now essentially new files with the original content now
being in s800-0-3.dtsi.

Signed-off-by: Nick Chan <towinchenmi@gmail.com>
---
 arch/arm64/boot/dts/apple/s800-0-3.dtsi | 10 +++++
 arch/arm64/boot/dts/apple/s8000.dtsi    | 53 ++++++++++++++++++++++++-
 arch/arm64/boot/dts/apple/s8003.dtsi    | 53 ++++++++++++++++++++++++-
 3 files changed, 114 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/apple/s800-0-3.dtsi b/arch/arm64/boot/dts/apple/s800-0-3.dtsi
index 082e5b1733d0..382d7be3f8ce 100644
--- a/arch/arm64/boot/dts/apple/s800-0-3.dtsi
+++ b/arch/arm64/boot/dts/apple/s800-0-3.dtsi
@@ -32,6 +32,8 @@ cpu0: cpu@0 {
 			compatible = "apple,twister";
 			reg = <0x0 0x0>;
 			cpu-release-addr = <0 0>; /* To be filled in by loader */
+			operating-points-v2 = <&twister_opp>;
+			performance-domains = <&cpufreq>;
 			enable-method = "spin-table";
 			device_type = "cpu";
 		};
@@ -40,6 +42,8 @@ cpu1: cpu@1 {
 			compatible = "apple,twister";
 			reg = <0x0 0x1>;
 			cpu-release-addr = <0 0>; /* To be filled in by loader */
+			operating-points-v2 = <&twister_opp>;
+			performance-domains = <&cpufreq>;
 			enable-method = "spin-table";
 			device_type = "cpu";
 		};
@@ -52,6 +56,12 @@ soc {
 		nonposted-mmio;
 		ranges;
 
+		cpufreq: performance-controller@202220000 {
+			compatible = "apple,s8000-cluster-cpufreq", "apple,t8103-cluster-cpufreq", "apple,cluster-cpufreq";
+			reg = <0x2 0x02220000 0 0x1000>;
+			#performance-domain-cells = <0>;
+		};
+
 		serial0: serial@20a0c0000 {
 			compatible = "apple,s5l-uart";
 			reg = <0x2 0x0a0c0000 0x0 0x4000>;
diff --git a/arch/arm64/boot/dts/apple/s8000.dtsi b/arch/arm64/boot/dts/apple/s8000.dtsi
index c7e39abda7e1..72322f5677ab 100644
--- a/arch/arm64/boot/dts/apple/s8000.dtsi
+++ b/arch/arm64/boot/dts/apple/s8000.dtsi
@@ -4,11 +4,62 @@
  *
  * Other names: H8P, "Maui"
  *
- * Copyright (c) 2022, Konrad Dybcio <konradybcio@kernel.org>
+ * Copyright (c) 2024, Nick Chan <towinchenmi@gmail.com>
  */
 
 #include "s800-0-3.dtsi"
 
+/ {
+	twister_opp: opp-table {
+		compatible = "operating-points-v2";
+
+		opp01 {
+			opp-hz = /bits/ 64 <300000000>;
+			opp-level = <1>;
+			clock-latency-ns = <650>;
+		};
+		opp02 {
+			opp-hz = /bits/ 64 <396000000>;
+			opp-level = <2>;
+			clock-latency-ns = <75000>;
+		};
+		opp03 {
+			opp-hz = /bits/ 64 <600000000>;
+			opp-level = <3>;
+			clock-latency-ns = <27000>;
+		};
+		opp04 {
+			opp-hz = /bits/ 64 <912000000>;
+			opp-level = <4>;
+			clock-latency-ns = <32000>;
+		};
+		opp05 {
+			opp-hz = /bits/ 64 <1200000000>;
+			opp-level = <5>;
+			clock-latency-ns = <35000>;
+		};
+		opp06 {
+			opp-hz = /bits/ 64 <1512000000>;
+			opp-level = <6>;
+			clock-latency-ns = <45000>;
+		};
+		opp07 {
+			opp-hz = /bits/ 64 <1800000000>;
+			opp-level = <7>;
+			clock-latency-ns = <58000>;
+		};
+#if 0
+		/* Not available until CPU deep sleep is implemented */
+		opp08 {
+			opp-hz = /bits/ 64 <1844000000>;
+			opp-level = <8>;
+			clock-latency-ns = <58000>;
+			turbo-mode;
+		};
+#endif
+	};
+};
+
 /*
  * The A9 was made by two separate fabs on two different process
  * nodes: Samsung made the S8000 (APL0898) on 14nm and TSMC made
diff --git a/arch/arm64/boot/dts/apple/s8003.dtsi b/arch/arm64/boot/dts/apple/s8003.dtsi
index 807e3452f8a7..79df5c783260 100644
--- a/arch/arm64/boot/dts/apple/s8003.dtsi
+++ b/arch/arm64/boot/dts/apple/s8003.dtsi
@@ -4,11 +4,62 @@
  *
  * Other names: H8P, "Malta"
  *
- * Copyright (c) 2022, Konrad Dybcio <konradybcio@kernel.org>
+ * Copyright (c) 2024, Nick Chan <towinchenmi@gmail.com>
  */
 
 #include "s800-0-3.dtsi"
 
+/ {
+	twister_opp: opp-table {
+		compatible = "operating-points-v2";
+
+		opp01 {
+			opp-hz = /bits/ 64 <300000000>;
+			opp-level = <1>;
+			clock-latency-ns = <500>;
+		};
+		opp02 {
+			opp-hz = /bits/ 64 <396000000>;
+			opp-level = <2>;
+			clock-latency-ns = <45000>;
+		};
+		opp03 {
+			opp-hz = /bits/ 64 <600000000>;
+			opp-level = <3>;
+			clock-latency-ns = <22000>;
+		};
+		opp04 {
+			opp-hz = /bits/ 64 <912000000>;
+			opp-level = <4>;
+			clock-latency-ns = <25000>;
+		};
+		opp05 {
+			opp-hz = /bits/ 64 <1200000000>;
+			opp-level = <5>;
+			clock-latency-ns = <28000>;
+		};
+		opp06 {
+			opp-hz = /bits/ 64 <1512000000>;
+			opp-level = <6>;
+			clock-latency-ns = <35000>;
+		};
+		opp07 {
+			opp-hz = /bits/ 64 <1800000000>;
+			opp-level = <7>;
+			clock-latency-ns = <38000>;
+		};
+#if 0
+		/* Not available until CPU deep sleep is implemented */
+		opp08 {
+			opp-hz = /bits/ 64 <1844000000>;
+			opp-level = <8>;
+			clock-latency-ns = <38000>;
+			turbo-mode;
+		};
+#endif
+	};
+};
+
 /*
  * The A9 was made by two separate fabs on two different process
  * nodes: Samsung made the S8000 (APL0898) on 14nm and TSMC made
-- 
2.47.1



Return-Path: <devicetree+bounces-133414-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 372EC9FA776
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 18:55:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 81CB61886FD0
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 17:55:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D8D71A3A95;
	Sun, 22 Dec 2024 17:53:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JdVxMVcs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED048191F83;
	Sun, 22 Dec 2024 17:53:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734890025; cv=none; b=Xt+ORnICWw9Jl30i4yerlzr4GzCK0zTkkKKzRjSgZetqA5SdA2cw4Yf/tGyQqnKr0dJBLAuaNxUj1CHEAwVwSs+K0kLePPDXry+xERx5xL3eLfxPDGaPSqxRF3PCcbY2wDPvKptI6JdVoKGPXrvXB9S3cHbkLQcfpEJe9fhr5Yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734890025; c=relaxed/simple;
	bh=aNVyNhmufGOOGpP5E/L6Pio6VeurXSd1E61mRhniR2k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=NBZa/0QBDsl4hjeIevtYnFKfgiYgtsVd4biS3IM6q2/RJEPKGmJSqhUa7JSYJ+bm3pLVkRIBaH21h2U4hClDGGUbga+nh3B/3exj5gAf+x3wVE66Xj9X2q1y0IK+UHwbeLWN1hg8dTA3r4gOonldwKGZ8TjGALt5AvaW3RJsIJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JdVxMVcs; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-2167141dfa1so30782415ad.1;
        Sun, 22 Dec 2024 09:53:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734890023; x=1735494823; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M8quqDbvIzDjRV3soAXIobPs9f6LGdQx6F8kthQIS+s=;
        b=JdVxMVcstWz9rwmtsW3tNabz5xCIlqGlJKjJoOumk9J45Z+7aEOL3EmDr6OwSRxcCk
         2iQOogLp02Fj3OSTlvgI5dZmZzYE0TnB9KNmzjmft6ZaS8yiqtXPe46B5mEVXL3rL+uh
         Zs/AfoiJg/IIq1SqHMINSDF7uK3F45uvNLcX30n5wZyapqZ0B7mMgl0Biib8aKBB+y4x
         bWAeOvFLYQp54mFkEnLAlWQxjX5PYBcWGlHij95j3ZcfXkPaVg9hSSRXYnJjXmXOwRhO
         52TO8XOTIo2h5xRdMMYndoWsbNioTaVUG2Dn1+o/RYQAUkwhFfrWk7uNQSfiA6bJfYcx
         ifcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734890023; x=1735494823;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M8quqDbvIzDjRV3soAXIobPs9f6LGdQx6F8kthQIS+s=;
        b=EQnQdSvIm6cg4fauKO9BqB3UmZlxCJP8k5zGXQ+hkOXM7O5D8Mjb6w9ZRkUea5QtD9
         9RGzWDgO9PzPjU6be/YHk79RqsyT/wvI8Y4/C0hyPhz9b03QwTAcXSFJ7793cgLgT8Ok
         O3DHxiWgg+3qLvOrf7R1Sh/kQAo36efBVBWRQlknRC4N26Db5v2XJ3r9nDHaWKkBM4iM
         fd2fahdJ4ZnVGwg47QX5DHRnwK6svs2Meq1ves2IVBHV9PEUOYqhK142p//OYW0v8ZzK
         PzGm9pDEn8TYWw7w9zDML+Bf7Y+Q4C7MbVMtimPus3CTh+lu2apJTgueXBJeaHLnlLpC
         /51Q==
X-Forwarded-Encrypted: i=1; AJvYcCUunoqmp2Qf/AuX6dgzZt+FZ9urAftLq2+CRPd6SCP4xEUlwx3Gyn9mep4TxZcOLUsLYghS0nFUKFjoeTE1@vger.kernel.org, AJvYcCVdZNr68neh31/riYppf7LXx79YWq/o3NG09S3Z3xdv1VUF34F6MPzEM0lZg6t3YFOWL8mojuo05NKo@vger.kernel.org
X-Gm-Message-State: AOJu0YzFlHyhWmo+JFrbVuPKGemjTYf9w69BvJ3KdbRNvoEMva7LMiOq
	El7PkLA61GXIu/2/z7/MdUHKVISKqD6xmGX/stj2be2IuyijSiWj
X-Gm-Gg: ASbGncuv4ng/WQNvaY2aom0g5w29Z/M5WHH6cDz8Tw0mscJnOrmVJ0QmOwYf/eW+V6Q
	6CBM8jYBgVoplzi4KYATEUfwdHl4ZOI6XmyKhl+SLm8Is9UHzMYvtYQTvfiPAuoeEFfvxF5j8t7
	uXKx6AsbETzggtW6ZQI9yn/WkKq+hWmoxL9jC3kKdZBrpQgFujikf40aVhIGhkroffiyz+dmq7d
	g/Z5vIVyoxJouqc1UQm3hx789mbyxg3NTvgDZnjf/kKyJ/7Od2FmKuiuA==
X-Google-Smtp-Source: AGHT+IGpgvTOHhq2hImZ/rSPNRXBsdgUbRBZyxdR2JAx10GDpZz4KoEJX4OK0tyh8MQs0GsB982i4g==
X-Received: by 2002:a17:902:d50c:b0:215:9c06:272a with SMTP id d9443c01a7336-219da7ff40bmr204906785ad.24.1734890023267;
        Sun, 22 Dec 2024 09:53:43 -0800 (PST)
Received: from nick-mbp.. ([59.188.211.160])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-219dca04c33sm59503685ad.247.2024.12.22.09.53.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Dec 2024 09:53:42 -0800 (PST)
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
Subject: [PATCH 6/9] arm64: dts: apple: t8010: Add cpufreq nodes
Date: Mon, 23 Dec 2024 01:52:06 +0800
Message-ID: <20241222175314.151437-7-towinchenmi@gmail.com>
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
 arch/arm64/boot/dts/apple/t8010-7.dtsi     |  8 ++
 arch/arm64/boot/dts/apple/t8010-ipad6.dtsi |  8 ++
 arch/arm64/boot/dts/apple/t8010.dtsi       | 86 ++++++++++++++++++++++
 3 files changed, 102 insertions(+)

diff --git a/arch/arm64/boot/dts/apple/t8010-7.dtsi b/arch/arm64/boot/dts/apple/t8010-7.dtsi
index 1332fd73f50f..919e067ef073 100644
--- a/arch/arm64/boot/dts/apple/t8010-7.dtsi
+++ b/arch/arm64/boot/dts/apple/t8010-7.dtsi
@@ -41,3 +41,11 @@ switch-mute {
 		};
 	};
 };
+
+&hurricane_opp09 {
+	status = "okay";
+};
+
+&hurricane_opp10 {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/apple/t8010-ipad6.dtsi b/arch/arm64/boot/dts/apple/t8010-ipad6.dtsi
index 81696c6e302c..4ea8cf12e430 100644
--- a/arch/arm64/boot/dts/apple/t8010-ipad6.dtsi
+++ b/arch/arm64/boot/dts/apple/t8010-ipad6.dtsi
@@ -42,3 +42,11 @@ button-volup {
 		};
 	};
 };
+
+&hurricane_opp09 {
+	status = "okay";
+};
+
+&hurricane_opp10 {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/apple/t8010.dtsi b/arch/arm64/boot/dts/apple/t8010.dtsi
index e3d6a8354103..2547e8c60cad 100644
--- a/arch/arm64/boot/dts/apple/t8010.dtsi
+++ b/arch/arm64/boot/dts/apple/t8010.dtsi
@@ -32,6 +32,8 @@ cpu0: cpu@0 {
 			compatible = "apple,hurricane-zephyr";
 			reg = <0x0 0x0>;
 			cpu-release-addr = <0 0>; /* To be filled by loader */
+			operating-points-v2 = <&fusion_opp>;
+			performance-domains = <&cpufreq>;
 			enable-method = "spin-table";
 			device_type = "cpu";
 		};
@@ -40,11 +42,89 @@ cpu1: cpu@1 {
 			compatible = "apple,hurricane-zephyr";
 			reg = <0x0 0x1>;
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
+		 * Apple Fusion Architecture: Hardware big.LITTLE switcher
+		 * that use p-state transitions to switch between cores.
+		 * Only one type of core can be active at a given time.
+		 *
+		 * The E-core frequencies are adjusted so performance scales
+		 * linearly with reported clock speed.
+		 */
+
+		opp01 {
+			opp-hz = /bits/ 64 <172000000>; /* 300 MHz, E-core */
+			opp-level = <1>;
+			clock-latency-ns = <11000>;
+		};
+		opp02 {
+			opp-hz = /bits/ 64 <230000000>; /* 396 MHz, E-core */
+			opp-level = <2>;
+			clock-latency-ns = <49000>;
+		};
+		opp03 {
+			opp-hz = /bits/ 64 <425000000>; /* 732 MHz, E-core */
+			opp-level = <3>;
+			clock-latency-ns = <13000>;
+		};
+		opp04 {
+			opp-hz = /bits/ 64 <637000000>; /* 1092 MHz, E-core */
+			opp-level = <4>;
+			clock-latency-ns = <18000>;
+		};
+		opp05 {
+			opp-hz = /bits/ 64 <756000000>;
+			opp-level = <5>;
+			clock-latency-ns = <35000>;
+		};
+		opp06 {
+			opp-hz = /bits/ 64 <1056000000>;
+			opp-level = <6>;
+			clock-latency-ns = <31000>;
+		};
+		opp07 {
+			opp-hz = /bits/ 64 <1356000000>;
+			opp-level = <7>;
+			clock-latency-ns = <37000>;
+		};
+		opp08 {
+			opp-hz = /bits/ 64 <1644000000>;
+			opp-level = <8>;
+			clock-latency-ns = <39500>;
+		};
+		hurricane_opp09: opp09 {
+			opp-hz = /bits/ 64 <1944000000>;
+			opp-level = <9>;
+			clock-latency-ns = <46000>;
+			status = "disabled"; /* Not available on N112 */
+		};
+		hurricane_opp10: opp10 {
+			opp-hz = /bits/ 64 <2244000000>;
+			opp-level = <10>;
+			clock-latency-ns = <56000>;
+			status = "disabled"; /* Not available on N112 */
+		};
+#if 0
+		/* Not available until CPU deep sleep is implemented */
+		hurricane_opp11: opp11 {
+			opp-hz = /bits/ 64 <2340000000>;
+			opp-level = <11>;
+			clock-latency-ns = <56000>;
+			turbo-mode;
+			status = "disabled"; /* Not available on N112 */
+		};
+#endif
+	};
+
 	soc {
 		compatible = "simple-bus";
 		#address-cells = <2>;
@@ -52,6 +132,12 @@ soc {
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



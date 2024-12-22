Return-Path: <devicetree+bounces-133411-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7614F9FA770
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 18:54:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 425BB166054
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 17:54:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 578A7196D8F;
	Sun, 22 Dec 2024 17:53:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ioPGlNVV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7D7D194A59;
	Sun, 22 Dec 2024 17:53:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734890017; cv=none; b=gk7Iypxtkc4IXQtuWFAIacLuwvQlFi/E3hYPs6zuQCdl0EkTn2HiuJ1KNlxfufwrBsoAOucSabf0WS9fM79HQEB1Jrq9y+JogvENL/6r/mPvQuxLz/J/0Df7M+pBgVtcR+YrgzA7ri8Xz190Nb2HWww1xR8NQSOueJ/vjBH419A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734890017; c=relaxed/simple;
	bh=yD4NluViPi33804MB+GB0u81CO6sSfmO04g6wGG65KI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=bqeKmyhkFlxq24X+VOABzdr9POIYBIScandhdZ4nWcmdj/ql9a1QN90P7WFuY88HBtyV1SFNBKgkXHo07qoXmokHghcNTRZhk5AY6Ix9NJbRnFWW4xcOf9VzBjHWGcV03iHDpwx6AdRcLCCo26XxmIKA0EQI1CB1z09VUYpn9cs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ioPGlNVV; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-2162c0f6a39so40016815ad.0;
        Sun, 22 Dec 2024 09:53:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734890015; x=1735494815; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p/H34LBUZjUXTz+iaRY9rMjPwJeFD2H83GIWRwt32m0=;
        b=ioPGlNVVBifAVrqym5fChRt+51sMX4rJxS3AFRD2Tq0HxRbUWt1WloRoon3RlO6INL
         tMZco0LGKFKtaRvKCOIXxCOvUejdd83xOjmtky5euuLurxCvWttTrBW9JPCjvqODGJ7I
         uabbTCpFn/3Kta6YVN2B0/x6/+MBNLzGmJPvVZ3z06AmSP2rJy2to+emN7cX9hK/hw3h
         eq9NqiotpOzCqwhWxP+OXEybH/l2cn7qRtLYjxFdoWsnPXfdID1FYfziT2G9odhehCBY
         mN3TEJQr05Lew01J3wcqiE5yVBRVxvWVzvAaMN5/e08gPu5aBYAFvOVXlv1DNmJxoZg+
         C41A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734890015; x=1735494815;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p/H34LBUZjUXTz+iaRY9rMjPwJeFD2H83GIWRwt32m0=;
        b=QLXVfKQBgOCBtuGv1mLbncNgoaiWWY51KBiqUZv9ZsHlAyPdKGm3epRr1hGdNbD9MJ
         qaaWxAQLxfq/RhPm0IHzwZw2rj1v1Hb2Tl3eFpUbfw5QNnOiZuIOgidBeWbgdW11HtZV
         9TfglCjVGxoj5Tm9vCNC/kLULRzkMNpsVkawSvNt1P2epC2ZMvsRcV+vSfFpQvLVONfS
         qIe5O96ZQywpduJv+rhZRN/htZR+G1S0BaObnZVYRG5lYwLRUW6gYc7JFGPrRvFCOH/C
         uJSMZMog9HEAqzAB1h7OsXkQ1pxv6dE/JhnKu6HsMPc4DUMPbZSYRiDnkvT3mj0XRia0
         Yv2Q==
X-Forwarded-Encrypted: i=1; AJvYcCXEYaSY5sKa3Oo482kyXRm56a9Af78exF7wVURPELhM4MQRf3ogACUJ6zzw6c8XcRgBmPZxbnKZx+mX@vger.kernel.org, AJvYcCXUxQCq/e2cuGpXPmPymo7BvBxl6g4crhHKxWb8Lrn82lRbKXwO25Vp7xNTMhFNeMg3iEshdUIYOMJvGOOE@vger.kernel.org
X-Gm-Message-State: AOJu0YyMojMpq4Yr1YAHLKyLNXU3BOFj2vyCyoU5dTmwmCbhSy3LoSyv
	wUSiVqPKjuXAZVtov+BifEUYJZPC6Qx3b6PAm0uFKZSj0dzauKLm
X-Gm-Gg: ASbGncvPZOrLBM3ZsfdzkmSObr+1QwbNWggVuqYBclOKhtvBefs65qEiSIWDJweO7g/
	CWw/Y7WUDh8UkHlY4uaeSMrgaRynN5/jr6IKPJujK1jun/jY5BOeI1iGRzlIHiv1kW2eLUkryf5
	JwzkrNDO+zmPskC4/13PpRTSCTY6iquLJsadNu5xui6rmxenAE2b8iWr8MGYpA3/MlFLY1IYCb1
	A3wplMeIx04LnNMwLd+VIKpdmBngZmgKX810TugFoubu7qvsHjZDe5yCw==
X-Google-Smtp-Source: AGHT+IHvFpLLRyzoQQ5tNKeb07qfw06v3MtCIVEteo/HrQ0DzX1pSwNVX59T/cnT26GV4sClW+vrcA==
X-Received: by 2002:a17:902:da8f:b0:215:98e7:9b1 with SMTP id d9443c01a7336-219e6ca6e4amr133258395ad.5.1734890015061;
        Sun, 22 Dec 2024 09:53:35 -0800 (PST)
Received: from nick-mbp.. ([59.188.211.160])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-219dca04c33sm59503685ad.247.2024.12.22.09.53.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Dec 2024 09:53:34 -0800 (PST)
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
Subject: [PATCH 3/9] arm64: dts: apple: t7001: Add cpufreq nodes
Date: Mon, 23 Dec 2024 01:52:03 +0800
Message-ID: <20241222175314.151437-4-towinchenmi@gmail.com>
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

Add the cpufreq nodes for Apple A8X SoC.

Signed-off-by: Nick Chan <towinchenmi@gmail.com>
---
 arch/arm64/boot/dts/apple/t7001.dtsi | 52 ++++++++++++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/arch/arm64/boot/dts/apple/t7001.dtsi b/arch/arm64/boot/dts/apple/t7001.dtsi
index a76e034c85e3..15fd91d12f30 100644
--- a/arch/arm64/boot/dts/apple/t7001.dtsi
+++ b/arch/arm64/boot/dts/apple/t7001.dtsi
@@ -35,6 +35,8 @@ cpu0: cpu@0 {
 			compatible = "apple,typhoon";
 			reg = <0x0 0x0>;
 			cpu-release-addr = <0 0>; /* To be filled in by loader */
+			performance-domains = <&cpufreq>;
+			operating-points-v2 = <&typhoon_opp>;
 			enable-method = "spin-table";
 			device_type = "cpu";
 		};
@@ -43,6 +45,8 @@ cpu1: cpu@1 {
 			compatible = "apple,typhoon";
 			reg = <0x0 0x1>;
 			cpu-release-addr = <0 0>; /* To be filled in by loader */
+			performance-domains = <&cpufreq>;
+			operating-points-v2 = <&typhoon_opp>;
 			enable-method = "spin-table";
 			device_type = "cpu";
 		};
@@ -51,11 +55,53 @@ cpu2: cpu@2 {
 			compatible = "apple,typhoon";
 			reg = <0x0 0x2>;
 			cpu-release-addr = <0 0>; /* To be filled by loader */
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
+			clock-latency-ns = <49000>;
+		};
+		opp03 {
+			opp-hz = /bits/ 64 <600000000>;
+			opp-level = <3>;
+			clock-latency-ns = <31000>;
+		};
+		opp04 {
+			opp-hz = /bits/ 64 <840000000>;
+			opp-level = <4>;
+			clock-latency-ns = <32000>;
+		};
+		opp05 {
+			opp-hz = /bits/ 64 <1128000000>;
+			opp-level = <5>;
+			clock-latency-ns = <32000>;
+		};
+		opp06 {
+			opp-hz = /bits/ 64 <1392000000>;
+			opp-level = <6>;
+			clock-latency-ns = <37000>;
+		};
+		opp07 {
+			opp-hz = /bits/ 64 <1512000000>;
+			opp-level = <7>;
+			clock-latency-ns = <41000>;
+		};
+	};
+
 	soc {
 		compatible = "simple-bus";
 		#address-cells = <2>;
@@ -63,6 +109,12 @@ soc {
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



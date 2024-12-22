Return-Path: <devicetree+bounces-133413-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FC999FA774
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 18:54:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 035D9166116
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 17:54:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0D5619E979;
	Sun, 22 Dec 2024 17:53:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ddf/B9F9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B6A319CC2D;
	Sun, 22 Dec 2024 17:53:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734890022; cv=none; b=KKdpQakT0vMZ49ob35KMikC36O/qHie0bNvo78Ak/lKPCY3zoXwFyUY7A6VLqoAV21m7fR6ibXUnPGV7Eg25qqJxZzll0+GrE7TXBa15F+OLgi6jJru2WCTiirSfD44d2FM14LhdGw2MF0+KgBrBeMGmZ4vzlZ0siIJUlxbjIiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734890022; c=relaxed/simple;
	bh=+bHLqQXShOcRgx5Srzyvr2O0yFSfPX+c22RLbLXLYqo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lZs6m+xXnTqE2rJm8sOeMyfRmF0SE7PPr1AiUcpaXBsAWJrQxIvwt979duRTOyq3ORb7WJS9cWHiuGxPWM5YvAYcnufcqQ+Wd19cBwLSUg8zqYYCkbwzDGebdiZ9DSx6RILBMuoCZQcmqInbE4HQjGHygV2/XhfXO7IpK3f2quM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ddf/B9F9; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-21649a7bcdcso31760765ad.1;
        Sun, 22 Dec 2024 09:53:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734890021; x=1735494821; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N24iLfWKUlFKc1T6bkkvm11QnF/DJ7nQeOyrjdB7/0A=;
        b=Ddf/B9F9+EnWKyKCsHFYxmlvs45i/6zWFrB80TMgSpuUIu15IqnPAbUv1TV5ZzXmJi
         i93cDqgzDxF3o4udfU7Ejl5lS+oTJX1gfjKsof3yN0dDe0gI/WtzeDeoUCERYFAjkZy0
         HePY6yhZzCKKitMK/X5Ky6XGgoKnqGCjv0Jz6tu4jVt5fFWVp7w+0jVaO/H9dDzH0kUV
         2eJtWho0bH6Pw2afXIjZr11+MJkGRdF66lHpbuRqE4VWu8jRNJvi5pTdYdHfNh0w5pNj
         pd1BKcdB6jilOosEepWU5/tiJE1gcoKaZ1OjdeYgNwy/y4I3QJ3rnRP8jJvuJlNiaJlz
         XYAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734890021; x=1735494821;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N24iLfWKUlFKc1T6bkkvm11QnF/DJ7nQeOyrjdB7/0A=;
        b=tzgsBjn7lDP/Pc81u+Q8+MdNhh7qphPc0opzFHzdsoMLIXoL3tP9TsBRFuYbpgKwk+
         dxpWHMpbars4H1NUDYaSWOuvZLu71jYu6PAR4f0O0vrfr8LvBZW4wD2hDxFvtrgFLh4D
         aC16TVvC6zE2YuE40gZIB0YXzals1odI29LGBoeiwwZg+Y4VjJW9plEocBUmlXR6aQ4S
         7S7pztAGdI5XS71Ioxpa0vm2pGieb2Mo58kq0Gv4l77eOz0fQq7LphHRKskeuCJOi2wo
         Ay7HJMBR/+jVVPMtdWhs5pi8kgRNA6Efz1IjawocqWtzHcNs15BsGEg3NXLdSW5bd4oz
         LI3Q==
X-Forwarded-Encrypted: i=1; AJvYcCUjLmYcg2mxcvs4l4o0fe+CHsXfkQgBWyAwFE7NDKZCxUaC3FZng8OiYn+5sSygUzr6nGdYygwySp+z@vger.kernel.org, AJvYcCWd+Ww77L/qsJZPdB4ZlT5Yx3p9uEX+ZUA5ZGn1xetvt+roskiTX0Hujip368x53EN7stxC2gHgix0WAIU4@vger.kernel.org
X-Gm-Message-State: AOJu0YznIaua3lrlS6oLIKu/gtqaeimYJt1A1VI8teNx/iyiFo94L09f
	PMhuUsumASWEJKDuv4ciI4UaGZwfJ9ytuyxLRFYrIXzcJ9PKBNBt
X-Gm-Gg: ASbGncugYiXho3wjKdApuGq64E0o+FdEA754jiDnfhDy+Cu8fPjCcK8FiJrId8oy2BM
	UgcP4w5OshWJmtUGYwt1IG8UXaMBTG8z1CdvFmz1IHK7E12DNpxAn9conEGRbFCMg+wUNXWIfn2
	h6GcShIlHhM4Eas69XsUzpeM0gUFqsL+aZxy74prqkfRIUrzBZffDRUc13i/I0W0E8adRwkdXbK
	/w65M/191v7Lxif3wf3igfl62QUfzO3sww9ol+D7zD4oSD0n39K59rHdg==
X-Google-Smtp-Source: AGHT+IEfOwJ3U9W+UweF0jknq2Ss6l2OIz6iPXfOBXoRPosT9OX3PknrAeuTJncg0JkltpB5GeYkjw==
X-Received: by 2002:a17:902:f688:b0:215:a172:5fb9 with SMTP id d9443c01a7336-219e70dbe56mr133375005ad.48.1734890020756;
        Sun, 22 Dec 2024 09:53:40 -0800 (PST)
Received: from nick-mbp.. ([59.188.211.160])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-219dca04c33sm59503685ad.247.2024.12.22.09.53.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Dec 2024 09:53:40 -0800 (PST)
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
Subject: [PATCH 5/9] arm64: dts: apple: s8001: Add cpufreq nodes
Date: Mon, 23 Dec 2024 01:52:05 +0800
Message-ID: <20241222175314.151437-6-towinchenmi@gmail.com>
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

Add cpufreq nodes for Apple A9X SoC.

Signed-off-by: Nick Chan <towinchenmi@gmail.com>
---
 arch/arm64/boot/dts/apple/s8001.dtsi | 59 ++++++++++++++++++++++++++++
 1 file changed, 59 insertions(+)

diff --git a/arch/arm64/boot/dts/apple/s8001.dtsi b/arch/arm64/boot/dts/apple/s8001.dtsi
index 23ee3238844d..7f7cb8afd3d3 100644
--- a/arch/arm64/boot/dts/apple/s8001.dtsi
+++ b/arch/arm64/boot/dts/apple/s8001.dtsi
@@ -32,6 +32,8 @@ cpu0: cpu@0 {
 			compatible = "apple,twister";
 			reg = <0x0 0x0>;
 			cpu-release-addr = <0 0>; /* To be filled in by loader */
+			operating-points-v2 = <&twister_opp>;
+			performance-domains = <&cpufreq>;
 			enable-method = "spin-table";
 			device_type = "cpu";
 		};
@@ -40,11 +42,62 @@ cpu1: cpu@1 {
 			compatible = "apple,twister";
 			reg = <0x0 0x1>;
 			cpu-release-addr = <0 0>; /* To be filled in by loader */
+			operating-points-v2 = <&twister_opp>;
+			performance-domains = <&cpufreq>;
 			enable-method = "spin-table";
 			device_type = "cpu";
 		};
 	};
 
+	twister_opp: opp-table {
+		compatible = "operating-points-v2";
+
+		opp01 {
+			opp-hz = /bits/ 64 <300000000>;
+			opp-level = <1>;
+			clock-latency-ns = <800>;
+		};
+		opp02 {
+			opp-hz = /bits/ 64 <396000000>;
+			opp-level = <2>;
+			clock-latency-ns = <53000>;
+		};
+		opp03 {
+			opp-hz = /bits/ 64 <792000000>;
+			opp-level = <3>;
+			clock-latency-ns = <18000>;
+		};
+		opp04 {
+			opp-hz = /bits/ 64 <1080000000>;
+			opp-level = <4>;
+			clock-latency-ns = <21000>;
+		};
+		opp05 {
+			opp-hz = /bits/ 64 <1440000000>;
+			opp-level = <5>;
+			clock-latency-ns = <25000>;
+		};
+		opp06 {
+			opp-hz = /bits/ 64 <1800000000>;
+			opp-level = <6>;
+			clock-latency-ns = <33000>;
+		};
+		opp07 {
+			opp-hz = /bits/ 64 <2160000000>;
+			opp-level = <7>;
+			clock-latency-ns = <45000>;
+		};
+#if 0
+		/* Not available until CPU deep sleep is implemented */
+		opp08 {
+			opp-hz = /bits/ 64 <2160000000>;
+			opp-level = <8>;
+			clock-latency-ns = <45000>;
+			turbo-mode;
+		};
+#endif
+	};
+
 	soc {
 		compatible = "simple-bus";
 		#address-cells = <2>;
@@ -52,6 +105,12 @@ soc {
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
-- 
2.47.1



Return-Path: <devicetree+bounces-133416-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BE729FA77A
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 18:55:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C65F31661BD
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 17:55:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E2DF1A8F96;
	Sun, 22 Dec 2024 17:53:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TkNkkRZT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2FAD192B62;
	Sun, 22 Dec 2024 17:53:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734890030; cv=none; b=Vjt7mj33H0Vic8gZ5bMDJcCHdmnTF74i6Ie/fghET2fJlNPTVeAtuloVBvo73aQLCQ0Qz6JBENq9wrcA0vy7G9e2ln5PsKYEa6RF/fSCwcWwpnwkVzHiRkA9X2Fr3dFx4Kgf7c94eTOUCXdNPWZ93IUGv8GjeeMB46gQwx0wzKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734890030; c=relaxed/simple;
	bh=Ox8qD8dsQr6LHvbVDRuYA4SaFUKAM5Kc9GXxKuEAUEM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=uKU34QgZoFSVS7Ga69ovonysWPsV/3jgvd7qc+pJer2alPtsx6Ru12CSEOhxkxj9ImJ8P7RSJbU4kd9a4UdX6tJpCasVn484BV0xClAvAt0OI0WsOHP8u7Ue9/RN1mL57taqbFrykVs5CV5awGgb3U8ZANSA6apKpsnwGjIyFxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TkNkkRZT; arc=none smtp.client-ip=209.85.216.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f51.google.com with SMTP id 98e67ed59e1d1-2ef28f07dbaso2417895a91.2;
        Sun, 22 Dec 2024 09:53:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734890028; x=1735494828; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wXwxIenSzuIpC+GwkdjqUR2DofzaS4fQGLg3IB5+muY=;
        b=TkNkkRZTWISBnkHbxvqHctOHH/r8irRrWH7RVnsE6ncubao3D13ralT49DuJwczHDg
         zND5GpDen5/yCF2O/5IfmKAsngz8Hwqaun7x8eC2ruhadYT9vTC/aj1NHBWRjid2djo3
         HK+LOzRoscRg0q8s5ufO1nQGqY7Sdyr1jstl9B2IoMikh9bV1LUWT8iPiTxI/x+WWm/5
         Dpt732XN1+XMKjHfs/VCleGYOwEsOdrdgmnm1kQ9hyGvQWsjstkZvs+76jHur+aAGsGK
         aKrYY44SJSSoZxqYB38L4jEDH/GspiD+YO7M4P5zCpvc5NMmz70C9hr0A6VQHBKOQw58
         PQ6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734890028; x=1735494828;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wXwxIenSzuIpC+GwkdjqUR2DofzaS4fQGLg3IB5+muY=;
        b=aoNi6IvyY9nGVHZMykMa7Bv+DUP6MjBEp4wJ7UUteUI3ie4SO1ETD6mJ56ebhzzvKr
         V6qFM9VH0lFfTDIBC86ypLfb3tYFnB2Q6jl9kFyd6Yhrl7A8byqUZ3wbu02JxCVSbHNM
         fvI593EzMFqkS1KcB7+Lpyjr5w/gt7m/ZHe09hYiO3qskv8T7DoVVmXRozsfuA8uAFnA
         GLTh1PRm0esfWtL5bdPK0QnbgsapYopIf2U1FLfojlhKFoGQBXcIRmSutPYjBc7ohqDH
         fkUMcHQBHg4bSVuxQ30v+AE4XAh9VfQjk9RKyipKH1RDCLPPt+Qr6mL89ragU7yjLspy
         KmvQ==
X-Forwarded-Encrypted: i=1; AJvYcCX2HAFcLUkTXo9d1DSPxETrL8BEr7Fo2GXgP9OTwPyY1DORGHrXoLwOkm0b9wwJlMXBDed7Ast+30e0K6Ol@vger.kernel.org, AJvYcCXKYvhUko8LMmzWulo2jFTql9P1DP6ZmpmNVLgLoR9Y7c6IF5xpWIxTh45e7kIWiEpS1uaPud2yEAUC@vger.kernel.org
X-Gm-Message-State: AOJu0YxW5nGZkoBpUhppAz+LURPUhYHw7LGNnaZRjkueqQynNWHdDdhZ
	Ssrx+CgETHo+cP26bYolZjIp1MJc8wBZX6lXDTw+5D2ktWkq4IFf
X-Gm-Gg: ASbGnctOVyWr4AjQphiH93+kj4d9gCfCGq3B3TLCAW3Qvolze7UNBPueWEg1fklyobb
	VDDhNGAdTaORmQSXY+SN/y+lrSh3jXk6jRK4yjc0KTzORyxFqgryRZL54KGSgne6oUBIN7YwGXq
	kwajTlzd/PwgeO2JeVg5FUx8hCgmjzndLCgbLCKLvG8dPHJs7L6NgSoFxtrtsSOLvmXc4OnSBRB
	hySvwtVDDiSJChVRhROjdR3PUIDGas7zYRDvcpzgL5dBHC70Rws+DCthA==
X-Google-Smtp-Source: AGHT+IHSDfGeiVEQElB/fENv7ebMVITS5qMf817Q635jJxGYv5q8M2DnvFHYEvP8UOy+HWtj+qGhtw==
X-Received: by 2002:a17:90a:dfcd:b0:2ee:964e:67ce with SMTP id 98e67ed59e1d1-2f452dee953mr13986009a91.3.1734890028231;
        Sun, 22 Dec 2024 09:53:48 -0800 (PST)
Received: from nick-mbp.. ([59.188.211.160])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-219dca04c33sm59503685ad.247.2024.12.22.09.53.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Dec 2024 09:53:47 -0800 (PST)
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
Subject: [PATCH 8/9] arm64: dts: apple: t8012: Add cpufreq nodes
Date: Mon, 23 Dec 2024 01:52:08 +0800
Message-ID: <20241222175314.151437-9-towinchenmi@gmail.com>
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
 arch/arm64/boot/dts/apple/t8012.dtsi | 83 ++++++++++++++++++++++++++++
 1 file changed, 83 insertions(+)

diff --git a/arch/arm64/boot/dts/apple/t8012.dtsi b/arch/arm64/boot/dts/apple/t8012.dtsi
index 45d24ca091b0..0a3d5a6bd047 100644
--- a/arch/arm64/boot/dts/apple/t8012.dtsi
+++ b/arch/arm64/boot/dts/apple/t8012.dtsi
@@ -32,6 +32,8 @@ cpu0: cpu@10000 {
 			compatible = "apple,hurricane-zephyr";
 			reg = <0x0 0x10000>;
 			cpu-release-addr = <0 0>; /* To be filled by loader */
+			operating-points-v2 = <&fusion_opp>;
+			performance-domains = <&cpufreq>;
 			enable-method = "spin-table";
 			device_type = "cpu";
 		};
@@ -40,11 +42,86 @@ cpu1: cpu@10001 {
 			compatible = "apple,hurricane-zephyr";
 			reg = <0x0 0x10001>;
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
+			clock-latency-ns = <140000>;
+		};
+		opp03 {
+			opp-hz = /bits/ 64 <425000000>; /* 732 MHz, E-core */
+			opp-level = <3>;
+			clock-latency-ns = <110000>;
+		};
+		opp04 {
+			opp-hz = /bits/ 64 <637000000>; /* 1092 MHz, E-core */
+			opp-level = <4>;
+			clock-latency-ns = <130000>;
+		};
+		opp05 {
+			opp-hz = /bits/ 64 <756000000>;
+			opp-level = <5>;
+			clock-latency-ns = <130000>;
+		};
+		opp06 {
+			opp-hz = /bits/ 64 <1056000000>;
+			opp-level = <6>;
+			clock-latency-ns = <130000>;
+		};
+		opp07 {
+			opp-hz = /bits/ 64 <1356000000>;
+			opp-level = <7>;
+			clock-latency-ns = <130000>;
+		};
+		opp08 {
+			opp-hz = /bits/ 64 <1644000000>;
+			opp-level = <8>;
+			clock-latency-ns = <135000>;
+		};
+		opp09 {
+			opp-hz = /bits/ 64 <1944000000>;
+			opp-level = <9>;
+			clock-latency-ns = <140000>;
+		};
+		opp10 {
+			opp-hz = /bits/ 64 <2244000000>;
+			opp-level = <10>;
+			clock-latency-ns = <150000>;
+		};
+#if 0
+		/* Not available until CPU deep sleep is implemented */
+		opp11 {
+			opp-hz = /bits/ 64 <2340000000>;
+			opp-level = <11>;
+			clock-latency-ns = <150000>;
+			turbo-mode;
+		};
+#endif
+	};
+
 	soc {
 		compatible = "simple-bus";
 		#address-cells = <2>;
@@ -52,6 +129,12 @@ soc {
 		nonposted-mmio;
 		ranges;
 
+		cpufreq: performance-controller@202f20000 {
+			compatible = "apple,t8010-cluster-cpufreq", "apple,t8103-cluster-cpufreq", "apple,cluster-cpufreq";
+			reg = <0x2 0x02f20000 0 0x1000>;
+			#performance-domain-cells = <0>;
+		};
+
 		serial0: serial@20a600000 {
 			compatible = "apple,s5l-uart";
 			reg = <0x2 0x0a600000 0x0 0x4000>;
-- 
2.47.1



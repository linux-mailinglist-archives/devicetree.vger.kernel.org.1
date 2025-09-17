Return-Path: <devicetree+bounces-218334-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EC390B7E690
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 14:48:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7C8E832717B
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 10:20:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6EE536934E;
	Wed, 17 Sep 2025 10:18:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RClB7qvA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46FA336933E
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 10:18:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758104322; cv=none; b=EJUiE3mce1lULwm9+FMH31AYkxeqwMG7c9hkRA+zZBJKWdByYzugz1bw0qrLnrBuHmCGuUsEjjWDMdb7iUGVmVmzRiHFjuQnPtwiA7sM4aaHBLzTCNFNiB8h6INBrGrghS2jSDyTak4rfJxOW9DZQmu36dcm6doir+GTIW9vZLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758104322; c=relaxed/simple;
	bh=Y2b2qy3Nyf3GyD7Iwe5SpDRWOQK+1d0IaIkWEZxaouM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=G8jBZo6P6GxfVze0klcn95n83mlr+u9YyUaSoaFpbvUsUBSP9RAochlXy/EFGZhUmeDonHfL2hUiF69sBMbe5ZAHo6gfVFHFrVkYAwlcRC7U4botBeKU1XzBGPgmvKSFS1sj3sNc4SDJOrwGeEuF+bOmfUi+OB26UC8Pv27TuY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RClB7qvA; arc=none smtp.client-ip=209.85.215.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f178.google.com with SMTP id 41be03b00d2f7-b54b301d621so4398591a12.0
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 03:18:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758104320; x=1758709120; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k3lwBMTCg1xkGzoFZzilNGQBuvChETr/ISTszxUGZzo=;
        b=RClB7qvAhmyZVQo+9RgLBkPqUatYuLHTWtQQ7jLwNLfizQ+Q6ZZ1UBKOYveMZHwNL4
         pfsNKvf4LFYcual9xZxTxVni3hZ+CKZKFW+34TJfl8Ki7HAnGkCnBE1Mnu8mlej+oB/7
         PjxnjJCxR9fxcTcq6GVsQAh5fZR1uK+qBm624NnAjR9JgRhZ3w4tvv+SNQhCuueWoSIM
         CipNZEW9K0T3Vqj+uth/ikqL/rRXx3t/KloTxiaR/CEjMa1mLgkc8OLqj+6RJjAE/BBV
         Fa+GbMsk9ShmjrlwPtIEOLRqSWB2exGGFTssOIQNJGND8jEeObSVvHZcxDLWSK6kTe4n
         FXdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758104320; x=1758709120;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k3lwBMTCg1xkGzoFZzilNGQBuvChETr/ISTszxUGZzo=;
        b=YuFzYgLwfVqY3jvkc+zyM86aqzbL1vabPkaiKZHadWcyp2uJ+mXeVTdjVUGvmiVEcD
         2kv18L6gPNuySrJfe+v6BS5yJdbIjgiynwQqMoj2p++Sm33cNHiSBU9fIS5oD8JjZM0m
         roXt+TpbKgKaR58LNV/zYvz4tvW5CHfq2TwuU8wgIpNmYCOa1HD+QDS65ioCqnGjtDqp
         3RWZHjpxrQpNFkPRGoqHd6WQnxeyVODZHTP+V08VnfQzmfmJbGECwQZFFgrJ2ET1bygD
         RJJalD8LpfQDRIV465GFSWCkYDCfwefnmrYxEAD7tglTE6eWF7QEuyXLrKojS3NtpRkq
         Tn2w==
X-Forwarded-Encrypted: i=1; AJvYcCXtwIQySaI5O8XqdKquJTK63VxdlSTbE7CiOoWitdJiBOS9DQ+RRSf+BTOihmbzYZqXRKi9VDSwoDws@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0ORTJElF27EjlwkSmonxIsNzNeAW991At5BD6/nz+OneFbk8g
	sSEw43deF4qLTCJDmH3H3oOlUf6nZV+NN8KgwifD4FubGpy9Ru8acEn3
X-Gm-Gg: ASbGnctk4NLpTrtO5ANOTwg7DdctWPebqNgZAnSCI2LCmLc6NPOsOwXoPIElMjUsx2A
	D7+m4bapXIxxpm3gwu/2GKgxqpjNW9/EpO4agp8Auafs1LdRrrE0ypbqdQ9sI+9aBSocbh8qqzP
	N95aXZOzRf0k3LlQT347ihyTiE4KJ9vUlnL30kVQKI8ZfGWA6L4uOc8CISUrJAyHImc2fxUtHhL
	w1UJmrFch9mVT72/MjtYOhVdSyaCSD7wNDvm+4LIH60Y8Kt9rBZu1ERYGggNUmkGkNMsSQv/rNb
	g0sTp4gRtV1QFUXaahnjlGcpS6jScP+xmK6Z97QxxabX1WjNZraQUt5mAN2EfEAjJ9KRUJ/au6f
	vn/C+dsAR4ywNFmKaH89HODpW7/7LvPyREg6lrx42Ax/oiqUVPOgg2vG6fv6TiGDeGxwwshvLy0
	oo/bmj7t5M1Kp6tBewOD/APS65YaRnd0PXO3Lx
X-Google-Smtp-Source: AGHT+IFpwu5XMkJV8ZMehKfE4Wk0PNKKgC3/i2DNW5XrT0jCQFnppvNab6Czf66Re5ST81k11mqhQg==
X-Received: by 2002:a17:903:11cf:b0:24d:f9f:de8f with SMTP id d9443c01a7336-2681216b692mr25942835ad.17.1758104320167;
        Wed, 17 Sep 2025 03:18:40 -0700 (PDT)
Received: from eric-eric0420.dhcpserver.bu9bmc.local (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-267f4d286aesm28588755ad.63.2025.09.17.03.18.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Sep 2025 03:18:39 -0700 (PDT)
From: Peter Yin <peteryin.openbmc@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Cc: peteryin.openbmc@gmail.com
Subject: [PATCH v1 3/4] ARM: dts: aspeed: harma: add sq52206 power monitor device
Date: Wed, 17 Sep 2025 18:18:24 +0800
Message-ID: <20250917101828.2589069-4-peteryin.openbmc@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250917101828.2589069-1-peteryin.openbmc@gmail.com>
References: <20250917101828.2589069-1-peteryin.openbmc@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the SQ52206 power monitor device and reorder the sequence.

Signed-off-by: Peter Yin <peteryin.openbmc@gmail.com>
---
 .../dts/aspeed/aspeed-bmc-facebook-harma.dts  | 28 +++++++++++--------
 1 file changed, 17 insertions(+), 11 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-harma.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-harma.dts
index bcef91e6eb54..fe72d47a7632 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-harma.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-harma.dts
@@ -353,14 +353,15 @@ eeprom@52 {
 		reg = <0x52>;
 	};
 
-	power-monitor@69 {
-		compatible = "pmbus";
-		reg = <0x69>;
+	power-monitor@40 {
+		compatible = "infineon,xdp710";
+		reg = <0x40>;
 	};
 
-	temperature-sensor@49 {
-		compatible = "ti,tmp75";
-		reg = <0x49>;
+	power-monitor@41 {
+		compatible = "silergy,sq52206";
+		reg = <0x41>;
+		shunt-resistor = <500>;
 	};
 
 	power-monitor@44 {
@@ -369,16 +370,21 @@ power-monitor@44 {
 		shunt-resistor-micro-ohms = <250>;
 	};
 
-	power-monitor@40 {
-		compatible = "infineon,xdp710";
-		reg = <0x40>;
-	};
-
 	power-monitor@45 {
 		compatible = "ti,ina238";
 		reg = <0x45>;
 		shunt-resistor = <500>;
 	};
+
+	power-monitor@69 {
+		compatible = "pmbus";
+		reg = <0x69>;
+	};
+
+	temperature-sensor@49 {
+		compatible = "ti,tmp75";
+		reg = <0x49>;
+	};
 };
 
 &i2c5 {
-- 
2.43.0



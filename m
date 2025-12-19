Return-Path: <devicetree+bounces-248109-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 59948CCEE7A
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 09:11:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 046C0307B01F
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 08:10:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E132D2E612E;
	Fri, 19 Dec 2025 08:10:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LLtqOcNV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF4252E62C0
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 08:10:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766131816; cv=none; b=qLf7qjEvuwMeWMxRUyTqwORok4IyKssTEcz031MkBpIjL922cb/kGCaOnnFaZ8VuItHIAoWvw+Uj+JBiK0bVA9sZ1gd7K+ezG35R/ZNhOkPlRWs6G88dZSnm7erXlcWgJ84xJPh3LRBv1wZ0JJIwm6Ziz57p+C4vOjIYHZKS6p8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766131816; c=relaxed/simple;
	bh=d6+A4ye/JRSrS7pJrCdCy2IGur+aajOHCYd0dBHk7cc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=miCKiH/Afxsv0qNyV1/RUp+d/h3ceugfJ9pqy3Rl1OQClGAIsUvrvBkcI5UeO0Br4eM+lZYueADiUq8zgz56KlD5zGLwJbBI96acc69eBvYz40Mhb/NaqNLJhKVez+mzvVTkDFhimKVPSHVLaJZic9V3lfePd5qRwPaxq1z70uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LLtqOcNV; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-7b8e49d8b35so1930234b3a.3
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 00:10:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766131814; x=1766736614; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B/wATTXzUjfrmjvqBe4cpw13hqUTpsiU8Co9x75TxGw=;
        b=LLtqOcNVEH61z7nPBOvN5mgRqco18oih67cezrvYgftbkioIMfXMueC0b/BdJT20R2
         d4tG503ekWApKsVLy0l7CS+25XUJFAYjX+q4oQK88fyWrT3mpW4VvUVkWAQc26Yvu1hz
         WEhlYmeZAWdgdWHHp/ib/2DkmhWRGxLhAq+ZodY0vxwAQYFEcdd1CjhBFp0/uoc9yISt
         apZlwdUmQ2OBbjndA+IeUzBoXf3fNGenRnyCF9tEgeoW+AdnDAtjUzSVAqGMnqVcP70M
         0jUrnkZJKAU4NuTL9lK25fRhWSFQ1Jrn2qof7e3akLImZqjcw4If4gsoB3lThklEu5GG
         yoYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766131814; x=1766736614;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=B/wATTXzUjfrmjvqBe4cpw13hqUTpsiU8Co9x75TxGw=;
        b=o1kjg4wy2FnGCej7V5O1hlQebUMP0o48fMqRuzmlGf1wYU4ON9OLlTHQY1x7K8LDJm
         WhPlAXm+cYWDva6lsG4+Xlra4hGW2XyA+MrZl5Lsh2PlsAHnn3F6Y4F30C2o1eIdbQ5H
         wX16utgqqRnEolR8Sb/Y68Affs+GW0evbs7HTK+rfRgqIaaBT32Ry7KOFWS1gkHT31F1
         fJb8jHuEGTqNe84iJZtBsRkP9Fj/O0M9sLcsQ0gQTqFUraZ2xmz9NzSx2qMf6K/q9xWf
         i9tOkp9Wc7KBy5qladjsa4qOte8KSsLnw2lwmjN9U+5IOZd2xMUdADz8X4Ytd/4cD9mO
         zrIw==
X-Gm-Message-State: AOJu0Yzwkuf/sV5cE2fdaMnegpswtt9UwzoGXjzqxxQRSDWz7dGCRgos
	QoLdlRIqH7+ces86xbnmKKYEkoE76IEKaE2gamBPzZQB8uI3nIhYPfcz
X-Gm-Gg: AY/fxX7o4xLOZi0Nx4wriKu8+LOi/dkRHKvxs2wZshttItoop2k2bNgjWDjV2grwqcD
	3UsiX7LvqrBjeZvkqamjnMO+D5zXyJr++/elCK4ZiG4SEciBjb8/m9sSVE4FeJxwBewRqTIMZtp
	MuhG6a31Y2+LHqe/DP+bislShWp8KDppDLFd0A/elKQTQOpTzZLpuyc9PP47Qo3VeV8Oju1hHjF
	kP8+9vssvVG8AxfdZCVRXNKhs6juOumuOeVIYetwpHxzU2ZOyM6ycb82vxX6eLltKPulb4doqh1
	fINe//GSvNXg2lv+SHoZ9aDujgyQ/XaDXW5n3+/4ZAtX/t3OVXMACnkncKFV3Zhdk4GS+cqgieV
	fj40evdessD+vPgXwthZTsXllvVmeV47kTD1+tx9R5H+/A1j91mMBBonuxKHiBGZb2wERGYR3j2
	KY3neplwxX+5kKTAuio1GTZoZs/YVoIQUxS3EvQs6cJt3jk6a8bpAxjpHfZnQOthGGBI5aFVN3V
	AiDLy52vE6iZ4R2xcReyjgUubavqJJdGXKoJuvGVNAjr//gzuKGH9LnlIIaHuu/RipoBsmCOv9Y
	f0eL5gt1gcw4+SUo7FI6vg==
X-Google-Smtp-Source: AGHT+IFgG/kkmFnup93ef4j7B1YogbwF3xY5WX20Fy1r8auW4FLn7n6hE0zs3aNr4OERdmMnPXW5Zw==
X-Received: by 2002:a05:6a00:340b:b0:7e8:43f5:bd1b with SMTP id d2e1a72fcca58-7ff6735eb46mr1956944b3a.48.1766131814009;
        Fri, 19 Dec 2025 00:10:14 -0800 (PST)
Received: from 2001-b400-e3ff-afb4-41b8-b31c-89b3-0a14.emome-ip6.hinet.net (2001-b400-e3ff-afb4-41b8-b31c-89b3-0a14.emome-ip6.hinet.net. [2001:b400:e3ff:afb4:41b8:b31c:89b3:a14])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7b423d86sm1597274b3a.26.2025.12.19.00.10.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 00:10:13 -0800 (PST)
From: Kevin Tung <kevin.tung.openbmc@gmail.com>
Date: Fri, 19 Dec 2025 16:09:58 +0800
Subject: [PATCH v3 5/5] ARM: dts: aspeed: yosemite5: Correct power monitor
 shunt resistor
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251219-yv5_revise_dts-v3-5-ca1d5a382013@gmail.com>
References: <20251219-yv5_revise_dts-v3-0-ca1d5a382013@gmail.com>
In-Reply-To: <20251219-yv5_revise_dts-v3-0-ca1d5a382013@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Amithash Prasasd <amithash@meta.com>, Kevin Tung <Kevin.Tung@quantatw.com>, 
 Ken Chen <Ken.Chen@quantatw.com>, Leo Yang <Leo-Yang@quantatw.com>, 
 Kevin Tung <kevin.tung.openbmc@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766131796; l=1969;
 i=kevin.tung.openbmc@gmail.com; s=20250924; h=from:subject:message-id;
 bh=d6+A4ye/JRSrS7pJrCdCy2IGur+aajOHCYd0dBHk7cc=;
 b=qSGjSNQeX1Dihy5AoAeuN0WLNCmP9mWMxheaWMyYmyLGs6Z5Fvgxy2/YCQj+mh1ZmYpDVu1e5
 rnyjJgRsPAaClSr4Yh6wFnM2/xuqfEFAb4P/YClhlBd0Uv57GidsdCb
X-Developer-Key: i=kevin.tung.openbmc@gmail.com; a=ed25519;
 pk=PjAss0agA0hiuLfIBlA9j/qBmJaPCDP+jmQIUB6SE7g=

Correct the shunt resistor value in the DTS with the hardware setting
to ensure accurate power and current measurements.

Signed-off-by: Kevin Tung <kevin.tung.openbmc@gmail.com>
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
index 84d3731b17f7c7c87338672bbcc859de2b89b722..524597a81365ef10cd03b67d35eeb88a965cbe0a 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
@@ -415,7 +415,7 @@ power-sensor@42 {
 	power-monitor@43 {
 		compatible = "lltc,ltc4287";
 		reg = <0x43>;
-		shunt-resistor-micro-ohms = <250>;
+		shunt-resistor-micro-ohms = <100>;
 	};
 
 	power-sensor@44 {
@@ -461,25 +461,25 @@ eeprom@57 {
 	power-monitor@58 {
 		compatible = "renesas,isl28022";
 		reg = <0x58>;
-		shunt-resistor-micro-ohms = <1000>;
+		shunt-resistor-micro-ohms = <10000>;
 	};
 
 	power-monitor@59 {
 		compatible = "renesas,isl28022";
 		reg = <0x59>;
-		shunt-resistor-micro-ohms = <1000>;
+		shunt-resistor-micro-ohms = <10000>;
 	};
 
 	power-monitor@5a {
 		compatible = "renesas,isl28022";
 		reg = <0x5a>;
-		shunt-resistor-micro-ohms = <1000>;
+		shunt-resistor-micro-ohms = <10000>;
 	};
 
 	power-monitor@5b {
 		compatible = "renesas,isl28022";
 		reg = <0x5b>;
-		shunt-resistor-micro-ohms = <1000>;
+		shunt-resistor-micro-ohms = <10000>;
 	};
 
 	psu@5c {
@@ -723,13 +723,13 @@ gpio-expander@21 {
 	power-sensor@40 {
 		compatible = "ti,ina230";
 		reg = <0x40>;
-		shunt-resistor = <2000>;
+		shunt-resistor = <1000>;
 	};
 
 	power-sensor@41 {
 		compatible = "ti,ina230";
 		reg = <0x41>;
-		shunt-resistor = <2000>;
+		shunt-resistor = <1000>;
 	};
 
 	power-sensor@42 {

-- 
2.52.0



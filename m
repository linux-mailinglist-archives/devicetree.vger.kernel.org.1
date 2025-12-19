Return-Path: <devicetree+bounces-248105-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 966E8CCEE56
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 09:10:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 09F5D301F7C1
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 08:10:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D8292DC781;
	Fri, 19 Dec 2025 08:10:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eeTT4Q3j"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B4A52E11BC
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 08:10:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766131809; cv=none; b=EIfTlYlrdV+STE2v7koB1nzANPJFnM4R8hJ2hvtGznYxMoHTronkyKzLq/vrd0BFnM8Gi/1WzsbDaaocAoVAGQH8j/Opdy94qD5aHKSm91MXTPsgaYYZsTOrTrbpNm3ug1XF4Zhz/bGYuEGgWfwvQHDIcric0i95V9kP8Sb8oCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766131809; c=relaxed/simple;
	bh=PuGP3tDDyva66stpyd0PfJUp+oeZiyMMNMGNoISiM78=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EG97n4Owy+RgzxDLaBDJ2FeQP3KlmagyGXX3XisSeVZEBFdbh+qQJuYqYfp7HWDZBKNIUXvj3K5ja2O704Ec7uaG2btzQRyy+15sMYWLRlF4gMVJcFkzVMGWMfRQQmy3BXB1KI/tQwJ+xTeQ/j/xKqqGi6drtpVKuCHy62PWKZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eeTT4Q3j; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-7bc0cd6a13aso940086b3a.0
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 00:10:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766131805; x=1766736605; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=34Z/wqK33nY+/r9/my4gnemDx7jJlFUXcUiWHmEPYyc=;
        b=eeTT4Q3jv5FVInv4UR3sIannvw/TX2RXdtgUDYDpdzwgMu/kdrSX+P+v+KWx+cypWI
         +HAxJxlxS1zZB9hufhVrVE2Mzv/t99GNqcVpJKhjBoBRlNXwCdMTmNWItj5tyFC0JyYg
         RkGDGZNcJ4FoN8+5n0SJLRI4NDyKwPaNaVNRxcj6jndItGxtBLXEK4huQHJtd1cDifAk
         iysEJuWF+ncR6x2n0VTZxn3j2QIpEnyaEz9XWakxxB9pxo4kIwHWMnUsd004uOSvoQSL
         bou11UVVRkJsIcJR52gJQH5BjsIpqZL00RYNotIF1tQblK0pDURMZHurS62EmjNIvpQr
         DSeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766131805; x=1766736605;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=34Z/wqK33nY+/r9/my4gnemDx7jJlFUXcUiWHmEPYyc=;
        b=EEINMX5/eXge/t7ERncCI1dgnQGZN5cwubomnLAPh0ta88KsR/rbn9Zp+DsWN66bUT
         /uC0MJKS8eL0GfKYGdLS/88jXSTr3ngepNX3DTyCkK47lcSTOsQo6xNNmzrFNm7lctsj
         xBEjM12Hwki6Huox8dKnC3MeoYFRQE0NFRKHvTS25u+tdLzPNI6wtcD3ep/aOaRPFQq+
         xkUy9t9Fp1QLmPSj28sVmdbTdrzy7/4gpIMsaLmOzpkPE4n+eF2inaB0+ZScihhVFyYu
         3WxtxrFAbv86UBzQKgJNwnbJ+APZuvHVui3LAoZEHJ0Mga86Ie/dM4zFwWtq8s7LSEEJ
         RuRQ==
X-Gm-Message-State: AOJu0Yys5Soi4SDc2iNPbCqORsuWgW1yHGN6KIe4LtiI1BFhxfjQWBD7
	rPjHomphBrinM0rClWq5+m0AHrz1ZSI19L4QVMqdt7z0YcHiwWU0/vjw
X-Gm-Gg: AY/fxX4Gk42xYwAAF7PC+ZZklUK1tZCeFVbTm1Vyb95WvJ0uyDtgmp5ERSq5gU9Rt6b
	jfzFMefa2cukA3HA0U+dF9lUWU6SfvGOXvDVZhJ6yiqS8xrFU8oDmuOx5Km5XZcuvMHqda7Uogd
	KvYt+4ly2Fsyeka2/RHUwR5iAlVOWz8jGwBZII8vwzQ2CLD644QJ3THxC0mWkJDIK/TsP2KCVxm
	lFpqpoLH5NWg2jg7BAMt4XY3bJ7qh+NA+Hhbf1FO7KebSDv/9I2a1WMx6isyDPzp0watbz0fs5/
	dutJ184ujOCoP+p1Yir9LOQyi5OwvjbuzmDpuEKtPpQ58oD0CM+I8URk/NmghJlVCeOnyj5UfgD
	NKD1AHjWEM7fRU2NWTAddZ61sGGWWGLD5uw/aXepHKjehtK5kTCZjzddPMmuztw4v49wuyH1EFd
	qqb9q25NIFNUOoZTFedWslpo0IWUVDxE4U4d2mbMasgGN1MaBCVPcTux0PYMBXcugJfXjCpsB2u
	t1W+uZ/HNzuWaUdqaImxtvCfRLRcgM1JO+n19F5thRyXyUsvemZNfD8V0NVWm5C5wEwsHOqxu5s
	hGmNpUJ7Rr69+8rSNcFUpA==
X-Google-Smtp-Source: AGHT+IGqfS6t0BtWWUQ+A8QtFK38ikOJaZeZ58xc+M9BKY805z21T0J3RpJjQXDHps61ueUVFOAmaA==
X-Received: by 2002:a05:6a00:4514:b0:78a:f6be:74f2 with SMTP id d2e1a72fcca58-7ff5284da68mr2523709b3a.5.1766131805321;
        Fri, 19 Dec 2025 00:10:05 -0800 (PST)
Received: from 2001-b400-e3ff-afb4-41b8-b31c-89b3-0a14.emome-ip6.hinet.net (2001-b400-e3ff-afb4-41b8-b31c-89b3-0a14.emome-ip6.hinet.net. [2001:b400:e3ff:afb4:41b8:b31c:89b3:a14])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7b423d86sm1597274b3a.26.2025.12.19.00.10.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 00:10:05 -0800 (PST)
From: Kevin Tung <kevin.tung.openbmc@gmail.com>
Date: Fri, 19 Dec 2025 16:09:55 +0800
Subject: [PATCH v3 2/5] ARM: dts: aspeed: yosemite5: Remove ambiguous power
 monitor DTS nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251219-yv5_revise_dts-v3-2-ca1d5a382013@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766131796; l=1501;
 i=kevin.tung.openbmc@gmail.com; s=20250924; h=from:subject:message-id;
 bh=PuGP3tDDyva66stpyd0PfJUp+oeZiyMMNMGNoISiM78=;
 b=ty83E+CYPB7Z6jW6eduvzKPvIngjQn4TpP4Y6GcwiwBZ0tmTuJIQuwghpPnsofiRPA6UAL0hO
 BjCASEV0a3fAYR1htzZYqxa15v0nKqfsi4GSl0D+O9I7qe5YfHNYPRy
X-Developer-Key: i=kevin.tung.openbmc@gmail.com; a=ed25519;
 pk=PjAss0agA0hiuLfIBlA9j/qBmJaPCDP+jmQIUB6SE7g=

Two different power monitor devices, using different drivers, reuse
I2C addresses 0x40 and 0x45 on bus 10 across Yosemite5 board variants.
Defining these devices statically in the DTS can lead to incorrect
driver binding on newer boards when the wrong device is instantiated.

Therefore, remove 10-0040 and 10-0045 device nodes, and let the driver
selection is instead handled in user space by the OpenBMC Entity
Manager based on the actual board configuration.

Signed-off-by: Kevin Tung <kevin.tung.openbmc@gmail.com>
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts | 14 --------------
 1 file changed, 14 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
index 7991e9360847532cff9aad4ad4ed57d4c30668a0..45b8ac2e8c65a4f672e64571631b7f6944f26213 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
@@ -674,20 +674,6 @@ gpio-expander@22 {
 			"PWRGD_P3V3_AUX","ALERT_TEMP";
 	};
 
-	power-sensor@40 {
-		compatible = "ti,ina233";
-		reg = <0x40>;
-		shunt-resistor = <2000>;
-		ti,maximum-expected-current-microamp = <32768000>;
-	};
-
-	power-sensor@45 {
-		compatible = "ti,ina233";
-		reg = <0x45>;
-		shunt-resistor = <2000>;
-		ti,maximum-expected-current-microamp = <32768000>;
-	};
-
 	adc@48 {
 		compatible = "ti,ads7830";
 		reg = <0x48>;

-- 
2.52.0



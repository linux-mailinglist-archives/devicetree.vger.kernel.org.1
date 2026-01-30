Return-Path: <devicetree+bounces-261117-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SDjPKFRqfGn+MQIAu9opvQ
	(envelope-from <devicetree+bounces-261117-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 09:22:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F3ABB84AB
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 09:22:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4E9D7305616B
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 08:20:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A233352C5B;
	Fri, 30 Jan 2026 08:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GZU6vkjF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1616353EC5
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 08:20:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769761233; cv=none; b=m26ls/e8+vtTHSW4IeLoih1d0CcxzoLwSmwIXO1vc5riuGf39GSY6BryJbsp23Agum1gzwrQ+zcx1k2Dsr0w5/mqCaxU1jxxPjMmDo5GMo2kkX+wPLxsJOsarZo+abqkIW018b+iYiN3yllYrT4vA9KFYRr6JcNqIZ7ihhfuru0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769761233; c=relaxed/simple;
	bh=xJ4jSm7ucaz8Rq11dl/v2sadnR+9Q4t/tqVDqA3oOEA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GqVMXUpb83AaNpEhl0G4K/q8XKZaVl1XtNL7WRyITgi6SOPLlL3VGmgvRCJCENB1TFJyijpUp9HnDaAgpK1S4D1Es6m+O1Y4sMD4ljTLe8eo0kDY4qUoFBpm/lJikcp+q1p4YcXUMUQkT3XCCkVuHr1L3Tptr60cZRmgc6XEqt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GZU6vkjF; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-2a7a9b8ed69so17850215ad.2
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 00:20:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769761230; x=1770366030; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ajY33JbgcBo2+n4qVxxMLBcw2crou+yf+Z7Z73b2liI=;
        b=GZU6vkjFbci6hY6SEBfxREHvfFmJpjzOD5MxHrFPey/3BPHTDiFg8EAdhg5XaXMuVe
         VmXa4EvGVFBBVqJz+xFcB9KBDRCQGRQSoJ+5KPVOpAErbIsHxCbHFl0jvzdMLzJjwvQH
         KZCgrCs7WaQ1Qle68SzBtNHKP03UUqhYAScs0OAGAE1P20X0ie+VhR9jODOA9tdh4sUz
         4dhJbSIuYD+lygAj2fbx0CvnvIJAmgEu7OZVVqE8yWMYBdaKW321DpPichYGScj0jEGs
         +mSgQ5iAyE/aGTuYyTSUFzZTPnzKLLHlpfp9lNj3nw4mnHoZTOVUZxd9/wVYo0+xC7UG
         SwgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769761230; x=1770366030;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ajY33JbgcBo2+n4qVxxMLBcw2crou+yf+Z7Z73b2liI=;
        b=GJ/p+y306BLB7TZH+O/s8fH3D/UgDTGQZwog/DGfcOqDca3ClHGiupuD+awNdgoLo5
         Qy48MDiClJGHZfy2m4/27EFt5+UeX9Lvi+XMkQozYue3Ir2+PrFQ2FLQkb3k9LcpIg6H
         h5IGaXQGMCMiqfRqOzjldKIOelchF8DEGD9zX0HygpjDQA5EtwcDR1Vbp1SGSoj8lwEI
         NhAzOYNnIy7TSCJBHO3Hd7SJXCEmz3f7StMDq0FQBot6R8U8wnRHGkJZnoo95eWFJ324
         565LdqsrqHvVT8CcsItLV7F95uwATT4glwuHXAKk2NiAYruoT3vw2Xmfz0jGy3P/3zrY
         RyVA==
X-Gm-Message-State: AOJu0Yy/YcgO50bk0i7ObJzRTvDWMPuOn0q3FCvCwHY9tW+CLguczUYp
	G4HzOW6517gwdHd0btqdvk4WFG1Yt6jGMuXSnk4W2dH+KOCV3spYGMEH
X-Gm-Gg: AZuq6aKufkiLOlOyYAdoCDNaFg7XRiYBJMdECKTQOGaSDyC11FrK5DZsDAXxb0TZ2Cv
	dWPSUlS1RXyMF2A69x3NlIiBJdrSUYJWC8lYuMn9AQmKQ155rtQHZ1ZGATL1rckRNyF1kkhi386
	blPI6x/fO/Bb5x9o9vYIb2vf0dFXFzcg1QGsA7tQsrxugeas09RDIT/HjehB/S+aYFwMczCYI+v
	bWXC2PzvSLLGDmd/d59xDb1mhU3IPn3RuLBHU4C6IfyM0mKcVNEBwxtDSB9+6CWqORbxZhNtWYH
	UcrPSKOg6D4kERE5IR9T0GGWqwUfbVap+WlQO0s/xVgT/PmXqv6EX3Q3YqdqODx8B8zeMvVI0VG
	IjtlJFwluhumcf33Eynq1I9l+I3ZXPF+3S9qwOHC8MljPTCqUh7UYead4tmXhRI8BKfa4BovE30
	BUdiXjBsTnItqD6YYPICc9NUvPNXk8OzjLmIU8ht+YIIc6pHhbFD+ODU3EuVEAzphVubL/JcXLB
	DgOJ0NmLVsTAZrXtm7BzuLGXUQ/3KAdm7HhjpYynm18i2xqOWQep2yndfWLHBqdybhI2LFuwXrR
	2V4MtTUrIdkX
X-Received: by 2002:a17:903:1447:b0:2a1:5d2:2e45 with SMTP id d9443c01a7336-2a8d9a85d83mr22102745ad.59.1769761230333;
        Fri, 30 Jan 2026 00:20:30 -0800 (PST)
Received: from 2001-b400-e3e0-2a58-5bcf-a65d-c80e-2087.emome-ip6.hinet.net (2001-b400-e3e0-2a58-5bcf-a65d-c80e-2087.emome-ip6.hinet.net. [2001:b400:e3e0:2a58:5bcf:a65d:c80e:2087])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82379bfc712sm7866018b3a.40.2026.01.30.00.20.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jan 2026 00:20:30 -0800 (PST)
From: Kevin Tung <kevin.tung.openbmc@gmail.com>
Date: Fri, 30 Jan 2026 16:20:13 +0800
Subject: [PATCH v4 5/7] ARM: dts: aspeed: yosemite5: Correct power monitor
 shunt resistor
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260130-yv5_revise_dts-v4-5-4d924455f3a7@gmail.com>
References: <20260130-yv5_revise_dts-v4-0-4d924455f3a7@gmail.com>
In-Reply-To: <20260130-yv5_revise_dts-v4-0-4d924455f3a7@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Amithash Prasasd <amithash@meta.com>, Kevin Tung <Kevin.Tung@quantatw.com>, 
 Ken Chen <Ken.Chen@quantatw.com>, Leo Yang <Leo-Yang@quantatw.com>, 
 Jackson Liu <Jackson.Liu@quantatw.com>, 
 Kevin Tung <kevin.tung.openbmc@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769761212; l=2209;
 i=kevin.tung.openbmc@gmail.com; s=20250924; h=from:subject:message-id;
 bh=xJ4jSm7ucaz8Rq11dl/v2sadnR+9Q4t/tqVDqA3oOEA=;
 b=MPGZXI3K7EwDVf3iP1xdEiwNx8Gw/EdFZ5MD8WuQYvke+Oa98YGg0p8X/7fw9xuc6+aD3ukLf
 Wz12IaCBA24DhksL6kj+wgOmVgfjrmA9401ODbKemoi7XzkIXnygNwP
X-Developer-Key: i=kevin.tung.openbmc@gmail.com; a=ed25519;
 pk=PjAss0agA0hiuLfIBlA9j/qBmJaPCDP+jmQIUB6SE7g=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.ozlabs.org,meta.com,quantatw.com,gmail.com];
	TAGGED_FROM(0.00)[bounces-261117-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kevintungopenbmc@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.42:email,0.0.0.57:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[5b:email,0.0.0.58:email,5c:email,0.0.0.41:email,0.0.0.59:email,0.0.0.43:email,0.0.0.21:email,0.0.0.40:email,0.0.0.44:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 4F3ABB84AB
X-Rspamd-Action: no action

The shunt resistor value defined in the DTS was incorrect and did not
reflect the resistor value populated on the board. As a result, power
and current readings derived from this value were inaccurate.

This change updates the DTS to use the correct shunt resistor value
according to the hardware design, restoring accurate power and current
measurements.

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



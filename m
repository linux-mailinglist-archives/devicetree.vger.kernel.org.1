Return-Path: <devicetree+bounces-267366-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CKu2Nhs4nGlCBgQAu9opvQ
	(envelope-from <devicetree+bounces-267366-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 12:20:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 345B6175672
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 12:20:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5EB1630847CA
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 11:17:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 417FE361650;
	Mon, 23 Feb 2026 11:17:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LuzG3p6D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF22E3612EE
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 11:17:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771845476; cv=none; b=RRvKHcF1Gwn4lQEyWA9UFVbqAA4sdFqQBsRP3Xb9wxNo6aOY6yQPqXtKxBP2t4A8jf6PnHypB2b//gmoEHB78IkVlf/W4vjIBjtmWpy0Ga2bZ6txJQvmoaNiHBpDVUpM5WViJgyFbF1I+17P7w28r4c4PkpVteNIMfCZ+wdPZsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771845476; c=relaxed/simple;
	bh=ixqQRGuzXvJ/yWnzkJIxe9zfdUzHdt5VjvjnntBpEuc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MRzXlV3SWFoWKl2lWi8TolQtl4yE0uPI/6NwAFP04Mfn3d1LU9nqUM4O3Oh2ed/Z6gtEUqtex1xjv6KWQhCH1xHOBs+JEd6+8nQ/sHNEQSaoA90LeefOpZcckv2H8UY6jIGr7sofhz7wJFsOUwQCsECGgorIsIN8cY27nBe36MM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LuzG3p6D; arc=none smtp.client-ip=209.85.215.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-c06cb8004e8so1787837a12.0
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 03:17:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771845474; x=1772450274; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2a5/NI1b3Xz62eOwxI7HWvsJZmIoYETpiMrjetxhsrM=;
        b=LuzG3p6DLlnzOEmb14bwdw9F6iHmOHPFCNZW/yB2VY92QOAXAAnv4PUi1Rb2KSyn4b
         TFw07RsdX66j8ZSduJk0H5MLEO5iE2r7zeEYtVdFETTBEJ3Lk/Ua21FUtXks9OdmG1OY
         F1Pf9usSPMe+4SXBhS6mIVIqDEHLc79AtZBb8MLnMrO+zsAenqpTysnyKsbfX1ghINmY
         irYh6+xRinx/hZfdnU8wknKVygQEQygzry89pdGWA/auCPFx5DKwTfF8VdpJaZy/ILYd
         WxebavnYro0jjThDpAgfVLGbQkFbMaWa4bFmAG7EzWkv569iFWTud09azQ2dS8PVfC7x
         oTdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771845474; x=1772450274;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2a5/NI1b3Xz62eOwxI7HWvsJZmIoYETpiMrjetxhsrM=;
        b=GrgtfU+HXqKt3DKKrciueIQ0+bASQTqSacvP70mm2dX2obmJyplsF/f1i4b+fRYsBP
         l9mSz1T1gSl8Qku0mPuLE321BkNtU3lnAQxL9mkgO9XRxFX19cZM4Ysrwdw2wo+R4x1S
         xYzpTUNy6s6nxhn2cYy0h2/pVZRGDB4fYzthZcWJxegyG0qiHawlzwyb3aQe65QQXGnj
         7AVBo16HyyTch0R8+Lk8tQhDBz9NUVLBFA42mtbjW9pEl9CCLEZjiKXRFWahtEXDrDgK
         AMbWvUczsm/a+9+HfkJWpvWrgiQ6QHnAzmC/6vdsuaGZsejUhDRl1yg0S2WVHhSKILoj
         OzIg==
X-Gm-Message-State: AOJu0Yy9tp/0Q4KRbQ9nwppFrV+2e6tq1d5oqiJRhj1sdCxTrdD6TjSI
	XTqJO6Le5cf16KzWBpXYxtHPSVVy5RANYp81DyWgeYHok7A68WcSgfxg
X-Gm-Gg: ATEYQzxG3ubuf3KQSq8caATiYVX9tNzNs7KERMB/BEyVWfVpZeHUxQ2QAB/4/+4zpc6
	fy9Jc7Ho2BL+ZEr2O+CY1dT6EIacti4S8k0Y59ilK00wclcf8zqDWiIzuciWxhkqhpITfXLkYGf
	0It6eIxkmItXandoL+I93NOdL7J37D12IWiBLhJV0UVRkmn8e0TF+bMEEWAsNH3YnhxcVc5g5Y7
	/K+933baDSeJSo/8zF6ot5cIaBwobNXEeZSCaizbsEdCdlfTYLBi5yzliRw7iqu8VSD4qvSydQY
	aMbOTfAArOl9K35gPVe+O15SGzrJ3VSB5jIfpvIDbkma8nK+KUzQzVc4YGtaPLm7mqME17MBTjD
	mCr22wjBTTCs6YrXUj7xAeaZeavUZk5+vuAx4vyEwIY8EvxPDZha0d9UX++4qOwOg9rL+FxD7Xh
	zqHc2FCy6j9TaiRXVnTjtP3/KFmwftckNgRZOvprWCYACzVUQPidAUzV4lXKJtfKlptfAuKj4tI
	mPTXB4a+t24r0Y6mDg0xp6qcAQlupj+/NzPm0v/x2I5TnbsaviwTTgO4a2+BhiFh7G6ECnb6MHE
	KSPfoqqdLg+4hamFlBWc
X-Received: by 2002:a17:902:e5cb:b0:2aa:e55b:22b9 with SMTP id d9443c01a7336-2ad7455429dmr80003975ad.41.1771845474242;
        Mon, 23 Feb 2026 03:17:54 -0800 (PST)
Received: from 2001-b400-e3a6-b683-040b-c296-04cb-fbc3.emome-ip6.hinet.net (2001-b400-e3a6-b683-040b-c296-04cb-fbc3.emome-ip6.hinet.net. [2001:b400:e3a6:b683:40b:c296:4cb:fbc3])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad74d36911sm71799335ad.0.2026.02.23.03.17.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 03:17:54 -0800 (PST)
From: Kevin Tung <kevin.tung.openbmc@gmail.com>
Date: Mon, 23 Feb 2026 19:17:37 +0800
Subject: [PATCH v5 5/8] ARM: dts: aspeed: yosemite5: Correct power monitor
 shunt resistor
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260223-yv5_revise_dts-v5-5-fc913e902488@gmail.com>
References: <20260223-yv5_revise_dts-v5-0-fc913e902488@gmail.com>
In-Reply-To: <20260223-yv5_revise_dts-v5-0-fc913e902488@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Amithash Prasasd <amithash@meta.com>, Kevin Tung <Kevin.Tung@quantatw.com>, 
 Ken Chen <Ken.Chen@quantatw.com>, Leo Yang <Leo-Yang@quantatw.com>, 
 Jackson Liu <Jackson.Liu@quantatw.com>, 
 Daniel Hsu <Daniel-Hsu@quantatw.com>, 
 Kevin Tung <kevin.tung.openbmc@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771845456; l=2405;
 i=kevin.tung.openbmc@gmail.com; s=20250924; h=from:subject:message-id;
 bh=ixqQRGuzXvJ/yWnzkJIxe9zfdUzHdt5VjvjnntBpEuc=;
 b=rEG1ITCj4xw+8LHWUtz1K9lRGjkpb8uwC29tFg8vEbG1Nztv83RRuY/28KwaccWv+E5EDN7a5
 F7DDcO4w3mXDyQTbjKx+NT2Tdcr3zsA7eLpOO8wKtZtuwQUbVucA3m2
X-Developer-Key: i=kevin.tung.openbmc@gmail.com; a=ed25519;
 pk=PjAss0agA0hiuLfIBlA9j/qBmJaPCDP+jmQIUB6SE7g=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267366-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.ozlabs.org,meta.com,quantatw.com,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kevintungopenbmc@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 345B6175672
X-Rspamd-Action: no action

Correct the shunt resistor values for the power monitor devices in the
Yosemite5 devicetree.

The values originally defined in the DTS do not match the resistor
values populated on the production board. The discrepancy was caused by
using outdated pre-production hardware documentation during the initial
DTS development. As a result, the power and current readings calculated
by the driver were inaccurate.

Update the DTS to reflect the actual resistor values present on the
board so that the reported power and current measurements are correct.

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
2.53.0



Return-Path: <devicetree+bounces-316592-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LRgADqOnQWqMtAkAu9opvQ
	(envelope-from <devicetree+bounces-316592-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 01:00:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EA976D5363
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 01:00:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=E1DzJotz;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316592-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-316592-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 46DFC30094E4
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 23:00:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03E0C373BF6;
	Sun, 28 Jun 2026 23:00:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f44.google.com (mail-dl1-f44.google.com [74.125.82.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A91FF367B90
	for <devicetree@vger.kernel.org>; Sun, 28 Jun 2026 23:00:46 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782687647; cv=none; b=OMAGZ2UKFCFLGY2HXs9EI3LROw2n/x+M5EJocF28Wq5dHMu+56LRh4fy17zcZho2soYZcrlXSudRlcFM0DG87ZUjQBeOdXo/49W9r2MucnJnVXrHWbVJSpRD8ryFUJOLNZArPH1ilzDKd+Rh6Mhg+1pMxjW3QXOoTNHlC2ns9Wo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782687647; c=relaxed/simple;
	bh=Zbtl4jHOXkECov4sewB89l3XG6JiSGFpdQIH77dwV1Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=QV60viWVeHSZ7zrO9ovirHnogJc3PY5VUdU6CF3zZ8wkIFW1mWeyKjtCoun2MGD3vXOqlxf7XfYjVUZQ/3JjZCEddwZGwMjp0zZDqwr2A1INXuxgMpNwH1JF6R1dJkEbYKJMZ2rUWRBcbLlxa2N2HXUvMVq/ILF02WR0YDxJNJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=E1DzJotz; arc=none smtp.client-ip=74.125.82.44
Received: by mail-dl1-f44.google.com with SMTP id a92af1059eb24-139a5f4ca15so3142498c88.1
        for <devicetree@vger.kernel.org>; Sun, 28 Jun 2026 16:00:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782687646; x=1783292446; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tjJ5yefLO5Lv7O368+n/XQBys5bCKstA5+2Lfq1JqAE=;
        b=E1DzJotzo81cBcueIN5jGF4TmtfKR/2ZFbdiq2kjJgUXH4Lh4qzSmlMuNpg4MZrcdz
         x2qjYqUSrHlIeAjrVr+g/AaAL5rSg0cWUnmGv9rNLlmatso/DDBEhgKLkOBSc3B2psb5
         tkkqcqUa2pdrraLUzm7OAi4NILU4O0qmLDvijtiV4tctvX/dSrMpqx3Lf0/qgD60nA6N
         rSrtLi7p1DXVZy1XB7T6N+0698fYkvNIYysUSAN+T+U5LAJXj5jKtYoyAgChcWxiACzo
         xoE7TK//h3GaaVlaZ0C8iakITAebKAD8DWWST03FW92Z0jrwXI+ABT+unjwmdOFBDnPy
         YlKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782687646; x=1783292446;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tjJ5yefLO5Lv7O368+n/XQBys5bCKstA5+2Lfq1JqAE=;
        b=pK+VaE7Bf7HkVha3i3BAi76xU+j1w7slUoUk8e6WsdJLjT/um7cykNY6nmbAfgGa77
         UVQL4WNoIwsaaqONF2JMWsFk2Qb91tO7fydrk0EkBQyGpIBr13wxqUIAYdHMo8m1nMB6
         BUxgH+0jW3Jg+p1ccPzAKSNmTU6A/Vw/pbuXpg2NHN6NopVmU8demX/Prwr6PuSLdshF
         Xm7UNsMNQA4AnG+aa89HWxcceNsdRyij7pCCJqHu1ZAcYZgT3ryRdb0iw73zN2IKa5ua
         bY95+lw4322BN4RgUPZ1SbnsyVTPP4CrcexAr7zTxcHWSeJJ+SW9l1XpHKYHJWjk8jm+
         TFcg==
X-Gm-Message-State: AOJu0YyVj912gsjhXjPa3fVu7FndYzbky9tAENw9H5GWLR1tmTMN/OoC
	QZMc0lXjO4m5XGhslCvywb0VBrS1u12DGbpnE8b+CT1cMtXKMB3GLU6GcKWBvQ==
X-Gm-Gg: AfdE7ckJEFK8/uHWgDi5A52Z0Ad67nQ20zwE4jjI2WusXUW5QmkXb3clb4iNL+br6ph
	6irFoHky5abGaSIoKbJJktq5b1wmxUfIA1l7ph9snnTTXnUWQwFN+vcDaamjoBXHPEJlSnvlRdB
	7dD0671R+67JPXMLmwK1/Tk73j1ciUoPJ2Krle2GMWoJFojb0LxFRUHqZjy8gTH6Qv9yeCaxJ36
	sTAVWy3v/LRuUTKsNbBn0FBWzcgP4ezXn4B5EU9GXIPRJyvsO4V7BupCh5mbjj4uB7CyN2LyvM1
	MnAeVt+xE2GfZsUo3RYHBbaAuFWDRed7T4x65I3eQyYU4lr2yuS103/6SfmDL9fGyzStzhGRVco
	A6lUeQenTe3IrFrKd0Ukw1H9ugUNST/b7ADPhV0zuQNreq8+e9oastQQyZKUS+KjvApfkYmA9tF
	mf6nJRWNsOVtUPirjpxQlxZWkOCObdh9S81pAyccgN1cSmcM8FazMgkRp/3RD7vLFh7Ru4MG6rk
	NT979ijFQ==
X-Received: by 2002:a05:7022:1e05:b0:139:ed59:4b86 with SMTP id a92af1059eb24-139ed594c61mr6552255c88.42.1782687645642;
        Sun, 28 Jun 2026 16:00:45 -0700 (PDT)
Received: from ryzen.lan ([2601:644:8000:7a86::e34])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-139d8f318e7sm41359030c88.3.2026.06.28.16.00.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jun 2026 16:00:45 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: devicetree@vger.kernel.org
Cc: Andrew Lunn <andrew@lunn.ch>,
	Gregory Clement <gregory.clement@bootlin.com>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dennis Gilmore <dennis@ausil.us>,
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Marvell Kirkwood and Armada 370, 375, 38x,...),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH 1/4] ARM: dts: helios4: add vcc-supply to EEPROM
Date: Sun, 28 Jun 2026 16:00:39 -0700
Message-ID: <20260628230042.1204293-2-rosenp@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260628230042.1204293-1-rosenp@gmail.com>
References: <20260628230042.1204293-1-rosenp@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[lunn.ch,bootlin.com,gmail.com,kernel.org,ausil.us,lists.infradead.org,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-316592-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:devicetree@vger.kernel.org,m:andrew@lunn.ch,m:gregory.clement@bootlin.com,m:sebastian.hesselbarth@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dennis@ausil.us,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:sebastianhesselbarth@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[rosenp@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rosenp@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9EA976D5363

The at24 driver requests a 'vcc' supply for the EEPROM, producing
'supply vcc not found, using dummy regulator' at boot when the
property is missing.

The EEPROM sits on the Helios 4 and is powered by the
same always-on 3.3V rail used by other on-board I2C devices.
Add vcc-supply = <&reg_3p3v> to silence the warning.

Fixes: ced8025b569e ("ARM: dts: armada388-helios4")
Assisted-by: opencode:big-pickle
Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 arch/arm/boot/dts/marvell/armada-388-helios4.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/marvell/armada-388-helios4.dts b/arch/arm/boot/dts/marvell/armada-388-helios4.dts
index 390e98df49c9..05540b8012c2 100644
--- a/arch/arm/boot/dts/marvell/armada-388-helios4.dts
+++ b/arch/arm/boot/dts/marvell/armada-388-helios4.dts
@@ -201,6 +201,10 @@ temp_sensor: temp@4c {
 					reg = <0x4c>;
 					vcc-supply = <&reg_3p3v>;
 				};
+
+				eeprom@53 {
+					vcc-supply = <&reg_3p3v>;
+				};
 			};
 
 			i2c@11100 {
-- 
2.54.0



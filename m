Return-Path: <devicetree+bounces-325436-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MBi9No/FVGoLSwAAu9opvQ
	(envelope-from <devicetree+bounces-325436-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 13:01:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B4AB974A164
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 13:01:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=thingy.jp header.s=google header.b=GidzM9rj;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325436-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325436-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 44980301D608
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 11:00:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB814386423;
	Mon, 13 Jul 2026 11:00:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7829385509
	for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 11:00:27 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783940428; cv=none; b=F1DhXw+4kFAg2mnxSZehSQ7l1+sX2OOBUooPEfS9LfxPpvfsewHQ/vxnhhSYCQUFSyKD+bQUJfZxx/Qn8eAr4/4G4GTY6RtA8uP966IncEz0LqQPu/bmN6AGSQVKG1oU+9tDdGTIIaRBvqS/cdKC/E5PD/RG15kUqjR8uMMTy1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783940428; c=relaxed/simple;
	bh=3rfCrbP5lVTeCOcf7j2UFDGLEaicJObO+xnifvDEiv0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ltjljUWRGhN9c1Ps2wGPhdA4TFmkJRdOA2bRCmhC3nVv+VM8kioGkQs4o6/0sqeRbvVPSfEyDOe0u/xTBFCrkSyBSGASQ3D/q0Jzdwcm7447hLar2kAStD+gj1saZ61r5ztuTJKF0UpJc9Gob2jbXqGIstln5up294ewSS9IQ2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=thingy.jp; spf=pass smtp.mailfrom=0x0f.com; dkim=pass (1024-bit key) header.d=thingy.jp header.i=@thingy.jp header.b=GidzM9rj; arc=none smtp.client-ip=209.85.210.173
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-8484a0b998fso4567700b3a.2
        for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 04:00:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thingy.jp; s=google; t=1783940427; x=1784545227; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=aMTRhkU574qVjZXuo+7cCRh9hKDg8zny1F4V74vS+A4=;
        b=GidzM9rjJjpkQk0RXL8VBZm0Kk7NnhHJjFoZryGEDeiJ6t5f0DldLnkpgDSJufnpP4
         S1TJn/a6N0CDT77bVmPmSbZssJecZPDeZjNWxH3V/pfq7PO+xAPFmgTPRf3NWtu14sDp
         RHT0lJZSFEVhHUU2ZY4yPGRA+pdz7+KHP1hCc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783940427; x=1784545227;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=aMTRhkU574qVjZXuo+7cCRh9hKDg8zny1F4V74vS+A4=;
        b=mDojklAA5qurr3088ZZCy+4uU8do1D+j/qoPmhDP6QHN0k65xc0MOnMwNuqddci90X
         ARPMqWbLgoQz45pk94aSyebPW+qmaKCXdQdnhb5u6mUbnquB8mGbHIVSsnwAKp1K1Ldh
         +v0gXQ9H55d3izQji2HALn8zXv3NJW757m6Bymt+FAOpPR0PdfC0pWJmmn5KQN/y+N55
         AbI2dzImLkuFpwhNaQG9ssVs7DxkeO/lsTEobFI8EOcdadwFDd8A9SKZAPJdIqeAWp3F
         uFtcsctqjORcbkBXDZafslRdbsZSiP4qctLwQnAdLjhlej9Pylp/n80wrSvFc2wZhCqu
         1g5w==
X-Forwarded-Encrypted: i=1; AHgh+RoJ49GKhfOo6pYNAXVPObig3PUibPQJGosXQrk49ppN+Mp75OOGmV6iUxecA76GDMAbuQ+ElC5BESGW@vger.kernel.org
X-Gm-Message-State: AOJu0YwkHK+9BQfczDd+cgEJj+i0kxiR+5FKnydePYBfgMOANEdg//Uf
	3Y23lgLIFTVVfnJ2JUbAU8SGy6hVEnjls0LcOEUp/dEZpQU18ZjIJ5KwT5uKrBeQwgY=
X-Gm-Gg: AfdE7cmrh5Z5KqFNOWjF6ItHTiJi2R9JUooNpZNLyazKQnNMnnVSxmov6pTonLKJQVd
	cUGO/kU61dOLArvLzZao2YeqT32lmMeyHlYYtIj13R2bz871XXrg9rTJsR3Se9GRL0lWxPo3WW7
	o+tW/uZWEw3oxdxsFU0iLK9N8jSxrWuKsOE6yi2YVyQFSJFvjiRAz5gTmB/JWnotPctjmAEXX9s
	sd8svw3IZymn50t4i0ofQt8Gc+CvtiAIm8rZntPInKtg/PWsnWNOjFy+IQ75Dbjz5v6MWF+rTvw
	trWPYLpw7LAhxyifAuOYpu/w8elxOZJ/OXQqF0WT461q+0lL3GbDseluhf/a5OtZIhdmDpcsOQm
	IoS0wBxwY1IF1LZGcjzlW9Uksib881AcovStYu3r8HlTZIzoHfea1EG5hbwJ5KXNcHy57WWi6mO
	dXREzPZnAmAf7KKzdJPQLZKu8k00GWIpzzWt5d
X-Received: by 2002:a05:6a00:cca:b0:848:2f77:e2db with SMTP id d2e1a72fcca58-8488979fc26mr7420812b3a.68.1783940427049;
        Mon, 13 Jul 2026 04:00:27 -0700 (PDT)
Received: from kinako.work.home.arpa ([2400:4162:2428:2ffe:a973:53e4:1a28:8545])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-84909673e32sm3019597b3a.56.2026.07.13.04.00.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jul 2026 04:00:26 -0700 (PDT)
From: Daniel Palmer <daniel@thingy.jp>
To: linux-arm-kernel@lists.infradead.org
Cc: romain.perier@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH 7/8] ARM: dts: mstar: sbc2d06: Add regulators
Date: Mon, 13 Jul 2026 19:59:49 +0900
Message-ID: <20260713105950.1346962-8-daniel@thingy.jp>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260713105950.1346962-1-daniel@thingy.jp>
References: <20260713105950.1346962-1-daniel@thingy.jp>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[thingy.jp:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org,0x0f.com];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-325436-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[daniel@thingy.jp,devicetree@vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-arm-kernel@lists.infradead.org,m:romain.perier@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:daniel@0x0f.com,m:romainperier@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	DMARC_NA(0.00)[thingy.jp];
	DKIM_TRACE(0.00)[thingy.jp:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[daniel@thingy.jp,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0x0f.com:email,thingy.jp:from_mime,thingy.jp:dkim,thingy.jp:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B4AB974A164

From: Daniel Palmer <daniel@0x0f.com>

Add the board's fixed regulators.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 ...-ssd202d-wirelesstag-ido-sbc2d06-v1b-22w.dts | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm/boot/dts/sigmastar/mstar-infinity2m-ssd202d-wirelesstag-ido-sbc2d06-v1b-22w.dts b/arch/arm/boot/dts/sigmastar/mstar-infinity2m-ssd202d-wirelesstag-ido-sbc2d06-v1b-22w.dts
index b15c40762bc0..8dbff5e53e5f 100644
--- a/arch/arm/boot/dts/sigmastar/mstar-infinity2m-ssd202d-wirelesstag-ido-sbc2d06-v1b-22w.dts
+++ b/arch/arm/boot/dts/sigmastar/mstar-infinity2m-ssd202d-wirelesstag-ido-sbc2d06-v1b-22w.dts
@@ -20,4 +20,21 @@ sys_led {
 			linux,default-trigger = "heartbeat";
 		};
 	};
+
+	vcc_vbus: regulator-vcc-vbus {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&gpio SSD20XD_GPIO_GPIO14 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+
+	vcc_sd: regulator-vcc-sd {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_sd";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&gpio SSD20XD_GPIO_GPIO90 GPIO_ACTIVE_HIGH>;
+	};
 };
-- 
2.53.0



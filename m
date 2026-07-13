Return-Path: <devicetree+bounces-325434-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id fqYRN4jGVGo4SwAAu9opvQ
	(envelope-from <devicetree+bounces-325434-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 13:05:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C63774A1DE
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 13:05:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=thingy.jp header.s=google header.b=XT5mWpRu;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325434-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325434-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B569630B04F1
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 11:00:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C587C384CFB;
	Mon, 13 Jul 2026 11:00:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63FBA382F13
	for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 11:00:23 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783940425; cv=none; b=StMhEPlHhHSM4pTc9HXMwRqCLk42nBELObZNadfZw7HZBjiDHKwoOIkRwTMJaJW1kImkzXlYEU/3SaLoUCdE5Nx2FZR3aNOTyawEDztHcWXaQXqIl+0nMJyBBZE/4OIhICn9ev+ZUq5ADioZBO6ZsniJBnEgLch5miA/o5G6t9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783940425; c=relaxed/simple;
	bh=b5XjlOLsjEmU591UsFg5hckl9zDateTu9rSvfYzHdgI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gvw71egz7lKl8TMb9GF7QTlaOznCmN0NeBatPIH+y9kpF50e7jUVfw7K1GV8tj+vS0Fi2JplEYh+tm9Rntp+goSD10gmyULQ2YJhA2plOJEyqD6N74YhjE4q/3oOnwdJQ0SA1zhbSpT/OPQM2vHcj6cg0Vhgs4hMvLoLsW8mwaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=thingy.jp; spf=pass smtp.mailfrom=0x0f.com; dkim=pass (1024-bit key) header.d=thingy.jp header.i=@thingy.jp header.b=XT5mWpRu; arc=none smtp.client-ip=209.85.210.178
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-848761b5897so1283444b3a.3
        for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 04:00:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thingy.jp; s=google; t=1783940423; x=1784545223; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=gUBFa0HqKZFEUtNHoOu7BOBMJeyXjh7epErZjbHgIp8=;
        b=XT5mWpRuGe+s1eISwj4TyQjtA4OQJdbXrm1JMnBOjKqME8bm78heZRcBM7xyZp2vcQ
         Q5CW83imV/TwS3E4h3y3qfJGk8XObRih/yxuEQ0eETqDXdQdVvrrOCPE8qgyfdh1S9Vs
         ar8BL0PHe85Az5ydJpaUYw6Ju3mgW+JpNv/Tw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783940423; x=1784545223;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=gUBFa0HqKZFEUtNHoOu7BOBMJeyXjh7epErZjbHgIp8=;
        b=W9XImubcFzcLB0fnR2Vf0x6VKR5dvCNLsDBmAyYQhQwAhjPwimeitGdSjFEY1t4bM5
         5YjcSP+nyLCQgRbI3UfRbwF0of16jt+n5pH/c8gVUVRb/mTWWCNPF9d8S79E1EtIRvyO
         UPZn9a3mCtbYWfsEm0or1QA/+AG9GT0UZiVkMQu2NbQ1g2FX0JI7Dl0TdjCwGY4ZmFfT
         4g2bu+PJIj2lWj5WqYwzFRYWuHm1bOHF45hpGDkRThtu97G4wSE3K0C1HhFOwXxan42e
         haSbcShiyJiGYHNHRWe4dilc7rZ1jTyQjUx+Q4678hMmaV/FwRPc8Q1S9Ookenkkqir6
         dT4w==
X-Forwarded-Encrypted: i=1; AHgh+Rqb5SEbjcONUnoNZXl1T/PMG7vfMfGHh7q95urr5Eu0/G5lvAND3W02iru1XpByuRJZs5968hJr1yXo@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/dpKX3DxAW5hmxAyGQZynrcfjyjMtcLpw79VhfxDfZlsPYHQi
	Z7EaZKazFE8Rh/BYUT82tZveSM9qIDUYGIz5eg3HSDMadbKuopiVfcFovc8NBWNWoD4=
X-Gm-Gg: AfdE7cl2oxH9K0KAVV0K43ltQgqbqstIqq4fXxvsigzhRMV0Ha8/i0Xbe4Be8H/cn4W
	zvyiKXmi+x/rf4GFa3hxkoPgcOkmZXx0Bu0H7RqZaZBlWTQnCsn2LKBRoCQwRd/kMBqmiOpwIGA
	MxNN81OlzQp5J0NHihZXwgLz4+27kr80gK29nAxGtAYEOIbBzgEAZP6hkT3SHnQUfEHrLeVfom/
	LeryoZbwV3l0UiIo0tpwuVeSFW5qgIp/uig1noPD/FLuCJUXwhb/yCWxXMi5pWoeKtVzG/N6AKJ
	mQ8pnO0L7ugP1j1o+kbkO/qmyb4ohTQxAfQIWZRrgIXNmhdf27+3jwqRuvPIEs4zE1qmsybauCO
	eZcRBnQ9NFLALaJ4bE+zQ26Gw4n8gGFFEUnKqjPDqQxzTrtWeSl9bXGqb36V0xUEUrE386M8b2n
	Roou76mZzvTPKNIPkww/mmYamd3w==
X-Received: by 2002:a05:6a00:4489:b0:848:2f6e:e52e with SMTP id d2e1a72fcca58-84889799f42mr7179723b3a.66.1783940422632;
        Mon, 13 Jul 2026 04:00:22 -0700 (PDT)
Received: from kinako.work.home.arpa ([2400:4162:2428:2ffe:a973:53e4:1a28:8545])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-84909673e32sm3019597b3a.56.2026.07.13.04.00.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jul 2026 04:00:22 -0700 (PDT)
From: Daniel Palmer <daniel@thingy.jp>
To: linux-arm-kernel@lists.infradead.org
Cc: romain.perier@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH 5/8] ARM: dts: mstar: miyoo-mini: Add vibrator
Date: Mon, 13 Jul 2026 19:59:47 +0900
Message-ID: <20260713105950.1346962-6-daniel@thingy.jp>
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
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[thingy.jp:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-325434-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	DMARC_NA(0.00)[thingy.jp];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org,0x0f.com];
	FORGED_RECIPIENTS(0.00)[m:linux-arm-kernel@lists.infradead.org,m:romain.perier@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:daniel@0x0f.com,m:romainperier@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[daniel@thingy.jp,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[daniel@thingy.jp,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[thingy.jp:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3C63774A1DE

From: Daniel Palmer <daniel@0x0f.com>

Add the vibration motor, which is driven by a GPIO, on the Miyoo Mini.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 .../dts/sigmastar/mstar-infinity2m-ssd202d-miyoo-mini.dts   | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/boot/dts/sigmastar/mstar-infinity2m-ssd202d-miyoo-mini.dts b/arch/arm/boot/dts/sigmastar/mstar-infinity2m-ssd202d-miyoo-mini.dts
index 1bbbf47132dc..5e927f41fa73 100644
--- a/arch/arm/boot/dts/sigmastar/mstar-infinity2m-ssd202d-miyoo-mini.dts
+++ b/arch/arm/boot/dts/sigmastar/mstar-infinity2m-ssd202d-miyoo-mini.dts
@@ -18,6 +18,12 @@ aliases {
 	chosen {
 		stdout-path = "serial0:115200n8";
 	};
+
+	vibrator {
+		compatible = "gpio-vibrator";
+		enable-gpios = <&gpio SSD20XD_GPIO_UART0_TX GPIO_ACTIVE_LOW>;
+	};
+
 };
 
 &pm_uart {
-- 
2.53.0



Return-Path: <devicetree+bounces-325433-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id CWCuAXDFVGr8SgAAu9opvQ
	(envelope-from <devicetree+bounces-325433-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 13:01:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E53474A148
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 13:01:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=thingy.jp header.s=google header.b=V+skjB9H;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325433-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-325433-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 65FEB3019FC5
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 11:00:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E9963845A9;
	Mon, 13 Jul 2026 11:00:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21265381EBD
	for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 11:00:22 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783940424; cv=none; b=Iz+aQMRBE5R0CqHHekbVse/3a+t++cEphO8o3oS1o6Ge6v4RCaDWFpYP1kGTqjPX8sLY9hfjxyt3ng+wKd7cj/nzvdyBUUyOkNSG3khevFuEX7RH3K32VDO23fCBqOs/JhFStAQToi5gtvUEZNRskXBazACRCxQcpUO4rnbVtPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783940424; c=relaxed/simple;
	bh=4bh/vb3VeF07fPYYVYK5dQ5BAn5D/hycVLV/MBKfTNI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dxZKS1z39JLRjP4WRl2gWAElAY5Smtnv4yYJa13xrnlpd/02Pc0UbARUFIcFWFJ6C84g1QRLU4kXrnv1c4N5UZ4OnrJARpAmi+WV4G+huh6cbXLdZMEOkxzCnyYj99Vd3SJKTGXZl92cFkf7/O77RqP4eqg/9IYW+GlLAWAOE+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=thingy.jp; spf=pass smtp.mailfrom=0x0f.com; dkim=pass (1024-bit key) header.d=thingy.jp header.i=@thingy.jp header.b=V+skjB9H; arc=none smtp.client-ip=209.85.215.171
Received: by mail-pg1-f171.google.com with SMTP id 41be03b00d2f7-c85b73ffb52so1508123a12.3
        for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 04:00:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thingy.jp; s=google; t=1783940420; x=1784545220; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=1bCifOtjJgtGCGYHxQm4Y6gSh+lcRpiB2BE8yhc0wPw=;
        b=V+skjB9HFwxCtHKQuoOBEymfErHuPBTVKMC9lKcSGTUw5YFPixfOgBTFWkI/g6rzyF
         54sHweepvC7wCX6buwyiFyumcAN3ea+G07QpUuuWeJ2qO/2nd79viXJW+tKQWr6ppIvk
         eIV9qyF09yNSZTlT6BlO0lQxsXvNbwuFiWSRI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783940420; x=1784545220;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=1bCifOtjJgtGCGYHxQm4Y6gSh+lcRpiB2BE8yhc0wPw=;
        b=E2JUQ6ra5Q0hCiB2dTS8JP0AVSne/Eu8/27Fi5yVR9qSoPIJjj4M18ILM9s2LtE2Qk
         yv0MXRdPg7G+yz4OtlgttnCywstd0o/55mfyR3whelNfDUzkTR3WyVLounEXAsPfhhwr
         ncTj++XDJicg9r9iOxaKNTvdm//O0x2pSrWkUmPLKy2t7yDTVTUzYGte9wAzKg/hK7rj
         elwRukxWYMvrg4uxCiqslTjIn45Au4alcZQFAC6yImDBoxn2CxQGShroLA9IR/3SX3HI
         bypwAqjzwKaKZasH7xkcPf++gxjHxInAIglmincgpBYEjzEFp9BsQVVE25pwFsNMuIHI
         9+4g==
X-Forwarded-Encrypted: i=1; AHgh+RoWGr+hif6YyPZoDAb8ydI0bVuS5xo86nLCOVzXUC8CWidHBKgepZmnzXC4ncL/FPaMhr6g1FTmZdRP@vger.kernel.org
X-Gm-Message-State: AOJu0Yxb6llx42HFpaKS8ABuNHm8w5529n7pygO2FB4WvmL5xn/hXOZf
	KfTu1ckiJKEdLV4x5wkdVUXKpTMIvZQMJqc+WZGsjxiUJnebm740TJVGS3opStdV/meNYVJd/oW
	cg5C7
X-Gm-Gg: AfdE7cl9PeBnaBsrHQOxwUzOAtObkyJ62V69Z9Ppa12cKcMGPkqqz8Ri4c9GDVA88VF
	m76mNKRg6JUa+HPxZEGbK+W4NgVDZgq6r20sUiXD8mEJy2J9FO7DkCH3PuKdrqKto35nRh8QlDj
	6uBkvpCzSz4OGlfk8aoyx6jBnAHABtzQMuWr5UE749msOWV/Kvq+bFgcAkC0hfp/HKbnyBJyA1R
	5axZH1llUUKepFTVwokOwBGWlQ1+xa6YaegVQYMMuLwSLmLVWkkFuAWKqG63n30O2GL9vuY79NS
	FXzdJbdq13+lOGcrew248+mk/m96obrggEi/ISLziTUyoLRVNZFrFt8s7maH2WsGw9A2GFkcQfr
	j6ZdGkvGoCM6GSwh8YqsI0m10U99vYyD3a90OGbgRXFXhGBCebAQcFiznu2qZHOGZfeLUa7h3CY
	VTrkd7pKFsVvDPJLkXXcpGTm0UeA==
X-Received: by 2002:a05:6a00:1789:b0:847:770f:da4c with SMTP id d2e1a72fcca58-84889633826mr7816881b3a.16.1783940420396;
        Mon, 13 Jul 2026 04:00:20 -0700 (PDT)
Received: from kinako.work.home.arpa ([2400:4162:2428:2ffe:a973:53e4:1a28:8545])
        by smtp.googlemail.com with ESMTPSA id d2e1a72fcca58-84909673e32sm3019597b3a.56.2026.07.13.04.00.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jul 2026 04:00:19 -0700 (PDT)
From: Daniel Palmer <daniel@thingy.jp>
To: linux-arm-kernel@lists.infradead.org
Cc: romain.perier@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH 4/8] ARM: dts: mstar: unitv2: Link cpu to core regulator
Date: Mon, 13 Jul 2026 19:59:46 +0900
Message-ID: <20260713105950.1346962-5-daniel@thingy.jp>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org,0x0f.com];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-325433-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[daniel@thingy.jp,devicetree@vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-arm-kernel@lists.infradead.org,m:romain.perier@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:daniel@0x0f.com,m:romainperier@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	DMARC_NA(0.00)[thingy.jp];
	DKIM_TRACE(0.00)[thingy.jp:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp,thingy.jp:from_mime,thingy.jp:dkim,thingy.jp:mid,0x0f.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6E53474A148

From: Daniel Palmer <daniel@0x0f.com>

Reference the core voltage regulator as the CPU supply so the
regulator is described as feeding the CPU.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 .../boot/dts/sigmastar/mstar-infinity2m-ssd202d-unitv2.dts    | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/sigmastar/mstar-infinity2m-ssd202d-unitv2.dts b/arch/arm/boot/dts/sigmastar/mstar-infinity2m-ssd202d-unitv2.dts
index b5a282cd1a67..6c1ae3e10875 100644
--- a/arch/arm/boot/dts/sigmastar/mstar-infinity2m-ssd202d-unitv2.dts
+++ b/arch/arm/boot/dts/sigmastar/mstar-infinity2m-ssd202d-unitv2.dts
@@ -85,6 +85,10 @@ reg_vcc_wifi: regulator-vcc-wifi {
 	};
 };
 
+&cpu0 {
+	cpu-supply = <&reg_vcc_core>;
+};
+
 &pm_uart {
 	status = "okay";
 };
-- 
2.53.0



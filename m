Return-Path: <devicetree+bounces-318698-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id r1h3Dp8pRWo+8AoAu9opvQ
	(envelope-from <devicetree+bounces-318698-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 16:52:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 328786EEFE2
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 16:52:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=AFkntzGQ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318698-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318698-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 43B4B307A9F1
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 14:30:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93B45346FB0;
	Wed,  1 Jul 2026 14:30:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0271E344D83
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 14:30:08 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782916210; cv=none; b=rYZi68D1fmQKI2OOc7h6E8zMypiwogEsszyJ5NuC7z8nmt+MfJN0yO0s3Oez4FijnYdp20hjbVngdzVq8vv1pAD0mo/IwVvJMhNgirS7pPmGeovBKZ3RWh08w/df85nmu7TL0k1Wggb7f00HvXBY8F9Uw+6BmBZkuxyl25i8vL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782916210; c=relaxed/simple;
	bh=0T8cC/hFFANyEgdwCbRvmlXafTxrOhEQzM04Qi4pkfE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ST//ydA59FmIOkGPEXGTChVJIV/1LIZfrGFoiegxijyDLCcMGH8gXDF7av9H+SB56ILnavT/jYjtCA28MJyE+A5FRWNfxgb64jBTc0gn1V5QS/qiP0KP3vdzMOl/JzgUmSY9kdDFCnYAo1lVP9oA8+K9Zd3O0EV8Ou2kUoWEQag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AFkntzGQ; arc=none smtp.client-ip=209.85.221.51
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-4720f3bf164so1021630f8f.1
        for <devicetree@vger.kernel.org>; Wed, 01 Jul 2026 07:30:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782916207; x=1783521007; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2n483I/Rl9OTXPEbvmmm1+9u73ydJ9A81WZb0oLTQhI=;
        b=AFkntzGQuqoAOTkq4wK4Xr1nknY7E4SNrN6CB9yCceiWtqCc/GcHE0YCgzDw+M1/bp
         5SA69MPitkHmwfI2TdSzb65IjoqMs/V+QbLARVpcd8eIXmswj5L0TBBMIVtDPM7yptmU
         tYouLyRXxI4V05+59cWJ+BKRxtPXn9UAzWa+VS1P77xwSH59PC78qnCO9tiLrtk9CTf+
         KdL7Ep4/he7Mz34HzSfhd8Pw1TdHtG65Jx/vD3JWj/vEoS7kzFzJqFHSAkBtVn2CCMxJ
         jqd1zm9yMHE+gMEgg0a8BhODPRXqr2gpCFVujwQiaym/wjAaOfFD58VbYWPrN6DlTOg6
         E+pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782916207; x=1783521007;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2n483I/Rl9OTXPEbvmmm1+9u73ydJ9A81WZb0oLTQhI=;
        b=H3sB2XNAt77tCx4NaS/y82ySPHu1FrQoYiKp6rRC3K3ndx2aC7KraNofkf3f46WjDR
         KQPk7l/aq7ssBecVT1MoJipGOiBlQLKDCpWjPNdpVLMZrbkymlniposSH/3xcsR1x0aU
         ym0WyUMpYDcm6waYnZRelQD44PxMfg19wf8BY6kHnTDRbkiCeELoxztvNb1+QkENWt58
         nyC0xQJ8Ft/zFVmnw4k13OOw/hrvO99tZmNYC0mXUY14vrW21RlQG6pDR0o6grJlJI4g
         awq5yPAsmDvII3aHdYGzqWFIRFLxUoDmvbbyjSMCgf0KtEDkmo9tHtZ498nikDl94cs/
         GXMQ==
X-Forwarded-Encrypted: i=1; AHgh+RruOkm7K80QXQPa4V07i8ivNNp+uvwyJ74/yhRwGuEckjwhKdqFRy9cvE86hXEB+t/THgGscBPFf/Hz@vger.kernel.org
X-Gm-Message-State: AOJu0YySbU8qr19w8w6Sq7SBh78iTKep5apY1YVaTGrw5HLJlg3KhCm/
	29WTwInaKUFbiBgabCiXdX2QROmzLMLfBOyvUDJxKSD7TGWWle2LG8bG
X-Gm-Gg: AfdE7ck+C/dw9XP7P12GCX7alAyeeaTKJR3fqM8On+acjQRVEQBK/kv2r92Entv9yks
	RReWC1c/UoX3o5oVjtrViEdKO0EwHIrJ5K9zUY1JbSxHyO5wOr6Uv82SZmOn3R32y5XywXRS2/m
	frR9YymAK+lkU5T/7deasMf62lugY8c21lobXLfhVhLYJ2prTgql6umQavtwJBf5OabzXDr3AIr
	zpMBmggM1pdO4njtMbAU0rBc1+2OQLdCow5tTMB6P0OkKPAEpRE0kKqWj2mb1iq19ultr372+UG
	LBBOYAA/G+TaOYXGxYBYl37kpGBRi2Amo35T/jvdfKRcN19FMsfe6tYZ6tLmvoSFZ8NcLMnY9BI
	0yoDCxlCSXjoLnNeoesOMqtX+Nmgllw1lIn78tECKL6pkyWzsdD6NHW9BLdOsAaidvPpEqMk48I
	J5O/rGjk45oTkFIs/qWU9bR82PdkGr4GgzLlCYjECk6VtEq1RfariGnDPQ9F7tpsm73WBjM7PuX
	5RFirWiphOSaWQJMjUqy0COvoM=
X-Received: by 2002:a05:6000:178d:b0:463:b7f2:cc7a with SMTP id ffacd0b85a97d-477458acf56mr3073152f8f.17.1782916207400;
        Wed, 01 Jul 2026 07:30:07 -0700 (PDT)
Received: from iku.Home ([2a06:5906:61b:2d00:5353:5ce3:a6a2:3b98])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-477dd94c829sm184902f8f.24.2026.07.01.07.30.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Jul 2026 07:30:06 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-rtc@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg+renesas@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH v2 03/10] rtc: rzn1: Fix malformed MODULE_AUTHOR string
Date: Wed,  1 Jul 2026 15:29:46 +0100
Message-ID: <20260701142953.2014895-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260701142953.2014895-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20260701142953.2014895-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-318698-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:miquel.raynal@bootlin.com,m:alexandre.belloni@bootlin.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:geert+renesas@glider.be,m:magnus.damm@gmail.com,m:wsa+renesas@sang-engineering.com,m:linux-rtc@vger.kernel.org,m:linux-renesas-soc@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:prabhakar.csengg+renesas@gmail.com,m:biju.das.jz@bp.renesas.com,m:fabrizio.castro.jz@renesas.com,m:prabhakar.mahadev-lad.rj@bp.renesas.com,m:krzk@kernel.org,m:conor@kernel.org,m:geert@glider.be,m:magnusdamm@gmail.com,m:wsa@sang-engineering.com,m:prabhakarcsengg@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[bootlin.com,kernel.org,glider.be,gmail.com,sang-engineering.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,bp.renesas.com,renesas.com];
	FORWARDED(0.00)[lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,bp.renesas.com:mid,renesas.com:email,vger.kernel.org:from_smtp,sang-engineering.com:email,bootlin.com:email,glider.be:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 328786EEFE2

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Fix a malformed MODULE_AUTHOR macro in the rtc-rzn1 driver where a missing
closing angle bracket on the second author entry creates an invalid format.
Correct it to the standard "Name <email>" format.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
v1->v2:
- Added Reviewed-by tags.
---
 drivers/rtc/rtc-rzn1.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/rtc/rtc-rzn1.c b/drivers/rtc/rtc-rzn1.c
index aa27ad7f5941..d56be7314a91 100644
--- a/drivers/rtc/rtc-rzn1.c
+++ b/drivers/rtc/rtc-rzn1.c
@@ -516,6 +516,6 @@ static struct platform_driver rzn1_rtc_driver = {
 module_platform_driver(rzn1_rtc_driver);
 
 MODULE_AUTHOR("Michel Pollet <buserror@gmail.com>");
-MODULE_AUTHOR("Miquel Raynal <miquel.raynal@bootlin.com");
+MODULE_AUTHOR("Miquel Raynal <miquel.raynal@bootlin.com>");
 MODULE_DESCRIPTION("RZ/N1 RTC driver");
 MODULE_LICENSE("GPL");
-- 
2.54.0



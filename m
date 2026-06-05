Return-Path: <devicetree+bounces-307264-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id dt5JNxySImpiaQEAu9opvQ
	(envelope-from <devicetree+bounces-307264-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 11:08:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A061646B4C
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 11:08:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=y6HQyc14;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307264-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-307264-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=bootlin.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A0899309D905
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 09:02:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94EC54B8DFC;
	Fri,  5 Jun 2026 09:01:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3DC24BC00F;
	Fri,  5 Jun 2026 09:01:47 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780650110; cv=none; b=CwRctcLYcUCzRFlRxfJLjW6Ic7up2qK/pdlnea0PkiGRSjvliVMufiFYnJSyKFMQuLzd9UfY77FalW9pM2MuVVEzL0fKhruNhIWdm4lyEa69DOaRtu2BReak1B8w8ckXt1U6wyfj/ZtWNqcV85Bl7zx6JZsEWDvAjwClko1k9JA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780650110; c=relaxed/simple;
	bh=wSQ084P/0nUSf95mq5aigSd7cQQngvpR33H/qqVc3LE=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=hBgUcLUg489nT94Ad+eoeEsOPFG4vgHy8ALT1JhLSF54940NHFYI9N7MAgVEKoNKcIG3yrMwl8DTH9pPvg8bzMSoISOjmjavAkhhk3cDZAmxjWibsidbMdrj3a5vuk5/K9TwoUgEOGtqVDtmzuSCqWxnMzDmluVLCQOks88XdgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=y6HQyc14; arc=none smtp.client-ip=185.246.84.56
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 153841A0970;
	Fri,  5 Jun 2026 09:01:46 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id D65915FED1;
	Fri,  5 Jun 2026 09:01:45 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 9B77C106A2028;
	Fri,  5 Jun 2026 11:01:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1780650105; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding; bh=UJEJK0/P1A9x4+6/Zd/TWjjAZyiz0JZ6SI/8O8uicq4=;
	b=y6HQyc149mTVEFwL2MIRSyZ9L1RTIB3vgtMGI+bMRPpu5RbGssjaGlDQpu2lKHYFO2bAq7
	SvrYQs5IYkrG9Du2d/hh1QQrZZpX0yLLnj/4KvU9CR91FuXmj07VdcjSJmOb4dZh51Ulgj
	InCbgcXkIZZ5ejnusxEJVNRFOt69RSLlUuuMFIV9yjD3ei0EvUsDawnZBuQF/fY8/uysw8
	lfsop+GV76zjQDMsaSeBVCeOeeQEvXsVEQu+mowdEacl7McQ9Q5iuU9GSPxrISEPV3dod9
	5X3q0KjMEgxZx0q2yeA8zfE3gSqs4Dxu262voWEtjCJ/83WZsTWlvKzxsiuRAg==
From: Romain Gantois <romain.gantois@bootlin.com>
Subject: [PATCH 0/2] iio: temperature: tmp117: Support the TMP119 sensor
Date: Fri, 05 Jun 2026 11:01:34 +0200
Message-Id: <20260605-tmp119-v1-0-349f45f17d12@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDMwNT3ZLcAkNDS10zM6MUI8NUkxRjQ3MloOKCotS0zAqwQdGxEH5xaVJ
 WanIJSLdSbS0A9Z2BQGoAAAA=
X-Change-ID: 20260605-tmp119-662d21e4d317
To: Puranjay Mohan <puranjay@kernel.org>, 
 Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Wil Stark <wil_stark@keysight.com>, linux-iio@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Romain Gantois <romain.gantois@bootlin.com>
X-Mailer: b4 0.15.2
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-307264-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:puranjay@kernel.org,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:thomas.petazzoni@bootlin.com,m:wil_stark@keysight.com,m:linux-iio@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:romain.gantois@bootlin.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[romain.gantois@bootlin.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[romain.gantois@bootlin.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp,bootlin.com:mid,bootlin.com:dkim,bootlin.com:from_mime,bootlin.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8A061646B4C

Hello everyone,

This series adds support for the TMP119, which has an identical programming
model to the TMP117, but slightly different specs and electrical
characteristics.

Best Regards,

Romain

Signed-off-by: Romain Gantois <romain.gantois@bootlin.com>
---
Romain Gantois (1):
      dt-bindings: iio: ti,tmp117: add binding for the TMP119

Wil Stark (1):
      iio: temperature: tmp117: add TI TMP119 support

 Documentation/devicetree/bindings/iio/temperature/ti,tmp117.yaml | 6 ++++--
 drivers/iio/temperature/tmp117.c                                 | 4 ++++
 2 files changed, 8 insertions(+), 2 deletions(-)
---
base-commit: ddd664bbff63e09e7a7f9acae9c43605d4cf185f
change-id: 20260605-tmp119-662d21e4d317

Best regards,
--  
Romain Gantois <romain.gantois@bootlin.com>



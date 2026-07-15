Return-Path: <devicetree+bounces-326965-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VXkFCg19V2ogMwAAu9opvQ
	(envelope-from <devicetree+bounces-326965-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 14:29:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ECD975E1F0
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 14:29:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=geanix.com header.s=protonmail3 header.b=ZAbEby1d;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326965-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-326965-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=geanix.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 333E1306B261
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 12:27:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27A2B466B74;
	Wed, 15 Jul 2026 12:27:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-43171.protonmail.ch (mail-43171.protonmail.ch [185.70.43.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6162345BD5F
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 12:27:45 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784118467; cv=none; b=X8fgiNs/LNS1tur9qIpAgifQLGzF4gfy7nT1kPMbuDOyVG1wzI3GS6oXQT9hT2rlD69VNz33Y3+EzSDG83AgnMhTuaRVJPVkwu9yMeuFlOuLveRvx4SahKQHuhte9N3e64n1Mcy4OgbiJgGTH4YajulmIwZjWJX2IC9hOZFkPJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784118467; c=relaxed/simple;
	bh=HSkBV62gTnfQk0fzdYs33w4+DFEeZcx/yMG6CthYx3U=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=J9KFYQrdCVV4BTOOOn49wsYkJjQwsRelkvV3OEgZbA6ytLeYjYGPagWDEfNKdhAj/KJt67HnI4Ks+AIeuBPqeS2Nox7qiW6HE30qG3WW46TaV/6ZQVTeWwNlHrvVurNZWeW1XbNdMOa6XRlymR83lTx4HIuaudPIZkDJOstOamU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=geanix.com; spf=pass smtp.mailfrom=geanix.com; dkim=pass (2048-bit key) header.d=geanix.com header.i=@geanix.com header.b=ZAbEby1d; arc=none smtp.client-ip=185.70.43.171
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=geanix.com;
	s=protonmail3; t=1784118463; x=1784377663;
	bh=WsODtZ3bCIubFnV6uDHT0L1koWPcqlW0YbQBATmuADc=;
	h=From:Subject:Date:Message-Id:To:Cc:From:To:Cc:Date:Subject:
	 Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=ZAbEby1dO0+Tp09rAjvd3TLdb2UFbHZKkGyuItimQ/YN0zTgFqKVTpm2QQIp03GBZ
	 wAkN1rilRvX8Fe0eS+m9yIPMEWoROlkuYBBnb9z9DX9afPw1m8Oq8g2IAHJnOhynDe
	 vEp243Y0dKt552POw9hTmg7w/+dFUIxbDPFEfH1icl3iIDNXD5NymzD+prdhfhDowR
	 UTetUvBCDKUK7N2yqCr4d7jDPZn+qb4a+jwJNA3WYmti/Ip4Cs+emyIj8Cer8z9B28
	 L3OY6H7OpOFCVx+2HjpQqM7vT5rKPwQmZWPz+WjrbH9SBhHf+T8sCpyBq6SKLDuBF3
	 dVs5wRNXuPzmg==
X-Pm-Submission-Id: 4h0b6P1hN3z2ScmJ
From: Esben Haabendal <esben@geanix.com>
Subject: [PATCH v2 0/4] iio: light: ltr501: Add ltr329 support
Date: Wed, 15 Jul 2026 14:27:22 +0200
Message-Id: <20260715-liteon-ltr329-v2-0-d18af55edab5@geanix.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/12Nyw6CMBBFf4XM2ppOeYkr/8OwgDrAGGxNWxsM4
 d8FjBuXJzn33Bk8OSYP52QGR5E9W7OCOiSgh8b0JPi2MiipClkiipEDWSPG4FJViSalFlWG2ak
 oYN08HXU87b1r/WX/au+kwxbZjIF9sO69H0bcvF87/2tHFFKk2ElVyhzzKrv01Biejto+oF6W5
 QPMzcx4vQAAAA==
X-Change-ID: 20260711-liteon-ltr329-a3eb12414866
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Nikita Travkin <nikita@trvn.ru>, 
 Maslov Dmitry <maslovdmitry@seeed.cc>
Cc: Esben Haabendal <esben@geanix.com>, linux-iio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Jonathan Cameron <jic23@kernel.org>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1784118460; l=1761;
 i=esben@geanix.com; s=20240523; h=from:subject:message-id;
 bh=HSkBV62gTnfQk0fzdYs33w4+DFEeZcx/yMG6CthYx3U=;
 b=qT/b3G6l5O1nqhcpqQZMCzeEi8mKyaA9V/8H5wBZTtvh6RxrcaUzZQ6R5JxrrDcws8YGmOR4i
 X5Xo/oJX941C3TU2QpgMSyA0VEEZoX5diwBsQXmjKnY1v1eDST05v8k
X-Developer-Key: i=esben@geanix.com; a=ed25519;
 pk=PbXoezm+CERhtgVeF/QAgXtEzSkDIahcWfC7RIXNdEk=
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[geanix.com,quarantine];
	R_DKIM_ALLOW(-0.20)[geanix.com:s=protonmail3];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-326965-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[172.105.105.114:from];
	FORGED_SENDER(0.00)[esben@geanix.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_RECIPIENTS(0.00)[m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:nikita@trvn.ru,m:maslovdmitry@seeed.cc,m:esben@geanix.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DNSWL_BLOCKED(0.00)[100.90.174.1:received,185.70.43.171:received,172.105.105.114:from];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[esben@geanix.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[geanix.com:+];
	ALIAS_RESOLVED(0.00)[];
	DWL_DNSWL_BLOCKED(0.00)[geanix.com:dkim];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8ECD975E1F0
X-Rspamd-Action: no action

The LiteON LTR-329ALS-01 chip is similar to the LTR-303ALS-01, except for
interrupt support and related registers, which LTR-329ALS-01 does not have.

Signed-off-by: Esben Haabendal <esben@geanix.com>
---
Changes in v2:
- Fixed error handling when irq is defined for a chip that does not support
  irq, powering the chip down again.
- Added simlar fix to error handling of devm_request_threaded_irq() error
  handling, powering the chip down again on failure.
- Added explicit #include <linux/array_size.h>.
- Link to v1: https://patch.msgid.link/20260715-liteon-ltr329-v1-0-31f027051594@geanix.com

To: Jonathan Cameron <jic23@kernel.org>
To: David Lechner <dlechner@baylibre.com>
To: Nuno Sá <nuno.sa@analog.com>
To: Andy Shevchenko <andy@kernel.org>
To: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>
To: Conor Dooley <conor+dt@kernel.org>
To: Nikita Travkin <nikita@trvn.ru>
To: Maslov Dmitry <maslovdmitry@seeed.cc>
Cc: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Cc: linux-iio@vger.kernel.org
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org

---
Esben Haabendal (4):
      dt-bindings: iio: light: ltr501: Add missing ltr303 compatible
      dt-bindings: iio: light: ltr501: Add ltr329 compatible
      iio: light: ltr501: Add ltr329 driver support
      iio: light: ltr501: Power down chip if request irq fails

 .../bindings/iio/light/liteon,ltr501.yaml          |  2 ++
 drivers/iio/light/ltr501.c                         | 35 +++++++++++++++++++++-
 2 files changed, 36 insertions(+), 1 deletion(-)
---
base-commit: a13c140cc289c0b7b3770bce5b3ad42ab35074aa
change-id: 20260711-liteon-ltr329-a3eb12414866

Best regards,
--  
Esben Haabendal <esben@geanix.com>



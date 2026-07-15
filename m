Return-Path: <devicetree+bounces-326735-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2IJuDPg/V2pvIAEAu9opvQ
	(envelope-from <devicetree+bounces-326735-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 10:08:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C14475BBA0
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 10:08:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=geanix.com header.s=protonmail3 header.b=VL0GY8eF;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326735-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326735-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=geanix.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 106363019504
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 08:07:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E67613C943B;
	Wed, 15 Jul 2026 08:07:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-244107.protonmail.ch (mail-244107.protonmail.ch [109.224.244.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 366A23B840E;
	Wed, 15 Jul 2026 08:07:47 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784102873; cv=none; b=hMXXAzRF/R+eXnkKO8CHjq2DyMA5aJjx5ZncVNX85nruzy6YZcct63ejUJO2JNs+wPFLDw5x47F33+z7Hil9GZ3TYerPnRY+FUHD5ctxRfy3fOlA6/0Ec9h3bPLkHsORs8VAH8kxPqUw01enqmibPiqFrmbSm3voTTDX8MLdRvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784102873; c=relaxed/simple;
	bh=1fpr8AtMJXKT9efIsQAg18BMxxtX0BL6Ea/AaaiZu/4=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=BCoA/i5WiPDDQPtfiP8TAPcirSklM0qqilB3ew5bqhWoehMcVOw2y13WEAueWhVEl96wuOkp/jzrXTh4ipMejangMfoB8QIT7+izS6lPu3W/L5qkkaVh+A4ozazHSu7YNeZjQPgGN0ZQwoP4+8fjWGw+DzdUV5HtyOzU/W9t4Mk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=geanix.com; spf=pass smtp.mailfrom=geanix.com; dkim=pass (2048-bit key) header.d=geanix.com header.i=@geanix.com header.b=VL0GY8eF; arc=none smtp.client-ip=109.224.244.107
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=geanix.com;
	s=protonmail3; t=1784102865; x=1784362065;
	bh=F9KNvHokOnjzXB2tsPw05VMRFK/X762wrH2nvki6fTw=;
	h=From:Subject:Date:Message-Id:To:Cc:From:To:Cc:Date:Subject:
	 Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=VL0GY8eF8z3QiH7wCs2AVhxbAKCygqGBbLwKe9FfwtCJaJ+KdWhwMGETTJGFG/uQr
	 sASxBLgQJl81p333BKI8xgh1VVpY8rMTKmbB0zK3egZbCfRV6aSS0ALY0zyUAXhFwt
	 rmsQS7Y77YHW3Ichy81Jmi/JvS+VAI18PxdZOhVUK5w9yOOmFqhfcNHxkMk4ERBpFx
	 uCmd4ipUTH6RlLWMPZSRecATnWvxyVKcoveHAmm4G5q/BXy0Q3N4onLaD8UfhelZMi
	 qvmV2lLjFptAwy+N+6xSJAHorDPeWlpMcUhrBCnCCob47KxngRAKH9FqIWzvWyei8L
	 IklZXjsCMLPiw==
X-Pm-Submission-Id: 4h0TLS0FkLz1DDrP
From: Esben Haabendal <esben@geanix.com>
Subject: [PATCH 0/2] io: accel: mma8452: Allow open drain interrupt pin
 configuration
Date: Wed, 15 Jul 2026 10:07:37 +0200
Message-Id: <20260715-mma8452-open-drain-v1-0-b1dd2a440c60@geanix.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/x3MQQqAIBBA0avErBtQU5SuEi3EpppFGgoRiHdPW
 r7F/xUKZaYC81Ah08OFU+yQ4wDh9PEg5K0blFBGaCHxurzTRmG6KeKWPUd00lgbtJysCdDDO9P
 O7z9d1tY+Uj9VjWQAAAA=
X-Change-ID: 20250401-mma8452-open-drain-81577c41375c
To: Jonathan Cameron <jic23@kernel.org>, 
 Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Martin Kepplinger <martink@posteo.de>, 
 Sean Nyekjaer <sean@geanix.com>, David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, 
 Martin Kepplinger <martin.kepplinger@theobroma-systems.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Esben Haabendal <esben@geanix.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1784102863; l=917;
 i=esben@geanix.com; s=20240523; h=from:subject:message-id;
 bh=1fpr8AtMJXKT9efIsQAg18BMxxtX0BL6Ea/AaaiZu/4=;
 b=a79cjrT5qa69rUkYqt53VPeV6nxEWRF5VZJohn0QjbGdvg0LO+hi5K0ff45afLK7BE9TxwFUz
 sebEqlH6OWYCguNVdDRrlc81+agiAFeXCHTnEql8TxWmDlPG+rDwye9
X-Developer-Key: i=esben@geanix.com; a=ed25519;
 pk=PbXoezm+CERhtgVeF/QAgXtEzSkDIahcWfC7RIXNdEk=
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[geanix.com,quarantine];
	R_DKIM_ALLOW(-0.20)[geanix.com:s=protonmail3];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-326735-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:jic23@kernel.org,m:lars@metafoo.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:martink@posteo.de,m:sean@geanix.com,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:martin.kepplinger@theobroma-systems.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:esben@geanix.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[esben@geanix.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[esben@geanix.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[geanix.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[geanix.com:from_mime,geanix.com:mid,geanix.com:email,geanix.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7C14475BBA0

Extend the mma8452 driver with support for configuration of the
interrupt line in open-drain mode, which is needed for hardware designs
where the interrupt line is shared with other chips.

Adding drive-open-drain property to mma8452 device-tree node for such
designs to enable switching pin configuration to open-drain mode.

Signed-off-by: Esben Haabendal <esben@geanix.com>
---
Esben Haabendal (2):
      dt-bindings: iio: accel: mma8452: Add drive-open-drain
      iio: accel: mma8452: Allow open drain interrupt pin configuration

 .../devicetree/bindings/iio/accel/fsl,mma8452.yaml |  6 +++++
 drivers/iio/accel/mma8452.c                        | 29 +++++++++++++++++++++-
 2 files changed, 34 insertions(+), 1 deletion(-)
---
base-commit: a13c140cc289c0b7b3770bce5b3ad42ab35074aa
change-id: 20250401-mma8452-open-drain-81577c41375c

Best regards,
--  
Esben Haabendal <esben@geanix.com>



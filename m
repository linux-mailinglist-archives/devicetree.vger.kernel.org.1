Return-Path: <devicetree+bounces-293490-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id II7dCrUw+2lxXQMAu9opvQ
	(envelope-from <devicetree+bounces-293490-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 06 May 2026 14:14:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 963244DA06E
	for <lists+devicetree@lfdr.de>; Wed, 06 May 2026 14:14:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 69BBD3037DDA
	for <lists+devicetree@lfdr.de>; Wed,  6 May 2026 12:13:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEC3544A72C;
	Wed,  6 May 2026 12:13:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="BpbUx1wH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AEE04218B3;
	Wed,  6 May 2026 12:13:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778069605; cv=none; b=bjgLzvbRSarWkWYu2akb+L1ps1KXTpIoKX5Tc+NNsnrq1sFKMrLkTLTp0Ej34OwBZyLTZPXcRNL9/sOhgeE50/vBnHi73Ohqr0oQkbMt8vA01If4lQOODGawOmBTgwGJ6f5w3B8f0d8HDZ8nWmdRCiEgjv77jh66pZGH/IGh40E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778069605; c=relaxed/simple;
	bh=6BJoT21okPC2svqqJmM994ukAh1veI+pOrQYZfGGSpY=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=dDAFP1jt5fEjkV8GM8R1NjdgPJ9CQdO8V8IHyNLqIUgr44qkD9JaSQe6g36V1ABwzEhptvI6jvvsXurcvdZlB/4MUhNbrYVzxwFDfZThsGwpo7/aejGAiS2IQqydLEGz1SxNflrF3pXXeXfNGxZWTpjlhkR2iKC0CA4oUbfju4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=BpbUx1wH; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 3FD794E42C09;
	Wed,  6 May 2026 12:13:17 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 008846053C;
	Wed,  6 May 2026 12:13:17 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 00927102F24F4;
	Wed,  6 May 2026 14:13:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1778069595; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding; bh=Vd35ht/9TSjl6+pyCixaHialcFScMPkKoQR0kl6TV64=;
	b=BpbUx1wHl4l/vykUGLe1EPapL9UV0maolQ+M/WmDdcFypq0gbewdaJQr0W0XqQKmPn+p5I
	41Ys+CLOqKWZsenpy2Vuh2cQbBmQatytU5Vf/PI2yjIv+e9zpf5oOmVXC8zwkNeEecPPcU
	Qd8K0f9JUxkUG8/U9hsCkKRsoDNBQTjNdVGDXZ4TAxRr2t8dgepeySmfObarBVT1gd4/Vy
	LtTd2wf27IariUqWU38IJJEu8eL9dDnLoTC1RcTQLkpaHIXN6mAwiOIFbU6Rmud2toYoxQ
	ImojO6QNt6sYEotnLfcVXy+0JjHBoVQfeVZPsKotDZmPL8Jp4CqpxlGEHTApbA==
From: Thomas Richard <thomas.richard@bootlin.com>
Subject: [PATCH v2 0/2] Add USB Ethernet controller (LAN7500) node in
 VAR-SOM-OM44 devicetree
Date: Wed, 06 May 2026 14:13:02 +0200
Message-Id: <20260506-b4-var-som-om44-lan7500-v2-0-b8af59ab877c@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAE4w+2kC/3XNQQ6CMBCF4auQWTtmSouIK+9hWBRapAl0SEsaD
 eHuVly7/F8y32wQbXA2wq3YINjkomOfozwV0I/aPy06kxtKKi8kJWGnMOmAkWfkWSmctK8rIqT
 GDKavhTSygXy9BDu41yE/2tyjiyuH9/Eoie/6MxXJv2YSmGGjjbHXioSS9455nZw/9zxDu+/7B
 1z82mXAAAAA
X-Change-ID: 20260330-b4-var-som-om44-lan7500-09dfdc713d39
To: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, 
 Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, 
 Oleksij Rempel <o.rempel@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, netdev@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-omap@vger.kernel.org, Thomas Richard <thomas.richard@bootlin.com>, 
 Nicolai Buchwitz <nb@tipi-net.de>
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Queue-Id: 963244DA06E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-293490-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[thomas.richard@bootlin.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:email,bootlin.com:dkim,bootlin.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]

In this second version I added LAN7500 and LAN7505 definitions in
microchip,lan95xx.yaml as requested by Krzysztof. I also added Nicolai's RB
tag in devicetree patch.

Signed-off-by: Thomas Richard <thomas.richard@bootlin.com>
---
Changes in v2:
- add Nicolai's RB tag in patch 2/2.
- add LAN7500 and LAN7505 in microchip,lan95xx.yaml instead of creating a
  new file.
- Link to v1: https://lore.kernel.org/r/20260403-b4-var-som-om44-lan7500-v1-0-0dadde850143@bootlin.com

---
Thomas Richard (2):
      dt-bindings: net: microchip: Add LAN7500 and LAN7505 devices
      ARM: dts: ti: var-som-om44: Add USB Ethernet controller node

 .../devicetree/bindings/net/microchip,lan95xx.yaml         |  2 ++
 arch/arm/boot/dts/ti/omap/omap4-var-som-om44.dtsi          | 14 ++++++++++++++
 2 files changed, 16 insertions(+)
---
base-commit: b50159d9eaefd95ad4e58bb94bc797761aeb9d8f
change-id: 20260330-b4-var-som-om44-lan7500-09dfdc713d39

Best regards,
-- 
Thomas Richard <thomas.richard@bootlin.com>



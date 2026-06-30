Return-Path: <devicetree+bounces-318051-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id y9h1HJMuRGqDqAoAu9opvQ
	(envelope-from <devicetree+bounces-318051-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 23:01:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B83496E7F98
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 23:01:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linutronix.de header.s=2020 header.b=sr9P+JSI;
	dkim=pass header.d=linutronix.de header.s=2020e header.b=IywHkOfq;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318051-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-318051-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=linutronix.de;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 42B0E3091111
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 20:59:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6784947CC65;
	Tue, 30 Jun 2026 20:59:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 163553E0081;
	Tue, 30 Jun 2026 20:59:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782853175; cv=none; b=WgUkIaRCMbW7dhYBQrKxwGiKSGXH4D1niT719tN4MgrHTS/0WipGx3KKe1F5ET9iFxDMpSryml7xVc74/qcpINnuprJSnCP7B13tviIuAoipKd/MzeY4ixmkgx1hNihP28uCf7DFW476oY0Oi55hRr5lPh+GcVg2MlLnW9wmbe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782853175; c=relaxed/simple;
	bh=nB98kMIZHEA/DB0Lq6MEFaLt6JtLNiSE1EOs7cGBquo=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=u0o10nZBOY9PUY7CGATXEdFJd2+rYFYnC2u5bw4M6/YM0U2S3uDpuEyxqsKmLrxeabrIj7ZQ9AnR4XMz7lvypmPly8BdITOgyu6dSZtySzGYLta/cM88pk+AWaEG8hFmeJxWk5Pi1ViBDmFhCgGali7gtCxJFYjWsYJhkZxZ9ww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=sr9P+JSI; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=IywHkOfq; arc=none smtp.client-ip=193.142.43.55
From: Gregor Herburger <gregor.herburger@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1782853172;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=ARtLGMw7D7iNp+H0nDLQILwKz7rUcIuSN23scn6oebM=;
	b=sr9P+JSInGvxFIgZnju9mBufq1fkhFq2qzx+SYS5Qj7BX1B/Qwu9SqwE3xkh1b2fVV2pha
	/mYGPCRx6GDHNlDV4ERPZbpUhMDbr/vIBi7rV9erGxiEoKfVzq6wY9w1hjt9KA7JzDeBYn
	mdDar3bBARwZBFs+If1NFRou0j05gmbojQCRXPd6A7hqYCYWNns0sPgAPsoGy+T95USc15
	VncjEtLamh2Ui0PqNZ4b+syPDW0Kj4d0MnwQFYUliWNjDSn/DH1RQHC/SfLhhCMi/IF7hN
	hfeGsTQrf1aXoCL04pPdk5I+xoDlD5pVT1mZVpxSmrpEL+n8MXP41ywkwOajeg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1782853172;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=ARtLGMw7D7iNp+H0nDLQILwKz7rUcIuSN23scn6oebM=;
	b=IywHkOfqSDYQxq0HPDhOc/4UattB6qCBYm1kJGs7ulYWJrrJ0yAFJYNU8eqoVsdsDLvT8k
	YEXb9F/O7bvtRNAw==
Subject: [PATCH v2 0/4] firmware: raspberrypi: Add support for the tryboot
 mode
Date: Tue, 30 Jun 2026 22:59:26 +0200
Message-Id: <20260630-rpi-tryboot-v2-0-f68d2dc6aa27@linutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAC4uRGoC/1WNQQ6CMBBFr0JmbU0ZG0hdeQ/DwpZRxpjWTAuBE
 O4uYFy4fMn778+QSJgSnIsZhAZOHMMKeCjAd7fwIMXtyoAaK13hScmbVZbJxZiVQYveotM11rA
 u3kJ3Hvfatfly6t2TfN4Sm9FxylGm/W4oN+9Xrv7KQ6m0Mla70htvbK0vLw59lhh4PLYEzbIsH
 yY4uDC8AAAA
X-Change-ID: 20260623-rpi-tryboot-4292c92b0727
To: Florian Fainelli <florian.fainelli@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Eric Anholt <eric@anholt.net>, 
 Stefan Wahren <wahrenst@gmx.net>
Cc: linux-rpi-kernel@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, 
 Gregor Herburger <gregor.herburger@linutronix.de>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782853171; l=1615;
 i=gregor.herburger@linutronix.de; s=20260226; h=from:subject:message-id;
 bh=nB98kMIZHEA/DB0Lq6MEFaLt6JtLNiSE1EOs7cGBquo=;
 b=dMQOAuya7KU+/sQ+tpig3lNOEaUzIngmzL/VtxAqosRSW8Z/wW7uNDpfGFW5mjl4cxeXDCZMm
 UIMyfzSdohRBmhiTUrct0jpOP6Um7VRyi8KaGvdbyR54PNv1r4w4AxL
X-Developer-Key: i=gregor.herburger@linutronix.de; a=ed25519;
 pk=u72Lv7+/lS5CC1hmSrb17lv/6CK7HBh4Lvz77PHA5LM=
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linutronix.de,none];
	R_DKIM_ALLOW(-0.20)[linutronix.de:s=2020,linutronix.de:s=2020e];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	TAGGED_FROM(0.00)[bounces-318051-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[broadcom.com,kernel.org,anholt.net,gmx.net];
	FORGED_SENDER(0.00)[gregor.herburger@linutronix.de,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_RECIPIENTS(0.00)[m:florian.fainelli@broadcom.com,m:bcm-kernel-feedback-list@broadcom.com,m:rjui@broadcom.com,m:sbranden@broadcom.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:eric@anholt.net,m:wahrenst@gmx.net,m:linux-rpi-kernel@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:gregor.herburger@linutronix.de,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gregor.herburger@linutronix.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linutronix.de:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[msgid.link:url,linutronix.de:dkim,linutronix.de:email,linutronix.de:mid,linutronix.de:from_mime,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B83496E7F98

This adds support for the tryboot mode on Raspberry Pis. As there is no
documentation other than the downstream implementation [0] the
implementation is based on this.

I tested this on Raspberry Pi 5 and therefore I only added the
properties to this devicetree. But afaik this should work on all
Raspberry Pis. I will add it to the correspondings dts if I get some
hardware to test it.

[0] https://github.com/raspberrypi/linux/commit/eb56da0c1925c07e8929ce4c9fe8aeafa7cb8c7b

---
Changes in v2:
- Remove unnecessary reboot_mode_unregister().
- dt-binding: restrict to mode-{normal,tryboot} and only allow 32bit value.
- Link to v1: https://patch.msgid.link/20260626-rpi-tryboot-v1-0-490b1c4c4970@linutronix.de

---
Gregor Herburger (4):
      firmware: raspberrypi: reorder rpi_firmware_property_tag enum
      dt-bindings: raspberrypi,bcm2835-firmware: Include 'reboot-mode.yaml'
      firmware: raspberrypi: Add reboot mode support
      arm64: dts: broadcom: bcm2712: Add reboot modes to firmware node

 .../arm/bcm/raspberrypi,bcm2835-firmware.yaml      |  9 +++++++++
 .../boot/dts/broadcom/bcm2712-rpi-5-b-base.dtsi    |  2 ++
 drivers/firmware/Kconfig                           |  1 +
 drivers/firmware/raspberrypi.c                     | 23 ++++++++++++++++++++++
 include/soc/bcm2835/raspberrypi-firmware.h         | 22 +++++++++++----------
 5 files changed, 47 insertions(+), 10 deletions(-)
---
base-commit: 8cd9520d35a6c38db6567e97dd93b1f11f185dc6
change-id: 20260623-rpi-tryboot-4292c92b0727

Best regards,
--  
Gregor Herburger <gregor.herburger@linutronix.de>



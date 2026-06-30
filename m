Return-Path: <devicetree+bounces-317624-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 05JcMZ6aQ2qJdAoAu9opvQ
	(envelope-from <devicetree+bounces-317624-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 12:29:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BCDF6E2DC2
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 12:29:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=mtwSL4LB;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317624-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317624-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=bootlin.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A842C30889BF
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 10:28:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC27C3F1670;
	Tue, 30 Jun 2026 10:27:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B70FA3F1676
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 10:27:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782815267; cv=none; b=OtYJYuPfmOThNGyOiUuqniet78fQJCIpHrTz907vNmr0KpLuxKM5woEAoTS+7SD6IT/7skW7VnLw4m69BTiY8EaaHsI2tXCgljdu+BPTeOQ4eu06dgilVQcfsvm/3dHzFvC3mXxaGDqkelXOVNoqGv5L6is/pZeE4lDSWOZSafQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782815267; c=relaxed/simple;
	bh=8bzUWhIDa9iIuUSeW9u3iBPqKTrOLGkOD0khSSiKvRY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=WAkZ6Yciso9+/tTWFxwb0wjF+NZZ7a5FHq1PaXoYpzaG6ZBN27/iqFq5X4s03z0CZfnXL9JS/SxauLX9iPlnDv31gvaLQkMQaMmQMWTddjKfXa4mPK4+NGieecCT4gW+dvpnLZeanO2l5BjT3zvwt50ZmtPX+2l5dVN5Yoriezs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=mtwSL4LB; arc=none smtp.client-ip=185.171.202.116
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 5259AC5CD47;
	Tue, 30 Jun 2026 10:27:53 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id B45B56025A;
	Tue, 30 Jun 2026 10:27:42 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 04124106F1D67;
	Tue, 30 Jun 2026 12:27:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1782815261; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding; bh=w4BPATJGU7K6PkdoXAa/bfEwTs5+MbuE+tXijyNTszg=;
	b=mtwSL4LBmPjRKn7lBcNSAMywLTZLkcZpnZAxEGqaobQC24ZOO3boKyLdKbxihln5wgtaBe
	aoMZSUgJns0jt1diP5bf0vPot5SJGrhuycaY50+Z0ECBpDjMzOAysj+8vfBU6kV2XsPaAO
	UbT+I2iQVsJIzrsCIIZaui99mMv353r4jvBLM2+5Z475+wQSjUub15m2tCljE8ejl68vwb
	K2tXWLlyo3ldln0S/Xxph5yVtj72aCB0OcAbTbsc5sEDquBih0uyRIuhjP+G6BWKfPlDJb
	0VIDawRm0ZgqN3oYvoLxcS8hoC2r5Soz2lwNf2tVy9WvBHiJEgsnxfox86AyEw==
From: Herve Codina <herve.codina@bootlin.com>
To: Andrew Lunn <andrew@lunn.ch>,
	Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Kalle Niemi <kaleposti@gmail.com>,
	Matti Vaittinen <mazziesaccount@gmail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Danilo Krummrich <dakr@kernel.org>
Cc: driver-core@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Allan Nielsen <allan.nielsen@microchip.com>,
	Horatiu Vultur <horatiu.vultur@microchip.com>,
	Daniel Machon <daniel.machon@microchip.com>,
	Steen Hegelund <steen.hegelund@microchip.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Herve Codina <herve.codina@bootlin.com>
Subject: [PATCH v8 0/2] lan966x pci device: Add support for SFPs, simple-bus part
Date: Tue, 30 Jun 2026 12:27:11 +0200
Message-ID: <20260630102717.413501-1-herve.codina@bootlin.com>
X-Mailer: git-send-email 2.54.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-317624-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[lunn.ch,kernel.org,glider.be,gmail.com,linuxfoundation.org];
	FORGED_SENDER(0.00)[herve.codina@bootlin.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_RECIPIENTS(0.00)[m:andrew@lunn.ch,m:robh@kernel.org,m:saravanak@kernel.org,m:geert+renesas@glider.be,m:kaleposti@gmail.com,m:mazziesaccount@gmail.com,m:gregkh@linuxfoundation.org,m:rafael@kernel.org,m:dakr@kernel.org,m:driver-core@lists.linux.dev,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:allan.nielsen@microchip.com,m:horatiu.vultur@microchip.com,m:daniel.machon@microchip.com,m:steen.hegelund@microchip.com,m:luca.ceresoli@bootlin.com,m:thomas.petazzoni@bootlin.com,m:herve.codina@bootlin.com,m:geert@glider.be,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[herve.codina@bootlin.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,bootlin.com:dkim,bootlin.com:mid,bootlin.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3BCDF6E2DC2

Hi,

Previously, I sent a big picture series adding support for SFP ports
available on the LAN966x PCI device [0].

In this series patches touch several parts and sub-system in the kernel.
Reviews have be done and it makes sense to split the series and send
parts separately.

This current series is the extraction of patches related to the
simple-bus driver. It has to be seen as a continuation of the big
picture series but related to this specific simple-bus part.

Patches 1 and 2 makes the simple-bus driver compatible with fw_devlink
expectation consisting in creating its child devices at probe.

[0] https://lore.kernel.org/all/20260325143555.451852-1-herve.codina@bootlin.com/

Best regards,
Hervé

Changes:

v7 -> v8
  v7: https://lore.kernel.org/all/20260511155902.34534-1-herve.codina@bootlin.com/

  Rebase on top of v7.2-rc1
  No nother changes

v6 -> v7

  Rebase on top of v7.1-rc1

  - Patch 1
    No changes

  - Patch 2
    Fix conflict due to device_has_driver_override() introduction.

Older iterations:
  Patches 4 and 5 in the big picture series
  https://lore.kernel.org/all/20260325143555.451852-1-herve.codina@bootlin.com/

Herve Codina (2):
  bus: simple-pm-bus: Remove child devices when the bus is unbound
  bus: simple-pm-bus: Populate child nodes at probe

 drivers/bus/simple-pm-bus.c | 24 +++++++++++++++---------
 1 file changed, 15 insertions(+), 9 deletions(-)

-- 
2.54.0



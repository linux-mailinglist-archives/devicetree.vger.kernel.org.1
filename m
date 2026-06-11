Return-Path: <devicetree+bounces-310550-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qe1lInj7KmpI0gMAu9opvQ
	(envelope-from <devicetree+bounces-310550-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 20:16:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D7D0F674605
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 20:16:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310550-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-310550-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AD85F303C40F
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 18:12:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25543410D20;
	Thu, 11 Jun 2026 18:12:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8E340803F
	for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 18:12:49 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781201572; cv=none; b=kOmETj7lr8+YT4w06yw5aUcqKPgKQhQsSyjXTTn+adNn6jgRJQYIRyA/StH7bWxH6WrbNsbvvN80R+SyygkfLR5NQER1PPnJ5kY/R/3SXOHi3q4ANbyQyXnxgmQ2FDS5dJvtx0IMJDkES377yX21OREN3Wy2AnTvCkVibiTo4FQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781201572; c=relaxed/simple;
	bh=HkGhT3NjYzPW2BC9L4lIdXyXEwI8DQLjwA7FwJ5RTNI=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=dQz+cScBWrcXDJKcAKDymOcV0frRJP6Xyi3xU94EgFp0FScQSLR8VKsV1iWnfmj98UhJnh/UObit7W9JWQRfLWIKa/Q/HMdwKOTv3M/AwR8mTNuhtA8eiL9rlffSTiqZ9mqX1EIe2DWGkBf32vkMgmZ/GBR33BLwLQlTiX0F2g0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wXjtM-0003nU-U2; Thu, 11 Jun 2026 20:12:36 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wXjtM-002Fqt-14;
	Thu, 11 Jun 2026 20:12:36 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wXjtM-00000003Ffp-10qe;
	Thu, 11 Jun 2026 20:12:36 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH 0/3] ARM: dts: stm32: lxa: change stdout-path baud rate
 from 9600 to 115200
Date: Thu, 11 Jun 2026 20:12:32 +0200
Message-Id: <20260611-lxa-stdout-path-baudrate-v1-0-59b60a5069ff@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJD6KmoC/yXMwQqDMAyA4VeRnBdoxSnsVcYOsY2aMVSaVATx3
 dfN43f4/wOUk7DCozog8SYqy1zgbxWEieaRUWIx1K5uXes9fnZCtbhkw5Vswp5yTGSMXRiaexM
 iseug5GviQfb/+vm6rLl/c7DfD87zC2FpymF8AAAA
X-Change-ID: 20260611-lxa-stdout-path-baudrate-7cf454cdae07
To: Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 =?utf-8?q?Leonard_G=C3=B6hrs?= <l.goehrs@pengutronix.de>, 
 Marc Kleine-Budde <mkl@pengutronix.de>
Cc: Alexandre Torgue <alexandre.torgue@st.com>, devicetree@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 kernel@pengutronix.de, Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.15.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:alexandre.torgue@foss.st.com,m:mcoquelin.stm32@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:l.goehrs@pengutronix.de,m:mkl@pengutronix.de,m:alexandre.torgue@st.com,m:devicetree@vger.kernel.org,m:linux-stm32@st-md-mailman.stormreply.com,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:kernel@pengutronix.de,m:a.fatoum@pengutronix.de,m:mcoquelinstm32@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[foss.st.com,gmail.com,kernel.org,pengutronix.de];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-310550-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,pengutronix.de:email,pengutronix.de:mid,pengutronix.de:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D7D0F674605

The LXA boards are the only STM32 boards that set stdout-path = &uart*
instead of explicitly specifying a baud rate.

This would mean the default of 9600 is used, but it goes unnoticed when
booting normally as barebox fixes up a console= line that includes a
baud rate.

When EFI booting GRUB however, GRUB will not pass along the console=
line and thus the board ends up with a 9600 baud Linux console,
confusing users.

This series fixes this. As the device trees were added at different
times, they are fixed each in a separate commit with its own Fixes: tag.

---
Ahmad Fatoum (3):
      ARM: dts: stm32: lxa-mc1: change stdout-path baud rate from 9600 to 115200
      ARM: dts: stm32: lxa-tac: change stdout-path baud rate from 9600 to 115200
      ARM: dts: stm32: fairytux2: change stdout-path baud rate from 9600 to 115200

 arch/arm/boot/dts/st/stm32mp153c-lxa-fairytux2.dtsi | 2 +-
 arch/arm/boot/dts/st/stm32mp157c-lxa-mc1.dts        | 2 +-
 arch/arm/boot/dts/st/stm32mp15xc-lxa-tac.dtsi       | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)
---
base-commit: 4549871118cf616eecdd2d939f78e3b9e1dddc48
change-id: 20260611-lxa-stdout-path-baudrate-7cf454cdae07

Best regards,
--  
Ahmad Fatoum <a.fatoum@pengutronix.de>



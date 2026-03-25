Return-Path: <devicetree+bounces-280383-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wJCIHK/Dw2kVuAQAu9opvQ
	(envelope-from <devicetree+bounces-280383-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 12:14:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CA68A323BC3
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 12:14:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6DBB1316D555
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 11:07:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EDDB3C945A;
	Wed, 25 Mar 2026 11:07:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="eOePdaBu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8594B3C7E07
	for <devicetree@vger.kernel.org>; Wed, 25 Mar 2026 11:07:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774436846; cv=none; b=Ew6NSSshA5+DukuqTwpX3I4ErIyIEC30TUBz/6RYd/sxVKp8jp77ADKN1BR0TtNqfkc+4Puov6wQ3UstC2BkaPePoWdYX6O9idDdgQTrBsuWwnDUYTaY/da9CcfDQ4g/SX78XYFO4nGbUDQa8qszM/7oDRCdwveW5EVqFKQ1EdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774436846; c=relaxed/simple;
	bh=gT0ZXWJ1uiV1TcdQdeuxG+3Fiq3ngx1rL8+Gdvpc5pw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=qjRQWaEymuGRgVQYonebv/qOkD1T4db8g+m+vF4ar01ub7rQNUGEf3l3wG4SVS/Kd4jv9xSeNom4wV9gj7hhwIYLMSbEntjVKT9nSftv/k8adF08sAgtOlQ7C/qWDGW1YW9dQgjmAyBgPHlnRLB2gdIlKHL85C/rk7dZCa8M01M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=eOePdaBu; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:mime-version:content-transfer-encoding; s=k1; bh=E8yh68TeQnns/y
	3/ib3am8CB2h57aExT1LK3V3hcdww=; b=eOePdaBuE5Oe9b/NmJMJDocc2JQBhU
	YhEuc0upRfr6E/U8DIilmRA1UNMk7l2wNeTyCDlQKw0zHyWblJVTH0YUJ1mrqwpP
	qOQW3ZtTiPKdY2yfLy8koJcDCMNUN0KCdvGW5RGPDsjvM9WbUKmw/lNpQZhBufRy
	ynXUIg63UlcXBn68z0xioCpaky/xZcHs1NvzdXCrsMNcpCTRSqqbPNpoyDxV+5kx
	zNlnkC5ygV/dOxUQGv8MVTJoqx/4cuz+Ymmm9Dos20UHZasH6gnSO7JKlet41t0I
	L9kGFJA1VxUkmXTO/qUuBvffIWLbgvcaCqX9UtX+aR0KPC4gIP2A4iUA==
Received: (qmail 3520732 invoked from network); 25 Mar 2026 12:07:18 +0100
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 25 Mar 2026 12:07:18 +0100
X-UD-Smtp-Session: l3s3148p1@DoRsRddNVKIujnt7
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Marek Vasut <marek.vasut@mailbox.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	devicetree@vger.kernel.org,
	Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v2 0/3] soc: renesas: add MFIS driver
Date: Wed, 25 Mar 2026 12:07:12 +0100
Message-ID: <20260325110717.17083-1-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-1.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[sang-engineering.com:s=k1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-280383-lists,devicetree=lfdr.de,renesas];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wsa@sang-engineering.com,devicetree@vger.kernel.org];
	DMARC_NA(0.00)[sang-engineering.com];
	FREEMAIL_CC(0.00)[mailbox.org,kernel.org,vger.kernel.org,sang-engineering.com,glider.be,gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[sang-engineering.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: CA68A323BC3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Changes since v1 are in the patch descriptions.

Renesas R-Car MFIS offers multiple features but most importantly
mailboxes and hwspinlocks. Because they share a common register space
and a common register unprotection mechanism, a single driver was chosen
to handle all dependencies. (MFD and auxiliary bus have been tried as
well, but they failed because of circular dependencies.)

In this first step, the driver implements common register access and a
mailbox controller. hwspinlock support will be added incrementally, once
the subsystem allows out-of-directory drivers (patches already under
review). This driver has been tested on a Renesas Ironhide board (R-Car
X5H) and is able to communicate with the SCP via mailboxes. Also, the
mailbox-test driver was used to confirm back-and-forth communication
between two application cores.

Because of its multifunctional nature, the driver lives in
drivers/soc/renesas. As large parts of these patches handle mailbox
support, review from mailbox expeirenced people is much appreciated.

A branch can be found here:

git://git.kernel.org/pub/scm/linux/kernel/git/wsa/linux.git renesas/x5h/mfis-single-driver

Thanks and happy hacking,

   Wolfram

Wolfram Sang (3):
  dt-bindings: soc: renesas: Document MFIS IP core
  soc: renesas: Add Renesas R-Car MFIS driver
  soc: renesas: add X5H PRR support

 .../soc/renesas/renesas,r8a78000-mfis.yaml    | 187 ++++++++++
 drivers/soc/renesas/Kconfig                   |   9 +
 drivers/soc/renesas/Makefile                  |   1 +
 drivers/soc/renesas/rcar-mfis.c               | 344 ++++++++++++++++++
 drivers/soc/renesas/renesas-soc.c             |   8 +-
 .../dt-bindings/soc/renesas,r8a78000-mfis.h   |  28 ++
 6 files changed, 576 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/soc/renesas/renesas,r8a78000-mfis.yaml
 create mode 100644 drivers/soc/renesas/rcar-mfis.c
 create mode 100644 include/dt-bindings/soc/renesas,r8a78000-mfis.h

-- 
2.51.0



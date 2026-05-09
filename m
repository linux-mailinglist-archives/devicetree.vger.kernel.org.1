Return-Path: <devicetree+bounces-294919-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0FPsHIFh/2n45wAAu9opvQ
	(envelope-from <devicetree+bounces-294919-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 09 May 2026 18:32:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BE88050077E
	for <lists+devicetree@lfdr.de>; Sat, 09 May 2026 18:32:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C9EAA300FC79
	for <lists+devicetree@lfdr.de>; Sat,  9 May 2026 16:31:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F16902BDC0B;
	Sat,  9 May 2026 16:31:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b="bNikaWiB"
X-Original-To: devicetree@vger.kernel.org
Received: from layka.disroot.org (layka.disroot.org [178.21.23.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BA161DC9B5;
	Sat,  9 May 2026 16:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.21.23.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778344316; cv=none; b=Fpk+UGsgEUkc81UjJrrU5XZTCip2qbInvc4SjQxVwRxy2h6hYP4MARISFgJug6H8000OKTLzz4spC5xYHLS8PRhOaR/fWNxWsppCrm9exlbZbaakceMjRXvqfEOU0os66t5aUhvILtz0CXlVajJNFkz67L4PRk0GX57loJCbskg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778344316; c=relaxed/simple;
	bh=SeCJV7x6Kw87O4aRrgIJhUsZpHLgIsL3XYf+bKptXT4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=quMZSYqxAbV0KriRs55fFFFY+wwo8NtcKeubCUwQjab4DuEBjSrLbqZNKL+R8rbwFZLgijstY0ncZ8thPTDZaZKlMaVBk28qIKzqdW0W6B7cqb7SHaXuKqBCquPDSqOd+R+7Dx+33PYCIY+xm7EWrbIdfeE0Kb24m/6Cq9E+gvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org; spf=pass smtp.mailfrom=disroot.org; dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b=bNikaWiB; arc=none smtp.client-ip=178.21.23.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=disroot.org
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 8492027251;
	Sat,  9 May 2026 18:31:47 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FM7nYVuAHbAp; Sat,  9 May 2026 18:31:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1778344307; bh=SeCJV7x6Kw87O4aRrgIJhUsZpHLgIsL3XYf+bKptXT4=;
	h=From:To:Cc:Subject:Date;
	b=bNikaWiB5XTIngQOvV1+JLxkbS68MVlFgau1W9RSWu4+hWwp5CEXeMGBn80E2snX2
	 D2JpeWJh3Yq2JJeCqpi5klsd3vdwcd44OOfaw+UsPa8+q6e86+40yQMZfHdMJmYXMK
	 zOOb0K+xvHOoBDUCsJUXSD0dj7r2iPnqZTBuarQxTe67EiOoRwe6dix7ht3gTnPUnT
	 8+ENIw7qqLa6BXPDUeR2Mpz1XriSArHRJXNEnuRC9a126fIFhCxnywIHFhFsS0d8DY
	 8Y6OYp0/nmqez1RQz2hQmXzdeb+DOYP8/kHx73IQ0VmlHNMCJVL0qEcw9VqYOHMBiq
	 F3Kkk5agm4dzQ==
From: Rustam Adilov <adilov@disroot.org>
To: Sander Vanheule <sander@svanheule.net>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Rustam Adilov <adilov@disroot.org>
Subject: [PATCH 0/3] watchdog: realtek-otto: Make use of regmap API and add RTL9607C support
Date: Sat,  9 May 2026 21:30:58 +0500
Message-ID: <20260509163101.722793-1-adilov@disroot.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: BE88050077E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[disroot.org,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[disroot.org:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-294919-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[disroot.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[adilov@disroot.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-0.995];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action

This patch series changes the driver to use regmap API for all of the
register access stuff instead of the ioread32 and iowrite32 with __iomem.

It also adds support for watchdog timer on RTL9607C SoCs and since it is
indentical to the already supported SoCs no major changes are needed.

Rustam Adilov (3):
  watchdog: realtek-otto: Change to use regmap API
  dt-bindings: watchdog: realtek,otto-wdt: add compatible for RTL9607C
  watchdog: realtek-otto: add RTL9607C support

 .../bindings/watchdog/realtek,otto-wdt.yaml   |  1 +
 drivers/watchdog/Kconfig                      |  1 +
 drivers/watchdog/realtek_otto_wdt.c           | 74 ++++++++++---------
 3 files changed, 40 insertions(+), 36 deletions(-)

-- 
2.54.0



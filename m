Return-Path: <devicetree+bounces-259910-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WD/ECGXEeGmltAEAu9opvQ
	(envelope-from <devicetree+bounces-259910-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 14:57:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 702DD953B2
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 14:57:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C001B30A6C45
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 13:51:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C2AC35A952;
	Tue, 27 Jan 2026 13:51:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="YzYy1bdh"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA2733570AD
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 13:51:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769521882; cv=none; b=LpKaTVZTs8K/XQ7uzOLNhFVm49n3yC8+tpF9emGaNwBCCUJl2taD6yEVq9SStE07mJdxJnAWVy0jTjh2HKU+18lC1ZxM6JfTLx72LTamNhIHKMir/R+HUgQfCtLrAgj9Rj5SJ7EevmEMfx1RVEp/qDdyJsg5B+3grRgib4auLYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769521882; c=relaxed/simple;
	bh=mU7rN9U/acDyB+wFT+adJR4gELkfgs9YvJc42SqqdiY=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=GiJHpVb/ANEpg53mKtu7jP89RqyySdy6tn0sIJIUQQ3nTppPjhfKR0EcxDM1sRanRJ0YvPX062NzEVzUepJesBHKd2EixT3opUzlZ5cqgyDaECL7aiLyQyuOwTPgyHjuFd1ttftHSXJzZFMrMpizKGtGoyueR2eD+4bv/TakFPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=YzYy1bdh; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 34D60C211C0;
	Tue, 27 Jan 2026 13:51:20 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 141ED606F5;
	Tue, 27 Jan 2026 13:51:18 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 4C234119A864C;
	Tue, 27 Jan 2026 14:51:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1769521877; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding; bh=nwqSHhrQgWepi26RA/6tBPWARBPeEX77+mpkRyntIgI=;
	b=YzYy1bdhKLmlwqLs1ZbHq77le0HQfniO/QHR3wrgzGzLMlQv7Wwocxzp3MmGnAeCcNZACH
	bDXJYMI2hwUBmvgbYB1tZOONKwlVDJeV6Ks986shn6JE212z0PQxUJVyfN5lH6CCQIUIqg
	ewOUXx98fuMVRnSyONj67AcBh77qRVnmtGZNn9gwS38+VlAvQ2sD121tLgHWXQz09cDDY9
	6bRJ6bw/GG5EtGIxfHzuD1zcK+PRuMLXTjbHMqVLsQh/lxmYI6Y7nLkOMewAGtjnk8vo62
	ZOEh9LYPXnhuu4vPFJE+nYPyBWieNOJi8psNe0gW3/wuA4as2WvxyPxQ+5bUjw==
From: Romain Gantois <romain.gantois@bootlin.com>
Subject: [PATCH 0/2] misc: ti_fpc202: Add LED support
Date: Tue, 27 Jan 2026 14:51:09 +0100
Message-Id: <20260127-fpc202-leds-v1-0-ebd0cfb9f9a1@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAM7CeGkC/x2MQQqAIBQFryJ/naCGBl0lWoQ+60OYKEQg3T1pN
 7OYaVRRGJVm0ajg5spX6qIHQf7Y0g7JoTsZZZzSxsmYfWd5IlRpx4DoPCarQb3IBZGf/7as7/s
 BrQDLhV0AAAA=
X-Change-ID: 20260126-fpc202-leds-53def6ce751e
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Romain Gantois <romain.gantois@bootlin.com>
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259910-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[bootlin.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[romain.gantois@bootlin.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bootlin.com:email,bootlin.com:dkim,bootlin.com:mid]
X-Rspamd-Queue-Id: 702DD953B2
X-Rspamd-Action: no action

Hi everyone,

The FPC202 dual port controller features eight special-purpose ports which
are meant to drive LEDs. These support PWM and blink offloading.

This series adds support for these special-purpose LED ports.

Best Regards,

Romain

Signed-off-by: Romain Gantois <romain.gantois@bootlin.com>
---
Romain Gantois (2):
      dt-bindings: misc: Describe FPC202 LED features
      misc: ti_fpc202: Support special-purpose GPIO lines with LED features

 .../devicetree/bindings/misc/ti,fpc202.yaml        |  22 ++
 drivers/misc/Kconfig                               |   1 +
 drivers/misc/ti_fpc202.c                           | 339 ++++++++++++++++++++-
 3 files changed, 349 insertions(+), 13 deletions(-)
---
base-commit: a8a6d9b4da001a84dd715d92f034d2bf777199c8
change-id: 20260126-fpc202-leds-53def6ce751e

Best regards,
-- 
Romain Gantois <romain.gantois@bootlin.com>



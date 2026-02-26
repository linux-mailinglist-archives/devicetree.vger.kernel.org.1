Return-Path: <devicetree+bounces-268869-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wLlhEHFUoGmPiQQAu9opvQ
	(envelope-from <devicetree+bounces-268869-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 15:10:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DEBA1A7428
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 15:10:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 221B031AF01D
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 13:52:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 210C839C653;
	Thu, 26 Feb 2026 13:52:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="boH+0FkY"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07FB536A025
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 13:52:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772113923; cv=none; b=BDU7+2UF0oGquZMJaj6djek3CNlGfXFKzJqyWRMQTmPODpkuuXSVw9OHgd4sCoBNgt7Fer4cNT7s6zs0pOs7FNY4intL7uyHhxIpAUHiX5in40jnUwcV1kw4+TvJzKTFGnsO8aoIAnV9ZQtB+VZIrVylPJU483yEh/VSBwVDmSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772113923; c=relaxed/simple;
	bh=ytngJLLxg84vkD0c23N9PuGvpAftX7ITkcxywtv6FZY=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=VHZyNZywgd8XssUlmQt/ZqDUOZihDVWXGX8bpF6m47VNlo6Adc0JGxYeDJOJvhlj5C6/4GQDAo1lV5M+25a9DU7uNQYyFCgeEqHFEcSpMy6CIQXE2houNceaLt1Ox+Vaf5WILPY8AJHr/N+7rf/OGqtHBUALks+Mf93O9BD60yY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=boH+0FkY; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 3393D1A13C0;
	Thu, 26 Feb 2026 13:51:58 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 076015FDEB;
	Thu, 26 Feb 2026 13:51:58 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 96F191036937F;
	Thu, 26 Feb 2026 14:51:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1772113917; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding; bh=+H5s+x44ry9i9n0frvxY321pHv3G5vTtrk1Z6KHg5Jw=;
	b=boH+0FkYs9MTjjHhcB7Gy6MhOuNw86EJfxbYAYa3bOCh3uceFUpJjE0fIeJoXV34nx8usd
	6je4/cz7ppxZRH3XDydVULwfNteJWhxc5G8UpQmlTMNV07RZr0ty18T2k0NgcUB935W5Qz
	iJqJhUQqnr8Iz3WTIle8KcGIoVVmMxXT8cNPhhuAppa8NkXHxSXHJw1a7bHJt4F0gcLRla
	u+PUYq87Tf97iD6MjvRapvYVGgMpa2B2Vt2ulxfFO87ERmRF0O+9PPGOjg5kWTOsLTnucj
	571jAXlilrj6+Q5UvY6Vn1ZuhMJlzmSX9wL3Anm459ZCVy6gw22PqR9C5D9UGg==
From: Romain Gantois <romain.gantois@bootlin.com>
Subject: [PATCH v2 0/3] misc: ti_fpc202: Add LED support
Date: Thu, 26 Feb 2026 14:51:50 +0100
Message-Id: <20260226-fpc202-leds-v2-0-bc74857869e0@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPZPoGkC/1XMQQrCMBCF4auUWTuSRJpSV95DumiSiR2oTUlKU
 Erubiy4cDf/wPt2SBSZElybHSJlThyWGurUgJ3G5UHIrjYoobSQSqNfbb1xJpewvTjy2lLXSoK
 6WCN5fh3afag9cdpCfB94lt/vz+n+nCxRIBknrDe970d5MyFsMy9nG54wlFI+OpG2DqgAAAA=
X-Change-ID: 20260126-fpc202-leds-53def6ce751e
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Felix Gu <ustc.gu@gmail.com>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Romain Gantois <romain.gantois@bootlin.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,bootlin.com,vger.kernel.org,microchip.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268869-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[bootlin.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[romain.gantois@bootlin.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.989];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:mid,bootlin.com:dkim,bootlin.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7DEBA1A7428
X-Rspamd-Action: no action

Hi everyone,

This series depends on "misc: ti_fpc202: two small fixes" by Felix Gu:

https://lore.kernel.org/all/20260221-fp202-v1-0-4d28cb8b28fb@gmail.com/

The FPC202 dual port controller features eight special-purpose ports which
are meant to drive LEDs. These support PWM and blink offloading.

This is version two of my series which adds support for these
special-purpose LED ports.

Best Regards,

Romain

Signed-off-by: Romain Gantois <romain.gantois@bootlin.com>
---
Changes in v2:
- Avoided selecting foreign subsystems in Kconfig
- Rebased on conflicting bugfix series
- Link to v1: https://lore.kernel.org/r/20260127-fpc202-leds-v1-0-ebd0cfb9f9a1@bootlin.com

---
Romain Gantois (3):
      misc: ti_fpc202: Depend on GPIOLIB instead of selecting it
      dt-bindings: misc: Describe FPC202 LED features
      misc: ti_fpc202: Support special-purpose GPIO lines with LED features

 .../devicetree/bindings/misc/ti,fpc202.yaml        |  22 ++
 drivers/misc/Kconfig                               |   3 +-
 drivers/misc/ti_fpc202.c                           | 339 ++++++++++++++++++++-
 3 files changed, 350 insertions(+), 14 deletions(-)
---
base-commit: 486b22d5a7306613f12e308208cd54352099d444
change-id: 20260126-fpc202-leds-53def6ce751e

Best regards,
-- 
Romain Gantois <romain.gantois@bootlin.com>



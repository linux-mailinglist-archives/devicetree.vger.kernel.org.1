Return-Path: <devicetree+bounces-280327-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gDw/O6Kxw2kktgQAu9opvQ
	(envelope-from <devicetree+bounces-280327-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 10:57:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 54AD7322883
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 10:57:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6D560300A614
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 09:54:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E813739F196;
	Wed, 25 Mar 2026 09:54:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="T/SPqxwk"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 678A839D6FA
	for <devicetree@vger.kernel.org>; Wed, 25 Mar 2026 09:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774432496; cv=none; b=AlCARpZ7TCDYuogJHQjj5S0ZwtZ2lq56Clt//UNMn063ng7fJFG/wmWORJ4hUVMaD1PdwOlf0YrNdv18RLyxM+jD+gBZ9Se+Vf6CLTGakfz20CsJisFJNKvyqYdsAzTmJUtTKTSyHbRqcgvhmle9vo/RaH4qbHZg7NYDQRSgqW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774432496; c=relaxed/simple;
	bh=ytngJLLxg84vkD0c23N9PuGvpAftX7ITkcxywtv6FZY=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=N0gGg2COFYTfr9JKEejdAoToI6tMr28FsfKpkYA/rzggHe7CStY8GZ0ZftQtnU98YEhuvvU3mivUpvzVfBxJAACETPY5XrcaSH6FBUWQhLWd+bKupYUky0trYKiadc9pTyzZMjo7HPIE4GXHnCdk5y1WDHFi2i6VfDMMAj6spBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=T/SPqxwk; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 1BEDD1A2FE3;
	Wed, 25 Mar 2026 09:54:53 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id DD4D4601A1;
	Wed, 25 Mar 2026 09:54:52 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 88DFC104513B9;
	Wed, 25 Mar 2026 10:54:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1774432492; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding; bh=+H5s+x44ry9i9n0frvxY321pHv3G5vTtrk1Z6KHg5Jw=;
	b=T/SPqxwkKvnL0kyFNj41YZroTUgmLAE9yL8yKBCmJYpuPYj8SkUuJXesJKKHaln/RWfFqE
	ivcSNPWRxGEmYMA+k2IzFPsZpOBJaGRj6ydo5ttK2RnDW534qCwaflCUn075pZv8Gw48py
	MGSGFRGMhY1hE5E2wND6VntlTqXXjufC4vMcs6tyvq5FqEpzGh7VAHJJHYwwfCorysNVxa
	e2f8j/zoEeEedNLWp1qdvnUVkEn+PhGjhHdjfQZTG6RC0R+ITCQpwrrKMx2AUNbudI6tDi
	HXebva+tpDhqSQqPeFuNb8jIY8GhAJPNEbJby6iSTEg/PzoEO/FvImKhPklS8w==
From: Romain Gantois <romain.gantois@bootlin.com>
Subject: [PATCH RESEND v2 0/3] misc: ti_fpc202: Add LED support
Date: Wed, 25 Mar 2026 10:54:30 +0100
Message-Id: <20260325-fpc202-leds-v2-0-a2f4da739b92@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
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
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,bootlin.com,vger.kernel.org,microchip.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-280327-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[bootlin.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[romain.gantois@bootlin.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:dkim,bootlin.com:email,bootlin.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 54AD7322883
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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



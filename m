Return-Path: <devicetree+bounces-324614-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hDZYLgE4UWqnAwMAu9opvQ
	(envelope-from <devicetree+bounces-324614-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 20:20:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ED2873D4BF
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 20:20:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=LzpjpMQu;
	dmarc=pass (policy=reject) header.from=bootlin.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324614-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-324614-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B55213015868
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 18:20:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9846D349CFE;
	Fri, 10 Jul 2026 18:20:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 599161A6831
	for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 18:20:43 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783707646; cv=none; b=D3pslj80145i9k4OjE0939zwNeRg1jU2Ztu41HUrL2XNTnf2zZxyk2bYqZiLdnG19PfwZZ4cvgE1YqiOqHBALZoA2d2w33eL1WkcewSgOcD2TOKF9eYHLtuozGk+JSeVhWvB5b/V2TaVwiAkMcknJpnmYBsVJxPy+tL+L8WzVtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783707646; c=relaxed/simple;
	bh=quUhxcI6irdcHSkn3yS8V/qx2dN4wvF15NtmR1BHVU8=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=VA+MH7uj+JPtAvGInr4swPg/zgq42FOgjCnWdoaiZszpV2hKw5KRE1VavSEK9ISXv7vfdmoLNkVgvuRxs0TaalP8GOmnG7h/AX8yGLfQyOHKuDtZT+B71c3OLgniocc20JqocdT3KgxIrzMvyaIsJMLi+G+/cYKBcfV95A5LQeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=LzpjpMQu; arc=none smtp.client-ip=185.246.84.56
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id C28851A0F46;
	Fri, 10 Jul 2026 18:20:41 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 94FEE60342;
	Fri, 10 Jul 2026 18:20:41 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 4D62211BD2C18;
	Fri, 10 Jul 2026 20:20:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1783707640; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding; bh=911SMfcP0+qYpn1U0RluG5K8SwviOW20UZzlW2EGqrk=;
	b=LzpjpMQua4s0Qd7p661sbLcbI+7iujgJgxPv26WxO2vF6zgwAHeKSUp8zHcjLcHX7KREeC
	q96w/KUN1Zbq3odhJkpKSbzvJJFKOSa/YDtRcHetTypBdqSqm+p1KYq4UaRUqsvbnemsWP
	VURh2M6niwuYUxN8SSSuYr+lDM6eCWhxBu0Z0jTNEWNk+dAc0WGqN258IHwMTF3dyT8DK7
	uNCn+yrfaVk1oZcoHaNnxB/D4XEItlGioXyipHnU3K2BS/DNoqSHGiCPGrH2CC3bP+exfL
	YrucgnZ06S1TijMWzJOlH/PAe1w+iRmz4d+0Pa80+Jo6725+Xx6jrtjZMru9bA==
From: "Miquel Raynal (Schneider Electric)" <miquel.raynal@bootlin.com>
Subject: [PATCH v2 0/2] hwrng: Enable EIP-76 on RZ/N1
Date: Fri, 10 Jul 2026 20:20:31 +0200
Message-Id: <20260710-schneider-v7-2-rc1-eip76-upstream-v2-0-4eab557b0e70@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/x3NQQrCMBBG4auUWTuQRE3Eq4iLkPy1szCGGS1C6
 d0NLr/NexsZVGB0nTZSrGLyagPhMFFZcnuApQ5TcCG65B1bWRqkQnlNHFiLZ0hPkT/d3or85FO
 N+XJ0/jwn0Oh0xSzf/+N23/cfJoGK0nMAAAA=
X-Change-ID: 20260710-schneider-v7-2-rc1-eip76-upstream-4d6a83015f7e
To: Olivia Mackall <olivia@selenic.com>, 
 Herbert Xu <herbert@gondor.apana.org.au>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jayesh Choudhary <j-choudhary@ti.com>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Pascal EBERHARD <pascal.eberhard@se.com>, 
 Wolfram Sang <wsa+renesas@sang-engineering.com>, 
 linux-crypto@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 "Miquel Raynal (Schneider Electric)" <miquel.raynal@bootlin.com>
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-324614-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:olivia@selenic.com,m:herbert@gondor.apana.org.au,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:j-choudhary@ti.com,m:thomas.petazzoni@bootlin.com,m:pascal.eberhard@se.com,m:wsa+renesas@sang-engineering.com,m:linux-crypto@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:miquel.raynal@bootlin.com,m:krzk@kernel.org,m:conor@kernel.org,m:wsa@sang-engineering.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp,bootlin.com:from_mime,bootlin.com:email,bootlin.com:mid,bootlin.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4ED2873D4BF

The EIP-76 is an block from Inside-Secure which is not at all OMAP
specific. Make it available on Renesas RZ/N1 where it is present inside
a container named EIP-150.

These patches come from a bigger series which I split into meaningful
patchsets, one per subsystem:

Link: https://lore.kernel.org/all/20260327-schneider-v7-0-rc1-crypto-v1-0-5e6ff7853994@bootlin.com/

Changes in v2:
- Patches have been extracted from the bigger series.
- Rebased on top of v7.2-rc1.
- Tag from Rob collected.

Signed-off-by: Miquel Raynal (Schneider Electric) <miquel.raynal@bootlin.com>
---
Miquel Raynal (Schneider Electric) (2):
      dt-bindings: rng: Rename the title of the EIP-76 file
      hwrng: omap: Enable on Renesas RZ/N1D

 Documentation/devicetree/bindings/rng/inside-secure,safexcel-eip76.yaml | 2 +-
 drivers/char/hw_random/Kconfig                                          | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)
---
base-commit: 7f26e010764df304602f33912a0550dcf46e72c2
change-id: 20260710-schneider-v7-2-rc1-eip76-upstream-4d6a83015f7e

Best regards,
-- 
Miquel Raynal (Schneider Electric) <miquel.raynal@bootlin.com>



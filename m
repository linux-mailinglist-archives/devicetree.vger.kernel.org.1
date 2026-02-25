Return-Path: <devicetree+bounces-268464-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IDmyFwwjn2mPZAQAu9opvQ
	(envelope-from <devicetree+bounces-268464-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 17:27:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A627819A98E
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 17:27:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5D27E306DF31
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 16:24:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46E903D3D12;
	Wed, 25 Feb 2026 16:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="jaqIBn8n"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE5763BFE37
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 16:24:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772036694; cv=none; b=Ycfx6G4FRvxYxCYaVFBjjwEqF51zFINLNq9J3JKlnh2csuzRwSOFmxRCTI+8PXmXSxUMzcJUDL8Lz5D7IT6O904kgRd4Rs7KrDYs9u096cC9EI+KgyvyWISRuDHHGR4Q8gX6RlF3cRW0QNoshRy1fCYQXWATLjT5vmqFbeZwJAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772036694; c=relaxed/simple;
	bh=qOadDvcg3RU0TL5ZScy+WDGCW+0pudaZH98N4h1r7qc=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=BpAXdZNoywkh+W9gjM7JLh2Zi+fL6qSGNGraiaHI74eQFjqd+RwPRLVN+XJuUyk/B+gpGrbtOubPSBeD1x1wFRN8/gPDWWJpkAg/WeEw2QvTUw1zYK8WzPbpznT7NPibOGJzbeUmlcCrKNXOD37C5E4lH8HLHSXTykbGQk5Y+nI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=jaqIBn8n; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 07F4CC143FD;
	Wed, 25 Feb 2026 16:25:05 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id DF7995FDE6;
	Wed, 25 Feb 2026 16:24:49 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id B3F66103692E7;
	Wed, 25 Feb 2026 17:24:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1772036689; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding; bh=nmi+wI2zS4OBlvKBnKMWQ6PiY7pIPLYZ5c4//l5BMWM=;
	b=jaqIBn8nFy5Oj0lMBwmAsnfpt+alt2uMFq8FQt6Yg5rjMN/xQORdftyfG44U+deFoEQ4jv
	5wp3g8Ef1R2GfRRtPLIJCRytchlE3xuJM/PT/eT8ZHCJ1cR1IA92JQwFXPbBj/Uc57BnGR
	G2AYKnNWciKSdHKDuqdN9zn4cgTawEC5llAVqO2DMFlgX2tns/A2HgNeQW/eKl57pVpi9I
	KrbJkDUsFwOv3hOgYv7ykJ5p97919Vpk6q4s2pvA00GhZB9QFDT4Aw37Et/j+Y66q7gNIw
	nqo2mq3b3ZFgc8M6L9LxHaREN/60DXVibV/wjdB/nYsH5lp7G7XB0XRJ9R8BpA==
From: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH 0/3] Fix spear600-smi YAML conversion
Date: Wed, 25 Feb 2026 17:24:42 +0100
Message-Id: <20260225-perso-fix-spear600-smi-yaml-v1-0-8ef3d205ab3a@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/x3M0QqDMAxA0V+RPC+QFlasvzL2UDVuAW1LAkMR/
 33FxwOXe4KxChsM3QnKPzEpucE9Opi+KX8YZW4GTz6Q90+srFZwkR2tctJAhLYJHmlbsScXXc8
 phjFCO1TlFt731/u6/smgcQ1tAAAA
X-Change-ID: 20260225-perso-fix-spear600-smi-yaml-801918ea96b9
To: Richard Weinberger <richard@nod.at>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Akhila YS <akhilayalmati@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Conor Dooley <conor.dooley@microchip.com>, linux-mtd@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Miquel Raynal <miquel.raynal@bootlin.com>
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
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268464-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[nod.at,ti.com,kernel.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[bootlin.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bootlin.com:mid,bootlin.com:dkim,bootlin.com:email]
X-Rspamd-Queue-Id: A627819A98E
X-Rspamd-Action: no action

Recent conversion from txt to yaml of the Spear600 SMI binding by Akhila
lead to warnings. These are my 2cts in getting the yaml conversion done
:-)

Cheers,
Miquèl

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
Miquel Raynal (3):
      dt-bindings: mtd: st,spear600-smi: Fix description
      dt-bindings: mtd: st,spear600-smi: #address/size-cells is mandatory
      dt-bindings: mtd: st,spear600-smi: Fix example

 .../devicetree/bindings/mtd/st,spear600-smi.yaml   | 26 ++++++++++++++++------
 1 file changed, 19 insertions(+), 7 deletions(-)
---
base-commit: 7dff99b354601dd01829e1511711846e04340a69
change-id: 20260225-perso-fix-spear600-smi-yaml-801918ea96b9

Best regards,
-- 
Miquel Raynal <miquel.raynal@bootlin.com>



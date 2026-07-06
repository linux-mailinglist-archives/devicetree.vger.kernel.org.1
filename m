Return-Path: <devicetree+bounces-321603-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5yYNKnouTGqIhQEAu9opvQ
	(envelope-from <devicetree+bounces-321603-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 00:38:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A0A7160BA
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 00:38:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=cyberchaos.dev header.s=mail header.b=EFwSFZCz;
	dmarc=pass (policy=reject) header.from=cyberchaos.dev;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321603-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-321603-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B2149301FD54
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 22:38:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D32A436BCD;
	Mon,  6 Jul 2026 22:38:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.cyberchaos.dev (mail.cyberchaos.dev [195.39.247.168])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C97D435A8C;
	Mon,  6 Jul 2026 22:38:45 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783377528; cv=none; b=MtWkBJ04PRqFQIgzeMeLzCktj+iPYgzl/Xqzd8Jg5eJUnNm6oyuPVU3Ja42exDojH+nBgcmKt9EkUGiu4YApJgp2uBCuslJJifE81tU4P5AYwC2V4+YOe3LWLWi1ejPKcB5w7lCe5PureS46aEGOJHXq5HaycaMPfCBsCL5LDPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783377528; c=relaxed/simple;
	bh=Cu1jgg3NbLdbM7hEx3Ub79IibbWZ8rXwwdDEvO85wLM=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=PBvLDs8FrgQOVpc4aufwqIqIC88hyKlKxP+zOIFndsv+MYJw/AuSGhFCCBNcdAkVfVG+9IIvjclj5QF3uhuNF7+buQrFMII2nnAK2GTF2m7m72m6tOGtNGEIaALuye4LYpN3Y8/R2tSBIcB40fIFCjZYsUFcLGOntVTUkGrVbZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=cyberchaos.dev; spf=pass smtp.mailfrom=cyberchaos.dev; dkim=pass (1024-bit key) header.d=cyberchaos.dev header.i=@cyberchaos.dev header.b=EFwSFZCz; arc=none smtp.client-ip=195.39.247.168
From: Yureka Lilian <yureka@cyberchaos.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cyberchaos.dev;
	s=mail; t=1783377517;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=35CpdFffP/62zFF5JjwRjV4NgkfUPe4DE5l0yRpJh9w=;
	b=EFwSFZCzFdnTBKxiciPLYWB8xFR/ASGaIUHatC0RJr/dZ1rOgbrDi3YZJliwaYZxr0k8tM
	EiJetuC90ZV8OKDOHRczEbJZPILydlCdz1H+LvjAaQHa3SBtRIZi12rQklMUL+AIAVA5Y0
	pzHEXKpEGbzS4lnXgTuwoBHyAuHIjiU=
Subject: [PATCH 0/2] PCI: apple: Integrate pwrctrl API
Date: Tue, 07 Jul 2026 00:38:26 +0200
Message-Id: <20260707-apple-pcie-pwren-v1-0-5a281b182fe2@cyberchaos.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGIuTGoC/yXMwQrDIBCE4VeRPUfQECzkVUoPcZ20W4IVbdpA8
 N1rk8vAd5h/p4IsKDSqnTI+UuQVG2yniB9TvENLaKbe9M5cjNNTSgt0YmnzzYjahGDhw2x5YGq
 3lDHLdiSvt9Nl9U/w+9+hWn/+ljMSdAAAAA==
X-Change-ID: 20260706-apple-pcie-pwren-0dd1ebdf1c4c
To: Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, Marc Zyngier <maz@kernel.org>, 
 Sven Peter <sven@kernel.org>, Janne Grunau <j@jannau.net>, 
 Neal Gompa <neal@gompa.dev>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
 asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 devicetree@vger.kernel.org, Yureka Lilian <yureka@cyberchaos.dev>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[cyberchaos.dev,reject];
	R_DKIM_ALLOW(-0.20)[cyberchaos.dev:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-321603-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:lpieralisi@kernel.org,m:kwilczynski@kernel.org,m:mani@kernel.org,m:robh@kernel.org,m:bhelgaas@google.com,m:maz@kernel.org,m:sven@kernel.org,m:j@jannau.net,m:neal@gompa.dev,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-pci@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:asahi@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:yureka@cyberchaos.dev,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[yureka@cyberchaos.dev,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yureka@cyberchaos.dev,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[cyberchaos.dev:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,cyberchaos.dev:from_mime,cyberchaos.dev:email,cyberchaos.dev:mid,cyberchaos.dev:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F0A0A7160BA

Hi all,

this is my attempt at using the pci-pwrctrl framework to power on the
PCIe-connected WiFi and SD card reader on Apple Silicon Macs.
Back in 2022, Hector Martin proposed a custom solution for this[1].
Since then, the pci-pwrctrl framework has evolved and
pci-pwrctrl-generic seems to be the way to do this nowadays.
Device tree changes for t600x are included as an example for how this
could be used.

Link[1]: https://lore.kernel.org/lkml/20220502093832.32778-4-marcan@marcan.st/
Link[2]: https://lwn.net/Articles/1052333/

Signed-off-by: Yureka Lilian <yureka@cyberchaos.dev>
---
Yureka Lilian (2):
      PCI: apple: Integrate pwrctrl API
      arm64: dts: apple: t600x: Add PCIe pwren gpios

 arch/arm64/boot/dts/apple/t600x-die0.dtsi      |  4 ++++
 arch/arm64/boot/dts/apple/t600x-j314-j316.dtsi | 16 +++++++++++++++
 arch/arm64/boot/dts/apple/t600x-j375.dtsi      | 27 ++++++++++++++++++++++++++
 drivers/pci/controller/Kconfig                 |  1 +
 drivers/pci/controller/pcie-apple.c            | 16 +++++++++++++++
 5 files changed, 64 insertions(+)
---
base-commit: 8e9685d3c41c35dd1b37df70d854137abcb2fbac
change-id: 20260706-apple-pcie-pwren-0dd1ebdf1c4c

Best regards,
--  
Yureka Lilian <yureka@cyberchaos.dev>



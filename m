Return-Path: <devicetree+bounces-327117-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id IL68K92bV2pqXwAAu9opvQ
	(envelope-from <devicetree+bounces-327117-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 16:40:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id A2B1175F7C9
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 16:40:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=vi7sLQpZ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-327117-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-327117-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=bootlin.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id F00923004DBF
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 14:22:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B000352036;
	Wed, 15 Jul 2026 14:22:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E140D33F394
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 14:22:54 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784125377; cv=none; b=gPAkviBGfc+3nsdlRc1YI7h9bwRxfo2QxO28Yw2ACZpvoCOrTUIrLsAxKQHtMVP2XghrQvV2VcLPCamEb3rvXBqKvn3LMVmQOb74+ORduSEbUAjBmNt775NM0Z6hOr6conUxGfKMgTlnA6O5TnJ/AM/M3Tr6KobAqRFePMUrA3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784125377; c=relaxed/simple;
	bh=5cjITBf1lX11tV96k9LlFBTJvsIywNAVIH+Qi4KvIOQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=gEQhH8sIYXoWkJtAtVHNjpfxW1b73ZnD1P2KctzkC8+3OBtgEv+i5XrYszj6nIFeeUXrhERDzb2AHq9aUPahb6A1rr9ccxCjQVlBgzlaRc7NCBzubz/ZFaWMu/xqvmCWr6a7babhphb5xJybDHgyNgUiUwd+pdJfGr8Hql/1B0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=vi7sLQpZ; arc=none smtp.client-ip=185.246.84.56
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 40E911A1019;
	Wed, 15 Jul 2026 14:22:53 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 123226035C;
	Wed, 15 Jul 2026 14:22:53 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 0D19811BD3AD3;
	Wed, 15 Jul 2026 16:22:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1784125371; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding; bh=RwP0ZAU4rBRQaNpLFK3/bZIxH1qsqU+jxMuUyxinPB0=;
	b=vi7sLQpZuudQiX1SS3mKEYirXjnBJHqT4qtaNazFTYSoCRaimT8hMIhu/CGlrDb30TFse9
	+0BQNIB5pxOLwfpf7EjmYlG7kXvN98+fWzpbZY/2ILThs+3x0dMdMvWGjzBs8bIs09Wxvu
	KDY3nzURxcmCi6usVeHyw0v/Ni61b50q7u28mJEEaEI8p7/ydZsiWK5SiHBDU3bXxWK0sM
	QTRNQObFO7U8ASBphMf8XxSr/n1Wjh8zurI67ZEMria4FZOogCN2VKsxkdKJYNuXn7OSUy
	48C5J6sutChw4zBEkS0dZ0H5qPOgE4q4egNSdX/3Y900eLlJUhQ6ZMhegmeq1A==
From: Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>
Subject: [PATCH v2 0/7] Import optee node from u-boot device trees
Date: Wed, 15 Jul 2026 16:22:17 +0200
Message-Id: <20260715-mathieu-uboot-dts-import-v2-0-bc931417bd0e@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJmXV2oC/42NQQqDMBBFryKz7pRJQMWueo/iQuOkDlQjSQwW8
 e6NnqDL9/n//R0Ce+EAj2IHz0mCuDmDvhVgxm5+M8qQGTTpimpFOHVxFF5x7Z2LOMSAMi3OR6w
 aW6reUFMPNeT54tnKdqlfbeZRQnT+ez0ldaZ/SJNCQmuZtCIuyTTPs/GR+W7cBO1xHD8xm1Azw
 gAAAA==
X-Change-ID: 20260710-mathieu-uboot-dts-import-69f51bc097d7
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Wei Xu <xuwei5@hisilicon.com>, Andrew Jeffery <andrew@codeconstruct.com.au>, 
 Avi Fishman <avifishman70@gmail.com>, Tomer Maimon <tmaimon77@gmail.com>, 
 Tali Perry <tali.perry1@gmail.com>, Patrick Venture <venture@google.com>, 
 Nancy Yuen <yuenn@google.com>, Benjamin Fair <benjaminfair@google.com>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 devicetree@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, openbmc@lists.ozlabs.org, 
 Tom Rini <trini@konsulko.com>, Peter Robinson <pbrobinson@gmail.com>, 
 Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>, 
 Sashiko <sashiko-bot@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1784125361; l=3745;
 i=mathieu.dubois-briand@bootlin.com; s=20241219; h=from:subject:message-id;
 bh=5cjITBf1lX11tV96k9LlFBTJvsIywNAVIH+Qi4KvIOQ=;
 b=x1XMbnxl5+7T+kpMxjng4W0jVssHHk/XXgC+3FCBDIp9aBO4U6Y7Ng6zXBHEs8ysV+qiN3+XC
 nGl30mK/YPaA10RTdL3bsGkE22oTyMW70FRiNPlN85GEJUhVk5+ncKy
X-Developer-Key: i=mathieu.dubois-briand@bootlin.com; a=ed25519;
 pk=1PVTmzPXfKvDwcPUzG0aqdGoKZJA3b9s+3DqRlm0Lww=
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-327117-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,foss.st.com,hisilicon.com,codeconstruct.com.au,google.com];
	FORGED_SENDER(0.00)[mathieu.dubois-briand@bootlin.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[28];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:mcoquelin.stm32@gmail.com,m:alexandre.torgue@foss.st.com,m:xuwei5@hisilicon.com,m:andrew@codeconstruct.com.au,m:avifishman70@gmail.com,m:tmaimon77@gmail.com,m:tali.perry1@gmail.com,m:venture@google.com,m:yuenn@google.com,m:benjaminfair@google.com,m:thomas.petazzoni@bootlin.com,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:linux-stm32@st-md-mailman.stormreply.com,m:openbmc@lists.ozlabs.org,m:trini@konsulko.com,m:pbrobinson@gmail.com,m:mathieu.dubois-briand@bootlin.com,m:sashiko-bot@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:mcoquelinstm32@gmail.com,m:taliperry1@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[bootlin.com,vger.kernel.org,lists.linux.dev,lists.infradead.org,st-md-mailman.stormreply.com,lists.ozlabs.org,konsulko.com,gmail.com,kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mathieu.dubois-briand@bootlin.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,bootlin.com:dkim,bootlin.com:email,bootlin.com:mid,bootlin.com:from_mime,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A2B1175F7C9
X-Rspamd-Action: no action

In a recent discussion on the U-Boot mailing list [1], it was found out
that several platforms were adding the OP-TEE device tree-node thanks to
some U-Boot specific dtsi. This was deemed as a bad solution, as this
should instead be added in the DTS files hosted in Linux sources,
particularly for platforms already using the "upstream" (Linux) device
tree.

Most i.MX8 and i.MX9 platforms are already using OF_UPSTREAM
configuration in U-Boot. Some are not, but are fairly new, so we can
expect them to use the Linux device tree once their support is a bit
more stable. So they will benefit from these changes once upstream
device trees are refreshed in U-Boot.

STM32MP157 platforms are using OF_UPSTREAM, with similar consequences.

The two other platforms are using an U-Boot specific device tree, yet
adding these nodes on the kernel side will help to reduce the
differences.

The zynqmp platform was ignored, as a similar change was previously
reverted [2]. I also ignored a few platforms without direct match
between U-Boot and Linux dts files.

Also add the OP-TEE node on the imx93 FRDM platform device tree: while
this is not part of U-Boot code today, it is the change that triggered
the U-Boot discussion.

[1]: https://lore.kernel.org/all/20260706145906.GW749385@bill-the-cat/
[2]: https://lore.kernel.org/all/20251125-revert-zynqmp-optee-v1-1-d2ce4c0fcaf6@vaisala.com/

Signed-off-by: Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>
---
Changes in v2:
- Splitting i.MX8 SoC changes in a separate commit.
- Adding bootph-pre-ram on stm32mp157c-ed1 reserved memory.
- Rebased on v7.2-rc3.
- Link to v1: https://lore.kernel.org/r/20260710-mathieu-uboot-dts-import-v1-0-ffe0210e50c9@bootlin.com

---
Mathieu Dubois-Briand (7):
      arm64: dts: freescale: Import optee node from u-boot i.MX91 and i.MX93 device trees
      arm64: dts: freescale: Import optee node from u-boot i.MX8 device trees
      arm: dts: st: Import optee node from u-boot device trees
      arm: dts: st: stm32mp157c-ed1: Add bootph-pre-ram tag on optee reserved memory
      arm64: dts: hisilicon: hi3798cv200-poplar: Import optee node from u-boot device tree
      arm64: dts: nuvoton: npcm845-evb: Import optee node from u-boot device tree
      arm64: dts: freescale: imx93-frdm: Add OP-TEE device tree node

 arch/arm/boot/dts/st/stm32mp157a-dk1.dts                | 17 +++++++++++++++++
 arch/arm/boot/dts/st/stm32mp157c-ed1.dts                | 14 ++++++++++++++
 arch/arm64/boot/dts/freescale/imx8mm.dtsi               |  7 +++++++
 arch/arm64/boot/dts/freescale/imx8mn.dtsi               |  7 +++++++
 arch/arm64/boot/dts/freescale/imx8mp.dtsi               |  7 +++++++
 arch/arm64/boot/dts/freescale/imx91-11x11-evk.dts       |  7 +++++++
 arch/arm64/boot/dts/freescale/imx91-11x11-frdm.dts      |  7 +++++++
 arch/arm64/boot/dts/freescale/imx91-phyboard-segin.dts  |  7 +++++++
 arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts       |  7 +++++++
 arch/arm64/boot/dts/freescale/imx93-11x11-frdm.dts      |  7 +++++++
 arch/arm64/boot/dts/freescale/imx93-9x9-qsb.dts         |  7 +++++++
 .../arm64/boot/dts/freescale/imx93-kontron-bl-osm-s.dts |  7 +++++++
 arch/arm64/boot/dts/freescale/imx93-phyboard-segin.dts  |  7 +++++++
 .../arm64/boot/dts/freescale/imx93-var-som-symphony.dts |  7 +++++++
 arch/arm64/boot/dts/hisilicon/hi3798cv200-poplar.dts    |  7 +++++++
 arch/arm64/boot/dts/nuvoton/nuvoton-npcm845-evb.dts     |  7 +++++++
 16 files changed, 129 insertions(+)
---
base-commit: a13c140cc289c0b7b3770bce5b3ad42ab35074aa
change-id: 20260710-mathieu-uboot-dts-import-69f51bc097d7

Best regards,
-- 
Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>



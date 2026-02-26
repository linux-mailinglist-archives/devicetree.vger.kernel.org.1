Return-Path: <devicetree+bounces-268924-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qLYkCXVpoGm+jQQAu9opvQ
	(envelope-from <devicetree+bounces-268924-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 16:40:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DAE01A8EA8
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 16:40:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 740953060882
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 15:40:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACA04410D02;
	Thu, 26 Feb 2026 15:39:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="EXdbnCRr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay10-hz2.antispameurope.com (mx-relay10-hz2.antispameurope.com [83.246.65.96])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23D3040FD8F
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 15:39:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=83.246.65.96
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772120390; cv=pass; b=MAkvTG2RNdCfX2wyaSa6Q+4bQXOf85uayy5wcus8RmoaV/8WpxnbTTe4jArxkKYVny5z/ELvnkxoAlK1FHlIOHf+opuYEATPCC8103xrP//UyEiIcpX94665jS74sb2gmU9vdwFMUT00JADDYO9tbaYnhUT0YAcI4qKbUU0B+W4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772120390; c=relaxed/simple;
	bh=7p3KnwhCjiXCAFckjTZO4s4z0gC/fOAvonkWNNLLb1Y=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=A50rLOoG0BVFVAm2EqiBIHqlOyDPuFwx1+wh/LKfnOcYOlxVk5gu/tjDJKL5fMz7xxXXFpM0HkVtg1vbk4p9lBXj3D6Kp/IntokkufO+rDpE21bFkEltjDBG7JKDI5dDTHCMawVv97tOVhLUSt04QxlevqPjKqBos2QJ9DkYHE4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=EXdbnCRr; arc=pass smtp.client-ip=83.246.65.96
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate10-hz2.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out01-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=IzqbFvCBgdaUFwS1qXmfy9dqVHi/nCebaI0DN6ZkaEE=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1772120349;
 b=dwZES8nYD7NK/ZH81Wz8KcRA5U3sIGmKmSrjC+jN/t32akex4urA5ulw78IVq0nOcsCgrMx2
 NymKucIyW/iZ+8PfvuPTQywOMqmaRRV5H2uF6VH4XOm1/leDwUFQm5lHhXq64QfuxkVB8/HuKRo
 tWIls0VP3BY5wjUZ4+URiF2mpqaJbpptaJtMCiALz8ueAb3tl1smHF84o3j+tH5awpcZl/5WWmj
 273cFaZMShUBQ9eRrFeBK9k6lJkDBzeH9HD5AwOTcOEfF7tfipWSYTDTJstJ01XLqCi9GVlXazJ
 8e1BIGheIJOAdKApJhWe3YOJS3XBTSFvWLZ8bDtCGqB9A==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1772120349;
 b=YDYPmlw7C7tH/H2xaLhZ7O/jEK7TDEMD2Pr2QObVeXHZMQBryiietyIZ510hCdKt+874vvVq
 8pn7Zb5krtg1Uo+sryJ/Yr1UMIEUIBIrJwM+mMIKOg5qJDQHdUZ5G5ucxRIhjDkGsRlP1/tiQwp
 z+6SF0AUn+9CqNimeJSXi1KVdpCZZmIRFUCQ6DhD9E8vUdFkDVbucseZu7Zk722jhh4VbjIgdSx
 b4JWzF6ipntDMYmDqwijDRVCRKyWtQ1ctWNT19/+a6qMzLIJd18vsbXEQ2EulaULp+qa5+re4M1
 SNNr9fBdym0dfl3tTBr0X09lhr1MhlS2dh3cGlgKhRIjQ==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay10-hz2.antispameurope.com;
 Thu, 26 Feb 2026 16:39:09 +0100
Received: from steina-w.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by smtp-out01-hz1.hornetsecurity.com (Postfix) with ESMTPSA id EFE42A407F2;
	Thu, 26 Feb 2026 16:39:00 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Peter Chen <peter.chen@kernel.org>,
	Pawel Laszczak <pawell@cadence.com>,
	Roger Quadros <rogerq@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Magnus Damm <magnus.damm@gmail.com>,
	Marek Vasut <marex@denx.de>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-usb@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux@ew.tq-group.com
Subject: [PATCH v3 0/5] Support TQMa8QM
Date: Thu, 26 Feb 2026 16:38:49 +0100
Message-ID: <20260226153859.665901-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:alexander.stein@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: alexander.stein@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay10-hz2.antispameurope.com with 4fMFxL2sBsz4F898
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:e6eeaebf4cf021a93157c2a1ac4b54d4
X-cloud-security:scantime:1.938
DKIM-Signature: a=rsa-sha256;
 bh=IzqbFvCBgdaUFwS1qXmfy9dqVHi/nCebaI0DN6ZkaEE=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1772120348; v=1;
 b=EXdbnCRrY4fYr16IFKhjINNOGLejkeyN3KMUPXhm+dREqOwPRvxCNYkzYXNCf8djsPMjDwFs
 ySDdXDpGVG0+Nmxr9EI78hZz3m6D9kArl7bTeScOpPDuRJ7IzAl8oOgfYCzVZDW5RQfG5DYpFbr
 7lgVS3mK1KDd1YuB36dpe13a02qIk/zor27WW6izVcZn+3fs2lBNIvGOThcVAsc5Nmz/j+CwCHW
 pPOk02C8H6o6UVZGpWXBYTg4VDoIDSmDtTTBFOULLbtLD1hXaiW5+ZOBaUKnLj0pQ+z1h5vu6p5
 s0q1IMeLmH6D1yVwX0lt0miXnE+ihcYiNDN6mgFov9aWQ==
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=hse1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[kernel.org,glider.be,baylibre.com,cadence.com,linuxfoundation.org,pengutronix.de,gmail.com,denx.de];
	RCPT_COUNT_TWELVE(0.00)[25];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268924-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.stein@ew.tq-group.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	NEURAL_HAM(-0.00)[-0.997];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ew.tq-group.com:mid,ew.tq-group.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 0DAE01A8EA8
X-Rspamd-Action: no action

Hi,

this series adds support for TQ's TQMa8QM. The first 2 patches are prepatory:
1. Add support for USB devices in cdns USB3 host controller, namely
onboard-devices as USB hubs. Implemented similarily to snps,dwc3-common.yaml.

2. Add DMA IRQ for PCIe controller. Similar to commit 0b4c46f9ad79c
("arm64: dts: imx8qm-ss-hsio: Wire up DMA IRQ for PCIe") which was only tested
on imx8qxp which just has one PCIe controller.

3 & 4. Device bindings and platform DT

5. Workaround for missing "ERR050104: Arm/A53: Cache coherency issue"
workaround. See [1] for details. Split into separate commit for easy revert
once an errata workaround has been integrated.

Changes in v3:
* Small cleanups in patch 1 & 4

Changes in v2:
The need for clock-output-names properties for renesas,9fgv0441 has
been removed by reworkging the PCIe clocking

Best regards,
Alexander

[1] https://lore.kernel.org/all/20230420112952.28340-1-iivanov@suse.de/

Alexander Stein (5):
  dt-bindings: usb: cdns,usb3: support USB devices in DT
  arm64: dts: imx8qm-ss-hsio: Wire up DMA IRQ for PCIe
  dt-bindings: arm: fsl: add bindings for TQMa8x
  arm64: dts: freescale: add initial device tree for TQMa8x
  arm64: dts: imx8qm-tqma8qm-mba8x: Disable Cortex-A72 cluster

 .../devicetree/bindings/arm/fsl.yaml          |  10 +
 .../devicetree/bindings/usb/cdns,usb3.yaml    |   1 +
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../boot/dts/freescale/imx8qm-ss-hsio.dtsi    |   5 +-
 .../dts/freescale/imx8qm-tqma8qm-mba8x.dts    | 867 ++++++++++++++++++
 .../boot/dts/freescale/imx8qm-tqma8qm.dtsi    | 325 +++++++
 6 files changed, 1207 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8qm-tqma8qm-mba8x.dts
 create mode 100644 arch/arm64/boot/dts/freescale/imx8qm-tqma8qm.dtsi

-- 
2.43.0



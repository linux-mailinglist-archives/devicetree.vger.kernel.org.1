Return-Path: <devicetree+bounces-236673-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F655C46633
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 12:52:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B768E18985F0
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 11:51:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E892D30B51B;
	Mon, 10 Nov 2025 11:51:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="lnzCxKBC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay48-hz3.antispameurope.com (mx-relay48-hz3.antispameurope.com [94.100.134.237])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 452F0309EF7
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 11:51:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.134.237
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762775466; cv=pass; b=Zy5CMFrxgC2xudnYF2uoEpGoemMM6EHRUJ5eYSci/pI3kcMK/ujLWzwrChrDadSe+YvGAurT9U8dQPA+CcEKsAvrTGXZbpQH+UCponsua44NEiGcm1qnwhx55Lc6k2+ftBdW3vc4G/2bs1DtPadxhCsgB6MsW15ITioSJeAOGG8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762775466; c=relaxed/simple;
	bh=8ANnxTZGB0qdq9OA0+LforOl8pHytTMeo+uUVALYyx4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=drqPUnhpyHMq7y0rXPn+Znk2D4J8f0d9MmfT1/8fU3d+u0zbWcLxSsamCldEUuTqVwDGsxZaKPSVSHZX/SwcTBLR2qNrGD+ybyWovsn7gaGyBvtn2GwO3PGwYtGDeEzBpBI8W3+7LDIBlqCRL7j2+Kxan1pvgsaRQcx9SFNB/ko=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=lnzCxKBC; arc=pass smtp.client-ip=94.100.134.237
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate48-hz3.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out01-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=6+JY7AOKey3FDjj6FvnrDJHIL5n0tWzWiuTW9DK4ln0=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1762775413;
 b=VyxxpBzyE0WTezD4+HrdU4ELJMcJ4HY6eMVYPBRSVAM5mVPYsgQI0521hBSWJYVXz9UWBINv
 Q1/kXu3I8QbDkO/BYKxtqvJZ1BAOyDKMTh1+fzJyIC8jE9adTTJC6X74ptq9gnLl1S6SLRThejc
 rjxpZZbxIDU14O9IHucFsq+alaqZM92rHNGL4sZmkzyqU8VEf7L830RA/+XvK4JiwNqbRuLqrcl
 Mk92eNIxHpXXoFZ0XIHVhKKL2lNR6WozSfn56iR1FpRKfL8hTrJhKefk7e4Ukkd6fHYvCtuFL//
 O9vkrfHqMbysADpI+rHKYZ72Td3dbMih/JA0/rmfwadBw==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1762775413;
 b=Igv1YFHj9C3WzUrw27aF9CLRiEeevm+NR8DWzE+OFOBxd5b5SB+inR0kKzuR8tdGnTvnsZAG
 q2weYoa5MCneTBXcH+FbA5Vv60QvFdNGN6SFRVfGZZ+52b6+oxac5Sd/9AD19eQr5Ogxi3HceT1
 +/LJYW2QWIYeqhGolnG6A+dpgYp1d17YJ6Xd8ytGQ+GGIDnYLGBLpPr3Vs1/PT4jqhlaeiQeMhB
 p7N4py6cPq/El85XE45PAjO9n2OfUrD1EkyARqACxhRpkNW/WOBABLksIBWu9NEpLl08Qi7zjYI
 UMZbCThYoaaEy5al2R+Dg9M5BePQvFcRrX8c+eq+QexSA==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay48-hz3.antispameurope.com;
 Mon, 10 Nov 2025 12:50:12 +0100
Received: from schifferm-ubuntu.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: matthias.schiffer@ew.tq-group.com)
	by smtp-out01-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 8EFB1A41305;
	Mon, 10 Nov 2025 12:50:05 +0100 (CET)
From: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kees Cook <kees@kernel.org>,
	Tony Luck <tony.luck@intel.com>,
	"Guilherme G. Piccoli" <gpiccoli@igalia.com>,
	Andrew Lunn <andrew@lunn.ch>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-hardening@vger.kernel.org,
	linux@ew.tq-group.com,
	Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
Subject: [PATCH v4 0/2] TQ-Systems TQMa62xx SoM and MBa62xx board
Date: Mon, 10 Nov 2025 12:49:44 +0100
Message-ID: <cover.1762775119.git.matthias.schiffer@ew.tq-group.com>
X-Mailer: git-send-email 2.51.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:matthias.schiffer@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: matthias.schiffer@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay48-hz3.antispameurope.com with 4d4nz22xmnz1kNh54
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:1af9115dd2db95f7ea9e58f71e1f2d89
X-cloud-security:scantime:1.819
DKIM-Signature: a=rsa-sha256;
 bh=6+JY7AOKey3FDjj6FvnrDJHIL5n0tWzWiuTW9DK4ln0=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1762775412; v=1;
 b=lnzCxKBCLdpm/kD3k7fraX7BfE5aI317A4b/43WQOcJuhjFUMJmJQmU5k/2ycxLDnJHK/CQ8
 7WayQDusq517e3tWhN5kyvvUqiWg1riVz/c/xvnCLDZH3zDGvkwI/lSzKBqdhF9sf6w5MWoyN83
 KpNuYVrowimCik/UID551E9Ecl7mpFHaJqAT48IohkCVxHIihyluIqftBE50s8J+zmu9bhizS34
 dzsytkq0oluoP+7LW7B4292FnrkvboYKnIL8wgbeoTYfs4j8xIcTQrKYHh1/qySVptQMQfRrpb/
 meOrvQiF2GxZNy/TWqPpE2xZlyKxW1IQ8tw2x3dg42Bqg==

This adds Device Trees for our AM62x-based SoM TQMa62xx and its
reference carrier board MBa62xx.

Not yet included are overlays to enable LVDS display output and MIPI-CSI
camera input.

Changes in v4:
- Rebase onto latest ti-k3-dts-next
- Reorder boot phase tags after other standard DT properties
- Add missing supply regulators in SPI-NOR flash and USB hub
- Set status = "okay" in &cpsw3g, as it is disabled in k3-am62-main.dtsi
  now
- Add disabled 1400MHz OPP entry (will be enabled by bootloader if
  supported by PMIC configuration)
- Update copyright years in new files

Changes in v3:
- Rebased onto ti-k3-dt-for-v6.18
- 3 of the 5 patches in v2 have been applied already and are dropped
- Include k3-am62-ti-ipc-firmware.dtsi, drop now redundant configuration
- Change node name for MCU reserved memory to 'memory'
- Use rgmii-id PHY mode
- Drop now redundant ti,rx-internal-delay
- Update simple-audio-card,name to match other TQ SOMs with compatible
  configuration
- Reference dss_pins in dss node (actual display support will be added
  in a follow-up patch series)
- Consistently use GPIO_ACTIVE_HIGH define
- Drop unneeded usb0 quirk flags
- Add boot phase tags

Changes in v2:
- Collected acks and reviews
- Rebased onto v6.13-rc1

Matthias Schiffer (2):
  dt-bindings: arm: ti: Add compatible for AM625-based TQMa62xx SOM
    family and carrier board
  arm64: dts: ti: Add TQ-Systems TQMa62xx SoM and MBa62xx carrier board
    Device Trees

 .../devicetree/bindings/arm/ti/k3.yaml        |   7 +
 arch/arm64/boot/dts/ti/Makefile               |   1 +
 .../boot/dts/ti/k3-am625-tqma62xx-mba62xx.dts | 930 ++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am625-tqma62xx.dtsi | 331 +++++++
 4 files changed, 1269 insertions(+)
 create mode 100644 arch/arm64/boot/dts/ti/k3-am625-tqma62xx-mba62xx.dts
 create mode 100644 arch/arm64/boot/dts/ti/k3-am625-tqma62xx.dtsi

-- 
TQ-Systems GmbH | Mühlstraße 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht München, HRB 105018
Geschäftsführer: Detlef Schneider, Rüdiger Stahl, Stefan Schneider
https://www.tq-group.com/


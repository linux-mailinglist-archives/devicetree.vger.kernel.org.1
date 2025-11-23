Return-Path: <devicetree+bounces-241468-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A904C7E8FC
	for <lists+devicetree@lfdr.de>; Sun, 23 Nov 2025 23:55:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 6D71F344FF0
	for <lists+devicetree@lfdr.de>; Sun, 23 Nov 2025 22:55:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7210927F4CA;
	Sun, 23 Nov 2025 22:52:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freeshell.de header.i=@freeshell.de header.b="gOrcXBko"
X-Original-To: devicetree@vger.kernel.org
Received: from freeshell.de (freeshell.de [116.202.128.144])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67F7727F171;
	Sun, 23 Nov 2025 22:52:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.202.128.144
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763938339; cv=none; b=Arv8kPSNohOsNKiL2hzMzGmH612mx7zcqQKIC1G4FfT3Q9BQxCn+u77Gt4i+zzBqhSSgXi/A6MMtdm3CpEtJrPOVT8AfxoB999nRMTWHpCVqnXyxpy0G9OxCm9bE7E4t4NsiX8BCu2NDkK2fihCciz3jQvV/TxmBLTXtw9V7d3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763938339; c=relaxed/simple;
	bh=mAyNePuB0PpKgcEb9oP3N3cXBCGpxn8Y6XFhLCnNhNE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=iKC/Y/viywSV1S/T7YiW0GXlm0Tou0Df9B3HHoNzd10j2wmK5zQaYP9OW8MKMq6bh0ClsDr5paWnBLbx5lkUSvaH0imA8kZvcWRe2e08zT/gwd+0iOPND4XxGTYEjq5vTwd83ioj61LNGnIEsJmif2EuirrnMQhk0/QTM3Pl48U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=freeshell.de; spf=pass smtp.mailfrom=freeshell.de; dkim=pass (2048-bit key) header.d=freeshell.de header.i=@freeshell.de header.b=gOrcXBko; arc=none smtp.client-ip=116.202.128.144
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=freeshell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freeshell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=freeshell.de;
	s=s2025; t=1763938291;
	bh=wosiOaQZUhu7EKm1DwKUdmsa8HOLli5/tH3gn4fvomA=;
	h=From:To:Cc:Subject:Date:From;
	b=gOrcXBkouNCxFVtXvATn08C3P93nqbetX/zPoV3tFbrFTgMBl4Uxr05yXLtZ8nTSX
	 zrPd5CSWvVPta1PwpJXaH2Em2hrhMEmZiXkFujzQfIF4MWMGlySX3PWCQCizZ2fdRf
	 57Z99xUd9fSAZrdbc8hhSVN48G15TDwcViQfi3nSqqCJjQY/pmgPQvIYo/5CFMbgd6
	 5330BXbQyOTwZOq/GeCiyw6US/9Us8YQxMxksSkSiVVGxqt4MgHnYPhPA4nuUmUNWu
	 QeIc1miDCPfuyjCpviN+1YZUBRL1r43uWRE7lsYyxAGHUIz8GuZ4MsxWaSeunfsDHY
	 PsSmK/QO5/EYw==
Received: from hay.lan (unknown [IPv6:2605:59c0:2078:cf00:6ecf:39ff:fe00:8375])
	(Authenticated sender: e)
	by freeshell.de (Postfix) with ESMTPSA id 2BFEDB220120;
	Sun, 23 Nov 2025 23:51:29 +0100 (CET)
From: E Shattow <e@freeshell.de>
To: Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>
Cc: linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	E Shattow <e@freeshell.de>,
	Icenowy Zheng <uwu@icenowy.me>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH v3 0/2] riscv: dts: starfive: Add OrangePi RV board
Date: Sun, 23 Nov 2025 14:50:43 -0800
Message-ID: <20251123225059.49665-1-e@freeshell.de>
X-Mailer: git-send-email 2.50.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Icenowy is busy and so with their permission I have applied v2 review
feedback. Additionally I revise the commit messages. This should now be in
good shape for -next

- E

Changes since v2:
- enable active high mmc1 card detect gpio
- drop delete-node from mmc0 reset pins following commit fa939a287224
  ("dts: starfive: jh7110-common: split out mmc0 reset pins from common 
  into boards")
- sort phy0 properties rx before tx
- revise commit description of SoC peripherals as list
- revise commit description of compatible binding

Changes in v2:
- Property order change mentioned in the review of v1.
- Added Wi-Fi (along with the always on VCC3V3_PCIE regulator, which is
  used to power up WIFI_3V3). The OOB IRQ is still not possible to use
  because of some incompatibility between StarFive pinctrl driver and
  brcmfmac.
- Removed the LED because it's in common DTSI.

Icenowy Zheng (2):
  dt-bindings: riscv: starfive: add xunlong,orangepi-rv
  riscv: dts: starfive: add Orange Pi RV

 .../devicetree/bindings/riscv/starfive.yaml   |  1 +
 arch/riscv/boot/dts/starfive/Makefile         |  1 +
 .../boot/dts/starfive/jh7110-orangepi-rv.dts  | 76 +++++++++++++++++++
 3 files changed, 78 insertions(+)
 create mode 100644 arch/riscv/boot/dts/starfive/jh7110-orangepi-rv.dts


base-commit: 1088d49b626487777913079bef0db3adef4bfb4a
-- 
2.50.0



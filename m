Return-Path: <devicetree+bounces-249308-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F04CDCDAAE4
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 22:35:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B725D30115C7
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 21:35:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BBDE2D6E4B;
	Tue, 23 Dec 2025 21:35:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kemnade.info header.i=@kemnade.info header.b="izejPjLg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.andi.de1.cc (mail.andi.de1.cc [178.238.236.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F009E200C2;
	Tue, 23 Dec 2025 21:35:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.238.236.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766525702; cv=none; b=HuWUVMinCw2tVU2L9InMiaBF/QeJP+VBj+sjL6ks1SPgN/ECThAPpkwAsUZYVDDiHAy/Qvc7iIoo71wUmppehaMubFJCIPUcPPDX7GKuqw3ltaEChbr0VIM8GJfuECcIcbIvyVaJp+a1mgTDDqZoqXN89w+o3kfkagCV6I0IDbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766525702; c=relaxed/simple;
	bh=VB/32YG9Ct5aZGQZIwrgo28UOF+9MONPUTdSSEgoPMg=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=ZJyjwp0tP61jBDfwS5HoGSYRorsNs/1YlE4qaCAm7H7DacqsLzvceGZ0x5ozhW5v+QVJPg4vVOoUiW9J9FPle8TfmNy9p31p51DEFa2Ey/hdnJbzI3J3Vnvov79R2pljxJds4agCCXjGtF2TcwBHEaD008kZA3nwTIIqzy2XmbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kemnade.info; spf=pass smtp.mailfrom=kemnade.info; dkim=pass (2048-bit key) header.d=kemnade.info header.i=@kemnade.info header.b=izejPjLg; arc=none smtp.client-ip=178.238.236.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kemnade.info
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kemnade.info
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=kemnade.info; s=20220719; h=Cc:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References;
	bh=xQqBPEjIjyfmPnQ7OqwKCSApA4c3YAryRblra9QBYi8=; b=izejPjLgN5y6GXW2Z4NPtK0JZi
	8ckA5wYqu4OXIqz+UrfX2bkNte7lR0eukJYjIAwxjFo41e2z2TBvuEhjfTnhoNRFeifyxO0Siig/M
	7OBWz1bmDv8DiahRRpfT74SGghpxUvcSXBDTjNywnINs8YKCAm6bMWASswAGjxvaM6RV+wd58MHbX
	JUpJq7C8zdBzKA2fCl8RuvfmKj1/zQqF/tjmXout11l+7UChxXkajlq+3g0pIUCTuMokzsH4a541j
	NcLPtpajI6VA8JoPCHxPes1J4Zgdj5pt0bzNakJYKyNjBz6vpWXNxRXt2U6hXNDwGp/hWcjoyYpiN
	LKWa4gaw==;
From: Andreas Kemnade <andreas@kemnade.info>
Subject: [PATCH 0/2] ARM: dts: imx: imx6sll-kobo-clara2e add JD9930
 regulator
Date: Tue, 23 Dec 2025 22:34:01 +0100
Message-Id: <20251223-fp9931-clara2e-v1-0-e5b1cb79330a@kemnade.info>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMkKS2kC/x3MMQqAMAxA0atIZgsmpUO9ijjUNmpAtKQgQvHuF
 sc3/F+hsAoXGLsKyrcUuc4G7DuIezg3NpKagQZySGTNmr23aOIRNBAb5xMmh8nSMkCLsvIqzz+
 c5vf9ABerX2pgAAAA
X-Change-ID: 20251223-fp9931-clara2e-59d1d51d32b0
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Russell King <linux@armlinux.org.uk>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Andreas Kemnade <andreas@kemnade.info>
X-Mailer: b4 0.15-dev-a6db3
X-Developer-Signature: v=1; a=openpgp-sha256; l=695; i=andreas@kemnade.info;
 h=from:subject:message-id; bh=VB/32YG9Ct5aZGQZIwrgo28UOF+9MONPUTdSSEgoPMg=;
 b=owGbwMvMwCUm/rzkS6lq2x3G02pJDJneXD+W684Oeyl9h0HT1LqvP9vik+2su+/ZFATXiGTlM
 R3at2RRRykLgxgXg6yYIssvawW3TyrPcoOnRtjDzGFlAhnCwMUpABOZ2sfIcNjKYXbMuefMHSut
 CkpPmEVsEns178sr7jmtP6Ib9+a2ljD8d7/75P3Efdd/Hnr66Ka1H2PkBCNZC6FvDtuYzk/9NU9
 oGTMA
X-Developer-Key: i=andreas@kemnade.info; a=openpgp;
 fpr=EEC0DB858E66C0DA70620AC07DBD6AC74DE29324

Add the JD9930 regulator to the devicetree and enable the
corresponding driver in the defconfig.

Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
---
Andreas Kemnade (2):
      ARM: dts: imx: imx6sll-kobo-clara2e: add regulator for EPD.
      ARM: imx_v6_v7_defconfig: enable EPD regulator needed for Kobo Clara 2e

 .../boot/dts/nxp/imx/imx6sll-kobo-clara2e-b.dts    | 61 +++++++++++++++++++++-
 arch/arm/configs/imx_v6_v7_defconfig               |  1 +
 2 files changed, 61 insertions(+), 1 deletion(-)
---
base-commit: 9448598b22c50c8a5bb77a9103e2d49f134c9578
change-id: 20251223-fp9931-clara2e-59d1d51d32b0

Best regards,
--  
Andreas Kemnade <andreas@kemnade.info>



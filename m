Return-Path: <devicetree+bounces-13880-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 18D497E12CA
	for <lists+devicetree@lfdr.de>; Sun,  5 Nov 2023 10:29:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 37B5E1C20752
	for <lists+devicetree@lfdr.de>; Sun,  5 Nov 2023 09:29:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A5FA8C16;
	Sun,  5 Nov 2023 09:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="GOqsPTQg"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA73D320B
	for <devicetree@vger.kernel.org>; Sun,  5 Nov 2023 09:29:19 +0000 (UTC)
Received: from mail.zeus03.de (www.zeus03.de [194.117.254.33])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E164F2
	for <devicetree@vger.kernel.org>; Sun,  5 Nov 2023 01:29:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:mime-version:content-transfer-encoding; s=k1; bh=4dwyhc7I5VMK+p
	3joAdQ6muDlyj3lJuFlgGGOnOLLkM=; b=GOqsPTQgSakmrjtRYAs0RNIjZY7DM9
	2mY6o3VlX4huWsGyJs2yTgEpgrICr2KSM3ToL1DPIfKkx6tYWIKMJGdwGypuUCyj
	JGu28X97KaHSoMHnxURUf++gozdPrtWWNzgowUeKcOZkWWx/aLso0S76DxxCpBHE
	OfXURWT2z2s1MC7VzTvkc3eFYpqaNcxREsjR9XEPBh0foJZsf2Y/DbehZkOQrd8c
	U+D+Wd3f43E7LUkKb+QnGrmMPomHYyNTdRLB8ilOy3bjHNxi1OcivmPkNI7u0oQt
	s8AEu4in1EaqkMA8BEgGp+70+Sb6se/le4XSAAc/bws5tChfeVytTy8Q==
Received: (qmail 1670058 invoked from network); 5 Nov 2023 10:29:15 +0100
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 5 Nov 2023 10:29:15 +0100
X-UD-Smtp-Session: l3s3148p1@um33XmQJZsQgAQnoAFPQANY41GnTzLIh
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	Marek Vasut <marek.vasut+renesas@gmail.com>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Subject: [PATCH v5 RESEND 0/2] PCI: rcar: support regulators for PCIe
Date: Sun,  5 Nov 2023 10:29:06 +0100
Message-Id: <20231105092908.3792-1-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.35.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Here are the patches to make PCIe cards work in slot CN15 on a Renesas
KingFisher board. Please apply.

Changes since v4:
* rebased to 6.6
* added ack from Mani (Thanks!)

Wolfram Sang (2):
  dt-bindings: PCI: rcar-pci-host: add optional regulators
  PCI: rcar-host: add support for optional regulators

 .../devicetree/bindings/pci/rcar-pci-host.yaml   | 11 +++++++++++
 drivers/pci/controller/pcie-rcar-host.c          | 16 +++++++++++++++-
 2 files changed, 26 insertions(+), 1 deletion(-)

-- 
2.35.1



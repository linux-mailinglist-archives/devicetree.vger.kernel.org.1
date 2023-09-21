Return-Path: <devicetree+bounces-2192-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 66EC37A9BC6
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 21:04:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 08EB91C21432
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 19:04:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44889168B3;
	Thu, 21 Sep 2023 18:53:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E54A12B69
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 18:53:37 +0000 (UTC)
Received: from mail.zeus03.de (www.zeus03.de [194.117.254.33])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ABF8EB011D
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 11:53:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:mime-version:content-transfer-encoding; s=k1; bh=y8o79FHdabjEPn
	jWLjdB26M9KWz8RCPY9ifxMIEHMGc=; b=MVcd6bJnYWG6biK7bUv2RcxwvpGgWa
	YYqLMYU9XQ7X1Dy+E/1tb4lSNnJ3NL1gqoPUwp3CKcRPgAWYF8VvyJk0iWaT8Tq/
	F5Q5IiIyZA45b7DwNgG1lPmxaKCRkaZ/StSDIMgc2iNl7Nqkh4i6EO8zb6mnZN2y
	QjOGSeXqKRlbA5hQtgdaCRofeCTxKnEDdidYoKUBBmwVg7Jp548TY/PwVFktcq2m
	nXmwZmJC4ExGqWh4PH/cIxK7jNDDtS8FgVU5Bht2zWhssPKWFVOIENAOTnNL4utV
	NlWAoGjFQvZp80nIAhYj/e8YsgbmlUdiVClYh6JBIA18cF6RCYvlVIhg==
Received: (qmail 962533 invoked from network); 21 Sep 2023 15:26:41 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 21 Sep 2023 15:26:41 +0200
X-UD-Smtp-Session: l3s3148p1@ZYw+cd4FRgsuciJ+
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	Marek Vasut <marek.vasut+renesas@gmail.com>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Subject: [PATCH v5 0/2] PCI: rcar: support regulators for PCIe
Date: Thu, 21 Sep 2023 15:26:22 +0200
Message-Id: <20230921132624.5664-1-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.35.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Here are the patches to make PCIe cards work in slot CN15 on a Renesas
KingFisher board. Please apply.

Changes since v4:
* rebased to 6.6-rc2
* added ack from Mani (Thanks!)

Wolfram Sang (2):
  dt-bindings: PCI: rcar-pci-host: add optional regulators
  PCI: rcar-host: add support for optional regulators

 .../devicetree/bindings/pci/rcar-pci-host.yaml   | 11 +++++++++++
 drivers/pci/controller/pcie-rcar-host.c          | 16 +++++++++++++++-
 2 files changed, 26 insertions(+), 1 deletion(-)

-- 
2.35.1



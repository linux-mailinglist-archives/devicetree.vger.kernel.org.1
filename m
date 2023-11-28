Return-Path: <devicetree+bounces-19458-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E11F37FAFA4
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 02:38:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1E49E1C20BF2
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 01:38:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 593C41877;
	Tue, 28 Nov 2023 01:38:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rnplus.nl header.i=@rnplus.nl header.b="i3198qmd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.rnplus.nl (mail.rnplus.nl [178.251.25.70])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D91EE6
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 17:37:58 -0800 (PST)
Received: from localhost (unknown [127.0.0.1])
	by mail.rnplus.nl (Postfix) with ESMTP id DC549379436
	for <devicetree@vger.kernel.org>; Tue, 28 Nov 2023 01:33:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at rnplus.nl
Received: from mail.rnplus.nl ([127.0.0.1])
	by localhost (mail.rnplus.nl [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3Wjsij8dDACM for <devicetree@vger.kernel.org>;
	Tue, 28 Nov 2023 02:33:44 +0100 (CET)
Received: from werkpc.lan (87-101-2-254.dsl.cambrium.nl [87.101.2.254])
	by mail.rnplus.nl (Postfix) with ESMTPSA id 16404379432;
	Tue, 28 Nov 2023 02:33:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=rnplus.nl; s=dkim;
	t=1701135224; bh=81KwltVxZAuMaWLnYPGe+jkgwQiKXhiV7pP19DaDTdw=;
	h=From:To:Cc:Subject:Date;
	b=i3198qmdu53X0lp5Stk2jvnw9k2rIjPPev7I0lZAzFHXk9+mVKhYtr3FKe+HNRAkW
	 I/L/bghaqwsLHnpp5gMKNBEb6/jvwprHj0w4GAcb9SNQFuuH1SPCi4umFQdKDJdpGC
	 GVDOwWS1/3IrJ/ZS58HmQewCJaeu0oUNIAGjSTyY=
From: Renze Nicolai <renze@rnplus.nl>
To: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-aspeed@lists.ozlabs.org,
	arnd@arndb.de,
	olof@lixom.net,
	soc@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	joel@jms.id.au,
	andrew@aj.id.au
Cc: Renze Nicolai <renze@rnplus.nl>
Subject: [PATCH 0/2] ARM: dts: aspeed: asrock: Add ASRock X570D4U BMC
Date: Tue, 28 Nov 2023 02:30:15 +0100
Message-ID: <20231128013136.2699317-1-renze@rnplus.nl>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hello,

These patches add a device-tree (and a bindings update) for the
Aspeed BMC on the ASRock X570D4U, so that it can be added as a
supported OpenBMC platform.

Greetings,
Renze Nicolai

Renze Nicolai (2):
  dt-bindings: arm: aspeed: add Asrock X570D4U board
  ARM: dts: aspeed: asrock: Add ASRock X570D4U BMC

 .../bindings/arm/aspeed/aspeed.yaml           |   1 +
 arch/arm/boot/dts/aspeed/Makefile             |   1 +
 .../dts/aspeed/aspeed-bmc-asrock-x570d4u.dts  | 344 ++++++++++++++++++
 3 files changed, 346 insertions(+)
 create mode 100644 arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-x570d4u.dts

-- 
2.43.0



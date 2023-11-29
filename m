Return-Path: <devicetree+bounces-20080-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EE2A7FDB72
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 16:31:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DE75428255D
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 15:31:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97A5638DFC;
	Wed, 29 Nov 2023 15:31:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="efx3Mr/Y"
X-Original-To: devicetree@vger.kernel.org
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::224])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0DEF1D47;
	Wed, 29 Nov 2023 07:31:24 -0800 (PST)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 01BDEE0003;
	Wed, 29 Nov 2023 15:31:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1701271883;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=WerIBZOnq6P8oT/o/o5rlHVAMWDVtIsPC8yaH6UlHFk=;
	b=efx3Mr/Y1F3Vc6GzFGkw0FVPYoq7B9HKnvqdqyWwV8nFwAyiIX3kJmYw1EuZ7xRaZ6ULbR
	LtwaDlm41FYNS3cR9BvWcouPCKe3Ldj6lCeEwO8De0ozO1ZrIZutYOUxSbEsBmVXm/wqdQ
	7DgjL1vF7jVApL1d67dRJuAXcD2FUeAsyDoGriMrjbvN9VQo+87XUHdMaVNyJlBr4THvAw
	fKhCAsTsX2l+chewhEBuh9OJqnIn5z8H9JOL7TBIpTX140ZfCQMDxOHbuxk4kPGi1RfYx4
	C6szAcd+XgdaCcuxNfG1mcfRbSw0t059X+Hb9SQyvct1KgYCvE9SKZE/5+iG2Q==
From: Thomas Richard <thomas.richard@bootlin.com>
Subject: [PATCH 0/5] Add suspend/resume support in ti_sci driver for j7200
Date: Wed, 29 Nov 2023 16:31:16 +0100
Message-Id: <20231129-j7200-tisci-s2r-v1-0-c1d5964ed574@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAERZZ2UC/x2N0QrCMAxFf2Xk2UCb6qT+ivjQxegiWCUZQxj7d
 7s9Hs493AVcTMXh0i1gMqvrpzaIhw54LPUpqPfGQIFSjJTxdaYQcFJnRSfDPjPFzCkdTz20aig
 uOFipPG7du/gkti/ntPmvyUN/++P1tq5/s4uniYEAAAA=
To: Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>, 
 Santosh Shilimkar <ssantosh@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vignesh Raghavendra <vigneshr@ti.com>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, thomas.petazzoni@bootlin.com, 
 gregory.clement@bootlin.com, u-kumar1@ti.com, 
 Thomas Richard <thomas.richard@bootlin.com>
X-Mailer: b4 0.12.0
X-GND-Sasl: thomas.richard@bootlin.com

During suspend, some devices free their irqs and request them at resume.
But there are some devices which don't do it, and assume that it's done
by the resource allocator.
On j7200, during suspend to ram the SoC is powered-off, so the allocated
irqs are lost.
With this series, ti_sci has an internal list of allocated irqs. It will
restore these irqs during its resume_noirq.

Moreover, ti_sci checks that there is at least a reserved memory region for
lpm. These regions are used by TF-A and R5 SPL during suspend and resume. 
We need to reserve some memory from the linux point of view to avoid any
memory corruption. 

A new compatible (ti,j7200-sci) was created for this specific behavior.

Signed-off-by: Thomas Richard <thomas.richard@bootlin.com>
---
Thomas Richard (5):
      dt-bindings: arm: keystone: add ti,j7200-sci compatible
      firmware: ti_sci: add suspend/resume support for irqs
      arm64: dts: ti: k3-j7200: use ti,j7200-sci compatible
      firmware: ti-sci: for j7200 before suspend check the reserved memory for lpm
      arm64: dts: ti: k3-j7200: add reserved memory regions for lpm

 .../devicetree/bindings/arm/keystone/ti,sci.yaml   |   2 +
 arch/arm64/boot/dts/ti/k3-j7200-mcu-wakeup.dtsi    |   2 +-
 arch/arm64/boot/dts/ti/k3-j7200-som-p0.dtsi        |  10 ++
 drivers/firmware/ti_sci.c                          | 191 ++++++++++++++++++++-
 4 files changed, 196 insertions(+), 9 deletions(-)
---
base-commit: 2041413d851e6dccd5c91321498e1d159ea432f2
change-id: 20231129-j7200-tisci-s2r-69c219c33456

Best regards,
-- 
Thomas Richard <thomas.richard@bootlin.com>



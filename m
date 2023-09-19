Return-Path: <devicetree+bounces-1351-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B20687A5FCA
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 12:39:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6C6232814BE
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 10:39:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF9D615BC;
	Tue, 19 Sep 2023 10:39:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 657A915BE
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 10:39:24 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id C726E187;
	Tue, 19 Sep 2023 03:39:20 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A241B1FB;
	Tue, 19 Sep 2023 03:39:57 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.manchester.arm.com [10.32.101.50])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 52A253F67D;
	Tue, 19 Sep 2023 03:39:18 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Lee Jones <lee@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Icenowy Zheng <uwu@icenowy.me>,
	Mark Brown <broonie@kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Shengyu Qu <wiagn233@outlook.com>,
	Martin Botka <martin.botka1@gmail.com>,
	Matthew Croughan <matthew.croughan@nix.how>,
	linux-sunxi@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/2] mfd: axp20x: improve support without interrupts
Date: Tue, 19 Sep 2023 11:39:11 +0100
Message-Id: <20230919103913.463156-1-andre.przywara@arm.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

This is a more of a re-send, rebased on top of v6.6-rc2, with the tags
added, and adding back the binding patch, since this seems to have fallen
through the cracks somehow.
Changelog below.
------------------------------

Every AXP PMIC we support sports an IRQ pin, that signals certain events
to the SoC. For some of the chip's functionality an interrupt is crucial
for operation (for instance a power key event), but for the basic
regulator features for instance the interrupt does not add much.

Recently we started seeing boards with smaller PMICs, that don't bother
to connect the IRQ line to anything. So far we handled this as a special
case for the AXP305, but there are more examples now that justify a more
general solution.

Patch 1/2 adds more PMICs to the list of chips for which the interrupts
DT property is optional: this is needed to correctly describe some newer
boards without the IRQ pin connected.
Ideally we would make this optional for every PMIC, but it is unclear
whether this is a good idea: many older the "bigger" PMICs have multiple
MFD devices that require an interrupt, so not having interrupt
functionality might not be feasible for their operation. Also so far all
boards with those PMICs connect the IRQ pin, so there is no immediate
need for such a relaxation.

Patch 2/2 then generalises the "no interrupt specified" case in the MFD
driver, as this was special cased for two PMIC models so far. This
allows boards with an AXP313a to not specify an IRQ line: there are
actually multiple boards relying on this out there.

Cheers,
Andre

Changelog v3 ... v2:
- rebased on top of v6.6-rc2
- add back binding patch
- tags added

Changelog v2 ... v1:
- drop reordering approach, use separate cell lists instead

Andre Przywara (2):
  dt-bindings: mfd: x-powers,axp152: make interrupt optional for more
    chips
  mfd: axp20x: Generalise handling without interrupt

 .../bindings/mfd/x-powers,axp152.yaml         |  5 ++-
 drivers/mfd/axp20x.c                          | 44 ++++++++++---------
 2 files changed, 28 insertions(+), 21 deletions(-)

-- 
2.25.1



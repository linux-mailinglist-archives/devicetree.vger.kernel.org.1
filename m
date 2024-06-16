Return-Path: <devicetree+bounces-76256-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 148A290A088
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2024 00:42:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5723128242D
	for <lists+devicetree@lfdr.de>; Sun, 16 Jun 2024 22:42:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A473361FE4;
	Sun, 16 Jun 2024 22:42:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87D1314292
	for <devicetree@vger.kernel.org>; Sun, 16 Jun 2024 22:42:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718577752; cv=none; b=W/w8h3revg+nws12K2Z3KObRJ05dYbU1NCiv9VE/g7VxuzMaNcg3Bs+ac6Fe2juESNPEIUNcmN1r+5koDfzg7S/UFhNDHo1w/E03dbomZCyHuEAiJ7at9glF51fPFGKU1cSKQMHliAqliMQ9DK1UaF7EWCeTg0R1hOLJnUpwlAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718577752; c=relaxed/simple;
	bh=5CDWZaMP44AkRBZmWKu0xjffFBosSFrJxoi6TrM1SoY=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=e2GrxOxgVrdUW19aSe6suNGQs+raDs51O6OLxF9V3DbD5duu+LlDYw7NpyaTFlVSKxPquQDMXYAEvFD8hrmmiownSE8sr3Upfte9mxDziDe1N6W332CgP/JjUk4HkfDUpjprfiKCVF7DFLQuXQWvSH/iy2He2GvR/0Ln+kTvjmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 90B99DA7;
	Sun, 16 Jun 2024 15:42:54 -0700 (PDT)
Received: from localhost.localdomain (usa-sjc-mx-foss1.foss.arm.com [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C60A13F73B;
	Sun, 16 Jun 2024 15:42:27 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh@kernel.org>
Cc: Chris Morgan <macromorgan@hotmail.com>,
	Ryan Walklin <ryan@testtoast.com>,
	Philippe Simons <simons.philippe@gmail.com>,
	iommu@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-sunxi@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/5] iommu: sun50i: Add Allwinner H616 support
Date: Sun, 16 Jun 2024 23:40:51 +0100
Message-Id: <20240616224056.29159-1-andre.przywara@arm.com>
X-Mailer: git-send-email 2.39.4
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Version two of this series adds a check that no physical address larger
than 4GB makes it into the PTEs: the map_pages() function returns an
error and prints a warning into dmesg to give users a clue why this
failed. I haven't tested whether this really happens, or whether the
32-bit DMA mask of the master devices already prevents this. In the
worst case this might fail on devices with 4GB of DRAM, but would always
work on smaller devices, which are arguably under bigger pressure to
find contiguous PA ranges. Changelog below.
===========================================

The Allwinner H616 contains an IOMMU almost compatible to the one used
in the H6. The differing default reset value of the bypass register
makes the two technically incompatible, so use a new DT compatible
string to be on the safe side.
The required driver changes can be applied to both variants, so the driver
is ignorant of the differences between the two for now.

Change the driver to cope with the new variant in patch 1/5 and 2/5,
then apply the required devicetree and binding changes in the remaining
patches.

I could just verify that the driver probes and allocates the page table
from below 4 GB. Others have verified that the driver works with the
(not yet upstream) video decoder engine, but more tests are surely
welcome.

Cheers,
Andre.

Changelog v1 .. v2:
- return error for too large PA in map_pages()
- add Krzysztof's ACK to the binding patch

Andre Przywara (4):
  iommu: sun50i: allocate page tables from below 4 GiB
  dt-bindings: iommu: add new compatible strings
  iommu: sun50i: Add H616 compatible string
  arm64: dts: allwinner: h616: add IOMMU node

Jernej Skrabec (1):
  iommu: sun50i: clear bypass register

 .../bindings/iommu/allwinner,sun50i-h6-iommu.yaml |  7 ++++++-
 arch/arm64/boot/dts/allwinner/sun50i-h616.dtsi    |  9 +++++++++
 drivers/iommu/sun50i-iommu.c                      | 15 +++++++++++++--
 3 files changed, 28 insertions(+), 3 deletions(-)

-- 
2.39.4



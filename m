Return-Path: <devicetree+bounces-133367-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D71919FA65C
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 16:09:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DF7EB1883246
	for <lists+devicetree@lfdr.de>; Sun, 22 Dec 2024 15:08:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2BC618D625;
	Sun, 22 Dec 2024 15:08:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vOEilKOb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AA7018B499;
	Sun, 22 Dec 2024 15:08:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734880104; cv=none; b=U06Vz2FQcX+4WojqiUyqGrDQPVzAvKl5Igfawvm11Mf21WdgXB0tKIT5mYkNI4pVLBaSeNT/MX2PGy956Z1S4pcov7N6c2edTnf/i1z1292bHqwhfI4vWtqb7bkpOW+BrEbQp3udMitVFJL1NGn6K55hKFncz9ibDUgp7wkwNUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734880104; c=relaxed/simple;
	bh=gIToryMoGt1RlnZ5DnGPB6XN4hzUnM6xVS5KmGn5A+4=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=qXoTO4ObZGqfnlgvWPeH9+pFkrqtJjkMF+LWw0Swhavmhg4k/2MAaWS7Gs6i/ENNwPMu7Xu1DpufgG/+jipJhgys43y5dBPPXGGWwxCmS/pQ/7VE5BZVfjrFsbGbR/oFlOyXkFsMyJpCbnoGCly19kkiNCUPqK7hjko1ODaKfL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vOEilKOb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CE3A4C4CECD;
	Sun, 22 Dec 2024 15:08:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734880104;
	bh=gIToryMoGt1RlnZ5DnGPB6XN4hzUnM6xVS5KmGn5A+4=;
	h=Date:From:To:Cc:Subject:From;
	b=vOEilKObBXQudADymW1EqSuuc3swCZNM6EbEbC0V6GOLdbHQBR9tu9vakiDEPwQe4
	 NjIojs2V2M2sqypvYPaVBb1OqMXhLQtii6PRUC6aGqZQOB1GD1duCtJeAJPLGxevJL
	 ULrJxJB+XdESEyFsgB3gTcuZrjgtRDywivNrFENDKC8rck04fH/uhb1+JpBdg5Hc4P
	 17Lo/vPlkiw4E59tr3noKBfChJOQcg9uEnhDQCOAh8cxrxZMTdlj/heBC1DRj6CLhA
	 GM95WLyh9T1V8eraDB1gfq/r4GVlykr2n+T0UjVxLX6lvjdN/HB6CVFT6cQJgQ0qm5
	 wKcef0t7p5JPA==
Date: Sun, 22 Dec 2024 09:08:22 -0600
From: Rob Herring <robh@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Saravana Kannan <saravanak@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [GIT PULL] Devicetree fixes for v6.13, part 1
Message-ID: <20241222150822.GA1972679-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Linus,

Please pull DT fixes for 6.13-rc.

Rob


The following changes since commit 28b513b5a683cf1e7125ba54ffe7ecb206ef4984:

  Merge branch 'dt/linus' into dt/next (2024-11-15 14:03:59 -0600)

are available in the Git repository at:

  ssh://git@gitolite.kernel.org/pub/scm/linux/kernel/git/robh/linux.git tags/devicetree-fixes-for-6.13-1

for you to fetch changes up to 8600058ba28a7b07660ddcd150372d72fb3bc895:

  of: Add coreboot firmware to excluded default cells list (2024-12-20 15:39:22 -0600)

----------------------------------------------------------------
Devicetree fixes for 6.13, part 1:

- Disable #address-cells/#size-cells warning on coreboot (Chromebooks)
  platforms

- Add missing root #address-cells/#size-cells in default empty DT

- Fix uninitialized variable in of_irq_parse_one()

- Fix interrupt-map cell length check in of_irq_parse_imap_parent()

- Fix refcount handling in __of_get_dma_parent()

- Fix error path in of_parse_phandle_with_args_map()

- Fix dma-ranges handling with flags cells

- Drop explicit fw_devlink handling of 'interrupt-parent'

- Fix "compression" typo in fixed-partitions binding

- Unify "fsl,liodn" property type definitions

----------------------------------------------------------------
Andrea della Porta (2):
      of/unittest: Add empty dma-ranges address translation tests
      of: address: Preserve the flags portion on 1:1 dma-ranges mapping

Herve Codina (2):
      of: Add #address-cells/#size-cells in the device-tree root empty node
      of: Fix error path in of_parse_phandle_with_args_map()

Rob Herring (Arm) (3):
      dt-bindings: Unify "fsl,liodn" type definitions
      dt-bindings: mtd: fixed-partitions: Fix "compression" typo
      of: Add coreboot firmware to excluded default cells list

Samuel Holland (1):
      of: property: fw_devlink: Do not use interrupt-parent directly

Zijun Hu (3):
      of: Fix refcount leakage for OF node returned by __of_get_dma_parent()
      of/irq: Fix interrupt-map cell length check in of_irq_parse_imap_parent()
      of/irq: Fix using uninitialized variable @addr_len in API of_irq_parse_one()

 .../devicetree/bindings/crypto/fsl,sec-v4.0.yaml   | 10 +++---
 .../bindings/mtd/partitions/fixed-partitions.yaml  |  2 +-
 .../bindings/soc/fsl/fsl,qman-portal.yaml          |  2 ++
 drivers/of/address.c                               |  5 +--
 drivers/of/base.c                                  | 18 ++++++----
 drivers/of/empty_root.dts                          |  9 ++++-
 drivers/of/irq.c                                   |  2 ++
 drivers/of/property.c                              |  2 --
 drivers/of/unittest-data/tests-address.dtsi        |  2 ++
 drivers/of/unittest.c                              | 39 ++++++++++++++++++++++
 10 files changed, 75 insertions(+), 16 deletions(-)


Return-Path: <devicetree+bounces-207214-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C7629B2EE63
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 08:40:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CA43C7253EA
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 06:39:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B37982D4816;
	Thu, 21 Aug 2025 06:39:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.loongson.cn (mail.loongson.cn [114.242.206.163])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C1D82773D1
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 06:39:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=114.242.206.163
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755758362; cv=none; b=EbA31FPMpRFQxLnMUlGgULMeB14FVw7kalX96pAHV7jmQbAm/dVBknhO/H0BIsTacBmEaBW4VPz/nKJNO3p/RVKzI31Yiah4vu65OqQY/r+xgOK6xCWq1PuBP8VWwvvi1VA6nPLjdvow+XFErVkdFaBSsJfXzgCy3UDFZy9gKdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755758362; c=relaxed/simple;
	bh=puOZ8EylBOhCwDG77Y4/kLzSoTNGL401eY5MqKnLoUg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=uMuk2m3KZhzfXSZTjsG2+EC65SelpNHQmewPy4so8vhwOf7OQdIIDGhX27wZaqeMy5f6NxKdjPQLC51E8FL0yEZAA8h7Ts+qfZ5ByDcUVFSQYmYu7mRvXGtJJbY9YYLNFUQhQQIKjNt5JdTG+na18TdIGeGfF4ilccMprity6UE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn; spf=pass smtp.mailfrom=loongson.cn; arc=none smtp.client-ip=114.242.206.163
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=loongson.cn
Received: from loongson.cn (unknown [223.64.69.45])
	by gateway (Coremail) with SMTP id _____8CxqdENv6Zohk0BAA--.2416S3;
	Thu, 21 Aug 2025 14:39:09 +0800 (CST)
Received: from localhost.localdomain (unknown [223.64.69.45])
	by front1 (Coremail) with SMTP id qMiowJAxT+YIv6ZohPRcAA--.21919S2;
	Thu, 21 Aug 2025 14:39:06 +0800 (CST)
From: Binbin Zhou <zhoubinbin@loongson.cn>
To: Binbin Zhou <zhoubb.aaron@gmail.com>,
	Huacai Chen <chenhuacai@loongson.cn>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Keguang Zhang <keguang.zhang@gmail.com>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Richard Weinberger <richard@nod.at>,
	Vignesh Raghavendra <vigneshr@ti.com>
Cc: Huacai Chen <chenhuacai@kernel.org>,
	Xuerui Wang <kernel@xen0n.name>,
	loongarch@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-mtd@lists.infradead.org,
	Binbin Zhou <zhoubinbin@loongson.cn>
Subject: [PATCH v3 0/7] mtd: rawnand: loongson: Add Loongson-2K nand controller support
Date: Thu, 21 Aug 2025 14:38:53 +0800
Message-ID: <cover.1755757841.git.zhoubinbin@loongson.cn>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:qMiowJAxT+YIv6ZohPRcAA--.21919S2
X-CM-SenderInfo: p2kr3uplqex0o6or00hjvr0hdfq/
X-Coremail-Antispam: 1Uk129KBj93XoWxuF17KryUWw1UCr1ktr47trc_yoW5Jw48pa
	y3u3y3GF1DtF47AFsI9a48Cr1rZryfJ39rJwsxG348C39xW345Xry0yF4rtFW7urWSqryj
	qF93GF48GF1DCFgCm3ZEXasCq-sJn29KB7ZKAUJUUUU3529EdanIXcx71UUUUU7KY7ZEXa
	sCq-sGcSsGvfJ3Ic02F40EFcxC0VAKzVAqx4xG6I80ebIjqfuFe4nvWSU5nxnvy29KBjDU
	0xBIdaVrnRJUUUBjb4IE77IF4wAFF20E14v26r1j6r4UM7CY07I20VC2zVCF04k26cxKx2
	IYs7xG6rWj6s0DM7CIcVAFz4kK6r1Y6r17M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48v
	e4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_Xr0_Ar1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI
	0_Gr0_Cr1l84ACjcxK6I8E87Iv67AKxVW0oVCq3wA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_
	GcCE3s1ln4kS14v26r126r1DM2AIxVAIcxkEcVAq07x20xvEncxIr21l57IF6xkI12xvs2
	x26I8E6xACxx1l5I8CrVACY4xI64kE6c02F40Ex7xfMcIj6xIIjxv20xvE14v26r126r1D
	McIj6I8E87Iv67AKxVWUJVW8JwAm72CE4IkC6x0Yz7v_Jr0_Gr1lF7xvr2IYc2Ij64vIr4
	1lc7CjxVAaw2AFwI0_Jw0_GFyl42xK82IYc2Ij64vIr41l4I8I3I0E4IkC6x0Yz7v_Jr0_
	Gr1l4IxYO2xFxVAFwI0_JF0_Jw1lx2IqxVAqx4xG67AKxVWUJVWUGwC20s026x8GjcxK67
	AKxVWUGVWUWwC2zVAF1VAY17CE14v26r1q6r43MIIYrxkI7VAKI48JMIIF0xvE2Ix0cI8I
	cVAFwI0_JFI_Gr1lIxAIcVC0I7IYx2IY6xkF7I0E14v26r1j6r4UMIIF0xvE42xK8VAvwI
	8IcIk0rVWUJVWUCwCI42IY6I8E87Iv67AKxVWUJVW8JwCI42IY6I8E87Iv6xkF7I0E14v2
	6r1j6r4UYxBIdaVFxhVjvjDU0xZFpf9x07j0mhrUUUUU=

Hi all:

This patchset adds support for the Loongson-2K0500/Loongson-2K1000 NAND
controllers, which are similar to the Loongson-1C NAND controller.

They support a maximum capacity of 16GB FLASH per chip, with a maximum
page size of 8KB. The chip supports up to 4 chip selects and 4 RDY signals.

The key difference between the Loongson-2K NAND controllers is that the
Loongson-2K1000 explicitly configures the DMA controller routing, while
the Loongson-2K0500 defaults to using APBDMA0.

Summary of the patchset:
Ptach 1: Rename all prefixes from ls1x to loongson
Patch 2: Add 6-byte NAND ID reading
Patch 3: Add chip select support
Patch 4-5: Add Loongson-2K0500 NAND controller support
Patch 6-7: Add Loongson-2K1000 NAND controller support

Thanks.

-------
V3:
Patch (1/7):
  - Merge the first two rename patches;
Patch (3/7)
  - Refact chip capacity calculation. Use a big switch-case
    for writesize, and sort the big switch-case by writesize;
  - Drop the redundant 'nand_cs = 0x0';
Patch (6/7)
  - Add Reviewed-by tag from Rob, thanks.

Link to V2:
https://lore.kernel.org/all/cover.1754890670.git.zhoubinbin@loongson.cn/

V2:
Patch (5/8):
  - Add Acked-by tag from Rob, thanks;
Patch (7/8):
  - Update reg-names attribute description.

Link to V1:
https://lore.kernel.org/all/cover.1753166096.git.zhoubinbin@loongson.cn/

Binbin Zhou (6):
  mtd: rawnand: loongson1: Rename the prefix from ls1x to loongson
  mtd: rawnand: loongson: Add nand chip select support
  dt-bindings: mtd: loongson,ls1b-nand-controller: Document the
    Loongson-2K0500 NAND controller
  mtd: rawnand: loongson: Add Loongson-2K0500 NAND controller support
  dt-bindings: mtd: loongson,ls1b-nand-controller: Document the
    Loongson-2K1000 NAND controller
  mtd: rawnand: loongson: Add Loongson-2K1000 NAND controller support

Keguang Zhang (1):
  mtd: rawnand: loongson: Add 6-byte NAND ID reading support

 .../mtd/loongson,ls1b-nand-controller.yaml    |   56 +-
 MAINTAINERS                                   |    2 +-
 drivers/mtd/nand/raw/Kconfig                  |    8 +-
 drivers/mtd/nand/raw/Makefile                 |    2 +-
 .../mtd/nand/raw/loongson-nand-controller.c   | 1021 +++++++++++++++++
 .../mtd/nand/raw/loongson1-nand-controller.c  |  836 --------------
 6 files changed, 1080 insertions(+), 845 deletions(-)
 create mode 100644 drivers/mtd/nand/raw/loongson-nand-controller.c
 delete mode 100644 drivers/mtd/nand/raw/loongson1-nand-controller.c


base-commit: fb2fae70e7e985c4acb1ad96110d8b98bb64a87c
-- 
2.47.3



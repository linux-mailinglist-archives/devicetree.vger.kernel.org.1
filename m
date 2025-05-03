Return-Path: <devicetree+bounces-173338-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A469AA817D
	for <lists+devicetree@lfdr.de>; Sat,  3 May 2025 17:46:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E0CE61B65C87
	for <lists+devicetree@lfdr.de>; Sat,  3 May 2025 15:47:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4310327A467;
	Sat,  3 May 2025 15:45:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from Atcsqr.andestech.com (60-248-80-70.hinet-ip.hinet.net [60.248.80.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A845185B48
	for <devicetree@vger.kernel.org>; Sat,  3 May 2025 15:45:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=60.248.80.70
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746287151; cv=none; b=U5LMFjO/yAQrFbFFI+K6WAiGZLFjuzgUAjiySrVgQSkI2kgMXYkINugYkNGeE/03fk/qD9uUoIArRU3KS4vGrJO9RME9fQemLGZej3/kqlp939fF7nI+3YSiwj/dR5LYtVcUpYovjWznRf3C6zRrjue5OUgVZBU3Eu+ust2LRtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746287151; c=relaxed/simple;
	bh=t8hzHcPOVLUiZgEnqx8grSX3KmZXGP7HFnkuR8wzguw=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=V+q/wWwz4GqFP/BdwNpbrzXCw79Jgblb6Q2nMOyZXCOCZ9eJ6uHXCbl9BESLjdcb7V21jVTkvbB9V2Nnzu2l8miJLcPUN5h5qLTMTQaRmr1yJ0r+s0F0XBL4AjWdNxx6pC744hetqscXOOw4L0Zs4noP02o8jO3gBHZIZurhPp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=andestech.com; spf=pass smtp.mailfrom=andestech.com; arc=none smtp.client-ip=60.248.80.70
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=andestech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=andestech.com
Received: from Atcsqr.andestech.com (localhost [127.0.0.2] (may be forged))
	by Atcsqr.andestech.com with ESMTP id 543FJhUc088158
	for <devicetree@vger.kernel.org>; Sat, 3 May 2025 23:19:43 +0800 (+08)
	(envelope-from ben717@andestech.com)
Received: from mail.andestech.com (ATCPCS31.andestech.com [10.0.1.89])
	by Atcsqr.andestech.com with ESMTPS id 543FIWkb087511
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Sat, 3 May 2025 23:18:32 +0800 (+08)
	(envelope-from ben717@andestech.com)
Received: from swlinux02.andestech.com (10.0.15.183) by ATCPCS31.andestech.com
 (10.0.1.89) with Microsoft SMTP Server id 14.3.498.0; Sat, 3 May 2025
 23:18:32 +0800
From: Ben Zong-You Xie <ben717@andestech.com>
To:
CC: <devicetree@vger.kernel.org>, <linux-riscv@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <paul.walmsley@sifive.com>,
        <palmer@dabbelt.com>, <aou@eecs.berkeley.edu>, <alex@ghiti.fr>,
        <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <tglx@linutronix.de>, <daniel.lezcano@linaro.org>,
        <prabhakar.mahadev-lad.rj@bp.renesas.com>, <tim609@andestech.com>,
        "Ben
 Zong-You Xie" <ben717@andestech.com>
Subject: [PATCH v2 0/9] add Voyager board support
Date: Sat, 3 May 2025 23:18:20 +0800
Message-ID: <20250503151829.605006-1-ben717@andestech.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-DKIM-Results: atcpcs31.andestech.com; dkim=none;
X-DNSRBL: 
X-SPAM-SOURCE-CHECK: pass
X-MAIL:Atcsqr.andestech.com 543FJhUc088158

The Voyager is a 9.6” x 9.6” Micro ATX form factor development board
including Andes QiLai SoC. This patch series adds minimal device tree
files for the QiLai SoC and the Voyager board [1].

Now only support basic uart drivers to boot up into a basic console. Other
features will be added later.

[1] https://www.andestech.com/en/products-solutions/andeshape-platforms/qilai-chip/
---
Changelog:

v1->v2:
  - Add Rob's Reviewed-by tag to patch 2.
  - Add Rob's Acked-by tag to patch 3.
  - Add detailed descriptions to PLIC_SW and PLMT0.
  - Add Rob's Acked-by tag to patch 6.
  - Move the aliases node and memory node from qilai.dtsi to qilai-voyager.dts.
  - Drop "status = okay" in each CPU node since the status property is by
    default "okay".
  - Reorder the nodes in qilai.dtsi by unit address in ascending order.
  - Add myself as the maintainer of Andes's SoC tree.

v1: https://lore.kernel.org/all/20250407104937.315783-1-ben717@andestech.com/
---
Ben Zong-You Xie (9):
  riscv: add Andes SoC family Kconfig support
  dt-bindings: riscv: add Andes QiLai SoC and the Voyager board bindings
  dt-bindings: interrupt-controller: add Andes QiLai PLIC
  dt-bindings: interrupt-controller: add Andes machine-level software
    interrupt controller
  dt-bindings: timer: add Andes machine timer
  dt-bindings: cache: ax45mp-cache: allow variable cache-sets for Andes
    L2 cache
  riscv: dts: andes: add QiLai SoC device tree
  riscv: dts: andes: add Voyager board device tree
  riscv: defconfig: enable Andes SoC

 .../cache/andestech,ax45mp-cache.yaml         |   2 +-
 .../andestech,plicsw.yaml                     |  54 +++++
 .../sifive,plic-1.0.0.yaml                    |   1 +
 .../devicetree/bindings/riscv/andes.yaml      |  25 +++
 .../bindings/timer/andestech,plmt0.yaml       |  53 +++++
 MAINTAINERS                                   |   9 +
 arch/riscv/Kconfig.errata                     |   2 +-
 arch/riscv/Kconfig.socs                       |   9 +
 arch/riscv/boot/dts/Makefile                  |   1 +
 arch/riscv/boot/dts/andes/Makefile            |   2 +
 arch/riscv/boot/dts/andes/qilai-voyager.dts   |  28 +++
 arch/riscv/boot/dts/andes/qilai.dtsi          | 186 ++++++++++++++++++
 arch/riscv/configs/defconfig                  |   1 +
 13 files changed, 371 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/andestech,plicsw.yaml
 create mode 100644 Documentation/devicetree/bindings/riscv/andes.yaml
 create mode 100644 Documentation/devicetree/bindings/timer/andestech,plmt0.yaml
 create mode 100644 arch/riscv/boot/dts/andes/Makefile
 create mode 100644 arch/riscv/boot/dts/andes/qilai-voyager.dts
 create mode 100644 arch/riscv/boot/dts/andes/qilai.dtsi

--
2.34.1


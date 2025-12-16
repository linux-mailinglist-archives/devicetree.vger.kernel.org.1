Return-Path: <devicetree+bounces-246917-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 259BACC162D
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 08:55:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 01B1F302BC65
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 07:55:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7BBB32A3F0;
	Tue, 16 Dec 2025 07:55:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.loongson.cn (mail.loongson.cn [114.242.206.163])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8969C30E0DC
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 07:54:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=114.242.206.163
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765871701; cv=none; b=PdMzxDUPwsTvfvMOFh4tGxzmjUpCamw7iopW5xS4mPbAdhbl+Lgf++s+xgsH5VU2Oxy3i9jp/gq/0rw2ZfB/gVVgWrUMXHN8zpFy50k87sN4SE5CjCZ5glEocW0KavoF7SyuTzRbEwhsNjOu93MVpYAOEQ9gMDpoHQzrshMpAgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765871701; c=relaxed/simple;
	bh=De4e/4GEVtd8jTPHu+PzxSIsNuZBoc1uotoMWCdF+OA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=AYfRot60deJ/5kbJbgl40i5w7NBy8aQU4s6We/RLFGA7LKwX1HgpRqS9aQ2mJPFi3aP9Dfsu3lIbZc8uDT60EVcruq17VvTyl025NKTkeoNpmUmdvfcnXdb2SRp+TEeMcvOXrFMRNZOs49kpsh/kwo/tb68+hgmXlowjE56Gwt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn; spf=pass smtp.mailfrom=loongson.cn; arc=none smtp.client-ip=114.242.206.163
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=loongson.cn
Received: from loongson.cn (unknown [223.64.68.219])
	by gateway (Coremail) with SMTP id _____8BxE9BJEEFpzJcuAA--.34617S3;
	Tue, 16 Dec 2025 15:54:49 +0800 (CST)
Received: from localhost.localdomain (unknown [223.64.68.219])
	by front1 (Coremail) with SMTP id qMiowJCxHOFFEEFpS2EAAA--.2410S2;
	Tue, 16 Dec 2025 15:54:47 +0800 (CST)
From: Binbin Zhou <zhoubinbin@loongson.cn>
To: Yao Zi <me@ziyao.cc>,
	Binbin Zhou <zhoubb.aaron@gmail.com>,
	Huacai Chen <chenhuacai@loongson.cn>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Huacai Chen <chenhuacai@kernel.org>,
	Xuerui Wang <kernel@xen0n.name>,
	loongarch@lists.linux.dev,
	devicetree@vger.kernel.org,
	Binbin Zhou <zhoubinbin@loongson.cn>
Subject: [PATCH 0/7] LoongArch: DTS: Fix dtbs_check warnings
Date: Tue, 16 Dec 2025 15:54:35 +0800
Message-ID: <cover.1765778124.git.zhoubinbin@loongson.cn>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:qMiowJCxHOFFEEFpS2EAAA--.2410S2
X-CM-SenderInfo: p2kr3uplqex0o6or00hjvr0hdfq/1tbiAQESCGlA9LMB3QAAso
X-Coremail-Antispam: 1Uk129KBj93XoW7AF1UXF1UGF1UZw45KF47ZFc_yoW8Zryfp3
	9xuwsrKr4xGFWxZr4Dt34UWrn5ZF9rJrnrWanxGrn5CrsxZ34UZr1rtF93tFWUArWfJa40
	qryrKw1agF1UCabCm3ZEXasCq-sJn29KB7ZKAUJUUUU8529EdanIXcx71UUUUU7KY7ZEXa
	sCq-sGcSsGvfJ3Ic02F40EFcxC0VAKzVAqx4xG6I80ebIjqfuFe4nvWSU5nxnvy29KBjDU
	0xBIdaVrnRJUUUkFb4IE77IF4wAFF20E14v26r1j6r4UM7CY07I20VC2zVCF04k26cxKx2
	IYs7xG6rWj6s0DM7CIcVAFz4kK6r1Y6r17M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48v
	e4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_JFI_Gr1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI
	0_Gr0_Cr1l84ACjcxK6I8E87Iv67AKxVW8Jr0_Cr1UM28EF7xvwVC2z280aVCY1x0267AK
	xVW8Jr0_Cr1UM2AIxVAIcxkEcVAq07x20xvEncxIr21l57IF6xkI12xvs2x26I8E6xACxx
	1l5I8CrVACY4xI64kE6c02F40Ex7xfMcIj6xIIjxv20xvE14v26r106r15McIj6I8E87Iv
	67AKxVWUJVW8JwAm72CE4IkC6x0Yz7v_Jr0_Gr1lF7xvr2IYc2Ij64vIr41l42xK82IYc2
	Ij64vIr41l4I8I3I0E4IkC6x0Yz7v_Jr0_Gr1lx2IqxVAqx4xG67AKxVWUJVWUGwC20s02
	6x8GjcxK67AKxVWUGVWUWwC2zVAF1VAY17CE14v26r1q6r43MIIYrxkI7VAKI48JMIIF0x
	vE2Ix0cI8IcVAFwI0_Jr0_JF4lIxAIcVC0I7IYx2IY6xkF7I0E14v26r1j6r4UMIIF0xvE
	42xK8VAvwI8IcIk0rVWUJVWUCwCI42IY6I8E87Iv67AKxVWUJVW8JwCI42IY6I8E87Iv6x
	kF7I0E14v26r1j6r4UYxBIdaVFxhVjvjDU0xZFpf9x07jUsqXUUUUU=

Hi all:

As Krzysztof pointed out in the OSS talk, LoongArch only has three DTS,
but has a bunch of warnings. The patchset attempts to fix them.

Patch-1 and patch-3 are taken from Yao[1],thanks a lot!

[1]: https://lore.kernel.org/all/20251209140006.54821-1-me@ziyao.cc/

Test environment and results: 

Package                   Version
------------------------- -----------
attrs                     25.4.0
dtschema                  2025.12
jsonschema                4.25.1
jsonschema-specifications 2025.9.1
pip                       25.3
pylibfdt                  1.7.2.post1
referencing               0.37.0
rfc3987                   1.3.8
rpds-py                   0.30.0
ruamel.yaml               0.18.16
ruamel.yaml.clib          0.2.15
typing_extensions         4.15.0

---------
make dtbs_check W=1

  SYNC    include/config/auto.conf
  UPD     include/config/kernel.release
  DTC [C] arch/loongarch/boot/dts/loongson-2k0500-ref.dtb
  DTC [C] arch/loongarch/boot/dts/loongson-2k1000-ref.dtb
  DTC [C] arch/loongarch/boot/dts/loongson-2k2000-ref.dtb

Thanks.
Binbin

Binbin Zhou (5):
  dt-bindings: interrupt-controller: loongson,pch-pic: Change to
    unevaluatedProperties
  LoongArch: dts: loongson-2k0500: Add default Extend I/O Interrupt
    controller address cells
  LoongArch: dts: loongson-2k1000: Add default Local I/O Interrupt
    controller address cells
  LoongArch: dts: loongson-2k2000: Add default PCH PIC controller
    address cells
  LoongArch: dts: loongson-2k1000: Fix i2c-gpio node names

Yao Zi (2):
  dt-bindings: PCI: loongson: Document msi-parent property
  LoongArch: dts: Describe PCI sideband IRQ through interrupt-extended

 .../loongson,pch-pic.yaml                     |  5 ++-
 .../devicetree/bindings/pci/loongson.yaml     |  2 ++
 arch/loongarch/boot/dts/loongson-2k0500.dtsi  |  1 +
 arch/loongarch/boot/dts/loongson-2k1000.dtsi  | 30 +++++++----------
 arch/loongarch/boot/dts/loongson-2k2000.dtsi  | 33 ++++++++-----------
 5 files changed, 32 insertions(+), 39 deletions(-)


base-commit: 4c2aab372d819471df4fec9e3240d80938fcc983
-- 
2.47.3



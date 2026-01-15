Return-Path: <devicetree+bounces-255355-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FCA7D227D7
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 07:09:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 537D83027A5C
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 06:08:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C496A2D59E8;
	Thu, 15 Jan 2026 06:08:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from cstnet.cn (smtp21.cstnet.cn [159.226.251.21])
	(using TLSv1.2 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0164F27A916;
	Thu, 15 Jan 2026 06:08:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=159.226.251.21
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768457310; cv=none; b=BXfFeBmThQVGs75T7JsU1Nt9q+Sz2q1OlR4IICSUDnqS2VDW7ErczAcqxelYO0WBsUjsOnn939mhD18eKAdCXvwqRjboGtXZABJosAoIhoWQeDiZR9RyuhtxiJ75R0sqFIYlNcgERpRmHPqc/9jSIbni2B3p50PC96H4FfX2vEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768457310; c=relaxed/simple;
	bh=VMJMp9GD9yBNRrRclYe5La4PWwmgwchcwSvrWAxXjmI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=nHM5YYf6bNYfNxEkMdStYjPkApe2hi//8c3LewqtHcLCJmrMAZ++yP2G5u/D1947OwJMGw16HaB732LrDaQpJQrlcWRScfaOVselNFfl/+JVnWGEO+n9VswOXV4+K9XbMoQe5e9f01xOmvRbCqzcyYUwKUgD8CqwcZCgIwok/f0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=isrc.iscas.ac.cn; spf=pass smtp.mailfrom=isrc.iscas.ac.cn; arc=none smtp.client-ip=159.226.251.21
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=isrc.iscas.ac.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=isrc.iscas.ac.cn
Received: from duge-virtual-machine (unknown [223.160.207.69])
	by APP-01 (Coremail) with SMTP id qwCowABH7mlMhGhpXOHCBA--.37756S2;
	Thu, 15 Jan 2026 14:08:14 +0800 (CST)
From: Jiayu Du <jiayu.riscv@isrc.iscas.ac.cn>
To: conor@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	pjw@kernel.org,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	jiayu.riscv@isrc.iscas.ac.cn,
	cyy@cyyself.name,
	dlemoal@kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	gaohan@iscas.ac.cn
Subject: [PATCH v3 0/2] Initial support for 100ask CanMV-K230 DshanPi
Date: Thu, 15 Jan 2026 14:07:59 +0800
Message-ID: <20260115060801.16819-1-jiayu.riscv@isrc.iscas.ac.cn>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:qwCowABH7mlMhGhpXOHCBA--.37756S2
X-Coremail-Antispam: 1UD129KBjvJXoW7Zw4ftFy8JF4kJr1xtr4ruFg_yoW8XF4kp3
	y7uFsxGrZrKr1I9F4S9w48Wr15Zwn5Jr1rWw13X3srArWYvry8Crnagw45X34UXr17Cw10
	va15Kry0grWjyaDanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUU9014x267AKxVW8JVW5JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWrJVCq3wAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
	1l84ACjcxK6xIIjxv20xvE14v26r1j6r1xM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r4j
	6F4UM28EF7xvwVC2z280aVAFwI0_Jr0_Gr1l84ACjcxK6I8E87Iv6xkF7I0E14v26r4j6r
	4UJwAS0I0E0xvYzxvE52x082IY62kv0487Mc02F40EFcxC0VAKzVAqx4xG6I80ewAv7VC0
	I7IYx2IY67AKxVWUJVWUGwAv7VC2z280aVAFwI0_Jr0_Gr1lOx8S6xCaFVCjc4AY6r1j6r
	4UM4x0Y48IcxkI7VAKI48JM4x0x7Aq67IIx4CEVc8vx2IErcIFxwACI402YVCY1x02628v
	n2kIc2xKxwCY1x0262kKe7AKxVWUtVW8ZwCF04k20xvY0x0EwIxGrwCFx2IqxVCFs4IE7x
	kEbVWUJVW8JwC20s026c02F40E14v26r1j6r18MI8I3I0E7480Y4vE14v26r106r1rMI8E
	67AF67kF1VAFwI0_Jw0_GFylIxkGc2Ij64vIr41lIxAIcVC0I7IYx2IY67AKxVWUJVWUCw
	CI42IY6xIIjxv20xvEc7CjxVAFwI0_Gr0_Cr1lIxAIcVCF04k26cxKx2IYs7xG6r1j6r1x
	MIIF0xvEx4A2jsIE14v26r1j6r4UMIIF0xvEx4A2jsIEc7CjxVAFwI0_Gr0_Gr1UYxBIda
	VFxhVjvjDU0xZFpf9x0JUd-B_UUUUU=
X-CM-SenderInfo: 5mld534oul2uny6l223fol2u1dvotugofq/

This series adds initial support for the 100ask CanMV-K230 DshanPi
board based on Canaan K230 RISC-V SoC. There is a module on this
development board.

The board and module are documented, the basic board/module devicetrees
are added.

This series is based on the K230 clock series[1] and the patch 3 of the
k230 pinctrl series[2].

Link:  https://lore.kernel.org/all/20251127-b4-k230-clk-v9-0-3aa09e17faf5@zohomail.com/ [1]
Link:  https://lore.kernel.org/all/20240926-k230-pinctrl-v2-3-a9a36fba4b34@163.com/ [2]

Changes in v3:
- Delet the model and compatible of the root node in the dtsi file.
- Use clock-50000000 as the node name.
- Link to v2: https://lore.kernel.org/all/20260104070911.219588-1-jiayu.riscv@isrc.iscas.ac.cn/

Changes in v2:
- Add a minus sign before items.
- Link to v1: https://lore.kernel.org/all/20251229061318.16756-1-jiayu.riscv@isrc.iscas.ac.cn/

Jiayu Du (2):
  dt-bindings: riscv: canaan: add 100ask K230 boards compatible strings
  riscv: dts: canaan: Add initial dshanpi board DT files

 .../devicetree/bindings/riscv/canaan.yaml     |  5 ++
 arch/riscv/boot/dts/canaan/Makefile           |  1 +
 .../boot/dts/canaan/k230-canmv-dshanpi.dts    | 82 +++++++++++++++++++
 .../dts/canaan/k230-canmv-module-dshanpi.dtsi | 26 ++++++
 4 files changed, 114 insertions(+)
 create mode 100644 arch/riscv/boot/dts/canaan/k230-canmv-dshanpi.dts
 create mode 100644 arch/riscv/boot/dts/canaan/k230-canmv-module-dshanpi.dtsi

-- 
2.52.0



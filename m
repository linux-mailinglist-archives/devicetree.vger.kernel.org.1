Return-Path: <devicetree+bounces-250054-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F55CE6023
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 07:14:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 94D3E30051BC
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 06:14:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D577327587D;
	Mon, 29 Dec 2025 06:14:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from cstnet.cn (smtp81.cstnet.cn [159.226.251.81])
	(using TLSv1.2 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD4483A1E61;
	Mon, 29 Dec 2025 06:13:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=159.226.251.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766988840; cv=none; b=Z4OZ3FGGqz6uPfAyhg39HuAJISqXooU6ZS3R4ypuxWPccSpy6rdBqKg73o1A4RrXvez+GCAKYKh3596MsXqFSY0P0QhEOrM+DfJYJNqH7T/vPZAM1Zs3vFJb+ffhd3VVMv2f6gmUcsqgHyGyYd8DpSmVlZI4yvU2yj1ek8W5FxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766988840; c=relaxed/simple;
	bh=JZEZGfRrACd4CkDSQZovy4EliYvjziJN6mIg6imwfXw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=SVFjCXUAf6eT7XiLNoUMb5IMmNeGoNBZZEmSUqzgKCuUk/1I8WNVj2nJrC5p8mdsBtZhgkILLCuu2irYvUSH18OGfN6bZ7BN8m93BLryK1RJ7BR86fNWm/ik3e6R9Hnz+CeP/ZBRgsZukBAwX4a5uBm7gJJNO5NfcQD2EpAhaj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=isrc.iscas.ac.cn; spf=pass smtp.mailfrom=isrc.iscas.ac.cn; arc=none smtp.client-ip=159.226.251.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=isrc.iscas.ac.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=isrc.iscas.ac.cn
Received: from duge-virtual-machine (unknown [223.160.206.4])
	by APP-03 (Coremail) with SMTP id rQCowABnaL8UHFJpuWxrAg--.22171S2;
	Mon, 29 Dec 2025 14:13:43 +0800 (CST)
From: Jiayu Du <jiayu.riscv@isrc.iscas.ac.cn>
To: conor@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	pjw@kernel.org,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	alex@ghiti.fr,
	jiayu.riscv@isrc.iscas.ac.cn,
	cyy@cyyself.name,
	kingxukai@zohomail.com,
	TroyMitchell988@gmail.com,
	gaohan@iscas.ac.cn,
	me@ziyao.cc
Subject: [PATCH 0/2] Initial support for 100ask CanMV-K230 DshanPi
Date: Mon, 29 Dec 2025 14:13:16 +0800
Message-ID: <20251229061318.16756-1-jiayu.riscv@isrc.iscas.ac.cn>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:rQCowABnaL8UHFJpuWxrAg--.22171S2
X-Coremail-Antispam: 1UD129KBjvdXoW7Gry7Jw18ZF48JFWkCw45KFg_yoWkArXEgF
	1fu348ZF1kGa1fCF9Yqr4rJry2k3y5GrZ5tFy2q3WUGF9xXrZ7AayYgr1Yvr1UJF1xtFsa
	krWktr4rWrsFgjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUIcSsGvfJTRUUUb3xFF20E14v26r4j6ryUM7CY07I20VC2zVCF04k26cxKx2IYs7xG
	6r1S6rWUM7CIcVAFz4kK6r1j6r18M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48ve4kI8w
	A2z4x0Y4vE2Ix0cI8IcVAFwI0_Jr0_JF4l84ACjcxK6xIIjxv20xvEc7CjxVAFwI0_Gr0_
	Cr1l84ACjcxK6I8E87Iv67AKxVWUJVW8JwA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_Gr0_Gr
	1UM2AIxVAIcxkEcVAq07x20xvEncxIr21l5I8CrVACY4xI64kE6c02F40Ex7xfMcIj6xII
	jxv20xvE14v26r1j6r18McIj6I8E87Iv67AKxVWUJVW8JwAm72CE4IkC6x0Yz7v_Jr0_Gr
	1lF7xvr2IYc2Ij64vIr41lF7I21c0EjII2zVCS5cI20VAGYxC7M4IIrI8v6xkF7I0E8cxa
	n2IY04v7MxkF7I0En4kS14v26r1q6r43MxAIw28IcxkI7VAKI48JMxC20s026xCaFVCjc4
	AY6r1j6r4UMI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE
	17CEb7AF67AKxVW8ZVWrXwCIc40Y0x0EwIxGrwCI42IY6xIIjxv20xvE14v26r1j6r1xMI
	IF0xvE2Ix0cI8IcVCY1x0267AKxVW8JVWxJwCI42IY6xAIw20EY4v20xvaj40_Jr0_JF4l
	IxAIcVC2z280aVAFwI0_Jr0_Gr1lIxAIcVC2z280aVCY1x0267AKxVW8JVW8JrUvcSsGvf
	C2KfnxnUUI43ZEXa7VUbGQ6JUUUUU==
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

Jiayu Du (2):
  dt-bindings: riscv: canaan: add 100ask K230 boards compatible strings
  riscv: dts: canaan: Add initial dshanpi board DT files

 .../devicetree/bindings/riscv/canaan.yaml     |  5 ++
 arch/riscv/boot/dts/canaan/Makefile           |  1 +
 .../boot/dts/canaan/k230-canmv-dshanpi.dts    | 82 +++++++++++++++++++
 .../dts/canaan/k230-canmv-module-dshanpi.dtsi | 30 +++++++
 4 files changed, 118 insertions(+)
 create mode 100644 arch/riscv/boot/dts/canaan/k230-canmv-dshanpi.dts
 create mode 100644 arch/riscv/boot/dts/canaan/k230-canmv-module-dshanpi.dtsi

-- 
2.52.0



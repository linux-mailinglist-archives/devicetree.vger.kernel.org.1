Return-Path: <devicetree+bounces-246922-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1893ECC1711
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 09:03:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 605CF307C184
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 07:56:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4AA5337101;
	Tue, 16 Dec 2025 07:56:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.loongson.cn (mail.loongson.cn [114.242.206.163])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35E1D32F76D
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 07:56:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=114.242.206.163
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765871804; cv=none; b=L26LjbUZSoR6rXrTk/U8TYpcfx/bnm69Zkjnnn8KnUN53Vg/hiSvrfkbtNbiV2ReVrmvbuUZfiw5nfhiElQjyJvrvtoDuIoK5yE1BkZGLKPY9QFpqbVa93J7+TdhBULYAHE5+KoauLsAJ/kFo37Vkdo/snB+b5TgYPmT61Y6rcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765871804; c=relaxed/simple;
	bh=e6J585BT5glX4rv0GYiHkk3a02y9G9ho/KYeG812spE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GTOpB5aYI2CHIysG0FqH63DJwtP4T1u+HObO4msCcrUMYf8ly3RhfcjnwVByAUbedArF/jmKgtGYssmwDKWwuR+U5fXiw8E7S4xq2NsGFbwK7VTPMA8Ka9dGpkwBt0LE/MmlsW8F09y5CnMHywbsc+1/0JyTizJH6L0k0jpj8is=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn; spf=pass smtp.mailfrom=loongson.cn; arc=none smtp.client-ip=114.242.206.163
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=loongson.cn
Received: from loongson.cn (unknown [223.64.68.219])
	by gateway (Coremail) with SMTP id _____8AxB9GmEEFpFJguAA--.35257S3;
	Tue, 16 Dec 2025 15:56:23 +0800 (CST)
Received: from localhost.localdomain (unknown [223.64.68.219])
	by front1 (Coremail) with SMTP id qMiowJBxSeCiEEFpbGEAAA--.2262S2;
	Tue, 16 Dec 2025 15:56:21 +0800 (CST)
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
Subject: [PATCH 4/7] LoongArch: dts: loongson-2k0500: Add default Extend I/O Interrupt controller address cells
Date: Tue, 16 Dec 2025 15:56:09 +0800
Message-ID: <c07a7d7062a3645c11fb4fbf7c71c6592f000f37.1765778124.git.zhoubinbin@loongson.cn>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1765778124.git.zhoubinbin@loongson.cn>
References: <cover.1765778124.git.zhoubinbin@loongson.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:qMiowJBxSeCiEEFpbGEAAA--.2262S2
X-CM-SenderInfo: p2kr3uplqex0o6or00hjvr0hdfq/1tbiAQESCGlA9LMB8AAAsF
X-Coremail-Antispam: 1Uk129KBj93XoW7KF18tr43JF15Xr43ZFy8CrX_yoW8GFy8pF
	W2kwsrGr40gF1fGw4DtFy2gr1UAF98AFnF9w4vy3y8ArsIq34UZr4fGF9YqF1Ygr4rX34j
	qr1Fk342qa1DAabCm3ZEXasCq-sJn29KB7ZKAUJUUUU8529EdanIXcx71UUUUU7KY7ZEXa
	sCq-sGcSsGvfJ3Ic02F40EFcxC0VAKzVAqx4xG6I80ebIjqfuFe4nvWSU5nxnvy29KBjDU
	0xBIdaVrnRJUUUkIb4IE77IF4wAFF20E14v26r1j6r4UM7CY07I20VC2zVCF04k26cxKx2
	IYs7xG6rWj6s0DM7CIcVAFz4kK6r106r15M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48v
	e4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_Xr0_Ar1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI
	0_Cr0_Gr1UM28EF7xvwVC2z280aVAFwI0_Gr1j6F4UJwA2z4x0Y4vEx4A2jsIEc7CjxVAF
	wI0_Gr1j6F4UJwAS0I0E0xvYzxvE52x082IY62kv0487Mc804VCY07AIYIkI8VC2zVCFFI
	0UMc02F40EFcxC0VAKzVAqx4xG6I80ewAv7VC0I7IYx2IY67AKxVWUtVWrXwAv7VC2z280
	aVAFwI0_Gr0_Cr1lOx8S6xCaFVCjc4AY6r1j6r4UM4x0Y48IcxkI7VAKI48JMxAIw28Icx
	kI7VAKI48JMxC20s026xCaFVCjc4AY6r1j6r4UMI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2Iq
	xVCjr7xvwVAFwI0_JrI_JrWlx4CE17CEb7AF67AKxVWUtVW8ZwCIc40Y0x0EwIxGrwCI42
	IY6xIIjxv20xvE14v26ryj6F1UMIIF0xvE2Ix0cI8IcVCY1x0267AKxVW8JVWxJwCI42IY
	6xAIw20EY4v20xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Gr0_Cr1lIxAIcVC2z280aV
	CY1x0267AKxVW8JVW8JrUvcSsGvfC2KfnxnUUI43ZEXa7IU8QJ57UUUUU==

Add missing address-cells 0 to the extend I/O interrupt controller node
to silence W=1 warning:

  loongson-2k0500.dtsi:513.5-51: Warning (interrupt_map): /bus@10000000/pcie@1a000000/pcie@0,0:interrupt-map:
    Missing property '#address-cells' in node /bus@10000000/interrupt-controller@1fe11600, using 0 as fallback

Value '0' is correct because:
1. The extend I/O interrupt controller does not have children,
2. interrupt-map property (in PCI node) consists of five components and
   the fourth component "parent unit address", which size is defined by
   '#address-cells' of the node pointed to by the interrupt-parent
   component, is not used (=0)

Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
---
 arch/loongarch/boot/dts/loongson-2k0500.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/loongarch/boot/dts/loongson-2k0500.dtsi b/arch/loongarch/boot/dts/loongson-2k0500.dtsi
index 357de4ca7555..0594da1ea83d 100644
--- a/arch/loongarch/boot/dts/loongson-2k0500.dtsi
+++ b/arch/loongarch/boot/dts/loongson-2k0500.dtsi
@@ -164,6 +164,7 @@ eiointc: interrupt-controller@1fe11600 {
 			compatible = "loongson,ls2k0500-eiointc";
 			reg = <0x0 0x1fe11600 0x0 0xea00>;
 			interrupt-controller;
+			#address-cells = <0>;
 			#interrupt-cells = <1>;
 			interrupt-parent = <&cpuintc>;
 			interrupts = <3>;
-- 
2.47.3



Return-Path: <devicetree+bounces-203065-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BD1ADB1FEEE
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 08:03:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DD17116FC81
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 06:03:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0741274B56;
	Mon, 11 Aug 2025 06:03:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.loongson.cn (mail.loongson.cn [114.242.206.163])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 260DE26E6E6
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 06:03:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=114.242.206.163
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754892218; cv=none; b=VH3yFZksogBjHQyiwW6JQRgf670nm1PMheAaS50DUhew19/SPjH7WibsJtiUsndRoXD2yvGEO93v8iUQ7FTR/WN2mOZrm51qxwsKsHNyzJMi/R1fMYBN7rxU3GBu5l4RMESk+YyQMHU/GFNVm2f7tsIURcSMXX8cpClO5TCVS6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754892218; c=relaxed/simple;
	bh=wZdtY3VdGskwOkTPP8pFvYKSWgzMknzLqsyO6Pwbs7I=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DIc65iXLQMqGtH9VSiWzrldAbkZHwqfgZ9CuCe0oo7DmtMxcm533dw98wXYPXM6RlGkj0aQotGW191OLjIhszK85r6Fh+mBoJ2okpJIJTXhfh5m5/3tuGHzz210Tgekv3OpUDRVg8L/N/kI3DGRGtZijP95VeDxz5bwyRSSdNdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn; spf=pass smtp.mailfrom=loongson.cn; arc=none smtp.client-ip=114.242.206.163
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=loongson.cn
Received: from loongson.cn (unknown [223.64.69.45])
	by gateway (Coremail) with SMTP id _____8CxyuC2h5lo1UI+AQ--.53088S3;
	Mon, 11 Aug 2025 14:03:34 +0800 (CST)
Received: from localhost.localdomain (unknown [223.64.69.45])
	by front1 (Coremail) with SMTP id qMiowJAxVOSrh5loVlVCAA--.52188S3;
	Mon, 11 Aug 2025 14:03:26 +0800 (CST)
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
	Binbin Zhou <zhoubinbin@loongson.cn>,
	"Rob Herring (Arm)" <robh@kernel.org>
Subject: [PATCH v2 5/8] dt-bindings: mtd: loongson,ls1b-nand-controller: Document the Loongson-2K0500 NAND controller
Date: Mon, 11 Aug 2025 14:03:12 +0800
Message-ID: <a6b216e6726edc00a910ba543ef8f7a9195b94f7.1754890670.git.zhoubinbin@loongson.cn>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1754890670.git.zhoubinbin@loongson.cn>
References: <cover.1754890670.git.zhoubinbin@loongson.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:qMiowJAxVOSrh5loVlVCAA--.52188S3
X-CM-SenderInfo: p2kr3uplqex0o6or00hjvr0hdfq/
X-Coremail-Antispam: 1Uk129KBj93XoW7Cw4xAr13trykCw4UWr18Xrc_yoW8WF47pF
	ZxC3yxKF1IyF13Za90ka48Cr13ZF93Jw4DJanrJ347G3sxWw1YqryayFn5X3WUAr4IqFWU
	ZFyvga1rJ3WDAFbCm3ZEXasCq-sJn29KB7ZKAUJUUUU3529EdanIXcx71UUUUU7KY7ZEXa
	sCq-sGcSsGvfJ3Ic02F40EFcxC0VAKzVAqx4xG6I80ebIjqfuFe4nvWSU5nxnvy29KBjDU
	0xBIdaVrnRJUUUBqb4IE77IF4wAFF20E14v26r1j6r4UM7CY07I20VC2zVCF04k26cxKx2
	IYs7xG6rWj6s0DM7CIcVAFz4kK6r1Y6r17M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48v
	e4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_Ar0_tr1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI
	0_Cr0_Gr1UM28EF7xvwVC2z280aVAFwI0_Gr1j6F4UJwA2z4x0Y4vEx4A2jsIEc7CjxVAF
	wI0_Cr1j6rxdM2kKe7AKxVWUAVWUtwAS0I0E0xvYzxvE52x082IY62kv0487Mc804VCY07
	AIYIkI8VC2zVCFFI0UMc02F40EFcxC0VAKzVAqx4xG6I80ewAv7VC0I7IYx2IY67AKxVWr
	XVW3AwAv7VC2z280aVAFwI0_Cr0_Gr1UMcvjeVCFs4IE7xkEbVWUJVW8JwACjcxG0xvY0x
	0EwIxGrwCY1x0262kKe7AKxVWUtVW8ZwCF04k20xvY0x0EwIxGrwCFx2IqxVCFs4IE7xkE
	bVWUJVW8JwCFI7km07C267AKxVWUAVWUtwC20s026c02F40E14v26r1j6r18MI8I3I0E74
	80Y4vE14v26r106r1rMI8E67AF67kF1VAFwI0_GFv_WrylIxkGc2Ij64vIr41lIxAIcVC0
	I7IYx2IY67AKxVW7JVWDJwCI42IY6xIIjxv20xvEc7CjxVAFwI0_Cr0_Gr1UMIIF0xvE42
	xK8VAvwI8IcIk0rVWUJVWUCwCI42IY6I8E87Iv67AKxVWxJVW8Jr1lIxAIcVC2z280aVCY
	1x0267AKxVW8JVW8JrUvcSsGvfC2KfnxnUUI43ZEXa7IU0eOJUUUUUU==

Add new compatible for the Loongson-2K NAND controller used for
Loongson-2K0500 SoC.

Acked-by: "Rob Herring (Arm)" <robh@kernel.org>
Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
---
 .../bindings/mtd/loongson,ls1b-nand-controller.yaml         | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/mtd/loongson,ls1b-nand-controller.yaml b/Documentation/devicetree/bindings/mtd/loongson,ls1b-nand-controller.yaml
index a09e92e416c4..4ec2b5d1e89d 100644
--- a/Documentation/devicetree/bindings/mtd/loongson,ls1b-nand-controller.yaml
+++ b/Documentation/devicetree/bindings/mtd/loongson,ls1b-nand-controller.yaml
@@ -4,13 +4,14 @@
 $id: http://devicetree.org/schemas/mtd/loongson,ls1b-nand-controller.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Loongson-1 NAND Controller
+title: Loongson NAND Controller
 
 maintainers:
   - Keguang Zhang <keguang.zhang@gmail.com>
+  - Binbin Zhou <zhoubinbin@loongson.cn>
 
 description:
-  The Loongson-1 NAND controller abstracts all supported operations,
+  The Loongson NAND controller abstracts all supported operations,
   meaning it does not support low-level access to raw NAND flash chips.
   Moreover, the controller is paired with the DMA engine to perform
   READ and PROGRAM functions.
@@ -24,6 +25,7 @@ properties:
       - enum:
           - loongson,ls1b-nand-controller
           - loongson,ls1c-nand-controller
+          - loongson,ls2k0500-nand-controller
       - items:
           - enum:
               - loongson,ls1a-nand-controller
-- 
2.47.3



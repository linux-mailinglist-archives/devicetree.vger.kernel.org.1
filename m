Return-Path: <devicetree+bounces-207219-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5353FB2EE5A
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 08:39:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3D42E5C212E
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 06:39:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75A1C2D97A9;
	Thu, 21 Aug 2025 06:39:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.loongson.cn (mail.loongson.cn [114.242.206.163])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99B652C11E0
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 06:39:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=114.242.206.163
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755758391; cv=none; b=TZ5Jasc++2Ez/deDlgr90WGATkKh7sfa3fnymAVDMcXSixLCj+SzSBRTVWDDTGWKvl2RvU4WiBPSSlxMYuamQAyeNfD4L23y35FePTiRPpi+znl+cx4jXaAMtJdvJJWU7gJMRZAMBj+YqTcmOgCg7unKZcw2ADD4qav0NlO8Xz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755758391; c=relaxed/simple;
	bh=4WumTvrzGaUwx3QYoM0e0Cf4gLnsDnIUjkQRWqEekA0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=fV18J0JPc4RCAg3zx08D2N1qjrZkBGLMcAKYuu81+oHlDT31DgtGTxeXRoe2l3dg9skiidcB7lUX1bxeD940Q3wau7wiXyvJAbJ76QuC1J0J4g0mDN6i0dviys8jSRkdD1ZYrYefEC3FHyEZOykVk7izISfTnZ5TuHh36vVsaYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn; spf=pass smtp.mailfrom=loongson.cn; arc=none smtp.client-ip=114.242.206.163
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=loongson.cn
Received: from loongson.cn (unknown [223.64.69.45])
	by gateway (Coremail) with SMTP id _____8AxidEmv6Zo3k0BAA--.2405S3;
	Thu, 21 Aug 2025 14:39:34 +0800 (CST)
Received: from localhost.localdomain (unknown [223.64.69.45])
	by front1 (Coremail) with SMTP id qMiowJDxrcEhv6ZowvRcAA--.65049S2;
	Thu, 21 Aug 2025 14:39:32 +0800 (CST)
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
Subject: [PATCH v3 4/7] dt-bindings: mtd: loongson,ls1b-nand-controller: Document the Loongson-2K0500 NAND controller
Date: Thu, 21 Aug 2025 14:39:18 +0800
Message-ID: <ef8d5c91403cbe7e91ec63190159aa031ebd7dfe.1755757841.git.zhoubinbin@loongson.cn>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1755757841.git.zhoubinbin@loongson.cn>
References: <cover.1755757841.git.zhoubinbin@loongson.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:qMiowJDxrcEhv6ZowvRcAA--.65049S2
X-CM-SenderInfo: p2kr3uplqex0o6or00hjvr0hdfq/
X-Coremail-Antispam: 1Uk129KBj93XoW7Kr1ftr13XF4DJFyUKry3Awc_yoW8WF45pF
	ZxC3yxKF1IyF13Za90ka48Cr13ZF93Jw4DJanrJ347G3sxWw1YqryayFn5X3WUAr4IqFWU
	ZFyvga1rJ3WDAFbCm3ZEXasCq-sJn29KB7ZKAUJUUUU3529EdanIXcx71UUUUU7KY7ZEXa
	sCq-sGcSsGvfJ3Ic02F40EFcxC0VAKzVAqx4xG6I80ebIjqfuFe4nvWSU5nxnvy29KBjDU
	0xBIdaVrnRJUUUBFb4IE77IF4wAFF20E14v26r1j6r4UM7CY07I20VC2zVCF04k26cxKx2
	IYs7xG6rWj6s0DM7CIcVAFz4kK6r1Y6r17M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48v
	e4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_Ar0_tr1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI
	0_Cr0_Gr1UM28EF7xvwVC2z280aVAFwI0_GcCE3s1l84ACjcxK6I8E87Iv6xkF7I0E14v2
	6rxl6s0DM2kKe7AKxVWUAVWUtwAS0I0E0xvYzxvE52x082IY62kv0487Mc804VCY07AIYI
	kI8VC2zVCFFI0UMc02F40EFcxC0VAKzVAqx4xG6I80ewAv7VC0I7IYx2IY67AKxVWrXVW3
	AwAv7VC2z280aVAFwI0_Gr0_Cr1lOx8S6xCaFVCjc4AY6r1j6r4UM4x0Y48IcxkI7VAKI4
	8JMxkF7I0En4kS14v26r1q6r43MxAIw28IcxkI7VAKI48JMxC20s026xCaFVCjc4AY6r1j
	6r4UMxCIbckI1I0E14v26r126r1DMI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwV
	AFwI0_JrI_JrWlx4CE17CEb7AF67AKxVW8ZVWrXwCIc40Y0x0EwIxGrwCI42IY6xIIjxv2
	0xvE14v26F1j6w1UMIIF0xvE2Ix0cI8IcVCY1x0267AKxVWxJVW8Jr1lIxAIcVCF04k26c
	xKx2IYs7xG6r1j6r1xMIIF0xvEx4A2jsIE14v26r4j6F4UMIIF0xvEx4A2jsIEc7CjxVAF
	wI0_Gr0_Gr1UYxBIdaVFxhVjvjDU0xZFpf9x07jfHUhUUUUU=

Add new compatible for the Loongson-2K NAND controller used for
Loongson-2K0500 SoC.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
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



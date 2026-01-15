Return-Path: <devicetree+bounces-255356-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 37B63D227E6
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 07:09:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F2E2B304C90B
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 06:08:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A02732D97AA;
	Thu, 15 Jan 2026 06:08:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from cstnet.cn (smtp21.cstnet.cn [159.226.251.21])
	(using TLSv1.2 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 257922B9BA;
	Thu, 15 Jan 2026 06:08:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=159.226.251.21
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768457311; cv=none; b=CnRdAa0J4f0uzTAgNMEbLwoYW6oeC/U7I6ucmHyXRksaHZ4vLZuM7CPJDD2YiPZTxEdCj7ZVI4y3gqjQvZAOdE/R05X4fwbDfhWex2S6dapmCG0CluO3b5IPIX5VjeUtJSxoE3IVfzCZAvHqmUGqmozWbvQULzfQDlFCKYZEhIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768457311; c=relaxed/simple;
	bh=cFDluZ3i77HTiwwxapLj5ccEW8V6AGeFF8kB6ZcGHSw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=sKS1vamRVmQKKtKkzQkii5RwUnIKcX/KMNWoEwTQu786PWdEYhEOu+qzADyouJgIgX/Eq2RuOhAAft9HSNjgRuMqPF7YFNQAvDJHHmpKKNxCzck2f8DnP9kSAisigz04B4ZZq0ZBf7zXsTsIbGSl9+SssvAocXaLs5zWXvZIK7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=isrc.iscas.ac.cn; spf=pass smtp.mailfrom=isrc.iscas.ac.cn; arc=none smtp.client-ip=159.226.251.21
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=isrc.iscas.ac.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=isrc.iscas.ac.cn
Received: from duge-virtual-machine (unknown [223.160.207.69])
	by APP-01 (Coremail) with SMTP id qwCowABH7mlMhGhpXOHCBA--.37756S3;
	Thu, 15 Jan 2026 14:08:18 +0800 (CST)
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
Subject: [PATCH v3 1/2] dt-bindings: riscv: canaan: add 100ask K230 boards compatible strings
Date: Thu, 15 Jan 2026 14:08:00 +0800
Message-ID: <20260115060801.16819-2-jiayu.riscv@isrc.iscas.ac.cn>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260115060801.16819-1-jiayu.riscv@isrc.iscas.ac.cn>
References: <20260115060801.16819-1-jiayu.riscv@isrc.iscas.ac.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:qwCowABH7mlMhGhpXOHCBA--.37756S3
X-Coremail-Antispam: 1UD129KBjvdXoW7Gw1UuF1DJw1fKF1DZryrWFg_yoWDtrg_ua
	1xur1kWryUJF9YgFs0kFWIkFW7Aw4SyFykZr9rJ3Wvk343Z3yDZFWvk34Ykr43Cr4Uuwn3
	CFs5JrW3ursrCjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUIcSsGvfJTRUUUbk8FF20E14v26rWj6s0DM7CY07I20VC2zVCF04k26cxKx2IYs7xG
	6rWj6s0DM7CIcVAFz4kK6r1j6r18M28IrcIa0xkI8VA2jI8067AKxVWUGwA2048vs2IY02
	0Ec7CjxVAFwI0_Gr0_Xr1l8cAvFVAK0II2c7xJM28CjxkF64kEwVA0rcxSw2x7M28EF7xv
	wVC0I7IYx2IY67AKxVWUJVWUCwA2z4x0Y4vE2Ix0cI8IcVCY1x0267AKxVW8JVWxJwA2z4
	x0Y4vEx4A2jsIE14v26r1j6r4UM28EF7xvwVC2z280aVCY1x0267AKxVW8JVW8Jr1le2I2
	62IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E2Ix0cI8IcV
	AFwI0_Jr0_Jr4lYx0Ex4A2jsIE14v26r1j6r4UMcvjeVCFs4IE7xkEbVWUJVW8JwACjcxG
	0xvY0x0EwIxGrwACjI8F5VA0II8E6IAqYI8I648v4I1lFIxGxcIEc7CjxVA2Y2ka0xkIwI
	1lc7CjxVAaw2AFwI0_Jw0_GFyl42xK82IYc2Ij64vIr41l4I8I3I0E4IkC6x0Yz7v_Jr0_
	Gr1lx2IqxVAqx4xG67AKxVWUJVWUGwC20s026x8GjcxK67AKxVWUGVWUWwC2zVAF1VAY17
	CE14v26r1q6r43MIIYrxkI7VAKI48JMIIF0xvE2Ix0cI8IcVAFwI0_Jr0_JF4lIxAIcVC0
	I7IYx2IY6xkF7I0E14v26r4j6F4UMIIF0xvE42xK8VAvwI8IcIk0rVWUJVWUCwCI42IY6I
	8E87Iv67AKxVWUJVW8JwCI42IY6I8E87Iv6xkF7I0E14v26r4j6r4UJbIYCTnIWIevJa73
	UjIFyTuYvjfU8XdbUUUUU
X-CM-SenderInfo: 5mld534oul2uny6l223fol2u1dvotugofq/

K230 CANMV DSHANPI is a development board produced by 100ASK.

Add compatible string for the board and its SoM.

Signed-off-by: Jiayu Du <jiayu.riscv@isrc.iscas.ac.cn>
---

The hardware details are available here[1].

[1]: https://github.com/100askTeam/eLinuxAI-TrainingDocs/blob/master/docs/CanaanK230/part1/01-Introductionhardwareresources.md

 Documentation/devicetree/bindings/riscv/canaan.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/canaan.yaml b/Documentation/devicetree/bindings/riscv/canaan.yaml
index f9854ff43ac6..a4866c7cf053 100644
--- a/Documentation/devicetree/bindings/riscv/canaan.yaml
+++ b/Documentation/devicetree/bindings/riscv/canaan.yaml
@@ -48,6 +48,11 @@ properties:
               - canaan,k230-usip-lp3-evb
           - const: canaan,kendryte-k230
 
+      - items:
+          - const: 100ask,canmv-k230-dshanpi
+          - const: 100ask,canmv-k230-module-dshanpi
+          - const: canaan,kendryte-k230
+
 additionalProperties: true
 
 ...
-- 
2.52.0



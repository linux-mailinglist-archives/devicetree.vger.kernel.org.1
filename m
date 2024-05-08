Return-Path: <devicetree+bounces-65674-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 381268BF882
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2024 10:29:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E7EF628436C
	for <lists+devicetree@lfdr.de>; Wed,  8 May 2024 08:29:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3614B47A5C;
	Wed,  8 May 2024 08:29:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.loongson.cn (mail.loongson.cn [114.242.206.163])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 701374500B
	for <devicetree@vger.kernel.org>; Wed,  8 May 2024 08:29:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=114.242.206.163
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715156974; cv=none; b=uaWbY7RFxXo7Lq8klIQO4wCCrqY3wlOFy3dk+Gm36P7s8GOqqozFo2lzzD2f1EyzXqYoCMnpKwK3ZLhqb9H7RkHq+oeUtCsxBTZjFxD5xqfVJkkk/82Si8mihCH7bJpEt1J0iqxtMO/1jCIAJdqdw2Rje3gfrl0sjXSVa0Y859o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715156974; c=relaxed/simple;
	bh=mJ58di7Olnn/aB+9hZCVFnUh4FH+Wc/bVpHWcjicra4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=OwtV3T7cyZvrxlYhj2WSgzkgAXA1SCONpnS3YGuKt/ZGGo5P1gAItDCbto9OLuPLfCJp17oRNq4GjCEpK0BT8qC9SXI9Bx31t1fc1QzVcSEvpOgsOv4csImPu5OTKR4TMlpPK+bZ0Buziqqwp+YQAvc8q3BJlU1X5Rf4Db8eiTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn; spf=pass smtp.mailfrom=loongson.cn; arc=none smtp.client-ip=114.242.206.163
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=loongson.cn
Received: from loongson.cn (unknown [112.20.112.218])
	by gateway (Coremail) with SMTP id _____8BxeOnoNztmsUkJAA--.12603S3;
	Wed, 08 May 2024 16:29:28 +0800 (CST)
Received: from localhost.localdomain (unknown [112.20.112.218])
	by localhost.localdomain (Coremail) with SMTP id AQAAf8CxrlfmNztmvWUVAA--.36694S2;
	Wed, 08 May 2024 16:29:28 +0800 (CST)
From: Binbin Zhou <zhoubinbin@loongson.cn>
To: Binbin Zhou <zhoubb.aaron@gmail.com>,
	Huacai Chen <chenhuacai@loongson.cn>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Cc: Huacai Chen <chenhuacai@kernel.org>,
	loongson-kernel@lists.loongnix.cn,
	Xuerui Wang <kernel@xen0n.name>,
	loongarch@lists.linux.dev,
	Binbin Zhou <zhoubinbin@loongson.cn>
Subject: [PATCH v1 0/2] LoongArch: dts: Add more support device ndoes to Loongson-2K
Date: Wed,  8 May 2024 16:29:09 +0800
Message-ID: <cover.1715156107.git.zhoubinbin@loongson.cn>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:AQAAf8CxrlfmNztmvWUVAA--.36694S2
X-CM-SenderInfo: p2kr3uplqex0o6or00hjvr0hdfq/
X-Coremail-Antispam: 1Uk129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7KY7
	ZEXasCq-sGcSsGvfJ3Ic02F40EFcxC0VAKzVAqx4xG6I80ebIjqfuFe4nvWSU5nxnvy29K
	BjDU0xBIdaVrnRJUUUPjb4IE77IF4wAFF20E14v26r1j6r4UM7CY07I20VC2zVCF04k26c
	xKx2IYs7xG6rWj6s0DM7CIcVAFz4kK6r1Y6r17M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vE
	j48ve4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_JFI_Gr1l84ACjcxK6xIIjxv20xvEc7CjxV
	AFwI0_Gr0_Cr1l84ACjcxK6I8E87Iv67AKxVW8Jr0_Cr1UM28EF7xvwVC2z280aVCY1x02
	67AKxVW8Jr0_Cr1UM2AIxVAIcxkEcVAq07x20xvEncxIr21l57IF6xkI12xvs2x26I8E6x
	ACxx1l5I8CrVACY4xI64kE6c02F40Ex7xfMcIj6xIIjxv20xvE14v26r1Y6r17McIj6I8E
	87Iv67AKxVWUJVW8JwAm72CE4IkC6x0Yz7v_Jr0_Gr1lF7xvr2IYc2Ij64vIr41l42xK82
	IYc2Ij64vIr41l4c8EcI0En4kS14v26r1Y6r17MxAqzxv26xkF7I0En4kS14v26r126r1D
	MxC20s026xCaFVCjc4AY6r1j6r4UMxCIbckI1I0E14v26r1Y6r17MI8I3I0E5I8CrVAFwI
	0_Jr0_Jr4lx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CEb7AF67AKxVWUtVW8ZwCIc40Y
	0x0EwIxGrwCI42IY6xIIjxv20xvE14v26r1j6r1xMIIF0xvE2Ix0cI8IcVCY1x0267AKxV
	WUJVW8JwCI42IY6xAIw20EY4v20xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Jr0_Gr1l
	IxAIcVC2z280aVCY1x0267AKxVWUJVW8JbIYCTnIWIevJa73UjIFyTuYvjxU7_MaUUUUU

Hi all:

Now, more Loongson-2K related deviers are supported, this patchset add
these device nodes to dts files.

Thanks.

Binbin Zhou (2):
  LoongArch: dts: Add new supported device nodes to Loongson-2K0500
  LoongArch: dts: Add new supported device nodes to Loongson-2K2000

 .../boot/dts/loongson-2k0500-ref.dts          |  4 +
 arch/loongarch/boot/dts/loongson-2k0500.dtsi  | 81 ++++++++++++++++++-
 .../boot/dts/loongson-2k2000-ref.dts          |  4 +
 arch/loongarch/boot/dts/loongson-2k2000.dtsi  | 44 +++++++++-
 4 files changed, 126 insertions(+), 7 deletions(-)

-- 
2.43.0



Return-Path: <devicetree+bounces-65942-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C163B8C0B71
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 08:18:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6CD9F281100
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 06:18:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 373251494CF;
	Thu,  9 May 2024 06:18:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.loongson.cn (mail.loongson.cn [114.242.206.163])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A0E7C13C
	for <devicetree@vger.kernel.org>; Thu,  9 May 2024 06:18:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=114.242.206.163
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715235513; cv=none; b=N6kGfjgoXEe6KTNwTPQw+uNGbJnOR1HdX5J092GSj7i/d+9vLsCUWCSBr8FTuMxkUNYKeZDGls5xjJVj/hVTOfg4RaSMeN30fWBHhr+ljnS1TExiVQqeNcDC3Nb19qIvm6qnjKDEcnx+4BIUP7gSY9Hgi6wnJSRD9aaC2kudgU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715235513; c=relaxed/simple;
	bh=Wc3keCQKKvf7gPclFIQIJ/Qgzx6dXq1JeC9F3nNsYZw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=AZa9YQeIAZsEXe2yHssHfKwykkIa/otuuxjSbY7j11mYfhuiEzZnbBvYsWwLHGcHpr7DL2P0JJMEgrObCzJwTmGphAzsr02G6VQ7G6FMTg7b+OFjG7I9I9/Vds6YMcuooCie/P3zdK3htyccFlgc4l8hEXqr8p6A/hIoE0phPGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn; spf=pass smtp.mailfrom=loongson.cn; arc=none smtp.client-ip=114.242.206.163
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=loongson.cn
Received: from loongson.cn (unknown [112.20.112.218])
	by gateway (Coremail) with SMTP id _____8Bx+umuajxmotUJAA--.13644S3;
	Thu, 09 May 2024 14:18:22 +0800 (CST)
Received: from localhost.localdomain (unknown [112.20.112.218])
	by localhost.localdomain (Coremail) with SMTP id AQAAf8BxT1WqajxmycoWAA--.26766S2;
	Thu, 09 May 2024 14:18:19 +0800 (CST)
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
Subject: [PATCH v2 0/3] LoongArch: dts: Add more support device ndoes to Loongson-2K
Date: Thu,  9 May 2024 14:18:03 +0800
Message-ID: <cover.1715222938.git.zhoubinbin@loongson.cn>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:AQAAf8BxT1WqajxmycoWAA--.26766S2
X-CM-SenderInfo: p2kr3uplqex0o6or00hjvr0hdfq/
X-Coremail-Antispam: 1Uk129KBj9xXoW7XryDCr4UWry8Kw4rGr1kCrX_yoWkGwcEgF
	yfWFykGw18WFykJayqqryrJ39Ivr4j9a1Ykas2qa4fKa43tr13XF4kua9xZF15urW2qrs8
	JrW8Ga18Cr1agosvyTuYvTs0mTUanT9S1TB71UUUUUDqnTZGkaVYY2UrUUUUj1kv1TuYvT
	s0mT0YCTnIWjqI5I8CrVACY4xI64kE6c02F40Ex7xfYxn0WfASr-VFAUDa7-sFnT9fnUUI
	cSsGvfJTRUUUb7kYFVCjjxCrM7AC8VAFwI0_Jr0_Gr1l1xkIjI8I6I8E6xAIw20EY4v20x
	vaj40_Wr0E3s1l1IIY67AEw4v_JrI_Jryl8cAvFVAK0II2c7xJM28CjxkF64kEwVA0rcxS
	w2x7M28EF7xvwVC0I7IYx2IY67AKxVWUCVW8JwA2z4x0Y4vE2Ix0cI8IcVCY1x0267AKxV
	WUJVW8JwA2z4x0Y4vEx4A2jsIE14v26F4j6r4UJwA2z4x0Y4vEx4A2jsIEc7CjxVAFwI0_
	Gr1j6F4UJwAS0I0E0xvYzxvE52x082IY62kv0487Mc804VCY07AIYIkI8VC2zVCFFI0UMc
	02F40EFcxC0VAKzVAqx4xG6I80ewAv7VC0I7IYx2IY67AKxVWUXVWUAwAv7VC2z280aVAF
	wI0_Jr0_Gr1lOx8S6xCaFVCjc4AY6r1j6r4UM4x0Y48IcxkI7VAKI48JMxAIw28IcxkI7V
	AKI48JMxC20s026xCaFVCjc4AY6r1j6r4UMI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCj
	r7xvwVAFwI0_JrI_JrWlx4CE17CEb7AF67AKxVWUtVW8ZwCIc40Y0x0EwIxGrwCI42IY6x
	IIjxv20xvE14v26r1j6r1xMIIF0xvE2Ix0cI8IcVCY1x0267AKxVWUJVW8JwCI42IY6xAI
	w20EY4v20xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Jr0_Gr1lIxAIcVC2z280aVCY1x
	0267AKxVWUJVW8JbIYCTnIWIevJa73UjIFyTuYvjxU7XTmDUUUU

Hi all:

Now, more Loongson-2K related deviers are supported, this patchset add
these device nodes to dts files.

Additionally, we remove the "disable" state of the ls2k1000 clk node as
it was unnecessary.

Thanks.

-------
V2:
patch(1/3):
 - New patch. Follow Conor's comment, remove the "disable" state of the
   ls2k1000 clk node as it was unnecessary.
patch(2/3)(3/3):
 - Remove the "disable" state of the clk node as it was unnecessary;
 - Add cpu-alert trips.

Link to V1:
https://lore.kernel.org/all/cover.1715156107.git.zhoubinbin@loongson.cn/

Binbin Zhou (3):
  LoongArch: dts: Remove "disabled" state of clock controller node
  LoongArch: dts: Add new supported device nodes to Loongson-2K0500
  LoongArch: dts: Add new supported device nodes to Loongson-2K2000

 arch/loongarch/boot/dts/loongson-2k0500.dtsi  | 85 ++++++++++++++++++-
 .../boot/dts/loongson-2k1000-ref.dts          |  4 -
 arch/loongarch/boot/dts/loongson-2k1000.dtsi  |  1 -
 arch/loongarch/boot/dts/loongson-2k2000.dtsi  | 48 ++++++++++-
 4 files changed, 126 insertions(+), 12 deletions(-)

-- 
2.43.0



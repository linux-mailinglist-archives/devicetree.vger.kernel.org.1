Return-Path: <devicetree+bounces-174910-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0362AAAF43C
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 09:03:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C804C7AB017
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 07:01:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A47C21CC40;
	Thu,  8 May 2025 07:02:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.loongson.cn (mail.loongson.cn [114.242.206.163])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E455D1F561D
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 07:02:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=114.242.206.163
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746687774; cv=none; b=Fp5I9GWKBDxshtcIcSMcC3uMn+PQDSoYylL4uXZ47h2+XVA2N8fp1u8prl4Tfb55xkdBR7ZQ6ztqaveTyIXevj+JbWVYnXZ3HX/lC3qpNd+6MsM6VpOvxoN2J3dTwm/W5uaQhAJZSpuKSTb3YavRqamcUvDqJ4upKa3FR6/39Kk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746687774; c=relaxed/simple;
	bh=+gwb78Cp7gl7Y1OEcb9BQRdAgzU/g+1ryLbendjWPn8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=rYpPN0Rt6TDRIkPc72cPSVNxuVYcAocopmEgz9MS9RhGb0DvG+fzzd03G2oPmmMSHu0CXycuuC0/BybSRw1Um9h2dTQvwy/tA1va3eEmuaRzHYaSbTkf2oYc76GfWNnP9iN0BeETINeJHKHXtwPippQA4JsLUuUhh2ArVeXs8vQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn; spf=pass smtp.mailfrom=loongson.cn; arc=none smtp.client-ip=114.242.206.163
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=loongson.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=loongson.cn
Received: from loongson.cn (unknown [223.64.68.186])
	by gateway (Coremail) with SMTP id _____8CxLGsXVxxoVmXZAA--.29006S3;
	Thu, 08 May 2025 15:02:47 +0800 (CST)
Received: from localhost.localdomain (unknown [223.64.68.186])
	by front1 (Coremail) with SMTP id qMiowMBxLscWVxxo6nO8AA--.25269S2;
	Thu, 08 May 2025 15:02:46 +0800 (CST)
From: Binbin Zhou <zhoubinbin@loongson.cn>
To: Binbin Zhou <zhoubb.aaron@gmail.com>,
	Huacai Chen <chenhuacai@loongson.cn>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Huacai Chen <chenhuacai@kernel.org>,
	Xuerui Wang <kernel@xen0n.name>,
	loongarch@lists.linux.dev,
	devicetree@vger.kernel.org,
	Binbin Zhou <zhoubinbin@loongson.cn>
Subject: [PATCH v1 0/3] LoongArch: dts: Add PWM controller node support 
Date: Thu,  8 May 2025 15:02:33 +0800
Message-ID: <cover.1746684614.git.zhoubinbin@loongson.cn>
X-Mailer: git-send-email 2.47.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:qMiowMBxLscWVxxo6nO8AA--.25269S2
X-CM-SenderInfo: p2kr3uplqex0o6or00hjvr0hdfq/
X-Coremail-Antispam: 1Uk129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7KY7
	ZEXasCq-sGcSsGvfJ3Ic02F40EFcxC0VAKzVAqx4xG6I80ebIjqfuFe4nvWSU5nxnvy29K
	BjDU0xBIdaVrnRJUUUkjb4IE77IF4wAFF20E14v26r1j6r4UM7CY07I20VC2zVCF04k26c
	xKx2IYs7xG6rWj6s0DM7CIcVAFz4kK6r1Y6r17M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vE
	j48ve4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_Gr0_Xr1l84ACjcxK6xIIjxv20xvEc7CjxV
	AFwI0_Gr0_Cr1l84ACjcxK6I8E87Iv67AKxVW0oVCq3wA2z4x0Y4vEx4A2jsIEc7CjxVAF
	wI0_GcCE3s1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqjxCEc2xF0cIa020Ex4CE44I27w
	Aqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E2Ix0cI8IcVAFwI0_JrI_JrylYx0Ex4A2jsIE
	14v26r4j6F4UMcvjeVCFs4IE7xkEbVWUJVW8JwACjcxG0xvY0x0EwIxGrwCF04k20xvY0x
	0EwIxGrwCFx2IqxVCFs4IE7xkEbVWUJVW8JwC20s026c02F40E14v26r1j6r18MI8I3I0E
	7480Y4vE14v26r106r1rMI8E67AF67kF1VAFwI0_Jw0_GFylIxkGc2Ij64vIr41lIxAIcV
	C0I7IYx2IY67AKxVWUJVWUCwCI42IY6xIIjxv20xvEc7CjxVAFwI0_Jr0_Gr1lIxAIcVCF
	04k26cxKx2IYs7xG6r1j6r1xMIIF0xvEx4A2jsIE14v26r1j6r4UMIIF0xvEx4A2jsIEc7
	CjxVAFwI0_Gr0_Gr1UYxBIdaVFxhVjvjDU0xZFpf9x07jnUUUUUUUU=


Binbin Zhou (3):
  LoongArch: dts: Add PWM support to Loongson-2K0500
  LoongArch: dts: Add PWM support to Loongson-2K1000
  LoongArch: dts: Add PWM support to Loongson-2K2000

 arch/loongarch/boot/dts/loongson-2k0500.dtsi  | 160 ++++++++++++++++++
 .../boot/dts/loongson-2k1000-ref.dts          |  24 +++
 arch/loongarch/boot/dts/loongson-2k1000.dtsi  |  42 ++++-
 arch/loongarch/boot/dts/loongson-2k2000.dtsi  |  60 +++++++
 4 files changed, 285 insertions(+), 1 deletion(-)


base-commit: b56175973e17e67e3005837346ceb79cc282187a
-- 
2.47.1



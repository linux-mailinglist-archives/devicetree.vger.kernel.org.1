Return-Path: <devicetree+bounces-132304-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 584C29F66C3
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 14:14:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6AC1F188BFA4
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 13:13:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 481791F6667;
	Wed, 18 Dec 2024 13:10:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=epochal.quest header.i=@epochal.quest header.b="UvH2ytPN"
X-Original-To: devicetree@vger.kernel.org
Received: from thales.epochal.quest (thales.epochal.quest [51.222.15.28])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DE4A1F63E3;
	Wed, 18 Dec 2024 13:10:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=51.222.15.28
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734527408; cv=none; b=ZOARNH/LBQne1nNw0xJ3SpNUZeF7KrDGQ5NFc3xDkUwDt4NEGhvU6Ngp/xAf5xtLSwTB3Wq32Mf4CGnE1xuykmGPOvCYtdIdVwqxT0LO81ZfN+7WBYF88G3Gx20ZDHljxBHBNaizg4SHYrXLGV3rDe5ibSi0KLQfE/Y2+SUlC/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734527408; c=relaxed/simple;
	bh=Dq2nimBQQbcd6OFaZe7M6MOLGruvNOdRO+cLFAPPBVQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=F0FRSczyhwf93ePy/fdf/3PSWgXXCYoHXVfs1yMgVcOVU2s90pvWvG+Bc4QD02O9sBjpSRNHFURjmVUqjVo8EG9BM4pMbuXGSi6GXiBUwC2ttlMthjSslWDKcJviNHFW1uIGFPqDntLPt1prF6K0vBiWZHQxfSYE/PJt97N+uEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=epochal.quest; spf=pass smtp.mailfrom=epochal.quest; dkim=pass (2048-bit key) header.d=epochal.quest header.i=@epochal.quest header.b=UvH2ytPN; arc=none smtp.client-ip=51.222.15.28
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=epochal.quest
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=epochal.quest
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=epochal.quest;
	s=default; t=1734526898;
	bh=Dq2nimBQQbcd6OFaZe7M6MOLGruvNOdRO+cLFAPPBVQ=;
	h=From:Subject:Date:To:Cc:From;
	b=UvH2ytPN0rorxwdHbREfFhMaAr0RhtHGWVcSkObMWxTFjCTn+37KJMcXBiGo4Ws43
	 yDUnexAOcAaw5dOqU5Oj/N3OlQLesh1a1mquvWHaPvFk5Yqzm99R3pMBvhuj0b+AiP
	 e+T4tvgV/GvzIwBNIJmh5TSqzHBPIn/GLUkU70ugEa3M4XGM2JKRxgZ1f7P3wl3+gm
	 h+Yag7hVamWtG2h63l8wuGwgGg0CjQ+9JG8xD8lPP/83msd7Ynib8QMOht2S+1z0g3
	 iS2ALv00TKj0l877H1HeCF/AbxdySwrBzSeBAyCAPzji9TF3JPMnfZtxO52Rm5yQnb
	 QSUOluozy6GvA==
X-Virus-Scanned: by epochal.quest
From: Cody Eksal <masterr3c0rd@epochal.quest>
Subject: [PATCH v2 0/2] sunxi: Add A100 syscon nodes
Date: Wed, 18 Dec 2024 09:01:17 -0400
Message-Id: <20241218-a100-syscon-v2-0-dae60b9ce192@epochal.quest>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJ3HYmcC/1WNwQrCMBBEf6Xs2UiyxlQ8+R/SQ0y3NiBJzdZgK
 fl3Yz15GXgD82YFpuSJ4dyskCh79jFUwF0DbrThTsL3lQElaqXQCKukFLywi0G0B2VuZA2SRqi
 LKdHg35vt2lUePc8xLZs8q2/789T482QlpDgZZ46oB9R9e6Ep1vvH/vkinqErpXwA+ST5BqoAA
 AA=
X-Change-ID: 20241126-a100-syscon-7316bea62e42
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, Maxime Ripard <mripard@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Parthiban Nallathambi <parthiban@linumiz.com>, 
 Andre Przywara <andre.przywara@arm.com>, 
 Cody Eksal <masterr3c0rd@epochal.quest>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2

Hello! Here is a V2 of
https://msgid.link/20241202-a100-syscon-v1-0-86c6524f24d7@epochal.quest.
Only changes here are fixing missing newlines between child nodes and
rebasing on 6.13-rc3.

***

Here are some very small patches to add syscon nodes to the A100's
device tree. These had not been added yet, as they hadn't been needed up
to this point. However, Parthiban and I have been working on patch
series in parallel that require either the syscon or the SRAM nodes it
is responsible for; specifically my patches add support for the A100's
ethernet controller, while Parthiban has been working hard on bringing
up the Display Engine.

Thanks as always!
- Cody

Signed-off-by: Cody Eksal <masterr3c0rd@epochal.quest>
---
Changes in v2:
- Add missing empty newlines between syscon child nodes
- Rebase on v6.13-rc3
- Link to v1: https://lore.kernel.org/r/20241202-a100-syscon-v1-0-86c6524f24d7@epochal.quest

---
Cody Eksal (2):
      dt-bindings: sram: sunxi-sram: Add A100 compatible
      arm64: dts: allwinner: a100: Add syscon nodes

 .../sram/allwinner,sun4i-a10-system-control.yaml   |  4 ++-
 arch/arm64/boot/dts/allwinner/sun50i-a100.dtsi     | 33 ++++++++++++++++++++++
 2 files changed, 36 insertions(+), 1 deletion(-)
---
base-commit: 78d4f34e2115b517bcbfe7ec0d018bbbb6f9b0b8
change-id: 20241126-a100-syscon-7316bea62e42

Best regards,
-- 
Cody Eksal <masterr3c0rd@epochal.quest>



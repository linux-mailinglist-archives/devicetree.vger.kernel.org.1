Return-Path: <devicetree+bounces-252718-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D9649D0226F
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 11:37:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0CE6633FF730
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 09:59:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62C333A961C;
	Thu,  8 Jan 2026 09:58:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="D1FXVa++"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281B33A961D;
	Thu,  8 Jan 2026 09:58:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767866326; cv=none; b=oPNGKqSZFYM5G8KcDYL6Hk3H5ERk37FNe7x0AIn2OSLQy6lFc6YwTMowxXffPAH2krRH0EbXzXkErGasC6/IVCXkiN3G0XCwLm8pmNvarEzEV8vEfurklIhU1TSnVqrAFJkpENoVcdyHqO+lxhUr/2VkT51GRi0RW4ITQ3DIWfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767866326; c=relaxed/simple;
	bh=1HLus0gTh6HnY5z+TPOce04w/1dZcg2TITZXXvEJlVg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IVIDAmppeGQmdulzHevAqTfuKCVzQpvO4m5Xi/LrMvPsazqCBwJcZ4lR1zefpGKHEVOM3sDVSGUUBshBMEnbpHEZVScXnK8vI+TI+MAyTHTdNi3iaObTc3CCYYpzXmr6rukFa/7J5NtCAoYTSmDFXtEf/8lyWaD2v6ABff80oEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=D1FXVa++; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1767866316;
	bh=1HLus0gTh6HnY5z+TPOce04w/1dZcg2TITZXXvEJlVg=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=D1FXVa++Qs4BCQAij0CNaHgFbcCTZNl9Vc0FcUIJ9Nl0DLkY+LgT6We4i1cd+rVbk
	 wKV+FLM+EWFf1h3oFDjw5Xa2wj9M7p9SphujPZ1Rc+ukrLKCwX+3n7DjblSqhkbnUk
	 IBYbkT1ovSbsc7/CrFvpteMuw8SSmqvco0z9uFuN13qMYfBe8g8KwhJIIefwRXUYOo
	 hidffgXI8S0IW8tn6o+sE287/vb7pMi10So8rEg+xogb8pfP4bsYxRNLRtlFDxQ/vi
	 lDI1oyNXdLkcH+k5deXK28sTa+ScoHsiTh9/InnH1jKi8scxrZegWs8jp2HZTKKusU
	 hhlgjxj4j+N+g==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 5B95917E0181;
	Thu,  8 Jan 2026 10:58:36 +0100 (CET)
Message-ID: <a952746a-89f9-494e-bbb0-e4aed5c1cedc@collabora.com>
Date: Thu, 8 Jan 2026 10:58:36 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 0/5] Add support for Ezurio MediaTek platforms
To: Gary Bisson <bisson.gary@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Sean Wang <sean.wang@mediatek.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
References: <20251203-review-v5-0-b26d5512c6af@gmail.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20251203-review-v5-0-b26d5512c6af@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Il 03/12/25 22:20, Gary Bisson ha scritto:
> This series adds support for Ezurio MediaTek platforms called
> "Tungsten". It includes support for MT8370-based Tungsten 510 and
> MT8390-based Tungsten 700 SOMs.
> 

All patches applied to v6.19-next/dts64 after fixing a merge issue in Makefile.

Thanks!


> Changes in v2:
> - Use b4 to cc all maintainers properly
> - Squashed patches 2/3 together
> - Updated dts node names to be generic
> 
> Changes in v3:
> - Added per-commit changelog
> - Added missing Acked-by on 1st patch
> - Link to v2: https://lore.kernel.org/r/20251201-review-v2-0-dc2df44eec7e@gmail.com
> 
> Changes in v4:
> - Fixed remaining DTB warnings
> - Link to v3: https://lore.kernel.org/r/20251201-review-v3-0-07f9af7341fd@gmail.com
> 
> Changes in v5:
> - Fixed DTB per Angelo's comments
> - Added a MT8188 patch for easier mmc eint interrupt change
> - Link to v4: https://lore.kernel.org/r/20251202-review-v4-0-93f5cd2a0d4a@gmail.com
> 
> Regards,
> 
> Gary Bisson (5):
>    dt-bindings: vendor-prefixes: Add Ezurio LLC
>    dt-bindings: arm: mediatek: Add Ezurio Tungsten entries
>    arm64: dts: mediatek: mt8188: switch mmc nodes to interrupts-extended
>    arm64: dts: mediatek: add device tree for Tungsten 510 board
>    arm64: dts: mediatek: add device tree for Tungsten 700 board
> 
>   .../devicetree/bindings/arm/mediatek.yaml     |    2 +
>   .../devicetree/bindings/vendor-prefixes.yaml  |    2 +
>   arch/arm64/boot/dts/mediatek/Makefile         |    2 +
>   arch/arm64/boot/dts/mediatek/mt8188.dtsi      |    6 +-
>   .../dts/mediatek/mt8370-tungsten-smarc.dts    |   14 +
>   .../dts/mediatek/mt8390-tungsten-smarc.dts    |   22 +
>   .../dts/mediatek/mt8390-tungsten-smarc.dtsi   | 1489 +++++++++++++++++
>   7 files changed, 1534 insertions(+), 3 deletions(-)
>   create mode 100644 arch/arm64/boot/dts/mediatek/mt8370-tungsten-smarc.dts
>   create mode 100644 arch/arm64/boot/dts/mediatek/mt8390-tungsten-smarc.dts
>   create mode 100644 arch/arm64/boot/dts/mediatek/mt8390-tungsten-smarc.dtsi
> 
> --
> 2.43.0
> 
> ---
> To: Rob Herring <robh@kernel.org>
> To: Krzysztof Kozlowski <krzk+dt@kernel.org>
> To: Conor Dooley <conor+dt@kernel.org>
> To: Matthias Brugger <matthias.bgg@gmail.com>
> To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> To: Sean Wang <sean.wang@mediatek.com>
> Cc: devicetree@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-mediatek@lists.infradead.org
> 
> ---
> Gary Bisson (5):
>        dt-bindings: vendor-prefixes: Add Ezurio LLC
>        dt-bindings: arm: mediatek: Add Ezurio Tungsten entries
>        arm64: dts: mediatek: mt8188: switch mmc nodes to interrupts-extended
>        arm64: dts: mediatek: add device tree for Tungsten 510 board
>        arm64: dts: mediatek: add device tree for Tungsten 700 board
> 
>   .../devicetree/bindings/arm/mediatek.yaml          |    2 +
>   .../devicetree/bindings/vendor-prefixes.yaml       |    2 +
>   arch/arm64/boot/dts/mediatek/Makefile              |    2 +
>   arch/arm64/boot/dts/mediatek/mt8188.dtsi           |    6 +-
>   .../boot/dts/mediatek/mt8370-tungsten-smarc.dts    |   14 +
>   .../boot/dts/mediatek/mt8390-tungsten-smarc.dts    |   22 +
>   .../boot/dts/mediatek/mt8390-tungsten-smarc.dtsi   | 1489 ++++++++++++++++++++
>   7 files changed, 1534 insertions(+), 3 deletions(-)
> ---
> base-commit: 7d0a66e4bb9081d75c82ec4957c50034cb0ea449
> change-id: 20251201-review-750072579991
> 
> Best regards,




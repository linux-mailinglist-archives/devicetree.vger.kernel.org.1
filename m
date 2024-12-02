Return-Path: <devicetree+bounces-125891-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CB2CE9DF9DA
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 05:24:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8E5DB1629BC
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 04:24:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DBB21DF240;
	Mon,  2 Dec 2024 04:24:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="mgH1bsQC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD4B017C2
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 04:24:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733113491; cv=none; b=CYyIIhH3opC1pRlse2CJK8BUxODLCCNpyahlZ61n/t04g1K7eWm1GChwVkI+zCevt07dI7S56nVtiaYODC60y1IBhQXvFXkgud6SQ54F0IdbCrnpigukH10kSGFhXfnaDm0cy0Diipr1jRuAR06B0hTIfgcaN8uHHtmfClUtuZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733113491; c=relaxed/simple;
	bh=9BePlhVh1m9blV8z0hlxeXthOqOD+wGWyUCUxDq+MQY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nU/XM8vPpqkUeZj//ukVRNpBJuhLPjyouGwUYZRIAcNGcMJOz6sfuwE6/kfuEKgkb3JOYIPsGDzUhyshntCBOjO3tHFKyOaWl0jGkjWCNBVEtKQ3XZMAOPSTvcLw89J0s24VZCnUKUnnR2qEJLlhH+8F3pGSz2P3pVsoEdcNGj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=mgH1bsQC; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-53de579f775so5010142e87.2
        for <devicetree@vger.kernel.org>; Sun, 01 Dec 2024 20:24:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1733113488; x=1733718288; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5jem2dHb0CIqQfqKZWUZqxzpx7Oxum1MlxW1zvUuUsw=;
        b=mgH1bsQCodit3ixwsTKWdBu/YQVoY1AcxL1GR0u/KTMpvViBMW+GTtSmCBNU9LHez6
         Zuu9/2KrMnG/8XIYC8VEZwYxQxj7wHyTzX2nM9bCk1COr1ASzpI3t+vwykyAcjVDnTF0
         AO5qdQg+oMJnSQbBbR0rz4FUCmcExD654YNYo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733113488; x=1733718288;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5jem2dHb0CIqQfqKZWUZqxzpx7Oxum1MlxW1zvUuUsw=;
        b=roFZURh5jAxZWBCm3Bd9mGRntvqhCLvgPK08EzPUwIFmzGwjkfBg3Uo9VHvsVsEDit
         Xdclq0wZIY6UG09LTKgCaOxt1hSgdrc8of3LJbPMYsLV33tL+AlAMuYS0jZMq6vlnUCy
         9dmhh9PKW/knowkNkPuFnfSiZ6JHsh+Vv44+l5kBTwGcWopdKcF9jAPvdCA4CdUgi8dW
         xKPzMJXq1dgxyN9E6NABhRAYiJdwktoWBYJ50kWfv01ZKd41ojOLt2zar551NcW8faR3
         /fMSH4/+1jPCvh5VjOF3/qef/4eo/WIoyghbdref0kvBTPp7KMxLkqdWY8KaDyrxsZyn
         phaw==
X-Forwarded-Encrypted: i=1; AJvYcCXqVVs6ZFYZon3/u6mkE4VZkUPBAduUI1vJ4GpC+b3MBz4qKpAu2yfMvk1G9v0deoeGTOG8K5vdb5fQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4gHspocfbxNzFRxOAqtT1mzlt9R/my7w4xmlG164CgChaxksm
	wYogRE2kQKHAIMbH5c1TPXMMA0lPcZ7XOM1XvaqxHzShLWH5rIjCY5aMBEUgL+T/TBrSz2aBpAR
	y1wRKmBsdhqqzOeKu0jYaKNvzs3RrATRj/MlH
X-Gm-Gg: ASbGncsEDmdt/QIDVA9WqjvUOhyXW6+HNBjpadDe9JlfqBZ0Acb9Mgtq0axDvbuUuDu
	KjWS0AZ8gz8oD5uP1Ygcp5rzS4H0bRSwV9WAFTiyv0FtNJHVeic6103gXwJo=
X-Google-Smtp-Source: AGHT+IHt/vITEDYHnbNLIeuL8UfGCtEad48V6Gq5+hXkXt9A/7GYxhY5NyWdbJAiTmoRwPFhqaSLnctzzSQH8pUcJcs=
X-Received: by 2002:ac2:42d1:0:b0:53d:f09e:9a1d with SMTP id
 2adb3069b0e04-53df09e9c34mr11711959e87.31.1733113487710; Sun, 01 Dec 2024
 20:24:47 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241001113052.3124869-1-fshao@chromium.org>
In-Reply-To: <20241001113052.3124869-1-fshao@chromium.org>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 2 Dec 2024 12:24:36 +0800
Message-ID: <CAGXv+5E4=dKkUo73x5vCMHawcr9AUd71LyLmDbdyOdJZv0ZBaQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/8] MT8188 DT and binding fixes
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Fei Shao <fshao@chromium.org>, Andrew-CT Chen <andrew-ct.chen@mediatek.com>, 
	Bin Liu <bin.liu@mediatek.com>, Bjorn Helgaas <bhelgaas@google.com>, 
	Conor Dooley <conor+dt@kernel.org>, Fabien Parent <fparent@baylibre.com>, 
	Jianjun Wang <jianjun.wang@mediatek.com>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Lorenzo Bianconi <lorenzo@kernel.org>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	MandyJH Liu <mandyjh.liu@mediatek.com>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Rob Herring <robh@kernel.org>, Ryder Lee <ryder.lee@mediatek.com>, 
	Tiffany Lin <tiffany.lin@mediatek.com>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Xia Jiang <xia.jiang@mediatek.com>, Yunfei Dong <yunfei.dong@mediatek.com>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
	linux-mediatek@lists.infradead.org, linux-pci@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Oct 1, 2024 at 7:31=E2=80=AFPM Fei Shao <fshao@chromium.org> wrote:
>
> Hi,
>
> This series is split from a previous series[*] to focus on few fixes and
> improvements around MediaTek MT8188 device tree and associated bindings,
> and addressed comments and carried tags from the previous series.
>
> [*]: https://lore.kernel.org/all/20240909111535.528624-1-fshao@chromium.o=
rg/
> [v1]: https://lore.kernel.org/all/20240925110044.3678055-1-fshao@chromium=
.org/
>
> Regards,
> Fei
>
> Changes in v2:
> - new patch to MediaTek jpeg and vcodec bindings
> - new patch to move MT8188 SPI NOR cell properties
> - revise commit message of vdec power domain changes
>
> Fei Shao (8):

>   dt-bindings: power: mediatek: Add another nested power-domain layer

This one ^

>   dt-bindings: PCI: mediatek-gen3: Allow exact number of clocks only

>   dt-bindings: media: mediatek,jpeg: Relax IOMMU max item count
>   dt-bindings: media: mediatek,vcodec: Revise description

and these two ^ have not been picked up, and now v6.13-rc1 has DT
validation errors for MT8188:

/ssd1/wenst/linux/mtk/arch/arm64/boot/dts/mediatek/mt8188-evb.dtb:
syscon@10006000:
power-controller:power-domain@15:power-domain@16:power-domain@29:power-doma=
in@30:
Unevaluated properties are not allowed ('power-domain@31',
'power-domain@32' were unexpected)
    from schema $id:
http://devicetree.org/schemas/mfd/mediatek,mt8195-scpsys.yaml#
/ssd1/wenst/linux/mtk/arch/arm64/boot/dts/mediatek/mt8188-evb.dtb:
power-controller:
power-domain@15:power-domain@16:power-domain@29:power-domain@30:
Unevaluated properties are not allowed ('power-domain@31',
'power-domain@32' were unexpected)
    from schema $id:
http://devicetree.org/schemas/power/mediatek,power-controller.yaml#

/ssd1/wenst/linux/mtk/arch/arm64/boot/dts/mediatek/mt8188-evb.dtb:
jpeg-decoder@1a040000: iommus: [[101, 685], [101, 686], [101, 690],
[101, 691], [101, 692], [101, 693]] is too long
    from schema $id:
http://devicetree.org/schemas/media/mediatek-jpeg-decoder.yaml#


Is there any way we can get them into v6.13 as well?

ChenYu

>   arm64: dts: mediatek: mt8188: Add missing dma-ranges to soc node
>   arm64: dts: mediatek: mt8188: Update vppsys node names to syscon
>   arm64: dts: mediatek: mt8188: Move vdec1 power domain under vdec0
>   arm64: dts: mediatek: mt8188: Move SPI NOR *-cells properties
>
>  .../media/mediatek,vcodec-subdev-decoder.yaml | 100 +++++++++++-------
>  .../bindings/media/mediatek-jpeg-decoder.yaml |   3 +-
>  .../bindings/media/mediatek-jpeg-encoder.yaml |   2 +-
>  .../bindings/pci/mediatek-pcie-gen3.yaml      |   5 +-
>  .../power/mediatek,power-controller.yaml      |   4 +
>  arch/arm64/boot/dts/mediatek/mt8188-evb.dts   |   2 -
>  arch/arm64/boot/dts/mediatek/mt8188.dtsi      |  33 +++---
>  7 files changed, 88 insertions(+), 61 deletions(-)
>
> --
> 2.46.1.824.gd892dcdcdd-goog
>
>


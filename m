Return-Path: <devicetree+bounces-70206-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B0F358D2D60
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 08:35:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 160011F24D9E
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 06:35:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D58D15D5B4;
	Wed, 29 May 2024 06:35:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="BSh40Qo8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7309315CD71
	for <devicetree@vger.kernel.org>; Wed, 29 May 2024 06:35:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716964510; cv=none; b=KszpRrscLi7vztBsxR5rSlJB6+89NkUoYPzfTn6GP0g99NRmjWxDY41xNcwysq9mc0HK+Umi/CFDjauVMAwlYD6k7uNZRRjpK9zQHqdFEbMrNIKBchvnDlIvab0nEmySmQ5M2h2Z4wCLEESEbDtj4FLtlliEedlnyWvO6nwRMTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716964510; c=relaxed/simple;
	bh=eMBPJ6AiyAGmZ0BILLGGNqaoWBJwnBhYtnVO50Esw08=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VHfj7Pl3pPcEH2Uw+LZLkAknn4unuT1zJ5h5uLzzCSPTx7y0UJNAb0inlTeaaFP4kRXzwUS6uJCn/nFCuKrBsaEj/eYiaP4wfNUJZKN1NAlT8C0eNhO0IxOeahfGU7I5jsAcIoaKCQpmK9p/yEuGuDZuS4RVZwtsXFw9L0SoviY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=BSh40Qo8; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2e95a1d5ee2so31194321fa.0
        for <devicetree@vger.kernel.org>; Tue, 28 May 2024 23:35:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1716964506; x=1717569306; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=REcXFj1jvmxST3/eKnOjNwhd4vCy4lJvRfHqJd6aeOY=;
        b=BSh40Qo8MowxfZDEv2udrszIIc57GaXMNV/tx13uvFuceoBG+jX205EhYwuqmYNKbc
         iDN+7OPmQOrmN0VNhOnIjjCxy6iK7qxZBUwAnwXdV2Fuc/qoAVf+SHBZMIz/e3JpVCOD
         n1U222PVH1XPNwgLVG9Y/1I9VlbP9Hvt1H0/8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716964506; x=1717569306;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=REcXFj1jvmxST3/eKnOjNwhd4vCy4lJvRfHqJd6aeOY=;
        b=nju7go4PQGhu8D7KB5UXwI/McU2g/RVLjHAqDmwbCytz1XueEgBd6WxWxrq6FSwqVr
         Ult/rDnq2gfR0GD+Cf5JOoTA7lRFrcmJKCoCNtI7zL2OM3UagxYWJoWqR6CCciSQLHpl
         BNwr16bhQlgG68Z7pC6qMcJU/3btmFdrtVieukTwpPaSeFTfZNLzEX+N/j7Wx0WJWhNj
         NvaVy3qakBqXxH2BRs93SrYt/ysYYZ/s4t/25qm0vseBRAPWXl/UsKEGrL2Dva1jMCtj
         sHRHCszwY4s09tBs1BYHbLYC7aQ5c2Y5Jd5ME44hEzdi837D52J2iiljgh+YZmttr6vB
         r6dg==
X-Forwarded-Encrypted: i=1; AJvYcCXQUxdgrSB+7ZMu2rOBlwZ5aOwMelUrrOvEzTaQuJVgGOqEpGPP6KuYVMbPG7yxtd6wD5c1qsmayYUj8uRmcLe/FEDfilFIb/9V/w==
X-Gm-Message-State: AOJu0Yzo0tc+FyXusvRqtAeKJ5boPIWcsnzDkFhnGEf62ws7ESIP6040
	2FyJ+vm9KpXuBKG/d4KhamHRCF4GkTBmSAgltCDCULNUgBVoejIXkgqBPbPOxTgHH1Ad1E7MwiB
	Hl7urjF3S/iKKUQgshygpX/WsxPnj1JTUWHR2
X-Google-Smtp-Source: AGHT+IHTNNEamwsxVCesbMDxuW/9Vtif5wDyv5vCIh2MQ47+8CNAg2+CXaNaCRrYs3jzJWGhnBhJJu0Kts+lF9cxTRc=
X-Received: by 2002:ac2:454e:0:b0:521:92f6:3d34 with SMTP id
 2adb3069b0e04-5296594cf46mr10050393e87.22.1716964506432; Tue, 28 May 2024
 23:35:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240527093908.97574-1-angelogioacchino.delregno@collabora.com> <20240527093908.97574-6-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20240527093908.97574-6-angelogioacchino.delregno@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Wed, 29 May 2024 14:34:54 +0800
Message-ID: <CAGXv+5EbYBLt84Gx0mhTt9SqH8iMW87Y=_q=R2sHmJ4fygUQnQ@mail.gmail.com>
Subject: Re: [PATCH 5/5] arm64: dts: mediatek: mt8188: Add support for Mali
 GPU on Panfrost
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-mediatek@lists.infradead.org, lee@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, matthias.bgg@gmail.com, 
	mandyjh.liu@mediatek.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	kernel@collabora.com, jpanis@baylibre.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, May 27, 2024 at 5:40=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Add the necessary OPP table for the GPU and also add a GPU node
> to enable support for the Valhall-JM G57 MC3 found on this SoC,
> using the Panfrost driver.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>
> ---
>  arch/arm64/boot/dts/mediatek/mt8188.dtsi | 123 +++++++++++++++++++++++
>  1 file changed, 123 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8188.dtsi b/arch/arm64/boot/d=
ts/mediatek/mt8188.dtsi
> index 0bca6c9f15fe..29d012d28edb 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8188.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
> @@ -294,6 +294,112 @@ clk32k: oscillator-32k {
>                 clock-output-names =3D "clk32k";
>         };
>
> +       gpu_opp_table: opp-table-gpu {
> +               compatible =3D "operating-points-v2";
> +               opp-shared;
> +
> +               opp-390000000 {
> +                       opp-hz =3D /bits/ 64 <390000000>;
> +                       opp-microvolt =3D <575000>;
> +                       opp-supported-hw =3D <0xff>;
> +               };
> +               opp-431000000 {
> +                       opp-hz =3D /bits/ 64 <431000000>;
> +                       opp-microvolt =3D <587500>;
> +                       opp-supported-hw =3D <0xff>;
> +               };
> +               opp-473000000 {
> +                       opp-hz =3D /bits/ 64 <473000000>;
> +                       opp-microvolt =3D <600000>;
> +                       opp-supported-hw =3D <0xff>;
> +               };
> +               opp-515000000 {
> +                       opp-hz =3D /bits/ 64 <515000000>;
> +                       opp-microvolt =3D <612500>;
> +                       opp-supported-hw =3D <0xff>;
> +               };
> +               opp-556000000 {
> +                       opp-hz =3D /bits/ 64 <556000000>;
> +                       opp-microvolt =3D <625000>;
> +                       opp-supported-hw =3D <0xff>;
> +               };
> +               opp-598000000 {
> +                       opp-hz =3D /bits/ 64 <598000000>;
> +                       opp-microvolt =3D <637500>;
> +                       opp-supported-hw =3D <0xff>;
> +               };
> +               opp-640000000 {
> +                       opp-hz =3D /bits/ 64 <640000000>;
> +                       opp-microvolt =3D <650000>;
> +                       opp-supported-hw =3D <0xff>;
> +               };
> +               opp-670000000 {
> +                       opp-hz =3D /bits/ 64 <670000000>;
> +                       opp-microvolt =3D <662500>;
> +                       opp-supported-hw =3D <0xff>;
> +               };
> +               opp-700000000 {
> +                       opp-hz =3D /bits/ 64 <700000000>;
> +                       opp-microvolt =3D <675000>;
> +                       opp-supported-hw =3D <0xff>;
> +               };
> +               opp-730000000 {
> +                       opp-hz =3D /bits/ 64 <730000000>;
> +                       opp-microvolt =3D <687500>;
> +                       opp-supported-hw =3D <0xff>;
> +               };
> +               opp-760000000 {
> +                       opp-hz =3D /bits/ 64 <760000000>;
> +                       opp-microvolt =3D <700000>;
> +                       opp-supported-hw =3D <0xff>;
> +               };
> +               opp-790000000 {
> +                       opp-hz =3D /bits/ 64 <790000000>;
> +                       opp-microvolt =3D <712500>;
> +                       opp-supported-hw =3D <0xff>;
> +               };
> +               opp-835000000 {
> +                       opp-hz =3D /bits/ 64 <835000000>;
> +                       opp-microvolt =3D <731250>;
> +                       opp-supported-hw =3D <0xff>;
> +               };
> +               opp-880000000 {
> +                       opp-hz =3D /bits/ 64 <880000000>;
> +                       opp-microvolt =3D <750000>;
> +                       opp-supported-hw =3D <0xff>;
> +               };
> +               opp-915000000 {
> +                       opp-hz =3D /bits/ 64 <915000000>;
> +                       opp-microvolt =3D <775000>;
> +                       opp-supported-hw =3D <0x8f>;
> +               };
> +               opp-915000000-5 {
> +                       opp-hz =3D /bits/ 64 <915000000>;
> +                       opp-microvolt =3D <762500>;
> +                       opp-supported-hw =3D <0x30>;
> +               };
> +               opp-915000000-6 {
> +                       opp-hz =3D /bits/ 64 <915000000>;
> +                       opp-microvolt =3D <750000>;
> +                       opp-supported-hw =3D <0x70>;
> +               };
> +               opp-950000000 {
> +                       opp-hz =3D /bits/ 64 <950000000>;
> +                       opp-microvolt =3D <800000>;
> +                       opp-supported-hw =3D <0x8f>;
> +               };
> +               opp-950000000-5 {
> +                       opp-hz =3D /bits/ 64 <950000000>;
> +                       opp-microvolt =3D <775000>;
> +                       opp-supported-hw =3D <0x30>;
> +               };
> +               opp-950000000-6 {
> +                       opp-hz =3D /bits/ 64 <950000000>;
> +                       opp-microvolt =3D <750000>;
> +                       opp-supported-hw =3D <0x70>;
> +               };
> +       };
> +
>         pmu-a55 {
>                 compatible =3D "arm,cortex-a55-pmu";
>                 interrupt-parent =3D <&gic>;
> @@ -1167,6 +1273,23 @@ imp_iic_wrap_en: clock-controller@11ec2000 {
>                         #clock-cells =3D <1>;
>                 };
>
> +               gpu: gpu@13000000 {
> +                       compatible =3D "mediatek,mt8188-mali", "arm,mali-=
valhall-jm";
> +                       reg =3D <0 0x13000000 0 0x4000>;
> +
> +                       clocks =3D <&mfgcfg CLK_MFGCFG_BG3D>;
> +                       interrupts =3D <GIC_SPI 383 IRQ_TYPE_LEVEL_HIGH 0=
>,
> +                                    <GIC_SPI 382 IRQ_TYPE_LEVEL_HIGH 0>,
> +                                    <GIC_SPI 381 IRQ_TYPE_LEVEL_HIGH 0>;
> +                       interrupt-names =3D "job", "mmu", "gpu";
> +                       operating-points-v2 =3D <&gpu_opp_table>;
> +                       power-domains =3D <&spm MT8188_POWER_DOMAIN_MFG2>=
,
> +                                       <&spm MT8188_POWER_DOMAIN_MFG3>,
> +                                       <&spm MT8188_POWER_DOMAIN_MFG4>;
> +                       power-domain-names =3D "core0", "core1", "core2";
> +                       status =3D "disabled";
> +               };
> +

This block no longer applies cleanly on the MTK tree because of
"arm64: dts: mediatek: mt8188: add lvts definitions" being applied.

ChenYu

>                 mfgcfg: clock-controller@13fbf000 {
>                         compatible =3D "mediatek,mt8188-mfgcfg";
>                         reg =3D <0 0x13fbf000 0 0x1000>;
> --
> 2.45.1
>
>


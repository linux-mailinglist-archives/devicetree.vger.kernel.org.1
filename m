Return-Path: <devicetree+bounces-162544-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D655A78B26
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 11:35:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9C23C18935CC
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 09:35:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77B4B233D92;
	Wed,  2 Apr 2025 09:35:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="kEIJWqZj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0C891F3FC6
	for <devicetree@vger.kernel.org>; Wed,  2 Apr 2025 09:35:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743586513; cv=none; b=bgv3K8m5mKmBYaSjlBRqW1wbsI0p5feDxspkf8o7bNCtF6+kuwgASzvAH7l2UMNHb9w5Az0MfxmfZ9oQJwzLzX+eAQPkZ7+FAWoVfGva4pccG+5xomG3wjW+BLEtCvlUIbmDIsf9NG4MQdpnQCQQjMnHp4qY8AVP5mAGQRXNg/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743586513; c=relaxed/simple;
	bh=xz2QsNIt+Ztwq87lCfk7uvdsZ/Qk6EAegVkCzpv+338=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=T3LUX1eYPg4fO2i6O8Zbw+D0dr6jZ2KQviUUoJQ8NaMvnAJT9yAqnPiI+ElFe581zMz+ecPpxW7CtuMVMsS4E/8jc2UvnFZM0fn3Uaj1bvCgQXYhs9KuTZbIXW9/LtZFEtFx6YvHjlqAAQASxjDValmP9ZLtqkN/FENBfXDbbSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=kEIJWqZj; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-54b166fa41bso3855048e87.0
        for <devicetree@vger.kernel.org>; Wed, 02 Apr 2025 02:35:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1743586510; x=1744191310; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NvqFvLihDh/0pOLv9eRfMmIbmTTMjctegUodYgsIBs0=;
        b=kEIJWqZjebQ+b+/qdVU5HIHyEMIMmhUoVIJpNDcCG63R4wq+TOMAHSnO4Lotcn+orD
         SIfWdUPsis/80vEuhIPpdR8siXVyeR2li5ZNsBM78qBxdOj5RIH0nEU05zNzzRfPTEMD
         SBfoX9vtVVtO+YVR5pzzdZ3TxI+a5+0NZMzAM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743586510; x=1744191310;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NvqFvLihDh/0pOLv9eRfMmIbmTTMjctegUodYgsIBs0=;
        b=pPbPvKviIYt4jVAMccYl3xwPnuKjbGgtMVVFVc/EFok9kdgmj/LkglZ3olm1F/UwSX
         5DePmgL9QPRTWik2JzJ8+oISBUmlo9/BaSa8lm7fddKRYYLjuFfhX/UQ0bA1jVEJLjLD
         6iH90eZKKMAcAP7yU1/wi197vPi1KLmMfrHLo7w4gAdis9cmEVitbcRbg8RwoPUYgwxr
         IA2i4HDZ5J+8wRFA8uFCodFIQWu0bV0HbtIqKWFxrpRc3xWTzl7alPLCAITzGoNosW67
         9iiavcf1yU6dLT0yb+Kvjx3jiJCU2k7ov0gX+5ievFD6qlxLZ/nmBpDobfuTqQtP0wPT
         GJOA==
X-Forwarded-Encrypted: i=1; AJvYcCV6IkzhMbuFgrQ6DzgUAz9J+20AzmhDRKuwKCwObqqi/YiIj29YNtBHZtZ3VEhSTl+awHwYCGSn4wlM@vger.kernel.org
X-Gm-Message-State: AOJu0YyoLq0LpCfenwobkLGzEatma9kKyaHLjyuppr+YiUXIHZqR52PE
	8j0T6sNMFLA9JoEB10JEHI0lxc9Rbis9i6lo0e1p8gsYqGJHfkUQZPwuTKKEfd5dxX13Z7eS/NT
	24PFK2tlCGoy+ZrXUy4MCsFMOe0WRoVwqJf3V
X-Gm-Gg: ASbGnctYla8/Ptqt3gKmtyOv6qiPd6sgA7Ifne+ejki+zxTqKgUkRE2EDxvIAFDSvgR
	2bBVIFrzsegeAPGNJb/fgqNCCkGK9/ewDsRPWoD1kMyJieDgrcShfJmiAJGdcJQBZwQ0RBCN9m7
	6tfpjaZmID2I9LgaWyuuNE+dhlMFRZszyRlBuH2rg4bHqdfg15144x
X-Google-Smtp-Source: AGHT+IHolYjToDJLO0MSTMBrUHXLrPk3zfgJ0HVwalaG7YqgYjm+NUtBLWq6MDeTZX2/PLh7y+9Yuwp9U64qQgsq58c=
X-Received: by 2002:a05:6512:3ca4:b0:54a:fa5a:e9b3 with SMTP id
 2adb3069b0e04-54b111401fdmr5382707e87.52.1743586509850; Wed, 02 Apr 2025
 02:35:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250402090615.25871-1-angelogioacchino.delregno@collabora.com> <20250402090615.25871-2-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20250402090615.25871-2-angelogioacchino.delregno@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Wed, 2 Apr 2025 17:34:58 +0800
X-Gm-Features: AQ5f1JqvPNDibEnWSVdu_841YWdl7OuqFaP96Ge_W58uChccFThN9Of9ZLYLgag
Message-ID: <CAGXv+5GHf5D3JDh+OZ-Cxf91PTAGYk2+jvuwK1gymy=k1YOo_A@mail.gmail.com>
Subject: Re: [PATCH v1 1/2] arm64: dts: mediatek: mt8195: Add subsys clks for
 PCIe power domains
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-mediatek@lists.infradead.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, matthias.bgg@gmail.com, weiyi.lu@mediatek.com, 
	tinghan.shen@mediatek.com, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 2, 2025 at 5:10=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> The PCIe MAC needs the sram to be powered on for internal IP
> access and it has always worked before because the bootloader
> on Chromebooks was leaving the PCIe PERI_AO MEM clocks on
> before booting the kernel.
> Add the SRAM (mem) clock as a subsystem clock on the PCIe MAC
> P0 and P1 to correctly describe the hardware and to avoid any
> issue with bootloaders behaving differently.
>
> Fixes: 2b515194bf0c ("arm64: dts: mt8195: Add power domains controller")
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>
> ---
>  arch/arm64/boot/dts/mediatek/mt8195.dtsi | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8195.dtsi b/arch/arm64/boot/d=
ts/mediatek/mt8195.dtsi
> index b33726da900b..0cb96cba727a 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8195.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
> @@ -792,12 +792,16 @@ power-domain@MT8195_POWER_DOMAIN_CAM_MRAW {
>
>                                 power-domain@MT8195_POWER_DOMAIN_PCIE_MAC=
_P0 {
>                                         reg =3D <MT8195_POWER_DOMAIN_PCIE=
_MAC_P0>;
> +                                       clocks =3D <&pericfg_ao CLK_PERI_=
AO_PCIE_P0_MEM>;
> +                                       clock-names =3D "ss-pextp0-mem";

Doesn't the PCIe host controller already reference this clock?

>                                         mediatek,infracfg =3D <&infracfg_=
ao>;
>                                         #power-domain-cells =3D <0>;
>                                 };
>
>                                 power-domain@MT8195_POWER_DOMAIN_PCIE_MAC=
_P1 {
>                                         reg =3D <MT8195_POWER_DOMAIN_PCIE=
_MAC_P1>;
> +                                       clocks =3D <&pericfg_ao CLK_PERI_=
AO_PCIE_P1_MEM>;
> +                                       clock-names =3D "ss-pextp1-mem";

Not this one though, since:

         /* Designer has connect pcie1 with peri_mem_p0 clock */
         <&pericfg_ao CLK_PERI_AO_PCIE_P0_MEM>;


ChenYu

>                                         mediatek,infracfg =3D <&infracfg_=
ao>;
>                                         #power-domain-cells =3D <0>;
>                                 };
> --
> 2.48.1
>
>


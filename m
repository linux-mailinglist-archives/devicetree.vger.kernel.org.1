Return-Path: <devicetree+bounces-199755-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F37DB11DD2
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 13:44:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CD9CC3B739B
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 11:44:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A09462E6D0D;
	Fri, 25 Jul 2025 11:44:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="FPIz8jWv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f52.google.com (mail-oo1-f52.google.com [209.85.161.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7741E1E16
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 11:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753443895; cv=none; b=IaTTpBCrJKy+x2L2BSxIIXrEqKmWwHEoXww9ou1RkHHFup6vfrEBW4GVv2aGsW3WR2XKpTbcuFcAsBShpbbJGOKEoW47ZsOINtlc+DeNcWMuVFzryRfrWYhYNbsoDrEhFdL2dy8UhdhiRTZPJkYI+58MX5clDQykKexit2iS4ZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753443895; c=relaxed/simple;
	bh=KqH01V/ZQOGZhBJpHb3zgphhQB1Sh25Ttt4gkVmURXc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Vix+osnavm0EzQZ+QaJMfU6M66tN/oZ8ztJUCZE3Zs32Lo5QhzbNFQ2bqdHXmkk25h/OsZwFqFTYvbygUXljka2D4sJtZX10C1lB0OQOr91pISI5aCQ7+YOpG/dI1RTJLTulb9VybxN/l88St8vw4cWrqvkDgUrz8WQiEQI+nRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=FPIz8jWv; arc=none smtp.client-ip=209.85.161.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-oo1-f52.google.com with SMTP id 006d021491bc7-615a256240bso941984eaf.3
        for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 04:44:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1753443893; x=1754048693; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YfE909p8Iq119G3J/2SxiBSXlMMdz4SFa3hpgANK2k8=;
        b=FPIz8jWvNLQJmAL99yYs6aqmLaMqxU3oLsUhsy1AzypyyOBN8Y7JyKvfwCovoY5N9Z
         LMR5Oqa7bbTYbBVEsHevR4qKVpcZ7LT81HT8RRKpmdPz8U5Zx0bCqxKmc4SSdf6pDdW0
         rtFtukF37mOEay9hmX40EJ/NIdL6kh099M/kI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753443893; x=1754048693;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YfE909p8Iq119G3J/2SxiBSXlMMdz4SFa3hpgANK2k8=;
        b=QYfAJ1mJsbWoNR3G6Q3Mykh9HxFJMDOY6Srr5V7OOZEvwVaB2wIRA31VOXgUTp9fwu
         8XD6Xruej2Q/r3CG8aLnpwTFYVW9VrS++H8yXVmZjUGMbsTj+c0CKHVMD6S7C4cel3vX
         e66W/pgYHJ3cPZHFBQJklsqIb/HIOemKPl4JAjqAb2I43VKYTNoAlDzXvbm3i+SOySRH
         aNmod6/vaf5epv2du7tSzzGMkb3R4RFt9Pvs+3cx4/uoo4+yrk5uQIzmS7Rqn29E4K8h
         CeG6nIsbTjanDd6rDKDFUiV6xBtNNZkQD0fWWyRTRV1Fhn1jl/Iaa9ial5jHhSRH6+9w
         WfKA==
X-Forwarded-Encrypted: i=1; AJvYcCV81COG11CyvdsQHS/siF6S+1/itekvLuloe0e8JlXN1Zc6oIK5eNNSz/GJDC3r6ac5YZctpaUx3e6t@vger.kernel.org
X-Gm-Message-State: AOJu0YxZT14xLbmfRL5OgY4ybkX1QcDv52hMKDPbeT+cXKVZKJP6dMQE
	ZaIt/g8FkopQxjDqJQ/GLXnGXT0Lr1nVWx33iPhkzq+DpQS0qNVF5PxlJ1ejfeDMr8eUJ2168Se
	YwBt5ZA==
X-Gm-Gg: ASbGncupPqjssFlJUgJ3Ii1ALrZLhYioBpj70Ujkol/S6L3Dt2GH2NcL+RLu5+rBUGE
	8f5JlWqrVkwB+TkcpsSwNKlG0OdEtPEtJLT6ZoqBgHNkXMtU5nONQC4VJk2zr9Suy7lT7kxXm4j
	LX6uDWOscGRSvMt+xlgwsDmwpaDPGR9r72KNwFhWfGkw695lcXTJVd81TOPQ5Xv1DanpR0T1G+f
	4xa5Z2OriuX0+tC+G5M8SBzBvWmwM9lkdc1u1V91a1J9lUksLS97Yx+5VTQvX+TEQZSe0HPwTYN
	1QUt1n8bjUviBJOdR+sGb/9xXbRK3Jd7k4EVt08LAMBdvGPPbRHybhEzy7TsEOvSCdVvmRq55lA
	qQ/qaUZSZtWT0Qo7I45CKjon2rm1SyVGpjIDmRRpNmIabYdOBdJ2T7phNi48UEg==
X-Google-Smtp-Source: AGHT+IEB5lG2QZx5LFwnAnS2ouqWAcGBFr7+eLwE9ecsuQ88hoH48CxLFAYz3ZWQhemeCtD4SYQGIA==
X-Received: by 2002:a05:6870:8289:b0:2d0:3078:e730 with SMTP id 586e51a60fabf-30701cc3b74mr956032fac.3.1753443892770;
        Fri, 25 Jul 2025 04:44:52 -0700 (PDT)
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com. [209.85.167.174])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-306f75dbe86sm559214fac.1.2025.07.25.04.44.52
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Jul 2025 04:44:52 -0700 (PDT)
Received: by mail-oi1-f174.google.com with SMTP id 5614622812f47-41b7d124016so1031516b6e.1
        for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 04:44:52 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVTAH0VshwICFTy5TlI0q5bG8LCGiyJOstAQegcuoQhDf9UE2ikyAJE+I1ol9VGd9C5HVFr1G4I8NBM@vger.kernel.org
X-Received: by 2002:a05:6102:3713:b0:4e9:b7e3:bdcd with SMTP id
 ada2fe7eead31-4fa3fad468amr285963137.12.1753440273293; Fri, 25 Jul 2025
 03:44:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com> <20250724083914.61351-24-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20250724083914.61351-24-angelogioacchino.delregno@collabora.com>
From: Fei Shao <fshao@chromium.org>
Date: Fri, 25 Jul 2025 18:43:57 +0800
X-Gmail-Original-Message-ID: <CAC=S1njhu11nHpyMULbK6PE-BLrBMq+d397pDU6gBzgo7xivXg@mail.gmail.com>
X-Gm-Features: Ac12FXyc7RkTIKa4HnSlf_SM-GYdwIREUn6AcAkOBKhNuekdCdvFzy29o7Ufs68
Message-ID: <CAC=S1njhu11nHpyMULbK6PE-BLrBMq+d397pDU6gBzgo7xivXg@mail.gmail.com>
Subject: Re: [PATCH 23/38] arm64: dts: mediatek: mt7986a: Fix PCI-Express
 T-PHY node address
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: linux-mediatek@lists.infradead.org, robh@kernel.org, 
	daniel.lezcano@linaro.org, mwalle@kernel.org, devicetree@vger.kernel.org, 
	linus.walleij@linaro.org, linux-remoteproc@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	olivia.wen@mediatek.com, shane.chien@mediatek.com, linux-gpio@vger.kernel.org, 
	linux-phy@lists.infradead.org, airlied@gmail.com, simona@ffwll.ch, 
	herbert@gondor.apana.org.au, jassisinghbrar@gmail.com, jiaxin.yu@mediatek.com, 
	andy.teng@mediatek.com, chunfeng.yun@mediatek.com, jieyy.yang@mediatek.com, 
	chunkuang.hu@kernel.org, conor+dt@kernel.org, jitao.shi@mediatek.com, 
	p.zabel@pengutronix.de, arnd@arndb.de, kishon@kernel.org, 
	kyrie.wu@mediatek.corp-partner.google.com, maarten.lankhorst@linux.intel.com, 
	tinghan.shen@mediatek.com, mripard@kernel.org, ck.hu@mediatek.com, 
	broonie@kernel.org, eugen.hristev@linaro.org, houlong.wei@mediatek.com, 
	matthias.bgg@gmail.com, tglx@linutronix.de, mchehab@kernel.org, 
	linux-arm-kernel@lists.infradead.org, granquet@baylibre.com, 
	sam.shih@mediatek.com, mathieu.poirier@linaro.org, fparent@baylibre.com, 
	andersson@kernel.org, sean.wang@kernel.org, linux-sound@vger.kernel.org, 
	lgirdwood@gmail.com, vkoul@kernel.org, linux-crypto@vger.kernel.org, 
	tzimmermann@suse.de, atenart@kernel.org, krzk+dt@kernel.org, 
	linux-media@vger.kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 24, 2025 at 5:49=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> The PCIe TPHY is under the soc bus, which provides MMIO, and all
> nodes under that must use the bus, otherwise those would clearly
> be out of place.
>
> Add ranges to the PCIe tphy and assign the address to the main
> node to silence a dtbs_check warning, and fix the children to
> use the MMIO range of t-phy.
>
> Fixes: 963c3b0c47ec ("arm64: dts: mediatek: fix t-phy unit name")
> Fixes: 918aed7abd2d ("arm64: dts: mt7986: add pcie related device nodes")
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>

Reviewed-by: Fei Shao <fshao@chromium.org>

> ---
>  arch/arm64/boot/dts/mediatek/mt7986a.dtsi | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt7986a.dtsi b/arch/arm64/boot/=
dts/mediatek/mt7986a.dtsi
> index 559990dcd1d1..3211905b6f86 100644
> --- a/arch/arm64/boot/dts/mediatek/mt7986a.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt7986a.dtsi
> @@ -428,16 +428,16 @@ pcie_intc: interrupt-controller {
>                         };
>                 };
>
> -               pcie_phy: t-phy {
> +               pcie_phy: t-phy@11c00000 {
>                         compatible =3D "mediatek,mt7986-tphy",
>                                      "mediatek,generic-tphy-v2";
> -                       ranges;
> -                       #address-cells =3D <2>;
> -                       #size-cells =3D <2>;
> +                       ranges =3D <0 0 0x11c00000 0x20000>;
> +                       #address-cells =3D <1>;
> +                       #size-cells =3D <1>;
>                         status =3D "disabled";
>
> -                       pcie_port: pcie-phy@11c00000 {
> -                               reg =3D <0 0x11c00000 0 0x20000>;
> +                       pcie_port: pcie-phy@0 {
> +                               reg =3D <0 0x20000>;
>                                 clocks =3D <&clk40m>;
>                                 clock-names =3D "ref";
>                                 #phy-cells =3D <1>;
> --
> 2.50.1
>
>


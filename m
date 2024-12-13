Return-Path: <devicetree+bounces-130655-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 60CBB9F0961
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 11:26:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 222882838A6
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 10:26:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11E871B87CA;
	Fri, 13 Dec 2024 10:26:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="n1jyphI9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com [209.85.210.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ED491B86F7
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 10:26:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734085597; cv=none; b=sAHTFU83FGFfaXfh7+MGfcFVpCHDKG5uFuAQvgHcgP7Lm9R6u4TXcof/q59IsFp8JXJhS0028pazlL6PL7br1jd1wfu53CTsYZOAIvBnvCh41ersiRyJ0N2BFoB7lCSqZBufd0MwHpp5tpAtiBgYAUefcMsQBXcq6HmIUTyR/Ok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734085597; c=relaxed/simple;
	bh=FZell5Yk6YkTJ23+SinIBFSOK/Zawuga4Qf4iOV7bSk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IoVSo/Rt5z9Iz9yldLmQK8X0kLQsVgKdfey0j6a5cgo9n5Aht8aOSvf96AYNuWOmqTHaLlsBnEQsiyz2gMxE2vlGHKra26e3mzBP2cVT/r+CPiE495KME+VPVGuoBcivBVIXK0cQ6BL/PXuekxFjCrRcaWQ3OJgF7QFsZNWdAhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=n1jyphI9; arc=none smtp.client-ip=209.85.210.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ot1-f42.google.com with SMTP id 46e09a7af769-71e16519031so802586a34.1
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 02:26:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1734085594; x=1734690394; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gKqDqgeGFaNiglPykk1ZWFq+KoOVfgPfTAi6q8lDcbU=;
        b=n1jyphI9kVCVo/lYYgmOq3d5EwLLFWld1Qr2VGaZN9RMAU3rMmcDvjKAQ7fTrK6inr
         NmsV6YGd1i3mfhP3aDBMhsmyAGtT+XRV57LrLEr3uPTawKpYUG9JibVY/BxnR5g7afO9
         MLKFN/+8abnQPHThlz7FCaqbUXgqObnKTWb/c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734085594; x=1734690394;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gKqDqgeGFaNiglPykk1ZWFq+KoOVfgPfTAi6q8lDcbU=;
        b=A1l3Durv2JxSNbGFHmwPNEgqqy/0wji427dX9H2XZPQdtD9GAabO2W2rfH4HsPFI+n
         l5jljeBcwe2a2Ljd7f63YCheW/cFXPjbMRW+Cl3p01uPJWTsYOsNYQzYMdVOwd0q6w+5
         ZBJlVk1Utkjpf/wABhUQvyE9cGLXfgsC8KnRMn+4fkz6P7bSOrCsAXfsGdu7IlRieH1v
         gCScweujL7N695i4lRjTX49eCJD2z/sKlb1qiIjyVI950GUBHwckrEOZAPtlVEl9ltds
         Ied2+ZyVzJZcC4UZfBtaPkw3G7uCK2iyA1KgxA20VuqoVkpyNYIlneuXOZl2qlw0FNRQ
         ikag==
X-Forwarded-Encrypted: i=1; AJvYcCWJ8I7ILEKIIn7FsOsGXFGFxRzO7anGH8auc+IBl2gJr49b9oNxJ2cHLzMuYZvG9ojwM5dKBHi9vIYR@vger.kernel.org
X-Gm-Message-State: AOJu0YxQoMn0GKDYh/QNFGgDBKlSKMNhEyRYxN7YfuAupv6bqDRJJUEs
	ixUIcEqlsM7kk/upIzhnxrGgEQ4HK6isI2qsi+i+qIR0V/P6V/cyEfSh9NB6kQomqL4JegE2hy7
	iz9Pom56Gq3uJTFnCiaId16N3HuYu4sErc52Z
X-Gm-Gg: ASbGncuIibWUc/YNNjofV3UOR3uHM+T+/GjDPDKdfjmNu4aaJA3e8bBBqfm8vTmLLUK
	F1gQ/2Ewgtj6wdlhwyhWFkX7kyYMDuO3GfcwlNQmjRKPKPAWsCFhEi/fPn0yUk47+
X-Google-Smtp-Source: AGHT+IENCMH98mpXyF3VrVAuDfFFYvkYege6xGr7xJlAm+RCTMb9aQXAq9gG3Wn85+C8PlkKAH60Qe9TT1gWu6utMaQ=
X-Received: by 2002:a05:6830:448a:b0:71e:30e:e022 with SMTP id
 46e09a7af769-71e3be44e5bmr1104651a34.10.1734085594573; Fri, 13 Dec 2024
 02:26:34 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241213095044.23757-1-jason-jh.lin@mediatek.com> <20241213095044.23757-3-jason-jh.lin@mediatek.com>
In-Reply-To: <20241213095044.23757-3-jason-jh.lin@mediatek.com>
From: Pin-yen Lin <treapking@chromium.org>
Date: Fri, 13 Dec 2024 18:26:23 +0800
Message-ID: <CAEXTbpcp31oWOCh2c41QbWOc5F_gpD1Bia0NiZeVyDbqKo98Lw@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] dts: arm64: mediatek: mt8188: Update OVL
 compatible from MT8183 to MT8195
To: "Jason-JH.Lin" <jason-jh.lin@mediatek.com>
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Singo Chang <singo.chang@mediatek.com>, Nancy Lin <nancy.lin@mediatek.com>, 
	Shawn Sung <shawn.sung@mediatek.com>, dri-devel@lists.freedesktop.org, 
	linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	Project_Global_Chrome_Upstream_Group@mediatek.com, 
	Fei Shao <fshao@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jason,

On Fri, Dec 13, 2024 at 5:50=E2=80=AFPM Jason-JH.Lin <jason-jh.lin@mediatek=
.com> wrote:
>
> The OVL hardware capabilities have changed starting from MT8195,
> making the MT8183 compatible no longer applicable.
> Therefore, it is necessary to update the OVL compatible from MT8183 to
> MT8195.

This probably doesn't need an (immediate) respin, but this patch needs:

Fixes: 7075b21d1a8e ("arm64: dts: mediatek: mt8188: Add display nodes
for vdosys0")
>
> Signed-off-by: Jason-JH.Lin <jason-jh.lin@mediatek.com>
> ---
>  arch/arm64/boot/dts/mediatek/mt8188.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8188.dtsi b/arch/arm64/boot/d=
ts/mediatek/mt8188.dtsi
> index faccc7f16259..23ec3ff6cad9 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8188.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
> @@ -2488,7 +2488,7 @@ jpeg_decoder: jpeg-decoder@1a040000 {
>                 };
>
>                 ovl0: ovl@1c000000 {
> -                       compatible =3D "mediatek,mt8188-disp-ovl", "media=
tek,mt8183-disp-ovl";
> +                       compatible =3D "mediatek,mt8188-disp-ovl", "media=
tek,mt8195-disp-ovl";
>                         reg =3D <0 0x1c000000 0 0x1000>;
>                         clocks =3D <&vdosys0 CLK_VDO0_DISP_OVL0>;
>                         interrupts =3D <GIC_SPI 636 IRQ_TYPE_LEVEL_HIGH 0=
>;
> --
> 2.43.0
>

Regards,
Pin-yen


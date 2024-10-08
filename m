Return-Path: <devicetree+bounces-108812-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 17EB1993FC6
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 09:40:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4A0F41C23AFA
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 07:40:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3D901E04B5;
	Tue,  8 Oct 2024 06:45:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="aWfl61/n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0EE81E04B2
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 06:45:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728369937; cv=none; b=FGiBnr/D9qeJlAtdltF/u+3aApoPjd7rNYnYvf8g1pM3Xt5ccWm9omQQgurKsJ46Bihi3GInAI08RgNg0d5uo/a3t1nJO2LJdBqN4GXi8y6T9Eh/JxkRlL170zxftXR/IM5GXWBeY+0NBQbXN/VjUWLZ98yJut46nwaiFBhyrao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728369937; c=relaxed/simple;
	bh=fbbZr49zyO/Qt7cshVbga6lryqPHcq3MB9S08PHeyPQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=e7dza8uJ/ngAw218dMBaAf25QHudFw5lCqdX8DkQjnAUDrhhMWc4BEmYV2CFSz+FEqCZj04j3O/mZLclnIKVii+sFsJbWtCJXePXgwZ4bb1eT0Sj/+S2qLLdd2uSDXmrpN4Mc5Bwb8GeRvQwjEVytjFT4Cr+j5fUYlibW3OLnHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=aWfl61/n; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-5398996acbeso5787188e87.1
        for <devicetree@vger.kernel.org>; Mon, 07 Oct 2024 23:45:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1728369934; x=1728974734; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5N200fvxTREEyrxekftq3ggWOWagokPaTUYSEaBWtcI=;
        b=aWfl61/ngzOtzfqlzMU176KQqlL7JsO1ug0yx1AXxsGdLaTGQZJjBonR9uBrRb4R6X
         rMf6u+2SnoHL/elIFQm2ZC0eqL/XmFHVg5xFtJyyEKiPtxfw6ny9Gn4mdtoMkLPChlsk
         nFO+Djkpdt7d06myJOnYN4cvPDTpZKugDAc5Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728369934; x=1728974734;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5N200fvxTREEyrxekftq3ggWOWagokPaTUYSEaBWtcI=;
        b=J8LSvz3lfT+gT+7sGNtS1/Sgcvqk01oFZiQcPak5HSv9WK7rVp2w0WZjupZP8Fzz7l
         fIHFeR7407QePCSi/9h4gpIvCArVM1XnB4H0azZjZvdQQF8+T3kK7iUVZ/svNYbyGl41
         uOnxNRC5BamVMUYVcdmTLlEkAB1FoRghoCbXuyYmTIUpP+t7gD/K+XMpYgWCF29wmDdr
         VsFZdwg5VDT1XGrVPG88g+x+douR3UVcKieBub7dkX60l5x5DSyQZLb0RQ9YHePTDqOv
         3JNzMd4A7x37vd9JvGKWYJPaAHculRNoTaKqqfZdbDxjFanYTgzj6kv/Jlzh7fHJQ2kX
         kI7w==
X-Forwarded-Encrypted: i=1; AJvYcCVWngOksZ0n/YM/7pfXQMYUuhgb9xfNeRihmmBKvMjZVwlCvSH7xEfB+KZ6QiAroBsCgsbe7WzyOgsK@vger.kernel.org
X-Gm-Message-State: AOJu0YxvEIMRtVhaXUI8EwcCKgjtJyHrKDdikJoH08blkP0tXFbTYKyw
	rjQHnPXl8+62ayqw/Yx/MWjSZOIqyAaxWZLA7fdyPnmG1mRowLmlY5h6pqudT2syv7cnIAShliT
	hdD1HW1Uc5LSL/LCydOn0CaHqVAysZ/twgd35
X-Google-Smtp-Source: AGHT+IECT4esT7ue1aARCMGP0UOMUnxo/PP5VibgnFTCBR5NhImNPoYeKUOnemVNGvm97mlnoQmK4bDcS1hCoUrx8yU=
X-Received: by 2002:a05:6512:3e0f:b0:52e:74d5:89ae with SMTP id
 2adb3069b0e04-539ab9e4165mr7000253e87.39.1728369933828; Mon, 07 Oct 2024
 23:45:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241008053514.6800-1-macpaul.lin@mediatek.com>
In-Reply-To: <20241008053514.6800-1-macpaul.lin@mediatek.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Tue, 8 Oct 2024 14:45:22 +0800
Message-ID: <CAGXv+5HVBP31H2hr8BuAy-4jNkS-T12L_mdmPSCV2po1FnO81g@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: mediatek: mt8195: Fix dtbs_check error for tphy
To: Macpaul Lin <macpaul.lin@mediatek.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, Seiya Wang <seiya.wang@mediatek.com>, 
	Tinghan Shen <tinghan.shen@mediatek.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>, 
	Alexandre Mergnat <amergnat@baylibre.com>, Bear Wang <bear.wang@mediatek.com>, 
	Pablo Sun <pablo.sun@mediatek.com>, Macpaul Lin <macpaul@gmail.com>, 
	Sen Chu <sen.chu@mediatek.com>, Chris-qj chen <chris-qj.chen@mediatek.com>, 
	MediaTek Chromebook Upstream <Project_Global_Chrome_Upstream_Group@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 8, 2024 at 1:35=E2=80=AFPM Macpaul Lin <macpaul.lin@mediatek.co=
m> wrote:
>
> The u3phy1 node in mt8195.dtsi was triggering a dtbs_check error.
> The error message was:
>   t-phy@11e30000: 'power-domains' does not match any of the regexes:
>     '^(usb|pcie|sata)-phy@[0-9a-f]+$', 'pinctrl-[0-9]+'
> Fix this issue by dropping 'power-domains' of u3phy1 node.

You should also mention why this fix is correct from a hardware viewpoint,
i.e. why removing the power domain won't break the device.

> Fixes: 37f2582883be ("arm64: dts: Add mediatek SoC mt8195 and evaluation =
board")
> Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
> ---
>  arch/arm64/boot/dts/mediatek/mt8195.dtsi | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8195.dtsi b/arch/arm64/boot/d=
ts/mediatek/mt8195.dtsi
> index ade685ed2190..1c6f08dde31c 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8195.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
> @@ -1920,7 +1920,6 @@ u3phy1: t-phy@11e30000 {
>                         #address-cells =3D <1>;
>                         #size-cells =3D <1>;
>                         ranges =3D <0 0 0x11e30000 0xe00>;
> -                       power-domains =3D <&spm MT8195_POWER_DOMAIN_SSUSB=
_PCIE_PHY>;
>                         status =3D "disabled";
>
>                         u2port1: usb-phy@0 {
> --
> 2.45.2
>


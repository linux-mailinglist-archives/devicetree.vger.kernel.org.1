Return-Path: <devicetree+bounces-199758-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 80989B11DFE
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 13:57:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4FC3A3BB6E8
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 11:57:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F3732E7167;
	Fri, 25 Jul 2025 11:57:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="FcFa8UQw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B8682D131A
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 11:57:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753444659; cv=none; b=T1G/Hl+1YOqs47MzaHxL7E6OaKf+AncuS/S0UQlftBKHauF8MZsTGvXRMfQ9v5W2eyPbhSvaDYa/Cu+9CohAeG5/ZXOBiBBjMXFFLq3wSKxF1Tr9jKCJH5uwE5kfK2gJ/FUjE5qq4ON+oPLX/Juhrmcd8iqn/dwDBqWLid0YCzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753444659; c=relaxed/simple;
	bh=wuFFxAizy2X1aAZ/SF2x06cfnVSKnpsKMko3UN4we2M=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jRQpYJT2me7C+anj05Ww5nmRMOz52WyzlZkkIyN6gGLE4ksaP3OdHp5CfT42+gLjgWelbQ6ECECwGMreIGbkmLiVI97br2b+cGbloKrXpvFKvkbqzh99s5E+WETGe8b2hxsWuCu2qnTE4wAYQRLZ1ew4Y8OyjHsQKwa+eG4ysls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=FcFa8UQw; arc=none smtp.client-ip=209.85.222.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qk1-f171.google.com with SMTP id af79cd13be357-7e278d8345aso202831485a.0
        for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 04:57:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1753444656; x=1754049456; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IaRYlYWMnL5FdToAvFBY21N9TEhebXI6JAmJStjizl0=;
        b=FcFa8UQwRoqea0tObOh0nhDo86nkqttS1khQg9JKvLZMeAttnojidZPkVsQH2mfm7o
         1VSe01efzczSO3IfooSBl38Rp4oDGKqMFQ/pQyLYuJy81mAJr+b0M15D2V75MG5rTI4S
         6d/4qJ9NYXOEaKot54hWJ7VVY4rz48zlxFym8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753444656; x=1754049456;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IaRYlYWMnL5FdToAvFBY21N9TEhebXI6JAmJStjizl0=;
        b=dlmdbDKQmPlnkgIFOMX8FoQLNvGi0rxGASGrQGPniYSaVCeSb2OTWdxt1gRguIOvmd
         7D8abdShJqbd+Y/fyiw8Xu84mHcGWHx6hL+3fEmpoNWeWMERkE1LBNCkf5JtdGPjxvSN
         +7EkuML7oAQmDQfwQ7FjIZYQeCtRgs9sKMRB8s8OOCdfL62BmV0PJGXm67cCjeOXVfME
         fvoUJQOsE7KQdkcDKiEfCQvdsPAjog/n41iKVk2R2CKnEYMUmPxSiOccwbVQRJYSQsTR
         ji12FmMBB4sO7BBUA9nswEPpMwYKGLIOnVk8Rn4DIIvTiF+fhaWnEtdRqIYEXphBE6BQ
         OLTg==
X-Forwarded-Encrypted: i=1; AJvYcCV8ixeqPZTP4HCFFNh9k3MNtHhtbT2d48G5KelLHkRDgXx4p4/eot1Oryr2pFxnIF//dqaxjTfOjU00@vger.kernel.org
X-Gm-Message-State: AOJu0YzgbsvaR9Z1PTvMRCMWppvhg6lK3SwYj0WRWy8DTUKwCFRVvrk3
	EyG75mRVPII6cxEyTB22TejbCQQT4RmYoXKWWyyIe4nil84kgRjJ0G+itV6rJh7eeBwdPJEvCNn
	gs7o=
X-Gm-Gg: ASbGncvwkoUyOSeocYEC98Bh0grgQkZHM8NSZBRV5HnfuHz6m9vt2lbOqXh1Dm19oT5
	DDF4+9xzfwf0PqbfZi48hF9BcwlLRtWAJhE9LzJ7/EVGR3VWy/i4hclLQw0lWY62OXLzJhIkcmn
	ljffzzYvuMremKgKhNFi1nvqRFKRANh4p6WhE/LB7GVGKy/7qxSQ7+QhxzNDW4PivZZmHHCva6l
	eKQHips+9/Y6+2oOLCRbMg6gSWt6/t/Z3QCgUjPDTcB7BqzgyId5Ij/6aMjl27vLDLJ+kD7OcML
	YpsfC+vUBaGs3uyicYm6iHYgZ6vN6d41FIS/4Y2UN+vJB34E4hZdMvMan47Dug1TNYRrnerM3MJ
	6aTZ2/LwSX9xO0UtGagmjRI+ZZMReYOvnta25pDYYmyhpaBW/KUrIaX0Zu9My6A==
X-Google-Smtp-Source: AGHT+IFmFeKSAiKZR6GvES09bXsi6RlZqk0JkjlekIAVllOfa6+rgh5gLLoTABTn8CZaJcXNxI9OIg==
X-Received: by 2002:ad4:5d48:0:b0:6fd:37c0:2c74 with SMTP id 6a1803df08f44-7072052e0b4mr25745086d6.11.1753444656277;
        Fri, 25 Jul 2025 04:57:36 -0700 (PDT)
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com. [209.85.222.171])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-7070fccbe68sm25257996d6.88.2025.07.25.04.57.36
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Jul 2025 04:57:36 -0700 (PDT)
Received: by mail-qk1-f171.google.com with SMTP id af79cd13be357-7e62a1cbf83so193216585a.1
        for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 04:57:36 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXC9lePs3fkdH9EZVf1vfEFI3SNa39dL/wgyuf4ytOrHnwPF01zf+GQV2HPora+mMB1pOM3TllzAzCN@vger.kernel.org
X-Received: by 2002:a05:6102:cce:b0:4e6:4e64:baeb with SMTP id
 ada2fe7eead31-4fa3ff55fbamr323634137.17.1753441040390; Fri, 25 Jul 2025
 03:57:20 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com> <20250724083914.61351-18-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20250724083914.61351-18-angelogioacchino.delregno@collabora.com>
From: Fei Shao <fshao@chromium.org>
Date: Fri, 25 Jul 2025 18:56:44 +0800
X-Gmail-Original-Message-ID: <CAC=S1nh5bF6kZe7TFA_EGPGt8Xp_rfuc-rkeXgjRCU=QEtZQiw@mail.gmail.com>
X-Gm-Features: Ac12FXw-hSTS0fHSbHXeHNK-nhzfyTLOXfpWf3gYQQXz8LA0IhEjugCIp682sPw
Message-ID: <CAC=S1nh5bF6kZe7TFA_EGPGt8Xp_rfuc-rkeXgjRCU=QEtZQiw@mail.gmail.com>
Subject: Re: [PATCH 17/38] arm64: dts: mediatek: mt6797: Fix pinctrl node names
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

On Thu, Jul 24, 2025 at 5:48=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Change the pinctrl node names to adhere to the binding: the main
> nodes are now named like "uart0-pins" and the children "pins-bus".
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>

Reviewed-by: Fei Shao <fshao@chromium.org>

> ---
>  arch/arm64/boot/dts/mediatek/mt6797.dtsi | 40 ++++++++++++------------
>  1 file changed, 20 insertions(+), 20 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt6797.dtsi b/arch/arm64/boot/d=
ts/mediatek/mt6797.dtsi
> index 0e9d11b4585b..be401617dfd8 100644
> --- a/arch/arm64/boot/dts/mediatek/mt6797.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt6797.dtsi
> @@ -135,71 +135,71 @@ pio: pinctrl@10005000 {
>                 gpio-controller;
>                 #gpio-cells =3D <2>;
>
> -               uart0_pins_a: uart0 {
> -                       pins0 {
> +               uart0_pins_a: uart0-pins {
> +                       pins-bus {
>                                 pinmux =3D <MT6797_GPIO234__FUNC_UTXD0>,
>                                          <MT6797_GPIO235__FUNC_URXD0>;
>                         };
>                 };
>
> -               uart1_pins_a: uart1 {
> -                       pins1 {
> +               uart1_pins_a: uart1-pins {
> +                       pins-bus {
>                                 pinmux =3D <MT6797_GPIO232__FUNC_URXD1>,
>                                          <MT6797_GPIO233__FUNC_UTXD1>;
>                         };
>                 };
>
> -               i2c0_pins_a: i2c0 {
> -                       pins0 {
> +               i2c0_pins_a: i2c0-pins {
> +                       pins-bus {
>                                 pinmux =3D <MT6797_GPIO37__FUNC_SCL0_0>,
>                                          <MT6797_GPIO38__FUNC_SDA0_0>;
>                         };
>                 };
>
> -               i2c1_pins_a: i2c1 {
> -                       pins1 {
> +               i2c1_pins_a: i2c1-pins {
> +                       pins-bus {
>                                 pinmux =3D <MT6797_GPIO55__FUNC_SCL1_0>,
>                                          <MT6797_GPIO56__FUNC_SDA1_0>;
>                         };
>                 };
>
> -               i2c2_pins_a: i2c2 {
> -                       pins2 {
> +               i2c2_pins_a: i2c2-pins {
> +                       pins-bus {
>                                 pinmux =3D <MT6797_GPIO96__FUNC_SCL2_0>,
>                                          <MT6797_GPIO95__FUNC_SDA2_0>;
>                         };
>                 };
>
> -               i2c3_pins_a: i2c3 {
> -                       pins3 {
> +               i2c3_pins_a: i2c3-pins {
> +                       pins-bus {
>                                 pinmux =3D <MT6797_GPIO75__FUNC_SDA3_0>,
>                                          <MT6797_GPIO74__FUNC_SCL3_0>;
>                         };
>                 };
>
> -               i2c4_pins_a: i2c4 {
> -                       pins4 {
> +               i2c4_pins_a: i2c4-pins {
> +                       pins-bus {
>                                 pinmux =3D <MT6797_GPIO238__FUNC_SDA4_0>,
>                                          <MT6797_GPIO239__FUNC_SCL4_0>;
>                         };
>                 };
>
> -               i2c5_pins_a: i2c5 {
> -                       pins5 {
> +               i2c5_pins_a: i2c5-pins {
> +                       pins-bus {
>                                 pinmux =3D <MT6797_GPIO240__FUNC_SDA5_0>,
>                                          <MT6797_GPIO241__FUNC_SCL5_0>;
>                         };
>                 };
>
> -               i2c6_pins_a: i2c6 {
> -                       pins6 {
> +               i2c6_pins_a: i2c6-pins {
> +                       pins-bus {
>                                 pinmux =3D <MT6797_GPIO152__FUNC_SDA6_0>,
>                                          <MT6797_GPIO151__FUNC_SCL6_0>;
>                         };
>                 };
>
> -               i2c7_pins_a: i2c7 {
> -                       pins7 {
> +               i2c7_pins_a: i2c7-pins {
> +                       pins-bus {
>                                 pinmux =3D <MT6797_GPIO154__FUNC_SDA7_0>,
>                                          <MT6797_GPIO153__FUNC_SCL7_0>;
>                         };
> --
> 2.50.1
>
>


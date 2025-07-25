Return-Path: <devicetree+bounces-199761-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A063B11E1C
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 14:05:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CB87D7BA64D
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 12:04:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDA3A24418D;
	Fri, 25 Jul 2025 12:05:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Jqhie/ZB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com [209.85.217.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55D031BD4F7
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 12:05:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753445126; cv=none; b=BGhoxl/9M489VWv+pwPGQGFtC/8gIW7rgOqm4KIqQHyqWl0XXugTjRsAwwJGeuLwvamMv1T5R7I2gztS4WqQHAwei/R90NB/kmUZ3kG0g+/G4mAHADoSc0bh3QHU+SqljTNLK8g+Zag1Bu665JDXsno4qawW3ZKAZ6yenGcmQoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753445126; c=relaxed/simple;
	bh=V8hirrUVOWBBWHrhJ7nvVXSHaacevucbhSLPMWQvrV0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JaEzd6AGei1KeF7uQfZififdG+c7ccH8sjSFl4uE+3OlmiTg3Z1mYKOH8xFTcXO7QfuUiknhxOEELD6G9WLqsDQbe1kr+G9Z+Um4FL6YTNd65bcDeTCKRw01vOdaJLADHxz5DnCqt2QGUoK0lTM9XTHJRhL3ooNDQbI82Tkv2Do=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Jqhie/ZB; arc=none smtp.client-ip=209.85.217.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-vs1-f45.google.com with SMTP id ada2fe7eead31-4e7feaae0e1so1219904137.2
        for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 05:05:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1753445124; x=1754049924; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nOvBSwwtmNG8Z+SjWPY5aek+Y4mrxHqGqroX/bR/8SM=;
        b=Jqhie/ZBFFA342O9BOuncTCmln/XChEzt6QjeS8hkLlUNSl7dSVLKo8oo4LAA5xlLg
         NGEMq9QsiNvRbdNI1/kada0nHVUA43p7RbRNlDgGuMh/isqihk5yw3RbACrKblmXuvhl
         QfVotQWC+BwdNS3Mg7PTLGEylVBT9lz1ipF8Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753445124; x=1754049924;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nOvBSwwtmNG8Z+SjWPY5aek+Y4mrxHqGqroX/bR/8SM=;
        b=LihNJMWksMLUsv3ggsqNrG9J3Qep+SW4y61acnObR58d/05BiSFpp5NB+WYqG4YAZx
         Uupm508U5PBmcig2QA7I6fyWSXQPhU/jH754gAx90g6ObMiUrX9fAEgkCP5L6FUQItfd
         Ju7qHhT05Ytz3R5AhN4mRxkqcbo62CGIBjE/6PlegZ/K+HUOkH1jup93TYfwr/xubKCm
         +6zEFE5GH4b1xYSo+gH6RIrkFiPZKAsrJmTcgmL0vUY7FmAhD2C8ZweyKhAFwmOpz0Su
         avIdkWE4pXkCTeVTUHD2sc1n9bM+ay451XkZd+TL4PHLYf70YQyfU1SRvtJI6uIOqXgq
         dmQg==
X-Forwarded-Encrypted: i=1; AJvYcCXYgPnM04WMF+f3tDCntzobjloyIQF8iIT8q8V5LRoa/byCe//FozCwEQHn7EdvWuDc3PxeWa7gJbMU@vger.kernel.org
X-Gm-Message-State: AOJu0YxTf39y0Cl/8Y58C4r1PSXD9LewAEOt1Xj1xDvdn6DEPl1yuZVW
	TQPlyPhbjR8P6C7APW+CAPwy7GaUUHbYmztZ5oWSXtVXSp2OR57WmqPiN0/bv+lzCSSkotEi80+
	GJ2s=
X-Gm-Gg: ASbGncu4GOvRxTz/DKXLOrnWNHm17A7wQus0iUDS9c+hZ9QDncywc/9rOtg6/0KMb7Y
	y29U/MmKEZsaama2lHFynkBncBVS+5UaloBzAn7w3YCqrsiro7yelBBim3hHQB8OrNKBu0LRk4f
	YfZ5bY2jS9HYa0ZkQOuh6ehX5FqBzQwJcNnkjsqU65nK26FpUtlnbpG5l386Vv+1zQeqkNxVpIk
	oqEXueQk47Txny58lbtzKa1/dTtRG8V15w6ARVRl/tH3pFt5jZ2aY9FPTtklJflBItC23pHqcxu
	sUpP3uOrlJb3LP02X86ruJnt1ye+S5iBQGKICloeVbb1joK1t5wXjeq2WOt8inIsh61VWoeAxmD
	IEjjoeKdeunPmHOK7Y1ACOaFhAE/Ri+0fIGhrWchEuIGTD+MzFqGCdpl5Wg==
X-Google-Smtp-Source: AGHT+IHKY1DvFwWkFE8uq0T+sl+0y7iqRo/8WlFSh0Ql1JUIpl/rIvMlYUUsfKQPaa1yoJ+Jh5zpHg==
X-Received: by 2002:a05:6102:4408:b0:4e5:9b5f:a7a2 with SMTP id ada2fe7eead31-4fa3fa83858mr451607137.9.1753445123711;
        Fri, 25 Jul 2025 05:05:23 -0700 (PDT)
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com. [209.85.217.54])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-4fa2a9c508fsm726941137.17.2025.07.25.05.05.23
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Jul 2025 05:05:23 -0700 (PDT)
Received: by mail-vs1-f54.google.com with SMTP id ada2fe7eead31-4e9c6b44477so1314127137.3
        for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 05:05:23 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUGxX0cpdL7N2LSxpnW6/aPPj7p9F5uIl4u/dzaYDRlJ3qJDAC33MQW2J54VudB4wGEVJHkhYp2YCe4@vger.kernel.org
X-Received: by 2002:a05:6102:358c:b0:4e4:5df7:a10a with SMTP id
 ada2fe7eead31-4fa3fc6be93mr374132137.16.1753440996607; Fri, 25 Jul 2025
 03:56:36 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250724083914.61351-1-angelogioacchino.delregno@collabora.com> <20250724083914.61351-17-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20250724083914.61351-17-angelogioacchino.delregno@collabora.com>
From: Fei Shao <fshao@chromium.org>
Date: Fri, 25 Jul 2025 18:55:59 +0800
X-Gmail-Original-Message-ID: <CAC=S1nhwrq60q-=jMZQ2u8TwwG9HHnQFWrFRx58VF2K6Xi16XA@mail.gmail.com>
X-Gm-Features: Ac12FXy6b-EYxcfTGxWYM-OfSnpWrsOFjS6YFWPk3kTV_ZIdvcSVvNebJ1JSwHk
Message-ID: <CAC=S1nhwrq60q-=jMZQ2u8TwwG9HHnQFWrFRx58VF2K6Xi16XA@mail.gmail.com>
Subject: Re: [PATCH 16/38] arm64: dts: mediatek: mt6331: Fix pmic, regulators,
 rtc, keys node names
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
> The node names for "pmic", "regulators", "rtc", and "keys" are
> dictated by the PMIC MFD binding: change those to adhere to it.
>
> Fixes: aef783f3e0ca ("arm64: dts: mediatek: Add MT6331 PMIC devicetree")
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>

Reviewed-by: Fei Shao <fshao@chromium.org>

> ---
>  arch/arm64/boot/dts/mediatek/mt6331.dtsi | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt6331.dtsi b/arch/arm64/boot/d=
ts/mediatek/mt6331.dtsi
> index d89858c73ab1..243afbffa21f 100644
> --- a/arch/arm64/boot/dts/mediatek/mt6331.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt6331.dtsi
> @@ -6,12 +6,12 @@
>  #include <dt-bindings/input/input.h>
>
>  &pwrap {
> -       pmic: mt6331 {
> +       pmic: pmic {
>                 compatible =3D "mediatek,mt6331";
>                 interrupt-controller;
>                 #interrupt-cells =3D <2>;
>
> -               mt6331regulator: mt6331regulator {
> +               mt6331regulator: regulators {
>                         compatible =3D "mediatek,mt6331-regulator";
>
>                         mt6331_vdvfs11_reg: buck-vdvfs11 {
> @@ -258,7 +258,7 @@ mt6331_vrtc_reg: ldo-vrtc {
>                         };
>
>                         mt6331_vdig18_reg: ldo-vdig18 {
> -                               regulator-name =3D "dvdd18_dig";
> +                               regulator-name =3D "vdig18";
>                                 regulator-min-microvolt =3D <1800000>;
>                                 regulator-max-microvolt =3D <1800000>;
>                                 regulator-ramp-delay =3D <0>;
> @@ -266,11 +266,11 @@ mt6331_vdig18_reg: ldo-vdig18 {
>                         };
>                 };
>
> -               mt6331rtc: mt6331rtc {
> +               mt6331rtc: rtc {
>                         compatible =3D "mediatek,mt6331-rtc";
>                 };
>
> -               mt6331keys: mt6331keys {
> +               mt6331keys: keys {
>                         compatible =3D "mediatek,mt6331-keys";
>                         power {
>                                 linux,keycodes =3D <KEY_POWER>;
> --
> 2.50.1
>
>


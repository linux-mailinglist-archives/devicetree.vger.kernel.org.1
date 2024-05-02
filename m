Return-Path: <devicetree+bounces-64498-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6122E8B9844
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2024 11:59:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E63D91F2171D
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2024 09:59:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A83957301;
	Thu,  2 May 2024 09:59:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="PCnEpblM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 781515676F
	for <devicetree@vger.kernel.org>; Thu,  2 May 2024 09:59:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714643982; cv=none; b=O6QzagqpPtKZHq9dmB1ztj98xFkJqRqxDvgs8JisSOOxKefiOIMU5p1+SuiOASo5wxbFgBRH4UtkWnCXoM/955v1vy7g45lPn2OMLCWOUqsjISHHUbD1vFpKjyThxxSXiqvN0eKLzZsUxKzt1VJNWYwj8HlXssu5bXrWqQXmVTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714643982; c=relaxed/simple;
	bh=0VwrMUO3X+y6UpEoWe11LsUQtiTXlZrdy2wyBSrCHUk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=npVQA6HuukRtpNa2HZPfTWNlbwez7VLfI88mEfSfTtTm/Lz76r5rgy4hbSUReON99dVsPIT3buPnnhj8MPB7vXzEct+I0Gb7S1qDZyBTodwKOM4tqJkjFduq3QU6t6NMaP+Xi7WbOTOcw+QmnyuOoRLTaMPVcLr0eZLjkO2V2FY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=PCnEpblM; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-51f45104ef0so273941e87.3
        for <devicetree@vger.kernel.org>; Thu, 02 May 2024 02:59:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1714643979; x=1715248779; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IAWzFtfBZwMQoHv84/W+JImIB5vAq9WxgZXxmYPg6EU=;
        b=PCnEpblMIvnfYoI0CBfMTAacBznA4ZpfckEWfCi/HFn8+IqJAFj8dZGlrFi4bt6m/1
         0lB9E3F0FN8eII3mGwxBfPsHsN7vXZvn9vz2kpc/xQScgMN2bdINWP9up0EZTvh0Iejg
         +idOA/bY83LCw4EIkIPPZM9BKJ97hY1zBbC78=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714643979; x=1715248779;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IAWzFtfBZwMQoHv84/W+JImIB5vAq9WxgZXxmYPg6EU=;
        b=v2Nq7rR9fFaIxxhKLYTQ0tdfW/hPI35F0K3hR44kHypBjjT2fb0sXnkVPRUhgvZGSK
         DCX7KX885qGmrKo2p56EgQt6q/bi66YcfVObbk7Y6/sJgYjVEGwhPxe3nSTZrKp7Z6zc
         za4EQLAT5So0IhnIXjyigchITsAyYKCWgT2sMUhF/3ioJyKvCFEW7k05hvzm8OtPwbeI
         xeeCJ+vVE0WofzjTasUV9VLOiWOoSw5cQN04zrLDuKk9Ww30omWkx0ZE75Lay26IaNLx
         s680nlrkPxiAhvbO53HmQfFbguUdIk8fFKxfwcgP1ks4ItxFfyVZpB+ygg2nNIlXuofk
         CKRA==
X-Forwarded-Encrypted: i=1; AJvYcCWr2ZPVSNYv1woZxizn3kCk79ywWuZ2Ux0GvvsGafXoSbVJRSX8kCSqxN6Oyuo8FI/PZcfZ2HYovvKIDAnaL5EOd7ej1ctjEmrlGg==
X-Gm-Message-State: AOJu0Yxj/46dfBecmTJkEdv9/4PG4gbqnycHYUUkoCTT5Zbu5xGkEooi
	cyMeXBK86e+FqefjgiwxyBg0t8uUXuqxF/GIRV5uuNCHIlAe3V5JB2dTErJZ7uHEp+MNsW4PFUn
	uyHzBTXNlpiynylsJ+cmD6TUiTu0VXvTLkcwG
X-Google-Smtp-Source: AGHT+IEGkMy9wnAsRv/sjRzs/mP6zDLzjdxZZenS550ahLeLjpaIxqNlXTywDzD62yFQysa3FGIxwKwuDOr1BNgiH+Q=
X-Received: by 2002:a05:6512:3c87:b0:51c:cd8d:2865 with SMTP id
 h7-20020a0565123c8700b0051ccd8d2865mr4075910lfv.44.1714643978564; Thu, 02 May
 2024 02:59:38 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240416071410.75620-1-angelogioacchino.delregno@collabora.com> <20240416071410.75620-19-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20240416071410.75620-19-angelogioacchino.delregno@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Thu, 2 May 2024 17:59:27 +0800
Message-ID: <CAGXv+5GddLeYr-CZBFUcpUMR_NV0=0fu6Qp71hvKO6tJdJjF6w@mail.gmail.com>
Subject: Re: [PATCH v5 18/18] arm64: dts: mediatek: mt8186-corsola: Specify
 sound DAI links and routing
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: broonie@kernel.org, lgirdwood@gmail.com, robh@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	matthias.bgg@gmail.com, perex@perex.cz, tiwai@suse.com, 
	trevor.wu@mediatek.com, maso.huang@mediatek.com, 
	xiazhengqiao@huaqin.corp-partner.google.com, arnd@arndb.de, 
	kuninori.morimoto.gx@renesas.com, shraash@google.com, amergnat@baylibre.com, 
	nicolas.ferre@microchip.com, u.kleine-koenig@pengutronix.de, 
	dianders@chromium.org, frank.li@vivo.com, allen-kh.cheng@mediatek.com, 
	eugen.hristev@collabora.com, claudiu.beznea@tuxon.dev, 
	jarkko.nikula@bitmer.com, jiaxin.yu@mediatek.com, alpernebiyasak@gmail.com, 
	ckeepax@opensource.cirrus.com, zhourui@huaqin.corp-partner.google.com, 
	nfraprado@collabora.com, alsa-devel@alsa-project.org, 
	shane.chien@mediatek.com, linux-sound@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 16, 2024 at 3:15=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> The drivers and bindings acquired support for specifying audio hardware
> and links in device tree: describe and link the sound related HW of this
> machine.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>
> ---
>  .../boot/dts/mediatek/mt8186-corsola.dtsi     | 42 ++++++++++++++++---
>  1 file changed, 37 insertions(+), 5 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi b/arch/arm6=
4/boot/dts/mediatek/mt8186-corsola.dtsi
> index 1807e9d6cb0e..afdab5724eaa 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
> @@ -42,7 +42,7 @@ backlight_lcd0: backlight-lcd0 {
>                 default-brightness-level =3D <576>;
>         };
>
> -       bt-sco-codec {
> +       bt-sco {

I remember changing this node from "bt-sco" to "bt-sco-codec" because
of a review comment when I submitted the Corsola dts series.

>                 compatible =3D "linux,bt-sco";
>                 #sound-dai-cells =3D <0>;
>         };
> @@ -223,12 +223,44 @@ sound: sound {
>                 mediatek,adsp =3D <&adsp>;
>                 mediatek,platform =3D <&afe>;
>
> -               playback-codecs {
> -                       sound-dai =3D <&it6505dptx>, <&rt1019p>;
> +               audio-routing =3D
> +                       "Headphone", "HPOL",
> +                       "Headphone", "HPOR",
> +                       "IN1P", "Headset Mic",
> +                       "Speakers", "Speaker",
> +                       "HDMI1", "TX";
> +
> +               hs-playback-dai-link {
> +                       link-name =3D "I2S0";
> +                       dai-format =3D "i2s";
> +                       mediatek,clk-provider =3D "cpu";
> +                       codec {
> +                               sound-dai =3D <&rt5682s 0>;
> +                       };
> +               };
> +
> +               hs-capture-dai-link {
> +                       link-name =3D "I2S1";
> +                       dai-format =3D "i2s";
> +                       mediatek,clk-provider =3D "cpu";
> +                       codec {
> +                               sound-dai =3D <&rt5682s 0>;
> +                       };
>                 };
>
> -               headset-codec {
> -                       sound-dai =3D <&rt5682s 0>;
> +               spk-share-dai-link {
> +                       link-name =3D "I2S2";
> +                       mediatek,clk-provider =3D "cpu";
> +               };
> +
> +               spk-hdmi-playback-dai-link {
> +                       link-name =3D "I2S3";
> +                       dai-format =3D "i2s";
> +                       mediatek,clk-provider =3D "cpu";
> +                       /* RT1019P and IT6505 connected to the same I2S l=
ine */
> +                       codec {
> +                               sound-dai =3D <&it6505dptx>, <&rt1019p>;
> +                       };
>                 };
>         };
>
> --
> 2.44.0
>


Return-Path: <devicetree+bounces-149106-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 36338A3E4AE
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 20:07:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 217CB189DB27
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 19:05:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04E51214200;
	Thu, 20 Feb 2025 19:05:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dWUWI141"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32DA81DE8A8;
	Thu, 20 Feb 2025 19:05:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740078344; cv=none; b=GoxLrYm2DpbugRHYYzI0FO3QlXjyokN7nW8KQPF3Q1eZ0kD/oFOZKgSiNJO8FZKmDyUi25yKSVN/A5/f9LKBf6gtrqp4dcs53PyTv7pgp2wCzAwa2c/Lawn0r1LBtmi4mwtd2S/39MZFhtDDt72QAOJOHhhpIF0RUw1XsH2fcfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740078344; c=relaxed/simple;
	bh=7Q6Q5WJ5jLsdiIjqXRzNZWHgWgvJqZqVEo0Zn5BT6K4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=bCBnU8JBBRDhZmJp6IGWNPemEBJ/Fh6TI2SxHnuooAbcYCoTUEbr71aYbgrjpJJquDPONSapRQRuFrt8oFMmpX0z4JM2Bq5sjaYuIPeamRc4G60wtGXYcXOn/8wbcLeAZt98qYbg0z6Z7G6Q6r7iB0UkantlPqasVo+3GAF9ZIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dWUWI141; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-38f1e8efef5so789855f8f.1;
        Thu, 20 Feb 2025 11:05:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740078341; x=1740683141; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oxXRd6kScNWklP0aI84Uk3jfvKHEaeWScRLyJ37G088=;
        b=dWUWI141+0vA8n+QGvVPjlkNz+DESv4djYG4Rx5Yw8VP5XSjwrj66cgE9ODia4JGrh
         DWdlVnNi/carAqmyKpMRleOi3BW5SRHi26fTMEWAHGmzP9e13FPeCH3yDCy8giR2BrUJ
         TiLR1jRzSAvHdw5yWNk1EcHMXPxQ44zGpem7WcA5SQB8zlK0julXFaBz7/ju6MTuQ0PI
         agp1HxZ7OjL2Pde/IKzgPVcaWKloRsQWZRZW4A7Ims3cqTDyO61mwIBkASa+q/+EtYG9
         Odpdi7rHevslkVjgLX6E8CcppLSUfM8dr2B2kJXVzpYkYZTbOK7mbzI5F6iOr2byykBw
         zUCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740078341; x=1740683141;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oxXRd6kScNWklP0aI84Uk3jfvKHEaeWScRLyJ37G088=;
        b=kPMGHq/XDtdaC3w9TnDQh5EST2qjkH3KM/MJPzT0ZgYJ7HCyzb12Sklm3FiWcltvFQ
         ekot3O+tzjlchnIOu6yPr1BN/OIYsrDZQZrRAY4wq9h0uiEIt/qH0KsMGQPbL5o9Kl5H
         bw6jajcEeS16huJiZbvAIR0bpDUbYimfkHjx1IflH5wv0dgMPM6HuKjOzuNB13iZ80/1
         IV/+EIeiZUSiho4TW683Kyz72NuLqmBQ/2GtTS9kvBco/NF9oZrM0XOZCqa0esRCjTBG
         CgsUnjev7aPWwBeupnaZJ8c2d2J/LFha3jwTEUXTzqCZL5KiR9ar0owXuGweulgLK1Yn
         OSMg==
X-Forwarded-Encrypted: i=1; AJvYcCX5ljQPQLW2k6DRVzHLDHfsKOxcJ6K+hI8nTRKi6VOoCHdMVo0BQ0LSD7HFxAEHrISpCjgefpJXLyKk@vger.kernel.org
X-Gm-Message-State: AOJu0YxzaclsodShf9JWnouuZT13TurajqrN3eBgUBRAJwBeSOq1nlXs
	Nq5hyj03sU0guyqg6Eow5z1MTexP4MeS5MRYhzihiJv1Cd9yw9cI
X-Gm-Gg: ASbGncuT7ItdOU3Dg4+E0Sps06cH/K0+KA0iLhVV0ObszhdNBs7DPdHb4/3GhLJLm60
	C2rOxb6CnQKejvFRVForVvAXKBqYeGYm+kc9aBXsY3HHZW7ED3VkbljWK/hhhtKmNmyNNLG0l9a
	kkaUojQLnIQz9wrlHsYDBxw5D479bTp55W2mcil+HnyPOilbsqLXA22PCyt1ayBiLXUoQD+cldg
	TJr54o0YnLb8P7HY3O5HcNSTGKBrU9dIYMNAjlQGYPaKpPgy+XVJuxVKJi9PNHxGvUQZlfUkf47
	wIyunG61uyfwsUALvRoh3UwL5V4qgLI9hmJVUUb85E59l1QdQ6UOFG7emTVmwpvLcRM=
X-Google-Smtp-Source: AGHT+IHGlrHIltTgTcFWFI4O0gp4KyFom8vkd8k5Kir49mlEGZQwrYgDsE0U7DMZu3givQVd9isJuA==
X-Received: by 2002:a05:6000:1ac6:b0:38f:6149:9235 with SMTP id ffacd0b85a97d-38f6e95f233mr316305f8f.16.1740078341247;
        Thu, 20 Feb 2025 11:05:41 -0800 (PST)
Received: from jernej-laptop.localnet (86-58-6-171.dynamic.telemach.net. [86.58.6.171])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38f259f8121sm21083169f8f.88.2025.02.20.11.05.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Feb 2025 11:05:40 -0800 (PST)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Chen-Yu Tsai <wens@csie.org>, Samuel Holland <samuel@sholland.org>,
 Ryan Walklin <ryan@testtoast.com>
Cc: linux-sound@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org,
 Chris Morgan <macromorgan@hotmail.com>, Rob Herring <robh@kernel.org>,
 Philippe Simons <simons.philippe@gmail.com>,
 Ryan Walklin <ryan@testtoast.com>
Subject:
 Re: [PATCH v3 2/5] ASoC: sun4i-codec: correct dapm widgets and controls for
 h616
Date: Thu, 20 Feb 2025 20:05:39 +0100
Message-ID: <2733255.KRxA6XjA2N@jernej-laptop>
In-Reply-To: <20250214220247.10810-3-ryan@testtoast.com>
References:
 <20250214220247.10810-1-ryan@testtoast.com>
 <20250214220247.10810-3-ryan@testtoast.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Dne petek, 14. februar 2025 ob 23:02:24 Srednjeevropski standardni =C4=8Das=
 je Ryan Walklin napisal(a):
> The previous H616 support patch added a single LINEOUT DAPM pin switch
> to the card controls. As the codec in this SoC only has a single route,
> this seemed reasonable at the time, however is redundant given the
> existing DAPM codec widget definitions controlling the digital and
> analog sides of the codec.
>=20
> It is also insufficient to describe the scenario where separate
> components (muxes, jack detection etc) are used to modify the audio
> route external to the SoC. For example the Anbernic RG(##)XX series of
> devices uses a headphone jack detection switch, GPIO-controlled speaker
> amplifier and a passive external mux chip to route audio.
>=20
> Remove the redundant LINEOUT card control, and add a Speaker pin switch
> control and Headphone DAPM widget to allow control of the above
> hardware.
>=20
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Signed-off-by: Ryan Walklin <ryan@testtoast.com>
> ---
>  sound/soc/sunxi/sun4i-codec.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/sound/soc/sunxi/sun4i-codec.c b/sound/soc/sunxi/sun4i-codec.c
> index 886b3fa537d26..f24bbefeb3923 100644
> --- a/sound/soc/sunxi/sun4i-codec.c
> +++ b/sound/soc/sunxi/sun4i-codec.c
> @@ -1916,10 +1916,11 @@ static const struct snd_soc_component_driver sun5=
0i_h616_codec_codec =3D {
>  };
> =20
>  static const struct snd_kcontrol_new sun50i_h616_card_controls[] =3D {
> -	SOC_DAPM_PIN_SWITCH("LINEOUT"),
> +	SOC_DAPM_PIN_SWITCH("Speaker"),

Will this break sun50i-h616-x96-mate and sun50i-h616-orangepi-zero based bo=
ards?
If so, other solution must be found.

Best regards,
Jernej

>  };
> =20
>  static const struct snd_soc_dapm_widget sun50i_h616_codec_card_dapm_widg=
ets[] =3D {
> +	SND_SOC_DAPM_HP("Headphone", NULL),
>  	SND_SOC_DAPM_LINE("Line Out", NULL),
>  	SND_SOC_DAPM_SPK("Speaker", sun4i_codec_spk_event),
>  };
>=20






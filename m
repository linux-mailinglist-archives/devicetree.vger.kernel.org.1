Return-Path: <devicetree+bounces-251799-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 87C23CF72EF
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 09:02:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EA61230754F0
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 07:58:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D972326927;
	Tue,  6 Jan 2026 07:58:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Dqlj5Vnp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63E8841C63
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 07:58:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767686310; cv=none; b=KqevCbhRAeUY3EDW4XdwMV4WyAa9BfVWFlLquPWmRSdt3ZC9jDc95JdvLZclTzDqwy+4ewRvHvjoRfpM6j3avQ0GCptG9sDEK88OdohQHE+q14hTSaXNl7SUIsAECpYIfMzMgY7Mhb/2VQcjOFEs/wxD0GoGwhT+UsMIK4IBXEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767686310; c=relaxed/simple;
	bh=MtkIYuoA74SG2oZ3h+Ie7HThkUa9MD0Zemt0Da+cK+0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=H01iTKQ9rTzayiwSHzC4v17Q6GfelMqFApXQg0at/KFLbEN8iHf5q3lokfjsx2zTS/iXK3b9j37icj6iyRJV1/qbZQu5jOh9DidKFWwUgeagMtWzL8ZDbsfCVuxXPfa05IqZmuxDrB6SbkaFcOxTNE3+yH4RTF3OHEnMbmN9Z84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Dqlj5Vnp; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-7aae5f2633dso908856b3a.3
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 23:58:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767686307; x=1768291107; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bLBza2X5HD47Z5qYWRdV/0voLmxJvN9RKBL9LmOat68=;
        b=Dqlj5Vnp0iSvTml9CsmhWTfwI9xsxMLGbdgzuIedeZdJHN2Az2aZchGsj+BbUHPmko
         KriSC/HeYad+c8vhHfrQsQtCuEyK0KVe9FUVPGqcOK68t6gVfoom2VaxMrDRMnCNQjQh
         hb9Y0q3Rx1+cKnlq6nLbaSWRBn4Utj1MmzqpN7b2s1tMMIPyaGQ4H3wOOo8AGpuiBq4T
         jws5W/56ZJdtpROsedgmN+nGKelqsIuMO561lcqfe5E1VbBWDnFuLQdeaUOqW02cJ1pQ
         26mti0uxWEbRId9HEG5oVj0mYtahpmm7Onl8QTekiu+GcSgiHQzf24Vvyy/TI/Su6h00
         Od5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767686307; x=1768291107;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=bLBza2X5HD47Z5qYWRdV/0voLmxJvN9RKBL9LmOat68=;
        b=rFaRkiONK/aw1rEWqE8kp6y3LfyLjzqkH4gfEnY7s9rJjqHNsj1CF3YN2bleWCfzIq
         q7JuG4g8QmuUtwtDnPOU+eWmDnQLi99TEFfOygKKcfX/oTufKIpF1SJfAgMzYWvH85Fn
         C8LjU5pZJ918CtyT7+lNguxKErmJc55FYTebkUL1XWPsW3pBDtgEWt/1P6rSVYH9P4I5
         pdiarYTkP/9jDo05qpzMLfCo+02BVLs/b2L+FuF5NHa/W806elvUDnXcUJ13Wdbr8oyP
         bqisYxyQ4aA2gbujc8c5A8PNTI0Okgf9oWUepzU3RHRIHKN3QKsuMdcAS7tsbrfW3TnX
         FWPA==
X-Forwarded-Encrypted: i=1; AJvYcCXG4Tc1WkNh6VG/gdIbkHot/oLaCiQbVgibHtXEqeWe+yyewtinVJEBLpoHqK0HlqWS8j3qZMfj7sOZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yylgbss1kUnSt+Sqgy4MbqkP/tJzkQ3HZapsB5IfLgXrg13gXbd
	z1OeJmNQ6UN20Uffzi5hGVmdfr8MOKd7rW73E9wr1BylZhcDmNtzRtVBXcxJ2HdT0KZKHgStUky
	zznyAtZMUccpBlp6DXZf6LqAI5/8920w=
X-Gm-Gg: AY/fxX5q1SaFEZA0Np64sGD9Njc+MYOcmrWq1AsgHJzZeFnaywEhI16fO97vlUdXLVM
	Ah/xqquNio7xTnQBKenkboqBRygV/orfuce+1dNTm9eRhmF20W5TAlYydiXQ8aGSmG3hGSC45gG
	DzakvU+R7Ou5HhVLRUvFjGvYmssagkUDMFphaO2KgZG/gJass2sbaSkqZIqr2GxYMDmdXwpk28n
	bzd+2YI4vZCRh+716bFT6sAko85sJodjV7bPMZcArygf4kMqfQGy9aBk6klhtrDTCWjVnc=
X-Google-Smtp-Source: AGHT+IEHlZyXdXcxR5RsluHTNejvpJpV18nZCBNr3m6Nqhf2aV0r3VQUhWRXd06ytprpu4gzIW1qts9QEpxINJHvE4c=
X-Received: by 2002:a05:6a20:7345:b0:366:1955:e965 with SMTP id
 adf61e73a8af0-38982240dedmr1889055637.5.1767686306654; Mon, 05 Jan 2026
 23:58:26 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251229111839.4009517-1-shengjiu.wang@nxp.com> <20251229111839.4009517-3-shengjiu.wang@nxp.com>
In-Reply-To: <20251229111839.4009517-3-shengjiu.wang@nxp.com>
From: Shengjiu Wang <shengjiu.wang@gmail.com>
Date: Tue, 6 Jan 2026 15:58:14 +0800
X-Gm-Features: AQt7F2qmHeLdaE0xHM15dTnD0T7XxV2U60ncNvPLhWTQmD-57Nj_7ZRqCsdpot4
Message-ID: <CAA+D8ANu4i7BV-gCcXOAeUSgFd5-rULwfu36DOdeD=n9779LLQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] ASoC: simple-card-utils: Add support of
 "hp-pin-name-headphone" property
To: Shengjiu Wang <shengjiu.wang@nxp.com>
Cc: broonie@kernel.org, kuninori.morimoto.gx@renesas.com, lgirdwood@gmail.com, 
	perex@perex.cz, tiwai@suse.com, linux-sound@vger.kernel.org, 
	linux-kernel@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 29, 2025 at 7:23=E2=80=AFPM Shengjiu Wang <shengjiu.wang@nxp.co=
m> wrote:
>
> The 'Headphones Jack' name used in current simple-card and audio-graph
> card driver can't be recognized by user space service daemon like
> pulseaudio and pipewire, which only recognize the 'Headphone Jack',
> so add 'hp-pin-name-headphone' property for this case and it won't block
> original use cases for 'Headphones Jack'
>
> Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
> ---
>  sound/soc/generic/simple-card-utils.c | 22 ++++++++++++++++++++--
>  1 file changed, 20 insertions(+), 2 deletions(-)
>
> diff --git a/sound/soc/generic/simple-card-utils.c b/sound/soc/generic/si=
mple-card-utils.c
> index bdc02e85b089..3d2194e23373 100644
> --- a/sound/soc/generic/simple-card-utils.c
> +++ b/sound/soc/generic/simple-card-utils.c
> @@ -779,6 +779,24 @@ int simple_util_parse_pin_switches(struct snd_soc_ca=
rd *card,
>  }
>  EXPORT_SYMBOL_GPL(simple_util_parse_pin_switches);
>
> +static const char *simple_util_parse_hp_pin_name(struct snd_soc_card *ca=
rd,
> +                                                char *prefix, char *pin)
> +{
> +       struct device_node *node =3D card->dev->of_node;
> +       const char *str =3D NULL;
> +       char prop[128];
> +
> +       if (!prefix)
> +               prefix =3D "";
> +
> +       snprintf(prop, sizeof(prop), "%s%s", prefix, "hp-pin-name-headpho=
ne");
> +
> +       if (of_property_present(node, prop))
> +               str =3D "Headphone";
> +
> +       return pin ? pin : (str ? str : "Headphones");
> +}
> +
>  int simple_util_init_jack(struct snd_soc_card *card,
>                           struct simple_util_jack *sjack,
>                           int is_hp, char *prefix,
> @@ -787,7 +805,7 @@ int simple_util_init_jack(struct snd_soc_card *card,
>         struct device *dev =3D card->dev;
>         struct gpio_desc *desc;
>         char prop[128];
> -       char *pin_name;
> +       const char *pin_name;
>         char *gpio_name;
>         int mask;
>         int error;
> @@ -797,7 +815,7 @@ int simple_util_init_jack(struct snd_soc_card *card,
>
>         if (is_hp) {
>                 snprintf(prop, sizeof(prop), "%shp-det", prefix);
> -               pin_name        =3D pin ? pin : "Headphones";

If the DT binding is not a choice,  shall I change the "Headphones" to
"Headphone"
directly?  I don't know if this change will block any case?

    pin_name        =3D pin ? pin : "Headphone";

best regards
Shengjiu Wang

> +               pin_name =3D simple_util_parse_hp_pin_name(card, prefix, =
pin);
>                 gpio_name       =3D "Headphone detection";
>                 mask            =3D SND_JACK_HEADPHONE;
>         } else {
> --
> 2.34.1
>
>


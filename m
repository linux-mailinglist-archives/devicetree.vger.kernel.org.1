Return-Path: <devicetree+bounces-150659-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F8DFA4329D
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 02:49:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 182DA1782B8
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 01:48:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 270526A33F;
	Tue, 25 Feb 2025 01:48:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="UNHxJ2UU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66776101F2
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 01:48:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740448110; cv=none; b=oe39pdzffSrf6QmjWBGK0avfMI/VgFETpuYOz/dr5k0vbL2W8edX7XVCO/JmJFYJTAmhEZZ8102g/UnPyJlfkWKw3HJqa1eZeIsZ35E/oB8CXaLCXn7x3TPlCKsqqa62jspzDfn6Z3Rekv1H8yZIuBn2OqXLv2qSkmrh2Fx+SGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740448110; c=relaxed/simple;
	bh=ANDk1f1ewGyRyWWZvJv7bwXf/B8TgaiUTyfdL2L3ZVE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=S+WpxuuABj07wTCLGJVG0yI/4L5OkO5i2D54nN/BBeuHbrf+tPNO7VH8y0Vd65bMwyh9xounpEm+mhZQmvv+6TCL0TxpbLhxoEY1dK2niSg590ClPzRxibQ4nkFJAoI+OHqFFMwwZluSWTC6MqMS4ABMzTeohXla5l2+yir3cmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=UNHxJ2UU; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-abbdc4a0b5aso931293366b.0
        for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 17:48:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1740448106; x=1741052906; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=loyJuf6zNk03z78etJFgemOo09eYVwdWkJ6KQXv4Jfk=;
        b=UNHxJ2UUYOuko2IGbmoyx4HJQ3XJScQop1BfcE3mLzMMY1L/M55bROHB3aBkGzetNJ
         /uNWPu2l0Hus2Nf7cmupu7tiLAec87b7VarSN6K0fLcOt0E/rnwaT4RjiOEgxQfJttWz
         my+EzXJ9WsOKackJA9keJOwhPMzekAuYx83mA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740448106; x=1741052906;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=loyJuf6zNk03z78etJFgemOo09eYVwdWkJ6KQXv4Jfk=;
        b=a02iO8D5EAJfBo+cGN6sIE3HEJeDx9eRLhaGMDQS0zxIa/RClsypHer3S/1lfuhJYe
         Up/MNaquv13y+ddOPaRpAOWqb0piD5jHGip/3eSYeYYKYEByg50SFyL9DOHyq9Alv5N2
         TeMzsQYj3v53HsR5BtGrJUZLGKXWGoU+BFH//3PXfZm2Rj6Dc4NzQtHQsnKG4iotxrNe
         lnymW/BDYjsVyh6K5WO/sKZw5NvAu8du8aTeihEQIUa2dnHX37XB9kg5FK7QPMqd5dAp
         XqkiY0XbfE+az2MI6IzS0trfSNew8t3ZbmXljY2DE2cirKOBl9+P0uaqYKh/HEPBjtHH
         6A0g==
X-Forwarded-Encrypted: i=1; AJvYcCVaP0F69AEvJ2eNJPoWIkw06cxt4Z0HkDRjm19Is7fPnj9lpWNnI/sYP0O3325yKHZWY+5hJINfJlpw@vger.kernel.org
X-Gm-Message-State: AOJu0YzxR2b6Z5W3sg9jNWCGhUOU8eiHm9W7NQYlpQxnlC0A/U3KipBY
	sDhrhtjW3on78cRI3pOE636zBu/r7nky9kIw90hDBG5Ixs8ueNjvKfmhaIH/XzQmIUz60LFrwEe
	o6gYd
X-Gm-Gg: ASbGnctaWNK+rbgVBBRl0drO4TJRdnjK+CzHziH1C5rYRq8gsws/KJAlYgkJk+1K8VV
	KzYh7XYWh6R2QG4PwS95rb8L4IwjZ7+AZr5DG3H8efmjUkpN8pavvaui8gA2yd/tcFWpo73Sw7K
	Txbr1wV3jTh9EDzgmljZMAFMX7KCzitBeg7Z57ekGkkFs4M0RN6alluVt/qIqRFmVmkBalZWAJN
	SklhyUbFrK5UgtyjU9sXBJOtZXZxT6vXzHavXzjKQCGprAllkW/xZMKzprGTavMJD/CjSj2d4pt
	tB1tJ/2y6qXToV7vAOv/xP5vkUVeXWste27HpMC2I0z3P1MkoxMY2di7QZl5XNMb3A==
X-Google-Smtp-Source: AGHT+IHCYlULebt4TepMohWBjqBoEdc2PuaEtirMdvElKbA8MvOzteJxvcNp5ykXvoqyV8RNiLDVwA==
X-Received: by 2002:a17:907:7717:b0:ab7:f92c:8fde with SMTP id a640c23a62f3a-abc0b1699f9mr1346322766b.30.1740448106316;
        Mon, 24 Feb 2025 17:48:26 -0800 (PST)
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com. [209.85.208.41])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abed1cd5664sm54511066b.29.2025.02.24.17.48.25
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2025 17:48:25 -0800 (PST)
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5debbced002so9175493a12.1
        for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 17:48:25 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVBrIgcCkqoijjnuPgUJnAZwH2TEOgG90v1aoXxuOtZFlc1/yObpRX9cBByyntB1i9nr3Rdxo2fn5hD@vger.kernel.org
X-Received: by 2002:a05:6512:1253:b0:545:6a2:e59 with SMTP id
 2adb3069b0e04-54838cb627cmr5635189e87.18.1740447736562; Mon, 24 Feb 2025
 17:42:16 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250224081325.96724-1-damon.ding@rock-chips.com> <20250224081325.96724-11-damon.ding@rock-chips.com>
In-Reply-To: <20250224081325.96724-11-damon.ding@rock-chips.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 24 Feb 2025 17:42:05 -0800
X-Gmail-Original-Message-ID: <CAD=FV=WS_2JAKMyFFmrNtaN7-O4dh2hOXHc25FytDxXAjAr+5A@mail.gmail.com>
X-Gm-Features: AWEUYZkb9AduQv4S2t7Q6Lb4ouepbii0QdSB144heJ2UJlKArYXhKCxoqxEOhvg
Message-ID: <CAD=FV=WS_2JAKMyFFmrNtaN7-O4dh2hOXHc25FytDxXAjAr+5A@mail.gmail.com>
Subject: Re: [PATCH v7 10/15] drm/rockchip: analogix_dp: Add support to get
 panel from the DP AUX bus
To: Damon Ding <damon.ding@rock-chips.com>
Cc: heiko@sntech.de, andy.yan@rock-chips.com, hjc@rock-chips.com, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org, 
	Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, 
	dmitry.baryshkov@linaro.org, sebastian.reichel@collabora.com, 
	cristian.ciocaltea@collabora.com, boris.brezillon@collabora.com, 
	l.stach@pengutronix.de, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Feb 24, 2025 at 12:14=E2=80=AFAM Damon Ding <damon.ding@rock-chips.=
com> wrote:
>
> @@ -392,11 +393,27 @@ static const struct component_ops rockchip_dp_compo=
nent_ops =3D {
>         .unbind =3D rockchip_dp_unbind,
>  };
>
> +static int rockchip_dp_link_panel(struct drm_dp_aux *aux)
> +{
> +       struct analogix_dp_plat_data *plat_data =3D analogix_dp_aux_to_pl=
at_data(aux);
> +       struct rockchip_dp_device *dp =3D pdata_encoder_to_dp(plat_data);
> +       int ret;
> +
> +       ret =3D drm_of_find_panel_or_bridge(dp->dev->of_node, 1, 0, &plat=
_data->panel, NULL);
> +       if (ret && ret !=3D -ENODEV)
> +               return ret;

Can you explain why you treat -ENODEV as a non-error case here? Maybe
this is for the non-eDP case (AKA the DP case) where there's no
further panels or bridges? Maybe a comment would be helpful to remind
us?


> +       ret =3D component_add(dp->dev, &rockchip_dp_component_ops);
> +       if (ret)
> +               return ret;
> +
> +       return ret;

nit: the above could just be:

return component_add(dp->dev, &rockchip_dp_component_ops);


> @@ -448,9 +460,16 @@ static int rockchip_dp_probe(struct platform_device =
*pdev)
>         if (IS_ERR(dp->adp))
>                 return PTR_ERR(dp->adp);
>
> -       ret =3D component_add(dev, &rockchip_dp_component_ops);
> -       if (ret)
> -               return ret;
> +       ret =3D devm_of_dp_aux_populate_bus(analogix_dp_get_aux(dp->adp),=
 rockchip_dp_link_panel);
> +       if (ret) {
> +               if (ret !=3D -ENODEV)
> +                       return dev_err_probe(dp->dev, ret,
> +                                            "failed to populate aux bus =
: %d\n", ret);

IIRC this -ENODEV case is for old legacy panels that aren't listed
under the aux bus in the device tree. Maybe a comment would be helpful
to remind us?

nit: don't need the %d in your error message. dev_err_probe() already
prints the error code.


> +               ret =3D rockchip_dp_link_panel(analogix_dp_get_aux(dp->ad=
p));
> +               if (ret)
> +                       return ret;
> +       }
>
>         return 0;

You can get rid of a few of your return cases by just returning "ret" here.


-Doug


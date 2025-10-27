Return-Path: <devicetree+bounces-231262-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D2CA9C0BB13
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 03:39:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CCC18189F9E0
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 02:39:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 454632D24B7;
	Mon, 27 Oct 2025 02:39:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E8E915C158
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 02:39:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761532763; cv=none; b=cmGvKQUXJWPHQQKnmVfMCft0OTSVo+9WO/Drz6wEVdCzekEVrcJPqcwE9qsx/8ALCkm6fOrAGkgKEGmoWpBP+KyLvoAmR2nY6Y5iUmjCrP7AZ4O+sWDQ1JP+39ZRu9JDsnoi5expsfSWLI7mlpvMqlo37xR6TvpMoljwdH/zyhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761532763; c=relaxed/simple;
	bh=evQekrEcmyRdqKp1jJZClGlbzLxhN98LFdFpjeGdBkg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ezE/E7h1+ewSh18oPw7CgdaqtmQBj7xRQO/jKhJqaeW4708oVxQTLvcSlpdj7sK05N8176sLKgZUsVku0fhCDNI6/VCvopObAImfuXoD62rVg+jmgmboF+OzDpcgPEbqc6pXKTEGpYWfTh+pQ7TmqSPaZh3D24jvRV5E4as4Tnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=csie.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=csie.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-592f29e273bso3983402e87.0
        for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 19:39:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761532757; x=1762137557;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=V0xO3eccx9J1JFeRrYmbh54SIcFbkNO2ChisP5DHSmA=;
        b=OcNHkFc6JscWGoHtJvzTzwCqdBpSg35Pi7KmMpkqPKMhA60fmLFuI+Umv/n/vdJ+K/
         NYP2MQ4Ebz7c5mcIndw/UUQuQTcl8R+C6YvQKGxDVeAC+WmfX8Fcm/xhavwIjFl/kbcm
         Flap51K3Qx/6Y0XxDhHv+5iotSLvV0v2yOMYi8W+rlpqhptdHCi/OlWVBmV151m9cQeC
         8+2z7Y2afjaWku7NH5IYX1iqy5r37BJZdChUBecYabUpVX33CZHAyKi64YNEP6BakUqM
         Yed4hWgdj9k/lPLUXWYE6LCIiohXK5QfI4+1P0GoYWBnSUJaDlb/BlsfEbPzSgua1JsZ
         5KYw==
X-Forwarded-Encrypted: i=1; AJvYcCXDwfFvs3/sVCXDt+SlzC1rCdIP4z4LWxspFe3C3TdFLJxQLX8fsUaj4CY2GntvAtBs8MXWMSyGBXAU@vger.kernel.org
X-Gm-Message-State: AOJu0YynRvi+FqrF/6QkOYqM3YEBNy60/MzQFLuOSTu+KSTtA/Opjhyx
	LWmOoyggOPtYBK90Ign0pLV4aVFRyBaPE1GZxClRN0S1AlMb/nCrVjVuJsMToJaDOF8=
X-Gm-Gg: ASbGncs1lq6BzYNgRkf3i3nHCtkdcgvsUbqmTevj7DLhpXBD6jFxeRH2nFjvkFykYl2
	gu1GAV/HFsP9Inzgp2jzDY/dA1Ak3WZDJ/K2TSVaFtoBfD2M5Pju6EXLfFsgi3azEXYve+P/Z3A
	6HY771gMecsJgCc58RxPQP75n8Catb8LxE++TcFkXbtwTthP6pd6zvFtpwh/prFlbShL1c4MPhd
	eEB6SDQe7sgrK8+aBcAHGUH1AhJIn/sDY9Ir1pDDU6fzbpEkxa6skJsYoPOS00ULR4E5Nyix45b
	N44Qu5+YHnUF6nH+xzap4qGDj0zMPkgJNYCGi4WMpZNRo8jx9nqkfknq8mGoRuqOCaykvnb1km1
	jx0tnrlNp8TlZPRZCQbiSCkPQQbBd+QzTHknOl2r8xoM9dHjmwzfufK7Ea/vY7QcD+2rxHj/1AE
	/IWJ46zKOuKJUUh3iWfSyQPLS8/rIkMTdO
X-Google-Smtp-Source: AGHT+IGvM2aRmnu7GA8G2gvNXGw3j4+iftCtbFKEOGU8W7oPyxOpBUXfFKCj9nBNvSVCCR3PzytO7w==
X-Received: by 2002:a05:6512:3b07:b0:584:2746:c6d8 with SMTP id 2adb3069b0e04-592f5a598b3mr3818460e87.29.1761532756961;
        Sun, 26 Oct 2025 19:39:16 -0700 (PDT)
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com. [209.85.208.176])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59301f50a63sm1975534e87.42.2025.10.26.19.39.14
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Oct 2025 19:39:16 -0700 (PDT)
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-376466f1280so62868721fa.0
        for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 19:39:14 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCU3c/2PZXS4h3ShODPhrymlCgeWpCBNJVsj/YONhC8RieGPjD3FZjCbNU2IKFsfllMJ4VEtW/4bEI6v@vger.kernel.org
X-Received: by 2002:a05:651c:1509:b0:376:2802:84a8 with SMTP id
 38308e7fff4ca-378d6f87cf1mr39477651fa.46.1761532753914; Sun, 26 Oct 2025
 19:39:13 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251025043129.160454-1-iuncuim@gmail.com> <20251025043129.160454-3-iuncuim@gmail.com>
In-Reply-To: <20251025043129.160454-3-iuncuim@gmail.com>
Reply-To: wens@csie.org
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 27 Oct 2025 10:39:00 +0800
X-Gmail-Original-Message-ID: <CAGb2v656qzX3YrcuTt++=-r5JCyDKgGB8NYTAM3TpyRtAwdibw@mail.gmail.com>
X-Gm-Features: AWmQ_bltF2M2RvHvljsl22XgW5kEnSwcYVFG9c-kdXV1SwRk_st0sy4RKS89u_w
Message-ID: <CAGb2v656qzX3YrcuTt++=-r5JCyDKgGB8NYTAM3TpyRtAwdibw@mail.gmail.com>
Subject: Re: [PATCH v3 2/6] thermal/drivers/sun8i: add gpadc clock
To: iuncuim <iuncuim@gmail.com>
Cc: Vasily Khoruzhick <anarsoul@gmail.com>, Yangtao Li <tiny.windzz@gmail.com>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Andre Przywara <andre.przywara@arm.com>, 
	linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Oct 25, 2025 at 12:32=E2=80=AFPM iuncuim <iuncuim@gmail.com> wrote:
>
> From: Mikhail Kalashnikov <iuncuim@gmail.com>
>
> Some processors (e.g. Allwinner A523) require GPADC clocking activation f=
or
> temperature sensors to work. So let's add support for enabling it.
>
> Signed-off-by: Mikhail Kalashnikov <iuncuim@gmail.com>

Reviewed-by: Chen-Yu Tsai <wens@kernel.org>

> ---
>  drivers/thermal/sun8i_thermal.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/drivers/thermal/sun8i_thermal.c b/drivers/thermal/sun8i_ther=
mal.c
> index 226747906..c02c398b0 100644
> --- a/drivers/thermal/sun8i_thermal.c
> +++ b/drivers/thermal/sun8i_thermal.c
> @@ -66,6 +66,7 @@ struct tsensor {
>  };
>
>  struct ths_thermal_chip {
> +       bool            has_gpadc_clk;
>         bool            has_mod_clk;
>         bool            has_bus_clk_reset;
>         bool            needs_sram;

We could optimize this using bit fields instead. This can be done in a late=
r
patch if you want to do it.


ChenYu

> @@ -89,6 +90,7 @@ struct ths_device {
>         struct regmap_field                     *sram_regmap_field;
>         struct reset_control                    *reset;
>         struct clk                              *bus_clk;
> +       struct clk                              *gpadc_clk;
>         struct clk                              *mod_clk;
>         struct tsensor                          sensor[MAX_SENSOR_NUM];
>  };
> @@ -417,6 +419,12 @@ static int sun8i_ths_resource_init(struct ths_device=
 *tmdev)
>         if (ret)
>                 return ret;
>
> +       if (tmdev->chip->has_gpadc_clk) {
> +               tmdev->gpadc_clk =3D devm_clk_get_enabled(&pdev->dev, "gp=
adc");
> +               if (IS_ERR(tmdev->gpadc_clk))
> +                       return PTR_ERR(tmdev->gpadc_clk);
> +       }
> +
>         if (tmdev->chip->needs_sram) {
>                 struct regmap *regmap;
>
> --
> 2.51.0
>
>


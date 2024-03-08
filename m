Return-Path: <devicetree+bounces-49520-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F5C3876C92
	for <lists+devicetree@lfdr.de>; Fri,  8 Mar 2024 22:58:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 038E81F2211F
	for <lists+devicetree@lfdr.de>; Fri,  8 Mar 2024 21:58:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FCB65FB8D;
	Fri,  8 Mar 2024 21:58:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 905805F564
	for <devicetree@vger.kernel.org>; Fri,  8 Mar 2024 21:58:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709935109; cv=none; b=F7ppYH/0j2kwlwjuQykzUc8SD6U+rRiePz9DNu7I4Gg4SDrSRFwYW1GsE0PLZNGW/3bT2qOOXbK9oOeDaMrzx0zeCfteTYM83/N1rjh5YfluU1Fvpljz9VhSGqKoXLWVgDjsCpc7a6aCT6EpB4Ww4TCk6Vr4Of7MyAABnbbKIQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709935109; c=relaxed/simple;
	bh=jdRp3ycnJ2inLRjB5QbGRF0M5UnIWgjy+M+stLJdElI=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=IcMXtrrHX6qJOiC2oDF0X4CAzAYW/kZD7TTd3RwmGyBByz8RwB2IQnwIvyppxSE/Khfi8N35D0S/UksHV1dnb/c/RJh49CNkVYKk1qmaf8Io15WE/WFL/Lxy/c4c0au0xr2l4Q23Xuker7cwCbJj+7iCCUmoc1ABtcT6uFUCEts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org; spf=pass smtp.mailfrom=baylibre.com; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-6e5c0be115aso1923024b3a.3
        for <devicetree@vger.kernel.org>; Fri, 08 Mar 2024 13:58:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709935107; x=1710539907;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ssskNoWRSgCf0JIsEmdc/9vm6xbNQG/h290+Hjyy4Ms=;
        b=W6VNiSsySU7gy0HH3+Sh4Gm7C+bs913Zc8UP92XUzIS6dIzVECb5vU3nxttrJi0OSW
         nSdGukY9nYs9JgV4t4zp5dDp6v8PLImkkfUT8eiFJYsFe44OPzM2d1OG+c7/lS8AUBG4
         2Ef2/axhJVjybDmzpcrVw1KDrV2ce2UpPb/nojtnmn1spSefL7IF8QT0cZIXMABx5JJi
         GB3niaFLvO6ni6VwKP4V3FxuKPX7CCxlUH6Wp6gIgcU0/UE5ZXqNft5UU7UwMtFvns48
         Np7t9jijmzYeO8obnh4Z0u+8/Kd6KWO1Ga7t7M7ClSBpI1Cequuu1zQ6J4l2sg/2whx9
         ew4g==
X-Forwarded-Encrypted: i=1; AJvYcCWDa5LGV7191jB6WGFHHJgUIlMd33z/TusFvIoMkcH19fb4IuFgFN/nAAQiaIeSgyFwa60p/hRGsm3owSRD+arc10dsxATIcxstjQ==
X-Gm-Message-State: AOJu0Yze7radkKFwzAvvlS3Le4W/p/o02dOHhPbqo7AR7WRr1yK1Tux2
	qljDfdSkdHed+5bymy5wKJKMvyJW0RZZ4dsVpTK2tigrPbcWdU/ptg9q2HYjKgU=
X-Google-Smtp-Source: AGHT+IFZ/B9Q9BM4+JaRrVPqYSOZwZirEIB9Olp87R9nCLM6pykqEyS178FOw4nQALVX/Vp33qnx1A==
X-Received: by 2002:a05:6a20:1454:b0:1a0:e944:15b7 with SMTP id a20-20020a056a20145400b001a0e94415b7mr357270pzi.5.1709935106742;
        Fri, 08 Mar 2024 13:58:26 -0800 (PST)
Received: from localhost (71-212-63-227.tukw.qwest.net. [71.212.63.227])
        by smtp.gmail.com with ESMTPSA id g19-20020a631113000000b005cd8044c6fesm167442pgl.23.2024.03.08.13.58.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Mar 2024 13:58:26 -0800 (PST)
From: Kevin Hilman <khilman@kernel.org>
To: =?utf-8?Q?Th=C3=A9o?= Lebrun <theo.lebrun@bootlin.com>, Greg
 Kroah-Hartman
 <gregkh@linuxfoundation.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Roger Quadros <rogerq@kernel.org>, Peter Chen
 <peter.chen@kernel.org>, Pawel Laszczak <pawell@cadence.com>, Nishanth
 Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo
 <kristo@kernel.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, =?utf-8?Q?Gr=C3=A9gor?=
 =?utf-8?Q?y?= Clement
 <gregory.clement@bootlin.com>, Alan Stern <stern@rowland.harvard.edu>,
 linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 =?utf-8?Q?Th=C3=A9o?=
 Lebrun <theo.lebrun@bootlin.com>
Subject: Re: [PATCH v4 4/9] usb: cdns3-ti: support reset-on-resume behavior
In-Reply-To: <20240307-j7200-usb-suspend-v4-4-5ec7615431f3@bootlin.com>
References: <20240307-j7200-usb-suspend-v4-0-5ec7615431f3@bootlin.com>
 <20240307-j7200-usb-suspend-v4-4-5ec7615431f3@bootlin.com>
Date: Fri, 08 Mar 2024 13:58:25 -0800
Message-ID: <7h4jdgperi.fsf@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Th=C3=A9o Lebrun <theo.lebrun@bootlin.com> writes:

> Add match data support, with one boolean to indicate whether the
> hardware resets after a system-wide suspend. If hardware resets, we
> force execute ->runtime_resume() at system-wide resume to run the
> hardware init sequence.

Is "whether the hardware resets after a system-wide suspend" really a
function of the IP itself, or rather whether the IP is in a power domain
that might power down?

> No compatible exploits this functionality, just yet.
>
> Signed-off-by: Th=C3=A9o Lebrun <theo.lebrun@bootlin.com>
> ---
>  drivers/usb/cdns3/cdns3-ti.c | 27 +++++++++++++++++++++++++++
>  1 file changed, 27 insertions(+)
>
> diff --git a/drivers/usb/cdns3/cdns3-ti.c b/drivers/usb/cdns3/cdns3-ti.c
> index 4c8a557e6a6f..f76327566798 100644
> --- a/drivers/usb/cdns3/cdns3-ti.c
> +++ b/drivers/usb/cdns3/cdns3-ti.c
> @@ -57,9 +57,14 @@ struct cdns_ti {
>  	unsigned vbus_divider:1;
>  	struct clk *usb2_refclk;
>  	struct clk *lpm_clk;
> +	const struct cdns_ti_match_data *match_data;
>  	int usb2_refclk_rate_code;
>  };
>=20=20
> +struct cdns_ti_match_data {
> +	bool reset_on_resume;
> +};
> +
>  static const int cdns_ti_rate_table[] =3D {	/* in KHZ */
>  	9600,
>  	10000,
> @@ -101,6 +106,7 @@ static int cdns_ti_probe(struct platform_device *pdev)
>  	platform_set_drvdata(pdev, data);
>=20=20
>  	data->dev =3D dev;
> +	data->match_data =3D device_get_match_data(dev);
>=20=20
>  	data->usbss =3D devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(data->usbss)) {
> @@ -220,8 +226,29 @@ static int cdns_ti_runtime_resume(struct device *dev)
>  	return 0;
>  }
>=20=20
> +static int cdns_ti_suspend(struct device *dev)
> +{
> +	struct cdns_ti *data =3D dev_get_drvdata(dev);
> +
> +	if (data->match_data && data->match_data->reset_on_resume)
> +		return pm_runtime_force_suspend(dev);
> +	else
> +		return 0;
> +}
> +
> +static int cdns_ti_resume(struct device *dev)
> +{
> +	struct cdns_ti *data =3D dev_get_drvdata(dev);
> +
> +	if (data->match_data && data->match_data->reset_on_resume)
> +		return pm_runtime_force_resume(dev);
> +	else
> +		return 0;
> +}

Conditionally forcing runtime suspend/resume based on a property of the
IP doesn't feel right to me.

IMO, the device should always runtime suspend/resume, and in the
runtime PM hooks is where the conditional logic should be.

And speaking of the conditional logic... let's go back to whether
"resets_on_resume" is a property of the IP or the enclosing power
domain.

Instead of having an IP-specific flag, another way of approaching this
when ->runtime_resume() is called every time is simply for that hook to
check if a reset has happend.  Sometimes you can tell this simply by
reading a register that has been previously programmed by the driver but
has a known reset.  Simply check that regisister and you can tell
whether context has been lost.

Doing it this way makes the driver "smart" and then you don't have to
rely on bool flag based on the IP and dependent on the DT compatible.

Kevin


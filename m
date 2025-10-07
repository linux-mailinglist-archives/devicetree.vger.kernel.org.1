Return-Path: <devicetree+bounces-224285-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CA67DBC27FF
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 21:24:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AF93319A291D
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 19:25:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B61F822D4F6;
	Tue,  7 Oct 2025 19:24:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="JU7R4HXg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D6320E31C
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 19:24:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759865096; cv=none; b=f0kSYXfqWWYatRBM1XoQWGzZ2CkmxjCSMK13xWRWhGdJ6jnP2QnPfrpj+ITCUA52tAkAvqoUm+PG1yEknZZZQdkOJ5XvlPPZRORyvfsDnjtFMMHZL9LQOsJzKeqLwhgIuGkC4rnxw3FxBJbglqRJt9oRiquCCcmf6B2Qu885bMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759865096; c=relaxed/simple;
	bh=dD0JZH8qQiXuX7vo0YlEQxSWSwH2d/FXSZejAOfRdM8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YznF3XzXza2t0Su+pAiS9xjzJv2ZRim0GajP5YMa9o2bhciWqhLO0r1J42wJcUOYTYaV+GmEQxdLqikCfjLjUCx4ef28QIu/ECHwtQV0tmspdFTJ4NqiQM03siAAmWekUSzoRXKpGrizUpiNbEW1ePly5rmryqOQcmOFtrW3dzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=JU7R4HXg; arc=none smtp.client-ip=209.85.215.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-b5526b7c54eso4382408a12.0
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 12:24:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1759865094; x=1760469894; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=NQ9KABoIGHmAAq7lJx8BVSL+/smAc9YPHctbNZgG1VU=;
        b=JU7R4HXgf05XIezp6ZrlweehIItY/8JeSdOKWkjVTISixJTydulEozf7mvg/iJFql0
         Rv8VehZjrA2Ni4j5MmW+R5ovu1Ypl5dmiegFha97tHWRPG1cOjmCzXuUbW8RxfS3G4eD
         7pGUiWuORcygTqgaB7JsCK2YHKt7vb665dYPsHaKxStJcNXNRx8eHngj4KRkP4URZCkj
         rPz6prpdSw8LT2xtgsYLCTxfzJNRB/mSMXP/LW/fP7DNEsC8zlN1xjB+d+q7Yrhw6c/Q
         ++M7oOal26VasqqvaJr0WvRZtsGwu+gRenYRjr/v0ZmhQeeUI5A/Z+M7bt11A03Uo5LW
         dugA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759865094; x=1760469894;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NQ9KABoIGHmAAq7lJx8BVSL+/smAc9YPHctbNZgG1VU=;
        b=E9KJhhWqyJMK7KKzsTAv0TGXPDSeowXbe+qvtxNN54N1IP50WqsQBeXSNCx+9Dfiim
         3rPllaqNiqSoX4fyyu3OsUocvoOIt09dup504EPrReOjOqZgL+O1cucmOg+e+kRu2Oav
         ujG4WLs7J81wBXQnPbDupYGHkT04cIqzJc4DQNlDlus3yyLgfn47uym8k+F2JhU9dxB1
         FiiHKEdttVzF52x1OWnkyLKJAxlM5YfHzO0PXyEZpXUFwE/r5RFbUo//s3RQhtwtWd4e
         BNwRx31eCphojh9wcryuh9Fm1aALiicdcuPBr+V0CrUreFw4DPZLMUi9Jaur2E1WEX/B
         29TA==
X-Forwarded-Encrypted: i=1; AJvYcCX5KHw5xp7mp1jDI/K1W/2nk4pw+uP3skhtwktBP/zsHoNjbZupIr+yRt8DXljFdLHyVaEw35JAlc83@vger.kernel.org
X-Gm-Message-State: AOJu0YxhdJoOdVhrL+mMLtycxrJ0WTLgKtrSfDaDN1q++DkBNWSaR8BN
	cqlQ/3irAQEx121iGa1MxVEegCprgsPY7dMNK7z7matv5ni701Tx63fo8TY6a1s41g==
X-Gm-Gg: ASbGnctq9VCb8Rp3B7k4x2Nma+mzOKr4CueW+8giZCOLP//xV4kdKzRP2Qjhy9L7d+8
	msXxJfSnpzh8icvx4SF3EkGzzuX2ymWVayQrpg0YikLH8T1aZcdhFRY1NhS3iu6qEL+8FOvh/45
	nODWzXO4auLcz1xu+ECQk+FxYQRE2K2Lw7rCU7Zw35HYN+UUWWL9ORtUO2KSKqaNSDkGLAY/jtw
	Z6kFTlBIzQniN2VFHat5Hu57zFp9FM1ieRDmqyYvbVVKMT/GZqrbASDhR6+86cVt4NsmitgibHN
	R+84owqBw+aUj9uDZhVb1KuuyddkrsH7SUwscRnq5ZV9Y/wStmZglPyz383KOtJWC9z1E4XZ9/P
	ZD/lkFe1n+zkUnmYeHg7db/meD0t6xX7qWFjIDacg2/HWud8vV3pVcm06juM0Utzmma3LoULwqV
	ab//aRjPB9NqbpWcFke0g2
X-Google-Smtp-Source: AGHT+IH4bjNuCX7ZdvPaK3cW5l8x1vte/cfxRiFYzrrFsjftCuyV/+FzdaN9VlSY6ubV6FYziu7+FQ==
X-Received: by 2002:a17:903:fa7:b0:267:a8d0:7ab3 with SMTP id d9443c01a7336-29027321dbcmr9907575ad.61.1759865093972;
        Tue, 07 Oct 2025 12:24:53 -0700 (PDT)
Received: from google.com (232.92.83.34.bc.googleusercontent.com. [34.83.92.232])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-28e8d1b8796sm173717855ad.77.2025.10.07.12.24.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 12:24:52 -0700 (PDT)
Date: Tue, 7 Oct 2025 19:24:49 +0000
From: Benson Leung <bleung@google.com>
To: Jameson Thies <jthies@google.com>
Cc: akuchynski@chromium.org, abhishekpandit@chromium.org,
	krzk+dt@kernel.org, robh@kernel.org, bleung@chromium.org,
	heikki.krogerus@linux.intel.com, ukaszb@chromium.org,
	tzungbi@kernel.org, devicetree@vger.kernel.org,
	chrome-platform@lists.linux.dev, linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] usb: typec: cros_ec_ucsi: Load driver from OF and
 ACPI definitions
Message-ID: <aOVpAb3Cd5u-D6I3@google.com>
References: <20251001193346.1724998-1-jthies@google.com>
 <20251001193346.1724998-3-jthies@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="A+Gspdh5QmYIfiJs"
Content-Disposition: inline
In-Reply-To: <20251001193346.1724998-3-jthies@google.com>


--A+Gspdh5QmYIfiJs
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 01, 2025 at 07:33:42PM +0000, Jameson Thies wrote:
> Add support for cros_ec_ucsi to load based on "google,cros-ec-ucsi"
> compatible devices and "GOOG0021" ACPI nodes.
>=20
> Signed-off-by: Jameson Thies <jthies@google.com>

Reviewed-by: Benson Leung <bleung@chromium.org>


> ---
>  drivers/usb/typec/ucsi/cros_ec_ucsi.c | 25 +++++++++++++++++++++++--
>  1 file changed, 23 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/usb/typec/ucsi/cros_ec_ucsi.c b/drivers/usb/typec/uc=
si/cros_ec_ucsi.c
> index eed2a7d0ebc6..3d19560bbaa7 100644
> --- a/drivers/usb/typec/ucsi/cros_ec_ucsi.c
> +++ b/drivers/usb/typec/ucsi/cros_ec_ucsi.c
> @@ -5,11 +5,13 @@
>   * Copyright 2024 Google LLC.
>   */
> =20
> +#include <linux/acpi.h>
>  #include <linux/container_of.h>
>  #include <linux/dev_printk.h>
>  #include <linux/jiffies.h>
>  #include <linux/mod_devicetable.h>
>  #include <linux/module.h>
> +#include <linux/of.h>
>  #include <linux/platform_data/cros_ec_commands.h>
>  #include <linux/platform_data/cros_usbpd_notify.h>
>  #include <linux/platform_data/cros_ec_proto.h>
> @@ -235,7 +237,7 @@ static void cros_ucsi_destroy(struct cros_ucsi_data *=
udata)
>  static int cros_ucsi_probe(struct platform_device *pdev)
>  {
>  	struct device *dev =3D &pdev->dev;
> -	struct cros_ec_dev *ec_data =3D dev_get_drvdata(dev->parent);
> +	struct cros_ec_dev *ec_data;
>  	struct cros_ucsi_data *udata;
>  	int ret;
> =20
> @@ -244,8 +246,13 @@ static int cros_ucsi_probe(struct platform_device *p=
dev)
>  		return -ENOMEM;
> =20
>  	udata->dev =3D dev;
> +	if (is_acpi_device_node(dev->fwnode) || is_of_node(dev->fwnode)) {
> +		udata->ec =3D dev_get_drvdata(pdev->dev.parent);
> +	} else {
> +		ec_data =3D dev_get_drvdata(dev->parent);
> +		udata->ec =3D ec_data->ec_dev;
> +	}
> =20
> -	udata->ec =3D ec_data->ec_dev;
>  	if (!udata->ec)
>  		return dev_err_probe(dev, -ENODEV, "couldn't find parent EC device\n");
> =20
> @@ -326,10 +333,24 @@ static const struct platform_device_id cros_ucsi_id=
[] =3D {
>  };
>  MODULE_DEVICE_TABLE(platform, cros_ucsi_id);
> =20
> +static const struct acpi_device_id cros_ec_ucsi_acpi_device_ids[] =3D {
> +	{ "GOOG0021", 0 },
> +	{ }
> +};
> +MODULE_DEVICE_TABLE(acpi, cros_ec_ucsi_acpi_device_ids);
> +
> +static const struct of_device_id cros_ucsi_of_match[] =3D {
> +	{ .compatible =3D "google,cros-ec-ucsi", },
> +	{}
> +};
> +MODULE_DEVICE_TABLE(of, cros_ucsi_of_match);
> +
>  static struct platform_driver cros_ucsi_driver =3D {
>  	.driver =3D {
>  		.name =3D KBUILD_MODNAME,
>  		.pm =3D &cros_ucsi_pm_ops,
> +		.acpi_match_table =3D cros_ec_ucsi_acpi_device_ids,
> +		.of_match_table =3D cros_ucsi_of_match,
>  	},
>  	.id_table =3D cros_ucsi_id,
>  	.probe =3D cros_ucsi_probe,
> --=20
> 2.51.0.618.g983fd99d29-goog
>=20

--A+Gspdh5QmYIfiJs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQQCtZK6p/AktxXfkOlzbaomhzOwwgUCaOVpAQAKCRBzbaomhzOw
wtlBAP4vEF/xKiUvUfs4+ARveJWRsFz4t8iYVw+Koi4pU1PHPAD+IawlbfoNt1Pf
mV1uQAwlPekA9rhkiai1x3r/epmHaQM=
=fbBI
-----END PGP SIGNATURE-----

--A+Gspdh5QmYIfiJs--


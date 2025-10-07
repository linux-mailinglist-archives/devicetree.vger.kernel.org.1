Return-Path: <devicetree+bounces-224293-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CB17BC28AA
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 21:43:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 09DFD4E317F
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 19:43:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 270B62E62B1;
	Tue,  7 Oct 2025 19:43:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="pTsx9F7B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92A8221578D
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 19:43:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759866227; cv=none; b=Ey3z63ZtrQq4Y+NOFJ0LdZdrkGN22HX1TSmpu0RBMhG1I0IFgrKfr5zNld/pQYt7v7tMC/pzIJ021XCXqv6nq3KD8lnXir1vGMwewB7Ay9LoEvnwBMA5a6OTeFOIoHMWZweeBg02obv6uSEmmzBz6veWyvs6V6WzE6qdxWFQpb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759866227; c=relaxed/simple;
	bh=xZMyj1txn9yNEkPj4jndX7PoAnwBnvLHxpXeVdkrCq0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fkkF74nSNeRkRI4wi6vING/RtJzyOZC/9Zn4v8ZXvG5FNqLsMwv/ocPjiGYdt8mfV7WOpoaE+UdG7afEC28htfFxD+ZS4BLfWsgNTa8Ffuqsw8Y1Z3x1dXElg01e+X7raUY29Udqov/0VWWQDUuZ7bPy5VEChXRH+wj0o8LB8FQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=pTsx9F7B; arc=none smtp.client-ip=209.85.215.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pg1-f171.google.com with SMTP id 41be03b00d2f7-b5579235200so4742092a12.3
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 12:43:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1759866225; x=1760471025; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=tPY6o7kS39nLiixzOv3LoRY6a9yECDfRcVUGAGn0FOs=;
        b=pTsx9F7BsgZPRYh2KnIata8/xdXru1GTKciZdhrXz5+jIE5lZL8mctpMkE7kMX05V7
         WNJU5PRBGrc0D28euwdq7O0ovI4NZuLiccuN1EbFDJD9wnc6g9+Cs1uOTj4vaVOsMlVD
         tEFGShJJsqjrE6/7d+anIKixZJmvgkXNWK5td5J52yyAqhjZpdbVby3h8vfNWoJlMel/
         TqR3N1PUFo6zT9C5gb/W7mDS+ugp283q5B6Y7GU89Q5xz4xvimX/nZVpa2f9yh7N9T5n
         qZojBLl14YsZtzHu5kY0TCE1QPAIqqZYCQC26Yjx+djJcbMQatcEm974VMO4ZLgfVdpv
         Y9jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759866225; x=1760471025;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tPY6o7kS39nLiixzOv3LoRY6a9yECDfRcVUGAGn0FOs=;
        b=kcfC6qrBYPPLu61Tgo12+GjxhaToTBc5RTiu5YM0HNZdPlQS8H6jDxJbis5JAIcx42
         pOAOtt6sFawrCQYl1F13QC3uQuBij87hiBI99/p49qdvDc3oCGi/oe5hQlomV21Hkavn
         gihkZHXtp7LeNQ5j+9lzSHt+IJhR0EO2xfP6xezr4fFQ33OBA5R/k+FfohNV2AjxtFP6
         spK50nxoCMqZLGMcV6Urn5D4TVIeFoBr5SoS8+m+tOW8YIVyCMOvorNCt/1L6AOHK+Qa
         z6YlWjj9p1c7yUgp5AXkf3G/dJP6ls+RsJY8bkCE1occlHxKbUXYbQnyoRssxBwBwO4H
         rerw==
X-Forwarded-Encrypted: i=1; AJvYcCVV55I9zVpWlgsYgw+byXAToMKDLc97M0NaI1LV7hf+7W1EPKKCqnd0QBpceYGhp0+HqTS9AfzcW3mO@vger.kernel.org
X-Gm-Message-State: AOJu0YzhLVXJNd/WJKM12F6+9JLQFdbtibTDhFTMafIQnKMYEzXIr2Rb
	w5qtySqMAbITs7556Mjux3rz2xS0qKyl57bOQLFE36OB/2rSREIejIdFKtzDtHP8Hg==
X-Gm-Gg: ASbGncv4FPRCqvrSmNj6RGqdlNrVPC3hjxYN4f8CYh2kEQ0DUc/8blYzpDmmZZqVou9
	1kufTcjITYyXzdzXi0GFrMnbThi5pgexWtFYUmRn0ScTRoArugWKkF3A8DfDte4GY3Pyf/fVFw/
	1osETq2CcSM63tFyHxG7cft5VJPtnwDirwSSyt/bJkOgtDoqV9439SDNHx+TGn8jbojZnqje5xS
	ysdUyRBjJwLlaekUAvQ6EvDwrcJHjmsUmq9grOqPU/dTKaqZZhEIR47zAamUNSfOyp5f3ZgIDy8
	8FLeuBhhZk5v92cyi3mpfUJ5UDnqOe8qz71afsNmzg9h9KQuwv0Zi3L9Ikud+sSHeb+WIYy+gt5
	TCRv+eunq6IqvkdRV+mcCx/WQtbf2KXfz0yMC0Y093nU4GpBtt913cN6jeO4buyaebDutOiOBBh
	eEVbWiMaYh4eKPavYjOAia
X-Google-Smtp-Source: AGHT+IE5SIvyP4eUf3ipqqD5UvRzEUwKrkkptQOc7fcVjGhgP5yFTG0+Dw+sZtrUtx3Ml6RCP26bLg==
X-Received: by 2002:a17:902:d60d:b0:269:8407:5ae3 with SMTP id d9443c01a7336-290272f8283mr11547605ad.54.1759866224509;
        Tue, 07 Oct 2025 12:43:44 -0700 (PDT)
Received: from google.com (232.92.83.34.bc.googleusercontent.com. [34.83.92.232])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-28e8d1b93f1sm173669135ad.71.2025.10.07.12.43.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 12:43:43 -0700 (PDT)
Date: Tue, 7 Oct 2025 19:43:40 +0000
From: Benson Leung <bleung@google.com>
To: Jameson Thies <jthies@google.com>
Cc: akuchynski@chromium.org, abhishekpandit@chromium.org,
	krzk+dt@kernel.org, robh@kernel.org, bleung@chromium.org,
	heikki.krogerus@linux.intel.com, ukaszb@chromium.org,
	tzungbi@kernel.org, devicetree@vger.kernel.org,
	chrome-platform@lists.linux.dev, linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/3] mfd: cros_ec: Don't add cros_ec_ucsi if it is
 defined in OF or ACPI
Message-ID: <aOVtbDOl1w4RXEfi@google.com>
References: <20251001193346.1724998-1-jthies@google.com>
 <20251001193346.1724998-4-jthies@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="AVuZMM5ghkB0dxRG"
Content-Disposition: inline
In-Reply-To: <20251001193346.1724998-4-jthies@google.com>


--AVuZMM5ghkB0dxRG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 01, 2025 at 07:33:43PM +0000, Jameson Thies wrote:
> On devices with a UCSI PPM in the EC, check for cros_ec_ucsi to be
> defined in the OF device tree or an ACPI node. If it is defined by
> either OF or ACPI, it does not need to be added as a subdevice of
> cros_ec_dev.
>=20
> Signed-off-by: Jameson Thies <jthies@google.com>

Reviewed-by: Benson Leung <bleung@chromium.org>


> ---
>  drivers/mfd/cros_ec_dev.c | 40 ++++++++++++++++++++++++++++++++++-----
>  1 file changed, 35 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/mfd/cros_ec_dev.c b/drivers/mfd/cros_ec_dev.c
> index dc80a272726b..b0523f6541d2 100644
> --- a/drivers/mfd/cros_ec_dev.c
> +++ b/drivers/mfd/cros_ec_dev.c
> @@ -5,6 +5,7 @@
>   * Copyright (C) 2014 Google, Inc.
>   */
> =20
> +#include <linux/acpi.h>
>  #include <linux/dmi.h>
>  #include <linux/kconfig.h>
>  #include <linux/mfd/core.h>
> @@ -131,11 +132,6 @@ static const struct cros_feature_to_cells cros_subde=
vices[] =3D {
>  		.mfd_cells	=3D cros_ec_rtc_cells,
>  		.num_cells	=3D ARRAY_SIZE(cros_ec_rtc_cells),
>  	},
> -	{
> -		.id		=3D EC_FEATURE_UCSI_PPM,
> -		.mfd_cells	=3D cros_ec_ucsi_cells,
> -		.num_cells	=3D ARRAY_SIZE(cros_ec_ucsi_cells),
> -	},
>  	{
>  		.id		=3D EC_FEATURE_HANG_DETECT,
>  		.mfd_cells	=3D cros_ec_wdt_cells,
> @@ -177,6 +173,16 @@ static const struct mfd_cell cros_ec_vbc_cells[] =3D=
 {
>  	{ .name =3D "cros-ec-vbc", }
>  };
> =20
> +static int ucsi_acpi_match(struct device *dev, const void *data)
> +{
> +	struct acpi_device_id ucsi_acpi_device_ids[] =3D {
> +		{ "GOOG0021", 0 },
> +		{"", 0},
> +	};
> +	return !!acpi_match_device(ucsi_acpi_device_ids, dev);
> +}
> +
> +
>  static void cros_ec_class_release(struct device *dev)
>  {
>  	kfree(to_cros_ec_dev(dev));
> @@ -264,6 +270,30 @@ static int ec_device_probe(struct platform_device *p=
dev)
>  		}
>  	}
> =20
> +	/*
> +	 * FW nodes can load cros_ec_ucsi, but early PDC devices did not define
> +	 * the required nodes. On PDC systems without FW nodes for cros_ec_ucsi,
> +	 * the driver should be added as an mfd subdevice.
> +	 */
> +	if (cros_ec_check_features(ec, EC_FEATURE_USB_PD) &&
> +	    cros_ec_check_features(ec, EC_FEATURE_UCSI_PPM)) {
> +		struct device *acpi_dev =3D device_find_child(ec->ec_dev->dev,
> +							    NULL,
> +							    ucsi_acpi_match);
> +
> +		if (!!acpi_dev) {
> +			put_device(acpi_dev);
> +		} else if (!of_find_compatible_node(NULL, NULL,
> +						    "google,cros-ec-ucsi")) {
> +			retval =3D mfd_add_hotplug_devices(
> +				ec->dev, cros_ec_ucsi_cells,
> +				ARRAY_SIZE(cros_ec_ucsi_cells));
> +			if (retval)
> +				dev_warn(ec->dev,
> +				    "failed to add cros_ec_ucsi: %d\n", retval);
> +		}
> +	}
> +
>  	/*
>  	 * UCSI provides power supply information so we don't need to separately
>  	 * load the cros_usbpd_charger driver.
> --=20
> 2.51.0.618.g983fd99d29-goog
>=20

--AVuZMM5ghkB0dxRG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQQCtZK6p/AktxXfkOlzbaomhzOwwgUCaOVtawAKCRBzbaomhzOw
wmRYAQC++OoC5q1mBE/1huCJjMRFkqmQs/g8WPoS9w/QsoyC0gD8DywFVX8m6bXV
rSfJcTnDduy80Nfk8IhLCFhVH1L3cAY=
=Cikw
-----END PGP SIGNATURE-----

--AVuZMM5ghkB0dxRG--


Return-Path: <devicetree+bounces-135308-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DC64CA00781
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 11:12:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AEF733A2A63
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 10:12:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A851A1F9A97;
	Fri,  3 Jan 2025 10:11:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="c19AHioI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B6D51B6D1A
	for <devicetree@vger.kernel.org>; Fri,  3 Jan 2025 10:11:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735899091; cv=none; b=bBIE7kdMrxnMDNAaa+ZufiodcfCYtMT0axGkx9/dS20zgUpUdkzdS+qm9nvTSf1JRnURBha91pITCDUZ2kFX7a6DbFbi60jL1vhTDLeyILbPlNwfDTIX75k8JxVv+9KJBZZIhETPd0tNSVjKog2WVt1KNKlJM+JmPZW+npEigc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735899091; c=relaxed/simple;
	bh=aYvAVZ3y/Nvx5/iJiBOVQYkfzeMlC1dGrABeIXcOLvs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=apPwxxLFxPM6iNJUg2edjMC+/vvv/KKI1HJVT+Dt87KXG9OaaQAHMDhQ6n5hATXt4/i/CovLS/Q25p8+1IKBtOB4NwLQPkPD8GQpJ5bWhl4xcl4vPwwPhtECrB7DHUz0HPq2fW8ksy6mWZcZk46Ye03A+IKNLHkNHr+I6LC9U6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=c19AHioI; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-5d414b8af7bso23748234a12.0
        for <devicetree@vger.kernel.org>; Fri, 03 Jan 2025 02:11:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1735899086; x=1736503886; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=HSbQfVIcx6ukNQY9vN5gyk/LMc86CfAZUQgC0YBG6V0=;
        b=c19AHioIvAE6iEEKhYUBMPZFYC/kI5s5Rz7HC/Of1RePbM3l3iCgHVINQrFkR5jz3f
         ES7V0CfLNdfiFSbIqcI8EG8a8rGf+5tbQ+ixmIecE3Uj9ijx3+ZFSmK/exfU8REGowAf
         tCGWxt+SPg69/NETpCXIDnfE6bmZIPHRtguf4bbSYj/YOM8UquAEhr4m2M3n4aI2eXYw
         9B1bb4Z/7PWBPvUf8mbzjpkUM4wAfMEk5EdNE65oMKAkWGkV5rSTw2HlPNUV3fonmdlb
         t9k91Hg/qo+MEsMdt0uorJRc3yZHApSIWgrtCzkQ4hKBLMs3Hpb5CWo3k5xdVpMRb68i
         Yb9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735899086; x=1736503886;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HSbQfVIcx6ukNQY9vN5gyk/LMc86CfAZUQgC0YBG6V0=;
        b=VKoSg7O/JUacoFM8U30dcHmkYfbJBuox2q4o7r5YJ0QTw+HOv7zD/2n7/hbP82XMZc
         3wTFpXmF7x8K4NKfVYSPGI1HtQD/wQ51BP+7cdI67Fn1tJ0Xj8IgutfFsFaiWMaIuX7X
         Z4kWddHtTwevl1FPrB6k8p+JnMs83XN4b9BTO1YNTKiD+4eRfi25GfZGZjMQ+70p7VWn
         4Ll9Htu+c5Nkl1XGpiqwSeoyzWtso8522ijEYBDqY4y8/4MvGEJmhLNh9IhFALKZaz2O
         CBYnP7esWAgyet9mOTvhuKWkqNPYNbFWz1nUb2w0qoeTqA/YqeBHUoiXCDTZWzObJ1m2
         ZwDQ==
X-Forwarded-Encrypted: i=1; AJvYcCUORmMWxPBCdsxpw36fKKm2kNeu5zw1HPZEZD9uS9ju+TGGzQSrb2Q2Zq8EcIkCvOk3ulU/KGunyzpf@vger.kernel.org
X-Gm-Message-State: AOJu0YxSamXlckI4BtgsV9TKBoXbxYHC/TJLny03b9F4bZvNHxWSjqQD
	leVRMdtIJyZEbizv69fbJQ7Ty7kQOUNdavY7cVZsgRIjGMULFh3EpbKOJX4XEF4=
X-Gm-Gg: ASbGncvhuZBFUbJ1ZxaXJLGAMF77Jsy81QgjyWUzHflt2qM7YukCNX14sr6Sc9cTvXe
	mivXqctMY9AxHrvWRAasoQoAAsEC79MV7dTmrd34WEKUj/Nph6BuXbw1BooVuwbUmfPbv28zvK5
	ycQCQVt9U+/c8izOSGpzaL/kA0IxRsYFpkTS2W9VAOCCaUg4twNVK101vRH6rj0FsPmgGZaLBue
	0pokmAcBMVQrwf4qd0AIoWlAyqfmYhlvW9akUr3SE5gIEXVii3b
X-Google-Smtp-Source: AGHT+IGVhK8RxUfOgN5/AP02t7KJ1IsWpVINw+ADRYIKZE5PdYvzjFxNJilJ3zjN0WbNezateHeIPw==
X-Received: by 2002:a05:6402:3510:b0:5d0:e2c8:dc8d with SMTP id 4fb4d7f45d1cf-5d81ddfe37cmr45262786a12.20.1735899086217;
        Fri, 03 Jan 2025 02:11:26 -0800 (PST)
Received: from localhost ([2001:4090:a245:80cb:3b5a:db2d:b2b7:c8b4])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d80679f128sm19178394a12.44.2025.01.03.02.11.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jan 2025 02:11:25 -0800 (PST)
Date: Fri, 3 Jan 2025 11:11:23 +0100
From: Markus Schneider-Pargmann <msp@baylibre.com>
To: Dhruva Gole <d-gole@ti.com>
Cc: Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>, 
	Santosh Shilimkar <ssantosh@kernel.org>, Vignesh Raghavendra <vigneshr@ti.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Anand Gadiyar <gadiyar@ti.com>, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	Vishal Mahaveer <vishalm@ti.com>, Kevin Hilman <khilman@baylibre.com>
Subject: Re: [PATCH v4 2/4] firmware: ti_sci: Partial-IO support
Message-ID: <24h2xx6plhjtdsuntyygghalo4cqxdoh6ncexzrxk4kpj5coy2@5jwdqxixdwto>
References: <20241219-topic-am62-partialio-v6-12-b4-v4-0-1cb8eabd407e@baylibre.com>
 <20241219-topic-am62-partialio-v6-12-b4-v4-2-1cb8eabd407e@baylibre.com>
 <20241220115043.qhjroeqc4gl3pwtz@lcpd911>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="iknrznhvbakof7yi"
Content-Disposition: inline
In-Reply-To: <20241220115043.qhjroeqc4gl3pwtz@lcpd911>


--iknrznhvbakof7yi
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v4 2/4] firmware: ti_sci: Partial-IO support
MIME-Version: 1.0

Hi Dhruva,

On Fri, Dec 20, 2024 at 05:20:43PM +0530, Dhruva Gole wrote:
> Hi Markus,
>=20
> On Dec 19, 2024 at 21:02:13 +0100, Markus Schneider-Pargmann wrote:
> > Add support for Partial-IO poweroff. In Partial-IO pins of a few
>=20
> Maybe add a comma after the In partial-IO, a few pins in this SOC can gen=
erate....
>=20
> > hardware units can generate system wakeups while DDR memory is not
> > powered resulting in a fresh boot of the system. These hardware units in
> > the SoC are always powered so that some logic can detect pin activity.
> >=20
> > If the system supports Partial-IO as described in the fw capabilities, a
> > sys_off handler is added. This sys_off handler decides if the poweroff
> > is executed by entering normal poweroff or Partial-IO instead. The
> > decision is made by checking if wakeup is enabled on all devices that
> > may wake up the SoC from Partial-IO.
> >=20
> > The possible wakeup devices are found by checking which devices have the
> > "poweroff" in the list of wakeup-source power states. Only devices that
> > are actually enabled by the user will be considered as an active wakeup
> > source. If none of the wakeup sources is enabled the system will do a
> > normal poweroff. If at least one wakeup source is enabled it will
> > instead send a TI_SCI_MSG_PREPARE_SLEEP message from the sys_off
> > handler. Sending this message will result in an immediate shutdown of
> > the system. No execution is expected after this point. The code will
> > wait for 5s and do an emergency_restart afterwards if Partial-IO wasn't
> > entered at that point.
> >=20
> > A short documentation about Partial-IO can be found in section 6.2.4.5
> > of the TRM at
> >   https://www.ti.com/lit/pdf/spruiv7
> >=20
> > Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
> > ---
> >  drivers/firmware/ti_sci.c | 115 ++++++++++++++++++++++++++++++++++++++=
+++++++-
> >  drivers/firmware/ti_sci.h |   5 ++
> >  2 files changed, 119 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/drivers/firmware/ti_sci.c b/drivers/firmware/ti_sci.c
> > index ec0c54935ac0d667323d98b86ac9d288b73be6aa..693ac816f8ba3941a9156bd=
39524099ca476d712 100644
> > --- a/drivers/firmware/ti_sci.c
> > +++ b/drivers/firmware/ti_sci.c
> > @@ -3746,6 +3746,100 @@ static const struct dev_pm_ops ti_sci_pm_ops =
=3D {
> >  #endif
> >  };
> > =20
> > +/*
> > + * Enter Partial-IO, which disables everything including DDR with only=
 a small
> > + * logic being active for wakeup.
> > + */
> > +static int tisci_enter_partial_io(struct ti_sci_info *info)
>=20
> Isn't the function naming style in the driver ti_sci_XXX ? You're
> missing one `_` I guess
>=20
> > +{
> > +	struct ti_sci_msg_req_prepare_sleep *req;
> > +	struct ti_sci_xfer *xfer;
> > +	struct device *dev =3D info->dev;
> > +	int ret =3D 0;
> > +
> > +	xfer =3D ti_sci_get_one_xfer(info, TI_SCI_MSG_PREPARE_SLEEP,
> > +				   TI_SCI_FLAG_REQ_GENERIC_NORESPONSE,
> > +				   sizeof(*req), sizeof(struct ti_sci_msg_hdr));
> > +	if (IS_ERR(xfer)) {
> > +		ret =3D PTR_ERR(xfer);
> > +		dev_err(dev, "Message alloc failed(%d)\n", ret);
> > +		return ret;
> > +	}
> > +
> > +	req =3D (struct ti_sci_msg_req_prepare_sleep *)xfer->xfer_buf;
> > +	req->mode =3D TISCI_MSG_VALUE_SLEEP_MODE_PARTIAL_IO;
> > +	req->ctx_lo =3D 0;
> > +	req->ctx_hi =3D 0;
> > +	req->debug_flags =3D 0;
> > +
> > +	dev_info(dev, "Entering Partial-IO because a powered wakeup-enabled d=
evice was found.\n");
> > +
> > +	ret =3D ti_sci_do_xfer(info, xfer);
> > +	if (ret) {
> > +		dev_err(dev, "Mbox send fail %d\n", ret);
> > +		goto fail;
> > +	}
> > +
> > +fail:
> > +	ti_sci_put_one_xfer(&info->minfo, xfer);
> > +
> > +	return ret;
> > +}
> > +
> > +static bool tisci_canuart_wakeup_enabled(struct ti_sci_info *info)
>=20
> Add some documentation around this please.
>=20
> > +{
> > +	struct device_node *wakeup_node =3D NULL;
> > +
> > +	for (wakeup_node =3D of_find_node_with_property(NULL, "wakeup-source"=
);
> > +	     wakeup_node;
> > +	     wakeup_node =3D of_find_node_with_property(wakeup_node, "wakeup-=
source")) {
> > +		struct platform_device *pdev;
> > +		int index;
> > +
> > +		index =3D of_property_match_string(wakeup_node, "wakeup-source", "po=
weroff");
> > +		if (index < 0)
> > +			continue;
>=20
> Doesn't the fact that we're inside the for loop already ensure this is > =
0?

No, this can return several error codes if the property doesn't have a
value or the string is not found in the property array.

>=20
> > +
> > +		pdev =3D of_find_device_by_node(wakeup_node);
> > +		if (!pdev)
> > +			break;
>=20
> Same here? Would we otherwise be in the loop?
> Just having a quick look here, I could be wrong, please just check once.

The devicetree node doesn't necessarily have a device associated with
it. So I need to check if there is a device for this devicetree node.

I fixed the rest of your comments. Thanks for your review.

Best
Markus


--iknrznhvbakof7yi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTd8KHufh7XoFiu4kEkjLTi1BWuPwUCZ3e3yAAKCRAkjLTi1BWu
PweyAP0eCCMETueAY2472nnJ1JUeNan/zvJZezmSWXmypz2RhAD/QAzMZDwM2l7t
7rD3gE58a3JET3KjZt288qTZzRLdyA8=
=UV6S
-----END PGP SIGNATURE-----

--iknrznhvbakof7yi--


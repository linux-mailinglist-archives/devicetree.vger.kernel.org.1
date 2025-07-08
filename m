Return-Path: <devicetree+bounces-194007-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 79AF9AFC6F8
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 11:23:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BCD6817A96D
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 09:23:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30AB32222C7;
	Tue,  8 Jul 2025 09:23:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="JFPP8ncV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A398221FC9
	for <devicetree@vger.kernel.org>; Tue,  8 Jul 2025 09:23:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751966611; cv=none; b=fJFDuaoO9PCs+t50UgIYy/RFcOtCSbrZ+cNelumfjPMp6KYZCHDcjWStgnrBqStpHrh4ISMW0XMgdqSVK7/dhUdRCyCUtRQ16ytC4QoOL7eiqPn9Fuzd5+4i1PvOQ3JoWqv/1hOBxOPe9cnIjgUYgD2QyjQTpZo9MQ2I2bost74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751966611; c=relaxed/simple;
	bh=oWA+jyYXTFUVOVpq0A1KhzsVCekTcqZUOlf72Qn1/FU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gqUxfKJ41jAytmv4KqFiIegPVTm+WclE/dzu85sKhd5E5ahPmouubzJpWX0d/J1BVbA3Cf63fTiscAA5n4Dv+ejvHe2wRPUKtjmfr9JtwxDPUIra5FQ33stU+0tHoSBMxwV/AlqyuNisV6TSz3Ty4uhedJTxrqZ7IvEMFdM6jcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=JFPP8ncV; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-60bfcada295so6724070a12.1
        for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 02:23:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1751966607; x=1752571407; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cyLgLNqxZVEVrHG4u8oZzb76t/clebyyt0lejdbang0=;
        b=JFPP8ncVkfmoy4E03VdBe9pFFtDWm68x5yCK8OWjpk1RCAGNmnM+anKFb2E9JPO5mk
         6uitR/wjuupBNrMiZ+gWa/BiffjpboCI9zDqNaatzNXn8Qe4R9/+i7GWbiEFK13sLOCs
         74lI0vVATKdamh1RXw8yclNsmylK9nCQRKixY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751966607; x=1752571407;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cyLgLNqxZVEVrHG4u8oZzb76t/clebyyt0lejdbang0=;
        b=MZrpdjLVk1u1H2KJcnuxyUQ9lD6CVmoskC4onPbk2kgv5wsI76zLDtPbBUzkH31DgM
         fpBQhlJDIjgZ7zpVVXC218BjAaJLKK7RBnTH4wuIg0otPvy8lokSN5MQonz/eORZjG2c
         SN6fm3XM3J1NFLF1Dyhvp/NU5w1w7yOcdxZhv3R09Hgrr+8Ol5VT8uNp37DcWom8KNK1
         f8OL9OEBVKpdAx+LzVTiaAmBAf7Uphdoe1EkisM9M4u7CC1VLHtVSQyl8X6y3KlrLX/x
         VA6oOt68JhHS3HWvQot7DxNEfWRmT9I44CQy81fbiBuo24KIZoUPJIoSo4Gl7eQiT/0s
         MTXA==
X-Forwarded-Encrypted: i=1; AJvYcCU1PGFwkU620/7dyeCu/8yCEuoYHORxIgy3/KijZRvZKHj3yZT/zWaP0ihH7NYgCILgAJMFN4ACIskm@vger.kernel.org
X-Gm-Message-State: AOJu0YxC7CgmrIUffJE4+V9iUdFUr8uWDdb8KRIYNx1yS4aGS9whP3Q2
	dm6Q4Ab0jg9BirMPGxEfFSb+seXHjGhjwcqpqFEL/rH0wkvduv39AQC6jcD2wAIqDAdOteSc4EC
	BR6uM6JdD
X-Gm-Gg: ASbGnctfLJvbYmXjd7VPwSqxxPVOhqhNUD1KLUkzp3OwWU6cfzOuQ2CQAiFolBtbt9D
	FE8wp/cl06UJhka7LqBfnq/qvdarzXIID6ai9LYcEBgTCaG6GdbmsZQBCMffR3CVvJZ3IX7KWn0
	0aRNbeIKRuidzgbPPZeM74g/WLnbBOSSBsUbkp8yZzZY62zwqFe6jDaiB88/mukY54y26e2MHsL
	5/lfTfwIs6Sr0XpZfcGf5FPLwU4VEvy315oEa985IwbcoUDswKxmBU/xyhdkCHNnlXN6inozXir
	DXBXk6+SK3AaVVMIbKDE29jiQFOyAbNFUKovcAWk2HDgtxd9b67iiMRlpipE1BOlUi4Y0PCTdzD
	Bzz8wrLD6Erm8zn2NM5xwCY+d
X-Google-Smtp-Source: AGHT+IGwKALMAA9OdfwfbVkJwfFployRD0G3rBF0tvD3YfnAu2NqOtAOCUuEcmfhDb4CiSvRlH8rDg==
X-Received: by 2002:a05:6402:2749:b0:608:3f9c:c69d with SMTP id 4fb4d7f45d1cf-60fd6e54caemr12123492a12.33.1751966607345;
        Tue, 08 Jul 2025 02:23:27 -0700 (PDT)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com. [209.85.218.54])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60fcb0c790dsm6884754a12.37.2025.07.08.02.23.27
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Jul 2025 02:23:27 -0700 (PDT)
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-ade5b8aab41so862106366b.0
        for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 02:23:27 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUKuV4NS1rTuNBhvIz7rAfNUiIk/vZHZ5hDekwRS3WaewAuoDCHgHAwu5zDDAGlR22PTN0I84aQobIN@vger.kernel.org
X-Received: by 2002:a05:6512:2386:b0:553:3407:eee0 with SMTP id
 2adb3069b0e04-557a132beb0mr6054641e87.4.1751966199327; Tue, 08 Jul 2025
 02:16:39 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250605-uvc-orientation-v2-0-5710f9d030aa@chromium.org>
 <20250605-uvc-orientation-v2-5-5710f9d030aa@chromium.org> <aGw_1T_Edm8--gXW@kekkonen.localdomain>
In-Reply-To: <aGw_1T_Edm8--gXW@kekkonen.localdomain>
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Tue, 8 Jul 2025 11:16:25 +0200
X-Gmail-Original-Message-ID: <CANiDSCup2iRx+0RcaijSmbn04nBY4Ui9=esCPFsQzOKe=up9Gg@mail.gmail.com>
X-Gm-Features: Ac12FXyzhfInZK890Wq_-YMIwMPEqs5CfSkqVHt4PZPUUwV21icplYQB7hfeIEM
Message-ID: <CANiDSCup2iRx+0RcaijSmbn04nBY4Ui9=esCPFsQzOKe=up9Gg@mail.gmail.com>
Subject: Re: [PATCH v2 05/12] media: ipu-bridge: Use v4l2_fwnode for unknown rotations
To: Sakari Ailus <sakari.ailus@linux.intel.com>, Hans de Goede <hdegoede@redhat.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Len Brown <lenb@kernel.org>, linux-media@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-acpi@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Sakari

Thanks for your review

On Mon, 7 Jul 2025 at 23:45, Sakari Ailus <sakari.ailus@linux.intel.com> wr=
ote:
>
> Hi Ricardo,
>
> On Thu, Jun 05, 2025 at 05:52:58PM +0000, Ricardo Ribalda wrote:
> > The v4l2_fwnode_device_properties contains information about the
> > rotation. Use it if the ssdb data is inconclusive.
>
> As SSDB and _PLD provide the same information, are they always aligned? D=
o
> you have any experience on how is this actually in firmware?

Not really, in ChromeOS we are pretty lucky to control the firmware.

@HdG Do you have some experience/opinion here?

>
> _PLD is standardised so it would seem reasonable to stick to that -- if i=
t
> exists. Another approach could be to pick the one that doesn't translate =
to
> a sane default (0=C2=B0).

I'd rather stick to the current prioritization unless there is a
strong argument against it. Otherwise there is a chance that we will
have regressions (outside CrOS)


>
> >
> > Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
> > ---
> >  drivers/media/pci/intel/ipu-bridge.c | 30 +++++++++++++++++++---------=
--
> >  1 file changed, 19 insertions(+), 11 deletions(-)
> >
> > diff --git a/drivers/media/pci/intel/ipu-bridge.c b/drivers/media/pci/i=
ntel/ipu-bridge.c
> > index 020aa52f590d66b6d333adc56ebfb9ab0561db51..6f436a8b4d23373af8a6668=
530333a827eca467a 100644
> > --- a/drivers/media/pci/intel/ipu-bridge.c
> > +++ b/drivers/media/pci/intel/ipu-bridge.c
> > @@ -236,37 +236,41 @@ static int ipu_bridge_read_acpi_buffer(struct acp=
i_device *adev, char *id,
> >  }
> >
> >  static u32 ipu_bridge_parse_rotation(struct acpi_device *adev,
> > -                                  struct ipu_sensor_ssdb *ssdb)
> > +                                  struct ipu_sensor_ssdb *ssdb,
> > +                                  struct v4l2_fwnode_device_properties=
 *props)
> >  {
> >       switch (ssdb->degree) {
> >       case IPU_SENSOR_ROTATION_NORMAL:
> >               return 0;
> >       case IPU_SENSOR_ROTATION_INVERTED:
> >               return 180;
> > -     default:
> > +     }
> > +
> > +     if (props->rotation =3D=3D V4L2_FWNODE_PROPERTY_UNSET) {
> >               dev_warn(ADEV_DEV(adev),
> >                        "Unknown rotation %d. Assume 0 degree rotation\n=
",
> >                        ssdb->degree);
> >               return 0;
> >       }
> > +
> > +     return props->rotation;
> >  }
> >
> > -static enum v4l2_fwnode_orientation ipu_bridge_parse_orientation(struc=
t acpi_device *adev)
> > +static enum v4l2_fwnode_orientation
> > +ipu_bridge_parse_orientation(struct acpi_device *adev,
> > +                          struct v4l2_fwnode_device_properties *props)
> >  {
> > -     struct v4l2_fwnode_device_properties props;
> > -     int ret;
> > -
> > -     ret =3D v4l2_fwnode_device_parse(ADEV_DEV(adev), &props);
> > -     if (!ret || props.rotation =3D=3D V4L2_FWNODE_PROPERTY_UNSET) {
> > +     if (props->orientation =3D=3D V4L2_FWNODE_PROPERTY_UNSET) {
> >               dev_warn(ADEV_DEV(adev), "Using default orientation\n");
> >               return V4L2_FWNODE_ORIENTATION_EXTERNAL;
> >       }
> >
> > -     return props.orientation;
> > +     return props->orientation;
> >  }
> >
> >  int ipu_bridge_parse_ssdb(struct acpi_device *adev, struct ipu_sensor =
*sensor)
> >  {
> > +     struct v4l2_fwnode_device_properties props;
> >       struct ipu_sensor_ssdb ssdb =3D {};
> >       int ret;
> >
> > @@ -274,6 +278,10 @@ int ipu_bridge_parse_ssdb(struct acpi_device *adev=
, struct ipu_sensor *sensor)
> >       if (ret)
> >               return ret;
> >
> > +     ret =3D v4l2_fwnode_device_parse(ADEV_DEV(adev), &props);
> > +     if (ret)
> > +             return ret;
> > +
> >       if (ssdb.vcmtype > ARRAY_SIZE(ipu_vcm_types)) {
> >               dev_warn(ADEV_DEV(adev), "Unknown VCM type %d\n", ssdb.vc=
mtype);
> >               ssdb.vcmtype =3D 0;
> > @@ -287,8 +295,8 @@ int ipu_bridge_parse_ssdb(struct acpi_device *adev,=
 struct ipu_sensor *sensor)
> >       sensor->link =3D ssdb.link;
> >       sensor->lanes =3D ssdb.lanes;
> >       sensor->mclkspeed =3D ssdb.mclkspeed;
> > -     sensor->rotation =3D ipu_bridge_parse_rotation(adev, &ssdb);
> > -     sensor->orientation =3D ipu_bridge_parse_orientation(adev);
> > +     sensor->rotation =3D ipu_bridge_parse_rotation(adev, &ssdb, &prop=
s);
> > +     sensor->orientation =3D ipu_bridge_parse_orientation(adev, &props=
);
> >
> >       if (ssdb.vcmtype)
> >               sensor->vcm_type =3D ipu_vcm_types[ssdb.vcmtype - 1];
> >
>
> --
> Regards,
>
> Sakari Ailus



--
Ricardo Ribalda


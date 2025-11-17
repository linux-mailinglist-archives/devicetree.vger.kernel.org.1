Return-Path: <devicetree+bounces-239468-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id BFF7FC652FA
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 17:37:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 33E4B4EF51F
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 16:34:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C97D2D5410;
	Mon, 17 Nov 2025 16:34:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=geotab.com header.i=@geotab.com header.b="FTXakxRb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f169.google.com (mail-il1-f169.google.com [209.85.166.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255852C3251
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 16:34:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763397244; cv=none; b=bMihG99hyGCRgNYgVf34Z2dhter9yo1tON/7QWi1u4ieCbxS2gokw66sLN6n5Xgn7vbGkiq0wsh9OxkPhg2CFNuSzUC/6k/YfzdhCDIq7r3+ZOlgq1BHjTUJfvPdEXdpkbZn569az2h/c/JFtZjMcFAMzwNXZ/ncHh5fXuD6/ls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763397244; c=relaxed/simple;
	bh=/CIIAQLm9NWHeGYRmQYh0cinQ0g18mXMF6pwh6lBM/Y=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nNVu4+p1Ulc4Zz1gtEsFSu4zf2BHwD+HpWRyVre7r++8uyL5vAv/oFiwTiYe/liVIQ3T9JdtbKn0scH2xh/ynYUHxlW4+NzVtaB0WkTfRZI2TlQ3AxMewf7BE0jeb/ct2YtP5mZE6l4ZEDlpUQqEThXL5Q0uayDYqKBwv/Hdt4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=geotab.com; spf=pass smtp.mailfrom=geotab.com; dkim=pass (2048-bit key) header.d=geotab.com header.i=@geotab.com header.b=FTXakxRb; arc=none smtp.client-ip=209.85.166.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=geotab.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=geotab.com
Received: by mail-il1-f169.google.com with SMTP id e9e14a558f8ab-43380a6fe8cso32877645ab.0
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 08:34:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=geotab.com; s=google; t=1763397241; x=1764002041; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yuOpnyP+Gwb7Gw6r1RkaeItm0eApSIebXmC34QluQI8=;
        b=FTXakxRb5/NAwwAp67Io9hYMiVEF7B3vK3nil55h6wp4ifXcXWTq19qJ56jrOmXhxH
         HJJomFzrTATOI15kUxgoh6a+sdIBNi2T4sYz9B3hgeCWW8oejs1eLST1VfUrJXRlKBOn
         9QiS14ujoOeo1HznuLn0L1Bf9oVV4aOSMz2ny+eMo/n0zlzj7beO+s4N6EYPntnqydZU
         Bezo4zkppjkRY2YfrpSahFXRL5LPWpXEWxecjJa5UwIP7+EL1jMuHfjydqitlsZhAymn
         zRX5W9PlQEW+oGs97b2h+Z1T2XhqEzZ2LfWA9R8UPIHs7GMq+vNesqilBAn5YFz1o4BS
         PJiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763397241; x=1764002041;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=yuOpnyP+Gwb7Gw6r1RkaeItm0eApSIebXmC34QluQI8=;
        b=OifHM8YPw+wjO3ahgc/L2uTeGqtTlqW3d3BxfbMilJKjzMISaWL/d/rDsNbPTt/BUc
         VDEJPOr/4SF//x3d2u+7AbPHpoop1MOxjRJZq8hcr74KvHU5i+51jPy/8wkEVZL72unq
         WYjNrMASmYLuisKzPIdPGPvHTpyCE0Qhym0oK76Nv0q59OqF2QvnMHXYNZL/vJdtkLd2
         cFHfYLGPnNHSOG0gKqX+dJVi3rqHkx+LSSMz4pj2jFiR1X5Jzgcf44nXZAGZih+RNiCq
         rriwvK9zqjhx6zRBX+c+ReBdH4izXA5/0dJO8B2vB1n1JcydnaLXj+Lz+5hQ+OnKzP28
         47Xw==
X-Forwarded-Encrypted: i=1; AJvYcCVkxRc7GN4UlCjo3iWGGpDI/fZyrchxkFzgUnBZcri4X9Au5T60l6YHcyXUw0ABom4uVw/UnXxe9AAy@vger.kernel.org
X-Gm-Message-State: AOJu0Yyop3jKV9dyHfMVlMyexNpf+X0c3Z6t6n14Qt/qSHyyMFiW0RJS
	msiu/Q3aui2s3Yc4a9d1inDDUPSUih3M8toTaKKXCwespYY+qIP+z7no+Gs77mTNZwhOqWdwnlR
	YXHMqE6L/h55Cm1TVRYyEaourwgdgH4F3ZDQZEyby7w==
X-Gm-Gg: ASbGncsDFIq1ApTj0eVH6eG6HATGfzMK+r/mGzyO1ISDzZWS+fe6Kz1EKyhBTveVCEa
	lRahsefoRWv8CRk2BesJhvKI1JDcF6VrioEDvKWwVrpkC0BznnnYmd0SZzUxes40nZq2Nfng0Ql
	ZgeL6ByBhUEfxvwwqOZgmCx+XtnrUt23iDSPl2o5HEnLj+mYfWLxxiJ9yRl8icNzEyL0pdVhRps
	tiH+2+9cEkfSnbtsxQysUIyr54qO0vNGTa10ytGneKjf7u1zsooW3ki8N8K1WfJ9keUHZLVh5c2
	ikEiwg83OOHcFxaWcHA=
X-Google-Smtp-Source: AGHT+IHbVGDrgyqiO8WRy5SXKz9IDOvAhFKETAbMJ3m1Q8vImOr6lFhqYGOC6KTBTXxerYf57XzhyUlRiLH6wUjdcUs=
X-Received: by 2002:a05:6e02:184d:b0:433:78b8:9456 with SMTP id
 e9e14a558f8ab-4348c88f75emr205588185ab.2.1763397241084; Mon, 17 Nov 2025
 08:34:01 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250911-ubx-safeboot-v3-0-32fe6b882a3c@geotab.com>
 <20250911-ubx-safeboot-v3-2-32fe6b882a3c@geotab.com> <aRdDyyIA9Z4e8mBz@hovoldconsulting.com>
In-Reply-To: <aRdDyyIA9Z4e8mBz@hovoldconsulting.com>
From: Alejandro Enrique <alejandroe1@geotab.com>
Date: Mon, 17 Nov 2025 17:33:49 +0100
X-Gm-Features: AWmQ_bk3aeBBque08MCWaLCWSIlEzDSTGc9TrNY34FlHXDKGfx4zkAM9pK5oWtI
Message-ID: <CAN=L63pq6WzietQQpdfJ9K3sH2EaQsgRY4RauJsgqV7F2S8U_w@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] gnss: ubx: add support for the safeboot gpio
To: Johan Hovold <johan@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 14, 2025 at 3:59=E2=80=AFPM Johan Hovold <johan@kernel.org> wro=
te:
>
> On Thu, Sep 11, 2025 at 02:58:29PM +0200, Alejandro Enrique via B4 Relay =
wrote:
> > From: Alejandro Enrique <alejandroe1@geotab.com>
> >
> > U-Blox 8/M8/M9 chip have a pin to start it in safeboot mode, to be
> > used to recover from situations where the flash content has become
> > corrupted and needs to be restored. If this pin is asserted at power
> > up/reset, the receiver starts in safeboot mode and GNSS operation is
> > disabled.
> >
> > Deassert the safeboot pin when probing this driver.
> >
> > Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > Signed-off-by: Alejandro Enrique <alejandroe1@geotab.com>
>
> Sorry about the late feedback on this. I had to think about how best to
> handle this, given that we don't have an interface yet to actually
> assert these pins.
>
> I guess we can go ahead and request them at probe as you're doing here
> and add an interface for controlling them later if needed (instead of
> not claiming them and allowing emergency control through gpiolib).
>
> > @@ -82,6 +83,13 @@ static int ubx_probe(struct serdev_device *serdev)
> >
> >       data =3D gnss_serial_get_drvdata(gserial);
> >
> > +     /* Deassert safeboot */
> > +     safeboot =3D devm_gpiod_get_optional(&serdev->dev, "safeboot", GP=
IOD_OUT_LOW);
> > +     if (IS_ERR(safeboot)) {
> > +             ret =3D PTR_ERR(safeboot);
> > +             goto err_free_gserial;
> > +     }
> > +
> >       data->vcc =3D devm_regulator_get(&serdev->dev, "vcc");
>
> Note that the driver is not enabling the supply until open() so I moved
> the deassert to after the supplies have been requested (but before reset
> is deasserted).
>
> Note however that both the RESET_N and SAFEBOOT_N pins should be
> declared as open-drain to avoid driving them while the main supply is
> off.
I will keep that in mind.
Thank you for the note and your time in reviewing this.
>
>
> I added a comment about this to the commit message about this when
> applying and will send a follow-on patch to update the binding example.
>
> >       if (IS_ERR(data->vcc)) {
> >               ret =3D PTR_ERR(data->vcc);
>
> Johan


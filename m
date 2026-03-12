Return-Path: <devicetree+bounces-274731-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id zF/jGxz7smmQRQAAu9opvQ
	(envelope-from <devicetree+bounces-274731-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 18:42:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EAE5276B3A
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 18:42:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8F8453251AFA
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 17:37:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F67B3DC4AB;
	Thu, 12 Mar 2026 17:37:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f50.google.com (mail-yx1-f50.google.com [74.125.224.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A763FE356
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 17:37:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773337061; cv=none; b=kbRQZ4PD0nM/Cyvh4TbmuNqNGiWMamsBnZWNibmx7PdLteR3tWpToUNI3d2dS/w/dAjeiAofrFyGxg0A4VGZhZT2yq67mbMWCnjdIEjLGA3OABGnCVFeocyTmS7jiI54lEPkvFbwpUkLg6AnQY7e9E4c8wRdHklSrnPbGbaKq0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773337061; c=relaxed/simple;
	bh=RsnSHv78qpaLqwvgdzM6cPidFSNlfTQ2Kmz1fO7Ie7I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MaU2u/DjHBbQyC/Fng5FoZEr1KmZWk5rqOPKuqkzjC3ri05lzjeyjGSVkwCgzlWSeCytHkzgcXOnyM4r4VMYUBgNkyeVfnNvqzO3DXk/7SUCLSKzMop3AyKFONJmZ2R/KbymgBkUTVO+VD+aqLDpzHKeWWUuKm+TqIxzjK7mdQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=74.125.224.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f50.google.com with SMTP id 956f58d0204a3-64ca9ec3ee7so1530261d50.3
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 10:37:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773337059; x=1773941859;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+0AhCYVaWd9XEdWYnJomiFHtpEOu8tGpu+mSNsVNTfo=;
        b=BzSWzUToBhYXSVtOMlSZc1qHGpVzTlJqAS2xhIEtVqknbB2YhNwmvcsvkE4dn8D18V
         qCTqFJropj+FhbGtrbUt82/s+zOOxBwNS4/nrgVFQ4W0Zp+0t4fH0h7IuMlqPPv/iDYW
         Ga3c6NpXhbXqFfkpYWnX3Y4LIK9t9lj9hO3r1TqoJO1iEZtF3d0epjxbhSOCeHMrOESj
         YQtz3z342Cq8g1849fIodaKZ13lpjzJ+83VrhWDkAsb/QQreTLw0fQw3vuRt9woeg/4E
         rXu83PTCObxgSTn1f0F7xqN79ebgeQ5VzLAZ3TpxaVFzsI5kmNpMgTyvQvwbhJI2ESeF
         sS2w==
X-Forwarded-Encrypted: i=1; AJvYcCWHy1KP1/UF4quqkGTA2daC3zECf2ILFfkkQEnYwLNtrile4w1WccQKRr7/1HHX267LpLW1mUBrdWqk@vger.kernel.org
X-Gm-Message-State: AOJu0YzcsLyny8WQHG9QzlbHffUtgW0/oMole3XiBPhXGXmf4scoyl1a
	jMA7DW6GGIOqW3B0f4FflHyWChRk0szUJgbPDLQdqumoZ66VX+QiANJFU3VNceIX/iHBkg==
X-Gm-Gg: ATEYQzy2ky4XiKuqir8rYk20bnP5q3g3HuNyHklD+CiH2T33MJwZtWQnHM3ksWLkjBk
	hdEbZ0BhkeQDPyJQKCIra3TJpzFdsn7Fb7tC0T4VvtZN28JjxFj09+cfT0Xx9Ysp9G/dXnblYa8
	vgnx/46S5p4Z/iV6h392BOET8jwpSfHjBP2nTwPHe0bsGo6dxwTKCxMa368RFVTSXQf72WZoIB2
	hI+TaVRARajSglZ1mdOaxXBjOse9eB8aptP/CMj30yIN4SfZxbkq0fgl9xLFa/Yv+HoEPyNOrVG
	G312e5NHm+3j7GaYsUKz2NYdgktvLJAYi2896lFW4H/e1p7bisq2Wde8FdWKzUeL50ytM9jIxTS
	Sd/2Z+QALOGvF0aD580NmIgFZMGhQkmy0n01yERbrXrzywabJBoO5/yYFgCRGf85OStmwbcBX+i
	8sM36wLSzvCy46r0036Wy7RoPh7xFrzC+DyUu6pyF/pGLn1BOElBU8tYNlTFpA
X-Received: by 2002:a05:690e:1202:b0:64c:aab6:65ad with SMTP id 956f58d0204a3-64e62fec647mr410753d50.40.1773337058897;
        Thu, 12 Mar 2026 10:37:38 -0700 (PDT)
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com. [209.85.128.170])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-64d6511564fsm3567285d50.13.2026.03.12.10.37.38
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2026 10:37:38 -0700 (PDT)
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-79900d6dc3cso13356197b3.3
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 10:37:38 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXq2xsvEZ2kGQaAi95qvLX8bgNes1YPo5WTJlDtpYpVB7ogMNfK+roMlTUlTEJG/aW1wqwtbEva4en5@vger.kernel.org
X-Received: by 2002:a05:690c:34c9:b0:798:da13:7141 with SMTP id
 00721157ae682-79a1c2182b8mr4592247b3.63.1773337057869; Thu, 12 Mar 2026
 10:37:37 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260311224044.21480-1-email@sirat.me> <20260311224044.21480-3-email@sirat.me>
 <abLUgxivQnz2ISeY@ashevche-desk.local>
In-Reply-To: <abLUgxivQnz2ISeY@ashevche-desk.local>
From: Sirat <email@sirat.me>
Date: Thu, 12 Mar 2026 23:37:26 +0600
X-Gmail-Original-Message-ID: <CANn+LW+mg9Ridm3aMrVhy7cgvmJO0JNV_s_myfRCW8gPv7Ggkg@mail.gmail.com>
X-Gm-Features: AaiRm53b54paoY7bohUQnhAoqD1uMqiR4vU46Vf3xd6gKJBBdHGtUpnfKfsDxCc
Message-ID: <CANn+LW+mg9Ridm3aMrVhy7cgvmJO0JNV_s_myfRCW8gPv7Ggkg@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] iio: proximity: add driver for ST VL53L1X ToF sensor
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, jic23@kernel.org, 
	dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274731-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DMARC_NA(0.00)[sirat.me];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[email@sirat.me,devicetree@vger.kernel.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 0EAE5276B3A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Mar 12, 2026 at 8:58=E2=80=AFPM Andy Shevchenko
<andriy.shevchenko@intel.com> wrote:
>
> On Thu, Mar 12, 2026 at 04:40:37AM +0600, Siratul Islam wrote:
> > Add support for the STMicroelectronics VL53L1X Time-of-Flight
> > ranging sensor with I2C interface.
> ...
>
> > +static const struct regmap_config vl53l1x_regmap_config =3D {
> > +     .reg_bits =3D 16,
> > +     .val_bits =3D 8,
>
> No cache?
>
The result registers change on every measurement, so caching doesn't
apply well here.
Will add .cache_type =3D REGCACHE_NONE  with a comment to clarify.
> > +};
>
> ...
> > +
> > +     reinit_completion(&data->completion);
>
> > +     wait_for_completion_timeout(&data->completion, HZ / 10);
>
> No error condition check?
>
This is only a short drain to make sure any pending IRQ has been
handled before we stop
the device and clear the interrupt line. A timeout here is not treated
as a failure and the device
is being shut down anyway, so I intentionally do not check the return value=
.
>
> ...
>
> > +     data->xshut_gpio =3D devm_gpiod_get_optional(dev, "reset", GPIOD_=
OUT_HIGH);
> > +     if (IS_ERR(data->xshut_gpio))
> > +             return dev_err_probe(dev, PTR_ERR(data->xshut_gpio),
> > +                                  "Cannot get reset GPIO\n");
>
> If it's a reset (semantically), use reset-gpio driver and reset APIs here=
.
>
The XSHUT pin is a shutdown/enable pin rather than a true reset line,
and the existing shared st,vl53l0x.yaml
binding already defines it as reset-gpios. So I am keeping the GPIO
consumer API here.
>
>

Sending v4 with all other fixes from your review, shortly.

Thanks,
Sirat


Return-Path: <devicetree+bounces-225752-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BB4D2BD08CF
	for <lists+devicetree@lfdr.de>; Sun, 12 Oct 2025 19:42:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D6DD8188A156
	for <lists+devicetree@lfdr.de>; Sun, 12 Oct 2025 17:42:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA8A12EE5FC;
	Sun, 12 Oct 2025 17:42:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Hw+Mn5qZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com [209.85.218.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEE8A2EB878
	for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 17:42:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760290931; cv=none; b=EzkIpMDqjW73++3eyWXIYl65WA56qx+HijtmOGnshTkHDXTTOulDJsXPlfef4dxHtLdtfNTs3+tAHRQt1zKZlOdTOugGCK9rQo5d9PxhvUKp0wukd8KA3/z4hYudH62HinbJY5+NRGlbbZRD6M/I/L7Hq4i4RdEevp2UEbqv3wI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760290931; c=relaxed/simple;
	bh=eP9vUD+vnLqburWlbhDBLpx8OtHE5Yk44Bqb+/o3gVI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NQkiDIZRV3pIChC1G0lRQKZet95ChmqqkfPbdLkw5HQcFr7zXzLX48lpgtN9vLdt9C2oZsjqDxswHSZT9Ivoos55+j+fzgqf7DDJXIcnHlSxcwznJBzdLz9BlQ8iLtjdRPO+RpwxAI2X87VQstgFaOhzRi2D8/wGzzsWdpSdzIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Hw+Mn5qZ; arc=none smtp.client-ip=209.85.218.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f65.google.com with SMTP id a640c23a62f3a-b3c2c748bc8so501826866b.2
        for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 10:42:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760290927; x=1760895727; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V9Vp913h5vL+QAaTd5YmM73F2Cs5m5TxizRwXZaWP60=;
        b=Hw+Mn5qZUJI+e8Cxa9EV7oM11VEB/z367A0Rlv+hmdGbG6+IdNMjBeeQ3UQ2jteQzk
         8TW/iI3ZvYDHf9S0YcnwtH/eba/FyHF/vzHN+L5AX7OO+x1UHYeBFF9GL4JaEfw5IBta
         idNgUnJnqey3KTB99sEdEKrvceiiD/13kbEpfZV/QszVbAX41Kwir1/tQLLEuivMq/hT
         rf3ruh0EJhXOpGLjqmzCkhWAokDvjoJTOvY1n/ZUqqBdhyYqizPnujDTZpAZ1MgdHQct
         aKW/Y8cvVTK67MNFFxvdLK7jhEyFKM6E8U0nlIzlaKEMNbe+Pz72k0gWsQIv3KeULZ5B
         5QMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760290927; x=1760895727;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V9Vp913h5vL+QAaTd5YmM73F2Cs5m5TxizRwXZaWP60=;
        b=UoX2LP8i+ysrELKCbm0wpHpbIT97MDzFacJ+PdvRQnZxEj2D2JgK0EntgJ8fgyHiCn
         /5ruNf1DCvIyWYXe9klbZ/dGfigqB/tnpkG/Og/WGiWgQDDjlslwyD/Ri1KKZCRwzIMx
         iJ2H0Va518bylDSmWrG71Y+OCa2pFflk1Kxiz0S0FwwFWM6+RmsPbTLSNifhxBt4hpYZ
         bzopXmfSUt1qX2JHfh/vQ57Ywrau75sICk0hmWnKXGIXCT0I8Lena8mgg91A7BYP1C1M
         b1DwQnwnpvfPwhWgiewBOuragDo20lWOG4rUiVdnOUQRZ+QzfvCu4zYb+djpLYNJb/Gj
         uCuQ==
X-Forwarded-Encrypted: i=1; AJvYcCV5TEIYNb3WKDfc0LASx6yvOg/X9mnHF6PhKAip+IFYQIoM7p7bd29nm262tq6oETsCmH/HGExuphal@vger.kernel.org
X-Gm-Message-State: AOJu0YzwC1s51N8t3ZEGfc7wAUI/K1ldmfduQMDk8jDmEuKe8/bspdBQ
	C/NJAViWLQrLSnFurCKouHGmVmjUoSTd5ivfWTqQQm6KlQsvaRy6BymKowJuCIuLvXu6onuWuIR
	pCOdFP0a7hPZSqHtWRWILSr6ReR7W6PE=
X-Gm-Gg: ASbGnct6/NMH9ErM/sf3J+AddQY0lTwnFZFaLZTk5BFGryFszqxBvvoRXur0+B1U77a
	nXNE3A9sZ2Fyda8TeIxsX8q2VSYmoXx17MHN+583MrjyIxJ6+uxzWxDBFwuWL0YW89zZnc+ifoq
	Ny5+R73AUsqp75jnEwPfHQftMgTBZKmMP3MEFjXhANr0wTjyShHPjrBZ1UzjkGSBihABedQbYYZ
	m0mwhMWYPH5v2ZRgXHjcMUxSQ==
X-Google-Smtp-Source: AGHT+IHK/YEDMsxfyxXe6QHnu1EkcbH1GIUSupmeK3Uje3bcpIQzzt6PFoeNHm7/h6JTMXG/uNGnvGRHvfar18LgOMI=
X-Received: by 2002:a17:906:dc90:b0:aff:fe6:78f0 with SMTP id
 a640c23a62f3a-b50ac8e5533mr2061063566b.54.1760290927009; Sun, 12 Oct 2025
 10:42:07 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251008031737.7321-1-raskar.shree97@gmail.com>
 <20251008031737.7321-2-raskar.shree97@gmail.com> <fce1c905-1c64-47b5-91b1-0017809ec12c@baylibre.com>
In-Reply-To: <fce1c905-1c64-47b5-91b1-0017809ec12c@baylibre.com>
From: Shrikant <raskar.shree97@gmail.com>
Date: Sun, 12 Oct 2025 23:11:55 +0530
X-Gm-Features: AS18NWAjXit-R0YqUEVlsFKx0AtG-hL4GXHhWfTkLW4-ZmK0phkm6xICo2h97SE
Message-ID: <CAHc1_P7W0sU_5dU8Ei9MgGOFA+N7Q=fotk91vdcGUuUGLWLuqg@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: iio: max30100: Add pulse-width property
To: David Lechner <dlechner@baylibre.com>
Cc: jic23@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	nuno.sa@analog.com, andy@kernel.org, matt@ranostay.sg, 
	skhan@linuxfoundation.org, david.hunter.linux@gmail.com, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-kernel-mentees@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 10, 2025 at 11:19=E2=80=AFPM David Lechner <dlechner@baylibre.c=
om> wrote:
>
> On 10/7/25 10:17 PM, Shrikant Raskar wrote:
> > The appropriate LED pulse width for the MAX30100 depends on
> > board-specific optical and mechanical design (lens, enclosure,
> > LED-to-sensor distance) and the trade-off between measurement
> > resolution and power consumption. Encoding it in Device Tree
> > documents these platform choices and ensures consistent behavior.
> >
> > Tested on: Raspberry Pi 3B + MAX30100 breakout board.
> >
> > Signed-off-by: Shrikant Raskar <raskar.shree97@gmail.com>
> >
> > Changes since v1:
> > Add unit suffix.
> > Drop redundant description.
> >
> > Link to v1:
> > https://lore.kernel.org/all/20251004015623.7019-2-raskar.shree97@gmail.=
com/
> > ---
> >  .../devicetree/bindings/iio/health/maxim,max30100.yaml      | 6 ++++++
> >  1 file changed, 6 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/iio/health/maxim,max3010=
0.yaml b/Documentation/devicetree/bindings/iio/health/maxim,max30100.yaml
> > index 967778fb0ce8..5c651a0151cc 100644
> > --- a/Documentation/devicetree/bindings/iio/health/maxim,max30100.yaml
> > +++ b/Documentation/devicetree/bindings/iio/health/maxim,max30100.yaml
> > @@ -27,6 +27,11 @@ properties:
> >        LED current whilst the engine is running. First indexed value is
> >        the configuration for the RED LED, and second value is for the I=
R LED.
> >
> > +  maxim,pulse-width-us:
> > +    maxItems: 1
> > +    description: Pulse width in microseconds
>
> Would be nice to add to the description which pulse width this is referri=
ng to.
Thanks for your review comment, I have updated the description and
shared v3 patch for your review.
> > +    enum: [200, 400, 800, 1600]
>
> Properties with standard unit suffixes are u32 arrays, so I think this
> would fix the error and also make maxItems not necessary.
>
>        items:
>          - enum: [200, 400, 800, 1600]
>
Thanks for sharing the fix. I have tried it but 'dt_binding_check'
complains as below: 'items' is not one of ['description', 'deprecated',
'const', 'enum','minimum', 'maximum', 'multipleOf', 'default', '$ref', 'one=
Of'].
Schema expects it to be defined as a single u32, not an array. I have
updated the patch accordingly.
> And we want to know what the default is if this property is omitted.
>
>         default: 1600
>
Thanks for your feedback, I have added the default value and shared v3
patch for your review.

Thanks and Regards,
Shrikant
> > +
> >  additionalProperties: false
> >
> >  required:
> > @@ -44,6 +49,7 @@ examples:
> >              compatible =3D "maxim,max30100";
> >              reg =3D <0x57>;
> >              maxim,led-current-microamp =3D <24000 50000>;
> > +            maxim,pulse-width-us =3D <1600>;
> >              interrupt-parent =3D <&gpio1>;
> >              interrupts =3D <16 2>;
> >          };
>


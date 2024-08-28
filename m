Return-Path: <devicetree+bounces-97468-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B5D7F9624C5
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 12:23:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DAEA81C23CEB
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 10:23:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 023B316C6A9;
	Wed, 28 Aug 2024 10:23:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="xRNOZVR9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com [209.85.217.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0477316C6A0
	for <devicetree@vger.kernel.org>; Wed, 28 Aug 2024 10:23:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724840604; cv=none; b=f9A+DQIQOtgAhuutWlBa3dGdE5XFk3nrql2um4/9XVqhtMYl78J52ecOGKh1TZdGLtKoDChWpTzqFFZk3LGT5Teh2IC7H63c+3nB8afxnFt/ozHB1OX5+EI5vt1GD0bezbu0bRF9NUx3mGzBVsy6gmBDc5+gYK+ZBy1Fcz5KxVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724840604; c=relaxed/simple;
	bh=pcmoMHkfM6+rVu9NGxIUa/tgdGuUsUHn2TixcQ7+jBo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OVyVzSYglF4g96R9lbwvpdqUsgkdhuN3+EaAac1pN+7BN+K6b41eNbbeg/Bu2W4cQCivbgkyiveVewohCGeeth2E5KnBTFPiR4PlU10TVo1t3FzYBMry/HpaGB0KOWnSGX/vcFBW+1EQOgkgPz+Wa3u5TIPfEly6zun/dQ44Gl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=xRNOZVR9; arc=none smtp.client-ip=209.85.217.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-vs1-f41.google.com with SMTP id ada2fe7eead31-498d14b9b8cso2244925137.3
        for <devicetree@vger.kernel.org>; Wed, 28 Aug 2024 03:23:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1724840602; x=1725445402; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1Mbi6UDIyTd2bDtcfNWtgeu1nnW22anmzdjv6AWS1kU=;
        b=xRNOZVR9KJLSv7UMEP/2pMW7e/I6KpxUGJqVk2BgkYJuAjl6pha8zmpykWXST+9v+z
         hCvQyNc1uSdYXD0cPP1YymS2c2dntk/XfIuPv/k7imQbshMpQC8JMp5HLmKGA8a/ATgR
         Y1EBzO7snbX87v+rmMUB5mw4fobN9MlNVav4ZDCdgESseL4Hnb1zJ7xl58y2wLl7Zr6l
         ncufmw1wzBNHP37LVAjzhgjKwlqOKjsgYWqyURK1RSElBoJyDxag70+5fzV3z12dqFdS
         QgJ+CbWkC8yGWXBwTaE1Yq1lfbVMHoT0JAU05l6PqNT+Jggjxq0IoeSNszDeuH+C0n+E
         aAug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724840602; x=1725445402;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1Mbi6UDIyTd2bDtcfNWtgeu1nnW22anmzdjv6AWS1kU=;
        b=KZwhjnGkHqhj70wPFxTGVD1TC2wlQ00DA3ENwuPtxShu4MZHr933F3s1GRbgoTtOyY
         vKwCizXoW9m7DB9BE9ahjoQZzsEvDv0xpJo7h3E1d3+zZAslO+IzvuGz5WKrOs0PuZGy
         JVLKpkloxj+RUAxv5wpySdRDQr6DcQPH6sxUvrubbcHokwybvpHeu5sx/KZw7jhzG6jU
         CoNOMB6ldgO3crOQU4Lo3MRKyIGIC7uPLECyLU+ycGCxEmFAuv3u6WFNaIiV84uIniO/
         RU6HF6qqqrWgCsyelX6PzvDgqKdNI2w1PLqd7PY7TgoZN+8K/hSRyb8zxBh3HXMppRhX
         GPVw==
X-Forwarded-Encrypted: i=1; AJvYcCXVA6Z2WNCZwxUt7QGyzPU+Q+fhUlevV6wcZeJVu2WS2b824tO1j2JKJA2q3WetWk/0eRg4lUPg5LnM@vger.kernel.org
X-Gm-Message-State: AOJu0YyggrUO7L3/4Jku4ZkwxU7wFbDtR0vmxWnkv6RXvglkzfL5NEdD
	wlyxmWYpqmfOEn3p3DpetVfi+EMx1HCYYZEZeLRStRStS6MTN+0MelVqjVMQJT6TBZ0IyX34QyE
	8Uwey+yRS6bjQskupAztgYObwA/msH2VccxSVMQ==
X-Google-Smtp-Source: AGHT+IGiYzqoMHpp0MAoVgUWF9ZasIX8jeUlgNpRL3MOlPNFy1/rfUwF8T0ImEZUhZW1LvMGbo0ZvCX5hvYP3bgA260=
X-Received: by 2002:a05:6102:38c8:b0:498:efe0:f91d with SMTP id
 ada2fe7eead31-498f46ea982mr17511357137.19.1724840601668; Wed, 28 Aug 2024
 03:23:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240819064721.91494-1-aardelean@baylibre.com>
 <20240819064721.91494-7-aardelean@baylibre.com> <zuvwoy5wtdel7qgkz6wa6valwjwajpwoqnizyoooiawghrxvc3@cuoswu32h4fl>
 <CA+GgBR_V8r0Vz1PeKxwD6ovwHXxGM6=Z6XVd03ehokT5C3zjnQ@mail.gmail.com>
 <20240821212606.6981eae1@jic23-huawei> <46153017-9ab2-4a2f-afe6-9321e0f65f03@kernel.org>
In-Reply-To: <46153017-9ab2-4a2f-afe6-9321e0f65f03@kernel.org>
From: Alexandru Ardelean <aardelean@baylibre.com>
Date: Wed, 28 Aug 2024 13:23:10 +0300
Message-ID: <CA+GgBR-ZPfJuOJJuXqUu6YEBmzHf6SLYWFprQUo8X-UhyRTyEg@mail.gmail.com>
Subject: Re: [PATCH 6/7] dt-bindings: iio: adc: add adi,ad7606c-{16,18}
 compatible strings
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Jonathan Cameron <jic23@kernel.org>, linux-iio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, krzk+dt@kernel.org, 
	robh@kernel.org, lars@metafoo.de, michael.hennerich@analog.com, 
	gstols@baylibre.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 23, 2024 at 12:09=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.o=
rg> wrote:
>
> On 21/08/2024 22:26, Jonathan Cameron wrote:
> >
> >>>> +    type: object
> >>>> +    $ref: adc.yaml
> >>>> +    unevaluatedProperties: false
> >>>> +
> >>>> +    properties:
> >>>> +      reg:
> >>>> +        description: The channel number.
> >>>> +        minimum: 0
> >>>> +        maximum: 7
> >>>> +
> >>>> +      diff-channel:
> >>>> +        description: Channel is bipolar differential.
> >>>
> >>> There is diff-channels property, why do we need one more?
> >>
> >> Yeah, I wanted to use that.
> >> Maybe I will try another spin at that.
> >> The thing with "diff-channels" is that it requires 2 ints.
> >> So,  diff-channels =3D <0 0>.
> >> To use it here, a rule would need to be put in place where  "reg =3D=
=3D
> >> diff-channels[0] && reg =3D=3D diff-channels[1]".
> >> That also works from my side.
> >> Part of the reason for this patchset, was to also get some feedback
> >> (if this is the correct direction).
> >>
> > So I 'think' this is a datasheet matching thing.
> > In many cases, even for strictly differential devices, the pin
> > naming allows for a clear A - B channel description. Here
> > in the non differential modes, the negative pins are effectively
> > not used (from a really quick look at the datasheet)
> >
> > So we 'could' introduce magic channels (give them high numbers) for
> > the negative ends. I think we may want to do that for the
> > userspace ABI (0-0 on the few times it has come up has been a
> > calibration / self check mode not what you have here - it
> > wires the actual inputs together).  Alternative is just present
> > them as a simple voltage and don't worry about the differential aspect
> > as it's not hugely different to bipolar (where the zero level is
> > effectively the negative input of a differential ADC.
> >
> > For the binding I'm fine with the binding using A, A as you suggest
> > with an update to adc.yaml to cover this corner.

The main difference the "diff-channels" property brings is a change to
the available scales.
They differ a bit between differential, and single-ended (unipolar and bipo=
lar).

I'll update the adc.yaml file then.

>
> Yep, let's add it to adc.yaml.
>
> >
> > We never (I think) have bindings for the self check case where the inpu=
t
> > is wired to both sides. It's just a mode that is applied to
> > any inputs that are wired.
> >
> Best regards,
> Krzysztof
>


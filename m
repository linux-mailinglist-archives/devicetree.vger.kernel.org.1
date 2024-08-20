Return-Path: <devicetree+bounces-95035-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AB9E0957C8C
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 06:52:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5F1C3284CBA
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 04:52:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4311C41C71;
	Tue, 20 Aug 2024 04:52:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ZLHZl2WJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com [209.85.221.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9A9CE541
	for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 04:52:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724129526; cv=none; b=Pk4GBKG9OXAZUHWkfRx/IMgAhBna0SZM9ZNs5dLZOW9C9JJs7aJZIk0isVjXotlFdILAlZeDlQXWaIR44pPS5L2pSahN+e8BRTlxVIg5gYKka6D6PO+Q4BX96YicZglheYiVPtzsoNEeBUtu/w0vjtnKXuZM/jRFwGDrN7fZDiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724129526; c=relaxed/simple;
	bh=vgJixcmKlQG9wiiDjOIwc6NXFfh6n3GbjwmB9KxV4tw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jNusq3TLTz0dpBg3fITMHHThyYTT6YMnUK0yRmpsfK2Y8R5o1/W0WBQGubbDl4BLSkSzh8eyR6KW3cTYsZfra42eXeG+y2hhijpYZNtThdMk/UE6hfGDpoNktgNyktlu5By5QHdY1erpdf11gDxDGTRHMN0+AXU7D3dSx7XWXmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ZLHZl2WJ; arc=none smtp.client-ip=209.85.221.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-vk1-f171.google.com with SMTP id 71dfb90a1353d-4f891629db7so284212e0c.1
        for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 21:52:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1724129522; x=1724734322; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B8BpmzVy7XYFzXeTAR5DMGDZBV2YBdqr31NxhMlCmgg=;
        b=ZLHZl2WJfIoE68VDUbEjQaM3g1skcmW15swN6OMwAHQoE+fQlZIC60yJLAlHnBlgVW
         Z5y+6KB4o371eRFs8gfFvtqYXfwg9+UD4Ui1axdbQbRCHSjcsCmdLKkUFB/GBTVHE9Lh
         ZONtwRHfQi4n/i5SaNZFx2esQBLMvtZUo4+s3lNSrvU2bHDku/ZuMGjCdwMtqz9kKplA
         hQ4qLryfzxag9HNwp4qUdJJ2kT9T0yeMANeR7s2mEib38dwfq82+vGjV1IlZmeLoahwH
         rcBdVnP2Zx7/8hzbsQyXYYp6GuwhP5guWM48x2JlEef1rv70BrXXf3WPOw7bTEGlC4K1
         Z4yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724129522; x=1724734322;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B8BpmzVy7XYFzXeTAR5DMGDZBV2YBdqr31NxhMlCmgg=;
        b=Uh9VyYG3XdeLcPaeZvgLuGq1osV+Y3OHc44vYrANHsfLhqJcOdndoQxMevmudXoWI2
         LLBjJTIQQQRpEZQR0SanLe3tYJNrvdDbbLAtiIpFIBem4J22nAgRsX6bvxm5iCKtVcYQ
         TA9+U+ZqcVkdMr5blaegrMXkjoOGdp06Tj/ArwTspHwUgErZY710bhfeDTW2VLgu979U
         CrmB+xpyLTioOL1PZzjXy1LGIdqMIm6UyX6crFmCwtrWKuRmjtMi5V1WzZAO7gygT70S
         PqssCNOPlLYmxdhRoZVEcWFWRCUj/h3IM4CZaQoIgBz5GwBdFl7vc64vxCoSFPJY4C3L
         q0og==
X-Forwarded-Encrypted: i=1; AJvYcCXzYWet2ATlG1/BX8a5efFnqjQ42RdLZsxPjsLTFdzzY7LxD0+Ds/Txw0i161A66eLP0d/rDzkk+/OB@vger.kernel.org
X-Gm-Message-State: AOJu0YwEWdgL1weuDiNyPwB3kj5v9mCJer5y/RRO4TCSxQJin+rp/KwF
	b/x3DRIYcT6DhhGfPnj67VwGzufYKWpZ89UVdTiHSNbT9lDo/qpFzSmrMOwmOKQGcoM0boDTvt7
	um6FPRwo2yigA74DcKtA21mntxeF7nIUeBvRkwA==
X-Google-Smtp-Source: AGHT+IHRNMlAc+3b2zOEVl0CWenlMGtMA9VWeNmdCt1kdoHU/yqUSWTUPZ59MH32P7fA5l6lPhdus9TRxDF1NIn3WdU=
X-Received: by 2002:a05:6122:2502:b0:4f6:b094:8095 with SMTP id
 71dfb90a1353d-4fc6c9e122emr9052758e0c.2.1724129522360; Mon, 19 Aug 2024
 21:52:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240819064721.91494-1-aardelean@baylibre.com>
 <20240819064721.91494-7-aardelean@baylibre.com> <zuvwoy5wtdel7qgkz6wa6valwjwajpwoqnizyoooiawghrxvc3@cuoswu32h4fl>
In-Reply-To: <zuvwoy5wtdel7qgkz6wa6valwjwajpwoqnizyoooiawghrxvc3@cuoswu32h4fl>
From: Alexandru Ardelean <aardelean@baylibre.com>
Date: Tue, 20 Aug 2024 07:51:50 +0300
Message-ID: <CA+GgBR_V8r0Vz1PeKxwD6ovwHXxGM6=Z6XVd03ehokT5C3zjnQ@mail.gmail.com>
Subject: Re: [PATCH 6/7] dt-bindings: iio: adc: add adi,ad7606c-{16,18}
 compatible strings
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, jic23@kernel.org, krzk+dt@kernel.org, 
	robh@kernel.org, lars@metafoo.de, michael.hennerich@analog.com, 
	gstols@baylibre.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 19, 2024 at 4:09=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On Mon, Aug 19, 2024 at 09:47:16AM +0300, Alexandru Ardelean wrote:
> > The driver will support the AD7606C-16 and AD7606C-18.
> > This change adds the compatible strings for these devices.
> >
> > The AD7606C-16,18 channels also support these (individually configurabl=
e)
> > types of channels:
> >  - bipolar single-ended
> >  - unipolar single-ended
> >  - bipolar differential
> >
> > This DT adds support for 'channel@X' nodes'
>
> I don't understand this sentence, suggest to drop it.

Huh?
I guess I'm developing more ADHD, where I forget to finish sentences(?)

>
>
> >
> > Signed-off-by: Alexandru Ardelean <aardelean@baylibre.com>
> > ---
> >  .../bindings/iio/adc/adi,ad7606.yaml          | 83 +++++++++++++++++++
> >  1 file changed, 83 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml =
b/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
> > index 69408cae3db9..f9e177de3f8c 100644
> > --- a/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
> > +++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
> > @@ -14,6 +14,8 @@ description: |
> >    https://www.analog.com/media/en/technical-documentation/data-sheets/=
AD7605-4.pdf
> >    https://www.analog.com/media/en/technical-documentation/data-sheets/=
ad7606_7606-6_7606-4.pdf
> >    https://www.analog.com/media/en/technical-documentation/data-sheets/=
AD7606B.pdf
> > +  https://www.analog.com/media/en/technical-documentation/data-sheets/=
ad7606c-16.pdf
> > +  https://www.analog.com/media/en/technical-documentation/data-sheets/=
ad7606c-18.pdf
> >    https://www.analog.com/media/en/technical-documentation/data-sheets/=
AD7616.pdf
> >
> >  properties:
> > @@ -24,6 +26,8 @@ properties:
> >        - adi,ad7606-6
> >        - adi,ad7606-8  # Referred to as AD7606 (without -8) in the data=
sheet
> >        - adi,ad7606b
> > +      - adi,ad7606c-16
> > +      - adi,ad7606c-18
> >        - adi,ad7616
> >
> >    reg:
> > @@ -114,6 +118,30 @@ properties:
> >        assumed that the pins are hardwired to VDD.
> >      type: boolean
> >
> > +patternProperties:
> > +  "^channel@([0-9a-f])$":
>
> [0-7]
>
> > +    type: object
> > +    $ref: adc.yaml
> > +    unevaluatedProperties: false
> > +
> > +    properties:
> > +      reg:
> > +        description: The channel number.
> > +        minimum: 0
> > +        maximum: 7
> > +
> > +      diff-channel:
> > +        description: Channel is bipolar differential.
>
> There is diff-channels property, why do we need one more?

Yeah, I wanted to use that.
Maybe I will try another spin at that.
The thing with "diff-channels" is that it requires 2 ints.
So,  diff-channels =3D <0 0>.
To use it here, a rule would need to be put in place where  "reg =3D=3D
diff-channels[0] && reg =3D=3D diff-channels[1]".
That also works from my side.
Part of the reason for this patchset, was to also get some feedback
(if this is the correct direction).

>
> > +        type: boolean
> > +
> > +      bipolar:
> > +        description: |
> > +          Channel is bipolar single-ended. If 'diff-channel' is set, t=
hen
> > +          the value of this property will be ignored.
>
> Then provide here allOf:if:then which makes it false if diff-channel(s)
> is present. And then drop entire property, because you duplicate what's
> in adc.yaml.

Ack.

>
>
> > +        type: boolean
>
> Blank line.
>
> > +    required:
> > +      - reg
> > +
> >  required:
> >    - compatible
> >    - reg
> > @@ -170,6 +198,21 @@ allOf:
> >          adi,conversion-start-gpios:
> >            maxItems: 1
> >
> > +  - if:
> > +      not:
> > +        properties:
> > +          compatible:
> > +            contains:
> > +              enum:
> > +                - adi,ad7606c-16
> > +                - adi,ad7606c-18
> > +    then:
> > +      patternProperties:
> > +        "^channel@([0-9a-f])$":
> > +          properties:
> > +            diff-channels: false
> > +            bipolar: true
>
> ? Drop, no clue what you want to say here. But more important, you are
> now adding channels to other variants. Split your commit between new
> device and new properties for existing devices.

Ack.
Will do that.

>
>
> Best regards,
> Krzysztof
>


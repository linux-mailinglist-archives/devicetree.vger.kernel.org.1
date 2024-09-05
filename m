Return-Path: <devicetree+bounces-100296-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E024396D1CE
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 10:19:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9A27C2814E5
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 08:19:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E607F1991D3;
	Thu,  5 Sep 2024 08:15:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="ki1ZTvxK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com [209.85.217.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36CB81991BF
	for <devicetree@vger.kernel.org>; Thu,  5 Sep 2024 08:15:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725524159; cv=none; b=ZZ0sN9hEgvbzJJbrrIn8kP8kcyPGvuuk4O9DrSYufaeLU/JbRN/rB/AgXi87tAKeAd3W2EhAziRJ+jhFv+df2OgtHA/UEuAW1hkVXDV9rW1EN9pi7diLrIXUHvkHDF7NNFa5kBqwrbP55QYkspEqnyEpp1TmTaUztDLkSNRPXjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725524159; c=relaxed/simple;
	bh=icEa2sW0vAQa973BQSvnfSg86nhC1mMPXtOnkbj4Kvw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZS8jPVA8opLXchLoIUaNLx9HuEAbHVEG0zmVAQDNZNCaRIsbqj3oaaICCpXEzsP/RmKltS+mWBQffgQn0t9EkXOh+DLOtkyfXhVKKL9zjovdkOfVZUkc6l/IlElOtLUDpp2aVbFsSlz9SmVdUql9tZQHACnCazOpI5YVBRWtq+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=ki1ZTvxK; arc=none smtp.client-ip=209.85.217.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-vs1-f46.google.com with SMTP id ada2fe7eead31-49bd250b0f2so123814137.0
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2024 01:15:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725524156; x=1726128956; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k0rSmKjg6Zyu63XwLKpT0uVVvkdtwY/RJAX7lMT3kHE=;
        b=ki1ZTvxKRrHDThv+Qayzt4FxsgYe4eCp6kB1FCJEiNFJMt88/yxwRi+xSZ1NQNHZck
         RrDhkrTn/jVYDKVARD4rFhEObPzry5IpIIkKZf7HOu3KL4n2yxhP10zm6ja5Xohqsu3t
         qX+gRjgJN7cnhVLBGAf8de7YxtylnktLVCuCL2inxtUfgy1Dl+ZH1OtGvMiIYNY/D52Y
         SYuOQTUtSvGp0ciT0vxSjmRd1pDHG2SZ/INapLIL9BWesIXj81mfFhOjiyggaXunrqyS
         XglU3Os55yXGRfQ8cUDthjmhbjnQfWZHZCOe3oVHVqSiiQKp0vKlwybhUOQNN0TG9WPw
         BZiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725524156; x=1726128956;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k0rSmKjg6Zyu63XwLKpT0uVVvkdtwY/RJAX7lMT3kHE=;
        b=CmeDD2ZCz3Dl9gPMoHcopdf9Cx/UHQJ3wJ9iqA3biGxw5iBEs4OQSggF0uaBNkdyUj
         50xj2HKN/L6iTuYpzkjyBqghL1e5ZB79jU/LC6qV0QVs5v3sAacdIlKUx0/Fum/iGWd4
         pCVY89CNCs2c42UW3X/PnaclEvEy2Q38OopHmQgUIzD9WblZScP1jo/NlARydfgerzWJ
         1R0nmM4YKppqHHdWFAgPJ9lOGL5mBMHMwNRveGsJRtuhuFg6DT98VM2v5ZFL5lUqd7RF
         1PHx7KpGmj6jYW/I/w8h5L6tQu9nQlx574+DHfIvAxtqHSW0MDdzGsNIKLbNWppCgehD
         9ilg==
X-Forwarded-Encrypted: i=1; AJvYcCWkyaYxya2SDxu1BRJT/idB1k0UOlwQOnm+cowwfQN8Twct3pvQjEEOHo8uLGKBdFKsq19Qhups3Csq@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4wh7s3TN/kwW22cAv6fXK/R0O8Pp58KMYSv6XqVslSi3ijdDP
	DulO2KDgEcoWglK1xQ7RFpQs6059tekRcuuDmS5PO1GL0AhdgzQwd0lPCmn2upYxLqUWJbhrbOY
	TKwOxG0BPS9cDZjeq9AAqM9mU3xKaAghiQGGCdw==
X-Google-Smtp-Source: AGHT+IFEH+lyNDFzGtkVSG1R/MllAqnAbnshuBp7OLXzYpkWk9kP5U+zafpVUGNBEIuYZPwN0AjC2CdInBVcFvp2Bi0=
X-Received: by 2002:a05:6102:c4c:b0:497:921:b799 with SMTP id
 ada2fe7eead31-49bba766182mr3164053137.11.1725524155939; Thu, 05 Sep 2024
 01:15:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240904072718.1143440-1-aardelean@baylibre.com>
 <20240904072718.1143440-8-aardelean@baylibre.com> <tpl7wufkyog2bvnhg36keczeokadxkqkcoiy5qjscsoosxsiql@6a3ghbo4pc7f>
In-Reply-To: <tpl7wufkyog2bvnhg36keczeokadxkqkcoiy5qjscsoosxsiql@6a3ghbo4pc7f>
From: Alexandru Ardelean <aardelean@baylibre.com>
Date: Thu, 5 Sep 2024 11:15:44 +0300
Message-ID: <CA+GgBR-oER6S3iqJR_T781fT-qxH2awPwdD7ubKxTZsC_RWn0g@mail.gmail.com>
Subject: Re: [PATCH v3 7/8] dt-bindings: iio: adc: add adi,ad7606c-{16,18}
 compatible strings
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, jic23@kernel.org, krzk+dt@kernel.org, 
	robh@kernel.org, lars@metafoo.de, michael.hennerich@analog.com, 
	gstols@baylibre.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 5, 2024 at 9:39=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.org=
> wrote:
>
> On Wed, Sep 04, 2024 at 10:27:15AM +0300, Alexandru Ardelean wrote:
> > @@ -114,6 +124,45 @@ properties:
> >        assumed that the pins are hardwired to VDD.
> >      type: boolean
> >
> > +patternProperties:
> > +  "^channel@([1-8])$":
>
> Drop ()
>
> > +    type: object
> > +    $ref: adc.yaml
> > +    unevaluatedProperties: false
> > +
> > +    properties:
> > +      reg:
> > +        description:
> > +          The channel number, as specified in the datasheet (from 1 to=
 8).
> > +        minimum: 1
> > +        maximum: 8
> > +
> > +      diff-channels:
> > +        description:
> > +          Each channel can be configured as a differential bipolar cha=
nnel.
> > +          The ADC uses the same positive and negative inputs for this.
> > +          This property must be specified as 'reg' (or the channel num=
ber) for
> > +          both positive and negative inputs (i.e. diff-channels =3D <r=
eg reg>).
> > +        items:
> > +          minimum: 1
> > +          maximum: 8
> > +
> > +      bipolar:
> > +        description:
> > +          Each channel can be configured as a unipolar or bipolar sing=
le-ended.
> > +          When this property is not specified, it's unipolar, so the A=
DC will
> > +          have only the positive input wired.
> > +          For this ADC the 'diff-channels' & 'bipolar' properties are =
mutually
> > +          exclusive.
> > +
> > +    oneOf:
> > +      - required:
> > +          - reg
> > +          - diff-channels
> > +      - required:
> > +          - reg
> > +          - bipolar
>
> rather:
>
> required:
>   - reg
>
> oneOf:
>  - required:
>      - diff-channels
>  - required:
>     - bipolar

Ack

>
> > +
> >  required:
> >    - compatible
> >    - reg
> > @@ -170,6 +219,17 @@ allOf:
> >          adi,conversion-start-gpios:
> >            maxItems: 1
> >
> > +  - if:
> > +      not:
> > +        properties:
> > +          compatible:
> > +            enum:
> > +              - adi,ad7606c-16
> > +              - adi,ad7606c-18
> > +    then:
> > +      patternProperties:
> > +        "^channel@[1-8]+$": false
>
>
> You have two different patterns here and in top-level. Please keep one:
> ^channel@[1-8]$

Ah.
Good point.

>
>
> Best regards,
> Krzysztof
>


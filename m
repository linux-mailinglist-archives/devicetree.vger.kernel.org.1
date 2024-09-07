Return-Path: <devicetree+bounces-101080-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D869970370
	for <lists+devicetree@lfdr.de>; Sat,  7 Sep 2024 19:58:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6D3A81F22281
	for <lists+devicetree@lfdr.de>; Sat,  7 Sep 2024 17:58:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAE1B16131C;
	Sat,  7 Sep 2024 17:58:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="I5Ojc0JW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com [209.85.221.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0F5717571
	for <devicetree@vger.kernel.org>; Sat,  7 Sep 2024 17:57:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725731881; cv=none; b=pzoHjfVxFKBdXsV9r+vOiZzLcKtz7ep+uopkjf9CbWtiTKAe5ooABKZIjKoZlZKJ+duQBU5XzJnKNEQj9xuPyElJslZIwCVd5vrvMfyB6yTvQ2juGvi4QayZAYpZNW7SV53KLJamlb32eSuiCvqhxplbaTMorA3ROw5ylIYX3Ps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725731881; c=relaxed/simple;
	bh=DdO9HrqBAqZusoz+T5LGpZj4hxMS5+FS7Q8HCuPb+f4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JkpQCnTxeTdL7zQqRaN+/RaIAEZ6rfnDFREVv9E27kPp9aFDwpOVaon7OehLyir7R+GMC/6ZgkwomlipfZXxAi9qdMfpK6Tay96Wum5R0syDrxD/IbI40IWuWsrwxzxeqDHcuE+bLbgoPeMDujcjAtnIv6R5fSM1nPPYGvF5mAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=I5Ojc0JW; arc=none smtp.client-ip=209.85.221.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-vk1-f170.google.com with SMTP id 71dfb90a1353d-502b6e2a0acso405336e0c.2
        for <devicetree@vger.kernel.org>; Sat, 07 Sep 2024 10:57:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725731879; x=1726336679; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yFM7Y/HPo2thtCReOXE4IBHniLnqof6WN7AzI/44yKo=;
        b=I5Ojc0JWgJn57f+K+3ipme19qs5JomiDAMliHqkWXBKp3h5LcBfkRNa7p9rPTt/MXM
         2OkdxqXm1aPoc+w0oS1J8RwMQ2i2qudxPYWjat7x0PoNWdaywG3D5fA3ZPo36b44QpQJ
         1zC90tECMaB1mQM7KD4I1w22HKWygkFNrV8cgEd6+u/g8wzGsW5qc+yOknR2rnwpDCwz
         Grnl3BE5VnigV6n0A8UnxSK7+8FEBMDl+fI07t6qOZ0J5Qh8VibXM5RvRGvEjacGO1gA
         gektEnXPv8bYz08XkhKLd98o471voKdBmlZ9SCZZunfmSkfnODCSe8Ml+tMeUCYNZQK/
         JkfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725731879; x=1726336679;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yFM7Y/HPo2thtCReOXE4IBHniLnqof6WN7AzI/44yKo=;
        b=IsvTthKf0p7FGmWpgW3fiCGFtOJ1dIP1K79JFW8rWd/eE6TCPuKcrwByAfiBSAnlRa
         1p15+meNVy47A8xiD/jPUiI/hj8ONgA+17XPkdTYA7Y4wI3oIM67J//wRCN7wkB1sgcw
         5C2W2IpqfmVNgnk7wZL6ut4Ax/Iq+Dsb8W53m8hDcDSPmdQwRYF12wmHx+aj8uehWh9b
         XP5fonxYihvyWijPTa6xujQv4kqA5x6HKpANjO3bGPMAvNFilKXUf5vcYUvBeR6YFr+j
         CKVYa8MU6AqUuTpQW0vefpcaoYLgrL/1xib+a07A7dVd6mVYQiDL/m/YfjkIOOFb3Zw2
         aTzw==
X-Forwarded-Encrypted: i=1; AJvYcCVuzD0A9zjDW4kYJ1Nq89AfA8A0c1yH04ZLc3Bg1v3Vx1fTz0MMnBSDuQYWl2++r21XdRArfXxgm+oz@vger.kernel.org
X-Gm-Message-State: AOJu0YxAyuoJ1b5oAbOLS8p8qJutvJBwH+STP8M3dPCBCGs3rgoyZtWx
	S3amxlhrVMaC9AqjzvKDcM+08Sl26OzbSnclAMW2z8vSk1ymgH6whuzDlmywwpoKUSPVJlx6QaN
	dlGFJcJIMfA4Xakle2Cy6RbFHrcy7pO6YmdBNlg==
X-Google-Smtp-Source: AGHT+IHgCRsZHlIq2Y8KZG57PrCBPIcYyj6T8/ZZsKVqsBbzi82PAyVUBN2lCKHyshg4cwjuxTn0c7M8ZsW/8B7VCfc=
X-Received: by 2002:a05:6122:318d:b0:4ef:5b2c:df41 with SMTP id
 71dfb90a1353d-502143d02a4mr6965110e0c.9.1725731878706; Sat, 07 Sep 2024
 10:57:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240905082404.119022-1-aardelean@baylibre.com>
 <20240905082404.119022-8-aardelean@baylibre.com> <4f522d0c-7ed8-4dd4-83ae-f400d6958c6f@baylibre.com>
 <CA+GgBR-H8W_YS3gPrrvxAWoQybjEb-p36pqxEatFbEAnuz2DvQ@mail.gmail.com> <a5472be7-26c6-486b-834c-2a5f6bfaf982@baylibre.com>
In-Reply-To: <a5472be7-26c6-486b-834c-2a5f6bfaf982@baylibre.com>
From: Alexandru Ardelean <aardelean@baylibre.com>
Date: Sat, 7 Sep 2024 20:57:46 +0300
Message-ID: <CA+GgBR9BWcLJ=stqT0F8n2mC=6C0y9ia2W7HFOfkX+0WM82_wA@mail.gmail.com>
Subject: Re: [PATCH v4 7/8] dt-bindings: iio: adc: add docs for
 AD7606C-{16,18} parts
To: David Lechner <dlechner@baylibre.com>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, jic23@kernel.org, krzk+dt@kernel.org, 
	robh@kernel.org, lars@metafoo.de, michael.hennerich@analog.com, 
	gstols@baylibre.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Sep 7, 2024 at 5:09=E2=80=AFPM David Lechner <dlechner@baylibre.com=
> wrote:
>
> On 9/6/24 11:59 PM, Alexandru Ardelean wrote:
> > On Fri, Sep 6, 2024 at 12:54=E2=80=AFAM David Lechner <dlechner@baylibr=
e.com> wrote:
> >>
> >> On 9/5/24 3:24 AM, Alexandru Ardelean wrote:
>
> ...
>
> >>> +patternProperties:
> >>> +  "^channel@[1-8]$":
> >>> +    type: object
> >>> +    $ref: adc.yaml
> >>> +    unevaluatedProperties: false
> >>> +
> >>> +    properties:
> >>> +      reg:
> >>> +        description:
> >>> +          The channel number, as specified in the datasheet (from 1 =
to 8).
> >>> +        minimum: 1
> >>> +        maximum: 8
> >>> +
> >>> +      diff-channels:
> >>> +        description:
> >>> +          Each channel can be configured as a differential bipolar c=
hannel.
> >>> +          The ADC uses the same positive and negative inputs for thi=
s.
> >>> +          This property must be specified as 'reg' (or the channel n=
umber) for
> >>> +          both positive and negative inputs (i.e. diff-channels =3D =
<reg reg>).
> >>> +        items:
> >>> +          minimum: 1
> >>> +          maximum: 8
> >>> +
> >>> +      bipolar:
> >>> +        description:
> >>> +          Each channel can be configured as a unipolar or bipolar si=
ngle-ended.
> >>> +          When this property is not specified, it's unipolar, so the=
 ADC will
> >>> +          have only the positive input wired.
> >>> +          For this ADC the 'diff-channels' & 'bipolar' properties ar=
e mutually
> >>> +          exclusive.
> >>> +
> >>> +    required:
> >>> +      - reg
> >>> +
> >>> +    oneOf:
> >>> +      - required:
> >>> +          - diff-channels
> >>> +      - required:
> >>> +          - bipolar
> >>
> >> The datasheet (ad7606c-18.pdf) lists the following combinations:
> >>
> >> * Bipolar single-ended
> >> * Unipolar single-ended
> >> * Bipolar differential
> >>
> >> The logic in the oneOf: doesn't match this.
> >>
> >> This I think this would be sufficient:
> >>
> >> - if:
> >>     required: [diff-channels]
> >>   then:
> >>     required: [bipolar]
> >
> > So here, I am a bit vague.
> > This makes 'bipolar' mandatory if 'diff-channels' is mandatory, right?
> > But then 'bipolar' (on its own) becomes optional?
> > The way I understood the oneOf case is that:
> > 1. if it's 'diff-channels' then it's specified 'bipolar differential'.
>
> diff-channels does not imply bipolar in DT, so we need both properties
> set to specify "bipolar differential".
>

ack
will update then

> > 2. if it's 'bipolar' then it's specified as 'bipolar single-ended'
> > 3. otherwise it's unipolar
> > 4. oneOf enforces that at least 'diff-channels' or 'bipolar' is
> > specified if there is a channel node
> >
> >


Return-Path: <devicetree+bounces-20855-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BEBF18010AD
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 18:02:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 78CBE281AC1
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 17:02:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18E364D12E;
	Fri,  1 Dec 2023 17:02:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="m4zBEm0Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DEA389A
	for <devicetree@vger.kernel.org>; Fri,  1 Dec 2023 09:02:08 -0800 (PST)
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2c9bd3ec4f6so29637351fa.2
        for <devicetree@vger.kernel.org>; Fri, 01 Dec 2023 09:02:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1701450127; x=1702054927; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DWTh4se+UruTw1n6D9cikBRfGAJlzspbt4OfaTxkr5o=;
        b=m4zBEm0Q7+2iCo3wggfcXtWIUfDN7FFqjNVpC614RWEXUURjyE5cNwZ2ulSzsPnIqp
         pnsluCY4yyKJr8Lm0dIG1zhmVd4aB/LYoB4guoG+v0+S2pjiv+5z90l8R4ipmtvXOLDf
         /5O486evXfYNyWKc/3mU3WmiPOSknN7UqdlJTJ2yyE+bgpxOXc7ArTI3Ezy2k8RNFCvi
         EOhWEVyKZIr68nsMedeIDCb+f/6m5ObdARn+liYUBq5qA8jnyKzaKP457R0fwyQhaVre
         3KZVjqoGTtHSu0f87KUEvGU6REufwaMDeD5ctPSKrjhNGzouXKwsZTwnXRA3jnYajwhD
         H8Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701450127; x=1702054927;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DWTh4se+UruTw1n6D9cikBRfGAJlzspbt4OfaTxkr5o=;
        b=juimBWottuFWM5cDQOx7wiwquod4ckrk0mBAFl2vEKTZd4emmnaKIJK4aadbIl/wgv
         BCcko/GZUyUxhxUwPJ3fbLqCEdVn/nst+HLO9RS9CHL/yJyx2YsCh01R0mr8Imnsw7tD
         TmK1vCQTVq0j8fh3MdFlrRjeLgTL542WYK10WrEEMzujixW7T1fV0GqeNt78J3W1eT2g
         52Ticq81HTMZ3rgcsjLui2Y0qghaqDBPquvNrfsYZoZuTrP1yMClOTsgVoW8LldwYfkF
         WGNsSd04aC9f9hfkiQNXEVahLap2DPk9wTcEoZ3205lCZHuBgtbPn7UGEkWCs+mrY8B+
         x/XA==
X-Gm-Message-State: AOJu0Yy7ZaR05VPo9qRL/2MK+KflhK1bgXdM8VJpY6x5gcjTo4XuOUwK
	zYDOqChOXRb+P1ty01U5/d6jKQvU/y0IOl94OTvCZA==
X-Google-Smtp-Source: AGHT+IFzZhwCfRX+2zsNSp8Z0s3T+pMhyo8HmnS8o8v7ThxvW3SppTsn8thwCmoggkZ46Wv3+hYa15AKRWeebUC6O5k=
X-Received: by 2002:a2e:95d4:0:b0:2c9:d874:4b75 with SMTP id
 y20-20020a2e95d4000000b002c9d8744b75mr860509ljh.101.1701450127003; Fri, 01
 Dec 2023 09:02:07 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231121-dev-iio-backend-v1-0-6a3d542eba35@analog.com>
 <20231121-dev-iio-backend-v1-4-6a3d542eba35@analog.com> <CAMknhBGCqnzCp6vQ+59Z-SybScvbtU7aWdAD6KnP1e6=q60gVQ@mail.gmail.com>
 <d534c3323c32d4ed2aedae19a9f101be90ef0cc7.camel@gmail.com>
In-Reply-To: <d534c3323c32d4ed2aedae19a9f101be90ef0cc7.camel@gmail.com>
From: David Lechner <dlechner@baylibre.com>
Date: Fri, 1 Dec 2023 11:01:55 -0600
Message-ID: <CAMknhBGjm2ja9HOenOWi9O5Ao8qUg=gT=_Vz8CyxQ=pfNX2EJQ@mail.gmail.com>
Subject: Re: [PATCH 04/12] iio: adc: ad9467: fix reset gpio handling
To: =?UTF-8?B?TnVubyBTw6E=?= <noname.nuno@gmail.com>
Cc: nuno.sa@analog.com, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-iio@vger.kernel.org, 
	Olivier MOYSAN <olivier.moysan@foss.st.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>, 
	Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 1, 2023 at 2:47=E2=80=AFAM Nuno S=C3=A1 <noname.nuno@gmail.com>=
 wrote:
>
> On Thu, 2023-11-30 at 15:41 -0600, David Lechner wrote:
> > On Tue, Nov 21, 2023 at 4:17=E2=80=AFAM Nuno Sa via B4 Relay
> > <devnull+nuno.sa.analog.com@kernel.org> wrote:
> > >
> > > From: Nuno Sa <nuno.sa@analog.com>
> > >
> > > The reset gpio was being requested with GPIOD_OUT_LOW which means, no=
t
> > > asserted. Then it was being asserted but never de-asserted which mean=
s
> > > the devices was left in reset. Fix it by de-asserting the gpio.
> >
> > It could be helpful to update the devicetree bindings to state the
> > expected active-high or active-low setting for this gpio so it is
> > clear which state means asserted.
> >
>
> You could state that the chip is active low but I don't see that change t=
hat
> important for now. Not sure if this is clear and maybe that's why your co=
mment.
> GPIOD_OUT_HIGH has nothing to do with active high or low. It just means, =
"get me the
> pin in the asserted state".
>

I would assume that this bug happened in the first place because
someone forgot GPIOD_OUT_LOW in the devicetree when they were
developing the driver. So this is why I suggested that updating the
devicetree binding docs so that future users are less likely to make
the same mistake. Currently, the bindings don't even have reset-gpios
in the examples.


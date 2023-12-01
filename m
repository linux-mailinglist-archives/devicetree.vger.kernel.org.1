Return-Path: <devicetree+bounces-20546-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AE51F7FFFF3
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 01:12:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3E315B2122C
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 00:12:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31C611381;
	Fri,  1 Dec 2023 00:12:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="EgkiEx+V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC46A10FC
	for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 16:12:24 -0800 (PST)
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2c9c39b7923so20555931fa.0
        for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 16:12:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1701389543; x=1701994343; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w+S6ZNm0KY70bzKBdaXHGr9e7p3t5vwxIYL3G+hCH9Y=;
        b=EgkiEx+Vcd230vMg3k+g1khMK+c/37irFitUfftbLmkI4ENDgI9Hg11raTawsFLvBg
         ThtPknKqohzR7RhnFKEi0fh8/BUGUhpO7meziEFNb+uNz4Mrifx8ZGIcNL9qtbONjUh0
         MS07QKpp73AUuaD2UcQOp+uSSM+wKSXnh1JlYClAl7sFd/ZN1HSA5LX7WtZC1jv9xrpS
         Ft2jse4sT+pgn/7jiIDv6JkhHsJoZWpyTbDOATsrGrR0OaibWQDkfQEURJRZUG1+piTX
         Kd+WCKjx5d9+FlO9qX9O0speDuN7qjHmZrArsy6r3uViBuOE492X6gueHImwp+WHY1fq
         Wh5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701389543; x=1701994343;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w+S6ZNm0KY70bzKBdaXHGr9e7p3t5vwxIYL3G+hCH9Y=;
        b=G8W0+RfVrj90R5uFKmHy1cJf2kYkvFxBmV6cJL+aQEB9ZBWRlC27+G//jlz2x2NTQH
         JaYvvnTkJYROHt6KMxESQhyiNEzYTGZB/r2oGRaTO0GrVIiDviFtAsuneOqM/jvnVGKn
         wgNssdejDSj1nxYW/637bqTD9LhNJjb6YMH5vEtGIsUXdJpsvlCDYlsZFurNx4qecVNw
         9gzrWMe73BrcPgVweLIuu3SrTxI96h128jDe4i/SO3L4Q7zfz3e2RAr3mxryrXJdOk/T
         3hhnpSMfPjLDkjLJchBpqfQ9GBWe//ek3F/YEs9zPgi2qRuMU7Cjf7mRpFHWHDcWgsNH
         jPZA==
X-Gm-Message-State: AOJu0YyP6HXUEu8mento13e7WYkfkP1t2HRGpQaQwGOMw/eoU9OJEOvC
	jiu0Fqjo3ymFdv+qtb+r4E2+Qclah8x93IQNS4xiug==
X-Google-Smtp-Source: AGHT+IGsS1+sHRmFzKHBh3sQJBe24WgzbWubLmdDK9T41aJOvKZPFcBk2x+6D8vxIXt5dM/JwNd7Cmh+ItiUzD/BwPg=
X-Received: by 2002:a05:651c:23a:b0:2c9:d862:c66f with SMTP id
 z26-20020a05651c023a00b002c9d862c66fmr217019ljn.92.1701389542959; Thu, 30 Nov
 2023 16:12:22 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231121-dev-iio-backend-v1-0-6a3d542eba35@analog.com>
 <20231121-dev-iio-backend-v1-10-6a3d542eba35@analog.com> <CAMknhBFbLju8UQJ7Uz85kHKrbK4mzt=wTRdnp40+PwWCJa5dsA@mail.gmail.com>
In-Reply-To: <CAMknhBFbLju8UQJ7Uz85kHKrbK4mzt=wTRdnp40+PwWCJa5dsA@mail.gmail.com>
From: David Lechner <dlechner@baylibre.com>
Date: Thu, 30 Nov 2023 18:12:12 -0600
Message-ID: <CAMknhBEdXNkpEt-kXBez7zC0XGvo8AZ1G0Y9Y0XVr2EmpA_Qpw@mail.gmail.com>
Subject: Re: [PATCH 10/12] iio: adc: ad9467: convert to backend framework
To: nuno.sa@analog.com
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-iio@vger.kernel.org, Olivier MOYSAN <olivier.moysan@foss.st.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>, 
	Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 30, 2023 at 5:30=E2=80=AFPM David Lechner <dlechner@baylibre.co=
m> wrote:
>
> On Tue, Nov 21, 2023 at 4:17=E2=80=AFAM Nuno Sa via B4 Relay

<snip>

> > +       st->back =3D devm_iio_backend_get(&spi->dev, NULL);
>
> Based on the descriptions given of IIO frontend and backend, I was
> expecting this driver to be the backend since SPI is only used to
> configure the chip while the adi-axi-adc driver is the one determining
> the scan data format, providing the DMA (INDIO_BUFFER_HARDWARE), etc.
>
> Also, from a devicetree "describe the hardware" mindset, it doesn't
> seem like this chip (AD9467) should dictate a specific backend. I know
> it doesn't make sense practlically for this chip to not use DMA given
> the high sample rate, but why should the devicetree for this chip
> require it when there is nothing intrensic about this chip itself
> related to DMA?
>

Afterthought:

Put another way, it seems like it would be much easier to say "I, the
arbitrary frontend that actually handles the data from the LVDS
outputs, need a backend that provides a SPI connection to an AD9467
chip and takes care of turning on power supplies" than it is to say
"I, the AD9467 chip frontend, need an arbitrary backend that handles
reading data from the LVDS outputs in a very specific manner that is
determined by the driver, not the hardware".


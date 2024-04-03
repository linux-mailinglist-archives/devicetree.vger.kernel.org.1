Return-Path: <devicetree+bounces-55988-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 19FC48973C9
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 17:18:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B72961F29589
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 15:18:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 033D114B08B;
	Wed,  3 Apr 2024 15:14:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="AWMVjxtY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9370149DE5
	for <devicetree@vger.kernel.org>; Wed,  3 Apr 2024 15:14:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712157290; cv=none; b=XhWpD+fmMPw5jEvUMTU/JYbVsc1rcnwwcWNO27W3nrsIiAck/AOli1gxJYPuItByPE5KTr5G882oag7yAFk22xL01lp03bMehYCMjSXfY4oNlgh2pRBDAVgWuWKExSO+TdBWw5Pa8S5+59BNVmWxel9LdZwm89KKJ0wptMHumHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712157290; c=relaxed/simple;
	bh=okMqtAJdJt2mKknsEiqIBDifkB1qCYqpQVnmksBqJLg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Okjvaezy2yYnyqJ2YNImTqhwcT2geXmbReXGiQaIP1fwRFG1RuKU6i2nSysepuWMf7tm3gIqf4rhl9wrfTWZBtVIcPlw+Ss/N5ETqPaLD5SvRyGNLY8ckdm2IpbsKgy2cc3itZr1gUnYRBCVVKRkNS4MSKpjcRaf+dWJzJtKwpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=AWMVjxtY; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2d094bc2244so70673951fa.1
        for <devicetree@vger.kernel.org>; Wed, 03 Apr 2024 08:14:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1712157287; x=1712762087; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8On6x+LYibbtDP6IBIgF4A+aMOZN1d3uu3/VQOdT6Nc=;
        b=AWMVjxtYCIvAHhRmFKuPHli/mfkYqal/o/qp+19PaRvbbFmF8FkYkGA2fPLgMpKvWA
         8kqExIolNOPOa+SktvatzD5t7ZhxvMR2Lw2DtrmMeBNmF1VKa/2GBht468wdeLW0xrjL
         jWaXrU0VYou2I0vPcWdxKewpfprsRKl1dtr383nVSR3pIHh0Q2xdbjT5KKttA5pI9hSO
         P6kMmAg9jADUF1c+rUoRV1Ook2K1pq7H8dSsM5YnWcQOcwTw7AGMajWrAw1aAPzZ9S+D
         y0Ng0frrV1UHwbNFAYLNLp2GeuWB1QYhWT1iNXeoch1J3KLjeCjnqoukPEQAYBREjnBq
         f0Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712157287; x=1712762087;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8On6x+LYibbtDP6IBIgF4A+aMOZN1d3uu3/VQOdT6Nc=;
        b=GsD7jlDlrXTcBABUHGF4vIiE7I/dQW86mORCv8xiWuAPaX/J+P3SeJOhSGBIKzg7OX
         X63x1+1JR7AaF6H+QhP85ulVh4pw1TjNOIpNueoK+QhWZKFUAJUxgHYFFpnuuz11Etg9
         KDoMwxskDQukFGOtHeOLlRwIRqofYI6Kh/Nb9aNB83HwCR674r/E0jRp+KmM2nnH8nFJ
         RI/ABoYFI5Cnv5mF62GFwWo78UYVi1Unxf26DHliG3cEyc7IWnQGwFZPWaOmIgQ7c/GH
         vSZEIjqyEnIlWQK2Bk3B2pcip21GBqCnm9a4agPM91EoQI3k/i5kPdo995wkucrUQ24o
         RXZw==
X-Forwarded-Encrypted: i=1; AJvYcCXU/VhKwAP48txWopIoNYXJ0dJzRrWQNtBvKSdwieypORZThCePZFEMswSesycnvM/DGTt6q0JqZca6l/PfnqFX+DAU8aZBA1bVeg==
X-Gm-Message-State: AOJu0YwB/eWEQwBvWpVp98sqD3VgvfslD4BkMYQULCsEFQh04fSV7Mf0
	iux2NzHSGppAwsPXDr3TPUUtYpb54lPi/UqLzfvwGi2HlLNHPx2bb2qP6/FDSPQtcfSReY2Pv4u
	BG/RsIdzUxwcHh3+ui6+3+R1TwxEmYxForifWpg==
X-Google-Smtp-Source: AGHT+IH7piIbVZFBEOcJtVy6rEGRW0U40dXyS1jzVfSYyjpbI87gg+pbV2IGLZoqKJDqmJFZJ6ZDhT4+Zh0znZwRjiM=
X-Received: by 2002:a2e:9ace:0:b0:2d4:1fa4:9eb8 with SMTP id
 p14-20020a2e9ace000000b002d41fa49eb8mr9893359ljj.40.1712157286650; Wed, 03
 Apr 2024 08:14:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240401-ad4111-v1-0-34618a9cc502@analog.com> <20240401-ad4111-v1-1-34618a9cc502@analog.com>
 <CAMknhBHeKAQ45=5-dL1T1tv-mZcPN+bNo3vxWJYgWpEPE+8p3Q@mail.gmail.com>
 <CAMknhBGJt1TG0-UXMqqCT6nxJKAX7ZbsPF19eeWqwKsXbKOQoQ@mail.gmail.com>
 <0db40597-0d66-4d5b-8165-d9a4c068a42e@gmail.com> <dce3ae6c-6e65-4134-8927-549e9b4afd4c@gmail.com>
In-Reply-To: <dce3ae6c-6e65-4134-8927-549e9b4afd4c@gmail.com>
From: David Lechner <dlechner@baylibre.com>
Date: Wed, 3 Apr 2024 10:14:35 -0500
Message-ID: <CAMknhBHLEjtiQVOVODdvfH=pOP656=1RNb=9-rt37H7iowVDBw@mail.gmail.com>
Subject: Re: [PATCH 1/6] dt-bindings: adc: ad7173: add support for ad411x
To: "Ceclan, Dumitru" <mitrutzceclan@gmail.com>
Cc: dumitru.ceclan@analog.com, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Jonathan Cameron <jic23@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 3, 2024 at 5:08=E2=80=AFAM Ceclan, Dumitru <mitrutzceclan@gmail=
.com> wrote:
>
> On 03/04/2024 10:45, Ceclan, Dumitru wrote:
> > On 01/04/2024 23:22, David Lechner wrote:
> >> On Mon, Apr 1, 2024 at 2:37=E2=80=AFPM David Lechner <dlechner@baylibr=
e.com> wrote:
> >>>
> >>> On Mon, Apr 1, 2024 at 10:10=E2=80=AFAM Dumitru Ceclan via B4 Relay
> >>> <devnull+dumitru.ceclan.analog.com@kernel.org> wrote:
> >
> > ...
> >
> >>
> >> Also, I just noticed that AD411x have only one AVDD input instead of
> >> AVDD1 and AVDD2. So we need an if statement that says if properties:
> >> compatible: enum: - adi,ad411x, then properties: avdd2-supply: false.
> >
> > Already addressed by this:
> > "
> >   # Only ad7172-4, ad7173-8 and ad7175-8 support vref2
> >   - if:
> >       properties:
> >         compatible:
> >           not:
> >             contains:
> >               enum:
> >                 - adi,ad7172-4
> >                 - adi,ad7173-8
> >                 - adi,ad7175-8
> >     then:
> >       properties:
> >         vref2-supply: false
> >       patternProperties:
> >         "^channel@[0-9a-f]$":
> >           properties:
> >             adi,reference-select:
> >               enum:
> >                 - vref
> >                 - refout-avss
> >                 - avdd
> > "
>
> Mistaken vref2-supply to avdd2-supply.
>
> But still, the presence of avdd2-supply does not influence anything at al=
l.
> Driver does not use it, you cannot select it for channel conversions.
> Would a restriction like this really be required?

It is true that it is not likely to cause any problems we don't fix
this but why would we want the bindings to intentionally be incorrect
when there is an easy fix? Driver implementations should not influence
leaving something out of the bindings [1].

[1]: https://www.kernel.org/doc/html//v5.10/devicetree/bindings/writing-bin=
dings.html#overall-design


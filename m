Return-Path: <devicetree+bounces-104556-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 33AF197EBB8
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 14:51:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4CD031C20DAF
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2024 12:51:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E8291991DB;
	Mon, 23 Sep 2024 12:51:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="iMJ55XGi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F1BD1991BD
	for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 12:51:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727095904; cv=none; b=aSFwU66ykJH58jip2Fqq6XTiJv7HmFAZoti66NTmVPWHe0pFPg0HWBU+PR8WhgC8iSV0zkjxVYMAy3D3ZVUgI9ywziiSZfZcRIHy8uDavdRvo1bzrhS+M+fbxsa/h5SjRML3ec/5e1Oks0VsP02aXftbLX2LGrNo8bhclafIs+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727095904; c=relaxed/simple;
	bh=NvepIcObAFOW0GAEKprtdJAyQP6u04ZarXNoUN/O9fs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=p2w+Z5oZgBXtjAiszihA11DlWlUOsVCzu1ZBmNO8sqk0zz14t24AcGMyxhghNEAdBrtbQtaZfs/VzPA7DYEUACRjilq5f7SrPMK3Snm6nPBSc6vBZl3uTuztsv7D3KyNneQlihplj7paMnzfoP8GMRSTOfPK2E0ddgi56z8qPPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=iMJ55XGi; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2f75c6ed397so44274691fa.2
        for <devicetree@vger.kernel.org>; Mon, 23 Sep 2024 05:51:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1727095900; x=1727700700; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JWyVPet8hZnOop/AUNBEWZsHekqaT1mqAy7nCtERCWg=;
        b=iMJ55XGihjnMld86HJw+77vEGiM9sVdAXEGR3U1OQ9IfwjSGBfS10BfkHlraV3jnFO
         3kqoODcEnnS3sjesqsLVtMoDmcslZ4uJqwVDLh2w/66TQBsKJtYjBSCj092L9Z6YkRl3
         Sdc0rpdS5ungFyN4HRkx3wCsdZbhZ5KuZU3hs203gDmOI4ObQN2QyPZ/hCgeYD98UewQ
         ChJeXaeoVxZ5l+mvNu+WqpjA3vyfMEapqpFfjtCAIfA492APqB3TJPz1Sz5NSzdwqxHY
         nyVP1kP1RNA0ff+r++xL7mMTuLqY+ZFTT06EHl0xbE3LAQYCghHWg3m00js16XtbQB4I
         QwrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727095900; x=1727700700;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JWyVPet8hZnOop/AUNBEWZsHekqaT1mqAy7nCtERCWg=;
        b=IWfFtpPGbWtlwnuttdLTEo5KnQPEt2B73q6EakUHUAa3ZdDDuLo9zVXQOyADdFL4D8
         PzsPklY4QfKLkujKLhYXBsObqH4+fT/iSXMxO51PJa/9QLlzIvzF5i2RUfMXfa2qlGAn
         RUjSHA1bYbdR7VxRmBLwzP7hjGgAF1Xy2S2Wp8BatMFIvNXKmnch0WWzvoyWh8lpvCC3
         h8hZhFpDJm+O3QzMjNqUmaO0s43ckTRd3N2s2QAXLEhsAzdJScsI29NR9+s0yyojIhSf
         9UJQa6HIt9akqjJR8Jkadf0UWLFnCwBkzIO6eCPX6RTAUlDYEqiCOGdnz82Kz1KMgIAp
         0ljA==
X-Forwarded-Encrypted: i=1; AJvYcCWLPFEKHY0raNjvnajHntZPqyx73exZ4p4d79YKHzeNBN8yuqRS+/G20gPbHgHNSali8wgt8Af9FJUJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1pcIG+tGJ1J/KJFzI15HhuO+hQt0JFQgdHgJVIHmFtm8hLS99
	NJCMM5so5ehYduF/2U5Dp7mXd+s/hJ/4KTZ4g8XXExKPn131Bo9cDpQzkkxZJADtW0qaq5TQiyy
	1Bd0uKhbmzq05HeWjx8lXTi6nxHX4CNeRUWNysA==
X-Google-Smtp-Source: AGHT+IGjwUls46wFV2p1ok6WP3bWq/lGTfL1sVNuhz5+4xnhesypCJlx6gg4f5K5q/lbcDosAtmu0Hr2KQy8e0jFd1U=
X-Received: by 2002:a05:651c:1994:b0:2f0:1a19:f3f1 with SMTP id
 38308e7fff4ca-2f7cc355ce4mr51007311fa.7.1727095899709; Mon, 23 Sep 2024
 05:51:39 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240912121609.13438-1-ramona.nechita@analog.com>
 <20240912121609.13438-4-ramona.nechita@analog.com> <20240914180648.592cd69e@jic23-huawei>
 <SN6PR03MB4320E03B052A867DE73196CBF36C2@SN6PR03MB4320.namprd03.prod.outlook.com>
In-Reply-To: <SN6PR03MB4320E03B052A867DE73196CBF36C2@SN6PR03MB4320.namprd03.prod.outlook.com>
From: David Lechner <dlechner@baylibre.com>
Date: Mon, 23 Sep 2024 14:51:28 +0200
Message-ID: <CAMknhBFyydCJeAazDYMkkH=rKU2DbJGy=Kpb0242Vn81MHn0mQ@mail.gmail.com>
Subject: Re: [PATCH v5 3/3] drivers: iio: adc: add support for ad777x family
To: "Nechita, Ramona" <Ramona.Nechita@analog.com>
Cc: Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, 
	"Tanislav, Cosmin" <Cosmin.Tanislav@analog.com>, 
	"Hennerich, Michael" <Michael.Hennerich@analog.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"Sa, Nuno" <Nuno.Sa@analog.com>, Andy Shevchenko <andy@kernel.org>, 
	"Schmitt, Marcelo" <Marcelo.Schmitt@analog.com>, Olivier Moysan <olivier.moysan@foss.st.com>, 
	Dumitru Ceclan <mitrutzceclan@gmail.com>, Matteo Martelli <matteomartelli3@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Alisa-Dariana Roman <alisadariana@gmail.com>, Ivan Mikhaylov <fr0st61te@gmail.com>, 
	Mike Looijmans <mike.looijmans@topic.nl>, 
	"linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 20, 2024 at 3:24=E2=80=AFPM Nechita, Ramona
<Ramona.Nechita@analog.com> wrote:
>
> Hello all,
>
> Just a minor question
> ...
> >
> >> +
> >> +static irqreturn_t ad7779_trigger_handler(int irq, void *p) {
> >> +    struct iio_poll_func *pf =3D p;
> >> +    struct iio_dev *indio_dev =3D pf->indio_dev;
> >> +    struct ad7779_state *st =3D iio_priv(indio_dev);
> >> +    int ret;
> >> +    int bit;
> >> +    int k =3D 0;
> >> +    /*
> >> +     * Each channel shifts out HEADER + 24 bits of data therefore 8 *=
 u32
> >> +     * for the data and 64 bits for the timestamp
> >> +     */
> >> +    u32 tmp[10];
> >> +
> >> +    struct spi_transfer sd_readback_tr[] =3D {
> >> +            {
> >> +                    .rx_buf =3D st->spidata_rx,
> >> +                    .tx_buf =3D st->spidata_tx,
> >> +                    .len =3D AD7779_NUM_CHANNELS * AD7779_CHAN_DATA_S=
IZE,
> >> +            }
> >> +    };
> >> +
> >> +    if (!iio_buffer_enabled(indio_dev))
> >> +            goto exit_handler;
> >
> >If buffers aren't enabled, the push to buffers won't do anything. So thi=
s race shouldn't matter.  If it does, what happens?
> >I'm curious because I'd expect any races that cause trouble in this case=
 to be pretty universal across drivers.
>
> I added that condition rather because the DRDY pulse will keep on being g=
enerated even when the buffers are not active,
> and it would be better to exit the function sooner. I tested it and it do=
es not break to remove the condition, I just
> thought it made more sense like this. Should I delete it?
>
> >....
>
> Best regards,
> Ramona Nechita
>
>

Perhaps a better way to handle this would be to move

    disable_irq(st->spi->irq);

to the buffer predisable callback instead of doing it in the buffer
postdisable callback. Then we will be sure to not get any more DRDY
interrupts after the buffer is disabled.

(And to keep things balanced, moved the corresponding irq_enable() to
the buffer postenable callback.)

Since ad7779_trigger_handler is the IIO trigger interrupt handler and
not the DRDY interrupt handler though, it is already not possible for
this interrupt handler to be called while the IIO buffer is enabled.
So it should be safe to remove the if
(!iio_buffere_enabled(indio_dev)) even without the other changes I
suggested.


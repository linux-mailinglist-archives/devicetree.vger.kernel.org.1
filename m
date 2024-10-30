Return-Path: <devicetree+bounces-117513-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DC379B6BEB
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 19:14:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A10271F225A8
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 18:14:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B9C91C4635;
	Wed, 30 Oct 2024 18:14:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="jDOEMkE0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8FAD1C3F0E
	for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 18:14:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730312091; cv=none; b=aDPel5/G0iJl6XggZaToE8b49fQu5zmfJg8bp9EHqvaXY3qoiB40Xt6yYdiAHlQ9wy3yuVN2QpBnaZHwrxgdx0SRkRmFjGV4dkxwAXVZ6itQ9ITlL3kz0MsDGZNCCyq/esTjRqiydHG4la62DVVPz/q2lMfihMwLCEvN2E/tuio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730312091; c=relaxed/simple;
	bh=YSe3U/islx/1E277CWlGToGgYM9Ft9hfht8JqqNvJpA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bYvhG1ZhpIhk5XeIOYQMeGyaW9x981052s76BoNH8dbJDt8Ihndtw/62YSX4wQ50iYl02I98tYy1cg4yg0I2Z+U+GJ/7wCvtSlxH6NFWQ8plCJYG+PJ+ot7OCjsFEXLSYEQaV6NgKZ+3iXbuESsepngGAkJGjbok3xzobHRuf9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=jDOEMkE0; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2fb51e00c05so1376611fa.0
        for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 11:14:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1730312086; x=1730916886; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+U2OYjPXp1HVwKGheeUQjqD1Lkt2kZkOmbCmlNpJsuo=;
        b=jDOEMkE03W0h9knrWaPYhMDPEzPcCnYgs4B+24vbN30nBouj753/O9cRAgpyaDC+8O
         Sc7So83as5ITHIM0wMKujyWaWNEXw4D5dzxfs4mgkZ2CMNXdYmYKfNWjZUVhCnRJnHHX
         r+rLRTpGp+8UHWiiLN69dho7gfMflB/fwlGuM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730312086; x=1730916886;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+U2OYjPXp1HVwKGheeUQjqD1Lkt2kZkOmbCmlNpJsuo=;
        b=OQCd481LU9/+pMJ4cpe/Y/S2ssLYvlh6AOStqJa1LyU5aEb9abxfZtIf4HpLfufIgo
         zYngBA/gDbyuSGa5PXcVz85qr7aqWptcGoMQnQznNizwEofj9H1Qm7vEtlFKCTuyGqzK
         vgVpBm+ur0WArb55dfMBVjBHV3oRT1EWHex3If+bpBGM9p1aBTgNRVIOWAjNfwi0q5of
         Vzecv67wqj27tZY9FC9E+JICD0bnAjimH63EmqTL86h/l4z56zFtu2lv58WDciTBVZF8
         9dOvgKCBFOs6IqfPCDyUd0lEnnM1KNFyLzFCu0piUzMqr9Cdm7urozMjwpiz0PLkjryV
         vX0w==
X-Forwarded-Encrypted: i=1; AJvYcCUupt8XqTJ/t/njsoQ5tKNW5sL3cM1MeaLEF9h3wpszPntY9X6TATqh4hpecTayCdwRvwY1IcgTtqv/@vger.kernel.org
X-Gm-Message-State: AOJu0YzaKpB2/VqXXpnvWEcKX2PnAMMroaZQhoUsvz1kFJETUSvrEy6x
	Kr2ZFCpfp4obSb2j+B9vJMCfOtcr3FyqwmDJTpKTK8+FWHyhYLKL+EMsZE1d7ev9vsNpjWZYm+Q
	WBw==
X-Google-Smtp-Source: AGHT+IHHn1TB5fpZ/UHvxp85rI+NrdSOgiRUag4DY6IicW+95D7p3fogCkIAjXohzSoLWVvtQaGG3A==
X-Received: by 2002:a2e:f11:0:b0:2fb:6509:b6ba with SMTP id 38308e7fff4ca-2fcbe065723mr104498521fa.33.1730312086001;
        Wed, 30 Oct 2024 11:14:46 -0700 (PDT)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com. [209.85.208.173])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2fd5363b904sm3451541fa.116.2024.10.30.11.14.44
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Oct 2024 11:14:44 -0700 (PDT)
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2fb51e00c05so1375751fa.0
        for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 11:14:44 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXREaocl9DeL5Exn2jynFUOuoTOCxdfqOMDfhywAB1BN+TmYRVechDYMBaYhjh3xXhbrncaqbkbCilK@vger.kernel.org
X-Received: by 2002:a05:651c:507:b0:2f7:6653:8053 with SMTP id
 38308e7fff4ca-2fcbdfc5394mr135074691fa.18.1730312084050; Wed, 30 Oct 2024
 11:14:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241025114642.40793-2-charles.goodix@gmail.com>
 <3ypn62dsgarvmxkmdglugcinxmvpmhdqub2zvkygaonn54odf6@amfgijfcd3l3>
 <CAD=FV=X1F3QC=eSXcCn-78iQBzHMzT3z9Sis3yXKW_Bzun3+EA@mail.gmail.com>
 <CAL_JsqLwOekE1mz+3g8NTE3o4GhE9PWwR1Jfk_tL0RYKQmCg-A@mail.gmail.com>
 <CAD=FV=VHMfc2kJo2N3jkB9BR0H7SN2g9JqoDkZuZOOuq0OV6gw@mail.gmail.com> <ZyHYw40duPrm0ZeF@ux-UP-WHL01>
In-Reply-To: <ZyHYw40duPrm0ZeF@ux-UP-WHL01>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 30 Oct 2024 11:14:26 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WtbBnCX6fcqBFYPO3C=zw8YhKmJ35hW920JWt0MvDqPw@mail.gmail.com>
Message-ID: <CAD=FV=WtbBnCX6fcqBFYPO3C=zw8YhKmJ35hW920JWt0MvDqPw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: input: Goodix SPI HID Touchscreen
To: Charles Wang <charles.goodix@gmail.com>
Cc: Rob Herring <robh@kernel.org>, dmitry.torokhov@gmail.com, hbarnor@chromium.org, 
	conor.dooley@microchip.com, jikos@kernel.org, bentiss@kernel.org, 
	linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Oct 29, 2024 at 11:57=E2=80=AFPM Charles Wang <charles.goodix@gmail=
.com> wrote:
>
> On Fri, Oct 25, 2024 at 09:19:14AM -0700, Doug Anderson wrote:
> > Hi,
> >
> > On Fri, Oct 25, 2024 at 8:59=E2=80=AFAM Rob Herring <robh@kernel.org> w=
rote:
> > >
> > > On Fri, Oct 25, 2024 at 10:29=E2=80=AFAM Doug Anderson <dianders@chro=
mium.org> wrote:
> > > >
> > > > Charles,
> > > >
> > > > On Fri, Oct 25, 2024 at 5:03=E2=80=AFAM Krzysztof Kozlowski <krzk@k=
ernel.org> wrote:
> > > > >
> > > > > > +properties:
> > > > > > +  compatible:
> > > > > > +    enum:
> > > > > > +      - goodix,gt7986u-spi
> > > > >
> > > > > Compatible is already documented and nothing here explains why we=
 should
> > > > > spi variant.
> > > > >
> > > > > > +
> > > > > > +  reg:
> > > > > > +    maxItems: 1
> > > > > > +
> > > > > > +  interrupts:
> > > > > > +    maxItems: 1
> > > > > > +
> > > > > > +  reset-gpios:
> > > > > > +    maxItems: 1
> > > > > > +
> > > > > > +  goodix,hid-report-addr:
> > > > >
> > > > > I do not see this patch addressing previous review. Sending somet=
hing
> > > > > like this as v1 after long discussions also does not help.
> > > >
> > > > Krzysztof is right that it's better to wait until we get consensus =
on
> > > > the previous discussion before sending a new patch. I know you were
> > > > just trying to help move things forward, but because of the way the
> > > > email workflow works, sending a new version tends to fork the
> > > > discussion into two threads and adds confusion.
> > > >
> > > > I know Krzysztof and Rob have been silent during our recent
> > > > discussion, but it's also a long discussion. I've been assuming tha=
t
> > > > they will take some time to digest and reply in a little bit. If th=
ey
> > > > didn't, IMO it would have been reasonable to explicitly ask them fo=
r
> > > > feedback in the other thread after giving a bit of time.
> > >
> > > If the firmware creates fundamentally different interfaces, then
> > > different compatibles makes sense. If the same driver handles both bu=
s
> > > interfaces, then 1 compatible should be fine. The addition of '-spi'
> > > to the compatible doesn't give any indication of a different
> > > programming model. I wouldn't care except for folks who will see it
> > > and just copy it when their only difference is the bus interface and
> > > we get to have the same discussion all over again. So if appending
> > > '-spi' is the only thing you can come up with, make it abundantly
> > > clear so that others don't blindly copy it. The commit msg is useful
> > > for convincing us, but not for that purpose.
> >
> > OK, makes sense. Charles: Can you think of any better description for
> > this interface than "goodix,gt7986u-spi"? I suppose you could make it
> > super obvious that it's running different firmware with
> > "goodix,gt7986u-spifw" and maybe that would be a little better.
> >
> > I think what Rob is asking for to make it super obvious is that in the
> > "description" of the binding you mention that in this case we're
> > running a substantially different firmware than GT7986U touchscreens
> > represented by the "goodix,gt7986u" binding and thus is considered a
> > distinct device.
> >
> > At this point, IMO you could wait until Monday in case Krzysztof wants
> > to add his $0.02 worth and then you could send a "v2" patch addressing
> > the comments so far, though of course you could continue to reply to
> > this thread if you have further questions / comments.
> >
>
> Thank you for your explanation, I understand your point. I want to clarif=
y
> that the gt7986u-spi and gt7986u indeed use two entirely different driver=
s
> and two distinct firmware.
>
> Using "goodix,gt7986u-spi" could indeed cause confusion. How about modify=
ing
> it to "goodix,gt7986u-losto" by adding a special code?

If "lotso" somehow means something real to people using this product
then that seems OK to me. If "lotso" is just a made up word because
you don't want to use "spi" or "spifw" then it's not great. In either
case you'll want to summarize our discussion here in your
"description" in the yaml and in the commit message.


> Additionally, I would like to confirm: when submitting the v2 patch, shou=
ld
> it be based on this thread or the previous discussion thread?

No, v2 should _not_ be In-Reply-To this thread. It'll start a new
thread. You can add a link (via lore.kernel.org/r/<message-id>) to the
old discussion in your cover letter and/or version history.

Said another way:
* New versions of patches create new threads.
* The fact that new versions of patches create new threads is why
people usually want open questions answered before the next version is
sent.

:-)


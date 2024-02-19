Return-Path: <devicetree+bounces-43504-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DD6C85A855
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 17:11:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E7B66B25F67
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 16:11:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E53B3B1A8;
	Mon, 19 Feb 2024 16:10:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="jcwqjzNC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE86B3C46F
	for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 16:10:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708359031; cv=none; b=j9hix4/vz3Hs1B4jLluK1uZsOQ3CPIutZKljtPbVGENmcVPPp+gqoEqVQAKskI9d2gaZm4SXeymcEaFMrWP6/RhJcDxvOyjyj8yvrQvdinUqA3lAcPEKnEV17Ym8NacjBhcFLKwadKFcDCGnpWpE/C2Q8wdk/6lk9dBs9swuHtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708359031; c=relaxed/simple;
	bh=zYH1LuOXgQQm0vqtmeFhua6+HEyiQe8k/7kz4CN9QA0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sIKagTqgwAIhwJJn2oau/zsemAn6B1gGaI6fl38GRZd8910AtSuupaagCz19YCxtrV6EOJGXqS+MT713eTkmMsT+oV69JtyaAW6sKLRXsO4rq9NDOm5LJ1C1lvMRtyfd/Omxr5aOyG164/bW+2PufY8a9OzUrmv6a08x52810bA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=jcwqjzNC; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2d22d0f8ad1so22064961fa.2
        for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 08:10:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1708359027; x=1708963827; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Pa3zXecLjhLhKgOku2SBcFoSL+ZBhFujLXiFCiZcIb8=;
        b=jcwqjzNCyYcmjkndQ7fjja85b7W5MA7xr86iGwARthtygpTT6CfXPstXRSyfFYqhkT
         kiCdW5PCD7lHiLAor1OuJ9gQ4kriHfqFMMdLa9PXfKG/h6A0bh3K0P3o4u5NvJhX4x9U
         li57PiJPfhkZx2QIEKspXGsQz++Uy1HsWZ0rPZ2Ytc473rTyIbaoLDNddloyZbb+Cntt
         qOprjnhD5jww9M+cZexQQ4F12PE7q9Rimg2I7tHNcU/+nfFNxwXtjPlnAJYNwvmtv609
         mtm0e1satmzlpaP7Qa0T4Soc3FqMiDr07uV3OvEQxnGl05eu7wyn75tuRibRcisWpHLJ
         w9Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708359027; x=1708963827;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Pa3zXecLjhLhKgOku2SBcFoSL+ZBhFujLXiFCiZcIb8=;
        b=oRMr9lnsRdUSeKLerv+CKywMduN4vh70KoOpH3vPJBqWzPy10g3AQXY3BTHMKBl8Rs
         7GphmoDBl1fMSBrcoafLg8thjLKVC483HhFhU9jOj/Vr48eiVOF1M74RJNXRZE4YxkUs
         MjdbuYe+XR6dO1to0kum8oZrEK4OHK7BpW8skUH1CPgv3b+spnrRBmaAwg+OIypHUyH0
         5HpPbD0+5c+7DMS4LmP1SoorAzQz2I1WP1HpoDOIIvujqMoLMqGFHmhCeBu4D0co2tSW
         11ynO9aM9G69cbQnHKAZd1xgSC1KB0ZTUNaQJ5cJHoI1QwgbjLfv52q+oZQ+xOmosE1S
         zvxg==
X-Forwarded-Encrypted: i=1; AJvYcCXhIEB7P9QbBTpETfbMaCztrIkht4/wR2+cXZ1w3TAzOXvY/FttSX3mgVleAkw1Yd9Dz3zhjirsMozQOIJLScQ2dVCA0L1I1bLfdA==
X-Gm-Message-State: AOJu0YwkJ1IQVqkhksts3gVpQJxD1vun1KAYC3Kbz2lFK70VR/+nLZbQ
	6dlWyYaIRXlAq/LwfwvbMGmoM0R+RTvrijysK2/sdUXq28PDFV2b9glJT5zZO5HqwZH9fIE0PI4
	XT0G9RZDBdX0ZJX9nVrdO4Z5yeuS7gkOogqVJyw==
X-Google-Smtp-Source: AGHT+IE2ef+NW69Aa9c+Eg+arV7TCujS69hqXekx8arU9+dXFwYNzJ9wRTpBkrVa2J5rAPuJaMz5mI0FBQ+xK98yNXU=
X-Received: by 2002:a05:651c:1047:b0:2d2:3f05:d137 with SMTP id
 x7-20020a05651c104700b002d23f05d137mr1491985ljm.1.1708359026789; Mon, 19 Feb
 2024 08:10:26 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240208172459.280189-1-alisa.roman@analog.com>
 <20240208172459.280189-6-alisa.roman@analog.com> <CAMknhBHU6k8J_PLCmGYF48S1q3uXByiCwzcd+B3q3Cd-02CUow@mail.gmail.com>
 <84546728-f0cb-4b38-a71c-e053b9b9278e@gmail.com> <CAMknhBFp-4s+-D8kD9rh0-OCc3gBs3hFX1EZ9ZmOifQOyGgUug@mail.gmail.com>
 <20240216142158.30e96c53@jic23-huawei> <CAMknhBEtLR1QNEv6HhcW35jiGEkx=srzy41NXt8bJ=gokzoemw@mail.gmail.com>
 <20240217162510.5d5d4511@jic23-huawei>
In-Reply-To: <20240217162510.5d5d4511@jic23-huawei>
From: David Lechner <dlechner@baylibre.com>
Date: Mon, 19 Feb 2024 10:10:15 -0600
Message-ID: <CAMknhBF5mAsN1c-194Qwa5oKmqKzef2khXnqA1cSdKpWHKWp0w@mail.gmail.com>
Subject: Re: [PATCH v3 5/5] iio: adc: ad7192: Add AD7194 support
To: Jonathan Cameron <jic23@kernel.org>
Cc: Alisa-Dariana Roman <alisadariana@gmail.com>, alexandru.tachici@analog.com, 
	alisa.roman@analog.com, conor+dt@kernel.org, devicetree@vger.kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, krzysztof.kozlowski@linaro.org, 
	lars@metafoo.de, linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
	michael.hennerich@analog.com, robh+dt@kernel.org, 
	Nuno Sa <nuno.sa@analog.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Feb 17, 2024 at 10:25=E2=80=AFAM Jonathan Cameron <jic23@kernel.org=
> wrote:
>
> On Fri, 16 Feb 2024 10:57:33 -0600
> David Lechner <dlechner@baylibre.com> wrote:
>
> > On Fri, Feb 16, 2024 at 8:22=E2=80=AFAM Jonathan Cameron <jic23@kernel.=
org> wrote:
> > >
> > > On Thu, 15 Feb 2024 11:13:19 -0600
> > > David Lechner <dlechner@baylibre.com> wrote:
> > >
> >
> > ...
> >
> > > >
> > > > Tables 22, 23 and 24 in the AD7194 datasheet show that this chip is
> > > > much more configurable than AD7192 when it comes to assigning
> > > > channels. There are basically no restrictions on which inputs can b=
e
> > > > used together. So I am still confident that my suggestion is the wa=
y
> > > > to go for AD7194. (Although I didn't actually try it on hardware, s=
o
> > > > can't be 100% confident. But at least 90% confident :-p)
> > >
> > > You would have to define a channel number for aincom.  There is an ex=
plicit
> > > example in the datasheet of it being at 2.5V using a reference supply=
.
> > >
> > > I wonder what expectation here is.  Allways a reference regulator on =
that pin, or
> > > an actually varying input? Maybe in long term we want to support both
> > > options - so if aincom-supply is provided these are single ended with
> > > an offset, but if not they are differential channels between channel =
X and
> > > channel AINCOM.
> > >
> > > Note though that this mode is described a pseudo differential which n=
ormally
> > > means a fixed voltage on the negative.
> > >
> > > So gut feeling from me is treat them as single ended and add an
> > > aincom-supply + the offsets that result if that is provided in DT and
> > > voltage from it is non 0.
> >
> > Calling AINCOM a supply doesn't sound right to me since usually this
> > signal is coming somewhere external, i.e. you have a twisted pair
> > connected to AIN1 and AINCOM going to some signal source that may be
> > hot-pluggable and not known at compile time. As an example, if AINCOM
> > was modeled as a supply, then we would have to change the device tree
> > every time we changed the voltage offset on the signal generator while
> > we are testing using an evaluation board.
>
> We tend to stick away from designing features to support testing with
> devboards where external wiring is involved because anything could be
> wired up there. (Examples are things like shunt resistors - normally
> they are DT only) So sometimes it's a bit painful to work with such board=
s.
> The main focus has to be production devices or at least stable set ups
> where a fixed DT is sufficient.
>
> So I'm more interested in focusing on production device use cases.
> Do we have an information on how this is this used in those environments?
>

Point taken. I also checked with an apps engineer at ADI and it does
sound like AINCOM should be a supply.


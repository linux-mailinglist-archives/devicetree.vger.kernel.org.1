Return-Path: <devicetree+bounces-114023-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D80BC9A99CC
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 08:31:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0A0AE1C20DFE
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 06:31:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED613139590;
	Tue, 22 Oct 2024 06:31:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="UJAo0jEg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f172.google.com (mail-vk1-f172.google.com [209.85.221.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2FA284D12
	for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 06:31:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729578711; cv=none; b=L5ujl0dx2dAI+1L7r3xzx7ZvjMvnF6OfMRzoDdwoqoOdDsS3o5q9Pv2kFD+HBTyDXKXVKu69t0emhDAAM/v1V3F6Nh+PxswMfoXOz15TIMlPRxqEk75LJUYoWYE5XtErWMvCwEoDABTcQxQy5iFWvW/gDnZYdhnBNwZoyxVm/7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729578711; c=relaxed/simple;
	bh=UA8peE4aqBis176Dq9lkDvGeZvGkh4OgIM0eopFMjow=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=An4XKU9X44ebUzmxUf3BcEnV8wMjxyheM32VC/YYoR0Xha/tlhGD2eycAwI5+vHxBLaC/7b4Ipr3iolK5JAddFxdJANfVUN1TngFhh794YebOBi7KGtLfv7X0/7Eca9KpXbMZ0bI2gx6UNBog5GmrIeHagof9ZgBOVgSczAU0bw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=UJAo0jEg; arc=none smtp.client-ip=209.85.221.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-vk1-f172.google.com with SMTP id 71dfb90a1353d-50c9f4efd09so1614332e0c.2
        for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 23:31:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729578709; x=1730183509; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UA8peE4aqBis176Dq9lkDvGeZvGkh4OgIM0eopFMjow=;
        b=UJAo0jEgnOmJRx2pNvTMy1oZBwG5qKEtT4atVR2IMrMg62XtxjFEEsm4m/zv9cfBIa
         E2NZSAeYtad4ld4+D5Do3TTL8TXpx14x8plQE0dOAezGypoW3fem7eloMQLr3bAK6JjC
         93LyuU7dseHpkOT39jMM+VFmY3oPpOjCA51r48eVQbjGZ8db2KqxB1SG5DdFn+z5aB10
         L8wLs/iFk1RLKIW6Or8s5QJUwNHqZ3sGNzgCujhVApmnWQTT5OAZOYhOI4hIFFjsPniR
         gJjSjRGznLuyFienR+pRrWxZj6omU3cFIq86ll53Zy4ZjJDrFFwtcmBDRi9vrjIHivaR
         jGnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729578709; x=1730183509;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UA8peE4aqBis176Dq9lkDvGeZvGkh4OgIM0eopFMjow=;
        b=wICYYAwVQsZ72LcEktFcjabnY5vkuHrGsgrtLbOaMWNWyYTvBpwYecGltezrJks+ra
         o0mz7z8TrHNfi73EkLo2EdU2KoFC6/+iGBdb/uACRAiYzdsjRw18vm/kjnbR8klfI1l6
         L4/6sEZQP3/OMHpArk7qeS5ddCztIOVn6batKRFv5CaPMb6B6X2uJI+ZGFKqkgadu51O
         Eo0ezcSOV6QX7VhVAwmSAd4wRcooN6sah3iFgqiP7QUT5YKJGpUD7JyspbCZRn0dUNCp
         08IHVLWXdrVB2vrTUsriXZMjMdAhnxxLBSb8WIsNKhJLJu7m3qSLiQv5DiosZTZA0R7O
         FF4Q==
X-Forwarded-Encrypted: i=1; AJvYcCXFyme66c3xiN5KSiXHHzgaIY3g8tJ3IdTRKkYyBRSy23HziAaMygeOQCgwlR8bggp93jyLUWMb7MMm@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/87lYrvCSheYcn8uoUDXEEzz/qt0thWSYHpCKNTdub7lEq/DK
	qmPodVXffR5+OfeyvZPfaRWqf4hVlKdTPew8EP4zFzkLEQJLgsj/yKAdS8cwwhFzHNr23xmOABJ
	4UuNMKNBho+uTz7OvA2eGFWJGskgZ+GNcvHeNgg==
X-Google-Smtp-Source: AGHT+IFOCcrJoYXRgEW2qz+ymyN0Gck1g+lyMApoiYLfdYnlbLEKw+Rb3ciR3agjaxWEa8c5lSru4E5xt3YoNOkB+SU=
X-Received: by 2002:a05:6122:169f:b0:50a:76c9:1b7 with SMTP id
 71dfb90a1353d-50dda3c6942mr11641929e0c.12.1729578708667; Mon, 21 Oct 2024
 23:31:48 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241021130221.1469099-1-aardelean@baylibre.com>
 <20241021130221.1469099-3-aardelean@baylibre.com> <2842cbb5-680e-483a-af62-4c08e7818a85@baylibre.com>
 <1dbc8e19-d6fd-42dd-b116-f08c408b6a5c@baylibre.com>
In-Reply-To: <1dbc8e19-d6fd-42dd-b116-f08c408b6a5c@baylibre.com>
From: Alexandru Ardelean <aardelean@baylibre.com>
Date: Tue, 22 Oct 2024 09:31:38 +0300
Message-ID: <CA+GgBR-8i-S2gnp39TnOxayfGqLpdhAceOjNDpE+Y7t_5Xeaig@mail.gmail.com>
Subject: Re: [PATCH 2/6] iio: adc: ad7606: fix issue/quirk with find_closest()
 for oversampling
To: David Lechner <dlechner@baylibre.com>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, jic23@kernel.org, krzk+dt@kernel.org, 
	robh@kernel.org, lars@metafoo.de, michael.hennerich@analog.com, 
	gstols@baylibre.com, brgl@bgdev.pl
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 21, 2024 at 10:31=E2=80=AFPM David Lechner <dlechner@baylibre.c=
om> wrote:
>
> On 10/21/24 2:03 PM, David Lechner wrote:
> > On 10/21/24 8:02 AM, Alexandru Ardelean wrote:
> >> There's a small issue with setting oversampling-ratio that seems to ha=
ve
> >> been there since the driver was in staging.
> >> Trying to set an oversampling value of '2' will set an oversampling va=
lue
> >> of '1'. This is because find_closest() does an average + rounding of 1=
 + 2,
> >> and we get '1'.
> >>
> >> This is the only issue with find_closest(), at least in this setup. Th=
e
> >> other values (above 2) work reasonably well. Setting 3, rounds to 2, s=
o a
> >> quick fix is to round 'val' to 3 (if userspace provides 2).
> >
> > This sounds like a bug in find_closest() instead of in this driver.
> >

Adding Bart (the original author of find_closest()).

> > If there is an exact match in the list, it seems reasonable to expect
> > that the exact match is returned by find_closest().
> >
>
> Likely also affected by this bug since they have values 1, 2 in the list:
>
> * rtq6056_adc_set_average()
> * si1133_scale_to_swgain()

Yeah.
I forgot to mention this sooner.
But this patch is more of an RFC patch about how to handle this
situation with find_closest().

For monotonic values with an increment of 1, find_closest() is a bit buggy.
Will try to fix find_closest()

>


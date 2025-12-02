Return-Path: <devicetree+bounces-243813-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A66F8C9D29E
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 23:10:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 54825343C3F
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 22:10:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A2652FBDFB;
	Tue,  2 Dec 2025 22:09:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="PsuRRZc4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3832A2FBDE0
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 22:09:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764713378; cv=none; b=SRyeQL8WB+EddcMqpQNbJdnaPGlm76G59cSj09ZMkPpUTtcTfj7HynmE+rOgGYJ2bkGL/aU7lVUSNlow0oLlXoKMVzVi4cHZd1wN+cvo/r4eXGi8vm10o6osMs3x70u+dRoJ3/3a6HNlFuWvp2GMPzOz2eJ4JEXNk42uJnD46BE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764713378; c=relaxed/simple;
	bh=dBuZYXzF4qvVEPuANWxK/LCht3JKTDuVNWCwv6O8PXc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LFxjhSUPxK3QmdkQYEU1gl1/8MxG9KvwcLZflFAPLrNJLM6xhinhxf6pdM4j5mT/LjtbjVePT/WJnN3OzwfnEbUTwrfIhC06fcrCErV2vOQIl8W+7/ZNe6AMtdsqziTOi88HOgYu8FQKw2yYUh1bymahGt0+xBzMiKZeOaRV4no=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=PsuRRZc4; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-b72b495aa81so786447666b.2
        for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 14:09:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1764713375; x=1765318175; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CE0Tb9n5WshMYKxUeEYg0eYGZtGLhkXKf12cUjTZC80=;
        b=PsuRRZc406zQygBiXDuNFAxfox0AEzPJal+0X89ivwbObM27nKpYekBpFBnbTnbXpk
         oPKUaeir8tXALh5ep1XibUHSqlaxQxhxAUP7zZS6KfUVPzRHZbq5x5cTFwZTX+0Lzdop
         oYBM3svzj9QLKKJ8vXIx4qHH05L5XiUTbLrK4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764713375; x=1765318175;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=CE0Tb9n5WshMYKxUeEYg0eYGZtGLhkXKf12cUjTZC80=;
        b=tkdIH/N8MwdHzJbBIcKUOa7kCDLHnw9QdMDWJ8eYbxYOPP/3ucVk3mv4BjpgnjOnRu
         0I2SZhpF+8RZJrENAB0Z53qaNE1QB/V++GPE7yKKpunefUEcnnGogAlL2hQo4RC8DNqQ
         jS3B8IWZJ7crutQu+AlbkEMrEmXtmPl+h0ec8sMZXTNmBv9uWwI74e71AShvU8Iy1SOu
         U3tkc0KfYIS9a6mFie2pULKTR3qqUwZgHk9RcgINTc80gdhe8t7kvcT2bjvuTHsvLQdw
         zTYTTvdHibmsSSDAP4cBAUUYalyGxikevU1r1fD/Q40XxRK4ojquH6x5NfAqPPCGEtDP
         A+1A==
X-Forwarded-Encrypted: i=1; AJvYcCUi65N1148kPvoUFYqXHCW1iwCVRDMRTffOTAHthLWzmuBSJwex/6cQOVSK1p+XAp8HSeloIjRc+UUZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6bdjFn6ybKif9Npw+7aBKY3TAlAaYdVwP4lcPQ+L/pd+Lx0LU
	OqtEmTJ/5Inw5VqB31KMmL351OtuQlz+G3M213PJMl4AT1FZJKUbhum6iH1sAtvd0wWZfgFfvm4
	VbP0GqaHk
X-Gm-Gg: ASbGncuBYa6epXlZ6T4gzYjmgXRwSW7ucSPhyvEB8YcmUVt5lNrOed/ewXhFTtpl0di
	kICkBkDMAAnOLTr6rLCmKnjPQHeORYSPq7CdL1EwmYaGZeus0qwZ7H/n6VFIp2QJKA9M+yejtxQ
	OmJp/mBOy585Vtj/DjEc40hY4+PCpCPobunsZ4oPFqrM2KnAe6gV/itScxDURb/0v7PPTxd/U6z
	RcQvqgYGvVa1PcDIkh771vAfVvvPLWE5TNmZU0RmNExnfcl3H7nJiLkZC/SX82A+8zFHSUWgkHp
	OYLqGmPJAs6I9cztynnWyTDgKzQBCtfHPeJviR5GiXbby+al6KvwFYzhkdjLapJhRDm+0ZCUDgB
	EjGRew5jaT3tHSVqHl2qnNGJMlyptxA2dzzYDDjWJ12oPCgV0MRAhe5hB7l0F5U7aL2MTMKhCWL
	5Wfy73EnpWZV4rCaUNRLmC2sUMNve71IGC1Gaqgp87TnITK+BumQ==
X-Google-Smtp-Source: AGHT+IFuQ0z3RVHnQMpAP6gvfcX2WAEoBbNi5xFJayj7ffQ1shoGsDaH5HmX2S+l8WIETc0b3GdHwg==
X-Received: by 2002:a17:907:9625:b0:b73:6b24:14ba with SMTP id a640c23a62f3a-b76c5352f1cmr3076337466b.8.1764713374737;
        Tue, 02 Dec 2025 14:09:34 -0800 (PST)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com. [209.85.221.48])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b76f519d883sm1607853566b.17.2025.12.02.14.09.34
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Dec 2025 14:09:34 -0800 (PST)
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-42e2e47be25so1841336f8f.2
        for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 14:09:34 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUKgxnYsRcdWSfUgfKm7pVqPkfII4yQcZ39r4kTPV1dsPr6AIZsltYLnlxYhLS827HrpW9rtDit59aX@vger.kernel.org
X-Received: by 2002:a05:6000:401f:b0:429:bca4:6b44 with SMTP id
 ffacd0b85a97d-42e0f203446mr32556688f8f.13.1764712997701; Tue, 02 Dec 2025
 14:03:17 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAD=FV=Ux7nGFnYEyX0cUL-9__BKnTYc+kAJjkF458ZnFS7zoJA@mail.gmail.com>
 <CAD++jLkuRQKoiEN928GtAj7wUts5PxH905bLp6ZhKsJ3NnenEA@mail.gmail.com>
 <CAD=FV=X5=AK4XMANv+fatn3d9Y5vo9AXsHWb_47HmNaMWUtMwA@mail.gmail.com> <CAGXv+5HyMYgKmLc+jmkj-gytm9SNVg9dS7Vn3dQ-dsH8Wo+4sg@mail.gmail.com>
In-Reply-To: <CAGXv+5HyMYgKmLc+jmkj-gytm9SNVg9dS7Vn3dQ-dsH8Wo+4sg@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 2 Dec 2025 14:03:06 -0800
X-Gmail-Original-Message-ID: <CAD=FV=Uq9yfUkLUgg116G+2AvEKkEPmdRgUJ5f1bj229j=LxUg@mail.gmail.com>
X-Gm-Features: AWmQ_bkxt4Z1y_xk0xRlx44cYkgtJzKDF-PUNGwdWpfvpJRWrhovgdQ52I-giJI
Message-ID: <CAD=FV=Uq9yfUkLUgg116G+2AvEKkEPmdRgUJ5f1bj229j=LxUg@mail.gmail.com>
Subject: Re: Proposal: Officially allow "incomplete" trees as a base
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Linus Walleij <linusw@kernel.org>, devicetree-spec@vger.kernel.org, 
	boot-architecture@lists.linaro.org, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	William McVicker <willmcvicker@google.com>, Julius Werner <jwerner@chromium.org>, 
	Conor Dooley <conor+dt@kernel.org>, Peter Griffin <peter.griffin@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Simon Glass <sjg@chromium.org>, Yu-Ping Wu <yupingso@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Dec 1, 2025 at 7:31=E2=80=AFPM Chen-Yu Tsai <wenst@chromium.org> wr=
ote:
>
> > Separately, it can be noted that we always _wanted_ a similar solution
> > for ChromeOS, but we never quite got there... ;-)
>
> FTR ChromeOS is moving in that direction: splitting SKU differences
> based on components into overlays that get applied to the base by the
> bootloader.
>
> In the simplest example we could have one base dts and two overlays
> for two different DSI panel models:
>
>   - base.dtb
>     - panel-model-a.dtbo
>     - panel-model-b.dtbo
>
> The problem we then run into is that the base.dtb will only have the
> generic model compatible "google,foo", not the sku and revision
> specific ones like "google,foo-sku1-rev2".
>
> And we'd really like to avoid having _more_ overlays just to add the
> final specific compatible string, as that kind of defeats the purpose
> of using overlays to reduce the number of dts files.

I think you may have simplified the above a little too much to the
point where it's confusing. At least I'm a bit confused. I _think_ the
problems you're talking about are the kinds of things we run into when
we take overlays above just two levels. I'm imagining:

- base.dtb
- board1-rev1.dtbo
- board2-rev1.dtbo
- board1-rev2.dtbo
- board2-rev2.dtbo
- panel-a.dtbo
- panel-b.dtbo

So I think you're saying that you'd start with the "base.dtb" and then
extend it with exactly one of the "board" overlays and then exactly
one of the "panel" overlays. Is that right?

So I'd imagine that each of the "board" overlays could have "full"
compatible strings. For instance, I'd imagine "board2-rev2" could
have:

compatible =3D "google,booard2-rev2", "socVendor,soc"


The problem you're struggling with (I think) is that the panel
overlays won't be represented in the compatible string (and "model")
even though (historically) we always did in ChromeOS (they were
included in the "sku" part of the compatible string).

Did I get that right?


> I proposed internally maybe having the bootloader fix up the final
> compatible string, but I think we need some rough consensus upstream
> whether this is acceptable or not.

Maybe we need to come to some agreement about when the top-level
compatible string needs to be changed. In the above, I'd perhaps argue
that the panel isn't a major enough change that it needs to change the
top-level compatible string. That would solve the problem, right? What
do others think? Certainly for "probe-able" components we don't change
the top-level compatible string. Can anyone point to any official
documentation about the top-level compatible string?


-Doug


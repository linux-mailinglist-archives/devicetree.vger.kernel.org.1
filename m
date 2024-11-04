Return-Path: <devicetree+bounces-118865-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 087799BBE16
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 20:37:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BB88328311B
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 19:37:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED9691CBA1B;
	Mon,  4 Nov 2024 19:37:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Aw/bn44b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21AEF1C876D
	for <devicetree@vger.kernel.org>; Mon,  4 Nov 2024 19:37:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730749031; cv=none; b=CaF/4CMR9fzHhAnN55/0bUGZtcuOBFh6DzklmzDoEiaRpgx2Isa4QJMuRlQWfgdVeX/kj3JjQvknsJLEZIph8zn3y6llGOEW+XBAX/sovyXpsVYoOEmAlO08qyHv2/AYVWqb89Kfye/xQG4mzAFdDYkuNzZB4GfxmWuxyiuEClc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730749031; c=relaxed/simple;
	bh=1lBbc+n+/nnQbLbO5BWXZXN0GtOR8CMewX+RwC3SYdM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NdQ7sGR6UTJyPonCm8OBvBG1RZ4bjPp++jkLnR182pmuJe9g8cHL/4wTciN7crmOWTfdlclsR29eyfofYKYzyBO6PZQBMDrqSZfSIbBsmPcWlWCq3Cl3prqnXD7dBQWZGRRpdl+iYzCeGLZfFL1PvSF1rp6XIHaIi4yzQsJNNro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Aw/bn44b; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2fb5fa911aaso68101761fa.2
        for <devicetree@vger.kernel.org>; Mon, 04 Nov 2024 11:37:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1730749027; x=1731353827; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4H3MOSyfVCTn2aBJJHJZEtjM6no8KhD2xeVxlGCW/Rw=;
        b=Aw/bn44bYAEjYfMPLiglM1ic+wx1xqahjF0aJzcdj299sa6jmq8sMFHwTlVvmxZ0OX
         yYxapyjdARqe5TvIot2eAcEoi+W6a1Ta+EcF7y+MfQC+k4JNbRrusMkeAXITUlXXPUw5
         /hM7nUJ0p5cQ3mv4eDkZZ7T5dHKOjqU9Gvgo4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730749027; x=1731353827;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4H3MOSyfVCTn2aBJJHJZEtjM6no8KhD2xeVxlGCW/Rw=;
        b=XVoJaReDR6Mlq9FcmtWxOoilZCLI9k7xjAZwkQ6fAXCWuVu8WySzWj59sMUMZ3Wjua
         q3jNR5T4CWvbcO7HmdH7DcaKclJFsZVXqcAfnSlNcRJ86vaU4SMPV4MBdFPz1b5n5/dc
         Wy0T9UQp4Z79jeZPTQ2H7xOfi04IPiiqSbBFEXwNcQfxy+tGnE2lHjjqR6ps4hqiBDaD
         tCnaqSEnnIscSqR8jV3kFWqb7bto0cFkXzsTUS62tLvgJe10Zc26+IKV1m5JgWkRbz/u
         ZAEAEXd6D8kAoawDN6yoJq0LPU/zRlrB1W4x8MBa2Xor5m3/r/WNiP0xS4sPFc14dCkG
         gcUA==
X-Forwarded-Encrypted: i=1; AJvYcCXM7qhaB9V1wiTf0dHCKn/RVgtiIz3OZofTQAah/WL22+rbwt49DSjzXukglkcVzEDsC5DsHsB9P9bS@vger.kernel.org
X-Gm-Message-State: AOJu0YyHWu3di0nVRCvBcop023jf6JdOFsvQCvqCN66xZxenf+BrCJYU
	sqVxMxlg9Wo9yP0WW9Q/erOAtbEh7+laRVaNyHtYuke/Kdwq9aBxKksPF1kMB1zHAIXq2eiSK3R
	D1g==
X-Google-Smtp-Source: AGHT+IHNZThq0B05RxVGtIviWIT5rcpWFf6RVQ+eoWOD9qP8NT/RJZesMxfgbDZC9F/cINbj1L3+Vg==
X-Received: by 2002:a2e:b88e:0:b0:2fb:3960:9671 with SMTP id 38308e7fff4ca-2fedb7a2aaemr105134031fa.15.1730749027303;
        Mon, 04 Nov 2024 11:37:07 -0800 (PST)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com. [209.85.208.181])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2fdef3beb5asm18231031fa.6.2024.11.04.11.37.05
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2024 11:37:06 -0800 (PST)
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2fb5fa911aaso68100821fa.2
        for <devicetree@vger.kernel.org>; Mon, 04 Nov 2024 11:37:05 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUSqGxWW2mhp0KTeBNdvP2XcnF3jv8fp0t+WsrwVBScEjxcsJqAaWDWSSIR01okihnTEFmFnZnw4Arf@vger.kernel.org
X-Received: by 2002:a05:651c:550:b0:2fb:3881:35d5 with SMTP id
 38308e7fff4ca-2fedb813966mr95709131fa.35.1730749025443; Mon, 04 Nov 2024
 11:37:05 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241025114642.40793-2-charles.goodix@gmail.com>
 <3ypn62dsgarvmxkmdglugcinxmvpmhdqub2zvkygaonn54odf6@amfgijfcd3l3>
 <ZyLtYdwoJWx9FsdS@ux-UP-WHL01> <CAD=FV=UNKECLn=3VrjsJfA+HTNa9Gag1qw5jOcBvw7=ZtkZEnw@mail.gmail.com>
 <ZyQvxKi8dYOv1AOg@ux-UP-WHL01>
In-Reply-To: <ZyQvxKi8dYOv1AOg@ux-UP-WHL01>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 4 Nov 2024 11:36:50 -0800
X-Gmail-Original-Message-ID: <CAD=FV=WD5=2SBLD2rDtXXt0dbn-KUvnE0kPsbnyEAkSA_4w-tA@mail.gmail.com>
Message-ID: <CAD=FV=WD5=2SBLD2rDtXXt0dbn-KUvnE0kPsbnyEAkSA_4w-tA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: input: Goodix SPI HID Touchscreen
To: Charles Wang <charles.goodix@gmail.com>
Cc: dmitry.torokhov@gmail.com, hbarnor@chromium.org, jikos@kernel.org, 
	bentiss@kernel.org, linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, conor.dooley@microchip.com, 
	Krzysztof Kozlowski <krzk@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Charles,

On Thu, Oct 31, 2024 at 6:33=E2=80=AFPM Charles Wang <charles.goodix@gmail.=
com> wrote:
>
> Hi Doug,
>
> On Thu, Oct 31, 2024 at 10:58:07AM -0700, Doug Anderson wrote:
> > Hi,
> >
> > On Wed, Oct 30, 2024 at 7:37=E2=80=AFPM Charles Wang <charles.goodix@gm=
ail.com> wrote:
> > >
> > > > > +  goodix,hid-report-addr:
> > > >
> > > > I do not see this patch addressing previous review. Sending somethi=
ng
> > > > like this as v1 after long discussions also does not help.
> > > >
> > > > No, you keep sending the same and the same, without improvements.
> > > >
> > >
> > > I apologize for overlooking the discussions regarding this issue.
> > >
> > > I would like to clarify that while the current boards use the same ad=
dress,
> > > but newly designed boards in the future may require different address=
es.
> > >
> > > Retaining this property would likely offer more flexibility.
> >
> > I don't feel very strongly about it, but maybe Krzysztof does?
> > Possibly the path of least resistance would be:
> >
> > 1. You drop the property from the bindings.
> >
> > 2. You hardcode it in the driver to be the normal value.
> >
> > 3. If/when someone actually needs a different value then we can add it
> > as an optional property in the bindings and fall back to the default
> > value if the property isn't present.
> >
> > What do you think? If you feel strongly about keeping the
> > "hid-report-addr" then you can certainly keep making your case.
> > However, it's probably best to wait to get agreement from Krzysztof
> > (or one of the other DT maintainers) before sending your next version
> > unless you're going to take the "path of least resistance" that I talk
> > about above.
> >
>
> Agreed, let's wait and see the opinions of Krzysztof (or the other DT
> maintainers).

As I went back and looked at this again, I'm curious: I don't know
much about how your protocol works, but is there any reason why your
driver can't figure out this "hid-report-addr" dynamically? Is there
some reason you can't talk to the device and ask it what the
"hid-report-addr" should be? From skimming through your driver there
appear to already be a few hardcoded addresses. Can one of those
provide you the info you need?


-Doug


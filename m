Return-Path: <devicetree+bounces-33776-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 55CA28364E6
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 14:57:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0632A28E512
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 13:57:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4092F3D0C0;
	Mon, 22 Jan 2024 13:57:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Q/D2792M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 773EA3D387
	for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 13:57:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705931847; cv=none; b=IcqhKOyhWUbjqSg3ljsPoKAfBmVKkMwkjsbSa2g+IIdXTBLK1NMGcrAQp2TjwlzZYQ5Tq7MTCMChwFta8GLz9TZgF+jKYCw7VcdGiv3NRZYypkV8A0ZqhKHdoCgfLUKHTDCRzet6gMANmNGIu6+ne8Q+UiY9Dc0ilP0HGKF59Q4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705931847; c=relaxed/simple;
	bh=nnowXkzWgF0Pq5XJ2qngf9wrDF2pzAyVfo5CQNtWqpY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=F66qDeY/3jZUPyliE6HR7L811PrcysFYe6woko/WjotgCxRHOqZ4qbxJDOfSK5UW+aQGZmvhAhF/wjttNV64WCKcL7SZoemaqgnWsgbvMfdwGikqnZKAY/XtGmNJNTNt7D3D+POGLESD1OBvqQnbgtyG8egHkZu/TKR6B1bks8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Q/D2792M; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2cca5d81826so37019841fa.2
        for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 05:57:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1705931842; x=1706536642; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nnowXkzWgF0Pq5XJ2qngf9wrDF2pzAyVfo5CQNtWqpY=;
        b=Q/D2792MPeW7Jg1Dzkv/D0Uha62rrlEx2+FOpwUWOQw0wTc7UiJDL3hwucrm5TSTzW
         hMiMSzAS901QxRwHa0Em6OtHNlbJgfB1ffc8hVrC7SoFMFriTBHVgviRYhPGyFvVSQNE
         IXoD1DSvxfTInr1s17BPQh282NY67yttBXpBw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705931842; x=1706536642;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nnowXkzWgF0Pq5XJ2qngf9wrDF2pzAyVfo5CQNtWqpY=;
        b=nwDK3HcfuFlA+mHiOZrHFnMPwci8VnIyJGKRhimggizGW/WeQ6WuCOre5FkV0OKiit
         p06V3AW8kEVH9qKYD2ZFUbizdT+qBpWAGzMn0uaxEgmh+ZB5yjlvM02foORDiQy7o2yj
         4LzeRSAyWd7XRDHQn/lUb8xbX2mbpvF5tIMoc+Y5vMcSUYwtEgI/1Isn+09k4qARiGAp
         lPeUvJpQsOWJ0IR8EDDSlYcZ1WkoL++jA8Jy8TFBRbmEvGkWW8Vr9eswvg3+D60arPsA
         MF2+R2m6oaghBLXSL9Dgru7h/jwBqemHGjr8//sm8z/V7dKveEZ5HyAiWq/PtKBUgWtu
         nwmg==
X-Gm-Message-State: AOJu0YyYckUGggP1LnBT+dmGpCf2YwUli6wrpSVkZuK3FZ4KhfN8R+Ji
	T0QlG1iktmxjMt3CMW2F4fEEeoiVtQsWLpla2ds8tyDZp5TSswWvfnNmTaf6LWh6gGC9EKijuAb
	uk5Xr
X-Google-Smtp-Source: AGHT+IEFE9tSTJDuyGDVj2qUIXRoUb9AvGE8aYbg5u17nduKOVYAt+CRtVu6m4gZcV14BU1rYfQROQ==
X-Received: by 2002:ac2:4245:0:b0:50e:ebf5:c5dd with SMTP id m5-20020ac24245000000b0050eebf5c5ddmr1614822lfl.60.1705931842585;
        Mon, 22 Jan 2024 05:57:22 -0800 (PST)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com. [209.85.221.49])
        by smtp.gmail.com with ESMTPSA id c21-20020a17090654d500b00a2ad1182e36sm13423955ejp.9.2024.01.22.05.57.21
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jan 2024 05:57:21 -0800 (PST)
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-337d05b8942so3660811f8f.3
        for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 05:57:21 -0800 (PST)
X-Received: by 2002:a5d:5f53:0:b0:337:c288:2595 with SMTP id
 cm19-20020a5d5f53000000b00337c2882595mr2749142wrb.78.1705931841164; Mon, 22
 Jan 2024 05:57:21 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231017091900.801989-1-tylor_yang@himax.corp-partner.google.com>
 <6c7d9c92-7616-4fad-806e-44302c33b63c@linaro.org> <CAAFQd5AN-1FTHZcE1Eja0Jd4iqpDocZSz19F44RxqtvKs6ikeQ@mail.gmail.com>
 <5a2f292d-efdf-4647-89ce-e4f5d28c7192@linaro.org>
In-Reply-To: <5a2f292d-efdf-4647-89ce-e4f5d28c7192@linaro.org>
From: Tomasz Figa <tfiga@chromium.org>
Date: Mon, 22 Jan 2024 22:57:00 +0900
X-Gmail-Original-Message-ID: <CAAFQd5D49SLYS8WJBFOyY7G6fPYR_scDj6aUsPbnk0jet9E_rQ@mail.gmail.com>
Message-ID: <CAAFQd5D49SLYS8WJBFOyY7G6fPYR_scDj6aUsPbnk0jet9E_rQ@mail.gmail.com>
Subject: Re: [PATCH v3 0/4] HID: touchscreen: add himax hid-over-spi driver
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Tylor Yang <tylor_yang@himax.corp-partner.google.com>, 
	Doug Anderson <dianders@chromium.org>, jingyliang@chromium.org, 
	poyuan_chang@himax.corp-partner.google.com, hbarnor@chromium.org, 
	jikos@kernel.org, wuxy23@lenovo.com, conor+dt@kernel.org, luolm1@lenovo.com, 
	robh+dt@kernel.org, dmitry.torokhov@gmail.com, devicetree@vger.kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, poyu_hung@himax.corp-partner.google.com, 
	linux-kernel@vger.kernel.org, linux-input@vger.kernel.org, 
	benjamin.tissoires@redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 22, 2024 at 5:08=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 22/01/2024 05:57, Tomasz Figa wrote:
> > Hi Krzysztof,
> >
> > On Wed, Oct 18, 2023 at 2:08=E2=80=AFAM Krzysztof Kozlowski
> > <krzysztof.kozlowski@linaro.org> wrote:
> >>
> >> On 17/10/2023 11:18, Tylor Yang wrote:
> >>> Hello,
> >>>
> >>> This patch series adds the driver for Himax HID-over-SPI touchscreen =
ICs.
> >>> This driver takes a position in [1], it intends to take advantage of =
SPI
> >>> transfer speed and HID interface.
> >>>
> >>
> >> Dear Google/Chromium folks,
> >>
> >> As a multi-billion company I am sure you can spare some small amount o=
f
> >> time/effort/money for internal review before using community for this
> >> purpose. I mean reviewing trivial issues, like coding style, or just
> >> running checkpatch. You know, the obvious things.
> >>
> >> There is no need to use expensive time of community reviewers to revie=
w
> >> very simple mistakes, the ones which we fixed in Linux kernel years ag=
o
> >> (also with automated tools). You can and you should do it, before
> >> submitting drivers for community review.
> >>
> >> Thanks in advance.
> >
> > First of all, I can understand your sentiment towards some of the
> > patches being in a very rough shape. As a community we have large
> > volumes of patches to review and it would be really helpful if new
> > contributors followed some basic simple steps, as described in our
> > "Submitting patches" page...
>
> I don't really understand why responding to something which is three
> months old.

Uh, I got the reply from Dmitry 3 days ago and didn't realize it was that o=
ld.

> Anyway, I talked with Doug on Plumbers about it so things
> are more or less clarified, however since two Google folks responded,
> let me continue.
>
> >
> > That said, it's not a fair assumption that there are no steps taken to
> > offload the upstream reviewers community by the corporate
> > contributors. We usually do have basic internal pre-reviews for
> > patches coming from partners and even a pre-review bot (CoP) that can
>
> Good to know.
>
> > automate some of the checks such as checkpatch or bisectability. But
> > as others said in this thread, we don't control our partners and they
> > are free to send the patches just directly to the mailing lists if
> > they want to do so. In a similar way, not everyone in ChromeOS is
> > super experienced with upstream submissions, so sometimes they may not
> > be aware of the best practices, etc.
> >
> > I haven't seen the patch in question, but I'd assume it's more like an
> > exception rather than a usual pattern, so I'd appreciate it if we
>
> Unfortunately that's the pattern. I was complaining few times about very
> poor quality of some patches from some partners before writing that email=
.
>
> Just to clarify: all the complains are about missing basic stuff, like
> running basic tools. They don't even require internal review by humans.
>

Hmm, that's sad then, but then also as I said, we don't control our
partners, so we can't really guarantee that every single patch goes
through some kind of internal review. Hopefully this has improved by
now and continues to improve as the tooling I mentioned gets more
widely used.

> > could avoid aggressive responses like that and try to solve the
> > problems in a more productive way. Just a simple response with a link
> > to https://www.kernel.org/doc/html/latest/process/submitting-patches.ht=
ml
> > wouldn't really cost you much, or actually even less than the entire
> > litany in this email.
>
> Simple response to docs don't work. Docs are quite long and contributors
> questioned here just don't read them in details.

If asking someone to read a doc doesn't lead to that person reading
the doc, then that's another story. My personal experience is
different, though... But well, again, we're talking about humans, so
we're going to end up with a wide range of extreme cases, regardless
of what we do.

Tbh. I (as a kernel maintainer too) would really imagine we also have
some more automated tooling for the upstream kernel workflows. I don't
see anything preventing some kind of checkpatch (or whatnot) bots,
responding to patches automatically. (Actually we're working on
something like this for the Media subsystem...)

Best regards,
Tomasz


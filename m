Return-Path: <devicetree+bounces-36480-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CEBC8415A9
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 23:33:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CAD011F2475D
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 22:33:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36A692576A;
	Mon, 29 Jan 2024 22:33:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="cqvwL5s/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A693D18E07
	for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 22:33:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706567624; cv=none; b=IqRGTNaj3JOqZTi7BVjmRFKboXDHCbznAlUjdO/Djs470f4OmvdFndlfAr5MVqroPOswrgYQSbct1pOr6f9MeF9nQmCL2YN9V/Asgn6Jo9U9+OS1QWJgA2G+gZPnKIUC3R24LnhLyHDGCRNKynR4lX7HKu+NbKKC7NisjHC9l/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706567624; c=relaxed/simple;
	bh=6QDbn7me7Sjd+W9Lc5adqP1pQ+VU4SW9foeH+wUD9SE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VwOOhPK5QQSaDORaKgdxnwh1g1BAvfMpSd47+0ET2yMY9sBocxq0tqHs/clRpkSFPJ/sbvOmOEK4C4IC558P4OFy0XqnzhbOuXI4V4Sv0DI/16nYNysl+MTiFlHxdAdYKSkiQm9MJ3FKz3j2n6ahOWMJIyVtBsPFZfUz6A1BZcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=cqvwL5s/; arc=none smtp.client-ip=209.85.160.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-42a99dc9085so60591cf.0
        for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 14:33:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1706567621; x=1707172421; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6QDbn7me7Sjd+W9Lc5adqP1pQ+VU4SW9foeH+wUD9SE=;
        b=cqvwL5s/EKNq/sYr1lgFMZRfVFEgcc8Y4evMfjR4Vc3ByN1pNIO6D/ToODtJEIIZEE
         /athsQT7cTJ+D+18DLMaFi/NFEg6wVSf2vlIwoZ4kOxXsBaYaNXG8CnqdV05kMVUOJMC
         qeu7ia9rfwJbJvK1MITyBNKYW00ZkrZNvENysEmVrSyUL8thJnzR1WEjuBQBbSoPRvNJ
         S3yyyEkS081iB5QZI56st1c0lHH2pdptnjOO1DphAm5lkp7XErnmtO8ydNuYMw2c2U2+
         8pdS0l4sL1wnjhFY5z/LJO8T0XcQrWPVVeHvBWFyvBWtrNzq8/3D4BpvYPod2SNBDWVG
         h5Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706567621; x=1707172421;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6QDbn7me7Sjd+W9Lc5adqP1pQ+VU4SW9foeH+wUD9SE=;
        b=cQ7YAv+rQfC16H3W4kKHxzDEuQhLaCqJPZ9TfAaCci87eV4BENdgAdfNSymBIqgI+3
         pJOOmX3MbWbvVZBbDI+JhI4McWlrh2w2kk2TjgeyoI6zoJ62NjbHRuEYvNKRqHTmECAs
         uvz7q1GCjXWGHFP2I8SWuRDswmcU5dJd2fa7InmRVzmcnl+QsAyeec5MqxuYk/lzo66g
         sCEpENu17c/Ozv6YMKzQdYXwzjBNcYC/OaNi8jCxM+BIp5Yz5zQ+95EI/IwKb6Fj1qu6
         E/eBCvjShxtC5oVGFKHsDykz6fENIPJIS0u0JZot6fXqpoEeduZIoxpSWDgc8kL1ivS8
         BNHQ==
X-Gm-Message-State: AOJu0YzHQWJPYf0Ep9YHSKScFVXb01EFoX4G4Zy4Un2MmZ4UFj+B/N+I
	KYJi6gRxK3+7pmDXCy8gkcySN3MYRf7sM586umHHzLWTL6SJq0zF7+Cz5KgXxG8GV7m+IusYLNu
	U7q9sF4vN2nWFesCsKAnJct807F0HE88IrLBc
X-Google-Smtp-Source: AGHT+IG8m8/uPfeYYNatMSPZgalyqY8ti/GDkyp7qklCTywAu4j/dMqNHGZlg0o7IXOn+e91vuHkZ2fo1GgyowbifHI=
X-Received: by 2002:ac8:7d10:0:b0:42a:9e19:7b8f with SMTP id
 g16-20020ac87d10000000b0042a9e197b8fmr111870qtb.8.1706567621441; Mon, 29 Jan
 2024 14:33:41 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240123-iio-backend-v7-0-1bff236b8693@analog.com>
 <20240123-iio-backend-v7-1-1bff236b8693@analog.com> <CAGETcx_0wij8j5u7YRNPDgpPDkJoFq4AL7oRy0iFUELYTbc9Bg@mail.gmail.com>
 <20240127150726.3c9150c7@jic23-huawei> <dbf75dfff3ac2d03d198de918a6c525f7b5266c6.camel@gmail.com>
In-Reply-To: <dbf75dfff3ac2d03d198de918a6c525f7b5266c6.camel@gmail.com>
From: Saravana Kannan <saravanak@google.com>
Date: Mon, 29 Jan 2024 14:33:03 -0800
Message-ID: <CAGETcx-_FbMuisXb5aw40RxgnMT8xTOaq2FOmTo-twY09EV1sQ@mail.gmail.com>
Subject: Re: [PATCH v7 1/9] of: property: fix typo in io-channels
To: =?UTF-8?B?TnVubyBTw6E=?= <noname.nuno@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>, nuno.sa@analog.com, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Frank Rowand <frowand.list@gmail.com>, Olivier Moysan <olivier.moysan@foss.st.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 29, 2024 at 12:15=E2=80=AFAM Nuno S=C3=A1 <noname.nuno@gmail.co=
m> wrote:
>
> On Sat, 2024-01-27 at 15:07 +0000, Jonathan Cameron wrote:
> > On Wed, 24 Jan 2024 19:14:35 -0800
> > Saravana Kannan <saravanak@google.com> wrote:
> >
> > > On Tue, Jan 23, 2024 at 7:14=E2=80=AFAM Nuno Sa via B4 Relay
> > > <devnull+nuno.sa.analog.com@kernel.org> wrote:
> > > >
> > > > From: Nuno Sa <nuno.sa@analog.com>
> > > >
> > > > The property is io-channels and not io-channel. This was effectivel=
y
> > > > preventing the devlink creation.
> >
> > I'm a bit lost on the devlink side of things. Is this something with
> > effects on existing drivers before this patch set, or is it only causin=
g
> > real problems with the changes in here?
> >
> > i.e. Should we mark it for stable and rush it in as a fix, or can it wa=
it
> > for the rest of the set?
> >
>
> I guess you already figured this out? Anyways, this is a real fix that wa=
s
> affecting any consumer using io-channels (so nothing to do with the curre=
nt
> series). Since the there was a typo, no fw_links were being created.
>
> I stated in the cover why I included this. Just to make the addition of i=
o-
> backends later on easier. But if Rob prefers (or you), I can just send th=
is
> standalone patch to the devicetree list.

I think you should send this to Rob directly as a DT fix. I already
gave you a Reviewed-by too. So it should land quickly.

This is a real bug that we want to fix as soon as we can. And your
series might take a bit longer to land.

-Saravana


Return-Path: <devicetree+bounces-129733-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DEAA89ECAC1
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 11:58:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 34FF7169C40
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 10:58:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 098AE209660;
	Wed, 11 Dec 2024 10:58:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="tEI+Eomk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37129208986
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 10:58:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733914682; cv=none; b=GpTxxXxgVwA0PP1iCpvIo9T1khpWbzj1yZB3BV/VWdpUkB4FZ4zxB9mTE36gFRGxM656CRwh3Q5HS8Ln2Db3o4gSobXhOgkbmaLEkaJDaVySOqQk+w15KAGuAPHThiY6gxaYQqj1VuN6SnrnuUn2Dwcq/MGLtkjAGjhUAmeczgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733914682; c=relaxed/simple;
	bh=avf3tUXOuYRSKETT3gs06EPn1ESwA+EPARe+dlRGr1Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=o6d08IgcdSwIohuuP6Nt3+GgF//VqVVDV7Ma2ewwtyXkcryXPimv6pOzZAf0ZpcWu2f+njqnqBjMdY8u8eEBHyZzhOB5ZR1OU3HhEIlO8xZfAyEbX46DbIjIkoguedVYO7dCsTC+VjdymyJCDYnktf7FxHirQMeyPfFaMsX3oFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=tEI+Eomk; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-435f8f29f8aso10529895e9.2
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 02:58:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1733914679; x=1734519479; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o9PtumkMFYAOvEEd8+H2rccuyHQFzgSMwrAW2ht91xU=;
        b=tEI+Eomk3yZRfly493gKnYlsts4AE/ZSDEjokgV8AkdytdkGeUAD5RVDmGuU9gvnZJ
         EX6XtkiPq6uE7KN6nAhPlNcFsOiRmuDfYxyGuLFI/iC5VdumP/J2sZo1FZUVywE4BINk
         JFrZHwXpaRYgsEcfAqXtL64CB9ESIUHis0qPsmQ8jGXK0lwoG9xOWTW7WgEr+1WTALte
         oNNVYTu44UTo8J0BgqYcJwwlI8VXaK2mXCD3EZTjtNfy/j28TPMqvUjlOyv1mpUJxGFv
         k9U9/VBvFdrZG7EAhZo0cmTk6VTYA3C5IJSiYaXdD89LGvv18wbk4cSUjLRPVDxmJv1c
         lhUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733914679; x=1734519479;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o9PtumkMFYAOvEEd8+H2rccuyHQFzgSMwrAW2ht91xU=;
        b=rvwEeZPddtfP0HMGAWd3c9719kJiXnsLefzHX9hu4fSaxaxbzMI+Z6aLDQF5PmSfAv
         AsQCfjSjzOMZn97wwh4IV0944r6MOoL5L3zQwPvQ8SdD2iu7BiWf/I5+SLZEnSrsx6df
         NQxaUdReoZ75ygteXyEDuCSy4QVj0jI0htsGWrTOUR/izDDt2z3ZFwuP1HuM+JiuAHLU
         RiqJdmwP11VlQVbyPIGhXOjKU6qrquYL+VU9DJF5AoNN/5G4HAQUKyHnk0usDQCufkYe
         hnTOfS3Z69xravoPnjbZoMFTrF/mqLwV9AwBhA9yvP+9bMqlH9ByrftmUXg4gI6jZQSj
         ZP2g==
X-Forwarded-Encrypted: i=1; AJvYcCULdPwMvKLv9XrDcdkUBWHtnMGuqVHg5mQD5dsJgD/BIrpKlZ6FcXWulKXJGu87SAC7CdICn2togX3K@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+ascAAYnV1/grI3+uhBrKrbLHjLX3LRuyf4oUAX/j4SoLPQse
	XafhgidfKWOU6sqmeBJJXz4w36vw3IuXY/qCixIPjVNa5AqUVUx1GAYqrbR3MriYVGLj6kT+3DF
	dTL8qZQsofZwNVqQTJZtLiIT3DdOLyFW0wPkr
X-Gm-Gg: ASbGncuvyYRPNv/s7W2ck2z2O21SjwYxjqJcNe57c+8iUvF8imPeeF2o0B98ZvPvGVd
	itAL0lPZIzgGgNIeeCpLqMoXkqQb3Zu0tQFU65GbEGbzXoPFJJTxH2TG5b3AVLSfUZQ==
X-Google-Smtp-Source: AGHT+IEo1dBS36E4Exb3soYdCQkI9XhgNGcMH5O/gbeJ4gRSazPIpyMzj5iXmoR3+umlkKVaSTzxPHrFrJGOjnVnbqw=
X-Received: by 2002:a05:6000:1f81:b0:385:e3b8:f331 with SMTP id
 ffacd0b85a97d-3864ce97173mr1517915f8f.14.1733914679348; Wed, 11 Dec 2024
 02:57:59 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241210224947.23804-7-dakr@kernel.org> <20241211104742.533392-1-benoit@dugarreau.fr>
In-Reply-To: <20241211104742.533392-1-benoit@dugarreau.fr>
From: Alice Ryhl <aliceryhl@google.com>
Date: Wed, 11 Dec 2024 11:57:47 +0100
Message-ID: <CAH5fLgg3QXiJFvfEE63kcxQ6=ZRE38CViZ0E6=Xec6a1+njbWw@mail.gmail.com>
Subject: Re: [PATCH v5 06/16] rust: add `Revocable` type
To: =?UTF-8?Q?Beno=C3=AEt_du_Garreau?= <benoit@dugarreau.fr>
Cc: Danilo Krummrich <dakr@kernel.org>, gregkh@linuxfoundation.org, rafael@kernel.org, 
	bhelgaas@google.com, ojeda@kernel.org, alex.gaynor@gmail.com, 
	boqun.feng@gmail.com, gary@garyguo.net, bjorn3_gh@protonmail.com, 
	benno.lossin@proton.me, tmgross@umich.edu, a.hindborg@samsung.com, 
	airlied@gmail.com, fujita.tomonori@gmail.com, lina@asahilina.net, 
	pstanner@redhat.com, ajanulgu@redhat.com, lyude@redhat.com, robh@kernel.org, 
	daniel.almeida@collabora.com, saravanak@google.com, dirk.behme@de.bosch.com, 
	j@jannau.net, fabien.parent@linaro.org, chrisi.schrefl@gmail.com, 
	rust-for-linux@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	Wedson Almeida Filho <wedsonaf@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 11, 2024 at 11:48=E2=80=AFAM Beno=C3=AEt du Garreau <benoit@dug=
arreau.fr> wrote:
>
> On Tue, 10 Dec 2024 23:46:33 +0100 Danilo Krummrich <dakr@kernel.org> wro=
te:
> > +/// A guard that allows access to a revocable object and keeps it aliv=
e.
> > +///
> > +/// CPUs may not sleep while holding on to [`RevocableGuard`] because =
it's in atomic context
> > +/// holding the RCU read-side lock.
> > +///
> > +/// # Invariants
> > +///
> > +/// The RCU read-side lock is held while the guard is alive.
> > +pub struct RevocableGuard<'a, T> {
> > +    data_ref: *const T,
> > +    _rcu_guard: rcu::Guard,
> > +    _p: PhantomData<&'a ()>,
> > +}
>
> Shouldn't this type hold a `&'a T` directly instead of a raw pointer ?

No, because the value might get destroyed before the end of the
lifetime 'a. It's not legal to use references for containers that
might free or otherwise invalidate the referent in their destructor.

That said, the PhantomData field should probably be `&'a T`. It
doesn't actually change anything, but it carries the right intent.

Alice


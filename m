Return-Path: <devicetree+bounces-117480-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B475B9B682A
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 16:43:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D262B1C214D1
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 15:43:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A0CA213ED4;
	Wed, 30 Oct 2024 15:43:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="vZLoO8ZV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F17F213127
	for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 15:43:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730303002; cv=none; b=a1/nQ4u74SpyJ5QaGePcgrixRLG4hZ3YVUzl7WIK1r7iTehukfXLFbRb7lFD8fxzwC91aOS4xexT4ENANuoYtqznQQ0xBqlglk+4h2jzV1MxwBRWEdtI7RjCmZmwa12SN+0VIo71uCXX9NTWTyCvHFOyXAKTqEW9Wia4V9G/6bY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730303002; c=relaxed/simple;
	bh=oql6ZPLoUgn02Fh55NUNwwb0KwLe/Of7ONbvojTqFQo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sFNPdrObFT4P//Ewbn97Wzd6oycHAz80ldsMree5gdTs1/HYGTppXYgrxRccX8H3vFbaRZyLwCLMy1cqMRUXC4XIo0hv9ZcL/E+stXGs7J9AmhO6Jp28qFyRsQpe6y7zaT5IXkEGhV3fwouVsZ960sfiXb7N86MkeRDTzcpgaHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=vZLoO8ZV; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-37d6ff1cbe1so10029f8f.3
        for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 08:43:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1730302997; x=1730907797; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PRNVR9q+A72wfr6nUUTOiTdZMqTfsk4EV6uOVMZIZcM=;
        b=vZLoO8ZVGwOWQpKgUfuVCo4iHB8mcEV9k9Q6KBKvvGVTngv9c5sxX2ojTWVH3pdQrF
         YeR/UBl0Ve3u7oBnLzvE6IlZ5tl2ENsYjq7NqFWehO83J6POpkNSkBJkdU4UZGQwWQIJ
         DIohbgN0Vf9sjRubqj7p1aIeGfQyj5QdUPQsR5WiV6N00LU6oHgDbUuL2vQ6qC1cQTeE
         mXqN4j4AB0raTZ9iifCO0CwXUFyDWHE1thojxZy33FBcr0xFFI4jkSg/ULPoXqQ9tz1W
         ZGaiDR3/4zK8TFm2FuiBOS84/rJ3t9Qpz4FoXnGiK4ewDtAyuHYh9DeLZm18WOpgKJ3y
         +8Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730302997; x=1730907797;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PRNVR9q+A72wfr6nUUTOiTdZMqTfsk4EV6uOVMZIZcM=;
        b=wifyDxdRuTz/xvJsS1IJCkFFQME5TzJGeLrBruxZm6G9rtsKvfLZsXvOiQcUVXAvcx
         TTbJIhO+b/B9ptFgh5TA4gNHlRhpYg+GCm6r46puzYpffrawXELKsSorfoC+/vH6LKBS
         la2bVMXY3EFWnr8yMmjZIMBecE86Dt8j63S1wGpucei/mD4zbJkiOKs1jeX0oM9hHal2
         sRBr7AOl0+eyKKXVc5dI1N9tR5KBR0CcyoslVbuWLr3Iaj4WK0uiFo/KeU5wAtoryf2H
         uctz4jmTM1QVEvEcgOa34MeiG1Jeaz+jmFbscWKuqgi/8ZIpgWDKAXXKd1DORtaN4a/9
         TZjQ==
X-Forwarded-Encrypted: i=1; AJvYcCVxouD3gG63WiTOKtVp3UI/M+QS1i0eHdklC+OHP4/fPQr+fQjy9l+uHhG1bvE+ZsWxDLWnVgHuE+9G@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4ymQRqHyLfDJB4q+g9nddDQyuyyusouepOMhYSCIyclNKgFkz
	dnvWBiImI8K6+0HzExvbfhEnGl+bqPS6oR3mAGedPwwKtmR/csJ7pxuvWP5bCLlX1zibp/g7GiH
	jefH7uj2ij1+0ypCdAE0fsxisGcs3tnY0UMhs
X-Google-Smtp-Source: AGHT+IFypoS/zDMgNd2EUPFH4Fr9MZcxVZlJ6D1ac+TCSJlZLudocklOggyVil05FxmbzoYUJbESQQ+jCK/CFFNM/L0=
X-Received: by 2002:a05:6000:1867:b0:37d:4d80:34ae with SMTP id
 ffacd0b85a97d-381be7adff4mr31281f8f.4.1730302997417; Wed, 30 Oct 2024
 08:43:17 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241025-rust-platform-dev-v1-0-0df8dcf7c20b@kernel.org>
 <20241025-rust-platform-dev-v1-2-0df8dcf7c20b@kernel.org> <CAH5fLgjhiLUYPgTt_Ks+L-zhWaQG5-Yjm-Y3tfh2b2+PzT=bLg@mail.gmail.com>
 <CAL_JsqJWPR-Q=vsxSvD7V9_v=+om5mRuW9yYNqfavVRUwH9JFw@mail.gmail.com>
 <CAH5fLgiXPZqKpWSSNdx-Ww-E9h2tOLcF3_8Y4C_JQ0eU8EMwFw@mail.gmail.com>
 <CANiq72kaidDJ=81+kibMNr9jNxg467HjOm9C_4G7WRvaiddGvg@mail.gmail.com>
 <CAL_Jsq+T6T_3p2C62U3v4aSjm_oc-Ycjxi_ckF0ufh=JJDz=rg@mail.gmail.com>
 <CAH5fLggCDiKUu_dvJZeJr8UD5RvUpqRJbdYKf1F3_MvCdOVK6g@mail.gmail.com> <CAL_JsqL+b-f5K24qTxyA09c_QPeb07s4Hb=s1VqrdksBB4BQ=Q@mail.gmail.com>
In-Reply-To: <CAL_JsqL+b-f5K24qTxyA09c_QPeb07s4Hb=s1VqrdksBB4BQ=Q@mail.gmail.com>
From: Alice Ryhl <aliceryhl@google.com>
Date: Wed, 30 Oct 2024 16:43:04 +0100
Message-ID: <CAH5fLgieTHPPT7LwdbHnZjcLC1NLPKNRJhdrLtPXYJCZpsx9Gg@mail.gmail.com>
Subject: Re: [PATCH RFC 2/3] rust: Add bindings for device properties
To: Rob Herring <robh@kernel.org>
Cc: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Saravana Kannan <saravanak@google.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>, 
	Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, 
	=?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, 
	Benno Lossin <benno.lossin@proton.me>, Andreas Hindborg <a.hindborg@kernel.org>, 
	Trevor Gross <tmgross@umich.edu>, Danilo Krummrich <dakr@kernel.org>, Dirk Behme <dirk.behme@gmail.com>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	rust-for-linux@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 30, 2024 at 3:06=E2=80=AFPM Rob Herring <robh@kernel.org> wrote=
:
>
> On Wed, Oct 30, 2024 at 3:15=E2=80=AFAM Alice Ryhl <aliceryhl@google.com>=
 wrote:
> >
> > On Tue, Oct 29, 2024 at 8:35=E2=80=AFPM Rob Herring <robh@kernel.org> w=
rote:
> > >
> > > On Tue, Oct 29, 2024 at 1:57=E2=80=AFPM Miguel Ojeda
> > > <miguel.ojeda.sandonis@gmail.com> wrote:
> > > >
> > > > On Tue, Oct 29, 2024 at 7:48=E2=80=AFPM Alice Ryhl <aliceryhl@googl=
e.com> wrote:
> > > > >
> > > > > One option is to define a trait for integers:
> > >
> > > Yeah, but that doesn't feel like something I should do here. I imagin=
e
> > > other things might need the same thing. Perhaps the bindings for
> > > readb/readw/readl for example. And essentially the crate:num already
> > > has the trait I need. Shouldn't the kernel mirror that? I recall
> > > seeing some topic of including crates in the kernel?
> >
> > You can design the trait to look similar to traits in external crates.
> > We did that for FromBytes/AsBytes.
> >
> > I assume you're referring to the PrimInt trait [1]? That trait doesn't
> > really let you get rid of the catch-all case, and it's not even
> > unreachable due to the u128 type.
>
> It was num::Integer which seems to be similar.

Abstracting over a set of C functions that matches on the different
integer types seems like it'll be pretty common in the kernel. I think
it's perfectly fine for you to add a trait for that purpose.

> > [1]: https://docs.rs/num-traits/0.2.19/num_traits/int/trait.PrimInt.htm=
l
> >
> > > > +1, one more thing to consider is whether it makes sense to define =
a
> > > > DT-only trait that holds all the types that can be a device propert=
y
> > > > (like `bool` too, not just the `Integer`s).
> > > >
> > > > Then we can avoid e.g. `property_read_bool` and simply do it in `pr=
operty_read`.
> > >
> > > Is there no way to say must have traitA or traitB?
> >
> > No. What should it do if you pass it something that implements both tra=
its?
> >
> > If you want a single function name, you'll need one trait.
>
> I'm not sure I want that actually.
>
> DT boolean is a bit special. A property not present is false.
> Everything else is true. For example, 'prop =3D <0>' or 'prop =3D
> "string"' are both true. I'm moving things in the kernel to be
> stricter so that those cases are errors. I recently introduced
> (of|device)_property_present() for that reason. There's no type
> information stored in DT.  At the DT level, it's all just byte arrays.
> However, we now have all the type information for properties within
> the schema. So eventually, I want to use that to warn on accessing
> properties with the wrong type.
>
> For example, I think I don't want this to work:
>
> if dev.property_read(c_str!("test,i16-array"))? {
>     // do something
> }
>
> But instead have:
>
> if dev.property_present(c_str!("test,i16-array")) {
>     // do something
> }
>
> To actually warn on property_read_bool, I'm going to have to rework
> the underlying C implementation to separate device_property_present
> and device_property_read_bool implementations.

Having bool separate seems fine to me.

Alice


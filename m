Return-Path: <devicetree+bounces-156955-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A690A5E048
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 16:25:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 99490189693E
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 15:25:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AFA9255E23;
	Wed, 12 Mar 2025 15:25:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=proton.me header.i=@proton.me header.b="frPan1h6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-40133.protonmail.ch (mail-40133.protonmail.ch [185.70.40.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE631253355;
	Wed, 12 Mar 2025 15:25:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.40.133
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741793109; cv=none; b=iLoHID9thPfK3w9xaAp3xgX/tbenb1BUELsdYfjKtdaDNfPeTEzXZAE16e/+r1IBqXqk5EFmeKLqjCuMhJ5+s7hFB7o+paO9B7yY0Dy2Hk3Byppw/YihPeoUMgnbSS2I/9FaELCUhXVciJ+extwq5YkCLLOyLVJWHNEHv2SIfmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741793109; c=relaxed/simple;
	bh=DfBHEd0SO4r7NiVGfilpd306yK11/eGsLe574+AnTFE=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=iompNPW+EX/sECr5CDvEQh34dqaUw+VIEofdzoVY5IPW8cQrehAlr9t1E8yV6KizkL4RIc6EajOWuRvFhmxj9OO1jjPpK6VOdJgGiHZJlosg1lgs0QpJMEj4I605Pu0l6BU6Iq/kmBejevNRgmVk0543KKp6Mz6z5CIam1CVGpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=proton.me; spf=pass smtp.mailfrom=proton.me; dkim=pass (2048-bit key) header.d=proton.me header.i=@proton.me header.b=frPan1h6; arc=none smtp.client-ip=185.70.40.133
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=proton.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=proton.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=protonmail; t=1741793105; x=1742052305;
	bh=uVoMgsncNZ81Qs244XhiNiFSVWapFutHM21B/73cujs=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector:List-Unsubscribe:List-Unsubscribe-Post;
	b=frPan1h6YKzC0bqmU90vrOcukl566AIP3m89ASwWziUTdMAfARywXB6xoIg5UvfEN
	 uTRXcdJ+e39oceAAQXFwT1toqQCsPCa0lu5tXgylrivtsfeTW/uBausk1BNWN8xE7e
	 LxGN+w83PewYzTnX++QkpWrxHTv/niZTJQo7rmXUozJejyjRjD6E4jJak6YD/8TkGu
	 Hmb9Y+cRH+osorMUMDEMxGIZ16PyvudJ7XX9ubJzWd+818lcGjffTJk8218pDZ3GRU
	 CXgzzIGbAEuahl8+tyGyQkG0XGwt13MItmEPxE1lg82Ev7wPTS/uvZX1mIjlz3SPqx
	 2121b88MfPw2g==
Date: Wed, 12 Mar 2025 15:25:00 +0000
To: Tamir Duberstein <tamird@gmail.com>
From: Benno Lossin <benno.lossin@proton.me>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <nathan@kernel.org>, Nicolas Schier <nicolas@fjasle.eu>, Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>, Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, =?utf-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>, Danilo Krummrich <dakr@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, Brendan Higgins <brendan.higgins@linux.dev>, David Gow <davidgow@google.com>, Rae Moar <rmoar@google.com>, Bjorn Helgaas <bhelgaas@google.com>, Luis Chamberlain <mcgrof@kernel.org>, Russ Weight <russ.weight@linux.dev>, Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, rust-for-linux@vger.kernel.org, linux-kselftest@vger.kernel.org, kunit-dev@googlegroups.com,
	linux-pci@vger.kernel.org, linux-block@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/5] rust: enable `clippy::ptr_as_ptr` lint
Message-ID: <D8EE4BXJ5NLB.8BBCUV0UXWY5@proton.me>
In-Reply-To: <CAJ-ks9kOLgXrOHucFXHB+DwZEZpZEKhBNmXKh_hB_agrq=2n6g@mail.gmail.com>
References: <20250309-ptr-as-ptr-v2-0-25d60ad922b7@gmail.com> <20250309-ptr-as-ptr-v2-2-25d60ad922b7@gmail.com> <D8ED5UWKL2N1.2JPWVV0297BJ0@proton.me> <CAJ-ks9kOLgXrOHucFXHB+DwZEZpZEKhBNmXKh_hB_agrq=2n6g@mail.gmail.com>
Feedback-ID: 71780778:user:proton
X-Pm-Message-ID: 6dd0142bc1b95eaf185630e5f364e5053d7fe2a5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On Wed Mar 12, 2025 at 4:18 PM CET, Tamir Duberstein wrote:
> On Wed, Mar 12, 2025 at 10:40=E2=80=AFAM Benno Lossin <benno.lossin@proto=
n.me> wrote:
>>
>> On Sun Mar 9, 2025 at 5:00 PM CET, Tamir Duberstein wrote:
>> > In Rust 1.51.0, Clippy introduced the `ptr_as_ptr` lint [1]:
>> >
>> >> Though `as` casts between raw pointers are not terrible,
>> >> `pointer::cast` is safer because it cannot accidentally change the
>> >> pointer's mutability, nor cast the pointer to other types like `usize=
`.
>> >
>> > There are a few classes of changes required:
>> > - Modules generated by bindgen are marked
>> >   `#[allow(clippy::ptr_as_ptr)]`.
>> > - Inferred casts (` as _`) are replaced with `.cast()`.
>> > - Ascribed casts (` as *... T`) are replaced with `.cast::<T>()`.
>> > - Multistep casts from references (` as *const _ as *const T`) are
>> >   replaced with `let x: *const _ =3D &x;` and `.cast()` or `.cast::<T>=
()`
>>
>> Similarly to the other patch, this could be `let x =3D &raw x;`. (but it=
's
>> fine to leave it as-is for now, we can also make that a
>> good-first-issue.)
>
> Yeah, same as the other patch; we can't directly do that here without
> introducing some compiler infra or bumping MSRV.

I think it's fine enabling the feature for this patch (or in a prior
one) if you want to do the work. But someone already took up the issue I
created, so maybe it's best to let them handle it.

---
Cheers,
Benno



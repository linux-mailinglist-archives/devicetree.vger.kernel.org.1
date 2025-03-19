Return-Path: <devicetree+bounces-159008-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 49522A69116
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 15:54:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 78E4E7A2F11
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 14:51:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 626D01DF986;
	Wed, 19 Mar 2025 14:42:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=proton.me header.i=@proton.me header.b="GcDS8OTD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-40133.protonmail.ch (mail-40133.protonmail.ch [185.70.40.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6E2919DF6A;
	Wed, 19 Mar 2025 14:42:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.40.133
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742395334; cv=none; b=RNvTdeVbee6m7EQxQOFN/42luw4LSD1YZIkFpQ3HzgXsJaNi/EyqjWfLspuiHsqf1bG682x4sck4JVmTI6vMfiTrgefCD+2TUaarABTG3H5zmEtEw3HNKtqe7jmdMaZp58P9FpgjKlFWlNa6FWvenVpQb7EYv+S9Eyd6jMbK1yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742395334; c=relaxed/simple;
	bh=bCOft/JhMU8SEKijSQKbTE4qG+J6v26KZ9Z7njGEcfM=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=gic+PODICldgLWkIcQQS6tPfmg5UMLhkg+jMWjxTVcgYdoKy+TkCPL06GoMr0FHEakKcG1w/whZPkUFXuw3rKCjlb7RRbNfDN1j8q0SRHgkqUcvBKhvYAh2jFZIErmTk7/nkTZdGoxdtn58ttwLFi4/8DH9Ljld5yQgQDpoGlAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=proton.me; spf=pass smtp.mailfrom=proton.me; dkim=pass (2048-bit key) header.d=proton.me header.i=@proton.me header.b=GcDS8OTD; arc=none smtp.client-ip=185.70.40.133
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=proton.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=proton.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=jnzritqb25f3dpabhq6q3tlb3i.protonmail; t=1742395329; x=1742654529;
	bh=fKjxqBanJ4UwqwqzsSkDUGmW2J4uGrM8pH9avz1kRVg=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector:List-Unsubscribe:List-Unsubscribe-Post;
	b=GcDS8OTDEF9InoMEGSe19FdGzOCb6kgP3vStM6cGFZGeSxYLN1y0nS+w7HNZQdZdL
	 pOJLwqjKD0biMVP8nkDMq8ZByEBm07bngocavgm6Hzody1/alY3GmAUra2ZAwoInku
	 3KqN+d4Lr8pQ/khEsI5SnC1KkDfEs5kcS/c4z+gd+eK9PwbNhnTlDUYz6wjS8Xh6s9
	 7E1p7+PNMCubDN4f7ExWowPll90FzPq4CtjjlB9kvPfZYMsSGq4pIqXKHmfJ1AjyUQ
	 hTQsKDrpV5uV4vMR7SqMtiDI4+lvbow4PcXMV6GVg20Tp6pPXetGVtndvAYad3QP64
	 4h3tu7Tpt93GA==
Date: Wed, 19 Mar 2025 14:42:03 +0000
To: Tamir Duberstein <tamird@gmail.com>, Alice Ryhl <aliceryhl@google.com>
From: Benno Lossin <benno.lossin@proton.me>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <nathan@kernel.org>, Nicolas Schier <nicolas@fjasle.eu>, Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>, Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, =?utf-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, Andreas Hindborg <a.hindborg@kernel.org>, Trevor Gross <tmgross@umich.edu>, Danilo Krummrich <dakr@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, Brendan Higgins <brendan.higgins@linux.dev>, David Gow <davidgow@google.com>, Rae Moar <rmoar@google.com>, Bjorn Helgaas <bhelgaas@google.com>, Luis Chamberlain <mcgrof@kernel.org>, Russ Weight <russ.weight@linux.dev>, Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, rust-for-linux@vger.kernel.org, linux-kselftest@vger.kernel.org, kunit-dev@googlegroups.com, linux-pci@vger.kernel.org,
	linux-block@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v5 6/6] rust: use strict provenance APIs
Message-ID: <D8KBL9Z0B68N.2Q3MU9UK9YI6G@proton.me>
In-Reply-To: <CAJ-ks9m8r_ABh4ift3wmM_wpbYLo=ZuhUarfLJKQnS7TcGHRdg@mail.gmail.com>
References: <20250317-ptr-as-ptr-v5-0-5b5f21fa230a@gmail.com> <20250317-ptr-as-ptr-v5-6-5b5f21fa230a@gmail.com> <Z9lnIJCcVSza6UVo@google.com> <D8JTC30W0NF6.17SR73Y9I99ZT@proton.me> <Z9q2xpwsNMDzZ2Gp@google.com> <CAJ-ks9m8r_ABh4ift3wmM_wpbYLo=ZuhUarfLJKQnS7TcGHRdg@mail.gmail.com>
Feedback-ID: 71780778:user:proton
X-Pm-Message-ID: dd49ae1b90588e97a7bfa9a9405906359dcc61de
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On Wed Mar 19, 2025 at 3:14 PM CET, Tamir Duberstein wrote:
> On Wed, Mar 19, 2025 at 8:21=E2=80=AFAM Alice Ryhl <aliceryhl@google.com>=
 wrote:
>> On Wed, Mar 19, 2025 at 12:23:44AM +0000, Benno Lossin wrote:
>> > On Tue Mar 18, 2025 at 1:29 PM CET, Alice Ryhl wrote:
>> > > On Mon, Mar 17, 2025 at 10:23:56AM -0400, Tamir Duberstein wrote:
>> > >> @@ -264,7 +266,7 @@ pub fn read<T: FromBytes>(&mut self) -> Result<=
T> {
>> > >>          let res =3D unsafe {
>> > >>              bindings::_copy_from_user(
>> > >>                  out.as_mut_ptr().cast::<c_void>(),
>> > >> -                self.ptr as *const c_void,
>> > >> +                crate::with_exposed_provenance(self.ptr),
>> > >>                  len,
>> > >>              )
>> > >>          };
>> > >
>> > > That's especially true for cases like this. These are userspace poin=
ters
>> > > that are never dereferenced. It's not useful to care about provenanc=
e
>> > > here.
>> >
>> > I agree for this case, but I think we shouldn't be using raw pointers
>> > for this to begin with. I'd think that a newtype wrapping `usize` is a
>> > much better fit. It can then also back the `IoRaw` type. AFAIU user
>> > space pointers don't have provenance, right? (if they do, then we shou=
ld
>> > use this API :)
>>
>> We're doing that to the fullest extent possible already. We only convert
>> them to pointers when calling C FFI functions that take user pointers as
>> a raw pointer.
>>
>> Alice
>
> Personally, I agree with Benno that `as` conversions are a misfeature
> in the language.
>
> I think this patch and the ensuing discussion is making perfect the
> enemy of good, so I'd prefer to drop it and revisit when the
> ergonomics have improved.

I don't think that we need to rush on the rest of the patch series.
Boqun's suggestion is very good and I'm not sure which ergonomics need
to be improved here.

---
Cheers,
Benno



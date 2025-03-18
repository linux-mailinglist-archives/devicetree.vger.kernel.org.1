Return-Path: <devicetree+bounces-158561-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F2367A673E4
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 13:29:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CB9D13ADF75
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 12:29:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8ACCC20C46F;
	Tue, 18 Mar 2025 12:29:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="zrZ7WPLp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f74.google.com (mail-wm1-f74.google.com [209.85.128.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80B232080C7
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 12:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.74
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742300965; cv=none; b=mIC4L3aYXTrGnCj5T7JRDQ/BY59EWnxqb4sxpWO6QbKfUHO5EOD+eYegtsqA17xNTIs5nk/bk6aslCawaqTxq7/zRu09s473iAJ8iTemHDoz77PsfaVHrImZLISUJMFZnDvBD1mf+nPFmOZFpKCKWy6gFZ8zBmwVMtPCYEB76Pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742300965; c=relaxed/simple;
	bh=uZRIezSswVRQdoQoNwW4Q2XSahT1LKLGtDiBt3hrg0o=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=nH7B4c0MTVQoavGjnFINp05RN4Bndrm40qEv7RoAmSNfBAcxt0gOG3hj+FAGMmrSogIYjJ5nIjrFfcUkxbHfwKjPI6zq8RyH2DoThBeEgANoeTYQkt4zQxCFc5RgRvL6Ee0UNItuKpBX2GqJ/bYSILoixbVU8RpUW6iAJfZE0C8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--aliceryhl.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=zrZ7WPLp; arc=none smtp.client-ip=209.85.128.74
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--aliceryhl.bounces.google.com
Received: by mail-wm1-f74.google.com with SMTP id 5b1f17b1804b1-43d0830c3f7so28110295e9.2
        for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 05:29:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1742300962; x=1742905762; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=/4uc8oPSchxzVAiGTdez6IXx9stCzB5Vsutmi4LBJv0=;
        b=zrZ7WPLprDfFC8OnWq1nuAuLdF1rZ/sbdlPk2AZSSfhBgH5s9j1ppfj3rYyyZm+vEm
         oc94VmJ5XQ15KMR5hxuciuU/Rz4Qc1ThgEJNgAB5gJx/aTWW7ake86GJr12Emz/BBdHd
         RG1zl3V7T9NI9dPw9j3RZtsKHxdDgFtwvw40ksa2x2mWtqnA2OTd65TjqOij71K/s1MB
         HqL+w7t+levlmsuLI/BIqHwHqFOrUdj2lJsTg3nn2V60pkm51o/0Vh/cGBqq3vsOTfmx
         xlFswVwBCMh9PhIqarCLGc5QKgq/Z1DeHoM1h4rGd0FeKX8QnSNWN6F6lIs4S74EPghY
         Bftw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742300962; x=1742905762;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/4uc8oPSchxzVAiGTdez6IXx9stCzB5Vsutmi4LBJv0=;
        b=QGMEMHHTl/jm5Q2UIjrQB8K2ZJiJ6OJuA3HvCti3Av+0/1V+RkjEu7X1wBa/Ss00On
         UTIUianOyABZoWN3j9wJzGJOUOWbUU7wyHw4KMGJwWjOHBgv+kGi9EWTLUXf58vZMl7e
         jVSHdG9AxdIIt8p1TZ3A2y0rz9HowSpDTgGNwbUrb0R6CylnU1S7KsADT0LMaYRP8Yjr
         s2+fZ6ZG46UQDpU2G/6JFZgohI9NqCZZq30vZd79r8x37iyIf8RHG9+GkK8U+MAJLMsU
         NqmBqO2Ux6vSSOObdEjMjTZ050K0L3qY+45TQmpiOlJdKP9Bu7b+w2JRDLexdgEiE14p
         vygA==
X-Forwarded-Encrypted: i=1; AJvYcCWMGYvq/3AaRvoimsajDcUZ4a0QO4/3nGuPYvjZbW0EI41TqVesr+RL1mYYm1iQIUBMxtA6gyQjNaw7@vger.kernel.org
X-Gm-Message-State: AOJu0YznSewkvkJ9ccMNQqIfevT8zUjCpzFWoUr3LuSOg+wcvP+G8f/0
	q56UKh6oCGqDyakImM9IYqXySRiIWPXz5wvjddVX/EwswCFMggB63zcVZ24ZWJ/0Mo0XRk164pF
	V2hr5CaRGWhnKdw==
X-Google-Smtp-Source: AGHT+IHTdWcjIEfhg6CLJJR2Oh32b985bMj+lx8iegeOAnBxJWcU7FmV4nt7+fy40gQUf7LkXWpBlfKNqoAPp/E=
X-Received: from wmbep22.prod.google.com ([2002:a05:600c:8416:b0:43b:c9cc:b9b3])
 (user=aliceryhl job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:600c:490a:b0:43c:f64c:447f with SMTP id 5b1f17b1804b1-43d3ca66b73mr14926245e9.29.1742300961982;
 Tue, 18 Mar 2025 05:29:21 -0700 (PDT)
Date: Tue, 18 Mar 2025 12:29:20 +0000
In-Reply-To: <20250317-ptr-as-ptr-v5-6-5b5f21fa230a@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20250317-ptr-as-ptr-v5-0-5b5f21fa230a@gmail.com> <20250317-ptr-as-ptr-v5-6-5b5f21fa230a@gmail.com>
Message-ID: <Z9lnIJCcVSza6UVo@google.com>
Subject: Re: [PATCH v5 6/6] rust: use strict provenance APIs
From: Alice Ryhl <aliceryhl@google.com>
To: Tamir Duberstein <tamird@gmail.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nicolas Schier <nicolas@fjasle.eu>, Miguel Ojeda <ojeda@kernel.org>, 
	Alex Gaynor <alex.gaynor@gmail.com>, Boqun Feng <boqun.feng@gmail.com>, 
	Gary Guo <gary@garyguo.net>, 
	"=?utf-8?B?QmrDtnJu?= Roy Baron" <bjorn3_gh@protonmail.com>, Benno Lossin <benno.lossin@proton.me>, 
	Andreas Hindborg <a.hindborg@kernel.org>, Trevor Gross <tmgross@umich.edu>, 
	Danilo Krummrich <dakr@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Brendan Higgins <brendan.higgins@linux.dev>, 
	David Gow <davidgow@google.com>, Rae Moar <rmoar@google.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Luis Chamberlain <mcgrof@kernel.org>, 
	Russ Weight <russ.weight@linux.dev>, Rob Herring <robh@kernel.org>, 
	Saravana Kannan <saravanak@google.com>, linux-kbuild@vger.kernel.org, 
	linux-kernel@vger.kernel.org, rust-for-linux@vger.kernel.org, 
	linux-kselftest@vger.kernel.org, kunit-dev@googlegroups.com, 
	linux-pci@vger.kernel.org, linux-block@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="utf-8"

On Mon, Mar 17, 2025 at 10:23:56AM -0400, Tamir Duberstein wrote:
> Throughout the tree, use the strict provenance APIs stabilized in Rust
> 1.84.0[1]. Retain backwards-compatibility by introducing forwarding
> functions at the `kernel` crate root along with polyfills for rustc <
> 1.84.0.
> 
> Use `#[allow(clippy::incompatible_msrv)]` to avoid warnings on rustc <
> 1.84.0 as our MSRV is 1.78.0.
> 
> In the `kernel` crate, enable the strict provenance lints on rustc >=
> 1.84.0; do this in `lib.rs` rather than `Makefile` to avoid introducing
> compiler flags that are dependent on the rustc version in use.
> 
> Link: https://blog.rust-lang.org/2025/01/09/Rust-1.84.0.html#strict-provenance-apis [1]
> Suggested-by: Benno Lossin <benno.lossin@proton.me>
> Link: https://lore.kernel.org/all/D8EIXDMRXMJP.36TFCGWZBRS3Y@proton.me/
> Signed-off-by: Tamir Duberstein <tamird@gmail.com>

I'm not convinced that the pros of this change outweigh the cons. I
think this is going to be too confusing for the C developers who look at
this code.

> diff --git a/rust/kernel/uaccess.rs b/rust/kernel/uaccess.rs
> index 719b0a48ff55..96393bcf6bd7 100644
> --- a/rust/kernel/uaccess.rs
> +++ b/rust/kernel/uaccess.rs
> @@ -226,7 +226,9 @@ pub fn read_raw(&mut self, out: &mut [MaybeUninit<u8>]) -> Result {
>          }
>          // SAFETY: `out_ptr` points into a mutable slice of length `len`, so we may write
>          // that many bytes to it.
> -        let res = unsafe { bindings::copy_from_user(out_ptr, self.ptr as *const c_void, len) };
> +        let res = unsafe {
> +            bindings::copy_from_user(out_ptr, crate::with_exposed_provenance(self.ptr), len)
> +        };
>          if res != 0 {
>              return Err(EFAULT);
>          }
> @@ -264,7 +266,7 @@ pub fn read<T: FromBytes>(&mut self) -> Result<T> {
>          let res = unsafe {
>              bindings::_copy_from_user(
>                  out.as_mut_ptr().cast::<c_void>(),
> -                self.ptr as *const c_void,
> +                crate::with_exposed_provenance(self.ptr),
>                  len,
>              )
>          };

That's especially true for cases like this. These are userspace pointers
that are never dereferenced. It's not useful to care about provenance
here.

Alice


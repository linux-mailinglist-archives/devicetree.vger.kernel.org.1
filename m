Return-Path: <devicetree+bounces-128002-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F40269E6FE4
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 15:13:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CE729169958
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 14:13:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B1CF207E0D;
	Fri,  6 Dec 2024 14:13:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="lMJt2KLF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39AA02E859
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 14:13:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733494409; cv=none; b=fXOFdiH37koclrzY4b4EjRPI4auvYozhNSTkQqBFUIMu6912PHGZ5AfNI86jV/8tGHw86nGhFiZsXqBjsiQ9xaGU3yDmYQ9d1+brvb+lSzEJ9hrf2ZQOTw2YDYwOzrwondb80WELk2iNeDPsD593v6tYqY5T/t2r2bj3Q1RVQ3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733494409; c=relaxed/simple;
	bh=1DF44BAXCAedUfJU1fvmYW3s55YCLMM/4Pv6fBs7ZVc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=H2S6158oBrjfx1GfOt5seZhzfhmkPqOClg1VJuV+/tTFeIQpC2sTjNprDhcjvQ0Lx7bluAcrdn+CAulu/A0nBohEUTVSySoqWcTQZeeQq4SU91szv0k5eepLbqZznfqzcfvM3ir7ngTmci1VzMZvq4I8f75TM9NauAXtPgBB9ic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=lMJt2KLF; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-434a044dce2so23890875e9.2
        for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 06:13:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1733494406; x=1734099206; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=invAFTZMnZvuIAIS0gW4T2jxGGD8MCPvZg9vdT55zVE=;
        b=lMJt2KLFKDPuiqp29DKcPD7+qYIgWANazhBMqqjxwlbxdhtZYqSamYmL6L7ovrZnGk
         6Em23nR4qSRhzUPA7U1BtTZ/eJu7etisq/arcQwdNC/wHeIgCoK6ojHdoBizJs5EU2ym
         OKIdioKBT0nTOSdlPvtZN98CQXPkUwm4laTdmIuO+epSbFX3a96+c/9DM/4V8VhX4uJI
         FYFIhwsib9wdEEGcAlkRksrcrpv0BrP4UxFBTl9cbUjcxtlUshpKtYzTjO6K6jCnPdHi
         P4vSVXOmeD5KrAOhuom7z+C2IMsP8ImTxOZsJYi58p8RuKYhnYOlWsXuDYf0fI3lOnzB
         BMXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733494406; x=1734099206;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=invAFTZMnZvuIAIS0gW4T2jxGGD8MCPvZg9vdT55zVE=;
        b=OQfILfhcPtZ2K+aJuXpjNsd6caDTuvR70DwRbSqimZrgEFdYQog0fm2JwyTRwQiCjt
         TcHgsYXPSGSnU5cKieK3nle+/H4WqLWoxy8w778Pb96b1sY6Hw91Mbwvj+hjfIvdqbVY
         LoeP1lcfJM9w/bW1GzYRHfcObvrSlPqucu1D3EX6z++NRZTUViy2vG3qMO3Y+8Oew5QT
         LH1brToY9P4S/uKrBHsO5jwQTGhxE7UuLZMHt49fqnvzg6PjWAHp4T+9EAY6qSSeqSZH
         Pokn+2w+fLxewlka8zqx/ByLFu65i1fbtkFlFALvuLkgJavSQc7lEECbXpAZhGh5ddOw
         HCwg==
X-Forwarded-Encrypted: i=1; AJvYcCUt4tIZq0UtzMuXwAarRee5+4di3Ml6XIPdiBEwYlAojBTyLBlHbT/qRQgoUoclkZV9fAAmsaa8fmwb@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/4ZTFXapQVEpKbJGwLbnb2lTWciRZemBt7QWczJE4Ji/iXzJc
	SBdk4YegYj1KPhNDt9FT8MPd7IP8g/iOBNlR5DALBp5zb31SNu4vX3iI7vN1vbj2Ztjrpd29Lzm
	xs9sFK8Pgurl/YBBMigRLmLJ6ua7qKINJXJTu
X-Gm-Gg: ASbGnctL3bNfpdZoRLez9tYbkfpvZzugZ3xOcY5mwZiExAidszrpHcIYPrEkHQaVdHy
	Q1riMS7d3CbIk/kw3LyymUd1/uhMTlOT4
X-Google-Smtp-Source: AGHT+IF75B2Q9PZzE+uP3SRRKyAqlTWeSijFYxXXRaaA7vpUlEcJ9S0YdWujapsIeVT3nm8E9Iep1XrnCeRltZPDi+0=
X-Received: by 2002:a05:600c:3b08:b0:434:9fac:b157 with SMTP id
 5b1f17b1804b1-434ddeb5eddmr33010655e9.13.1733494406426; Fri, 06 Dec 2024
 06:13:26 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241205141533.111830-1-dakr@kernel.org> <20241205141533.111830-7-dakr@kernel.org>
In-Reply-To: <20241205141533.111830-7-dakr@kernel.org>
From: Alice Ryhl <aliceryhl@google.com>
Date: Fri, 6 Dec 2024 15:13:14 +0100
Message-ID: <CAH5fLgg4wxyar_2uPfUJ=Bcc5=SVWOoYWvoC3ieVd9ayakiopQ@mail.gmail.com>
Subject: Re: [PATCH v4 06/13] rust: add `io::{Io, IoRaw}` base types
To: Danilo Krummrich <dakr@kernel.org>
Cc: gregkh@linuxfoundation.org, rafael@kernel.org, bhelgaas@google.com, 
	ojeda@kernel.org, alex.gaynor@gmail.com, boqun.feng@gmail.com, 
	gary@garyguo.net, bjorn3_gh@protonmail.com, benno.lossin@proton.me, 
	tmgross@umich.edu, a.hindborg@samsung.com, airlied@gmail.com, 
	fujita.tomonori@gmail.com, lina@asahilina.net, pstanner@redhat.com, 
	ajanulgu@redhat.com, lyude@redhat.com, robh@kernel.org, 
	daniel.almeida@collabora.com, saravanak@google.com, dirk.behme@de.bosch.com, 
	j@jannau.net, fabien.parent@linaro.org, chrisi.schrefl@gmail.com, 
	rust-for-linux@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 5, 2024 at 3:16=E2=80=AFPM Danilo Krummrich <dakr@kernel.org> w=
rote:
>
> I/O memory is typically either mapped through direct calls to ioremap()
> or subsystem / bus specific ones such as pci_iomap().
>
> Even though subsystem / bus specific functions to map I/O memory are
> based on ioremap() / iounmap() it is not desirable to re-implement them
> in Rust.
>
> Instead, implement a base type for I/O mapped memory, which generically
> provides the corresponding accessors, such as `Io::readb` or
> `Io:try_readb`.
>
> `Io` supports an optional const generic, such that a driver can indicate
> the minimal expected and required size of the mapping at compile time.
> Correspondingly, calls to the 'non-try' accessors, support compile time
> checks of the I/O memory offset to read / write, while the 'try'
> accessors, provide boundary checks on runtime.
>
> `IoRaw` is meant to be embedded into a structure (e.g. pci::Bar or
> io::IoMem) which creates the actual I/O memory mapping and initializes
> `IoRaw` accordingly.
>
> To ensure that I/O mapped memory can't out-live the device it may be
> bound to, subsystems must embed the corresponding I/O memory type (e.g.
> pci::Bar) into a `Devres` container, such that it gets revoked once the
> device is unbound.
>
> Signed-off-by: Danilo Krummrich <dakr@kernel.org>

One nit below. With that addressed:

Reviewed-by: Alice Ryhl <aliceryhl@google.com>

> +impl<const SIZE: usize> Io<SIZE> {
> +    /// Converts an `IoRaw` into an `Io` instance, providing the accesso=
rs to the MMIO mapping.
> +    ///
> +    /// # Safety
> +    ///
> +    /// Callers must ensure that `addr` is the start of a valid I/O mapp=
ed memory region of size
> +    /// `maxsize`.
> +    pub unsafe fn from_raw<'a>(raw: &IoRaw<SIZE>) -> &'a Self {

I would use this signature:

pub unsafe fn from_raw(raw: &IoRaw<SIZE>) -> &Self;

Otherwise, you're saying that the returned reference is allowed to
outlive the IoRaw instance, which wouldn't be okay.

Alice


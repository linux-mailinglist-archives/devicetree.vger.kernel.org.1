Return-Path: <devicetree+bounces-116586-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 62D909B352B
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 16:43:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 235E9282A81
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 15:43:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B19E91DE4C6;
	Mon, 28 Oct 2024 15:43:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="mkow0958"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E91B1DE4F1
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 15:43:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730130199; cv=none; b=rFtpcI76JzhttJP6wj2M0WJkQoHgclW5GW3j3hR0IWYMNAj0izAfLApQDo7n8NpRqI/xYEagcZkhJGFFTNGPBx98F9VgQZFc1DQkj9yX6qCryUltViu2tlMWJU+rhvVR61TysjU3FX2gP/UbE2WNvPaA+x+/Up+kWzCP2oLqHsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730130199; c=relaxed/simple;
	bh=IlBBjm72DKIw/XuEiNkxw4eSSDZpdFL6BcX9NUOV1OE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Lu5KnSmXNNPACZD01XHb3RKntP8/5beTkprfZoXkqhSBv+uC9LrNcIySSTqq4UiAEYREJ+jw/lmK+O+JxCCkCmpzxdRvG98AxC/xmcNH+PdNmcUgbuga9zCXJ0JFyYSNFQHpcPuYfti+aYnGipQEEi3DzM5iApv1kRbuuWuvT+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=mkow0958; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-37d49ffaba6so3127618f8f.0
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 08:43:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1730130196; x=1730734996; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vkB8rijGowJHc7ApNinf8Nlc0DfdTCUjppLIF5zI/v4=;
        b=mkow0958oktCIrrTjGyr3hnD0lTpQEUklSATUtyaN240yUEIDZSd27f+Nq+4RPzd/L
         RlysOy/6jKuzeQeftrbrCmCIv0fIpVtd/2kuqbt/1OGc/TxTblPNdyzhBmIHWW+Tgdrw
         gk2Nt2o8mSxNPT78F01LsPCFeCQ9syjfbEhkqkxlv3wFBkbUlj+16xv8srJWeTkfCFmJ
         M87jIn2vF2X6cPSmn0xZYjN078jP4ogjAIwfH7IcG08iNq3+P0s7FreuzQKRyF4d2pq4
         6mp/Ppu11GAt0LuM4v7BX3IGTG+HQlIsLa42OZ97cxOoKM3E5DgDQgJTbHARE3ctJEF6
         q9qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730130196; x=1730734996;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vkB8rijGowJHc7ApNinf8Nlc0DfdTCUjppLIF5zI/v4=;
        b=OFlgjftIpuuVL3iN7yRRVxxpd0O2Lne6EiWILRJ5byrmxqQb/sGEKwN2jMuZrTznVg
         XSdU2+3720gIUr4rhUSd3z++YQyhZTqlHgLrO8F9h+tSZyT3eGBmHcPLaDwjnblzPCBa
         uEu04ONR/vOllou85NgAnSfifyaRW4OjRitlpsjr94iS42csue963iEXERfqQLvRiglN
         qHe0a0INz7Fw+8b1hQma98nDxJ12EoD+R6WfzASLHlNVt1xdXBCVNtlTXc6x64CWWirS
         zjyFy9tectajU8MjuvyN7trxbZwuvubjAAVv2ccAmy8wy72nPHqJTRhM2vJMQofVHE4N
         afCw==
X-Forwarded-Encrypted: i=1; AJvYcCUnuD8cWELLtV3wDDRgR8WfsQHE+jaDMDo+cXTyxwGumthftfmpcYdztjVWuSa1cR5aeJJchdil+iTo@vger.kernel.org
X-Gm-Message-State: AOJu0YyhG+7E1v+UTU+7lbUydRSoLbNkYT1ShupUqyaiUj3G2TSitWTm
	dEcda2ihwI4F0rX4LheDuoJ6Kd153EmLONOZuX0sFru5yxDHCgtkB41Aou/toE/6EbfBhAg7aDV
	p2M6lgge0kLgMfE+uTc3e+4yl2Efusxn48rmJ
X-Google-Smtp-Source: AGHT+IE1qO2/N5gbw3WcB8+fHdcuKTaKJxDuV5TxTMiR2W6fNk9ELaoYbYNgwfXegVSEMJJPvVjvp/JEygeFXanRY/8=
X-Received: by 2002:a5d:4c46:0:b0:378:89be:1825 with SMTP id
 ffacd0b85a97d-380611f55a1mr5497562f8f.49.1730130195719; Mon, 28 Oct 2024
 08:43:15 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241022213221.2383-1-dakr@kernel.org> <20241022213221.2383-10-dakr@kernel.org>
In-Reply-To: <20241022213221.2383-10-dakr@kernel.org>
From: Alice Ryhl <aliceryhl@google.com>
Date: Mon, 28 Oct 2024 16:43:02 +0100
Message-ID: <CAH5fLggFD7pq0WCfMPYTZcFkvrXajPbxTBtkvSeh-N2isT1Ryw@mail.gmail.com>
Subject: Re: [PATCH v3 09/16] rust: add `io::Io` base type
To: Danilo Krummrich <dakr@kernel.org>
Cc: gregkh@linuxfoundation.org, rafael@kernel.org, bhelgaas@google.com, 
	ojeda@kernel.org, alex.gaynor@gmail.com, boqun.feng@gmail.com, 
	gary@garyguo.net, bjorn3_gh@protonmail.com, benno.lossin@proton.me, 
	tmgross@umich.edu, a.hindborg@samsung.com, airlied@gmail.com, 
	fujita.tomonori@gmail.com, lina@asahilina.net, pstanner@redhat.com, 
	ajanulgu@redhat.com, lyude@redhat.com, robh@kernel.org, 
	daniel.almeida@collabora.com, saravanak@google.com, 
	rust-for-linux@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 22, 2024 at 11:33=E2=80=AFPM Danilo Krummrich <dakr@kernel.org>=
 wrote:
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

And using zero works because the user then statically knows that zero
bytes are available ... ?

> `Io` is meant to be embedded into a structure (e.g. pci::Bar or
> io::IoMem) which creates the actual I/O memory mapping and initializes
> `Io` accordingly.
>
> To ensure that I/O mapped memory can't out-live the device it may be
> bound to, subsystems should embedd the corresponding I/O memory type
> (e.g. pci::Bar) into a `Devres` container, such that it gets revoked
> once the device is unbound.

I wonder if `Io` should be a reference type instead. That is:

struct Io<'a, const SIZE: usize> {
    addr: usize,
    maxsize: usize,
    _lifetime: PhantomData<&'a ()>,
}

and then the constructor requires "addr must be valid I/O mapped
memory for maxsize bytes for the duration of 'a". And instead of
embedding it in another struct, the other struct creates an `Io` on
each access?

> Co-developed-by: Philipp Stanner <pstanner@redhat.com>
> Signed-off-by: Philipp Stanner <pstanner@redhat.com>
> Signed-off-by: Danilo Krummrich <dakr@kernel.org>

[...]

> diff --git a/rust/kernel/io.rs b/rust/kernel/io.rs
> new file mode 100644
> index 000000000000..750af938f83e
> --- /dev/null
> +++ b/rust/kernel/io.rs
> @@ -0,0 +1,234 @@
> +// SPDX-License-Identifier: GPL-2.0
> +
> +//! Memory-mapped IO.
> +//!
> +//! C header: [`include/asm-generic/io.h`](srctree/include/asm-generic/i=
o.h)
> +
> +use crate::error::{code::EINVAL, Result};
> +use crate::{bindings, build_assert};
> +
> +/// IO-mapped memory, starting at the base address @addr and spanning @m=
axlen bytes.
> +///
> +/// The creator (usually a subsystem / bus such as PCI) is responsible f=
or creating the
> +/// mapping, performing an additional region request etc.
> +///
> +/// # Invariant
> +///
> +/// `addr` is the start and `maxsize` the length of valid I/O mapped mem=
ory region of size
> +/// `maxsize`.

Do you not also need an invariant that `SIZE <=3D maxsize`?

Alice


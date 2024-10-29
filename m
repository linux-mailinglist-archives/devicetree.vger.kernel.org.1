Return-Path: <devicetree+bounces-117045-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AC639B4B94
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 14:59:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E19D11F23CBA
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 13:59:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DD0020696B;
	Tue, 29 Oct 2024 13:59:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="s/1PBN+O"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA4661EB9E6
	for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 13:59:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730210368; cv=none; b=lf+95Gswij/LGeUIgtZ57BeEZf/IcondA7zdWU3l2tY3MtXpzCadG02nD9T/r7D6pxokfdQtSJiCpxy80VXEnYg4BSHpODAt7dtqEkqA14a4IU0Vaut+1X4yxre4sTKswc/1LjscsVH4Zdo/JukQa7Qr1Du025KGlQEihzZBfew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730210368; c=relaxed/simple;
	bh=HWBADJXnoh2NUNrdZ4R8VuuNYl1bmNxvyx9KhUtUxEA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=C5HieV4mnPY0WH6M21JadOgVCDaJzy1sq+yCK0ePXc2mKO2/rV815a1KdT1BwZ/uSwdtsjlrKvcIjlnQXONktN5H2vNbipdDal74Rtp/oE6b3ZkXPlB5tzdwYwsmHCT9dJ7gkrVykja0H5r8YQvHbkXiif+zDmzf0pMTj/I1/uI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=s/1PBN+O; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-3807dd08cfcso1294987f8f.1
        for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 06:59:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1730210364; x=1730815164; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N0+r5DXauPWMBo80TC003d10oYhw7X04leDKPh0fruY=;
        b=s/1PBN+O4ssMce33ShcFRDVxgnF0bzyFMTPkXBQD+CHNpuVcPuUuWVIeFbSTQ2RKAX
         SzyfVCwgP9Gr6Pg6PF4WkcbBPDkpqXzHpLIp+XaOAZKHslD9yMLSO8njq8gWrrtDp20b
         FJBYhxAFMCe6o1QLNfDMRgaa51ritTL6O1Exth+2EPQ75ob8OOZ39+RqdTFbpYWkXjsv
         ZSMABo/ZMKJ4IFg+lSI2eA6UqEQQr2UI6VrBgva2iMmHufjp57xL/PCEJz4jkhV1HKFE
         5F4IVQrn3D0tk7wvtLul1Cti40IuvA1GDUxOTxTDsuBu0cdPxSfHiCAT3PZ6BvJNCBS0
         I59g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730210364; x=1730815164;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N0+r5DXauPWMBo80TC003d10oYhw7X04leDKPh0fruY=;
        b=g8c2X+O1kB7ZMMH0F5EAT85/vTqp7VsrtjwODd7k6+h0xfSf3tO0T2UD100wI9wuDt
         0a+RmY/dib5g5jtP8YXmmv4o1Svgf+NTz0pQDsY67jk/N2Ad4mIh4QtkRTvgB3hY+LxU
         anDpdkI7tOWaZKfAWEYnirb5aiknYW4kivjFybvC2yKYkWUp4WSdp2A7ZJyJnfcrFCzj
         hnqw3FTaNGO9SRTlTnCEsyEDD21jIp8xNQ0h1KGF+KLH5A2IhA6eeGXcoJvdyNXwpfD5
         iy+xabWQ6x2ymRPG0BF5vQnkW0KUV++Px2OS1sbBwiNlIGe3aQ/eGniB7tGyaUfM951f
         v2QA==
X-Forwarded-Encrypted: i=1; AJvYcCXr/sSwnPJBmL3mHqlmjDl9fkjypOyBGPcP/ct8wotuTbRFRDYJnUQmZGlKqu7IozlHaCINjIFD2/pG@vger.kernel.org
X-Gm-Message-State: AOJu0YxkDASQYvBzq3BBs7Xp5YxML3fVHxclo/MglBhDDmwLoUu/2+5T
	sCQYPgnPcVoBmh+Cyz8nq7sDbIlN1IW/w/fs3hyQs6DeLcYojHKA3e0GB34erUdbM6998knH8aX
	Ifqa9cx7cCyILU1T3gA88AZhbWx0kPMF1CuBY
X-Google-Smtp-Source: AGHT+IHKguE544j9cYCAx/GnN3x2cBIU4yFs+FD0nSAsUtdOZzL/B0VKKdtS72gv2gH4vafJAmdHPLNGHnEY0QP/rKg=
X-Received: by 2002:a5d:56d2:0:b0:37e:f4a1:2b58 with SMTP id
 ffacd0b85a97d-38061172aa9mr11280347f8f.16.1730210364034; Tue, 29 Oct 2024
 06:59:24 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241022213221.2383-1-dakr@kernel.org> <20241022213221.2383-7-dakr@kernel.org>
In-Reply-To: <20241022213221.2383-7-dakr@kernel.org>
From: Alice Ryhl <aliceryhl@google.com>
Date: Tue, 29 Oct 2024 14:59:10 +0100
Message-ID: <CAH5fLgji5SozS2Y+G16pPS3iiKnee-p94xO+uZZykTd_7EBOpQ@mail.gmail.com>
Subject: Re: [PATCH v3 06/16] rust: add rcu abstraction
To: Danilo Krummrich <dakr@kernel.org>
Cc: gregkh@linuxfoundation.org, rafael@kernel.org, bhelgaas@google.com, 
	ojeda@kernel.org, alex.gaynor@gmail.com, boqun.feng@gmail.com, 
	gary@garyguo.net, bjorn3_gh@protonmail.com, benno.lossin@proton.me, 
	tmgross@umich.edu, a.hindborg@samsung.com, airlied@gmail.com, 
	fujita.tomonori@gmail.com, lina@asahilina.net, pstanner@redhat.com, 
	ajanulgu@redhat.com, lyude@redhat.com, robh@kernel.org, 
	daniel.almeida@collabora.com, saravanak@google.com, 
	rust-for-linux@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	Wedson Almeida Filho <wedsonaf@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 22, 2024 at 11:33=E2=80=AFPM Danilo Krummrich <dakr@kernel.org>=
 wrote:
>
> From: Wedson Almeida Filho <wedsonaf@gmail.com>
>
> Add a simple abstraction to guard critical code sections with an rcu
> read lock.
>
> Signed-off-by: Wedson Almeida Filho <wedsonaf@gmail.com>
> Signed-off-by: Danilo Krummrich <dakr@kernel.org>

Reviewed-by: Alice Ryhl <aliceryhl@google.com>

>  rust/helpers/helpers.c  |  1 +
>  rust/helpers/rcu.c      | 13 +++++++++++
>  rust/kernel/sync.rs     |  1 +
>  rust/kernel/sync/rcu.rs | 52 +++++++++++++++++++++++++++++++++++++++++
>  4 files changed, 67 insertions(+)
>  create mode 100644 rust/helpers/rcu.c
>  create mode 100644 rust/kernel/sync/rcu.rs
>
> diff --git a/rust/helpers/helpers.c b/rust/helpers/helpers.c
> index 20a0c69d5cc7..0720debccdd4 100644
> --- a/rust/helpers/helpers.c
> +++ b/rust/helpers/helpers.c
> @@ -16,6 +16,7 @@
>  #include "mutex.c"
>  #include "page.c"
>  #include "rbtree.c"
> +#include "rcu.c"
>  #include "refcount.c"
>  #include "signal.c"
>  #include "slab.c"
> diff --git a/rust/helpers/rcu.c b/rust/helpers/rcu.c
> new file mode 100644
> index 000000000000..f1cec6583513
> --- /dev/null
> +++ b/rust/helpers/rcu.c
> @@ -0,0 +1,13 @@
> +// SPDX-License-Identifier: GPL-2.0
> +
> +#include <linux/rcupdate.h>
> +
> +void rust_helper_rcu_read_lock(void)
> +{
> +       rcu_read_lock();
> +}
> +
> +void rust_helper_rcu_read_unlock(void)
> +{
> +       rcu_read_unlock();
> +}
> diff --git a/rust/kernel/sync.rs b/rust/kernel/sync.rs
> index 0ab20975a3b5..1806767359fe 100644
> --- a/rust/kernel/sync.rs
> +++ b/rust/kernel/sync.rs
> @@ -11,6 +11,7 @@
>  mod condvar;
>  pub mod lock;
>  mod locked_by;
> +pub mod rcu;
>
>  pub use arc::{Arc, ArcBorrow, UniqueArc};
>  pub use condvar::{new_condvar, CondVar, CondVarTimeoutResult};
> diff --git a/rust/kernel/sync/rcu.rs b/rust/kernel/sync/rcu.rs
> new file mode 100644
> index 000000000000..5a35495f69a4
> --- /dev/null
> +++ b/rust/kernel/sync/rcu.rs
> @@ -0,0 +1,52 @@
> +// SPDX-License-Identifier: GPL-2.0
> +
> +//! RCU support.
> +//!
> +//! C header: [`include/linux/rcupdate.h`](srctree/include/linux/rcupdat=
e.h)
> +
> +use crate::bindings;
> +use core::marker::PhantomData;
> +
> +/// Evidence that the RCU read side lock is held on the current thread/C=
PU.
> +///
> +/// The type is explicitly not `Send` because this property is per-threa=
d/CPU.
> +///
> +/// # Invariants
> +///
> +/// The RCU read side lock is actually held while instances of this guar=
d exist.
> +pub struct Guard {
> +    _not_send: PhantomData<*mut ()>,

Once 6.13 is released, you'll want to use NotThreadSafe here instead
of PhantomData. It's landing upstream through vfs.rust.file.

Alice


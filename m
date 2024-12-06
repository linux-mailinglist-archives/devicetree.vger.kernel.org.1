Return-Path: <devicetree+bounces-128008-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F3BD9E72B7
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 16:12:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1080A2876EC
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 15:12:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B94920C485;
	Fri,  6 Dec 2024 15:11:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="sJlsO52r"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A34120B1FE
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 15:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733497915; cv=none; b=s+XRiUQ5Wn9SfIUbAsJcnHYibmpDVrgM4dsvvM0BLXCAlPVyqcSuFzkIqCYjVyvrKuCpRa+arwOeLXI2korOngQpoqiza+0mBmsESzdfaE43pd0KrCu4k1/fNftXgTwCsb6F4MvCJyA64NAlCutQ4f9iarsIizI65Pixp8shHi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733497915; c=relaxed/simple;
	bh=VsbWadzQAUzzRCQY34b2ER7Mb+OWCDREIbu52Y041sI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ktVZ7JQZ9hPGmGxRI/Sedb2D+AaWG3AKh1QWjr6UU9gkQt/gt2kd7+IJpUK40MYZH+109p0XDnI4EBpmtmI9mauqHrwSKWfp6/3FYbjlY9cRCsu1HK7dw2zWSSTMnVsTT1CzvsWVHJfEf2TJjjit9JG/H/g6frDPhpdEUYeuyXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=sJlsO52r; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3862a4b8ec2so507957f8f.1
        for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 07:11:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1733497912; x=1734102712; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fjq2xXvft575dfuEG4uN2IK5uPwMYuH3FIUETvWaj5o=;
        b=sJlsO52rF+VYjJFC9i0O54tYoyJJ9FmY0f7XZKQRyGpIqzrR4MlErb/vKwUa/n/6EM
         N7ILwx2EfV0YFgIoHEketX36tFG36jFqQn1GLNdVjOiWrqGUCodrMJh+8UTjDRhrAwOa
         lvMl50UvN0hNLk+2hBJov1NGBV0suiSHYQwppbCa9EZCoXW126Si6faF6naJiGmA6zen
         O67H3r9h4NYTdbxTcbtrZGOMw6Je8YVBVKpJ1vKxZQKOhQNzXlWKuUpWVTztzjBlXzDn
         Yqyg03bAUMaR2uir5QAgSi3i+qnz+sylEgXHKg0JR3UjIIH45oYsvxbXGsmJvQYOKPGx
         tNHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733497912; x=1734102712;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fjq2xXvft575dfuEG4uN2IK5uPwMYuH3FIUETvWaj5o=;
        b=Mp6TPQhNJSL7ooo/6qz/BD1K5D/fVQC0LbCmojA0sAFrRk/lg4By57GyBwz+vX5m9e
         8pn89PzDkgT2QnIc4dIgwta1N3vsTWy4C5maWUOWbemOuJk5KDCk6dZ5uGSJvo8fZlbD
         +9tlumswyj41y0LKJkT8EqFFXH2RLDrDQgL5jdZEhBu4wKs81nEBm33AaVzDa5mayihN
         lv4UFGdp62G5PGaIn+1/qiAlw6c/zPEAsPeokf5QR0XOoB/lyP2wDvp0MFjareFT3c+n
         VlPJz72ltGhfn1M8da7YtdBm+XMWv18RHqFv9aVnneW3CZ74pYmYJwn/I3Fz1l1kD5Ss
         +PVQ==
X-Forwarded-Encrypted: i=1; AJvYcCUsgcCR6nIPG59B4mWsT8LNNdKjmhoJ3ROGQ+kSU6M1DLDarM9kWxJNGXUus2ClDxhhQUj90a1mbjXP@vger.kernel.org
X-Gm-Message-State: AOJu0YzFruLpe4/pQs6J68GTHdkV/64GGMqMlZ/zA0mb3cdmqtkLlPJ9
	i8ukH4fosIGyd/koH/jDt1UWUULeAN+L2s37vZ35D6v/NaOfdm/1spWViHLL5W0M0CgfFCu1d3K
	waY4g5YSU+xmPeGdNn+MzmYsTriRDcIyY3wtw
X-Gm-Gg: ASbGnct4YNqBbn1CFNYj3JevP5yOKs2v3YglxwizEmn1KU7K5tHXAuHpnvlu4yPO5bv
	C0pi4bR9zpQQHfWaZ0JqlVMh9Tp0MCdxc
X-Google-Smtp-Source: AGHT+IHS8cG/kq81OOAK08T7ktIQybZ1OqiRrLbS+nzho3PteiPlsCy1pSgmnpw1MzFKl9K+xpLd3OKFc7CQmnxLc/I=
X-Received: by 2002:a5d:47a5:0:b0:385:f13c:570a with SMTP id
 ffacd0b85a97d-3862b33b791mr2320443f8f.7.1733497911519; Fri, 06 Dec 2024
 07:11:51 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241205141533.111830-1-dakr@kernel.org> <20241205141533.111830-6-dakr@kernel.org>
In-Reply-To: <20241205141533.111830-6-dakr@kernel.org>
From: Alice Ryhl <aliceryhl@google.com>
Date: Fri, 6 Dec 2024 16:11:39 +0100
Message-ID: <CAH5fLggw8Z74updxX6HtXRnZ7Zk16_ZLCoi-wkj=t2khhoV6mQ@mail.gmail.com>
Subject: Re: [PATCH v4 05/13] rust: add `Revocable` type
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
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	Wedson Almeida Filho <wedsonaf@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 5, 2024 at 3:16=E2=80=AFPM Danilo Krummrich <dakr@kernel.org> w=
rote:
>
> From: Wedson Almeida Filho <wedsonaf@gmail.com>
>
> Revocable allows access to objects to be safely revoked at run time.
>
> This is useful, for example, for resources allocated during device probe;
> when the device is removed, the driver should stop accessing the device
> resources even if another state is kept in memory due to existing
> references (i.e., device context data is ref-counted and has a non-zero
> refcount after removal of the device).
>
> Signed-off-by: Wedson Almeida Filho <wedsonaf@gmail.com>
> Co-developed-by: Danilo Krummrich <dakr@kernel.org>
> Signed-off-by: Danilo Krummrich <dakr@kernel.org>

Overall looks reasonable, but some comments below.

> +impl<T> Revocable<T> {
> +    /// Creates a new revocable instance of the given data.
> +    pub fn new(data: impl PinInit<T>) -> impl PinInit<Self> {
> +        pin_init!(Self {
> +            is_available: AtomicBool::new(true),
> +            // SAFETY: The closure only returns `Ok(())` if `ptr` is ful=
ly initialized; on error
> +            // `ptr` is not partially initialized and does not need to b=
e dropped.
> +            data <- unsafe {
> +                Opaque::try_ffi_init(|ptr: *mut T| {
> +                    init::PinInit::<T, core::convert::Infallible>::__pin=
ned_init(data, ptr)
> +                })

This is pretty awkward ... could we have an Opaque::pin_init that
takes an `impl PinInit instead of using fii_init?

> +            },
> +        })
> +    }
> +
> +    /// Tries to access the revocable wrapped object.
> +    ///
> +    /// Returns `None` if the object has been revoked and is therefore n=
o longer accessible.
> +    ///
> +    /// Returns a guard that gives access to the object otherwise; the o=
bject is guaranteed to
> +    /// remain accessible while the guard is alive. In such cases, calle=
rs are not allowed to sleep
> +    /// because another CPU may be waiting to complete the revocation of=
 this object.
> +    pub fn try_access(&self) -> Option<RevocableGuard<'_, T>> {
> +        let guard =3D rcu::read_lock();
> +        if self.is_available.load(Ordering::Relaxed) {
> +            // Since `self.is_available` is true, data is initialised an=
d has to remain valid
> +            // because the RCU read side lock prevents it from being dro=
pped.
> +            Some(RevocableGuard::new(self.data.get(), guard))
> +        } else {
> +            None
> +        }
> +    }
> +
> +    /// Tries to access the revocable wrapped object.
> +    ///
> +    /// Returns `None` if the object has been revoked and is therefore n=
o longer accessible.
> +    ///
> +    /// Returns a shared reference to the object otherwise; the object i=
s guaranteed to
> +    /// remain accessible while the rcu read side guard is alive. In suc=
h cases, callers are not
> +    /// allowed to sleep because another CPU may be waiting to complete =
the revocation of this
> +    /// object.
> +    pub fn try_access_with_guard<'a>(&'a self, _guard: &'a rcu::Guard) -=
> Option<&'a T> {
> +        if self.is_available.load(Ordering::Relaxed) {
> +            // SAFETY: Since `self.is_available` is true, data is initia=
lised and has to remain
> +            // valid because the RCU read side lock prevents it from bei=
ng dropped.
> +            Some(unsafe { &*self.data.get() })
> +        } else {
> +            None
> +        }
> +    }
> +
> +    /// # Safety
> +    ///
> +    /// Callers must ensure that there are no more concurrent users of t=
he revocable object.
> +    unsafe fn revoke_internal(&self, sync: bool) {

This boolean could be a const generic to enforce that it must be a
compile-time value.

Alice


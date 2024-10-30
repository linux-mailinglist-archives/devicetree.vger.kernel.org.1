Return-Path: <devicetree+bounces-117482-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 99DF99B6858
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 16:51:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CBBC31C21523
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 15:51:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E5D72141AD;
	Wed, 30 Oct 2024 15:50:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="Gyj03+rM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AE80213EDE
	for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 15:50:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730303459; cv=none; b=Kx3rikex/XIn7mggCLojydRwzAGeqKXKm/7+KXOjfyuadGrD+13k7uZQ9OsG4otTh3L7JJJ+CquncBpyIvlQ10fLnLCzbJ+tanb2AqpEPgpGxZ/JgaYNAYjYAyqyL1v/d6mBNO3y0BLa1xF9vHwBarMfMarAk0NiTAcuEeH0ooQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730303459; c=relaxed/simple;
	bh=23QkwfFcqhnnTu6FmefpKd4JdMrTveNk4xSWj2luJoQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=n9M9r8zcQkDPUoM5dK34qNOJnRwFSDv7mc84xQ2A3UgQYxNMT038yVqU3TOCRJiurjWnyrOm5a26325SD0Yku20mV4H6hQk0IjaAMnGToA2y08LkmlDy17JG1EvCF95SxjQbOOjETow68ByeLSHtLMZLBRAtsattyWyP+6rRKdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=Gyj03+rM; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-37d51055097so15101f8f.3
        for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 08:50:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1730303456; x=1730908256; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4tUz2kqXiEvA7bbw4cwgFhsmyYBGaK3uoBn9S65jRVo=;
        b=Gyj03+rMxVw5QRuIVtj1VrmkgdPmOOGjXpq0cfZIX6v5soRoj1HjX7pBQH+khONYkL
         LkEYQFSSi2JJbFlZ8wzJFiaiitloJxBJXyEOxCgyhdo6YCUqvIRZqTvYHxXmBdrBnwke
         fI92uq1a93ZkclaFfRsiiPlLPGWOg+Kku+iVAkuGL0au2OpZjBmzzedh1gNf1BylDJyf
         cZiMrhWJyuAsnHSBK5J3PlvDZuJ1WcSL3C/FIN5RtC2eXWOZG3ptYEibXtbrVxKOYb5X
         ngja6u3Xr0+RWH2fiix3Pobk+Pgm8E4DTHgW2wMPuVsq+Hji+sa5M/8jd+SWta8wG/tw
         vs2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730303456; x=1730908256;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4tUz2kqXiEvA7bbw4cwgFhsmyYBGaK3uoBn9S65jRVo=;
        b=CZvbvfP/nMIhrV5yAAM6OOTsusdn5RofMKEuRTDXCK2F9vUxJ2zA8Q5wg5OlgU5Gll
         PKazrVBvN2tOngRoe2D8DFufdft86wxAJBV6wFzhm+h9X/Jt5zN7dLlzfw6bXdm+xTYr
         2CKy4E2NxD9K8s5Z7x3G2qEAO0OeoLyQTZP9kQrd52MEkrspsxSmSQy/RpRKbl4b80Vz
         1vRJHzIBgp3OfaOfwI/V+E9688fa9AhZEHgxsWE+r0K5OG//Rm52ZwaNzlBQC7iS/gY2
         gAl2O4CzWGsbQ4sIQgcNOIe289PGXFsICD93YDKuGK8vymDlqnPtuhJ4CgRsmROZVJQv
         GT0g==
X-Forwarded-Encrypted: i=1; AJvYcCVK9JOi4krcw8CY/YQGe8QAZLhvC6ZC+YKqzShOEnQsuL5OeJ91shPWarp6wfPfm8fiWXqJOXnez8c1@vger.kernel.org
X-Gm-Message-State: AOJu0YyN6LtSU4ehVGXDkH6Wy/5PgNc5Tu7sQwUIDqWyNhp5w7unGrPt
	oOdGHRXh3ryLQCeWe+kW1N9WQfNMnevP0ds5YI/KOIA3OOdUj+TrY/9Z9rwOp6kCULoXp1L8h3K
	rFSA8TYWLtahC6XfSvDLQAzjW5jKXKc1u/nnJ
X-Google-Smtp-Source: AGHT+IEc4hJ+rtP+KQ/RIg3dPbRWwJKL7gyG+QH18iBOl9mv4RIPLTcwUETKs5bjQ5mrWWVEy9CGfThEOh7YtbUIFX4=
X-Received: by 2002:a5d:564e:0:b0:37d:4e80:516 with SMTP id
 ffacd0b85a97d-38061192318mr11888207f8f.34.1730303455924; Wed, 30 Oct 2024
 08:50:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241022213221.2383-1-dakr@kernel.org> <20241022213221.2383-16-dakr@kernel.org>
In-Reply-To: <20241022213221.2383-16-dakr@kernel.org>
From: Alice Ryhl <aliceryhl@google.com>
Date: Wed, 30 Oct 2024 16:50:43 +0100
Message-ID: <CAH5fLghVDqWiWfi2WKsNi3n=2pR_Hy3ZLwY8q2xfjAvpHuDx=w@mail.gmail.com>
Subject: Re: [PATCH v3 15/16] rust: platform: add basic platform device /
 driver abstractions
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
> +/// Drivers must implement this trait in order to get a platform driver =
registered. Please refer to
> +/// the `Adapter` documentation for an example.
> +pub trait Driver {
> +    /// The type holding information about each device id supported by t=
he driver.
> +    ///
> +    /// TODO: Use associated_type_defaults once stabilized:
> +    ///
> +    /// type IdInfo: 'static =3D ();
> +    type IdInfo: 'static;
> +
> +    /// The table of device ids supported by the driver.
> +    const ID_TABLE: IdTable<Self::IdInfo>;
> +
> +    /// Platform driver probe.
> +    ///
> +    /// Called when a new platform device is added or discovered.
> +    /// Implementers should attempt to initialize the device here.
> +    fn probe(dev: &mut Device, id_info: Option<&Self::IdInfo>) -> Result=
<Pin<KBox<Self>>>;

This forces the user to put their driver data in a KBox, but they
might want to use an Arc instead. You don't actually *need* a KBox -
any ForeignOwnable seems to fit your purposes.

Please see my miscdevice and shrinker patchsets for examples of how
you can extend this to allow any ForeignOwnable.

Alice


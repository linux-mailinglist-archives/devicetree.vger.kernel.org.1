Return-Path: <devicetree+bounces-128012-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E4D239E7405
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 16:27:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 818C01886F48
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 15:25:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E09A20ADF4;
	Fri,  6 Dec 2024 15:25:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="W+Hd4VsO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB4D1465AB
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 15:25:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733498745; cv=none; b=gJ/xiyd/djX4YvLt01Jrmp+HUroMGHbMCNcczIJtLkx5JBGe+UitBSPzRbnY7M4+NZaQwUw5zDi4LlplJknuWWjaljBojeyfrNfIdvGYaHfjxN2mpF0TISLaj+OtvdaEj2JenRkZxJCOH+4493GMohkh6oSusyd+6aN3u9E1bxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733498745; c=relaxed/simple;
	bh=YtRCwn0L0reKz/PCsHk5nYbtcK1nUJk/nFphVP0N18Y=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uzA5XmT3BZKGp6yIt08sONO1K3FFYXlURRsBe2kxVVE9/n+JENnXEFeNO9RKaFx0hBTOzkAfkVKu3WaSDVpo/4CU2lgUjULOMH7ToRpeeaR16iLAzIhCq32ut1PkQDcOfK2Gj54tUB0yOn4KEMBkm+S44gFEmC3qXojEXZ8GzPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=W+Hd4VsO; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-38632b8ae71so65743f8f.0
        for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 07:25:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1733498740; x=1734103540; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sUl66/2q9Es7IH83i2VHQcZCXL2FkKLSft77+kwSp+4=;
        b=W+Hd4VsO8QYMsHWI6lgX0bOf9MvToZO1wmKypyeyzqNlGIU5wPpkE6/mRL3zhqJrEX
         vq1OPjZvD59KBakJvYfEGD0S82DHYSA3L9qblK3VYtrxnkYNkY5bXWudEYxgnDIzKTj7
         y4OwiHR3NL8r8zfFDlZY1WzKXOKjBtSkfcsQ/dlWdjGXghZSJqG4RRkOk+aps7rk18pH
         g0RRAvENYeaMxTsWMTYb4lI5R5oobOaXND/GT4lWv66K/Df3FuAggmcPb5d2V7HcILEQ
         AdbFFPX0y7B0DrF3bCfNQ0T7swqEQrSprGgV2noVfFfXOXnCq+5QIRMOgvbeeymwfqJ9
         iG2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733498740; x=1734103540;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sUl66/2q9Es7IH83i2VHQcZCXL2FkKLSft77+kwSp+4=;
        b=RhcJu3lEnbR8P6KSQ0OE7NkrO/s5YljNSTRij8p45RRSZfnmvDiTgq4xaK/crI0Kjr
         2ynkBB77sPUm1PDR/BknJHjspXH++XP+vcqZXUOA3NnabVCSVnx/dzmgHuuu8P9kgc+1
         OHawHKThwSo9FHYoUt1pbFMUbVz3HItW+YySDvzb79l2z7V3km/fbp0VqBqpSkm7ZYzY
         6Qj8ZPsVcrTygQ4yCvQ8C7nCtx0zEag+AawL2GhRt+bpHyln02yeI01lJtU3xBCnUmJS
         6QaY1Vqndy2z3x+Vj4Ix5J5p0KjSEEg9vbmImDfW57ZABEyhwY5ZVlSu9QRYB573b6IO
         IlNw==
X-Forwarded-Encrypted: i=1; AJvYcCXrG/IvQZFoxRF3w9699C+CWDnwlmDkIYwa6v05d90uovGCbMmQNe3yZ6lRrYEN9gbELe3EK+AZSMkC@vger.kernel.org
X-Gm-Message-State: AOJu0YzViqoE8tbuTnnmz6ZqkIC5jnmBRwFPSeHbvr0XzE9qKdzByKGy
	gAcQap0ff3vtqO7iimaS52SEzh+U/ajQQDmr5xXMkrT6Gru33raIs6ez2gRA18u8SZ9l/RJU3nE
	xlG1+z1oHpO+lhxLHrqWvRlweluqblJo4ebad
X-Gm-Gg: ASbGnctF7jeeTLnag6ynNsZrdGXdWpSzt0rSI4uBhlkAm53MP1R+67GWJjF0U878Svx
	1NMPOUhLF5rrdI8ID7UJ38RYv1f8xVJbb
X-Google-Smtp-Source: AGHT+IFYizkoJZbVBGz6vm2wzIGh1sKlEnG59vyrJhpEUKD4My3ZUK6cpeBmwJvlu/MBEgYOtQCHyJ9kZroLKgAnFK0=
X-Received: by 2002:a05:6000:1886:b0:386:3327:9d07 with SMTP id
 ffacd0b85a97d-38633279daemr57136f8f.54.1733498740410; Fri, 06 Dec 2024
 07:25:40 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241205141533.111830-1-dakr@kernel.org> <20241205141533.111830-9-dakr@kernel.org>
In-Reply-To: <20241205141533.111830-9-dakr@kernel.org>
From: Alice Ryhl <aliceryhl@google.com>
Date: Fri, 6 Dec 2024 16:25:28 +0100
Message-ID: <CAH5fLggWOkut0O+28NVYBSF2CTpHXe9Thb3rhXoRZo5e9zFjzw@mail.gmail.com>
Subject: Re: [PATCH v4 08/13] rust: pci: add basic PCI device / driver abstractions
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
> Implement the basic PCI abstractions required to write a basic PCI
> driver. This includes the following data structures:
>
> The `pci::Driver` trait represents the interface to the driver and
> provides `pci::Driver::probe` for the driver to implement.
>
> The `pci::Device` abstraction represents a `struct pci_dev` and provides
> abstractions for common functions, such as `pci::Device::set_master`.
>
> In order to provide the PCI specific parts to a generic
> `driver::Registration` the `driver::RegistrationOps` trait is implemented
> by `pci::Adapter`.
>
> `pci::DeviceId` implements PCI device IDs based on the generic
> `device_id::RawDevceId` abstraction.
>
> Co-developed-by: FUJITA Tomonori <fujita.tomonori@gmail.com>
> Signed-off-by: FUJITA Tomonori <fujita.tomonori@gmail.com>
> Signed-off-by: Danilo Krummrich <dakr@kernel.org>
> +impl<T: Driver + 'static> Adapter<T> {
> +    extern "C" fn probe_callback(
> +        pdev: *mut bindings::pci_dev,
> +        id: *const bindings::pci_device_id,
> +    ) -> core::ffi::c_int {
> +        // SAFETY: The PCI bus only ever calls the probe callback with a=
 valid pointer to a
> +        // `struct pci_dev`.
> +        let dev =3D unsafe { device::Device::get_device(&mut (*pdev).dev=
) };

It shouldn't be necessary to increment the refcount here.

Also, the mutable reference is illegal because it references a C type
without a Opaque wrapper. Please use the addr_of_mut! macro instead of
a mutable reference.

Alice


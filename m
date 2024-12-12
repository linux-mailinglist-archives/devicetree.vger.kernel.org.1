Return-Path: <devicetree+bounces-130071-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DFE789EDD64
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 03:10:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CC223283037
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 02:10:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58E9913633F;
	Thu, 12 Dec 2024 02:10:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pl423G1j"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FBD95C8F7
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 02:10:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733969439; cv=none; b=fEDoqxT4y4fRNKZxEvF5Mhch/3mkaFVgRiKBZSEwEWJtnvnOZeJngujJJwoS8o6IaevxfcFz3wf5LOaWvEAe+fNZaQZWCG4asjikwJCfyfulUhiWcgUOGNC8cthKl43wK5AqbupS+LUdUfN9aJYn3G5PveqJ1rutglWTyfHinCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733969439; c=relaxed/simple;
	bh=spUtHcPPJbNwPrwL4FiNj6XeBc/EajXKKYFSxtjemLY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=iTcrN6FZefzdhhwfvV1a0Hu8ijjfPqSS7sfxhQJwYUhhN1/OnKtzGMJBJIT+sDeiXhruKtyv70YDkzsLBNSPASUQe5UQCyq1Yk6GOmPNB1OWtQ4UIVp4OSamH+zWRfLziIdQRSieO5YBm6jK00pwX8LqX3p4t+B3oBjhAScZx70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pl423G1j; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4361f796586so799985e9.3
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 18:10:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733969436; x=1734574236; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=scGk+jhmTsDeKJRBFJ2O5IixPKb7txuFEU5Rw3KyI2Q=;
        b=pl423G1j6zsEehsgsROOP8yfF5JyrgAXOfz78YghVzaFY7HRLe0GgkHoZL95elUznG
         pD7RhWwC2cGkS7dXW4Xe2L+GhhRjmEMD0wAnUkakLZ10kB2TCPsZj+K0C5CnElWUFif2
         jo+WCfW6rO8+K6djxw3qOv5zaP+clKHFZ2fbHfwEJmLjlL3a2gyoqbU7mlE6cI8HFVAk
         76Foy7HQqq4B+jabAD1a0grra6tvWzjbBCP/N0EMrmRn5hAto6Liax/5D7/AS0swMgHk
         2FMWMhCdmP2AWZLPnWt7aU+qhRtPtMOzb9nwii91lpCT41i3IVvrWdGB5x3RGkwk5P3w
         cPsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733969436; x=1734574236;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=scGk+jhmTsDeKJRBFJ2O5IixPKb7txuFEU5Rw3KyI2Q=;
        b=WHsY7VKbIm2m9WLGIlFnqsodtWIjLwfJTLz3k9SL8e2Zz67AvM/1xGH9lZMLMpTjMa
         TXIEzT35/y4GPSvqSWT/j37M4D5oBAo3120G285RaKsazBXav+fJUEriDAMtHYs9zB9/
         BKlK/V0NCxvTZ7gEhkcB25WvckVKlQu0zAT99MbRpsSTlhKZ+BiFQiNIJkybtlYr74lo
         bf8dca+vcCFoPUli0UGDYtRZtiUlx8+sUMw2a549r5e5I3AidK4T4ewKIa0v2QWSwmjK
         DYUBT/m+KdjgcTT+b47Hcdsp2DNYTw8EsM18JMql3ow3oFLSuaThHTmJO3CAAZtNYMtD
         DdlQ==
X-Forwarded-Encrypted: i=1; AJvYcCUEiHrBq6649na4OmIJAhZz8BdLK1dHnCZr8vJ/gjkiSebzeTn0xDOTXMT+bgjQNNbDz73KMwpdCQ++@vger.kernel.org
X-Gm-Message-State: AOJu0Yx87H5mReHg1UHT1mlJkv2MuwCCAHx8Yksg6M2psKhBeB1HM0IK
	4TEOpD1TBtzpzeFYKyzRDN8AZomYkKhNoX4UZoeGSM88QHaqOI7isRwlqL2Ovb6ek1pdR4SgARL
	+8hBnZ/4IHwxCeA0f7atto78h0o8DvE3oTc8cZw==
X-Gm-Gg: ASbGncstYxddkRtTS51ueeg/hJU18W5deCpua65eSJDchIHdRAWTuxwL+K/bfcKQo/G
	QOhzRZdfTaVMyJp0bild3pJyYziE1sx+KopvPIjwvbzUe11wjT5BORJzizHWcznph4JKEuA==
X-Google-Smtp-Source: AGHT+IHBx39xZcFgFzsVQ+rnkny559PaBrW3cVqVsjq3DJPY+URL01bH3evGC+t2KLYI/LSoNGMILFwWBC7IgTsoQOA=
X-Received: by 2002:a05:600c:4f11:b0:428:d31:ef25 with SMTP id
 5b1f17b1804b1-4361c3ab1bdmr44897445e9.12.1733969435848; Wed, 11 Dec 2024
 18:10:35 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241210224947.23804-1-dakr@kernel.org> <20241210224947.23804-14-dakr@kernel.org>
In-Reply-To: <20241210224947.23804-14-dakr@kernel.org>
From: Fabien Parent <fabien.parent@linaro.org>
Date: Wed, 11 Dec 2024 18:10:24 -0800
Message-ID: <CAPFo5V+WMxS5joVOJrxr_vaEpo+vdTcfffbpWDe2dtw7kP6rnw@mail.gmail.com>
Subject: Re: [PATCH v5 13/16] rust: driver: implement `Adapter`
To: Danilo Krummrich <dakr@kernel.org>
Cc: gregkh@linuxfoundation.org, rafael@kernel.org, bhelgaas@google.com, 
	ojeda@kernel.org, alex.gaynor@gmail.com, boqun.feng@gmail.com, 
	gary@garyguo.net, bjorn3_gh@protonmail.com, benno.lossin@proton.me, 
	tmgross@umich.edu, a.hindborg@samsung.com, aliceryhl@google.com, 
	airlied@gmail.com, fujita.tomonori@gmail.com, lina@asahilina.net, 
	pstanner@redhat.com, ajanulgu@redhat.com, lyude@redhat.com, robh@kernel.org, 
	daniel.almeida@collabora.com, saravanak@google.com, dirk.behme@de.bosch.com, 
	j@jannau.net, chrisi.schrefl@gmail.com, rust-for-linux@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Danilo,

On Tue, Dec 10, 2024 at 2:51=E2=80=AFPM Danilo Krummrich <dakr@kernel.org> =
wrote:
>
> In order to not duplicate code in bus specific implementations (e.g.
> platform), implement a generic `driver::Adapter` to represent the
> connection of matched drivers and devices.
>
> Bus specific `Adapter` implementations can simply implement this trait
> to inherit generic functionality, such as matching OF or ACPI device IDs
> and ID table entries.
>
> Suggested-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Danilo Krummrich <dakr@kernel.org>
> ---
>  rust/kernel/driver.rs | 59 ++++++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 58 insertions(+), 1 deletion(-)
>
> diff --git a/rust/kernel/driver.rs b/rust/kernel/driver.rs
> index ab0bb46fe2cc..d169899a5da1 100644
> --- a/rust/kernel/driver.rs
> +++ b/rust/kernel/driver.rs
> @@ -6,7 +6,9 @@
>  //! register using the [`Registration`] class.
>
>  use crate::error::{Error, Result};
> -use crate::{init::PinInit, str::CStr, try_pin_init, types::Opaque, ThisM=
odule};
> +use crate::{
> +    device, device_id, init::PinInit, of, str::CStr, try_pin_init, types=
::Opaque, ThisModule,
> +};
>  use core::pin::Pin;
>  use macros::{pin_data, pinned_drop};
>
> @@ -114,3 +116,58 @@ macro_rules! module_driver {
>          }
>      }
>  }
> +
> +/// The bus independent adapter to match a drivers and a devices.
> +///
> +/// This trait should be implemented by the bus specific adapter, which =
represents the connection
> +/// of a device and a driver.
> +///
> +/// It provides bus independent functions for device / driver interactio=
ns.
> +pub trait Adapter {
> +    /// The type holding driver private data about each device id suppor=
ted by the driver.
> +    type IdInfo: 'static;
> +
> +    /// The [`of::IdTable`] of the corresponding driver.
> +    fn of_id_table() -> of::IdTable<Self::IdInfo>;

I think we may want this to return an Option<of::IdTable<Self::IdInfo>>
instead. I don't think we want to force every bus abstraction to have
to implement every possible IdTable that this adapter will support.

For instance if your driver only supports ACPI, it will still be required
to provide an empty OF table because the bus abstraction needs it
for implementing this trait.

> +
> +    /// Returns the driver's private data from the matching entry in the=
 [`of::IdTable`], if any.
> +    ///
> +    /// If this returns `None`, it means there is no match with an entry=
 in the [`of::IdTable`].
> +    #[cfg(CONFIG_OF)]
> +    fn of_id_info(dev: &device::Device) -> Option<&'static Self::IdInfo>=
 {
> +        let table =3D Self::of_id_table();
> +
> +        // SAFETY:
> +        // - `table` has static lifetime, hence it's valid for read,
> +        // - `dev` is guaranteed to be valid while it's alive, and so is=
 `pdev.as_ref().as_raw()`.
> +        let raw_id =3D unsafe { bindings::of_match_device(table.as_ptr()=
, dev.as_raw()) };
> +
> +        if raw_id.is_null() {
> +            None
> +        } else {
> +            // SAFETY: `DeviceId` is a `#[repr(transparent)` wrapper of =
`struct of_device_id` and
> +            // does not add additional invariants, so it's safe to trans=
mute.
> +            let id =3D unsafe { &*raw_id.cast::<of::DeviceId>() };
> +
> +            Some(table.info(<of::DeviceId as device_id::RawDeviceId>::in=
dex(id)))
> +        }
> +    }
> +
> +    #[cfg(not(CONFIG_OF))]
> +    fn of_id_info(_dev: &device::Device) -> Option<&'static Self::IdInfo=
> {
> +        None
> +    }
> +
> +    /// Returns the driver's private data from the matching entry of any=
 of the ID tables, if any.
> +    ///
> +    /// If this returns `None`, it means that there is no match in any o=
f the ID tables directly
> +    /// associated with a [`device::Device`].
> +    fn id_info(dev: &device::Device) -> Option<&'static Self::IdInfo> {
> +        let id =3D Self::of_id_info(dev);
> +        if id.is_some() {
> +            return id;
> +        }
> +
> +        None
> +    }
> +}
> --
> 2.47.0
>


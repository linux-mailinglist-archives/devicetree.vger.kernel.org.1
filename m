Return-Path: <devicetree+bounces-117052-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 52D219B4BEB
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 15:16:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 919AEB2173E
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 14:16:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A792206E8A;
	Tue, 29 Oct 2024 14:16:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="fOJsXV3K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0C86205E14
	for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 14:16:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730211407; cv=none; b=urUcLYTnhTMTUsKU10iBVmje14pIYs6D58tvRDyumtonE4R7C9BGFjqm40vfPJz4vOJE8Pm9mFGiezcEFZal2OP2knYCN4xsX27tncmgwDOiIIZ/zQMIxS6a8mcuUOGV0EiSVc9cDU5d+PvI+51S1wbCCapAY3ks3TttwAvP+g4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730211407; c=relaxed/simple;
	bh=UQEvXpB+gCYw5ekhyUv+qz++Xa7jR5ixcUi6qSQssUs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=I3gMnrjKWfhZJyAYtqseBDlcW+ZznGd3V5g/Xsk6rSp33SFdwuNv3RZC3AKm3vHeKm5aQTI1+4lFeIATVIRMo1A4ZK0ZqzT3jPm8GcA1yj1i+/o23FUPBfne1Bj1s2JOuLsbhMHRnfpFEOgUcSn124fVKYXy2RK5MdRjot9ciw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=fOJsXV3K; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-37d3ecad390so4755064f8f.1
        for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 07:16:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1730211402; x=1730816202; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EF49F4TL2bGDfzZ1W3gqbFJy0q9VsnFcF7FddQtLUFA=;
        b=fOJsXV3KiV1EQWRPkZtRhli4B3eylGwjYL+PHeY6CSQq0rV39F9PMMjuopYHC8B4yM
         vDX5BDsSIuUcN7mHl1KbKm8CQQ2y2dWtwdcfZCuCccDDudFYwawpkN+hWxP48i0g2Qw7
         k97qGcgdZCjqcHZf00Y7mYKaprLwpLoiJS9vi0BVZ65iGyz/h6oRdc15VL8nBmqDkUgx
         XTV3HyvK2dMpqtB0qKUOQ1AysZH02w0RCo0nn2BweuPjDZYafugp6zDbWyoj7wXbAvde
         VfUIsvu7x/okB/JQ2yxNj2IS0HqgeIg0USXnkhYTbB9LYuH2ArRqtmkIKGjlfrd5ULjN
         M5wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730211402; x=1730816202;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EF49F4TL2bGDfzZ1W3gqbFJy0q9VsnFcF7FddQtLUFA=;
        b=FfnQDBnY5JIpRg67z74ysXjhp49wlifMQBhGWLbwcbO3C995IAyRaZdLGDXPfefCI8
         4qQzvIbz0f7wNNIVRF4PP79AmXYQF/qMLiNnwZ+p3Cz9cZSOm1dINowOPhfwzzIfxXIg
         pAdb89uNBocJ42encvgLuOJ4cm9RcgmBn2lzl64NwKZY8FFBPUxKMNDak92IIO+elmXY
         SXY1FGeJf7Bzs+vO+7VxskVTSqBd6wYkTFFmSaqYRUtkUJWnbw2qfe4TuALqIndBlblH
         dRfHlyDkwEk80dZ3aVGCGt+olmmA6oS8azJxitqzG0isQvtxv+413WDjyTSHDNnviPdv
         X5pQ==
X-Forwarded-Encrypted: i=1; AJvYcCVhirtlQc41xxIO26ItIUAcL054huspOLKE2BJyvkTRgOamK68HR00HX9GKP59i2pJuHQC6lEvX89nQ@vger.kernel.org
X-Gm-Message-State: AOJu0YzapSrfgZMJwc0bNVfkfygL6MrTFyagERBMfWlooNFjNXHFPfxF
	M/Jq1wppX2yFtm8mK6GhcsBPvjZGQ0b/DSkpIBVeJMfxmjMvm7nHKW2k/V3Hb9V2CJgcnOUm2LP
	IAGYFsDlzK0iP5fQuZorXDLXdtCqzCXoFXPp4
X-Google-Smtp-Source: AGHT+IEfbXY1+De9GOc7DR30d21LlHb1sNgtBauu2PL1dMzu0MewQT6NNFZLprHgHhJf205GTElgQn6gFzczzSX0Ak4=
X-Received: by 2002:a05:6000:acb:b0:37d:3b31:7a9d with SMTP id
 ffacd0b85a97d-38162909bdcmr2015705f8f.23.1730211402215; Tue, 29 Oct 2024
 07:16:42 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241025-rust-platform-dev-v1-0-0df8dcf7c20b@kernel.org> <20241025-rust-platform-dev-v1-2-0df8dcf7c20b@kernel.org>
In-Reply-To: <20241025-rust-platform-dev-v1-2-0df8dcf7c20b@kernel.org>
From: Alice Ryhl <aliceryhl@google.com>
Date: Tue, 29 Oct 2024 15:16:29 +0100
Message-ID: <CAH5fLgjhiLUYPgTt_Ks+L-zhWaQG5-Yjm-Y3tfh2b2+PzT=bLg@mail.gmail.com>
Subject: Re: [PATCH RFC 2/3] rust: Add bindings for device properties
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Saravana Kannan <saravanak@google.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, 
	Alex Gaynor <alex.gaynor@gmail.com>, Boqun Feng <boqun.feng@gmail.com>, 
	Gary Guo <gary@garyguo.net>, =?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, 
	Benno Lossin <benno.lossin@proton.me>, Andreas Hindborg <a.hindborg@kernel.org>, 
	Trevor Gross <tmgross@umich.edu>, Danilo Krummrich <dakr@kernel.org>, Dirk Behme <dirk.behme@gmail.com>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	rust-for-linux@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 25, 2024 at 11:06=E2=80=AFPM Rob Herring (Arm) <robh@kernel.org=
> wrote:
>
> The device property API is a firmware agnostic API for reading
> properties from firmware (DT/ACPI) devices nodes and swnodes.
>
> While the C API takes a pointer to a caller allocated variable/buffer,
> the rust API is designed to return a value and can be used in struct
> initialization. Rust generics are also utilized to support different
> sizes of properties (e.g. u8, u16, u32).
>
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---
> Not sure if we need the KVec variant, but I kept it as that was my first
> pass attempt. Most callers are filling in some value in a driver data
> struct. Sometimes the number of elements is not known, so the caller
> calls to get the array size, allocs the correct size buffer, and then
> reads the property again to fill in the buffer.
>
> I have not implemented a wrapper for device_property_read_string(_array)
> because that API is problematic for dynamic DT nodes. The API just
> returns pointer(s) into the raw DT data. We probably need to return a
> copy of the string(s) instead for rust.
>
> After property accessors, next up is child node accessors/iterators.
> ---
>  rust/bindings/bindings_helper.h |   1 +
>  rust/kernel/device.rs           | 145 ++++++++++++++++++++++++++++++++++=
+++++-
>  2 files changed, 145 insertions(+), 1 deletion(-)
>
> diff --git a/rust/bindings/bindings_helper.h b/rust/bindings/bindings_hel=
per.h
> index 217c776615b9..65717cc20a23 100644
> --- a/rust/bindings/bindings_helper.h
> +++ b/rust/bindings/bindings_helper.h
> @@ -19,6 +19,7 @@
>  #include <linux/pci.h>
>  #include <linux/phy.h>
>  #include <linux/platform_device.h>
> +#include <linux/property.h>
>  #include <linux/refcount.h>
>  #include <linux/sched.h>
>  #include <linux/slab.h>
> diff --git a/rust/kernel/device.rs b/rust/kernel/device.rs
> index 0c28b1e6b004..bb66a28df890 100644
> --- a/rust/kernel/device.rs
> +++ b/rust/kernel/device.rs
> @@ -5,10 +5,14 @@
>  //! C header: [`include/linux/device.h`](srctree/include/linux/device.h)
>
>  use crate::{
> +    alloc::KVec,
>      bindings,
> +    error::{to_result, Result},
> +    prelude::*,
> +    str::CStr,
>      types::{ARef, Opaque},
>  };
> -use core::{fmt, ptr};
> +use core::{fmt, mem::size_of, ptr};
>
>  #[cfg(CONFIG_PRINTK)]
>  use crate::c_str;
> @@ -189,6 +193,145 @@ unsafe fn printk(&self, klevel: &[u8], msg: fmt::Ar=
guments<'_>) {
>              )
>          };
>      }
> +
> +    /// Returns if a firmware property `name` is true or false
> +    pub fn property_read_bool(&self, name: &CStr) -> bool {
> +        unsafe { bindings::device_property_present(self.as_raw(), name.a=
s_ptr() as *const i8) }
> +    }
> +
> +    /// Returns if a firmware string property `name` has match for `matc=
h_str`
> +    pub fn property_match_string(&self, name: &CStr, match_str: &CStr) -=
> Result<usize> {
> +        let ret =3D unsafe {
> +            bindings::device_property_match_string(
> +                self.as_raw(),
> +                name.as_ptr() as *const i8,
> +                match_str.as_ptr() as *const i8,
> +            )
> +        };
> +        to_result(ret)?;
> +        Ok(ret as usize)
> +    }
> +
> +    /// Returns firmware property `name` scalar value
> +    ///
> +    /// Valid types are i8, u8, i16, u16, i32, u32, i64, u64
> +    pub fn property_read<T: Copy>(&self, name: &CStr) -> Result<T> {
> +        let mut val: [T; 1] =3D unsafe { core::mem::zeroed() };
> +
> +        Self::_property_read_array(&self, name, &mut val)?;
> +        Ok(val[0])
> +    }
> +
> +    /// Returns firmware property `name` array values
> +    ///
> +    /// Valid types are i8, u8, i16, u16, i32, u32, i64, u64
> +    pub fn property_read_array<T, const N: usize>(&self, name: &CStr) ->=
 Result<[T; N]> {
> +        let mut val: [T; N] =3D unsafe { core::mem::zeroed() };
> +
> +        Self::_property_read_array(self, name, &mut val)?;
> +        Ok(val)
> +    }
> +
> +    fn _property_read_array<T>(&self, name: &CStr, val: &mut [T]) -> Res=
ult {
> +        match size_of::<T>() {
> +            1 =3D> to_result(unsafe {
> +                bindings::device_property_read_u8_array(
> +                    self.as_raw(),
> +                    name.as_ptr() as *const i8,
> +                    val.as_ptr() as *mut u8,
> +                    val.len(),
> +                )
> +            })?,
> +            2 =3D> to_result(unsafe {
> +                bindings::device_property_read_u16_array(
> +                    self.as_raw(),
> +                    name.as_ptr() as *const i8,
> +                    val.as_ptr() as *mut u16,
> +                    val.len(),
> +                )
> +            })?,
> +            4 =3D> to_result(unsafe {
> +                bindings::device_property_read_u32_array(
> +                    self.as_raw(),
> +                    name.as_ptr() as *const i8,
> +                    val.as_ptr() as *mut u32,
> +                    val.len(),
> +                )
> +            })?,
> +            8 =3D> to_result(unsafe {
> +                bindings::device_property_read_u64_array(
> +                    self.as_raw(),
> +                    name.as_ptr() as *const i8,
> +                    val.as_ptr() as *mut u64,
> +                    val.len(),
> +                )
> +            })?,
> +            _ =3D> return Err(EINVAL),
> +        }
> +        Ok(())
> +    }
> +
> +    pub fn property_read_array_vec<T>(&self, name: &CStr, len: usize) ->=
 Result<KVec<T>> {
> +        let mut val: KVec<T> =3D KVec::with_capacity(len, GFP_KERNEL)?;
> +
> +        // SAFETY: len always matches capacity
> +        unsafe { val.set_len(len) }
> +        Self::_property_read_array::<T>(&self, name, val.as_mut_slice())=
?;
> +        Ok(val)
> +    }
> +
> +    /// Returns array length for firmware property `name`
> +    ///
> +    /// Valid types are i8, u8, i16, u16, i32, u32, i64, u64
> +    pub fn property_count_elem<T>(&self, name: &CStr) -> Result<usize> {

This always returns usize? I'm a bit confused ...

> +        match size_of::<T>() {
> +            1 =3D> {
> +                ret =3D unsafe {
> +                    bindings::device_property_read_u8_array(
> +                        self.as_raw(),
> +                        name.as_ptr() as *const i8,
> +                        ptr::null_mut(),
> +                        0,
> +                    )
> +                }
> +            }
> +            2 =3D> {
> +                ret =3D unsafe {
> +                    bindings::device_property_read_u16_array(
> +                        self.as_raw(),
> +                        name.as_ptr() as *const i8,
> +                        ptr::null_mut(),
> +                        0,
> +                    )
> +                }
> +            }
> +            4 =3D> {
> +                ret =3D unsafe {
> +                    bindings::device_property_read_u32_array(
> +                        self.as_raw(),
> +                        name.as_ptr() as *const i8,
> +                        ptr::null_mut(),
> +                        0,
> +                    )
> +                }
> +            }
> +            8 =3D> {
> +                ret =3D unsafe {
> +                    bindings::device_property_read_u64_array(
> +                        self.as_raw(),
> +                        name.as_ptr() as *const i8,
> +                        ptr::null_mut(),
> +                        0,
> +                    )
> +                }
> +            }
> +            _ =3D> return Err(EINVAL),

You can use `kernel::build_error!` here to trigger a build failure if
the size is wrong.

Alice


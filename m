Return-Path: <devicetree+bounces-187267-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CD54ADF469
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 19:43:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 89847165FCF
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 17:43:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B02EB2FE385;
	Wed, 18 Jun 2025 17:40:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="ZKTfdMki"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 577582FE380
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 17:40:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750268450; cv=none; b=JRdO72KRWCgH30ZviB37zADpPCOKw1hvzawwAk2anD+R674KsCanilLCNzH/dYPwR5xUh15QtDyMWuIHzxWCtKve0mU/EmFi0s6PPX3ogu5IYy4/ZBodbWlULT+a/7vSQLBuDqpwIGSHXB8b8q8nnMKV9NKPQyfx4c5OoCtpseY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750268450; c=relaxed/simple;
	bh=4sFWwkFXi8BvpD8IMU8juMRg7f+DirSsf+Ud/E9pRzw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=K05xPhE04UPLHNLjUt+Qkei74hrr1aS5Pt1OYRtUFwr5TfFUMyvcUjktqgCeI9xDIyEEVgWhouKuftfl8M193pP+2iMEFQlT3BjP18qJX3CJWsG3V4SAjIsL5MhckRoC1uPO4t0OhWUkjaPdSW/lwE6ZNxR2MduK4qY4KZcioGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=ZKTfdMki; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1750268444;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=QyjtI6z4LqPR2c4duviV1oQl9DWLYnzH4cNekvsPaJY=;
	b=ZKTfdMkiRBxVhKaZlowFwwUCoT2CSQnfLD4e79dpP6Wa9/0f6qvuE+GQ1xHN5JrCtCKQ0L
	zqCzqWl9QoIhk0Dbz6m7moPI9z0wdAi2jpiAgT4dz8zIGZ6oOmaz/NDPiCY3xB19d9EuqI
	3hjr3lB9dR0/y09caxJrw2pAU2G5srQ=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-240-l-xwNlVvM1qQLDDlGdrRLg-1; Wed, 18 Jun 2025 13:40:42 -0400
X-MC-Unique: l-xwNlVvM1qQLDDlGdrRLg-1
X-Mimecast-MFC-AGG-ID: l-xwNlVvM1qQLDDlGdrRLg_1750268442
Received: by mail-ej1-f70.google.com with SMTP id a640c23a62f3a-ae012f87dd1so109417266b.3
        for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 10:40:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750268441; x=1750873241;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QyjtI6z4LqPR2c4duviV1oQl9DWLYnzH4cNekvsPaJY=;
        b=YxQPNDQbzM+uticlX1TMC0kLUAld58ZJemHlt6OGt284V104WJwCb2KkedJl6ZzUu9
         aBAgQ8jL5bIPzK/g2DBAd21898oWGUe57iV75RTQ7KXliWcGdsojyzIAKce8aRN3Wdl2
         ucmrABrugQ+aaPsrFb2irFz6Qtmx3uniyFM47/wHHCBAFM1cKmL+/CncMs2ggavKoV+v
         8P53MwYdBvd1S2RRpiu+6UONYrpytSoqJA9gMdtvIe7CTvpIKj8APc8z9CrnKpq9NMhr
         o42fG6mjEhg4CDUoKCL5nsnTKI2h6SDd8RFiaxtP7Jdg3UEW9it6DboEic1h0Cfb0DBg
         52Dg==
X-Forwarded-Encrypted: i=1; AJvYcCVZPqQPywFdRScfhXl3KkMKEGauGKtdaUz7CkXWJBHLmvn303qKchg4f/KugR1htNEZwxO3LHso9i5k@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/ZqPvnyE0ZZpjSYW84pD/4zZygocgukVEyYiz9NXnUfB3M0Q6
	1epStFY2bvbEqmEdPyeTZe9sGEg+PH0l86XT2A60xFxV89iz8xhiNnaadCZxtGSNqwX4EMhwdY8
	KC4in9j6EO7D/eNBSn5/s4Vj8+HBE1HiDqmLrL2C00QJoVxe4GLv3yBSxoJ81fWA=
X-Gm-Gg: ASbGncuYOiLzRCOSXaFkIpL7Q8/PYOa0v4kVZdyom8Hsx2xiBQefsKdT9Z4nS0TvOkg
	FxhWrejQuHa+pYIi0Wow7E1W+2dwe2Tw41c7pybK35UYDjVScN23NVRHn+5iKVZX9ggAYTx4Hym
	f4amGybaAqyIPtT2kmvW8N3M4r89pgaqSOfAPIP2U5yEWsw37CCYAA4ooKNp45jntwyzrOPJphS
	evPuZx3ahRV71ma8mA4WYLATEYin6vF4kpcortc6axjIzcfNzJ7tSUDIx4NHTzTyd3TkYrU4GCx
	pfbaMKNiQt9o09GpWE7B4BL7Smbdr1UTAkVjivcQYtrl+h+EpyZTHVAymPabqw==
X-Received: by 2002:a17:907:3f1f:b0:ad2:417b:2ab5 with SMTP id a640c23a62f3a-adfad4f5a5amr1527475666b.60.1750268441533;
        Wed, 18 Jun 2025 10:40:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHJxKyWXcdF99utGWSG81lMA2wUOYJgcYHm0gBuwbodj41pCAPM9kqV+i3SsT8FRKkHC4LNpQ==
X-Received: by 2002:a17:907:3f1f:b0:ad2:417b:2ab5 with SMTP id a640c23a62f3a-adfad4f5a5amr1527470666b.60.1750268440967;
        Wed, 18 Jun 2025 10:40:40 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:c:37e0:8998:e0cf:68cc:1b62? ([2a01:e0a:c:37e0:8998:e0cf:68cc:1b62])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-adec897c397sm1066045766b.167.2025.06.18.10.40.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Jun 2025 10:40:40 -0700 (PDT)
Message-ID: <f6dcf50e-99ee-4e2d-86a8-5ffa2c7aacc7@redhat.com>
Date: Wed, 18 Jun 2025 19:40:36 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v12 5/6] rust: enable `clippy::cast_lossless` lint
To: Tamir Duberstein <tamird@gmail.com>,
 Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor
 <nathan@kernel.org>, Miguel Ojeda <ojeda@kernel.org>,
 Alex Gaynor <alex.gaynor@gmail.com>, Boqun Feng <boqun.feng@gmail.com>,
 Gary Guo <gary@garyguo.net>, =?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?=
 <bjorn3_gh@protonmail.com>, Andreas Hindborg <a.hindborg@kernel.org>,
 Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>,
 Danilo Krummrich <dakr@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Brendan Higgins <brendan.higgins@linux.dev>, David Gow
 <davidgow@google.com>, Rae Moar <rmoar@google.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Luis Chamberlain <mcgrof@kernel.org>,
 Russ Weight <russ.weight@linux.dev>, Rob Herring <robh@kernel.org>,
 Saravana Kannan <saravanak@google.com>,
 Abdiel Janulgue <abdiel.janulgue@gmail.com>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 FUJITA Tomonori <fujita.tomonori@gmail.com>,
 Nicolas Schier <nicolas.schier@linux.dev>,
 Frederic Weisbecker <frederic@kernel.org>, Lyude Paul <lyude@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Anna-Maria Behnsen <anna-maria@linutronix.de>,
 Benno Lossin <lossin@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 John Stultz <jstultz@google.com>, Stephen Boyd <sboyd@kernel.org>,
 Lorenzo Stoakes <lorenzo.stoakes@oracle.com>,
 "Liam R. Howlett" <Liam.Howlett@oracle.com>, Breno Leitao
 <leitao@debian.org>, Viresh Kumar <viresh.kumar@linaro.org>
Cc: linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org,
 rust-for-linux@vger.kernel.org, linux-kselftest@vger.kernel.org,
 kunit-dev@googlegroups.com, linux-pci@vger.kernel.org,
 linux-block@vger.kernel.org, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org, netdev@vger.kernel.org, linux-mm@kvack.org,
 linux-pm@vger.kernel.org, nouveau@lists.freedesktop.org
References: <20250615-ptr-as-ptr-v12-0-f43b024581e8@gmail.com>
 <20250615-ptr-as-ptr-v12-5-f43b024581e8@gmail.com>
Content-Language: en-US, fr
From: Jocelyn Falempe <jfalempe@redhat.com>
In-Reply-To: <20250615-ptr-as-ptr-v12-5-f43b024581e8@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 15/06/2025 22:55, Tamir Duberstein wrote:
> Before Rust 1.29.0, Clippy introduced the `cast_lossless` lint [1]:
> 
>> Rust’s `as` keyword will perform many kinds of conversions, including
>> silently lossy conversions. Conversion functions such as `i32::from`
>> will only perform lossless conversions. Using the conversion functions
>> prevents conversions from becoming silently lossy if the input types
>> ever change, and makes it clear for people reading the code that the
>> conversion is lossless.
> 
> While this doesn't eliminate unchecked `as` conversions, it makes such
> conversions easier to scrutinize.  It also has the slight benefit of
> removing a degree of freedom on which to bikeshed. Thus apply the
> changes and enable the lint -- no functional change intended.

Thanks, it looks good to me, for the drm_panic_qr.rs part.

Acked-by: Jocelyn Falempe <jfalempe@redhat.com>

> 
> Link: https://rust-lang.github.io/rust-clippy/master/index.html#cast_lossless [1]
> Suggested-by: Benno Lossin <benno.lossin@proton.me>
> Link: https://lore.kernel.org/all/D8ORTXSUTKGL.1KOJAGBM8F8TN@proton.me/
> Reviewed-by: Benno Lossin <benno.lossin@proton.me>
> Reviewed-by: Boqun Feng <boqun.feng@gmail.com>
> Signed-off-by: Tamir Duberstein <tamird@gmail.com>
> ---
>   Makefile                             | 1 +
>   drivers/gpu/drm/drm_panic_qr.rs      | 4 ++--
>   drivers/gpu/nova-core/regs.rs        | 2 +-
>   drivers/gpu/nova-core/regs/macros.rs | 2 +-
>   rust/bindings/lib.rs                 | 1 +
>   rust/kernel/net/phy.rs               | 4 ++--
>   rust/uapi/lib.rs                     | 1 +
>   7 files changed, 9 insertions(+), 6 deletions(-)
> 
> diff --git a/Makefile b/Makefile
> index 0ba22c361de8..29cf39be14de 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -481,6 +481,7 @@ export rust_common_flags := --edition=2021 \
>   			    -Wclippy::all \
>   			    -Wclippy::as_ptr_cast_mut \
>   			    -Wclippy::as_underscore \
> +			    -Wclippy::cast_lossless \
>   			    -Wclippy::ignored_unit_patterns \
>   			    -Wclippy::mut_mut \
>   			    -Wclippy::needless_bitwise_bool \
> diff --git a/drivers/gpu/drm/drm_panic_qr.rs b/drivers/gpu/drm/drm_panic_qr.rs
> index dd55b1cb764d..6b59d19ab631 100644
> --- a/drivers/gpu/drm/drm_panic_qr.rs
> +++ b/drivers/gpu/drm/drm_panic_qr.rs
> @@ -404,7 +404,7 @@ fn pop3(&mut self) -> Option<(u16, usize)> {
>               let mut out = 0;
>               let mut exp = 1;
>               for i in 0..poplen {
> -                out += self.decimals[self.len + i] as u16 * exp;
> +                out += u16::from(self.decimals[self.len + i]) * exp;
>                   exp *= 10;
>               }
>               Some((out, NUM_CHARS_BITS[poplen]))
> @@ -425,7 +425,7 @@ fn next(&mut self) -> Option<Self::Item> {
>           match self.segment {
>               Segment::Binary(data) => {
>                   if self.offset < data.len() {
> -                    let byte = data[self.offset] as u16;
> +                    let byte = u16::from(data[self.offset]);
>                       self.offset += 1;
>                       Some((byte, 8))
>                   } else {
> diff --git a/drivers/gpu/nova-core/regs.rs b/drivers/gpu/nova-core/regs.rs
> index 5a1273230306..c1cb6d4c49ee 100644
> --- a/drivers/gpu/nova-core/regs.rs
> +++ b/drivers/gpu/nova-core/regs.rs
> @@ -32,7 +32,7 @@ pub(crate) fn architecture(self) -> Result<Architecture> {
>       pub(crate) fn chipset(self) -> Result<Chipset> {
>           self.architecture()
>               .map(|arch| {
> -                ((arch as u32) << Self::IMPLEMENTATION.len()) | self.implementation() as u32
> +                ((arch as u32) << Self::IMPLEMENTATION.len()) | u32::from(self.implementation())
>               })
>               .and_then(Chipset::try_from)
>       }
> diff --git a/drivers/gpu/nova-core/regs/macros.rs b/drivers/gpu/nova-core/regs/macros.rs
> index 7ecc70efb3cd..6851af8b5885 100644
> --- a/drivers/gpu/nova-core/regs/macros.rs
> +++ b/drivers/gpu/nova-core/regs/macros.rs
> @@ -264,7 +264,7 @@ pub(crate) fn $field(self) -> $res_type {
>           pub(crate) fn [<set_ $field>](mut self, value: $to_type) -> Self {
>               const MASK: u32 = $name::[<$field:upper _MASK>];
>               const SHIFT: u32 = $name::[<$field:upper _SHIFT>];
> -            let value = ((value as u32) << SHIFT) & MASK;
> +            let value = (u32::from(value) << SHIFT) & MASK;
>               self.0 = (self.0 & !MASK) | value;
>   
>               self
> diff --git a/rust/bindings/lib.rs b/rust/bindings/lib.rs
> index 81b6c7aa4916..7631c9f6708d 100644
> --- a/rust/bindings/lib.rs
> +++ b/rust/bindings/lib.rs
> @@ -25,6 +25,7 @@
>   )]
>   
>   #[allow(dead_code)]
> +#[allow(clippy::cast_lossless)]
>   #[allow(clippy::ptr_as_ptr)]
>   #[allow(clippy::undocumented_unsafe_blocks)]
>   #[cfg_attr(CONFIG_RUSTC_HAS_UNNECESSARY_TRANSMUTES, allow(unnecessary_transmutes))]
> diff --git a/rust/kernel/net/phy.rs b/rust/kernel/net/phy.rs
> index 32ea43ece646..65ac4d59ad77 100644
> --- a/rust/kernel/net/phy.rs
> +++ b/rust/kernel/net/phy.rs
> @@ -142,7 +142,7 @@ pub fn is_autoneg_enabled(&self) -> bool {
>           // SAFETY: The struct invariant ensures that we may access
>           // this field without additional synchronization.
>           let bit_field = unsafe { &(*self.0.get())._bitfield_1 };
> -        bit_field.get(13, 1) == bindings::AUTONEG_ENABLE as u64
> +        bit_field.get(13, 1) == u64::from(bindings::AUTONEG_ENABLE)
>       }
>   
>       /// Gets the current auto-negotiation state.
> @@ -427,7 +427,7 @@ impl<T: Driver> Adapter<T> {
>           // where we hold `phy_device->lock`, so the accessors on
>           // `Device` are okay to call.
>           let dev = unsafe { Device::from_raw(phydev) };
> -        T::match_phy_device(dev) as i32
> +        T::match_phy_device(dev).into()
>       }
>   
>       /// # Safety
> diff --git a/rust/uapi/lib.rs b/rust/uapi/lib.rs
> index e79a1f49f055..08e68ebef606 100644
> --- a/rust/uapi/lib.rs
> +++ b/rust/uapi/lib.rs
> @@ -14,6 +14,7 @@
>   #![cfg_attr(test, allow(unsafe_op_in_unsafe_fn))]
>   #![allow(
>       clippy::all,
> +    clippy::cast_lossless,
>       clippy::ptr_as_ptr,
>       clippy::undocumented_unsafe_blocks,
>       dead_code,
> 



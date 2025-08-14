Return-Path: <devicetree+bounces-204473-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 24D4CB25BFD
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 08:41:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id DD0614E3ED5
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 06:41:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9D0A254854;
	Thu, 14 Aug 2025 06:41:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="IgDPikPp"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C86C1253931
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 06:41:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755153706; cv=none; b=Uq2t9OrIoU66IqcbUVdnWXiiVdTb6dYc0CNY9Rc2owNejlR1sIkArIMDtV9JObg6HGyLqH9YTqq1i8eDKT2lEPVOUTx9c9iWn3In8GPePtlV2ZnqDlbjbxpxOG+vo4APLz9lZKm0xO+wWz0T6YZ6L4q1lBrTZigzLmQ32AuAE2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755153706; c=relaxed/simple;
	bh=GCbPMefnp9LdOOPenXhGV0oJ7QE490/uj4sFARHm2Qo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mYt39kJZCLdEuBZqPEEJ0s+9qGyEwhxLhJc1/Tvke0GZPu/liMIgMyCOQduNSRw55ZzHpdjE3D5Kfxhz4JTKpEmqWM1edLlBJj88tRhg/QoxhrAeXNyi4ZINzZCoLLfE1UHgj4LY+Nq7KltcR3elPiWA7T8QVFXtY+l8gbnTPeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=IgDPikPp; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1755153703;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=S9gfDC3XT5JH5+UXZeFk4ANri2tI0Wf8QHIFMwTkbME=;
	b=IgDPikPpiRiy1kHDuQpPKStVkJIQUTuZ7XbK8lD7y08wsWCARvK49+MQ9YZP+62mOIvXRV
	5xTiQCRQLhXsLaM8h2sJL+neUNv2l/+CC29M3gLqo90EKv5exmPyPPhfkCwMyCRHagc/lX
	62QxhqLcTo4V3u10qfeTEujG4XKcocY=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-138-b-F4oaTsPDq5s1cKTk8wMg-1; Thu, 14 Aug 2025 02:41:42 -0400
X-MC-Unique: b-F4oaTsPDq5s1cKTk8wMg-1
X-Mimecast-MFC-AGG-ID: b-F4oaTsPDq5s1cKTk8wMg_1755153701
Received: by mail-wr1-f70.google.com with SMTP id ffacd0b85a97d-3b9e29fae1fso271929f8f.1
        for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 23:41:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755153701; x=1755758501;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=S9gfDC3XT5JH5+UXZeFk4ANri2tI0Wf8QHIFMwTkbME=;
        b=bvz2dQ74/SMe9AEOffwYopEDO9BzE7YRF/AhaMIiHp3ljLOJ4emjxXFjdVc0wxcjwi
         rsdPwtOjjHiqpKds34Zqpmb4TpSJtIRnjmWby6yJHLe/jRoaJpcePPAqojDsRRzEVnF6
         477fJfELLcO2QMKMYGkkdpp49/assuvNo1OmROD3NzyeszIEZJz+6Y4dEInHvz0J8TWr
         IbXWB7F9a+vKmCZMLkoB+XBvSmSqjYD+faulHs4V4E2lIUwnXWe3w+zS5UTf8bPuh3GO
         upKQPREH/VIal/Xivtn1KhXQKZoMzbCMpra1f8YdEx/FnAG7C+DeTObVutf/w0fVoIec
         hEvA==
X-Forwarded-Encrypted: i=1; AJvYcCXXpk+SNKldbkYwXz2WNPx8m2QQeDukjDqregKfoJvA2fHFQCpPdJBUkoH8Twzf+OARIbcosEwN3YVf@vger.kernel.org
X-Gm-Message-State: AOJu0YySIK4YzeVR92fzVFj9Uh1iBrDF+5A5ediqdBuIPRL2kgY6DXgT
	C7ePKn8u8gP4rA+scTjZ103bnyv9ujz8liWrOC5+Vl8OJpFw8Ti6AC0CB0ToPgRfQ2BkGPk0+QL
	ZLYj+kOLKYVEpJFbM6CKZ5+xt0KQAMa2k5cIF/6t8BKgMifGidFB/mWjce8d750w=
X-Gm-Gg: ASbGncuU8cv3yJRZwaqRVefomGyqB/dbwHp5coz+kjIDx/F88Pvt8cLH7IF6F0CIrgc
	4QQPRL5QqU+5drPlFd3HjmKpu23CqOF7Vjc/zCk7JfkvN3nsMX8/jb5MFZ5IFvkl3gIV0VWl+rb
	alYxg0UeyaJdPpEtGvRcnaUYa4fbm3VS5OHWDkINzisXdOVc+tpykCo1+zGRGUwEuf3KFn2XeK6
	ebpCmpGy+jzneVy0WGyVKc3SNo3KoGzaJisRF6rMD6pgM8qfKn8wdPDg0TjRaUIsRflY/0xXSzE
	CDG8cWetIx5iMO/qc6D6w5HzIiOO6sucR1/OEyRSxVAHl5sjcZ5vyRYJG23wL5OIHycKYp+4pIP
	nB5k=
X-Received: by 2002:a05:6000:40c7:b0:3b7:8a49:eed0 with SMTP id ffacd0b85a97d-3b9f1a13965mr1378463f8f.22.1755153701040;
        Wed, 13 Aug 2025 23:41:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFpLaxNWs2oFsAZSrN9kqR+39ayEAZmpXcMUMLGDC+7HLlsr/ah//p96eCfa0Qd8T4sw00vYQ==
X-Received: by 2002:a05:6000:40c7:b0:3b7:8a49:eed0 with SMTP id ffacd0b85a97d-3b9f1a13965mr1378416f8f.22.1755153700568;
        Wed, 13 Aug 2025 23:41:40 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:c:37e0:8998:e0cf:68cc:1b62? ([2a01:e0a:c:37e0:8998:e0cf:68cc:1b62])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45a1c6bc932sm9252735e9.3.2025.08.13.23.41.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Aug 2025 23:41:39 -0700 (PDT)
Message-ID: <0f3a72c0-f52f-4ccc-acd8-861824fb762d@redhat.com>
Date: Thu, 14 Aug 2025 08:41:36 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 01/11] drm/panic: use `core::ffi::CStr` method names
To: Tamir Duberstein <tamird@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>,
 Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>,
 =?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>,
 Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>,
 Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>,
 Danilo Krummrich <dakr@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dave Ertman <david.m.ertman@intel.com>, Ira Weiny <ira.weiny@intel.com>,
 Leon Romanovsky <leon@kernel.org>, Breno Leitao <leitao@debian.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>, Luis Chamberlain
 <mcgrof@kernel.org>, Russ Weight <russ.weight@linux.dev>,
 Brendan Higgins <brendan.higgins@linux.dev>, David Gow
 <davidgow@google.com>, Rae Moar <rmoar@google.com>,
 FUJITA Tomonori <fujita.tomonori@gmail.com>, Rob Herring <robh@kernel.org>,
 Saravana Kannan <saravanak@google.com>,
 Javier Martinez Canillas <javierm@redhat.com>, Arnd Bergmann
 <arnd@arndb.de>, Len Brown <lenb@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 rust-for-linux@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-kselftest@vger.kernel.org, kunit-dev@googlegroups.com,
 netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-acpi@vger.kernel.org
References: <20250813-core-cstr-fanout-1-v3-0-545c14bc44ff@gmail.com>
 <20250813-core-cstr-fanout-1-v3-1-545c14bc44ff@gmail.com>
Content-Language: en-US, fr
From: Jocelyn Falempe <jfalempe@redhat.com>
In-Reply-To: <20250813-core-cstr-fanout-1-v3-1-545c14bc44ff@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 13/08/2025 17:41, Tamir Duberstein wrote:
> Prepare for `core::ffi::CStr` taking the place of `kernel::str::CStr` by
> avoid methods that only exist on the latter.

Thanks, it looks good to me.

Acked-by: Jocelyn Falempe <jfalempe@redhat.com>

> 
> Link: https://github.com/Rust-for-Linux/linux/issues/1075
> Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Reviewed-by: Alice Ryhl <aliceryhl@google.com>
> Reviewed-by: Benno Lossin <lossin@kernel.org>
> Acked-by: Danilo Krummrich <dakr@kernel.org>
> Signed-off-by: Tamir Duberstein <tamird@gmail.com>
> ---
>   drivers/gpu/drm/drm_panic_qr.rs | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/drm_panic_qr.rs b/drivers/gpu/drm/drm_panic_qr.rs
> index 09a9b452e8b7..10bc5bb16992 100644
> --- a/drivers/gpu/drm/drm_panic_qr.rs
> +++ b/drivers/gpu/drm/drm_panic_qr.rs
> @@ -948,7 +948,7 @@ fn draw_all(&mut self, data: impl Iterator<Item = u8>) {
>           // nul-terminated string.
>           let url_cstr: &CStr = unsafe { CStr::from_char_ptr(url) };
>           let segments = &[
> -            &Segment::Binary(url_cstr.as_bytes()),
> +            &Segment::Binary(url_cstr.to_bytes()),
>               &Segment::Numeric(&data_slice[0..data_len]),
>           ];
>           match EncodedMsg::new(segments, tmp_slice) {
> 



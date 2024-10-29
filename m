Return-Path: <devicetree+bounces-117021-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 87DC69B4AB1
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 14:16:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 036A0B22E82
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 13:16:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16C55205E3F;
	Tue, 29 Oct 2024 13:16:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="ogG0of+B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40FCC204013
	for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 13:16:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730207792; cv=none; b=Bq8/XSYwrn9qq1RnQmqT793sud3KoL0lf8wp5fge3t/b/2OKW0cO7NZvS+t4frLZ7PBp2oUM5pwAC0lW3rM6iAZqxm9Bhbp7Af8SvQP5+suvnIozv2Pkf1RQfn3WOtkXBdEgJ5TwsRTFBUkXC4AeBu6rot+DSPxpyUwziOBLGaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730207792; c=relaxed/simple;
	bh=ORScFiiSj6DBWVhn8Ip6edyJLDCC004uaKK2dEp4X1g=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IiNkTbAP89Gt2Xv2L0eJ5B+jVGSxa185ojs+p77LHMCTCI9hkP8VnGQ1qHUmMKmDNtYZh4POmckDAJRY9hJxPcDzX4YiNZtc0yEQM8c8Dt2aAmkeGqY0tVkSUOsMuda/MCPAcfWf1f54AHwenBGzjpG41OKmQSYIyDdzWA2ro14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=ogG0of+B; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-208cf673b8dso50822685ad.3
        for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 06:16:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1730207789; x=1730812589; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G4FgCQ6GkthTlMOY7Hwmvw1LED0yrWV2Of7OG03sNbg=;
        b=ogG0of+Bgo8R4elC2gdsau+roG160QzUNvRJF+l8FYhN6C+6f/yCSqPvHuI3DYybXf
         e9zun2XeDN2QAb3xiauDaqFLlxGC0luC30X47Q9s9vz0UJrqkBCDUQxlMAkYG6pcyvaD
         bsDfLyKaJ5mKdDfL4aTXohFz+ywzYuE4EFVKf+sy3QU6NCQM+KfePC9ECtECRskG7lP7
         wDSr2h6Yfy4WOUnRhizfobsqLx/p4bIOv9GeJUABS0RIZDJpsK4vh2XzZ4ASe4KYWXvz
         Iw7AY8bbZ3YPl06EaIYRlI+ZqDk2/Bxw4r1J/yriK6i96vLcYLhr7yh7liNiM/7tolUK
         PHEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730207789; x=1730812589;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=G4FgCQ6GkthTlMOY7Hwmvw1LED0yrWV2Of7OG03sNbg=;
        b=ZfSk8EP2BRlQOmLJJFE/E8f3jbaEigUQhHWnouRBuWCrY5mLI8hYVwCKeKNyLI/ah1
         0zx2jE4L2GluJ9fY0QZgXsgCi1ZwMVk1/TbzxGCrDxlS7TUgwrIBe3tywEn/Zkxmfb93
         Cgv4UCHz/okQJdVaNtVK6HFDJLAEXKyjj3Imli625wDrvUhtoRY26mjeNA6nGIlxic46
         0K0i0AbKVMH6bLbgtT8Bx1odrsc87oS8MCI30rwpDwaLXUG/CrTO90/Zx15U+BmpOuRH
         Seeo2QaTQHLSPCH05W/uQD646BVeROmFPin7Rm5yONXF/YVz9BVDNEd6ExEMQnbERlq6
         GH1Q==
X-Forwarded-Encrypted: i=1; AJvYcCXFXfX0f1uyhBndTC+7o9qW6dQ7E6GvmxlZW0B2WbCozJlfcR4b59NgtRDNfUjtml4u3mETbCpAnsd+@vger.kernel.org
X-Gm-Message-State: AOJu0YysLAPXszmZVYOYOMwILRFoSF9EgVE5QVHXp6E3/jgGITqyO4Eh
	mMrtFMk3/q8R2KgKyhnHRLXDzYq7dRTOOnfTdDWdQO9ORnyQJS/GsN/xTawNSipC8kSwN6UN/2w
	qI/KcYb/6zOZTUls8E4YDKfhGjYYhos1uX2LC
X-Google-Smtp-Source: AGHT+IG7aPEWXrKU2oQ6UttFO6K5zHHkqze1cQRhd6cCywBZr/BAJUMAwKfw3MVUjRift3AdGsm8Yxujz0XZfRoELXY=
X-Received: by 2002:a17:902:d4c3:b0:20b:b0ab:4fc3 with SMTP id
 d9443c01a7336-210c6c934c1mr173443635ad.49.1730207789184; Tue, 29 Oct 2024
 06:16:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241022213221.2383-1-dakr@kernel.org> <20241022213221.2383-16-dakr@kernel.org>
In-Reply-To: <20241022213221.2383-16-dakr@kernel.org>
From: Alice Ryhl <aliceryhl@google.com>
Date: Tue, 29 Oct 2024 14:16:14 +0100
Message-ID: <CAH5fLgiab5vssuQ2CO4kuKHhhWma=17858w8wbtmYUOXA-Cd1Q@mail.gmail.com>
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
> +    /// Find the [`of::DeviceId`] within [`Driver::ID_TABLE`] matching t=
he given [`Device`], if any.
> +    fn of_match_device(pdev: &Device) -> Option<&of::DeviceId> {
> +        let table =3D Self::ID_TABLE;
> +
> +        // SAFETY:
> +        // - `table` has static lifetime, hence it's valid for read,
> +        // - `dev` is guaranteed to be valid while it's alive, and so is
> +        //   `pdev.as_dev().as_raw()`.
> +        let raw_id =3D unsafe { bindings::of_match_device(table.as_ptr()=
, pdev.as_dev().as_raw()) };
> +
> +        if raw_id.is_null() {
> +            None
> +        } else {
> +            // SAFETY: `DeviceId` is a `#[repr(transparent)` wrapper of =
`struct of_device_id` and
> +            // does not add additional invariants, so it's safe to trans=
mute.
> +            Some(unsafe { &*raw_id.cast::<of::DeviceId>() })
> +        }
> +    }

Sorry if this has already been mentioned, but this method should
probably be marked #[cfg(CONFIG_OF)] so that you can use these
abstractions even if OF is disabled.

Alice


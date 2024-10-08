Return-Path: <devicetree+bounces-109023-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 70A10994B21
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 14:40:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A26161C24CDF
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 12:40:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 527CF1DDC24;
	Tue,  8 Oct 2024 12:40:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="Zv6RSpPa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CE501779B1
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 12:40:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728391230; cv=none; b=IkW0+B5/G54oEMj27kBcj6P0mCnSICZPhXM3iHi7LUjbVZw4oE69gCt/aNdL1688TUnCQBcYXcuqSST0QbZPbDhoY8M1nJm12KT9a026RFUcbN1/d3N0HaFPuqbR0FCWXtOl6acWu3/TvX9Vz3pXMIC+E4VqDecC6Meq9vMR9UE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728391230; c=relaxed/simple;
	bh=bFCcxYcFPvSArjNvLO3v0Bp1CsAYmQCeKJKVbEGWfyo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=liUL6W2lVwihCjRGX59+ll66OqhjGhUY94qbmhYD/QcEWGWlHFjiaAl8AxHIoevSZCfUU9uf8IePPQIGAmmEqF+LWi2rPkIV0yQrrmJgjpm113voPPfD5najwtXgmm341i9AvMrluClE3Nm2MwIo9HiECP0tUBVTHrFod7RMTc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=Zv6RSpPa; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-42cbe8ec7dbso187065e9.1
        for <devicetree@vger.kernel.org>; Tue, 08 Oct 2024 05:40:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1728391227; x=1728996027; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MjGOOtMucxhb5ZS927s5WuBkJyqHmDu4cOfgcCGtNGo=;
        b=Zv6RSpPalKfFvitb1UHhF7tvELR6SoW03/hHOLQYn0i3OAZ1eXb8ah9fKvjio03g00
         ULDn6Jm7yf4Jy0HKcsNVlrsTd/pN8K0VhcyDgBci7NRiVnDXRkOxwhX3+o+RvZNv8cuL
         E99zGrkmYB0afTaXymyHX8F5KT8JgREtyD3vO73GE+UM32JAZT4umo2h1zyMA8Ureiul
         xnWBJiC3ePZPI6yS4JVEFXP+qtEVDxd9s2ECMeyX8fHOYo3UdkIisPrVBTlwy/96qN7j
         N1v3esSI2CCnYw2k+UepkG7CFVVJ96x94BhN8Vz4ud+Nx49gP0V9o7MwYOQ0UuLrNOAC
         H8UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728391227; x=1728996027;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MjGOOtMucxhb5ZS927s5WuBkJyqHmDu4cOfgcCGtNGo=;
        b=OFvxp2DrFUyorW4eCIR1A+40qBkL0XV1V8z7WDCC0RkM+ug4+QRnYYpjaRIxnUy+Zr
         79Xz0v9qhZzmZccwUbGx6Egrtok8QpCu59bxSy8/XwxhD4WM7+HhlIqpNz2mxT6mUlJT
         NikIDIUDHej9O3W5dta9WNK1zF5FLtFD0Ii1QNma6kcsBRPq/E6sxpKhBZyeHue/so0U
         L8QVooCTATxzHTd8K9mmY/qs2NCK09oSN9OW2AdRWaIWmw1l7SKfhb4fC1KJOY94uWxI
         j4sHJNPLAGBMM++xwOz0hRL7N+1b4AC2xndB3DOsd50mVnaBFYI7N5IWBWC/1e4vSbGs
         srfQ==
X-Forwarded-Encrypted: i=1; AJvYcCV99h241edr3MXa8N5nRDBsrixQsQ24o+kpIsj2M5D3X7YhKb6b8EmHXsLOczcpSWyMxR0CvifpzwBe@vger.kernel.org
X-Gm-Message-State: AOJu0YxUsKkVM8+bh12Pj9nc9JOsSL0yBVi1zfaGZCvGnHD6GOMxnpd3
	bKVH1XZ4wir00y1J5Ig5bLgC5DoTNPdRNOO4Vc5jzrnHDeoTksUn2E8eh5RHAX3a4v+FL/a8i91
	yPGvaRhcw8ei9F3ZCFjC4JcNxzKCB30jgLAXE
X-Google-Smtp-Source: AGHT+IEL7tYPqmx6mwudaNpCL53QeA059IqJRLS/nObIZDld3vrRm1vb3T2MRHAE8q/ZavsDDyDw2TlLPBDKM5nJZ44=
X-Received: by 2002:a05:600c:c8a:b0:42c:9e35:cde6 with SMTP id
 5b1f17b1804b1-42fc83dfc65mr4596845e9.2.1728391226825; Tue, 08 Oct 2024
 05:40:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241007135508.3143756-1-joychakr@google.com> <20241007135508.3143756-2-joychakr@google.com>
 <c98ece5f-c105-41ca-af1a-bddc61893071@kernel.org> <CAOSNQF148N5meoFZkbGKoMXMZ62kf=JOV+1r0GCsep3DPP_Lrw@mail.gmail.com>
 <1bc2c476-9d7b-4c87-924b-ecaed0f721de@kernel.org> <CAOSNQF0b--3o5bseU05Eu3a2zDiTTYfbnQNONFo3imw3HnaONA@mail.gmail.com>
 <502d7a1f-0bac-496f-8fbe-b8924cd0ce31@kernel.org>
In-Reply-To: <502d7a1f-0bac-496f-8fbe-b8924cd0ce31@kernel.org>
From: Joy Chakraborty <joychakr@google.com>
Date: Tue, 8 Oct 2024 18:10:10 +0530
Message-ID: <CAOSNQF1A_gsXeRuuR4qeZQi9FicrsPxYfjvLpmgxkaGq0-mZmA@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: usb: dwc3: Add binding for USB Gen2 de-emphasis
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>, Felipe Balbi <balbi@kernel.org>, linux-usb@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 8, 2024 at 5:40=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.org=
> wrote:
>
> On 08/10/2024 13:59, Joy Chakraborty wrote:
> >>>
> >>>>
> >>>>> +    description: When set core will set Tx de-emphasis for USB Gen=
2
> >>>>
> >>>> And why it cannot be implied by compatible?
> >>>
> >>> As per my understanding these are tuning coefficients for de-emphasis
> >>> particular to a platform and not the dwc3 controller, hence should no=
t
> >>> be a controller compatible.
> >>
> >> Platforms must have specific compatible, so this should be implied by
> >> compatible.
> >
> > Maybe I am using the word "platform" incorrectly here, what I
> > understand is that the same controller(in a chip) when used on 2
> > different physical form factors might need different deemphasis
>
> You mean boards? This is board-level property?

Yes, the USB controller can be paired with different phys in a SoC and
used on different board layouts where we should be able to drive
different de-emphasis coefficients to the phy as per the link
equalization requirements is my understanding.

>
> > coefficient values to be passed to its Phy. Someone could correct me
> > from the USB link stand point if I am mistaken here.
> >
>
> Then please point me to the upstream DTS boards using these properties.
> Lore link is enough, if board or DTS change is being upstreamed.
>

The DTS change is not being upstreamed currently.
But this change would help bring up a new or development board where
USB compliance is being run and this parameter needs tuning,  hence
being able to upstream this would help.

> Best regards,
> Krzysztof
>


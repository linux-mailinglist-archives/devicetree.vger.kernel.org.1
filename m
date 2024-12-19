Return-Path: <devicetree+bounces-132666-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A40319F7BB2
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 13:44:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C2E0C165A8E
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 12:42:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7B0C2248B5;
	Thu, 19 Dec 2024 12:42:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="QUYV/XXY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AF4D223E92
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 12:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734612144; cv=none; b=ssJPUYNTaSVHfbhmGR5v7/emmw9zl8NAaDqot8vWsTXD1XwizB97W59B3Rw6xgGxtFVdkpA+M+mQNdrl86IS0+xWgDyRq5qCiyMQxkJ8LJIPjhdzQQJOI56TKhp6Un0/KrjZgllu3r97DB2mvnzsJACTHt8lriHfr49X9BxCq5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734612144; c=relaxed/simple;
	bh=X8UXNqv5ecPdSw+vYKNV5ThJqewH+b1pj2AskuWolZg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EEaWGKQyYeuepGIId7B9iQjsbTVTJLNX7/UbmFmDC6P8xYB9rf0FssLjRm4g17l2zmGyLs1jiQ9QnIMNiZ3icH3xThpWYdAtDDBcfdL7CX3XhpTbbx67m62Z23/frfYKVjE46XO1U/FrwxyCJfnvTvdAfiYsm3sKHWHj2qkOYvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=QUYV/XXY; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-21680814d42so6803015ad.2
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 04:42:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1734612142; x=1735216942; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=TnCAe9p4yEP5QmywCOysVpvHxzqj8A8f5GBf4MjEUXo=;
        b=QUYV/XXYUyXKPLpHf2xYh3WVWA0TdMNuJ+KEjcUIH/ulCQsGtL9tZqORnb07dxb5hR
         jZdKF0FzEwczKoEgu77KXgLDjBdlon7wMtXmHlaLfed56EJmsTuSiHL/O47JdSjmwR/O
         A+/2B65F+ZYkaXUgQN09q8KNQZeQLa0yE6dfI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734612142; x=1735216942;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TnCAe9p4yEP5QmywCOysVpvHxzqj8A8f5GBf4MjEUXo=;
        b=R5QpNSmD7gfnDScAuUiX//5K4Cpt2WJL4slrYldSvvW098+KOlt8svPFp1t2aq+vW7
         D/Puh9knxOVNiIzPamKalMvrTx3+WT6g1zcdnTMMsvmitOYh3lIrPg8EgrLI4cbrX592
         /0AVx/STVFTSt9NzSaU4sOwoYSE2K5IMo/twK33ewHUrOGQ6DSlO2q69f93EL4xPfvUP
         UUjWG+qsedbx+tKz/ZUMprkCKfeleDQ6N9YWKVNRLHCf32uSKXMDYX6/lRpc6aYtAi/Y
         +dUp44pQhER3HTJJZyRMqJkXxJ+uaFcyi2btcofm8oKZVNbAHvROQfmYbJcUzlDMwol+
         kmFA==
X-Forwarded-Encrypted: i=1; AJvYcCUV8GXKqPe0iLmWAbknmvAiIB9JoI/Ud1Z3MEMfvl0nJBuZEWU67p8xkTVNPy8ag36gUT23inz61PtQ@vger.kernel.org
X-Gm-Message-State: AOJu0YzNKyZQgprkawY5khnaqc1YYOfrIiUB+1g7npf/QUI0eCu8wPx0
	T/ro5AwfJNUACb6Yw6vqDCzjnRbCw24jSgfslrRZLRp7k+3WlqQMjHijU/H/Jw0nDMKAaNmpFz8
	=
X-Gm-Gg: ASbGncsNqWgqpuO78bdx4woC51DaZG86d5ruYGigtHlvaLvCqy8z7eEt64QiHnHD3cM
	YS6PRWLdhKzGv2NPRNyt8iAYV/6OHQY54CuKwGVpU5ZmC9pirFWzX3vGswF+gwJbwlCCzNw+xko
	QkkEaWMvtSSkYkEO68+UDoaCu/416CQSEVeI2IHuOAoHd+fUj5H1j8TQFrTbMX8jPxeS92M68+j
	8Oku5SqQvmIwpI9jTLepc3l0ADwLp076NiCnuBO3OJ8QDoviWgNPrXw5yug+Xu33E2WoBj97oak
	d2UOOaNlbepGiRoUt5YnS+Y=
X-Google-Smtp-Source: AGHT+IF67/HWGuUvhHUeaA4l7+YYJGFb+5qS8LqA67RS927dQP64nwUo2mw5qIiWngCVKjypNRakPA==
X-Received: by 2002:a17:902:d2c1:b0:215:7cd0:758d with SMTP id d9443c01a7336-218d725282fmr97509915ad.36.1734612142094;
        Thu, 19 Dec 2024 04:42:22 -0800 (PST)
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com. [209.85.215.177])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-842b821da83sm1083834a12.40.2024.12.19.04.42.21
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Dec 2024 04:42:21 -0800 (PST)
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-7f4325168c8so288022a12.1
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 04:42:21 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVbHOZXcYN+kRIB9nKgVr89pqFu5HocdObMctmb31Z2AVa5C5ayQQqb9JWIhHLYUQpS7rUW6ddEuvri@vger.kernel.org
X-Received: by 2002:a17:90b:51c7:b0:2ee:f80c:688d with SMTP id
 98e67ed59e1d1-2f2e9378675mr9284447a91.25.1734612140544; Thu, 19 Dec 2024
 04:42:20 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241212-usb-orientation-v1-1-0b69adf05f37@chromium.org>
 <20241217145612.GA1652259-robh@kernel.org> <CANiDSCu_mFQQVkDb_gSyXeb1_Tu+DxSeHYvGsGp6XVDuOdPyjQ@mail.gmail.com>
 <20241219122453.GA4008177-robh@kernel.org>
In-Reply-To: <20241219122453.GA4008177-robh@kernel.org>
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Thu, 19 Dec 2024 13:42:07 +0100
X-Gmail-Original-Message-ID: <CANiDSCt+LAE-LzCDZgrWP_V-Jc-ywTF1-PuQtyDJMfV9v_ZzGA@mail.gmail.com>
X-Gm-Features: AbW1kvb_GsNPrAWElm71yNhuDp3lbxsP7Rss3OTpjLvIYa7x_Sh-ce4PUixVmvc
Message-ID: <CANiDSCt+LAE-LzCDZgrWP_V-Jc-ywTF1-PuQtyDJMfV9v_ZzGA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: usb: usb-device: Add panel-location
To: Rob Herring <robh@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Jacopo Mondi <jacopo@jmondi.org>, Sakari Ailus <sakari.ailus@linux.intel.com>, 
	linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 19 Dec 2024 at 13:24, Rob Herring <robh@kernel.org> wrote:
>
> On Tue, Dec 17, 2024 at 04:24:27PM +0100, Ricardo Ribalda wrote:
> > Hi Rob
> >
> > On Tue, 17 Dec 2024 at 16:02, Rob Herring <robh@kernel.org> wrote:
> > >
> > > On Thu, Dec 12, 2024 at 09:44:37PM +0000, Ricardo Ribalda wrote:
> > > > For some devices like cameras the system needs to know where they are
> > > > mounted.
> > >
> > > Why do you need this and why only this property and not the dozens
> > > others ACPI has?
> >
> > Userspace needs that information to correctly show it in the UI. Eg;
> >
> > - User facing camera needs to be mirrored during preview.
> > - The user facing camera is selected by default during videoconferences
> > - The world facing camera is selected by default when taking a photo
> > - User facing camera have different parameter defaults than world facing.
>
> We already have "orientation" defined for this purpose.

Do you mean orientation from
bindings/media/video-interface-devices.yaml ?

I see a couple of issues:
- Orientation has a very specific meaning for USB typeC. I'd prefer if
we could avoid using that word.
- For other applications different than cameras it might be useful to
know the positions top, bottom, left, right, which are not available
in video-interface-devices
- The value "external" does not makes too much sense for listed usb devices
- It makes our lives easier if dt and acpi have the same meaning (less
conversion)

All that said, for my specific usecase, reusing orientation from
bindings/media/video-interface-devices.yaml works... So if that is
what you all prefer I can send a v2 with that.
Let me know what you think

>
> >
> > Right now, the only camera driver that expose the ACPI location
> > information is the IPU from intel
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/media/pci/intel/ipu-bridge.c#n258
> >
> > And they are only using the panel.
> >
> > If we need more information we can consider adding more parameters in
> > the future.



-- 
Ricardo Ribalda


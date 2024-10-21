Return-Path: <devicetree+bounces-113763-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C65DA9A6E56
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 17:38:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 53672283A55
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 15:37:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B473A1C3F29;
	Mon, 21 Oct 2024 15:37:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="YU9x/v7T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C8391C32E5
	for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 15:37:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729525074; cv=none; b=GRMSAwU7dTBKS52LQWjwMHqp/Y+pK55mWBLXLAGajyKuBlrTQc3fLw0aBVqONRhL+tK4626/H9TP4pyzSjB8MMsJFbgTT5BGMvBscBbKxde/4wOR0jIZDc8Oc1Zlig1+O4KCdr1vmQgxkKGXVioqmw5nVKCvcvdc6+MH2QNBWS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729525074; c=relaxed/simple;
	bh=Ka6mklgy7qYeIVGYAbIlvp8rtFWnyTCK8ThTP+zPs7c=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sm0OMK184dgufFKJqQ+/m4mkSqzPp62A60eSxtjusgGAlMSJptvpIQUoKH2N+mjMW/8FFPHfLHHBOPT/y5hkOwqlGjHO2n29wSHHkBcgsdY+DWrPZ0JD9JiILoi586sxEn8OqCQMVYF8RtEHgc79Q9TBvcggJ7xb0JDqFTk0M0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=YU9x/v7T; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-53a007743e7so5497568e87.1
        for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 08:37:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1729525070; x=1730129870; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9SZe6zG9rMtti3pHsV1rKUUqXjcUGY1EE3gWa9PO/mg=;
        b=YU9x/v7TZPETQ4gOmhdjaBmZlXqmRV13eKJloiVpzpUfc5S2B9IMS5Iwt5dZh7h5wm
         gnR7NIlh8b3l+f7AJONhhNj2PIdQOmCpi5TPH0xW3FC7NBWx0S+y4SnYQOsD52L70JTT
         IKJYH4x/A7ECibv1H9JmytnrQF6gt5WxNiZq0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729525070; x=1730129870;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9SZe6zG9rMtti3pHsV1rKUUqXjcUGY1EE3gWa9PO/mg=;
        b=ZgI2aztpoabHaOFOfOZm+J96EDtxt0nwC75vBxFqmrivsIctyCFU0mXrb85zycrbfl
         AaHKF3HZFZ4eukBCt2i/6MEmtPKVhsE1elZdFmaVGzBhJaJSY9iWY92pzhHsmnpwZ0Gn
         EfINjRc4bM0A65ht82IorhrAoJsvJ3y/uXu9h7ozzVcqj496zLH1Wr0Vz0Cwe3HAi2YW
         2Y2bl1PLq2EoILRiKwm2YG/HJ+IAklcoAaHd2UjkUaj/bGlyGiFcfFP2PShk940mev/d
         4a/Z4ZNfLfkxmHkxitBP7LJBOGZvRANIJJD/8Go3Pi1ytfhNyF9ALSxKpQE76RJgaDco
         ambA==
X-Forwarded-Encrypted: i=1; AJvYcCVkUqu2d04k4VFgWUbMSePS8SX3RumfZPOyjxGIMEVX+Ri7IJ0Xkv+NvpgkWWFhRYgCz36fiAcIHCLf@vger.kernel.org
X-Gm-Message-State: AOJu0Yxx9F7LMN104TFtA5767LifSb/W+SYhVvqZjfa3K0SvNuUdCu5A
	ecvJI8SlKsJtZ4p/6vm/IaJFgPsFzhYum0VQxzjxEO+A0Q9IpRZIlVR1so/5VjeB48799ZpToMO
	d2A==
X-Google-Smtp-Source: AGHT+IE+D+it57eHtjO4YZHmBIzwWBKhIc/JfI0w+6Br3OCdArHsEC5QykXgPfLDCHNqOcVNr1+NgA==
X-Received: by 2002:a05:6512:1598:b0:536:54c2:fb7c with SMTP id 2adb3069b0e04-53a154a23e0mr5728479e87.25.1729525069782;
        Mon, 21 Oct 2024 08:37:49 -0700 (PDT)
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com. [209.85.208.169])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a2209f6a9sm508208e87.0.2024.10.21.08.37.48
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Oct 2024 08:37:48 -0700 (PDT)
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2fb501492ccso46103631fa.2
        for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 08:37:48 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCV00xEGCJKBDS/TfMCU7HS1fDhYl302f5EQJxSVpodKVfpgPAoGbzff+e2LkjUVvdhTGc6h8+tTBf9u@vger.kernel.org
X-Received: by 2002:a05:6512:b89:b0:539:e98c:c33b with SMTP id
 2adb3069b0e04-53a154fa775mr6367998e87.41.1729525068227; Mon, 21 Oct 2024
 08:37:48 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241018020815.3098263-2-charles.goodix@gmail.com>
 <CAD=FV=UFrk4QCxWzV9zUZnjhwiFf22Fji5KH83svdwba2mPVBA@mail.gmail.com>
 <ZxMfu4yxk961mZWB@ux-UP-WHL01> <fbde8a3a-3adc-4c1a-8529-fde0fa149c8e@kernel.org>
In-Reply-To: <fbde8a3a-3adc-4c1a-8529-fde0fa149c8e@kernel.org>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 21 Oct 2024 08:37:32 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VphXewyk_mpGHUZKw8_aK8HnH8T-YumwM70eyz22S+Aw@mail.gmail.com>
Message-ID: <CAD=FV=VphXewyk_mpGHUZKw8_aK8HnH8T-YumwM70eyz22S+Aw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: input: Goodix SPI HID Touchscreen
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Charles Wang <charles.goodix@gmail.com>, dmitry.torokhov@gmail.com, 
	hbarnor@chromium.org, conor.dooley@microchip.com, jikos@kernel.org, 
	bentiss@kernel.org, linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Oct 21, 2024 at 2:43=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 19/10/2024 04:55, Charles Wang wrote:
> > Hi Doug
> >
> > On Fri, Oct 18, 2024 at 01:48:56PM -0700, Doug Anderson wrote:
> >>
> >> On Thu, Oct 17, 2024 at 7:09=E2=80=AFPM Charles Wang <charles.goodix@g=
mail.com> wrote:
> >>>
> >>> The Goodix GT7986U touch controller report touch data according to th=
e
> >>> HID protocol through the SPI bus. However, it is incompatible with
> >>> Microsoft's HID-over-SPI protocol.
> >>>
> >>> Signed-off-by: Charles Wang <charles.goodix@gmail.com>
> >>> ---
> >>>  .../bindings/input/goodix,gt7375p.yaml        | 68 ++++++++++++++++-=
--
> >>>  1 file changed, 58 insertions(+), 10 deletions(-)
> >>
> >> I'm happy to let device tree folks make the call here, but IMO it
> >> would be much cleaner to just consider the I2C-connected GT7986U and
> >> the SPI-connected GT7986U to be different things and just use a
>
> Same device, you cannot have different compatibles. The way how the same
> (literally same chip) device sits on the bus is not part of the binding,
> thus no different compatibles.

I don't want to belabour the point too much, but this doesn't feel
completely black and white here.

"Same chip": a whole lot of laptops and phones all use the "same chip"
(same SoC) yet are different products. ...or you can look at the fact
that many peripherals have the same STM32 or Nuvoton chip in them but
are wildly different peripherals.

In this case, Goodix may have made an ASIC called "GT7986U" that has
some type of CPU on it that can run firmware that can talk as an I2C
device or a SPI device. This ASIC may be intended to be used as a
touchscreen controller, but fundamentally it doesn't feel that
different from an STM32. You can build different boards designs with
the "GT7986U" on it and those boards are intended to run different
firmware.

People manufacturing touch controller boards presumably put this
"GT7986U" on their touch controller board, maybe set certain
strappings telling it that it's talking over SPI or I2C or maybe just
decide which pins they're going to wire out to the board-to-board
connector on the touch controller board. A touch controller board
intended to talk over SPI may look 98% the same as a touch controller
board intended to talk over I2C, but what percentage of "sameness"
means that we need the same compatible string?

Would things be different if Goodix decided to manufacture touch
controller boards themselves and sold two SKUs: a GT7986U-S and a
GT7986U-I?

I would also note that (reading back in previous conversations) I
think Charles said that they run different firmware on the SPI vs. I2C
touch controllers. As I understand it, the firmware running on a
device can make it a different device from a device tree perspective.
The device tree does its best to describe just the hardware but it can
get fuzzy. For instance the "VID/PID" of a USB device is usually
something programmable and could be updateable by a firmware change
but we still may need to encode the VID/PID of the firmware that is
intended to run on the device in the device tree.

Anyway, I'm happy to be quiet about this and fine if folks want to
continue to work towards a "unified" binding. It makes me a little
uncomfortable that I'll still end up listed as a "maintainer" of the
unified binding because I don't totally agree with it, but I'm also
pragmatic and I'd rather have something that can land.

-Doug


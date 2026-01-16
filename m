Return-Path: <devicetree+bounces-256115-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A6F2D324C1
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 15:04:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8A0FC306B788
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 14:00:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1ACED28E571;
	Fri, 16 Jan 2026 14:00:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WeENGOUj"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBC82288C13
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 14:00:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768572009; cv=none; b=a98nxexD6HlN9VhFL0Lq3Zagsihan+Wl2wnX8I0NjuuyQpCXMpzgoEw0R5rgBkScmQ5qLU/t7Aw3eAyEgbE7JqjblzUVU1CTa2Uz1Ud6tT3BpBscNh55iE446Qg3itR1emxDI9irwb7fhjQiVg4DY6XLy9+f3GPXyQmS+Tn6tG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768572009; c=relaxed/simple;
	bh=7bJWEVQ2MAfypxWKE2dScRRpRKUpqJ0WIWhC3xalUu4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QEOiod2s6dL+aTDs74axl1B4/iXUFK8IZZxKRONkkVkBlmrzutwoDgpkmNXtt09s3qtH52mhkIyo7/bD696iMzsAXKbRKvV39cQeGX8cFCNiIdH+d8wNDzQEt+nje5ASTXTRm62RvoF18FpGsUkA8vBICH1nTkXtlYsHfETwZu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WeENGOUj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9C3DBC116C6
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 14:00:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768572008;
	bh=7bJWEVQ2MAfypxWKE2dScRRpRKUpqJ0WIWhC3xalUu4=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=WeENGOUjHHDQcddSX7OBrHH9e4TdqCWq1P9UFK+ESf+qOYrbJ3Lz57FW1NtZcbkD7
	 0fvy59W2U51B3ga8gjez+dX64vdCJyROa0ih2uNiS6mtHDQSkHXWskwkxxMbAZe8vn
	 4XSiyRNZi6Ag8jRwBETOO2f0OjsNfQe+c//Qxt7Rp56zmmk4OVi/a6QYz7yddxlBgX
	 DixLkn2fVgmdwAqyECCNthVtcQKxV9ej5QdCvrWzL1LngSvYIV3eLKEj/2qtptODfS
	 jFEQuDiiCgR5ZQg+LzCcrnteH6F5ZtWouPFgtonuy6AukAOXdX0WsTQOzAnZqnwadC
	 b2CzzWnnUfhTg==
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-78c66bdf675so19447237b3.2
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 06:00:08 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCX7jHONzGO64DHsfujBvIRnPT2ZdFYwGg8q1wPg3KXwQRek+OTg0z03xS3vFbFbISJJVAbvMEi0+2mu@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3sY/dShWTOYT7LlAy/Eh70Ga8DMRIB9ck7sxvV6flxZohgScW
	64GkApfC+wBLNAOb5BnIkz0Ffw5ZT9VbsVUh+sRH+6noMgz3lfE46sgOR9JuuhZ7Ew8yKcUwi+E
	FiGqriqzWvyzDbS/hhLs6JCHNT+sQ3Q0=
X-Received: by 2002:a05:690e:4191:b0:646:5127:ad97 with SMTP id
 956f58d0204a3-6491648f766mr2620228d50.28.1768572007984; Fri, 16 Jan 2026
 06:00:07 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260114141352.103425-1-jie.i.li@nokia.com> <CAD++jLkyTMXAE_M2JFF5jzzLZ2Z-CV89uEGh4xHopWrGoYncbA@mail.gmail.com>
 <CAO3NRJgNi88uhtN0RfbUUKPz_SSoceQyBTbScS-LV=9oYkDJqw@mail.gmail.com>
In-Reply-To: <CAO3NRJgNi88uhtN0RfbUUKPz_SSoceQyBTbScS-LV=9oYkDJqw@mail.gmail.com>
From: Linus Walleij <linusw@kernel.org>
Date: Fri, 16 Jan 2026 14:59:56 +0100
X-Gmail-Original-Message-ID: <CAD++jLmGMWjCD0gUcaJPuK0UzJa7nX1bdoVu-BA7aHAgcLTSpg@mail.gmail.com>
X-Gm-Features: AZwV_QiUpV0ivqUg5M5deIVO1VpbgT7LlJ9eZW0zRn8C-PiMRUszJpWQSiHpkvM
Message-ID: <CAD++jLmGMWjCD0gUcaJPuK0UzJa7nX1bdoVu-BA7aHAgcLTSpg@mail.gmail.com>
Subject: Re: [PATCH v1 0/2] i2c: add support for forced SDA recovery
To: =?UTF-8?B?5p2O5p2w?= <lj29312931@gmail.com>
Cc: wsa@kernel.org, linux-i2c@vger.kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, 
	linus.walleij@linaro.org, linux-kernel@vger.kernel.org, 
	Bartosz Golaszewski <brgl@kernel.org>, Linux pin control <linux-gpio@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jie,

On Thu, Jan 15, 2026 at 2:13=E2=80=AFPM =E6=9D=8E=E6=9D=B0 <lj29312931@gmai=
l.com> wrote:

> Even if FLAG_OPEN_DRAIN is set, the function falls back to
> gc->get_direction() if the FLAG_IS_OUT bit hasn't been established
> yet. Crucially, some ASICs do not even implement a readable direction
> bit in hardware.
>
> In many true open-drain hardware implementations, a line driven "high"
> (high-impedance) is physically reported as an Input by the hardware
> register.

If this is the actual problem, then this is a Linux problem and not somethi=
ng
that should be solved by adding new flags to the OS-neutral device tree.
So we can immediately stop trying to add stuff to device tree for this.

What you would have to do is to augment the driver framework and
code in Linux to deal with open drain modes better.

> The function returns 1 because the line is currently high/floating or
> the hardware lacks direction reporting.
>
> The I2C core then assumes the pin is "Input-only" and skips the
> assignment of bri->set_sda.
>
> Bus recovery becomes impossible even though the hardware is fully
> capable of driving the line low.

So you need to think about what the framework needs to provide
for the I2C recovery code to realize this line is open drain and
can actually be driven high and low.

You can't just rely on gpiod_get_direction() to be the only thing
that will ever be provided just because it looks like that today.

For example: if <linux/gpio/consumer.h> would provide
gpiod_is_single_ended() (meaning it is open drain or open source)
I think you could use this instead of special "force" flags.

So implement something like that in the gpiolib code and
headers instead. This avoid hacks like random DT flags.

If the right open drain or open source flags are set on the line
in the device tree then the gpiolib knows this and then you know
you can also actively drive these lines and all you need is
a way to query it.

Yours,
Linus Walleij


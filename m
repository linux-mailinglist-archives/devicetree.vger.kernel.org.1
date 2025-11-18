Return-Path: <devicetree+bounces-240003-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 68A70C6BE64
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 23:54:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3E2424E04EC
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 22:54:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B40B2EA46B;
	Tue, 18 Nov 2025 22:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PisXwAbO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 798DE2BE62E
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 22:54:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763506473; cv=none; b=q0XGiQhxeiBioI6p/P2LLrW9jB5fLLJEETxXouUO9+X9+vpxmxh4fRuLr7KsvdsuFY03SMtam0WqHnqsgcVlSR/p4eXAG0DYK1fjrzvO07MKpU+BXaUMs1A4B32g2sMruQsfzS4t003BAd0fMNYbg31pyVBjJbucAyZqeOKhd14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763506473; c=relaxed/simple;
	bh=LLhZvi0meCVMeQgXAgRdSPpGwpb/EWiwKMWyk95NYMI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Yw83b1KDc+SAZCF4x9kBo4P+NjeZOJgfKxkXn6c0R2kTwwmcfNXVKfMqWbhaoJmSg7vfTWDNQP4ChoZBpW9UZ7o8ztkfZExBFUGbFQ8SWzNQ33S8jkOCtBkLuegDWDnUkDOJ7vsl6f7AdkbBFSZvUoAkpqSVeqxjOCZbkftbqEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PisXwAbO; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-594270ec7f9so5568919e87.3
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 14:54:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763506469; x=1764111269; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mFEslnX5OR/tQTPRQKyOAUirMOoHygQmu7S/WruwlpE=;
        b=PisXwAbOhg+H8X/crJgkyMEVl6oGFTJNJZDrOnYfG0S9XVT8iQNS8cjJnO+MfcWyj3
         KhBbi7CrHMVLLwtPijCU26V/C4oo6cPPCxlFVe1pl9YTPvLAW/rDu8oZxFvOxMEjHYxK
         fCgUCdTuCecfccKjrQQR8Q4zTszhdcWAvkM5JfUtP/L0+fMKeUl24NvNA+dd6DyyPpb/
         59W4BLX/zFD8wVzAXygbb4w7JPBMiM0ksVa5YDfl8ZKLqguYzpqRLC6HL1/C7dyu17E1
         eNhVEYgSlV0tw2EVM56wTwFldeKcqajkO+NcX379lgvjxWEOZXRDXQ38bPEiafXERlRi
         dXGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763506469; x=1764111269;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mFEslnX5OR/tQTPRQKyOAUirMOoHygQmu7S/WruwlpE=;
        b=l1B6TBBpwiLBvTNZDbCHHOfXEOgljAKVlcd/Bb4EIwzLSyaTi6VXTF3OjesVHFmSqN
         Tvik0nvdAuk1uJT2nArCAgWF0RR2bh7eG930ygnG4ira1sTYndvtF1p0w2/OIOLgZ7aC
         XIm6+AABJW6VSy0cni2YgBZuhfYv9iGRkuil7qBHDjT0Qf7VgoBI+DFm1taKZnfjEtn6
         yneB6jTrMEucrfhQrJw6iI1BKYm9sIF29Skn36v4wDl9b7bmd4cvxB2Oe28lQN1qRzDI
         mjslQW1WY2PE9br9atNKJviNGQt0a8bqpCiZ/vFUrB1OzVDqbnfWbvWfdW1BusDPpyjQ
         bBuQ==
X-Forwarded-Encrypted: i=1; AJvYcCXuhFDic/zrfwamvtQT62tS03zz/aA+Rz7t3jun0Y2n26cGitP63CI8R54oM4Wj1XZu/X7OU1ANTpHO@vger.kernel.org
X-Gm-Message-State: AOJu0YyMj3h4EC8zKtolkJMe/coaTtnzwDXAvblEUVQJ3DDSdFlguZYb
	zKh70flrzzbzxx1cJmnSrl7s0U7dBlgKCaz3tCBdtUdFx+ki86W5e4lC9iXQJBQjs5ueafilrQY
	dqIkpC43xNLaFKNUfnvBm+dLw0VvXom0tCDQ5r9emuw==
X-Gm-Gg: ASbGncuzuTp9viCbC0PNDvJr7o/iNGt4rL/2hOkYXeBAt2ADcnGhPiiMSPgf8UQqaPG
	yc4MBbxmGQPbtQmPk1jOgZdlgkgMDhPXJ7+n4hpW5JowILzzz8401JAEoSpBZ2PxtIext3QZvVJ
	Ez7hgi7fHh5RyhZUoeEJ9IfKx8ONuqs0C/cLSNntfMWbyg8SXI7qkFhMYK18ryPLur/s9T+ZfzF
	yoNkkT2FbHvDW5z1VbkgV5MG9Ac9mmPSpLS3+eSPwohe08dmrQ/xjqqhvWvilh4clQukRI=
X-Google-Smtp-Source: AGHT+IE9ROGV9vhyVbxmTa2vMAt23JCQD7kyieRaGBhmqhaspo5Oa//PQBSMVno9CBAFwv1ioBpLtLzQtaaKar+Clxc=
X-Received: by 2002:a05:6512:33c9:b0:595:8198:51ce with SMTP id
 2adb3069b0e04-5958419e6ccmr5957940e87.15.1763506469496; Tue, 18 Nov 2025
 14:54:29 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251031160710.13343-1-antoniu.miclaus@analog.com>
 <20251031160710.13343-3-antoniu.miclaus@analog.com> <CACRpkdYdtcnxyP4xVsqVK+geurEOEURqZO5eLC96YMqh1sE5Sw@mail.gmail.com>
 <3ead5d7aa5e6be2b6df3bb91b35fec37e23353f3.camel@gmail.com>
 <CACRpkdZf9D2PH5AR46Pwi8UoyfwumKS4P3ncJ=RN4iu_cJzZ5w@mail.gmail.com> <0cd7cf10d47683f22a4358635f243a2dfb6be564.camel@gmail.com>
In-Reply-To: <0cd7cf10d47683f22a4358635f243a2dfb6be564.camel@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 18 Nov 2025 23:54:17 +0100
X-Gm-Features: AWmQ_bkcaZItZJt2y-mj9N0PnO4kP_ftuxcc-DBEyiPgOFYDOGAP2KTLLB6hcp0
Message-ID: <CACRpkdbZgxWaf7B7vwD3n-OSbt8h8vGKQ_CmB_SNjDG6aXHayA@mail.gmail.com>
Subject: Re: [PATCH 2/2] gpio: adg1712: add driver support
To: =?UTF-8?B?TnVubyBTw6E=?= <noname.nuno@gmail.com>
Cc: Antoniu Miclaus <antoniu.miclaus@analog.com>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 11, 2025 at 5:01=E2=80=AFPM Nuno S=C3=A1 <noname.nuno@gmail.com=
> wrote:

[Me]
>> - Implement .set_config() and implement the generic pin
>>   control property PIN_CONFIG_OUTPUT_ENABLE as 1
>>   to switch "on" and 0 for switch "off".
>>   See include/linux/pinctrl/pinconf-generic.h

> The above makes sense to me. I'll let Antoniu take it from here and check=
 if
> the above fits the usecases he is aware of. Not sure if it makes sense fo=
r a piece
> of HW like this but if the usecase is for userspace to control the on/off=
 states,
> then I guess we would need .get() and .set(). Or some kind of "frontend" =
driver
> making use of the consumer helpers.

There is already GPIO_V2_LINE_SET_CONFIG_IOCTL
in <uapi/linux/gpio.h> so setting configs from userspace is no issue,
just use the character device.

You will need to add I think two new config flags for userspace:
GPIO_V2_LINE_FLAG_OUTPUT_ENABLE
GPIO_V2_LINE_FLAG_OUTPUT_DISABLE

And update gpio_v2_line_config_flags_to_desc_flags() in
drivers/gpio/gpiolib-cdev.c accordingly.

Then you probably want some tests or examples in libgpiod to make
sure userspace is fine. Bartosz knows all about how to do this.

Yours,
Linus Walleij


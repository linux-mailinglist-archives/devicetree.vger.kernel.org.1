Return-Path: <devicetree+bounces-146867-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A49F9A36909
	for <lists+devicetree@lfdr.de>; Sat, 15 Feb 2025 00:22:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3C494188903A
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 23:22:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4BA81FCF65;
	Fri, 14 Feb 2025 23:22:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OBDZtdyJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB2851FCD16
	for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 23:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739575355; cv=none; b=JVZptivUlrbcKVDsoJ+P3IP6O7UnmqMPfABH83eeXRBNK2kpmKoYvGTfk8ADX3DdYGqm1nxF9XWgQSDSahOkDjA26bVn5wHVUBlPBEzLx7MdsN+wxXhC7cuVnqqi2bugltf6cpStRHcKdsqknq/ldE/2uZjUd1GkGWPoBftO/Xg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739575355; c=relaxed/simple;
	bh=pPXxk7x2My9xLVR9K8CXlSChtd6DwTCfsKgijzf+gsE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ucUsHAgapofZ1jY4z76qYrEegbl75VBuKntdp52+wORqtPl974fSmmGtGyti6nWpjlb3UgrgmRFWIJbNxq/qTgS48vydmG6GodSjN437O24hKk0CDEnmU0+py6WhLGlkyo83BdJv2vBHlA82NonlgNohXsQR/yoOnYysQm75EH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OBDZtdyJ; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-30761be8fa7so26406971fa.2
        for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 15:22:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739575352; x=1740180152; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pPXxk7x2My9xLVR9K8CXlSChtd6DwTCfsKgijzf+gsE=;
        b=OBDZtdyJ4d/E+ur1M3Tgx2Qw/mNwPFaYwJ38XVG+zU+YDoK8xrPe94knh2OzVjdgt9
         zKV8+BuiVeb8mjW+fG2v6Iiwey5cK2PATaFGf1ICCB3XOj8kWWqmJG3/8U5i/Oglrkpj
         jrOAhsrSxu0vtvWR6qeroXIVLocievGEBe1OwfjkTMPCvUudmZYnxPtrfmS6JuLq+frZ
         vYhEzB35RaNTJlyBfESrMIWxwRWo1GU31MMCx+3j3HRAUbbhkgFQzYxAO7CF4YhDiK1q
         5XboGfcCyPrYH5S9ZeQzBBVcYAm+kwi/rMotsmVd/uFAuUIN73Ze+zTIIf+vhouWLUEq
         R3tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739575352; x=1740180152;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pPXxk7x2My9xLVR9K8CXlSChtd6DwTCfsKgijzf+gsE=;
        b=h6Bm3Bp2BEyTmeyuGSYZKsTzeodCwAqbRx0nKgDQR3cZusppnytb2rLH0g3ijcpVaQ
         g8hy2rWyAGcE7e+fLxQg2q7XiWgMe/CVqieAc9A6nd954wrBQo6GAkjiFpJmX6vOm61R
         CTI+go7r8HMN3od0Tmcefszb5sb2pShhuR78ZRnT1vMtLrRlc1YCEC0AUSsG92YpdMOl
         WUQORbs3XkV6tFXikROvK2pf4kKxcVYld6oW/eaKWbR7gLkqxdEktf4Ac9FBU8dUcR5q
         KyNuLXUqiGVJLJek9rZVRYTsnwJ9d2la2ny6lP/AnUnKDXWsvRhax9F0GONvLt80wP+V
         BX5g==
X-Forwarded-Encrypted: i=1; AJvYcCVx8VgyPheS4vc/Szwl50vqOH07sQvKCBrbBh6uvOqL5ED0s9rqwGscSUqo9oP9y3RJq8TduZhrNvBu@vger.kernel.org
X-Gm-Message-State: AOJu0YzSZsiJLZExwpCbc2TzbQxt3FqWN24pl1a0U0+BoaF4s0p5nmX6
	QD0VyDN3dHqJ9eCOOOl85UmjvSe41x1EuBZi10bHs2nq4++mT3bItSZuCxNKX2ElRkNzhrJyYJu
	Z9kG/1NT208aZn/N+VYfhB+E3IxbBofIfBL2w1A==
X-Gm-Gg: ASbGnctcdQvFA7IOm7UoymE/jUmtsSY9GuyDJFbl7y1nOl4xM/WGmQV5KacjKWN4xXi
	07xDMyw8Z4QKiaTtP1OO7u+oPfWyLVYMsdWkbNd1t0OCDmY5Z94M80+I4Kk4dktOxASW8Z5qj
X-Google-Smtp-Source: AGHT+IFCZppwGEdjNtyl7ODyKVY01soCR8dNMEESTZbrHvR4pUct3wzFqBQ7B0wq3Q534KzSfMqIBbfBb/GCa/7i7Z0=
X-Received: by 2002:a2e:9397:0:b0:308:f860:7e8 with SMTP id
 38308e7fff4ca-30927a63f50mr4179131fa.20.1739575351788; Fri, 14 Feb 2025
 15:22:31 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250213-for_upstream-v2-0-ec4eff3b3cd5@analog.com>
 <20250213-for_upstream-v2-2-ec4eff3b3cd5@analog.com> <CACRpkdZR8X17Bn-i2anqjxf0Gk60V175F7Xfwytkhy7_K+LsSA@mail.gmail.com>
 <880631da17a6d8ed4afe5a8c453fd4f7d0e4fca5.camel@gmail.com>
In-Reply-To: <880631da17a6d8ed4afe5a8c453fd4f7d0e4fca5.camel@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 15 Feb 2025 00:22:20 +0100
X-Gm-Features: AWEUYZlCgILVTBH640MzYpGgtGlpknzKmD0qMEIE1z0T6Iw6f5ZqTnHVDhruggg
Message-ID: <CACRpkda+CDRMYKmjw7kewenkteLhPYb040E4B=ZG6pgdy=65pg@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] gpio: gpio-adg1414: New driver
To: =?UTF-8?B?TnVubyBTw6E=?= <noname.nuno@gmail.com>, 
	Jonathan Cameron <jic23@kernel.org>
Cc: Kim Seer Paller <kimseer.paller@analog.com>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-iio <linux-iio@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Let's check with Jonathan Cameron (IIO maintainer) on this as well.
He might have ideas.

For reference, the datasheet:
https://www.analog.com/media/en/technical-documentation/data-sheets/adg1414=
.pdf

(By the way: add the datasheet to a special Datasheet: tag in the
commit please!)

On Fri, Feb 14, 2025 at 2:17=E2=80=AFPM Nuno S=C3=A1 <noname.nuno@gmail.com=
> wrote:
> On Fri, 2025-02-14 at 00:25 +0100, Linus Walleij wrote:

> > Now, the kernel does not have switch subsystem I think,
> > so this is something like a special case, so we might be
> > compelled to make an exception, if the users will all be in
>
> Exactly, since we could not find anything, the best fit seemed like the g=
pio
> subsystem. I was the one suggesting it since a new subsystem for a simple=
 device
> like this looked excessive. If we had more devices that would fit such a =
class
> of devices, maybe it would make more sense to start thinking on such a
> subsystem?
>
> > say userspace and make use of this switch for factory lines
> > or similar.
>
> Kim should know better again (about usecases) but I would also assume thi=
s is
> for userspace use.

Actually the GPIO documentation Documentation/driver-api/gpio/using-gpio.rs=
t
even talks about this for userspace use cases:

"The userspace ABI is intended for one-off deployments. Examples are protot=
ypes,
factory lines, maker community projects, workshop specimen, production tool=
s,
industrial automation, PLC-type use cases, door controllers, in short a pie=
ce
of specialized equipment that is not produced by the numbers, requiring
operators to have a deep knowledge of the equipment and knows about the
software-hardware interface to be set up. They should not have a natural fi=
t
to any existing kernel subsystem and not be a good fit for an operating sys=
tem,
because of not being reusable or abstract enough, or involving a lot of non
computer hardware related policy."

If this is the usecase, like controlling an external switch for such things=
,
using the GPIO subsystem might actually be reasonable in my opinion,
(even if the DT bindings end up in their own category).

If the switches control stuff related to computer machinery (i.e. integrate=
d
into a laptop to switch on/off the fans...) then no. So it depends on how
and where it will be used.

Yours,
Linus Walleij


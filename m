Return-Path: <devicetree+bounces-247211-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1236FCC5B07
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 02:23:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 832AE300F333
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 01:23:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCB83242D95;
	Wed, 17 Dec 2025 01:23:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="gi2PTOfx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC0F8230BDB
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 01:23:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765934598; cv=none; b=cJYUuqMyV6S00wUK9zdtErFwrvJ8x6XiYXjI0ZY2QK2NR7r8FPPhDcYMYsoSZQm00ND+mJOva3+DZrr95vBI8DZNNSGGM4uEaHBUVHrToQ6fMHjZqqt5M6Swrorjn5ZL0wJsH9sudujr5rsBNsJsrfaqctNoAGJ9g86jPtKyxjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765934598; c=relaxed/simple;
	bh=yXSiB1Xb8XhlVaTSYdRfhglLs0Rb0EeSwWMMmodjhtQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EkwXqTlpd46SshxrE4lRc35nMc7nkRphRpfji67p/f7M/sKPeZZ6qPHiaa4WdPww0WxVL66RsoWwpCBVEtC8Durx8yh3f1A7lh2wOyr8/DyV+kAFIE70EKPqjCnk/M4/kSGjCA88lWJsv5wo9lbIG4kTY8VkW1EoRqgBQPMqNek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=gi2PTOfx; arc=none smtp.client-ip=209.85.128.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-787da30c53dso53082237b3.0
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 17:23:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1765934596; x=1766539396; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=20u+Yo9zixTpysc9eprKHwVlPvXZQniYnu0FOsSjV+s=;
        b=gi2PTOfxX8fp+GlFyxwT+lOSc/lShK48U2FTZo8mALq3AQdKWXb+a1UJsfaskFFY+I
         W/E26XWV9dwqHUc1O3njtyjpyzjgd3eSIfEUPIy15Qkhby6fcW0HLvjlQxKpJJftFUFq
         ANEQgFbr/VBe4hDgkaSnl5VMHGzjQ/jc0lhUor6NpwbN3bJx0uaJWxglbG1NkqX3DVLb
         +Takl/LDMKAOfR3AXy4uRh5d0tl7pT622iz3yHWNEYLOidHClCOR3/8MOSuxq8hScwjV
         a8A41OUd9HCvYDM4YZspFd143xy1rYiMtV+IgrrJTpqCgFVy6qcDwAfbyGksf9lEKqH9
         N0xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765934596; x=1766539396;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=20u+Yo9zixTpysc9eprKHwVlPvXZQniYnu0FOsSjV+s=;
        b=p8NkqyOjdEYvEiWVJXTc4Q3u+vWmID1GDJguYwT8T3puOxVWNQugzNnr2sydsRs+tC
         9ZThDYa9Js4lM99tf3adu1W3KrHLlCmgnUShQZboSXcB3JV8gF4Z7uAN3a4aXZ8Vy17b
         7ALy4L5qACWBwsrQzLcBg89yCljNT9zP/py++UDcYs5ur8x95U1xOZ7tHbM4KcfBXWgD
         hpZnngBPwo5I9co1FgKTJNsRCkTAUaUAQGQf4o5xjVED9DAoOp+TfWdNDiG6auQGLTUp
         Ps3D68syiSU/Q+olllwy7ASzLyWVn0iEuX/jt8uzCS27CjlOWa2ejAv7dzX0rAKCUEjf
         eeqA==
X-Forwarded-Encrypted: i=1; AJvYcCW8YbXCflsLpAJka/78r5qIbmGTd4Qz2NYj+n+o9j5xXF/8A/njrlIayC9NS7ZhEtym85aiDa53/f45@vger.kernel.org
X-Gm-Message-State: AOJu0YyBfg2BD24oNNCzPnwSJVEOGErdhENmaMQA0a9bDMMziYQGj6JC
	7HKiA0d1xkr73GTJGHsQxgXBJ6QZYHJ75JqKjh6nT964uyv4RuCg/iDlnv0iYZ3xWwQgfoR6rYP
	GSQtW1Y22IGWZgmTbVLFOYsw0QFH5AwPSW98bcXZ3Wg==
X-Gm-Gg: AY/fxX7YgtJ2maA0w8PW6BAVs2rsZxt91NpqvQii7gCdpyfz5SpEuKTZtDdegS38JfE
	8ArzQR60AtO6HmQ5DTCjZ1RUvDn8CQ3qA0Blht3wv1E8OZ64F3x9yfMy3WyG9OR3asuvTLSjP8t
	wY8IKi7CUu6rrB6ZbtVMqs5NVRTuE8h4J4EIV0DYh0PV2R3YHgpk7nyH7LB/2cwR4GsJ0dPEbPS
	eJ00ZdTe+s6XNYW1n10B/7vPwgYhAFXo9FRoHxK8LwqLLh8uFSwkloZT6NFA+DmZFFQSTQp8o0R
	MzFAL3Crl1ceeLGKkELkPo6+dTksp9b+YjMzMVGag8if
X-Google-Smtp-Source: AGHT+IFO05qMq19SSBI4gVmifTjzTpnb7vNwVZXOZr/LC4PrjB13iviO83n7Ke+Aymi58gBSK3b0Bq+DG4yndiKAVvo=
X-Received: by 2002:a05:690e:191d:b0:641:f5bc:6961 with SMTP id
 956f58d0204a3-64555664287mr10955876d50.77.1765934595707; Tue, 16 Dec 2025
 17:23:15 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251216-k3-basic-dt-v1-0-a0d256c9dc92@riscstar.com>
 <20251216-k3-basic-dt-v1-6-a0d256c9dc92@riscstar.com> <20251216150530-GYD1903981@gentoo.org>
 <20251216-wing-squander-2fed378d3035@spud>
In-Reply-To: <20251216-wing-squander-2fed378d3035@spud>
From: Guodong Xu <guodong@riscstar.com>
Date: Wed, 17 Dec 2025 09:23:03 +0800
X-Gm-Features: AQt7F2pscWPGj2PRq6RScSaqgPax4HcbFJUbL6PI8fgs-Pvj3uUzlMNApnCVER8
Message-ID: <CAH1PCMb+Y6zUCpUNdMYfB3trKuEUsSKQ3kCn+wjoj2UA4o_CPw@mail.gmail.com>
Subject: Re: [PATCH 6/8] dt-bindings: riscv: spacemit: add K3 and Pico-ITX
 board bindings
To: Conor Dooley <conor@kernel.org>
Cc: Yixun Lan <dlan@gentoo.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Samuel Holland <samuel.holland@sifive.com>, 
	Anup Patel <anup@brainfault.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Jiri Slaby <jirislaby@kernel.org>, Lubomir Rintel <lkundrak@v3.sk>, Yangyu Chen <cyy@cyyself.name>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@sifive.com>, 
	Heinrich Schuchardt <xypron.glpk@gmx.de>, Kevin Meng Zhang <zhangmeng.kevin@linux.spacemit.com>, 
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, spacemit@lists.linux.dev, 
	linux-serial@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 17, 2025 at 12:33=E2=80=AFAM Conor Dooley <conor@kernel.org> wr=
ote:
>
> On Tue, Dec 16, 2025 at 11:05:30PM +0800, Yixun Lan wrote:
> > Hi Guodong,
> >
> > On 21:32 Tue 16 Dec     , Guodong Xu wrote:
> > > Add DT binding documentation for the SpacemiT K3 SoC and the board Pi=
co-ITX
> > > which is a 2.5-inch single-board computer.
> > >
> > > Signed-off-by: Guodong Xu <guodong@riscstar.com>
> > > ---
> > >  Documentation/devicetree/bindings/riscv/spacemit.yaml | 6 +++++-
> > >  1 file changed, 5 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/Documentation/devicetree/bindings/riscv/spacemit.yaml b/=
Documentation/devicetree/bindings/riscv/spacemit.yaml
> > > index 9c49482002f768cd0cc59be6db02659a43fa31ce..003b0bc1539b621e39172=
a0565dfea1274cbc8b8 100644
> > > --- a/Documentation/devicetree/bindings/riscv/spacemit.yaml
> > > +++ b/Documentation/devicetree/bindings/riscv/spacemit.yaml
> > > @@ -8,7 +8,8 @@ title: SpacemiT SoC-based boards
> > >
> > >  maintainers:
> > >    - Yangyu Chen <cyy@cyyself.name>
> > > -  - Yixun Lan <dlan@gentoo.org>
> > > +  - Yixun Lan   <dlan@gentoo.org>
> > > +  - Guodong Xu  <guodong@riscstar.com>
> > please simply use "one blank space" here, it's more consistent,
> > trying to align them like this would result in even worse situation..
> >
> > - only email addresses got aligned while not user names (first, second
> >   name?)
> > - adding another maintainer in future may break the alignment (if long
> >   name)
>
> Yeah, these are never aligned. Just do one space gap.

Thanks Yixun, Conor. I will fix that.

-Guodong


Return-Path: <devicetree+bounces-189772-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AF469AE9753
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 09:58:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BFF663A5225
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 07:58:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27C64253350;
	Thu, 26 Jun 2025 07:58:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="irGrB+hF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A84B23E33A
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 07:58:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750924711; cv=none; b=o7yaPkv1kgp3iZYWNEDdG/lDJNxJiAMAmsB9CMUPe9ueBhG4m3jRSqnDph0cpVZf3qZLzBrUha8QH8yV4XrzpOiILSPeRxhsaZ6HA2QJRspc/7c0CF8Is+8J0RoQ8Sgi+0yvLvl6ydSBRvxdgX1ZX7L9uIZMBkDWjoe12xGgF3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750924711; c=relaxed/simple;
	bh=U956XuvvizaJ2RMiBSnvmF0Rf8XG8VxMKnFJYt86iug=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dX/3GVkwMeRyw0MA2xm/74ezpTMYswkwLqfiPZYnQAlCZUvvrnAxbw7aRvcM9uEeXnW79I0+nRBfi4j193+qa3dNq2ybBBA1la4yCEY4uAgTrcGHYzURuSv8ST/DvqxA9pSChDaw+I0w3lgkFb+VwetJBmYQ4NX4c5wvO+yh2X4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=irGrB+hF; arc=none smtp.client-ip=209.85.128.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-70a57a8ffc3so7866577b3.0
        for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 00:58:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1750924708; x=1751529508; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aZ/4DEN1eZvLVjrRd2IQhI+AZUokpaevmaxAHJOdK2Y=;
        b=irGrB+hFB6dFJUbmHrzFQlswqrkXcWEcZpxOw0ern0ks7RkVk0gqhLyt/8OEHWnj3x
         NJOtLGTnU9Pw3BQy8vJkNzJvPqaVl1vWyuP1v/4ImIN6aHv+0Soxs2JOXcMrtvH6pcF7
         9QsoWU21SCdGJxlinHvgSgJu3ONXgOhr2nvJ6QzJQUjPfGmQr6VK5Y4erMKz6HvQtSvo
         PAeK+3vzBi/q/TzrhEd/KmLqo9TICOGvghgJ7X1+vr7wQwycRZ/y16Wg/aHZPudX4ZrS
         8h2VRhLPWkfKbxUhWvfI4o1HmckES642QzKQ51Z9ZoZaL92vN8ksfuC0niNzeYUurZJH
         56hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750924708; x=1751529508;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aZ/4DEN1eZvLVjrRd2IQhI+AZUokpaevmaxAHJOdK2Y=;
        b=ZrqRowbXrBJoHmpEiuj0hGmKwzWwQCda+22fCapp8FgsyVyHlRV984+8PEwUnd0Axl
         HYxtluKn0AGjMrBvR5J2cO3vCCcOjpxYEAbP3RitVVUqXY5y/Al3JVY4U8eZnsbtfZsk
         FYjq83lEXUIM/4yByfsXemHGyZ5I0NsS/ymPW4vVozEH0zYd5LoGv64rqDHKswYDh24X
         VaAk2nwlhTB+DjoXsdEKoQ9+KFeP476vtokd7Bn+LrNX8t3XSF+xPRRdSgPHseKsEtzG
         92Ui/nL0S3InzdbQnObje95pVay22aXagAVgW+X0I4SLfDfvllibXgVAImk9etZImffr
         CB3A==
X-Forwarded-Encrypted: i=1; AJvYcCXomruxtsEMEeQg24WyUjaEyB81JdmaxkbPWQE29NPkzu1oJqYJAy2y2plYV1OpFfglgmEARzZ6nB2P@vger.kernel.org
X-Gm-Message-State: AOJu0YzqAD8APYmWJzDiUuJjy52t73igE8uqBBthX/Pha25VnsBGEB/x
	DEdIdhc1a5eRtuWCb8mov4iK+D3YSJ+RI8zkQJyoa2fmrn1mRF8lvsLEjEe1lJk0Bmh6TXF9mko
	qaHbfQLlhJAjmCUJ/Tkm5lr1td2AMCw9oS7gdZAecOg==
X-Gm-Gg: ASbGnctRYxzqIu+YG4GcWZ7TitwWrHRJUWwwK+JlXk2AxziBszy1GrKGIux2bNaFLbj
	p1c48FHuDmOgbWuDz9fRaQI8S85L4wffDiWqgR7CAbZsrlZ82LyoFdVeB+3L5AFLocBE1ZpsLOa
	uZ5ApTWkDvSx9IPBVYVMgWM+uxoXJrqjTweLEUH9s4BIY=
X-Google-Smtp-Source: AGHT+IEzDH0NRWqzIEote+KhgyU/fDNmW2VP0PKdVNT2yILrISQmmaVeujNnwl/coWmd3McvdKX6qUuA9VblGYbEEvI=
X-Received: by 2002:a05:690c:3391:b0:70e:2a0c:bc5 with SMTP id
 00721157ae682-71406e1ba1fmr85608977b3.38.1750924708356; Thu, 26 Jun 2025
 00:58:28 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250623-k1-dma-buses-rfc-wip-v1-0-c0144082061f@iscas.ac.cn>
 <20250623-k1-dma-buses-rfc-wip-v1-2-c0144082061f@iscas.ac.cn>
 <CAH1PCMZ1YUC9SLOSEuCL3oUhYN23UOL+kLrOk8fbJ+EG-w3Umg@mail.gmail.com> <965d5dca-72b0-47da-bd9d-efeca16db826@iscas.ac.cn>
In-Reply-To: <965d5dca-72b0-47da-bd9d-efeca16db826@iscas.ac.cn>
From: Guodong Xu <guodong@riscstar.com>
Date: Thu, 26 Jun 2025 15:58:17 +0800
X-Gm-Features: Ac12FXzAOZiKHwn50uOUxMMWJ46pZGPTTL9IzHlqGbLf3HaSvxr5iudx5ZkTgoQ
Message-ID: <CAH1PCMZp9pr3SKYroyDfY-p5X=ojY5ZPt8_m7xXLejEzH07QOA@mail.gmail.com>
Subject: Re: [PATCH 2/3] riscv: dts: spacemit: Move UARTs under dma-bus for K1
To: Vivian Wang <wangruikang@iscas.ac.cn>
Cc: Yixun Lan <dlan@gentoo.org>, Ze Huang <huangze@whut.edu.cn>, 
	Alex Elder <elder@riscstar.com>, spacemit@lists.linux.dev, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, Vivian Wang <uwu@dram.page>, 
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 25, 2025 at 11:21=E2=80=AFAM Vivian Wang <wangruikang@iscas.ac.=
cn> wrote:
>
> On 6/24/25 20:21, Guodong Xu wrote:
> > On Mon, Jun 23, 2025 at 6:04=E2=80=AFPM Vivian Wang <wangruikang@iscas.=
ac.cn> wrote:
> >> UART devices in Spacemit K1 use dma-bus DMA translations. Move these
> >> nodes under dma-bus to reflect this fact.
> ...
> >>
> >> -               sec_uart1: serial@f0612000 {
> >> -                       compatible =3D "spacemit,k1-uart", "intel,xsca=
le-uart";
> >> -                       reg =3D <0x0 0xf0612000 0x0 0x100>;
> >> -                       interrupts =3D <43>;
> >> -                       clock-frequency =3D <14857000>;
> >> -                       reg-shift =3D <2>;
> >> -                       reg-io-width =3D <4>;
> >> -                       status =3D "reserved"; /* for TEE usage */
> >> -               };
> >> -
> > Are you sure sec_uart1 should be placed under the dma_bus? Please doubl=
e
> > check. If sec_uart1 and other peripherals supported by the secure DMA
> > (base address: 0xF0600000) share the same address mapping as dma_bus, a=
nd
> > if they can be accessed by the linux kernel in some cases (as saying
> > 'reserved'), then that makes sense. If not, better not move them.
>
> Hi Guodong,
>
> I have confirmed with SpacemiT that sec_uart1 uses dram_range4, a.k.a.
> dma-bus, which is same as the rest of the UARTs.
>
> Also, sec_uart1 is usable in e.g. Linux, but only if no TEE is in use.
> Using status =3D "reserved" is the safe choice here. Platforms that do no=
t
> run a TEE (or anything similar that would disable access to the
> 0xf000_0000 to 0xffff_ffff range) and wishing to enable use of sec_uart1
> can change the status to "okay".
>

Ok, with that confirmed, I'd say this patch looks good to me.

Reviewed-by: Guodong Xu <guodong@riscstar.com>

Thanks.

> Vivian "dramforever" Wang
>


Return-Path: <devicetree+bounces-185870-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EDBACAD99F1
	for <lists+devicetree@lfdr.de>; Sat, 14 Jun 2025 05:33:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 36FF53B5F90
	for <lists+devicetree@lfdr.de>; Sat, 14 Jun 2025 03:33:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C1097E0E8;
	Sat, 14 Jun 2025 03:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="Nh2WYqgO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9EE54C85
	for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 03:33:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749872002; cv=none; b=buHLXJ+j70G4+bBN6YSHI1ZgoWdxFveGFEoV631YUBUNAp3ICnx1ub2sv7Qrp9LtolAKfmKW5sFULnacKnb3i7EVpl6DJgX2nczKqxb+3I5aJowWqDlr2mG7QzUSQHYs1gEnHEt9Pnaf74IqfX24GKadhmaMhEVk9UjH2j5Cuhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749872002; c=relaxed/simple;
	bh=5zj1CCPqCqbanv6cOh5uOvtbh/D95b0Hh1gqZskXSVE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PMYWcus8LonSlXxF9KgOQzd2tTAL58OoOQWDGdOUFNCc6m1cMbWyQRD6UUchQ46+/u3BRj3EGoi2fmO/8xHYMUNaelGm5JrL2Ri8a/OfI7i96Vq0Eu2CT3dWA48shn9F8HqkM4OYVihJpsdOb5oBezTfsYXRyVBLNDLEr7e9BDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=Nh2WYqgO; arc=none smtp.client-ip=209.85.128.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-6ff4faf858cso19278367b3.2
        for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 20:33:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1749872000; x=1750476800; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jJcrqi5pwJ9wED2HFmauPlfgqPYzc6rbhv7dX2NmqNc=;
        b=Nh2WYqgOGd+zdvSTbYg/MDff3AMkawkNu4B+RdlTQCy2QZmxd+T/WLujMmiPuOuoJN
         3w++h5wdnrNOUOwBiOjG3mi8XJW0ZtJx3F38YUIkWvS1SLjmpBfdgzlv2ns6jbEnOw9G
         J2CjT5YunT5AbZaWhRIq+LtD7DZ2BYmWcGV8ClTxuxfLl2I9D98C/LRB0fnfOV+ETSoN
         dTiE4TPxCNSYV4uSewfyhkrJKY1Lw8dSiYQtQw5ALRHQAe8AkZZ9gxkzjgbp/msN+Tyn
         IQFYjFgg/E6am66PHeLX5VAEY6GOAUhE6v/J0b1fOfvNzfU+jXGPUiPDnITkX02qy1XB
         cCfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749872000; x=1750476800;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jJcrqi5pwJ9wED2HFmauPlfgqPYzc6rbhv7dX2NmqNc=;
        b=Q+Pil/PqqGSBchCkui+dXGscBfrms3GFgcKX/rnzP1olGKh7svQmrcpsWsYah4fBX/
         aFWMbCkc0QU1JDDvSj048K8e8y8CpgIvnIh+8kB2kNf29VrxzX2HJ7ZkxAGnItjH7r3k
         kVrTEbMRl9Qxg9/JLOQmn6jUd+bhWt+TMaLjtKNJoL70Bzxg7BWRmgIu6BLBvky7dGcK
         SiFEc7mgGoyi/yeeWEiQuVfVTjaVgs8QyFW9LH2eWQ45ldGjHSBQlKoqMiVp1tiGbM+t
         ogVZrlfFoznqbb98TTNaiFczQkvYH/KYhkIkPPoqrw/ZDHJB5FZqDBs5WXe3+wZeT26Y
         UfoA==
X-Forwarded-Encrypted: i=1; AJvYcCVljCfU9YUucl8S6uN7nxMraMRE9PcA8VXy1M1rmCQZIB5O4HdjuK4VbZGe7HCSgFS1ZW3Xdgt89hP5@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0dqZse4DBqvUi3ojt3yGyPDBfG65u3x0SW0t1b+carHw6b6CQ
	hH0WfFMrtIKtv76HCWAxK3KZ5uwUXJ7K7vcxCIlSIkgyp3NLNnicgmoQanxYfkr9tfA8cdhto7y
	tn//egsDV3RiRh9OfiHzZvMJzmGdk3SfhqSl+BwKEPw==
X-Gm-Gg: ASbGncupcUaa7dxq2UqjaZZc+r3o5fDziPFDn/YCbx914eaI1f6X0BErajWkobtbzqD
	j8pdA3f5LDP0AHw679OsqHfR2w7gVQ08tbXc3mqN3W3adxyv4vKTwq5aEIUsCXUTEJoUeJlVtb4
	gnl/zzu5/lvZ4qQ32C5my4wAaGy3Or8L5uHrGpLPBEuze8
X-Google-Smtp-Source: AGHT+IH1Y42tC9WOhyorVoIVUzg4d8lEv7srElHPGs2Vyxp0TjD0IOF4Ys3G9cHs3FqdWdAWUdm5wif9bNpbqowU6iM=
X-Received: by 2002:a05:690c:892:b0:70f:6ec6:62b5 with SMTP id
 00721157ae682-7117547d163mr25767887b3.38.1749871999806; Fri, 13 Jun 2025
 20:33:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250611125723.181711-1-guodong@riscstar.com> <20250611125723.181711-6-guodong@riscstar.com>
 <2b17769e-2620-4f22-9ea5-f15d4adcb27b@dram.page> <20250613132227-GYB135173@gentoo>
In-Reply-To: <20250613132227-GYB135173@gentoo>
From: Guodong Xu <guodong@riscstar.com>
Date: Sat, 14 Jun 2025 11:33:08 +0800
X-Gm-Features: AX0GCFvaqH-7lH0Zx6WGwcqUhaG1iGpayA9xWNyPAE7sjxcXfPy8V2aaJ994Vr0
Message-ID: <CAH1PCMa8DukTxxRoWBUV22zTFnSa-4pLkZjffXO2Z9s8dtpiMg@mail.gmail.com>
Subject: Re: [PATCH 5/8] riscv: dts: spacemit: Add dma bus and PDMA node for
 K1 SoC
To: Yixun Lan <dlan@gentoo.org>
Cc: Vivian Wang <uwu@dram.page>, vkoul@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, paul.walmsley@sifive.com, palmer@dabbelt.com, 
	aou@eecs.berkeley.edu, alex@ghiti.fr, p.zabel@pengutronix.de, drew@pdp7.com, 
	emil.renner.berthing@canonical.com, inochiama@gmail.com, 
	geert+renesas@glider.be, tglx@linutronix.de, hal.feng@starfivetech.com, 
	joel@jms.id.au, duje.mihanovic@skole.hr, Ze Huang <huangze@whut.edu.cn>, 
	elder@riscstar.com, dmaengine@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	spacemit@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi, Yixun

On Fri, Jun 13, 2025 at 9:22=E2=80=AFPM Yixun Lan <dlan@gentoo.org> wrote:
>
> Hi Vivian, Guodong,
>
> On 11:06 Fri 13 Jun     , Vivian Wang wrote:
> > Hi Guodong,
> >
> > On 6/11/25 20:57, Guodong Xu wrote:
> > > <snip>
> > >
> > > -                   status =3D "disabled";
> > > +           dma_bus: bus@4 {
> > > +                   compatible =3D "simple-bus";
> > > +                   #address-cells =3D <2>;
> > > +                   #size-cells =3D <2>;
> > > +                   dma-ranges =3D <0x0 0x00000000 0x0 0x00000000 0x0=
 0x80000000>,
> > > +                                <0x1 0x00000000 0x1 0x80000000 0x3 0=
x00000000>;
> > > +                   ranges;
> > >             };
> >
> > Can the addition of dma_bus and movement of nodes under it be extracted
> > into a separate patch, and ideally, taken up by Yixun Lan without going
> > through dmaengine? Not specifically "dram_range4", but all of these
> > translations affects many devices on the SoC, including ethernet and
> > USB3. See:
> Right, we've had an offline discussion, and agreed on this - have *bus
> patches separated and let other patches depend on it.
>
> But seems Guodong failed to do this or just sent out an old version
> of the PDMA patch?

Hi, Yixun

I realized that there is some sort of discrepancy between our understanding
from the offline discussion. With the information I put in the other email
earlier today, do you still think we should submit one patch which
covers all 6 seperated memory mapping buses for k1.dtsi?

Let me know what do you think. Thank you.

BR,
Guodong

>
> >
> > https://lore.kernel.org/all/20250526-b4-k1-dwc3-v3-v4-2-63e4e525e5cb@wh=
ut.edu.cn/
> > https://lore.kernel.org/all/20250613-net-k1-emac-v1-0-cc6f9e510667@isca=
s.ac.cn/
> >
> > (I haven't put eth{0,1} under dma_bus5 because in 6.16-rc1 there is
> > none, but ideally we should fix this.)
> >
> > DMA address translation does not depend on PDMA. It would be best if we
> > get all the possible dma-ranges buses handled in one place, instead of
> > everyone moving nodes around.
> >
> I agree
>
> > @Ze Huang: This affects your "MBUS" changes as well. Please take a look=
,
> > thanks.
> >
> > >
> > >             gpio: gpio@d4019000 {
> > > @@ -792,3 +693,124 @@ pwm19: pwm@d4022c00 {
> > >             };
> > >     };
> > >  };
> > > +
> > > +&dma_bus {
> > >
> > > <snip>
> >
>
> --
> Yixun Lan (dlan)


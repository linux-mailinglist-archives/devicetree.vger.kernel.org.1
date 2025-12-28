Return-Path: <devicetree+bounces-249915-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 64C2CCE03A1
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 01:43:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0B81D301819B
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 00:43:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DE311EF39E;
	Sun, 28 Dec 2025 00:43:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="cr0pGOdP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9611E8826
	for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 00:42:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766882581; cv=none; b=ZHVKf/aC8GOJz5n3GcgeeUGdWSZKSjxxyoFLOcDEvVSB2oaIO1fnw0oyv7qGnvH/S/UQka0NMSPygpyGpu+bln3iWxQJBKjT0k7PIltUtVtXNhRUNekVB3thfMpVYa1P3TyM1ShaqkWlNcfEa7WoeilB//l5mwD25LokOfpzAcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766882581; c=relaxed/simple;
	bh=I/NRGNwB9UgcD2l6EIAjGQuseMXjDZYSzJ6ijrVYqFI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=H8+OrOR3ReNxcU/ajsYAKcSvVlxqOk3gInk2CYU2Cfe1+UjzmnyqbefZDGs2eoc0zzDxhzX/UFfl9HbcQdGRBy15nY3bZhL4mxlQl1eoO9w0WOQWUl0tLFXiFPZ+2R+rij/sJLb3abA4hfQbbCciszhLi9wPIwkvrd0izmFJ8ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=cr0pGOdP; arc=none smtp.client-ip=209.85.128.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-7900ab67562so17396357b3.0
        for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 16:42:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1766882579; x=1767487379; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zwhU6tz2IAJuOhbctHFHYJBwk5gc+cswNffBuQKQ3CU=;
        b=cr0pGOdPyYmNCvkRh2D8Pqhvnr70JqKohViM8o3VCGRSW67IY950R/sZ9W9fvyFLy6
         doX0s51KtcMiFWPaCRrsQig1srE2ij2NJ85f0gR7hlYyY0VZ+Vz42R96OatQ2xBUjMns
         YwrhrudFlHw3oXPPTfTrg9xjQN7hVUT6oKp6vuxlxowg7dop7IWmbNtrEGlbDqN60QYi
         TMPv5uKTUtMaIOo+UNSsXL1wrdEUue2xB3uG86fqDS5V7kgl7Xo57S8fVhm3XJORmrVB
         cAkB74xFRz+N/L2dIOl9rch2gFpMV4GZiamr+UCFwV4J64fMD71wLFPN+4yKC0OGoSlu
         brWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766882579; x=1767487379;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=zwhU6tz2IAJuOhbctHFHYJBwk5gc+cswNffBuQKQ3CU=;
        b=wWHlbV6fK1tyusbacBlDzxAJCWMicjfiE6l6jgNfhTMmjnGvdinDIoxN779TkBDqKX
         5Rtmw9FXL9Binl56FKSn4xvry6gpvq4j2ucpsaygfXgKnMuo4iPTVTxtUDtuCDbYYL97
         88McVGxGjxXsC+W8suWEpjq02xJmpGyK2ewsQD1HIS+rV1KzaTDxvVGFn5G3uTS6+fsr
         pLgcM1sdRjfANWV4m5q1CAiLZ+7dvvikRxN8dCOhFTwaB8Up3A71edwlErHShCT4rpxs
         j+uc4m6+sosLsAocphmDuDfpQlrVZ5S1X100QvtfPHVKOxd2osgpY4c/XM6hPqs+NwbT
         vozA==
X-Forwarded-Encrypted: i=1; AJvYcCV2sMqf301fh7GdEdJXODxgaO8cMUhK5Fy9yx+ch2z3nmmMDW8fTK7mG0L5SJRva/aTNK4aMuiCJvBr@vger.kernel.org
X-Gm-Message-State: AOJu0YyaJkwVvfsEY8CJcTZZWc1utRK2rvgxyPi7BUnsv+pEU7IXGS4z
	/HhI+5cAu+FuZvgpuNrrnIskJpxaN3fW/ZBmWtE+bB9weGBD4Li3gOxIvatpyaXro+0iFCcqLUt
	hzNIk9ukCY10EZwSbOfPonzo8J1nimOZPipdZ66RujA==
X-Gm-Gg: AY/fxX4t35zWdrYxh/TEGyqAUZK83OT+zzAp78U35lxrB/A+LUNKLVNVOp+mOJY99Kv
	UsYyfmr8jQmWY5WAGOgfwluhB81a8fKGjfhUE06M4z8eBBzfObp+qmON/vDHnntwQBuGwPsKbH4
	gUzUyJHuzN85/ESjGwjnqTgf35xb72BLGa/TWEy91SR0WHAft96lpDL+KfBMOSNmlK4wWmIrWWo
	XKrC16EWZlqy8q55PxY6XDWg9LXJuibM0flPwjQoWM9z/H9p6QJ4NH/cNZGgW3VgJIPsrXskADm
	EuOQ6iYOUeSLCSTII2q6wRuWsMvmwJFCymbN11fUhS0w+NCQz6H9A3Q=
X-Google-Smtp-Source: AGHT+IErlcXBgMih7zxAEH5xWwRllR/TKu/x3r4n41MRYEc1IKi6ZvbVG+UxUtBlusdkfkmh4FvWruwadgCeYqiXZ8Y=
X-Received: by 2002:a53:b178:0:b0:644:7712:ed72 with SMTP id
 956f58d0204a3-6466a874977mr19597372d50.43.1766882578983; Sat, 27 Dec 2025
 16:42:58 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251219-i2c-reset-v2-0-ad201a602e74@gmail.com>
 <20251219-i2c-reset-v2-2-ad201a602e74@gmail.com> <2dmrli7yzznpurg74wet4oidhljjf3csdjly2dwpyvyndhrec3@uc6ke7mep6fv>
 <CAH1PCMbGbe6MQtAucf-4W+H_G0LrvPNGyaB_OUyxqf5TF=jixg@mail.gmail.com> <zjrd3dgvcg3pxmn4455iljtugbufr4igyokdycusyhpykbzyl5@nrwgz366wm67>
In-Reply-To: <zjrd3dgvcg3pxmn4455iljtugbufr4igyokdycusyhpykbzyl5@nrwgz366wm67>
From: Guodong Xu <guodong@riscstar.com>
Date: Sun, 28 Dec 2025 08:42:47 +0800
X-Gm-Features: AQt7F2opxPHnMSK_AxzmQeemtfy8x4nXYU2M7Wsw2w8qZ6_eughd9bfR4C5SjDk
Message-ID: <CAH1PCMY9A3CO1PXo-b5_BGY13xdx3nvAqb-R28hUz1VMLzTHWQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] i2c: k1: add reset support
To: Andi Shyti <andi.shyti@kernel.org>
Cc: Encrow Thorne <jyc0019@gmail.com>, Troy Mitchell <troy.mitchell@linux.spacemit.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Yixun Lan <dlan@gentoo.org>, Philipp Zabel <p.zabel@pengutronix.de>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Troy Mitchell <troymitchell988@gmail.com>, linux-i2c@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	spacemit@lists.linux.dev, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi, Andi

On Sun, Dec 28, 2025 at 3:26=E2=80=AFAM Andi Shyti <andi.shyti@kernel.org> =
wrote:
>
> Hi Guodong,
>
> On Fri, Dec 26, 2025 at 07:38:22AM +0800, Guodong Xu wrote:
> > On Fri, Dec 26, 2025 at 5:01=E2=80=AFAM Andi Shyti <andi.shyti@kernel.o=
rg> wrote:
> > > > +     rst =3D devm_reset_control_get_optional_exclusive_deasserted(=
dev, NULL);
> > > > +     if (IS_ERR(rst))
> > > > +             return dev_err_probe(dev, PTR_ERR(rst),
> > > > +                                  "failed to acquire deasserted re=
set\n");
> > >
> > > If this is optional, why are we returning with error?
> > >
> >
> > According to include/linux/reset.h, if the requested reset is not
> > specified in the device tree, this function returns NULL instead of
> > an error. Therefore, IS_ERR(rst) will only be true for actual
> > errors (e.g probe deferral).
>
> And this is quite obvious, but you haven't answered my qestion.
>
> Why do we care of internal failures in reset? If reset fails on
> an optional reset control function why should we kill our driver?

Thanks for the clarification. I see your point now.

My reasoning is that if the resets property is explicitly listed in the
Device Tree, the driver must respect it. If the property is present but
we encounter an error (like -EPROBE_DEFER), ignoring that failure could
put the hardware in an undefined or dirty state.

> Just ignore the error and move forward as we have done until now.

I want to double-check what you mean.

I checked other drivers in drivers/i2c/busses (e.g. i2c-riic.c, i2c-mv64xxx=
.c,
i2c-designware-platdrv.c), and they seem to follow this pattern of returnin=
g
errors even for optional resets.

BR,
Guodong

>
> If the kernel is suffering from internal failures (say ENOMEM),
> it will fail anyway or, with some luck, recover.
>
> Andi


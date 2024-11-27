Return-Path: <devicetree+bounces-124962-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DB25F9DA662
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 12:01:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CA14CB29CE8
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 11:01:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E2DE1E379E;
	Wed, 27 Nov 2024 11:00:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="J02qb997"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 025431E3795
	for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 11:00:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732705255; cv=none; b=Ps6J+++oIjuKjYxL48MhCp3E9/DoSAxWt/XARr2JLUTvwLD4ENq55LvOClWX22Rl2xzMYyaU5mFTHc3f97arK3MwzeuVVvquS6AGMFH4F7D6W0YCCm6kDEJB+He0pdNZ8WWe5teOOvhvu2+WN7C1wiEBFM0wqGHwfzYaSeeZxug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732705255; c=relaxed/simple;
	bh=2K2CmkzGm31M8XLyGv7/pOA/7R0aXkI1pvoJGGT/4/g=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=K8wDH0f2SN+wzwb6YKBxld1oRCPvAxc/iuT/DA/EmHpu41iENHi3B5Z0sPWgYrBJ4FfKJBH3du/o7J+uMEL7gU+G2MHMlLItubNhjUdfjvE2/kTCS5rSsquIzbfrpfbHkuZY2zu+iW93q2NGfqJGcPQm9a0Rsok2uOQLmyF0Zto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=J02qb997; arc=none smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-oa1-f70.google.com (mail-oa1-f70.google.com [209.85.160.70])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id E1C6E402EF
	for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 11:00:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1732705250;
	bh=mosoAglVY1ZAnOADGv13gAKCAWy+sADEeedgXWjhMxc=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=J02qb997v9EGqDoniySy98e6DkuMm4oa2mFVU0SNCFaLFmtrGKXrL2RlPTnqIhsze
	 b4HraWCH9b7FoKBY7rDgPxh8w9GWCM7FckTDzOQ+djuSRso7kEt2ytSddSwUy+HBAU
	 6cpJEP3osFZHvTk0eSPqTrUpcVQL2xFKURAzjytoZXQk4km/Y9Kcot/p2Gzkd8UbIo
	 wTYFEk6AKAazuAnEgOlDN3nXFxGQSoqZQQ7nfsu9/2KLOZDYcrnDGTfDulsh7T9G1F
	 qNiLUpYUalnhcH5Xa8F9Qto7kNA0hK29Ue8mDij5EI+QC2EDaI3Goqzr3nW+yV2Hkd
	 3bNjhjUQVBSHg==
Received: by mail-oa1-f70.google.com with SMTP id 586e51a60fabf-2967f717d96so4176434fac.1
        for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 03:00:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732705249; x=1733310049;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mosoAglVY1ZAnOADGv13gAKCAWy+sADEeedgXWjhMxc=;
        b=LT/Wq4CF0Gq24ydlZ93zGHY7m9MZoWiB/dbvVY+W35rz+VmaZyYkn2ROtuALqVzyVw
         oSQtdeFzj9GrxO3wNNN/iIf0mN8uosxxC+Tv7CGqizU2cToXnpXqmrpvtU6x9vcnfoC0
         hS+s41KJbLQn0TCJkwAGT3mLHE5xYBkzUUDAmbdYrva/y4KBiWfyFo4o1CYPQ404JQtn
         +NPInwC/T1TOBbm2K8Tw8qptDpDrAAnKs96xOFhi1ayaMfuNTCe85sm29yb3BbcQjCo7
         e9pkizvSykSYl45wqFx6rLXnlN1NPx+gU/essiyEnuERQEXFZE7Ng1AFQFcxUxW7Tnr0
         C2Ww==
X-Forwarded-Encrypted: i=1; AJvYcCVu7KVdlfleREKJNUKnlFnJHaD+A+2yHH01ZxSUlZYFqP1TC0eClIMhxTuyWBn5fqAjvlXvRMG91Cso@vger.kernel.org
X-Gm-Message-State: AOJu0Yxrv5EbH8y6PRLqrmumzD5ZdspR3LXd4+Ds/dKINfM4kIX+fHLw
	qvbIem6XUOxOQXJCK5riswx9giOWsD2ZD5GnE4U0EnlGqclcPB5uJEtH2+ZB+NQYi1YhP+Q/+ef
	xt/dY8qP86AsbLIGtuqUO4WApOMUiL8KQwhTXFonqME0SdCsr+GCepIFixLVe5AP+bfO5TzWrpI
	o/xpxTRNIU/THwFpgQS4drBEKHbgmlX6Kj7dpl/rjOCwFIb989AQ==
X-Gm-Gg: ASbGncs9IidMzwZpT49hCTIk3JLkn0HNaOlvb0LonBddVdD5llB9kjcelBYfenHetRL
	gAlusGqL1llJK48TGt8wYkhHuP06oHyNOJLaGxdCwtAb5uRO9nv9rcyV4Xn9U
X-Received: by 2002:a05:6870:3308:b0:296:dd1d:ce73 with SMTP id 586e51a60fabf-29dc3a8f3e4mr2061147fac.0.1732705249256;
        Wed, 27 Nov 2024 03:00:49 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG0o2pIMw1ikbScyW4yH5U5LfEBQrUJgeVFSfiFp9KhIwhipamnH7e5phDxfaZSX86lSGZprFcwCS4lHwkMaRM=
X-Received: by 2002:a05:6870:3308:b0:296:dd1d:ce73 with SMTP id
 586e51a60fabf-29dc3a8f3e4mr2061084fac.0.1732705248834; Wed, 27 Nov 2024
 03:00:48 -0800 (PST)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 27 Nov 2024 03:00:48 -0800
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20241126075740.17419-1-e@freeshell.de>
References: <20241126075740.17419-1-e@freeshell.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Wed, 27 Nov 2024 03:00:48 -0800
Message-ID: <CAJM55Z9wWCaS+FxZ=Gg_RfXXafNEJZC1zHZoPWQ2Y9QYDf9OyA@mail.gmail.com>
Subject: Re: [PATCH v5 0/1] riscv: dts: starfive: jh7110-milkv-mars: enable
 usb0 host function
To: E Shattow <e@freeshell.de>, Jisheng Zhang <jszhang@kernel.org>
Cc: Emil Renner Berthing <kernel@esmil.dk>, Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

E Shattow wrote:
> Enable host mode JH7110 on-chip USB for Milk-V Mars by setting host mode
> and connect vbus pinctrl.
>
> This functionality depends on setting the USB over-current register to
> disable at bootloader phase, for example U-Boot:
> https://patchwork.ozlabs.org/project/uboot/patch/20241012031328.4268-6-minda.chen@starfivetech.com/

Hi E,

Ideally the JH7110 pinctrl driver would be updated, so Linux can do this itself
and doesn't need to rely on u-boot doing it. I already asked for this here:

https://lore.kernel.org/all/CAJM55Z-+Cxdebcn4MLXfQdOVhx4c2SQ+zMH8cjn-Yq35xO8g0A@mail.gmail.com/

>
> If the over-current register is not prepared for us then the result is no
> change in functional outcome with this patch applied; there is an error
> visible to the user and this additional usb configuration fails (same as
> it is now). On Milk-V Mars with four USB-A ports this applies to one of the
> ports and the remaining three VL805-connected ports via PCIe are not changed.

Thanks for the patches. I don't quite understand when you write "no change in
functional outcome with this patch applied". The USB-C port is already
configured as a peripheral, and I just tried setting up an ethernet gadget on
my VF2 running 6.12 and that works quite well. Does it not work on the Milk-V
Mars board? If it does then these patches would break that functionality.

Here is the script I used for that:
https://paste.c-net.org/BravoLonely

At the very least you'll need to explain in the commit message itself why
changing the USB-C port from peripheral mode to host mode is OK. But ideally
maybe you could make it work in OTG mode, so userspace can choose how they want
to use the port. The same goes for the PINE64 board too.

/Emil

>
> Changes since v4:
>  - Rebase on latest master
>
> Changes since v3:
>  - Rebase on linux-next/master
>  - use tabs for code indent
>
> Changes since v2:
>  - Rebase on 6.12
>
> E Shattow (1):
>   riscv: dts: starfive: jh7110-milkv-mars: enable usb0 host function
>
>  .../boot/dts/starfive/jh7110-milkv-mars.dts    | 18 +++++++++++++++++-
>  1 file changed, 17 insertions(+), 1 deletion(-)
>
> --
> 2.45.2
>


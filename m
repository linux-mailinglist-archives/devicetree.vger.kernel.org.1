Return-Path: <devicetree+bounces-128232-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DD75B9E8252
	for <lists+devicetree@lfdr.de>; Sat,  7 Dec 2024 22:44:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C61EE165471
	for <lists+devicetree@lfdr.de>; Sat,  7 Dec 2024 21:44:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AE5614F9CC;
	Sat,  7 Dec 2024 21:44:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UABWHTBV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com [209.85.160.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E4FED27E
	for <devicetree@vger.kernel.org>; Sat,  7 Dec 2024 21:44:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733607859; cv=none; b=okBWJ2BfYGe9OQzLRdQvLflpR+LcSh8CpsmQez/y+gjT3WNjzlPXqPH0kRRzj/KZ+9N+dFMd/ci+Kdn6vAdEITREmyZnLIqyQI29d0MTS1LMbIsnBc0o1DSV2rfIBZNCC4kF9g+8Yf/mUqBbgpSoMrtrc7/Hh4xyekg3DdRWRXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733607859; c=relaxed/simple;
	bh=QMhgNfIpxqQDNYdGeuQohUR1HujC9RmLTbgdOuARmEk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FM3lmyottbbPMFnmlizwxjEqODO7SWj7qpYXsxa/F6NzM2TeWtNUSAvVH45S9RHqjIsuCF46n72iXlRLuGAt+lHZflgk1COpYZDJSWJ6Q+MRQyPGrkLfZnYxBXyNj9hKhdLjcrJsWVv+2l0D9pgKm81sK1h9vFX37NsdE0JbZ2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UABWHTBV; arc=none smtp.client-ip=209.85.160.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-2967af48248so1780497fac.2
        for <devicetree@vger.kernel.org>; Sat, 07 Dec 2024 13:44:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733607857; x=1734212657; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QMhgNfIpxqQDNYdGeuQohUR1HujC9RmLTbgdOuARmEk=;
        b=UABWHTBVNBZK5Pmzk1mQKyNjlLCL9QGoQ0b29TX8DpU6+iHV/fcCKStfzVldK1XNns
         7QRfstrMsdFB/qtLgcFrj2bmkL5KF3LNncuWcvk+xEXORYKYCwqkcYEQWD3IMSlWSW3Y
         EsRhMdAUmkAO4ZSVO9M7kHx+a+fVfZMuGy+w734hxlo9a4cwLFmqW7Qd8rt4X2QzxVOB
         cG/aGrTqu92jfqlDCllpeNn+IkoWy/24E+O0YO7NI9vWsokN6ZQkHzB6wgCxB14uQgo7
         aRp3we5oY16Lh0k1/76app+pppJ1uYWRftFUMuHcynYmBZ6gxu3R9PHWA0Okdzxmc1Rd
         MTxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733607857; x=1734212657;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QMhgNfIpxqQDNYdGeuQohUR1HujC9RmLTbgdOuARmEk=;
        b=JbIB3YyJYuwtp9O5fTt/O+Z75XVm9PMdlAZg0Csc91xk580Q2r8c+WmqL+8RjbefeU
         1+Q1D9CPxtaEIdwiBoWUERf2iM0iWnmgkRTTj4hYVjZfPQxb4cHTvr0cxRyz2v2ObK//
         Cbo91EJCVhxp/DKmv5dr68FS0QinGciJ/uvNUo1z+Twls6ACOA/BWIl9381UctZFeRfF
         MQ0wGRW0wh0DwrNjOZ7LhjgK6y/1VquDANcsr+AP2U244nYFS9NWF3AmyHhk7Re5I8aU
         nnfuodnVJG5D1oW+pUQAekJCLflVGui9icqqSTkeiCL9fd02IXXMtD9Eskr21knB893s
         4sLQ==
X-Forwarded-Encrypted: i=1; AJvYcCV/AMWacYbfA+yiyZeMEQprIfOxqk/9S8fvFtog/re9yXVPntvuc0YfwAfO28zBr5nxqTtGXe6ixK2W@vger.kernel.org
X-Gm-Message-State: AOJu0YyaUdqqoJooQL49xi37J+bvxPf78bzRyQqxapv/Di5Nrx5VXJbz
	AGl+wUB8qu4H0yuMwE5d4fXWIrWIE817onfPiinLa4mx3t1LS5FDdNuMkp3Cr5rqVQksheMNaVg
	PwUxPQBEBE72WRfP0aqN+ieKHrdQ/KsXC
X-Gm-Gg: ASbGnctKkxLcIuQTNp9FtOaAb55laDT4MvEMs+oGtFav3s8IRoXt+R3KnPhC1pni6lm
	7neiCMmm0AHYULDd3DpuEfUINAB9qUh/pfsjqGsEiB2QTvOLCqS/nXjrBW+pfMQ==
X-Google-Smtp-Source: AGHT+IG8ZycjJP/pPsbMbfgV+YwZuxy2dOx7QSYHn9/CySk4CHpxsuBci2qFQrdfOORTWwrBTmMFl/OjRx4jAcP/4rg=
X-Received: by 2002:a05:6870:280d:b0:29e:5ffa:b769 with SMTP id
 586e51a60fabf-29f73860fe0mr4694069fac.29.1733607857405; Sat, 07 Dec 2024
 13:44:17 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241111045408.1922-1-honyuenkwun@gmail.com> <20241111045408.1922-7-honyuenkwun@gmail.com>
 <CAGJh8eDdj5zwENGWHHdZt8ejdVZ=d4GTNzW57rohyL2rvEA_hg@mail.gmail.com> <CALWfF7+7KSZ2UJUXgS_Pr3=xzMEyjKgZ4BPL47zkmfnM03HUqg@mail.gmail.com>
In-Reply-To: <CALWfF7+7KSZ2UJUXgS_Pr3=xzMEyjKgZ4BPL47zkmfnM03HUqg@mail.gmail.com>
From: Marco Schirrmeister <mschirrmeister@gmail.com>
Date: Sat, 7 Dec 2024 22:44:06 +0100
Message-ID: <CAGJh8eDJMXnjsZgdgsCj+jFp=0iK9kmrH88fFSXxYLevV8aV5A@mail.gmail.com>
Subject: Re: [PATCH 3/3 v3] arm64: dts: rockchip: Add Orange Pi 5 Max board
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Ondrej Jirman <megi@xff.cz>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Jimmy,

sorry for my late reply.

On Fri, Nov 15, 2024 at 5:56=E2=80=AFPM Jimmy Hon <honyuenkwun@gmail.com> w=
rote:

> If your primary focus is to only test eMMC support for the Orange Pi 5
> Max, then apply the patches on top linux-rockchip for-next.
> https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/=
log/?h=3Dfor-next
> That generated DTB should be able to run against an older kernel since
> the Orange Pi 5 Plus already works.

applying v2 patches was working fine with this kernel. But I still had
the same problem when booting, where it is stuck during hardware
initialization.
Need to check more on this and retry with the latest version.

> Also, regarding v3, I rebased on top of linux-rockchip for-next to
> include the updates for HDMI and GPU on the Orange Pi 5 Plus.
>
> For my development testing, I used Collabora's rk3588-test development
> branch, so all the needed patches were already in one place (since
> they test on a Radxa Rock 5B with the RK3588).
> https://gitlab.collabora.com/hardware-enablement/rockchip-3588/linux/-/co=
mmits/rk3588-test/?ref_type=3Dheads
>
> So for v3, I had to first cherry-pick the Orange Pi 5 Plus changes
> from linux-rockchip for-next.

I was not successful with applying the patches yet with the Collabora
branch you mentioned. I guess I did not cherry pick the right ones,
yet.
I will do some more testing to see if I can figure it out. Otherwise I
will wait until the first version is merged and test then.


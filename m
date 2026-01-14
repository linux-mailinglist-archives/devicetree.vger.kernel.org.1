Return-Path: <devicetree+bounces-254787-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BAABDD1C254
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 03:34:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4C5623016CE1
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 02:33:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2EC72FF164;
	Wed, 14 Jan 2026 02:33:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="l9SeaGpX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f52.google.com (mail-yx1-f52.google.com [74.125.224.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300FD2F4A05
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 02:33:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768358027; cv=none; b=XDHj2h4MZmfARW8tsEfvYgbRQPrNw1NnJl4wPmPqRsUNna9LglLJ082anhI54zn4iYSst2bXqsonfuFiS/ZP4j4dsJY44DGsHbQf7pJkC9ZSiTDClANNEL4ItDtpShs2CzQiKHnEWRJD0/ICGb1/0LcPXBKW03hHvFPwK3/RaEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768358027; c=relaxed/simple;
	bh=3Y2xwxnB2VY5O7Wn7NdqLZLtOkwceaDGP163hwmg6x8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tkQsCOodTq/L8Wy/MuWGH76Y/dQs1mxPlj06ZHSaEHhMxANFkAtxHhjKkmY/x8YA61jy9Jy85RMJkvs5aOmqzVHINfZqq9Af4qSF3eGiiw+l5VpUMdAa4FFdw0w/UFQk2xvOGgMVgWaVpYBEqg1faKtsDfk6PkUYSKAt7BY7tfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=l9SeaGpX; arc=none smtp.client-ip=74.125.224.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-yx1-f52.google.com with SMTP id 956f58d0204a3-64669a2ecb5so482559d50.1
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 18:33:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1768358025; x=1768962825; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QJBLmrBE8O9239tGEOrHnRxNLRDKlAcLOjCyimagURs=;
        b=l9SeaGpXNcz1fbo4zFU2Xcgud9fEn9AS5gsQm5hGrx1PuESljXqEWZ+YDjcmQypaKG
         3kZ0k1cvIPsggLAOrGgKXnMIai1pDZCBmh0a6CQ60b9skiyCht/jPNq5YSqyc+E1IBxH
         APW/vwDlD68X8rlFtChwnxhWI/urgQ9fsrtkAiqCkfYEHUGg+bYrG6v12chZ2sYm6rqm
         dUHQQiBgW29LIikoVh0rohjGnUflzvhgafjJYjExsauzkrIfDnGHbCcgbA3GX5sSML6P
         9Pjgs39AjXhUYX7tIogk3L40ksHN+TUjKb7RIKD0bCGzyrz2MLaigjrVfkCrC6EiQroo
         ht6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768358025; x=1768962825;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QJBLmrBE8O9239tGEOrHnRxNLRDKlAcLOjCyimagURs=;
        b=kg+SKbaQ0b3zMacHbvMaXBQ9fux72GdMefn/hKkM7J5Umpag++O9iBwIsVAsrulumo
         GaU9an5H84sk4ZL8D7cAOBat97XJA46ZgsMEFuTFxJzHtxJwf7+VMb4s8vb3553e9Lod
         Y1zRMQqqv/5Np7sau4rIjFglDv7VtPUA3iu9zb1IuYB60iyrZpkJDlEqSz+4ESDmxsfl
         sgw9SFzO91JqDehGnpgqRWxsA7FCwIf1N0JIbcuPAwQwXGEVRCGsq0UZXNG6Iz2zNihd
         2mTv9wJ+XINnnNliPvwhfn47HoHcw/IFTv9tdBySHWSXro4gGsfchVDR1GpFt6B/Ulbt
         XLug==
X-Forwarded-Encrypted: i=1; AJvYcCUYwzM1ouVnJQpoEIYlxkummiKM+R/kBabYt18MsPQFq/dKUCYi6Fe+3NLeic1geOP2qUFMRFcuatWK@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7cAExpu1JeBCft7/0U3FTyVLIoG9BDqU2svc2tbdrTGYkSCIy
	BMmbSrXwJOcEAOaSZ8tw2AHX/2GAD/pB9aUP7iAwfkzydtPXDDq07DdpcloVsczBz8hjpS8bw3t
	KGejmDBb3nh7l6RxebWKr6NLJxJfjTkZYtaO7BEIijw==
X-Gm-Gg: AY/fxX7uiheKYpYhA9yaZTfA1oHibqjRluqfBZLpviwzQgEfjxHu0xI42w7TnRo7HLe
	x/8/RtRIgu/8pgOPXufXUk6ziqINK97qPys1bLFFcibWNWfVebawOuoTUHFFtgFTDTfs6KPcupR
	6XaDNj9Il+wGQMCCMN0dZli0sA6mDbHWmRxKT99n3AaI3WoXrKESM9ufNEYsMkmEA/bqm+85Pwr
	vR93ff8lV18qm/jBPhLr4exr8dUxJI5jJAqNGQjuCGc0q2uJ/6jRShGyRkI7hHw3+AInSvkPla6
	v5RukOuMVTW1j534qPTCxiBYgsH61W5llEJ6Zw==
X-Received: by 2002:a05:690e:d45:b0:63e:1563:4801 with SMTP id
 956f58d0204a3-649023ff038mr916948d50.22.1768358025225; Tue, 13 Jan 2026
 18:33:45 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260113-adding-b-dtsi-v1-0-22d6e55d19df@riscstar.com>
 <20260113-adding-b-dtsi-v1-2-22d6e55d19df@riscstar.com> <20260113075339-GYA25466@gentoo.org>
In-Reply-To: <20260113075339-GYA25466@gentoo.org>
From: Guodong Xu <guodong@riscstar.com>
Date: Wed, 14 Jan 2026 10:33:34 +0800
X-Gm-Features: AZwV_QiwlJO3ZADv09NVm7VZL0Pi5fI-J1pRA-OmeKisX5gdDwuQlnWQ0Nwjwhc
Message-ID: <CAH1PCMarzrZJ072iyAQthB-i-LHFCSJ+tZLx6HcWiVcUrQeafw@mail.gmail.com>
Subject: Re: [PATCH 2/2] riscv: dts: Add "b" ISA extension to existing devicetrees
To: Conor Dooley <conor@kernel.org>, Yixun Lan <dlan@gentoo.org>
Cc: Jonathan Corbet <corbet@lwn.net>, Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
	Conor Dooley <conor.dooley@microchip.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Chen Wang <unicorn_wang@outlook.com>, 
	Inochi Amaoto <inochiama@gmail.com>, Junhui Liu <junhui.liu@pigmoral.tech>, 
	linux-doc@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	sophgo@lists.linux.dev, spacemit@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi, Conor, Yixun

On Tue, Jan 13, 2026 at 3:53=E2=80=AFPM Yixun Lan <dlan@gentoo.org> wrote:
>
> Hi Guodong,
>
>
> On 15:45 Tue 13 Jan     , Guodong Xu wrote:
> > "b" is ratified (Apr/2024) much later than its components zba/zbb/zbs
> > (Jun/2021). With "b" added into riscv/extensions.yaml, a dependency
> > checking rule is now enforced, which requires that when zba, zbb, and z=
bs
> > are all specified, "b" must be added as well. Failing to do this will
> > cause dtbs_check schema check warnings.
> >
> > According to uabi.rst, as a single-letter extension, "b" should be adde=
d
> > after "c" in canonical order.
> >
> > Update existing devicetree files to conform to this rule. Line balancin=
g
> > is performed where needed to improve readability.
> >
> > Signed-off-by: Guodong Xu <guodong@riscstar.com>
> > ---
> >  arch/riscv/boot/dts/anlogic/dr1v90.dtsi     |   5 +-
> >  arch/riscv/boot/dts/sophgo/sg2044-cpus.dtsi | 256 ++++++++++++++------=
--------
> >  arch/riscv/boot/dts/spacemit/k1.dtsi        |  32 ++--
> >  3 files changed, 147 insertions(+), 146 deletions(-)
> please have separated patch for different SoCs, so they can go via

Understand your concern.

> their own SoC tree.. thanks

Conor, is it possible to take this as one patch instead?

It fixes the same dtbs_check warnings from riscv/extensions.yaml across thr=
ee
SoCs. Keeping them together maintains readability and clear tracking, IMHO.

Happy to split if needed, but wanted to check first.

Thanks,
Guodong

>
> --
> Yixun Lan (dlan)


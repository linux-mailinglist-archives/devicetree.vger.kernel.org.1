Return-Path: <devicetree+bounces-65901-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F3758C08E7
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 03:10:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C01191C20C9D
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 01:10:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DCB313A3E7;
	Thu,  9 May 2024 01:10:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XSTna9Wq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA31254F86
	for <devicetree@vger.kernel.org>; Thu,  9 May 2024 01:10:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715217043; cv=none; b=akQ8dFOJBVRL4hdktUCg4ZPEwCLW214REm2+F2ndJ3aTaSLRr7Wjjku/SxoC8ejZ8l1YI1vJfQre/bbS8FW+mAI08P2FZoGR0/Z8mP+N3O5jo3ZGU8fsnqdA7GH7YF3YdFqGgznGi9sFh8zp28fmSyfZXuNhtrc1euFX2vqRicQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715217043; c=relaxed/simple;
	bh=5s4453ri0t/LUDdGgzWfdUHbA1UcXjk0arUA2v3BwLk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FvXQDo8fLGPgZai8SllujntN1iJ6tbKtIIYdS7fgH70gs2sJLNxVYrTvxlqNbd+XSKV/ZAAsSekudYzPl59npUNVF/TaoaNfKWUe6iuqZvxdYR16k2DUwf/RIxhww7xMTxYzQXbq7iGhVM8ZKzeQFKwxnW+6zRZzs88jasnfgMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XSTna9Wq; arc=none smtp.client-ip=209.85.128.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-620314aa1d7so3823967b3.2
        for <devicetree@vger.kernel.org>; Wed, 08 May 2024 18:10:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715217041; x=1715821841; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DNoB9hp+UBqBvM+d/hhgzdG/cm3lBfAwJf8PWfwYx8c=;
        b=XSTna9WqxPJkWzWBKu+Tmex5CPp4sdWVu7k0jRTFAzzAJG26nme/jHP2KuDiZBrjAH
         aKaDxukJ7wkUPJNnbtlDc6MQ865s4RXzJDPRDfC6d4ZJPwhVPj/gaEIVklbRAPFyiy7M
         yASgPUD/HbFqvoTJ4F0HssYTIxaqgM4W//9db6l+iT/ziPR2rDdLyND+ByP2vvt/XLtc
         b2CYzjMXVzsG2OdpClOmNbyQZKL3g7MlXFcFSFtG9GgSRotwl0FQnNB5NEvEQP8MQIxI
         fOOov3kZ6LxlAYpBSo8ab9oTQV9dktUEaa3n7b74lATPGPbVQh4KIjPtmYRmAFr4UAbj
         WhLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715217041; x=1715821841;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DNoB9hp+UBqBvM+d/hhgzdG/cm3lBfAwJf8PWfwYx8c=;
        b=f9wtm2Gd06D0Uk6bt7jHTpE4l7NaoD4hczgqJqwOggafswsSq3P1GHPaKkdu9i1ZIr
         QgVTT+wOFF1M/c43aHVFFnE5NASXvpbsX10HVSuvPmVu6SGXNsYHxnWlCo4cPIG59AEK
         7ogQEL7whtgzM7fIW0bHbB42zbHDyA93fLK5gVQ265OQB9XjNLFcOhiM2vWN0oflpoFL
         xqpCOzjapzZ1PozdxzCTmczDZ5jSn+9NEsktPVQOWdUvIZNd+EwYb4els8mBWCZeHdUI
         EWIPCd+4tro5JTkgT+bwTVkKAuxKamJjNPQI9a4vCUMHLe2HNb8LxB7B0Jn+EY4SqyIL
         6HJw==
X-Forwarded-Encrypted: i=1; AJvYcCXWg+qjp4EW1hFeSyGcVzUmm+U9KnEFHWAnYx5G9N699S0ZwexJAmZsAizKhjL+bE7RKsvgJ1181ClSCqa57qbtC5KsF7/hZOMIMA==
X-Gm-Message-State: AOJu0Yx9Q5EPSZ/NRW6PrUFuvAJESHRR9p0GGkIr/E6dL4pBIO+HPZR8
	zhT+NiqPS6Sy6TO+hino9rwGnSY+VrrtZWTCge1rFruzHxgzckPa5DI185EfwNgoMynKXohZ/Pq
	IWJkHhWoZ5rMlNxpaJp9BdZ2or9k=
X-Google-Smtp-Source: AGHT+IFWwh49cZI/Q8tBweaDC++8NhoQZwewekFVmONePoO0D7b745VQX/CxIVEkAlv4rNKhFsGGgCWBXsO79KJtqGQ=
X-Received: by 2002:a81:4fc4:0:b0:620:50e0:c32 with SMTP id
 00721157ae682-62085af01c1mr41535147b3.36.1715217040642; Wed, 08 May 2024
 18:10:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1715156107.git.zhoubinbin@loongson.cn> <d0b25dedb43c000faad5b86cd0512dc6498e7839.1715156107.git.zhoubinbin@loongson.cn>
 <20240508-startup-oblivious-d864191f524f@spud>
In-Reply-To: <20240508-startup-oblivious-d864191f524f@spud>
From: Binbin Zhou <zhoubb.aaron@gmail.com>
Date: Thu, 9 May 2024 07:10:27 +0600
Message-ID: <CAMpQs4JyLSGKVWPzej39Rq0G_Z2QmJ0S+y3bMruBm4tO-ZWq+Q@mail.gmail.com>
Subject: Re: [PATCH v1 1/2] LoongArch: dts: Add new supported device nodes to Loongson-2K0500
To: Conor Dooley <conor@kernel.org>
Cc: Binbin Zhou <zhoubinbin@loongson.cn>, Huacai Chen <chenhuacai@loongson.cn>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org, Huacai Chen <chenhuacai@kernel.org>, 
	loongson-kernel@lists.loongnix.cn, Xuerui Wang <kernel@xen0n.name>, 
	loongarch@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, May 8, 2024 at 10:26=E2=80=AFPM Conor Dooley <conor@kernel.org> wro=
te:
>
> On Wed, May 08, 2024 at 04:29:10PM +0800, Binbin Zhou wrote:
> > By now, more Loongson-2K0500 related drivers are supported, such as
> > clock controller, thermal controller, and dma controller.
> > Now we add these device nodes to the Loongson-2K0500 dts file.
> >
> > Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> > ---
> >  .../boot/dts/loongson-2k0500-ref.dts          |  4 +
> >  arch/loongarch/boot/dts/loongson-2k0500.dtsi  | 81 ++++++++++++++++++-
> >  2 files changed, 82 insertions(+), 3 deletions(-)
> >
> > diff --git a/arch/loongarch/boot/dts/loongson-2k0500-ref.dts b/arch/loo=
ngarch/boot/dts/loongson-2k0500-ref.dts
> > index 8aefb0c12672..62dad6297e82 100644
> > --- a/arch/loongarch/boot/dts/loongson-2k0500-ref.dts
> > +++ b/arch/loongarch/boot/dts/loongson-2k0500-ref.dts
> > @@ -41,6 +41,10 @@ linux,cma {
> >       };
> >  };
> >
> > +&clk {
> > +     status =3D "okay";
> > +};
>
> For most devices, doing the "disable in dtsi, enable in dts" approach is
> the right thing to do, but for things like clock-controllers or
> architectural interrupt controllers that no-one is going to disable
> since they'll not have a usable system otherwise, it's not needed.
>
Hi Conor:

Yes, as you said, it is not needed here. I will check it again.

Thanks.
Binbin

> Cheers,
> Conor.


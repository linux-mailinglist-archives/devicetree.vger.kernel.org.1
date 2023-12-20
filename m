Return-Path: <devicetree+bounces-27237-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 29ED1819BA2
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 10:46:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DABFA2836CB
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 09:46:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 933B01F602;
	Wed, 20 Dec 2023 09:45:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZrenlOcR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 409A81F5FA
	for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 09:45:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yb1-f175.google.com with SMTP id 3f1490d57ef6-db538b07865so4608666276.2
        for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 01:45:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703065557; x=1703670357; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eBKfLMfti1BppNwpdSJrkZ2wpM8VspvRDQTgGYxY7Pk=;
        b=ZrenlOcRr3AUuhNRs4qObQRtDIwnnxlP2KM/7/EUzib36mzZMwo36ZSqDXgPrU+BWT
         tmkfMriVOkp8lY2o+Cz9Zwng2gZiDq4gTKSnVW96nrbklS8Ykx2g5r5rBK/hADRDvYvD
         ehCeMXqxI44doC9Gac5ha80Ct8rOH6KJTEKkw1p8MZsdN0imSm7amLS/PDIu9UMigVMi
         Ii3s+ed62lb4WpPCcZPThdL2dtVp+PqQMmVtgiMS1njjcYpR9pk5Fh3Ujku/5/ve54NL
         +QvtuZBC6OhWHT/HCnElWyBzc1pZdy0j6LuHzfOi6gXWJdI2y5CfZQEG6vRuJuMpzga2
         txMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703065557; x=1703670357;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eBKfLMfti1BppNwpdSJrkZ2wpM8VspvRDQTgGYxY7Pk=;
        b=Sd6tuXJMPiFrje5kOu27CGKGsRijiHdHKIs+nHBzkD3Zz+DlYiJceEWOcWKzhL5h0E
         5Rqd7UqvYAVv3yWlMPx+a9F2bSkgPIrPTLrYSw0blwcMXuE4FmrVIzcVQY2a2t3trtSl
         RpEHXdHPiEReB5WsFuENJdW3h1oduBKPsX8/DIi5Y40vdotqr7DOf+kJci5RiMq/LkhG
         oA6kZr2u8G5BB726mhfP+4db2d0GuYbWllP/yqQv6s3jyEICFTjYz6blHQEYVSATfM0X
         ki+/67yGgPT7tmdCXgX59VPgV/IXEptt7sMrjOljrOxBfvJ9Rg4r6cj0NaSzmQqEdM+u
         OKlA==
X-Gm-Message-State: AOJu0YzftetNDK5tk1QtvVGmwNyMrAKm2FcCp4mpb/EV0ssRMr/3lJq7
	gfJ0jh7/3dt1WyzC3TIexnc3IebhZrljtOwNNjo=
X-Google-Smtp-Source: AGHT+IGPz5rFjpgurD3JR8p7T4WrkJ/GB/KXKssDUEo+kG6oEEyPj/SdK9W2icqQUuq3lcKIpFFnE/fM9ZOKjfCSKCM=
X-Received: by 2002:a05:6902:98e:b0:dbd:4caa:ef09 with SMTP id
 bv14-20020a056902098e00b00dbd4caaef09mr2497067ybb.9.1703065557144; Wed, 20
 Dec 2023 01:45:57 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1702862778.git.zhoubinbin@loongson.cn> <303e56cb6e5f82623babe18b095069b330cd37da.1702862778.git.zhoubinbin@loongson.cn>
 <20231219-old-outnumber-22ae5dd35a5a@spud>
In-Reply-To: <20231219-old-outnumber-22ae5dd35a5a@spud>
From: Binbin Zhou <zhoubb.aaron@gmail.com>
Date: Wed, 20 Dec 2023 15:45:44 +0600
Message-ID: <CAMpQs4L0_8OQA9myM7jAq=uGuTvzbpqVWA1+CJ4Ruhp1DnAMKg@mail.gmail.com>
Subject: Re: [PATCH v5 4/7] LoongArch: dts: DeviceTree for Loongson-2K0500
To: Conor Dooley <conor@kernel.org>
Cc: Binbin Zhou <zhoubinbin@loongson.cn>, Huacai Chen <chenhuacai@loongson.cn>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org, Huacai Chen <chenhuacai@kernel.org>, 
	Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev, 
	Jiaxun Yang <jiaxun.yang@flygoat.com>, Hongliang Wang <wanghongliang@loongson.cn>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Conor:

On Tue, Dec 19, 2023 at 10:05=E2=80=AFPM Conor Dooley <conor@kernel.org> wr=
ote:
>
> On Mon, Dec 18, 2023 at 09:52:58AM +0800, Binbin Zhou wrote:
> > diff --git a/arch/loongarch/boot/dts/loongson-2k0500.dtsi b/arch/loonga=
rch/boot/dts/loongson-2k0500.dtsi
> > new file mode 100644
> > index 000000000000..1dcb6a20fc6c
> > --- /dev/null
> > +++ b/arch/loongarch/boot/dts/loongson-2k0500.dtsi
> > @@ -0,0 +1,274 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright (C) 2023 Loongson Technology Corporation Limited
> > + */
> > +
> > +/dts-v1/;
> > +
> > +#include <dt-bindings/interrupt-controller/irq.h>
> > +
> > +/ {
> > +     #address-cells =3D <2>;
> > +     #size-cells =3D <2>;
> > +
> > +     cpus {
> > +             #address-cells =3D <1>;
> > +             #size-cells =3D <0>;
> > +
> > +             cpu-map {
> > +                     cluster0 {
> > +                             core0 {
> > +                                     cpu =3D <&cpu0>;
> > +                             };
> > +                     };
> > +             };
>
> You have only one CPU, this should not be needed.

OK!
>
> > +
> > +             cpu0: cpu@0 {
> > +                     compatible =3D "loongson,la264";
> > +                     device_type =3D "cpu";
> > +                     reg =3D <0x0>;
> > +                     clocks =3D <&cpu_clk>;
>
> Is this actually a complete description of the cpu? Are there i/d caches
> etc?

The cpu i/d caches are present, but the architecture gets the values
through a particular instruction (`cpucfg`). So I didn't describe it
here.

Thanks.
Binbin
>
> Cheers,
> Conor.


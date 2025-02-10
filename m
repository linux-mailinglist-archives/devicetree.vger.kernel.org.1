Return-Path: <devicetree+bounces-144693-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 79148A2EE9E
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 14:46:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4A2633A02DF
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 13:45:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7ED41DF744;
	Mon, 10 Feb 2025 13:45:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Hz79wdjc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D6581C245C
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 13:45:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739195157; cv=none; b=pOmMRmn9py2YQEk1b8gDSdW+hEcKXtwxqQiDsySJzuLNt8rqIoxFoOGf2cGNfwfJLHiwLKRGqLnQPVeaTqhj9zHHEmGkUuI4fpi5k8etzk5CKHqC892BH2WmClymL2eZrTNQAQkaIqPUt7CEkjCjsP/z36VTy3LFPB2M4MM671c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739195157; c=relaxed/simple;
	bh=QbPTsi4OAjSIrBQnM76xMZPd9/WffLeZlO9a1bLVPwg=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=DaNEJr4TGAk7WPjKXwA0OGJpMWzlyYyg0jUwiz2cdcHv5fhjAoDFXHK6FK9/0IGft/vLsTsLjLEJwe309KBg3KkikTUxgYYDeDRy71vDHipMegrU9OIIiS/8i5s3VIdWiCE0yG36iSQTmGwrHtiNOaxHlZQlpnzbVz122LAicB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Hz79wdjc; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-38dcc6bfbccso1638153f8f.0
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 05:45:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739195154; x=1739799954; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=B0QSMz5PoYwxWIMQ1TQSMM0I1UZCTAzfF9T8ctLhX2A=;
        b=Hz79wdjcLl3Nxgt6Iwb1UD93SRuQnpUstxgOcbUMAZE3BAeCRl8HlBUGebtYs6utMv
         oJJHi8zWDjd3PBqRZlC82EWD4nXEYEiowZhePfW5ELhAK/g7yAsOctkmC4pEshyT3GoV
         9oiMgb5aJWeWdkmYakZPzaWqPLiA7MXsuEhoh/VGtofS/Vqw5C6pp/86FGOt609UWfKi
         zLhk+iN6esQf6dQfbsFadIUapW/55Kcuq/BEsAT7teAndclBsV/dBHj1CmTFIDU/ZGjY
         zm8xRn5ZaUP5AFR2jsndJUe+H4V442+TinsA7v6p7UDrSHO+scD1WNIbJPNXoNnepl2o
         XimQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739195154; x=1739799954;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=B0QSMz5PoYwxWIMQ1TQSMM0I1UZCTAzfF9T8ctLhX2A=;
        b=qLxzQ23n6qFRpV3UfHesCUzBZ0FPNw2rWNws9PuOUEsIGb1XP380VyMrRs4W8+uvxp
         tf5r6XfT34SW6EbJiUZx4c4CQ4nXrKZc/76iM3YJuGZgydMVBkVLCKOducwSVGURoUfw
         jkLRBpJTyQYe6Ap8Dn1WgdTfr4OleLMiPKT4Z+RtmzRQCsFDOaMqnfowgoqCuYDoND3k
         gyGwlhF9B4gbmJKy7MpSIhxnK6ZuFtI1sLvdOMf5DBZHN7xjRpf6AWVC8VgvQpx20YSu
         Vl08mDMZktbXEK/69QtLSVWV71QNFXBdot88HKDNx8hbN7K5pSQ0zZAziYG1YCEJ1O9X
         x2TA==
X-Forwarded-Encrypted: i=1; AJvYcCUYHF2LAR6sU663o7cFoguV/2QGADoEmJAUIz/0TzybnX4YHSj7CveIuEiaAgSGSv7zHuGaiDxZQgJx@vger.kernel.org
X-Gm-Message-State: AOJu0YzdtlzsiY4Z+FxkT1s6SqOy3qNvfjvxYzJujb1fMPkxEV1EWGz0
	c9CjcfVyLHRFprBHt9uUyok6b2jd8XeWdUkFDGE2Pt8mSufZkWOy
X-Gm-Gg: ASbGncsXf/KK60ZZMi3aOKWn8wQiZBWjoR/odpBqZqNK6kx5l9nO1uYY9+nO7QWHqeg
	rfLtnWi9iP4JpT+DuJBJ/4JW8XMlehn30AEa7o4k0rmCktvQBHWgGUoN7hvw/drXjJzVyoVV98G
	Ku3ieV1+Og6yDt6hOyXwiSvV39LQ/4EgoXglfoHR2X1DudImKCMySMU3QMXK0RNdFktK6kUTmnb
	yt+vpYLe9f+ToBa3baCYkYGXim6Z8l3+m7EBblqWcJf+B8VVbjCqf4yHYp6F1GXNmeTFx7ORrfv
	TwEhRDVBK+yPW9Jx7drYNaaoLbcxaVSH
X-Google-Smtp-Source: AGHT+IH9uHWSiEXMVmzjpVAxMhboYo6LDwjJ5Xy7khI/V14PrgJYtGxDMf03BQTGcuTX+S72JWXzFg==
X-Received: by 2002:a05:6000:156e:b0:38d:c2d4:2399 with SMTP id ffacd0b85a97d-38dc9347ff2mr11108966f8f.41.1739195153957;
        Mon, 10 Feb 2025 05:45:53 -0800 (PST)
Received: from giga-mm.home ([2a02:1210:861b:6f00:82ee:73ff:feb8:99e3])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38dcd21fe18sm9233159f8f.91.2025.02.10.05.45.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 05:45:53 -0800 (PST)
Message-ID: <7fa3501bd59697e65ab1387e25cb815180c3378c.camel@gmail.com>
Subject: Re: [PATCH 02/10] riscv: dts: sophgo: cv18xx: Split into CPU core
 and peripheral parts
From: Alexander Sverdlin <alexander.sverdlin@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, soc@lists.linux.dev
Cc: Chen Wang <unicorn_wang@outlook.com>, Inochi Amaoto
 <inochiama@outlook.com>, 	linux-riscv@lists.infradead.org,
 devicetree@vger.kernel.org, Haylen Chu	 <heylenay@outlook.com>,
 linux-arm-kernel@lists.infradead.org, Paul Walmsley	
 <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou	
 <aou@eecs.berkeley.edu>, Arnd Bergmann <arnd@arndb.de>, Rob Herring	
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley	
 <conor+dt@kernel.org>
Date: Mon, 10 Feb 2025 14:45:51 +0100
In-Reply-To: <dda5297c-fdf3-494f-854f-71a5000729e5@kernel.org>
References: <20250209220646.1090868-1-alexander.sverdlin@gmail.com>
	 <20250209220646.1090868-3-alexander.sverdlin@gmail.com>
	 <dda5297c-fdf3-494f-854f-71a5000729e5@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Thanks for quick review Krzysztof!

On Mon, 2025-02-10 at 09:43 +0100, Krzysztof Kozlowski wrote:
> On 09/02/2025 23:06, Alexander Sverdlin wrote:
> > Make the peripheral device tree re-usable on ARM64 platform by splittin=
g it
> > into CPU-core specific and peripheral parts.
> >=20
> > Add SOC_PERIPHERAL_IRQ() macro which explicitly maps peripheral nuberin=
g
> > into "plic" interrupt-controller numbering.
> >=20
> > Signed-off-by: Alexander Sverdlin <alexander.sverdlin@gmail.com>
> > ---
> > =C2=A0 arch/riscv/boot/dts/sophgo/cv181x.dtsi=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0 2 +-
> > =C2=A0 arch/riscv/boot/dts/sophgo/cv18xx-periph.dtsi | 313 ++++++++++++=
++++++
> > =C2=A0 arch/riscv/boot/dts/sophgo/cv18xx.dtsi=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 | 305 +----------------
                                 ^^^^^^^^^^^
[1]

> > --- /dev/null
> > +++ b/arch/riscv/boot/dts/sophgo/cv18xx-periph.dtsi
> > @@ -0,0 +1,313 @@
> > +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> > +/*
> > + * Copyright (C) 2023 Jisheng Zhang <jszhang@kernel.org>
> > + * Copyright (C) 2023 Inochi Amaoto <inochiama@outlook.com>
> > + */
> > +
> > +#include <dt-bindings/clock/sophgo,cv1800.h>
> > +#include <dt-bindings/gpio/gpio.h>
> > +#include <dt-bindings/interrupt-controller/irq.h>
> > +
> > +/ {
> > +	osc: oscillator {
> > +		compatible =3D "fixed-clock";
>=20
> I really doubt that external oscillator is a peripheral. This is either
> part of board or the SoC.

This is actually a problem of the original cv18xx.dtsi [1]. Do you think
I need to fix it as part of my series? This would touch all the pure
RiscV boards (using CV18xx SoCs, not SG200x SoCs), which I could avoid
otherwise.

--=20
Alexander Sverdlin.



Return-Path: <devicetree+bounces-172082-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4071BAA1B31
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 21:11:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 972D04A8501
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 19:11:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A5A1254AF0;
	Tue, 29 Apr 2025 19:11:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Skmz+RDd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90777247299
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 19:11:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745953862; cv=none; b=ZdJfQcy8Ckv87HfdNLa2eBTg8AjdgbD8CE86S8gMsZ+jfUpTgZ3MhvTU8rOy+uAQdtQeZLKIxZo1KAFeMguoXsefPa6teJt2g6Nu0efGyOoG24IPvMvyqkx/spMiefRU61qIaUXcN18uBLhPr0cjfIntzbNxml66+nS3errKNA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745953862; c=relaxed/simple;
	bh=OD4Lo67S9frh/bFzs0ODT/uCFExNx9+MNFdXvKnz0+s=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=SyBip7fsxPcMyGNOuWAu0e+uyzUzghj7x0rPMoGn/OjXCt+GnJ7n5auzdJhBgCGDVkHSHVGVtinaGcjXccALb+KMUmSMjRAMakBR47YihG2nsWraW6gYO6GHj/bZWEeld4yALH3QAD1Vcv7+AxvamvYfeJi6Z73kfBm5cedhvK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Skmz+RDd; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-43690d4605dso49449035e9.0
        for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 12:11:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745953859; x=1746558659; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=OD4Lo67S9frh/bFzs0ODT/uCFExNx9+MNFdXvKnz0+s=;
        b=Skmz+RDd0MpkDdqq7TtJDVx/9L5BqobT3qwQl6bBXCsGbP+LYH0t+v6KYRb0gB+nb2
         qHU5VLNKLL8B7HKHxKnzPsov9ODv//wmMVZR3gpPmXG+xs1/9tfk1TbyiJ7Prjzr7xtA
         wX+q8mr33dambbPsYRDgJDTHCQ5IW/mgs3iY37aftycmSe3zCPhvsNBrP6P7PvttvLqg
         /hK/db+N5rTTcuurEW4FkTP0laQknUEJ6J1tMoSa3JBT39WD0YwhCaP1K73wfiFiDN2e
         Zs0Mhz99D6qhm2KXsPbpq68cy/1fEMbJK6grAYQK1+DDJjONEd0lfApdFIrRR76kp8fq
         Fu/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745953859; x=1746558659;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OD4Lo67S9frh/bFzs0ODT/uCFExNx9+MNFdXvKnz0+s=;
        b=RVrPIa1joSI+Zr+0zYxx5iO09Y+AXRQOa3vmhsysbh7TxnwXKAMgOlDuUP/OyxX/Wn
         yuwaZ5J8df0RCUhH/nWHuHsTjVBw6KvWUX5FGzKGpA0Yq5qcUbSoVSQMHwvm1Ql4tPnV
         kZR6ku6JcsoVvgrd9AvKQWPi3xfEXUw3VkUxTy4FzRmC1QB1TupHHLm26x75UUHPiqCB
         RUPzIm+YJ6fXfNTrn3dbnbJnMym22nBqA5G2DlTOxK2+33g/IVaSo6M+OqW30k0m9UW1
         zpVsiNbpdXcUIEN0N8ZAZhuJD2kBqauzM8mq2LbjYQRnLbjSQjWNipdglvjdJAV7MJla
         d2Mg==
X-Forwarded-Encrypted: i=1; AJvYcCXPZwLrRympL+mPKznmf5zxk7yd/lFLWy+GkmQbq+aos0qH75fxFgkT7sUhWxVj6+n0Ul9tIHn2iQFL@vger.kernel.org
X-Gm-Message-State: AOJu0YxEj3wu0Y4+JLJqY7jckzMd14chAHZB7i/Vz00y5JzUi42xvYyT
	GIMfgWTYzJZFZkmTeaPUTDFpfO5MZYXz9fLX/mR0p4LOK1NhycyG
X-Gm-Gg: ASbGncuHnYcEVs8heod+6l5ApQr99M0Cz7hLz7QbcLEuJo6DDbAx7TnvYjTeCsq/vys
	1HB/M/komeo12n1SO+mrdnz43I1u3zjg8ut3OrgfVI8M2Qe8GmB8mLhV4i9oluCOfjyTU2SU0tS
	oMSDN9AaVAh9xwrbsU1zmLi8353bakigHW/IPpgOFLDpXq2XDgcvwbYBfOCQaY782GYD/yqn3nG
	TMXuqeObqYU6V6mlzAlvnulGStqYi8iC0IZ6XWu4tLUfabv8Zg+hrsR6dgbuAzZzlI4sJQPpARE
	BkRWcTIrQ/oDMD46t39MizUShtAtM1pEb8wHQX9cyZGgwuSIvxjVx3usHwsX
X-Google-Smtp-Source: AGHT+IFDM8GNhhU5MZTnxhWi/Kr9STxCFjfV24N4ph+Q2bcawdkL0CkLdq/mOuAXOM7SHwbKD72ZOA==
X-Received: by 2002:a05:600c:3b88:b0:43c:f597:d584 with SMTP id 5b1f17b1804b1-441b1f60890mr3087145e9.29.1745953858483;
        Tue, 29 Apr 2025 12:10:58 -0700 (PDT)
Received: from giga-mm-3.home ([2a02:1210:8608:9200:82ee:73ff:feb8:99e3])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a073cc180bsm14985601f8f.53.2025.04.29.12.10.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Apr 2025 12:10:58 -0700 (PDT)
Message-ID: <70bc994b1e79c8d0d4c0010611c2e65042cff74f.camel@gmail.com>
Subject: Re: [PATCH v5 1/7] riscv: dts: sophgo: cv18xx: Move RiscV-specific
 part into SoCs' .dtsi files
From: Alexander Sverdlin <alexander.sverdlin@gmail.com>
To: Inochi Amaoto <inochiama@gmail.com>, sophgo@lists.linux.dev, 
	soc@lists.linux.dev
Cc: Chen Wang <unicorn_wang@outlook.com>, Jisheng Zhang
 <jszhang@kernel.org>,  Haylen Chu <heylenay@outlook.com>, Chao Wei
 <chao.wei@sophgo.com>, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Date: Tue, 29 Apr 2025 21:10:57 +0200
In-Reply-To: <6wlgfvc3rkhv4s3ou67fjl6j4a26vocqck5727cg6muxlz2erj@kivndcjcqc7m>
References: <20250316185640.3750873-1-alexander.sverdlin@gmail.com>
	 <20250316185640.3750873-2-alexander.sverdlin@gmail.com>
	 <6wlgfvc3rkhv4s3ou67fjl6j4a26vocqck5727cg6muxlz2erj@kivndcjcqc7m>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.0 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Inochi,

On Tue, 2025-04-29 at 06:35 +0800, Inochi Amaoto wrote:
> > Make the peripheral device tree re-usable on ARM64 platform by moving C=
PU
> > core and interrupt controllers' parts into new cv18xx-cpu.dtsi and
> > cv18xx-intc.dtsi.
> >=20
> > Add SOC_PERIPHERAL_IRQ() macro which explicitly maps peripheral nuberin=
g
> > into "plic" interrupt-controller numbering.
> >=20
> > Signed-off-by: Alexander Sverdlin <alexander.sverdlin@gmail.com>
> > ---
> > Changelog:
> > v5:
> > v4:
> > - cleanups dropped
> > - cv18xx-cpu-intc.dtsi instead of cv18xx-cpu.dtsi+cv18xx-intc.dtsi
> > v3:
> > - &cpus node has been moved into cv18xx-cpu.dtsi, &plic and &clint node=
s
> > were moved into cv18xx-intc.dtsi to reduce code duplication;
> > v2:
> > - instead of carving out peripherals' part, carve out ARCH-specifics (C=
PU
> > core, interrupt controllers) and spread them among 3 SoC .dtsi files wh=
ich
> > included cv18xx.dtsi;
> > - define a label for the "soc" node and use it in the newly introduced =
DTs;
> >=20
> > =C2=A0 arch/riscv/boot/dts/sophgo/cv1800b.dtsi=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 |=C2=A0 5 +
> > =C2=A0 arch/riscv/boot/dts/sophgo/cv1812h.dtsi=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 |=C2=A0 5 +
> > =C2=A0 arch/riscv/boot/dts/sophgo/cv181x.dtsi=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 |=C2=A0 2 +-
> > =C2=A0 .../boot/dts/sophgo/cv18xx-cpu-intc.dtsi=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 | 54 +++++++++++
> > =C2=A0 arch/riscv/boot/dts/sophgo/cv18xx.dtsi=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 | 91 +++++--------------
> > =C2=A0 arch/riscv/boot/dts/sophgo/sg2002.dtsi=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 |=C2=A0 5 +
> > =C2=A0 6 files changed, 93 insertions(+), 69 deletions(-)
> > =C2=A0 create mode 100644 arch/riscv/boot/dts/sophgo/cv18xx-cpu-intc.dt=
si
> >=20
>=20
> It is a hard time for now to do some change across the cv18xx=20
> series, and it has become a mess. Due to the fact, I think it
> is time to do some work like split some device (clk, pinctrl,
> plic, intc) from cv18xx.dtsi to avoid override, and make room
> for arm64 device.
>=20
> Since this change contains some change similar to this patch.=20
> Would you mind me to take content of this patch, and add you
> as the a co-author?

thanks for looking into this!
Either way is good for me!

--=20
Alexander Sverdlin.


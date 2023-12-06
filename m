Return-Path: <devicetree+bounces-22496-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4500E807BA4
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 23:46:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DB7551F217C8
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 22:46:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EB04182C4;
	Wed,  6 Dec 2023 22:46:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DBITz3Ev"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 727302F51
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 22:46:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EFD94C433CC;
	Wed,  6 Dec 2023 22:46:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701902772;
	bh=8X83r5OTQETJP3BACOnnNmvlcihfILbuzFscWCAxC/E=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=DBITz3Evb8Pwetp5R1BX/tFnkZoyAtKKUV/uWrwF7tABe7ICWL3lGLG9fGeJRNEh2
	 hIAMeKvSoWhjBrD4nKn2NWSbVgPCWdnY9ceLFo7AAlnHqqdp1hfdZol1ciWCOeWYRk
	 OxJiPudSZ6CT+S/HHLd/56imUBovQ5/bcBj8n6KOEXm5dPqchdhBXKnOhyxFt8n8Da
	 B6sgEDnIXTEZnSf/qI77+lTdDMC0NljfrbIakg8olJFkf2/GQl81wNy4SxqGPNRcmd
	 1AYuSo/VkMYO6IPK9N0CA0G4+84nrBd/W5FIjMfgoq+sr0CILC8JN9Fkl4P5lghfGK
	 YzrPfzXhS0Qbg==
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-50bfd7be487so31240e87.0;
        Wed, 06 Dec 2023 14:46:11 -0800 (PST)
X-Gm-Message-State: AOJu0YxxielvOk4tzptiIZEbRZ5p7eH80M3dYbMyI1fJbTcePWGaf7En
	8dauot9twohfk8lhgR1unH1iolK2DVN8EaBQMQ==
X-Google-Smtp-Source: AGHT+IETBh4KfKssDYyvEIq/NaALVdw46jfGTFoCN6msOKDqdRYDMgd6Fi1n8WkusjpxfTjwzi1IHW56DDYo3kVPYHI=
X-Received: by 2002:a05:6512:2251:b0:50b:f0df:57bb with SMTP id
 i17-20020a056512225100b0050bf0df57bbmr1074743lfu.49.1701902769936; Wed, 06
 Dec 2023 14:46:09 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231130191815.2421978-1-robh@kernel.org> <CAOMZO5AZNz1cRg+aYQjDmpZ75ATJQUTWmC5mx+vgaYcBL6M+2w@mail.gmail.com>
 <CAL_JsqKLFpPo8xTh_vgWvDXSY5J8tQJZh9SrkW2EiK5V_ZNeeA@mail.gmail.com> <CAJ+vNU1DiFbQivka8gA1URiLMD2mWJnWSdn-77bEo8Uz0Liqcg@mail.gmail.com>
In-Reply-To: <CAJ+vNU1DiFbQivka8gA1URiLMD2mWJnWSdn-77bEo8Uz0Liqcg@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 6 Dec 2023 16:45:57 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJmK5UDN_xKjJHac1L4Wsrx1GLDmeek5=K7gm=W9XPkOw@mail.gmail.com>
Message-ID: <CAL_JsqJmK5UDN_xKjJHac1L4Wsrx1GLDmeek5=K7gm=W9XPkOw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mm-venice: Fix PCI bus nodes
To: Tim Harvey <tharvey@gateworks.com>
Cc: Fabio Estevam <festevam@gmail.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 5, 2023 at 12:13=E2=80=AFPM Tim Harvey <tharvey@gateworks.com> =
wrote:
>
> On Thu, Nov 30, 2023 at 2:33=E2=80=AFPM Rob Herring <robh@kernel.org> wro=
te:
> >
> > On Thu, Nov 30, 2023 at 1:28=E2=80=AFPM Fabio Estevam <festevam@gmail.c=
om> wrote:
> > >
> > > Hi Rob,
> > >
> > > On Thu, Nov 30, 2023 at 4:18=E2=80=AFPM Rob Herring <robh@kernel.org>=
 wrote:
> > > >
> > > > The imx8mm-venice boards PCI bus nodes are a complete mess. The
> > > > unit-addresses are wrong. The PCI bridge nodes are incomplete missi=
ng
> > > > "device_type" and "ranges" and just wrong for "#address-cells" and
> > > > "#size-cells" values.
> > > >
> > > > All of these issues are reported warnings if anyone bothered to pay
> > > > attention. Sigh.
>
> Rob,
>
> Sorry about that. At the time the dt was submitted there were still so
> many dt warnings it wasn't very clear what was a legitimate issue and
> the PCI bindings are not that easy to understand.
>
> > >
> > > The warnings are gone in linux-next:
> > >
> > > https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/c=
ommit/arch/arm64/boot/dts/freescale?h=3Dnext-20231130&id=3Dd61c5068729a76a6=
183a897bcad4bf26e8d3d674
> >
> > Linux-next is wrong. The ethernet device should have a node name of
> > 'ethernet'. The 'pcie' node name and 'device_type =3D "pci"' is for PCI
> > buses/bridges only.
>
> So as Fabio has tried to fix this with a patch that landed in
> linux-next this patch won't apply. I'll submit one that covers your
> changes.

Thanks.

> It's always been unfortunate to have to have this level of detail in a
> device-tree just to allow boot firmware to populate the mac address of
> a PCI ethernet device.

More unfortunate are incomplete h/w designs lacking the MAC address. :(

Not really any way around it I think if you want something that works
for any device and any number of devices.

Rob


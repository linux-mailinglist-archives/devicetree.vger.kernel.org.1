Return-Path: <devicetree+bounces-2895-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 692A27ACD79
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 03:12:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 59C461C203D9
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 01:12:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71E23A2A;
	Mon, 25 Sep 2023 01:12:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E71181D
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 01:12:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BECFEC433C8;
	Mon, 25 Sep 2023 01:12:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695604343;
	bh=8DMO9QhTO8hdhH/g8TUVE19NRm9egrw1zRvnF4MPE2I=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=sPSNb+vNMc9QnwG25HKq5OiwaCM2UmdIPIME8yp0jY4nhQwvRndPF0j9i6DJjE5Gz
	 YXXMVUoFhO5Yvk78oEU9jPk1sqI874xdB0APq+/pC4h0/65orwtIFVID2cH0eTuZ8R
	 QXw88y/w1baXPG6Oh1Du2v6JwfjlTFV7M0+B5+2KIQMfnB2evjD1pizx1SIa7qPDSg
	 VLKLqApnLEJHi2xflFR9Ks5VsnKtRGX9UMYBX0Zz5E+e2yKYkxVlNem1gE4hTg7or4
	 TqJnKPfkYvWre8xZ2kyZINcqcEdcW+UyNojqnHDBdzUWVnKjObHINweFP+PyJIgXeZ
	 eCrOr+k2eDWxA==
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-50336768615so9099682e87.0;
        Sun, 24 Sep 2023 18:12:23 -0700 (PDT)
X-Gm-Message-State: AOJu0Yw3HsoOsXQssctVRVGgjl+joQN4y4Aq81qRbgZ8b6ZgsTVclQou
	L39RYA4YNUb6zBgD8wUdjbmZfZvlvb3t8WFs2S4=
X-Google-Smtp-Source: AGHT+IGtkyHqNUBAqTMyj6w0bSnn7CPiKL+Pz7C5RhSxxT4RvENMsrQLGRHxmNuQ78GwqtiPLnfA8OKWSqQwHR7IqSY=
X-Received: by 2002:a19:ee15:0:b0:503:31dc:7d64 with SMTP id
 g21-20020a19ee15000000b0050331dc7d64mr3820113lfb.21.1695604341958; Sun, 24
 Sep 2023 18:12:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230831044431.250338-1-aford173@gmail.com> <20230925010713.GC7231@dragon>
In-Reply-To: <20230925010713.GC7231@dragon>
From: Shawn Guo <shawnguo@kernel.org>
Date: Mon, 25 Sep 2023 09:12:08 +0800
X-Gmail-Original-Message-ID: <CAJBJ56KZNtbfdY1F0fTytzaKrqvASYD6XfiUKQptV-AvY=_kCw@mail.gmail.com>
Message-ID: <CAJBJ56KZNtbfdY1F0fTytzaKrqvASYD6XfiUKQptV-AvY=_kCw@mail.gmail.com>
Subject: Re: [PATCH V3 1/3] arm64: dts: imx8mp: Add easrc node
To: Adam Ford <aford173@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, marex@denx.de, 
	aford@beaconembedded.com, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, Abel Vesa <abelvesa@kernel.org>, 
	Peng Fan <peng.fan@nxp.com>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 25, 2023 at 9:07=E2=80=AFAM Shawn Guo <shawnguo@kernel.org> wro=
te:
>
> On Wed, Aug 30, 2023 at 11:44:29PM -0500, Adam Ford wrote:
> > The i.MX8MP has an asynchronous sample rate converter which seems
> > to be the same as what is available on the i.MX8M Nano.
> >
> > Signed-off-by: Adam Ford <aford173@gmail.com>
> > ---
> > V3:  No Change.  The dt-binding update was already accepted into the so=
und tree, so that patch
> >      was dropped from the series
> >
> > V2:  No Change.
> > diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boo=
t/dts/freescale/imx8mp.dtsi
> > index 83d907294fbc..3167706d81e1 100644
> > --- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> > +++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
> > @@ -1459,6 +1459,26 @@ sai7: sai@30c80000 {
> >                                       interrupts =3D <GIC_SPI 111 IRQ_T=
YPE_LEVEL_HIGH>;
> >                                       status =3D "disabled";
> >                               };
> > +
> > +                             easrc: easrc@30c90000 {
> > +                                     compatible =3D "fsl,imx8mp-easrc"=
, "fsl,imx8mn-easrc";
> > +                                     reg =3D <0x30c90000 0x10000>;
> > +                                     interrupts =3D <GIC_SPI 122 IRQ_T=
YPE_LEVEL_HIGH>;
> > +                                     clocks =3D <&audio_blk_ctrl IMX8M=
P_CLK_AUDIOMIX_ASRC_IPG>;
> > +                                     clock-names =3D "mem";
> > +                                     dmas =3D <&sdma2 16 23 0> , <&sdm=
a2 17 23 0>,
> > +                                            <&sdma2 18 23 0> , <&sdma2=
 19 23 0>,
> > +                                            <&sdma2 20 23 0> , <&sdma2=
 21 23 0>,
> > +                                            <&sdma2 22 23 0> , <&sdma2=
 23 23 0>;
> > +                                     dma-names =3D "ctx0_rx", "ctx0_tx=
",
> > +                                                 "ctx1_rx", "ctx1_tx",
> > +                                                 "ctx2_rx", "ctx2_tx",
> > +                                                 "ctx3_rx", "ctx3_tx";
> > +                                     firmware-name =3D "imx/easrc/easr=
c-imx8mn.bin";
> > +                                     fsl,asrc-rate  =3D <8000>;
>
> One space before =3D

I fixed it up and applied, thanks!


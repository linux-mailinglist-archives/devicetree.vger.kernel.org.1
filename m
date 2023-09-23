Return-Path: <devicetree+bounces-2653-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EBDAB7ABEC1
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 10:10:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 78DD5284B96
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 08:10:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7286CA6A;
	Sat, 23 Sep 2023 08:10:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94F8163B9
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 08:10:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E1C94C433CC;
	Sat, 23 Sep 2023 08:10:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695456624;
	bh=PdYJS/BSnWGeDJm882oDZ5X3HgUAebcEqDMRocFoqF8=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=hscrhA7wcKLppn4Mnk3i/Uh8jMS+iwW5A9X1MAihRmyx7p5t4/fxrUaAwC/1fGVsU
	 tq08+IBQgueZ449yqInw7ClVUtnNVberGrV7hlws9e1rkfsP3f/JMCmfKGiVCxwfSW
	 xeinYa7AUwq2avb7G6Q5Q0veMrRLysEVIZUjd3aiCtnEAG/jaeG10OfqJMBNVaexR4
	 W517T+WBHfjLde5BK2fJBQlD1jBLyEHCa7U/qQVR7wZ5CROcoJDtsBo6yT0Zz28W/J
	 +dyFsZO2po5jVzRPMwcKA02VIkFQkPJAERAfo+rYcC0Y1cllwfYUyq5MCuKG+PAsnC
	 VCNzPekYhrzcQ==
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-9ad8bba8125so439847766b.3;
        Sat, 23 Sep 2023 01:10:24 -0700 (PDT)
X-Gm-Message-State: AOJu0YwW/OP8HWNiG6ZXczb1emGFaB1ZpRt4caznLBbEti6ndz7AespG
	BYHR/i3o1BdFk+HUxFFcpknMxaW+VE5r6KUNzpY=
X-Google-Smtp-Source: AGHT+IGDzGapxUFpYPEZmxWl/fy6N5eTHbocFn+xPB3cVu16L7RwAdSEIB8UWAuFxHd1jSqiRyBMUlDgbWJMjo06pv4=
X-Received: by 2002:aa7:d4c5:0:b0:530:be79:49e7 with SMTP id
 t5-20020aa7d4c5000000b00530be7949e7mr1339748edr.37.1695456623284; Sat, 23 Sep
 2023 01:10:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230921-th1520-mmc-v1-0-49f76c274fb3@baylibre.com>
 <20230921-th1520-mmc-v1-1-49f76c274fb3@baylibre.com> <20230922-parish-ice-a22e93dc3027@spud>
 <ZQ2tP48Z19C5xRug@x1>
In-Reply-To: <ZQ2tP48Z19C5xRug@x1>
From: Guo Ren <guoren@kernel.org>
Date: Sat, 23 Sep 2023 16:10:11 +0800
X-Gmail-Original-Message-ID: <CAJF2gTSeKnB=Zc6o1wJAOyax7d=RmDJ0o8PSOfkVo5BYVc=sAw@mail.gmail.com>
Message-ID: <CAJF2gTSeKnB=Zc6o1wJAOyax7d=RmDJ0o8PSOfkVo5BYVc=sAw@mail.gmail.com>
Subject: Re: [PATCH 1/6] dt-bindings: mmc: sdhci-of-dwcmhsc: Add T-Head TH1520 support
To: Drew Fustini <dfustini@baylibre.com>
Cc: Conor Dooley <conor@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jisheng Zhang <jszhang@kernel.org>, Adrian Hunter <adrian.hunter@intel.com>, Fu Wei <wefu@redhat.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Robert Nelson <robertcnelson@beagleboard.org>, 
	Jason Kridner <jkridner@beagleboard.org>, Xi Ruoyao <xry111@xry111.site>, 
	Han Gao <gaohan@iscas.ac.cn>, Icenowy Zheng <uwu@icenowy.me>, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 22, 2023 at 11:18=E2=80=AFPM Drew Fustini <dfustini@baylibre.co=
m> wrote:
>
> On Fri, Sep 22, 2023 at 10:57:36AM +0100, Conor Dooley wrote:
> > Hey Drew,
> >
> > On Thu, Sep 21, 2023 at 06:49:48PM -0700, Drew Fustini wrote:
> > > Add compatible value for the T-Head TH1520 dwcmshc controller and add
> > > thead,phy-pull-up property.
> > >
> > > Signed-off-by: Drew Fustini <dfustini@baylibre.com>
> > > ---
> > >  Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml | 4 ++=
++
> > >  1 file changed, 4 insertions(+)
> > >
> > > diff --git a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci=
.yaml b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> > > index a43eb837f8da..46b768d46712 100644
> > > --- a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> > > +++ b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> > > @@ -19,6 +19,7 @@ properties:
> > >        - rockchip,rk3568-dwcmshc
> > >        - rockchip,rk3588-dwcmshc
> > >        - snps,dwcmshc-sdhci
> > > +      - thead,th1520-dwcmshc
> > >
> > >    reg:
> > >      maxItems: 1
> > > @@ -60,6 +61,9 @@ properties:
> > >      description: Specify the number of delay for tx sampling.
> > >      $ref: /schemas/types.yaml#/definitions/uint8
> > >
> > > +  thead,phy-pull-up:
> > > +    description: Enable weak pull-up on PHY pads
> > > +    type: boolean
> >
> > Why is the weak pull-up required? How would the dts author know if they
> > need to use this property?
>
> This is a good question, and I don't have a good reason beyond it is
> what the vendor SDK was doing.
>
> There are only two boards right now using the TH1520 that I know of.
> Both the LPi4a [1] and the Ahead [2] have the pull-up property set on
> all the mmc controller nodes their downstream device trees.
>
> Rob suggested on #devicetree that it would be simpler to just enable it
> in the driver and disable support when needed. I like this idea as it
> will simplify this binding patch and the code in the driver patch.
It's for the PHY debug. You could directly remove them, or keep it
with no-pull-up flag, then no pull-up flag in the dts for default..

static void sdhci_phy_1_8v_init_no_pull(struct sdhci_host *host)
{
        uint32_t val;
        sdhci_writel(host, 1, DWC_MSHC_PTR_PHY_R);
        sdhci_writeb(host, 1 << 4, PHY_SDCLKDL_CNFG_R);
        sdhci_writeb(host, 0x40, PHY_SDCLKDL_DC_R);

        val =3D sdhci_readb(host, PHY_SDCLKDL_CNFG_R);
        val &=3D ~(1 << 4);
        sdhci_writeb(host, val, PHY_SDCLKDL_CNFG_R);


        val =3D sdhci_readw(host, PHY_CMDPAD_CNFG_R);
        sdhci_writew(host, val | 1, PHY_CMDPAD_CNFG_R);

        val =3D sdhci_readw(host, PHY_DATAPAD_CNFG_R);
        sdhci_writew(host, val | 1, PHY_DATAPAD_CNFG_R);

        val =3D sdhci_readw(host, PHY_RSTNPAD_CNFG_R);
        sdhci_writew(host, val | 1, PHY_RSTNPAD_CNFG_R);

        val =3D sdhci_readw(host, PHY_STBPAD_CNFG_R);
        sdhci_writew(host, val | 1, PHY_STBPAD_CNFG_R);

        val =3D sdhci_readb(host, PHY_DLL_CTRL_R);
        sdhci_writeb(host, val | 1, PHY_DLL_CTRL_R);
}

static void sdhci_phy_3_3v_init_no_pull(struct sdhci_host *host)
{
        uint32_t val;
        sdhci_writel(host, 1, DWC_MSHC_PTR_PHY_R);
        sdhci_writeb(host, 1 << 4, PHY_SDCLKDL_CNFG_R);
        sdhci_writeb(host, 0x40, PHY_SDCLKDL_DC_R);

        val =3D sdhci_readb(host, PHY_SDCLKDL_CNFG_R);
        val &=3D ~(1 << 4);
        sdhci_writeb(host, val, PHY_SDCLKDL_CNFG_R);

        val =3D sdhci_readw(host, PHY_CMDPAD_CNFG_R);
        sdhci_writew(host, val | 2, PHY_CMDPAD_CNFG_R);

        val =3D sdhci_readw(host, PHY_DATAPAD_CNFG_R);
        sdhci_writew(host, val | 2, PHY_DATAPAD_CNFG_R);

        val =3D sdhci_readw(host, PHY_RSTNPAD_CNFG_R);
        sdhci_writew(host, val | 2, PHY_RSTNPAD_CNFG_R);

        val =3D sdhci_readw(host, PHY_STBPAD_CNFG_R);
        sdhci_writew(host, val | 2, PHY_STBPAD_CNFG_R);

        val =3D sdhci_readb(host, PHY_DLL_CTRL_R);
        sdhci_writeb(host, val | 1, PHY_DLL_CTRL_R);
}

>
> Thanks,
> Drew
>
> [1] https://git.beagleboard.org/beaglev-ahead/BeagleBoard-DeviceTrees/-/b=
lob/v5.10.x-ti-unified/src/riscv/light-beagle-ref.dts
> [2] https://github.com/revyos/thead-kernel/blob/lpi4a/arch/riscv/boot/dts=
/thead/light-lpi4a-ref.dts



--=20
Best Regards
 Guo Ren


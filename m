Return-Path: <devicetree+bounces-16486-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 499927EEDB2
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 09:44:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5F6511C20836
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 08:44:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2CEC20FA;
	Fri, 17 Nov 2023 08:44:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63613D5C;
	Fri, 17 Nov 2023 00:44:36 -0800 (PST)
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-6c39ad730aaso1569371b3a.0;
        Fri, 17 Nov 2023 00:44:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700210675; x=1700815475;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0FErukS7Dcy9cf2fW7KGbLMbSCHkVNHNOi0sTCVmhEY=;
        b=IxcMlf8zFM0x4o0nA9rFHSviUhb0A9dQ0ky/neZObCGG+E4+ZKbo7roTVzx9pDtlIi
         gTP5WEBLFyjBraXIiicjrxJ+gU/n25EEa6dat/PX8ID3M8d4dbOhhwzxp/4ZW7fEIw/3
         3h9J13y3uyRX93QLBYE7UihmZ7XVrbbPQEHM55eA7wSJPiQbADGFIXi8Cxu54abh6Vb1
         +ifTkdl5LAn4pbIy4RVCdEd/K1Utiv2nWj3y3u52MMdhsipZLJ76ZDKcCfJtVQiXH3o1
         9aayS//B62vgA1fgo4NbDffXx9H1tfjewFvorvILgBxMP6okJHTTJxkdSbl7SgHjTkTc
         MveQ==
X-Gm-Message-State: AOJu0Yx++inXUwAdao563dT2j9zzmzOHzbYScdx3W+CZp0ygatrkKbml
	1G2lBGNyfG52+mcDdi7UxkvSadMdOiUROQ==
X-Google-Smtp-Source: AGHT+IHAL4a0215PwFZ0OKf1O9udWp0GCUvqYHOUI7dsUEJSch0GdacC5MhAIINpB/muPKVfXp5vYw==
X-Received: by 2002:a05:6a00:1d16:b0:6c3:703a:c394 with SMTP id a22-20020a056a001d1600b006c3703ac394mr18519243pfx.27.1700210675487;
        Fri, 17 Nov 2023 00:44:35 -0800 (PST)
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com. [209.85.214.172])
        by smtp.gmail.com with ESMTPSA id fj14-20020a056a003a0e00b0068fe9c7b199sm960123pfb.105.2023.11.17.00.44.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Nov 2023 00:44:35 -0800 (PST)
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-1cc2fc281cdso14393685ad.0;
        Fri, 17 Nov 2023 00:44:35 -0800 (PST)
X-Received: by 2002:a81:84c2:0:b0:5ae:c35a:807a with SMTP id
 u185-20020a8184c2000000b005aec35a807amr19425956ywf.48.1700210262650; Fri, 17
 Nov 2023 00:37:42 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231029042712.520010-1-cristian.ciocaltea@collabora.com>
 <20231029042712.520010-13-cristian.ciocaltea@collabora.com>
 <f253b50a-a0ac-40c6-b13d-013de7bac407@lunn.ch> <233a45e1-15ac-40da-badf-dee2d3d60777@collabora.com>
 <cb6597be-2185-45ad-aa47-c6804ff68c85@collabora.com> <20231116-stellar-anguished-7cf06eb5634a@squawk>
In-Reply-To: <20231116-stellar-anguished-7cf06eb5634a@squawk>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 17 Nov 2023 09:37:30 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXdeW9SRN8hq-0722CiLvXDFVwpJxjFTGgdc2mhT=ppYw@mail.gmail.com>
Message-ID: <CAMuHMdXdeW9SRN8hq-0722CiLvXDFVwpJxjFTGgdc2mhT=ppYw@mail.gmail.com>
Subject: Re: [PATCH v2 12/12] [UNTESTED] riscv: dts: starfive:
 beaglev-starlight: Enable gmac
To: Conor Dooley <conor@kernel.org>
Cc: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, Andrew Lunn <andrew@lunn.ch>, 
	Conor Dooley <conor+dt@kernel.org>, Emil Renner Berthing <kernel@esmil.dk>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Samin Guo <samin.guo@starfivetech.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Jose Abreu <joabreu@synopsys.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Richard Cochran <richardcochran@gmail.com>, Giuseppe Cavallaro <peppe.cavallaro@st.com>, 
	netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org, kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 16, 2023 at 6:55=E2=80=AFPM Conor Dooley <conor@kernel.org> wro=
te:
> On Thu, Nov 16, 2023 at 03:15:46PM +0200, Cristian Ciocaltea wrote:
> > On 10/30/23 00:53, Cristian Ciocaltea wrote:
> > > On 10/29/23 20:46, Andrew Lunn wrote:
> > >> On Sun, Oct 29, 2023 at 06:27:12AM +0200, Cristian Ciocaltea wrote:
> > >>> The BeagleV Starlight SBC uses a Microchip KSZ9031RNXCA PHY support=
ing
> > >>> RGMII-ID.
> > >>>
> > >>> TODO: Verify if manual adjustment of the RX internal delay is neede=
d. If
> > >>> yes, add the mdio & phy sub-nodes.
> > >>
> > >> Please could you try to get this tested. It might shed some light on
> > >> what is going on here, since it is a different PHY.
> > >
> > > Actually, this is the main reason I added the patch. I don't have acc=
ess
> > > to this board, so it would be great if we could get some help with te=
sting.
> >
> > @Emil, @Conor: Any idea who might help us with a quick test on the
> > BeagleV Starlight board?
>
> I don't have one & I am not sure if Emil does. Geert (CCed) should have

I believe Esmil has.

> one though. Is there a specific test you need to have done?

I gave it a try, on top of latest renesas-drivers[1].

------------[ cut here ]------------
simple-pm-bus soc: device non-coherent but no non-coherent operations suppo=
rted
WARNING: CPU: 0 PID: 1 at arch/riscv/mm/dma-noncoherent.c:140
arch_setup_dma_ops+0x7e/0xa2
Modules linked in:
CPU: 0 PID: 1 Comm: swapper/0 Not tainted
6.7.0-rc1-starlight-01489-g995c2f0b8b7e #259
Hardware name: BeagleV Starlight Beta (DT)
epc : arch_setup_dma_ops+0x7e/0xa2
 ra : arch_setup_dma_ops+0x7e/0xa2
epc : ffffffff8000d462 ra : ffffffff8000d462 sp : ffffffc800013b90
 gp : ffffffff812d6460 tp : ffffffd880130000 t0 : ffffffff81217238
 t1 : 000000000000002d t2 : 2d2d2d2d2d2d2d2d s0 : ffffffc800013bc0
 s1 : 0000000000000000 a0 : 000000000000004f a1 : 0000000200000020
 a2 : 0000000000000000 a3 : 0000000000000001 a4 : 0000000000000000
 a5 : 0000000000000000 a6 : 0000000000000000 a7 : 0000000000000030
 s2 : ffffffd880111410 s3 : ffffffff812d712c s4 : 00000000ffffffff
 s5 : ffffffffffffffed s6 : ffffffd9fffeb530 s7 : ffffffff80a00d70
 s8 : ffffffff80e3f2c0 s9 : 0000000000000008 s10: ffffffff808000ba
 s11: 0000000000000000 t3 : ffffffff812ebb5c t4 : ffffffff812ebb5c
 t5 : ffffffff812ebb38 t6 : ffffffff812ebbb7
status: 0000000200000120 badaddr: ffffffff812d712c cause: 0000000000000003
[<ffffffff8000d462>] arch_setup_dma_ops+0x7e/0xa2
[<ffffffff80518cb2>] of_dma_configure_id+0xc4/0x222
[<ffffffff803ee76e>] platform_dma_configure+0x44/0x4e
[<ffffffff803ec382>] really_probe+0x54/0x20c
[<ffffffff803ec596>] __driver_probe_device+0x5c/0xd0
[<ffffffff803ec636>] driver_probe_device+0x2c/0xb0
[<ffffffff803ec7b6>] __driver_attach+0x6e/0x104
[<ffffffff803ea652>] bus_for_each_dev+0x58/0xa4
[<ffffffff803ebdc8>] driver_attach+0x1a/0x22
[<ffffffff803eb7ba>] bus_add_driver+0xd4/0x19e
[<ffffffff803ed476>] driver_register+0x3e/0xd8
[<ffffffff803ee590>] __platform_driver_register+0x1c/0x24
[<ffffffff8081db32>] simple_pm_bus_driver_init+0x1a/0x22
[<ffffffff800020f0>] do_one_initcall+0x38/0x17c
[<ffffffff80801354>] kernel_init_freeable+0x1a8/0x20c
[<ffffffff806b1328>] kernel_init+0x1e/0x112
[<ffffffff806b891e>] ret_from_fork+0xe/0x1c
---[ end trace 0000000000000000 ]---
------------[ cut here ]------------
clk-starfive-jh7100 11800000.clock-controller: device non-coherent but
no non-coherent operations supported
WARNING: CPU: 0 PID: 1 at arch/riscv/mm/dma-noncoherent.c:140
arch_setup_dma_ops+0x7e/0xa2
Modules linked in:
CPU: 0 PID: 1 Comm: swapper/0 Tainted: G S
6.7.0-rc1-starlight-01489-g995c2f0b8b7e #259
Hardware name: BeagleV Starlight Beta (DT)
epc : arch_setup_dma_ops+0x7e/0xa2
 ra : arch_setup_dma_ops+0x7e/0xa2
epc : ffffffff8000d462 ra : ffffffff8000d462 sp : ffffffc800013b70
 gp : ffffffff812d6460 tp : ffffffd880130000 t0 : ffffffff81217f48
 t1 : 000000000000002d t2 : 2d2d2d2d2d2d2d2d s0 : ffffffc800013ba0
 s1 : 0000000000000000 a0 : 000000000000006b a1 : 0000000200000020
 a2 : 0000000000000000 a3 : 0000000000000001 a4 : 0000000000000000
 a5 : 0000000000000000 a6 : 0000000000000000 a7 : 0000000000000030
 s2 : ffffffd880112410 s3 : ffffffff812d712c s4 : 0000000fffffffff
 s5 : 0000000000000000 s6 : ffffffd9fffed3c8 s7 : ffffffff80a00d70
 s8 : ffffffff80e3f2c0 s9 : 0000000000000008 s10: ffffffff808000ba
 s11: 0000000000000000 t3 : ffffffff812ec564 t4 : ffffffff812ec564
 t5 : ffffffff812ec540 t6 : ffffffff812ec5db
status: 0000000200000120 badaddr: ffffffd880130008 cause: 0000000000000003
[<ffffffff8000d462>] arch_setup_dma_ops+0x7e/0xa2
[<ffffffff80518cb2>] of_dma_configure_id+0xc4/0x222
[<ffffffff803ee76e>] platform_dma_configure+0x44/0x4e
[<ffffffff803ec382>] really_probe+0x54/0x20c
[<ffffffff803ec596>] __driver_probe_device+0x5c/0xd0
[<ffffffff803ec636>] driver_probe_device+0x2c/0xb0
[<ffffffff803ec7b6>] __driver_attach+0x6e/0x104
[<ffffffff803ea652>] bus_for_each_dev+0x58/0xa4
[<ffffffff803ebdc8>] driver_attach+0x1a/0x22
[<ffffffff803eb7ba>] bus_add_driver+0xd4/0x19e
[<ffffffff803ed476>] driver_register+0x3e/0xd8
[<ffffffff803ee6ce>] __platform_driver_probe+0x40/0x9c
[<ffffffff8081eb80>] clk_starfive_jh7100_driver_init+0x22/0x2a
[<ffffffff800020f0>] do_one_initcall+0x38/0x17c
[<ffffffff80801354>] kernel_init_freeable+0x1a8/0x20c
[<ffffffff806b1328>] kernel_init+0x1e/0x112
[<ffffffff806b891e>] ret_from_fork+0xe/0x1c
---[ end trace 0000000000000000 ]---
CCACHE: DataFail @ 0x00000000.7FEB8930
CCACHE: 2 banks, 16 ways, sets/bank=3D1024, bytes/block=3D64
CCACHE: Index of the largest way enabled: 0
------------[ cut here ]------------
jh7100-reset 11840000.reset-controller: device non-coherent but no
non-coherent operations supported
WARNING: CPU: 0 PID: 1 at arch/riscv/mm/dma-noncoherent.c:140
arch_setup_dma_ops+0x7e/0xa2
Modules linked in:
CPU: 0 PID: 1 Comm: swapper/0 Tainted: G S
6.7.0-rc1-starlight-01489-g995c2f0b8b7e #259
Hardware name: BeagleV Starlight Beta (DT)
epc : arch_setup_dma_ops+0x7e/0xa2
 ra : arch_setup_dma_ops+0x7e/0xa2
epc : ffffffff8000d462 ra : ffffffff8000d462 sp : ffffffc800013b70
 gp : ffffffff812d6460 tp : ffffffd880130000 t0 : ffffffff81218d60
 t1 : 000000000000002d t2 : 2d2d2d2d2d2d2d2d s0 : ffffffc800013ba0
 s1 : 0000000000000000 a0 : 0000000000000064 a1 : 0000000200000020
 a2 : 0000000000000000 a3 : 0000000000000001 a4 : 0000000000000000
 a5 : 0000000000000000 a6 : 0000000000000000 a7 : 0000000000000030
 s2 : ffffffd880112c10 s3 : ffffffff812d712c s4 : 0000000fffffffff
 s5 : 0000000000000000 s6 : ffffffd9fffed7a8 s7 : ffffffff80a00d70
 s8 : ffffffff80e3f2c0 s9 : 0000000000000008 s10: ffffffff808000ba
 s11: 0000000000000000 t3 : ffffffff812ed054 t4 : ffffffff812ed054
 t5 : ffffffff812ed030 t6 : ffffffff812ed0c4
status: 0000000200000120 badaddr: ffffffd880130008 cause: 0000000000000003
[<ffffffff8000d462>] arch_setup_dma_ops+0x7e/0xa2
[<ffffffff80518cb2>] of_dma_configure_id+0xc4/0x222
[<ffffffff803ee76e>] platform_dma_configure+0x44/0x4e
[<ffffffff803ec382>] really_probe+0x54/0x20c
[<ffffffff803ec596>] __driver_probe_device+0x5c/0xd0
[<ffffffff803ec636>] driver_probe_device+0x2c/0xb0
[<ffffffff803ec7b6>] __driver_attach+0x6e/0x104
[<ffffffff803ea652>] bus_for_each_dev+0x58/0xa4
[<ffffffff803ebdc8>] driver_attach+0x1a/0x22
[<ffffffff803eb7ba>] bus_add_driver+0xd4/0x19e
[<ffffffff803ed476>] driver_register+0x3e/0xd8
[<ffffffff803ee6ce>] __platform_driver_probe+0x40/0x9c
[<ffffffff8081f284>] jh7100_reset_driver_init+0x22/0x2a
[<ffffffff800020f0>] do_one_initcall+0x38/0x17c
[<ffffffff80801354>] kernel_init_freeable+0x1a8/0x20c
[<ffffffff806b1328>] kernel_init+0x1e/0x112
[<ffffffff806b891e>] ret_from_fork+0xe/0x1c
---[ end trace 0000000000000000 ]---
CCACHE: DataFail @ 0x00000000.7FEB0830
CCACHE: DataFail @ 0x00000000.7FEB07F0
CCACHE: DataFail @ 0x00000000.7FEB07F0
CCACHE: DataFail @ 0x00000000.7FEB07F0
CCACHE: DataFail @ 0x00000000.7FEB0830
CCACHE: DataFail @ 0x00000000.7FEB07F0

[...]

Looks like it needs more non-coherent support before we can test
Ethernet.

Note that it boots fine into Debian nfsroot when merging Emil's[2]
visionfive branch instead.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-drivers.g=
it/tag/?h=3Drenesas-drivers-2023-11-14-v6.7-rc1
[2] https://github.com/esmil/linux

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds


Return-Path: <devicetree+bounces-3388-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D6E97AEA62
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 12:29:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id C23351F257AD
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 10:29:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CA20224DD;
	Tue, 26 Sep 2023 10:29:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A455921358
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 10:29:22 +0000 (UTC)
Received: from mail-yw1-x112a.google.com (mail-yw1-x112a.google.com [IPv6:2607:f8b0:4864:20::112a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6352AD6;
	Tue, 26 Sep 2023 03:29:20 -0700 (PDT)
Received: by mail-yw1-x112a.google.com with SMTP id 00721157ae682-59f6e6b7600so50292377b3.3;
        Tue, 26 Sep 2023 03:29:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695724159; x=1696328959; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cYJ+Soo11ckzYqJKoCtN3646PUEaaNXCy3bDcki6Cog=;
        b=QBu/enxiybPxzqGXMHQZG65AxY7O6y4QJCooOlyBXQqGSCo/HTmBCmJryA84TLuX+n
         dIpPewfI1ZINRw7Owab4xKMNzV1W4Z8U6LHArvcF9K0+JRschU4tNK84nbBTMhd0XsUb
         hFSP7KsZCA9RTTYOL3ZIGUOrLOS/o7G6/hze2uQXMuJNq/WF/fruj2PeMbAuyoXcJ3vB
         UtzBgUWVNTTQcSy8USaqGgFzDCK/fMfgk+LLQM5fCNYbWFm6IIHb7Mta3q2Axs6Zw4Zw
         TmST+/Fp1AROjhU60lkYB3WGiaHXbKuuyX9cgMK3uaSc1psd2dhAHGNahWY1Fmu6D2cU
         kM9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695724159; x=1696328959;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cYJ+Soo11ckzYqJKoCtN3646PUEaaNXCy3bDcki6Cog=;
        b=WqZtMHbbpk6IfRRsECtS0K93iYD/19VVGImsknTLqRuCanZZOBrP0B4Kro4q6zQa1i
         usjh2SwE5CCgxYIzyRxL+ON7gCYxE32UkmiK9d7B/jst4m1MlF6Y8YOpCDt4NlrY9psv
         hcx5xzfDKMpaxdc+/t4ixkHsYGoNTChOAtC5E6uA6+FPKnnMGtlH2v1BZOckk3YgwqOo
         DHs/0hxQUCRN8Ojw/jL6t8WS4Q9IAf9nLA9sajcbBtL5gShchXWuq19mAhwEIKs+VHg7
         /PrkGrTmx2qGoMANvpsOPnyCmnBQC8jfaBK1xplgn/ychTWKlegqwLm6BT1dC/4dHYtQ
         VHVg==
X-Gm-Message-State: AOJu0YwK32oBhEAfoFkLw9d60bgiMC84x3zzn0NxqXYQ5GuARb4RwF8X
	uWb2o7kFXqaIxgCiahlVlFnIcQT8dZUZX23ODsM=
X-Google-Smtp-Source: AGHT+IFTKakaIbrv91wfO1JG0RZC5COeyEoiXA2czSwspI36YNY6zBagHHFZsCsF8umYPnzXxCpgtdiPOZpK1ZMdHdI=
X-Received: by 2002:a0d:fcc6:0:b0:59b:2458:f60c with SMTP id
 m189-20020a0dfcc6000000b0059b2458f60cmr8837917ywf.28.1695724159451; Tue, 26
 Sep 2023 03:29:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1695189879.git.wangchen20@iscas.ac.cn> <mhng-1c4de53c-6168-432c-b37a-284c90b1ed2d@palmer-ri-x1c9a>
In-Reply-To: <mhng-1c4de53c-6168-432c-b37a-284c90b1ed2d@palmer-ri-x1c9a>
From: Chen Wang <unicornxw@gmail.com>
Date: Tue, 26 Sep 2023 18:29:07 +0800
Message-ID: <CAHAQgRBAJKc+UVoH0GJb8Y3iedRLwoNsbbL9nvRLCWJ7w=uLMQ@mail.gmail.com>
Subject: Re: [PATCH v2 00/11] Add Milk-V Pioneer RISC-V board support
To: Palmer Dabbelt <palmer@dabbelt.com>
Cc: aou@eecs.berkeley.edu, chao.wei@sophgo.com, 
	Conor Dooley <conor@kernel.org>, devicetree@vger.kernel.org, 
	emil.renner.berthing@canonical.com, guoren@kernel.org, jszhang@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org, Paul Walmsley <paul.walmsley@sifive.com>, 
	robh+dt@kernel.org, xiaoguang.xing@sophgo.com, wangchen20@iscas.ac.cn
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Palmer Dabbelt <palmer@dabbelt.com> =E4=BA=8E2023=E5=B9=B49=E6=9C=8820=E6=
=97=A5=E5=91=A8=E4=B8=89 23:22=E5=86=99=E9=81=93=EF=BC=9A
>
> On Tue, 19 Sep 2023 23:33:48 PDT (-0700), unicornxw@gmail.com wrote:
> > Milk-V Pioneer [1] is a developer motherboard based on SOPHON SG2042 [2=
]
> > in a standard mATX form factor. Add minimal device
> > tree files for the SG2042 SOC and the Milk-V Pioneer board.
> >
> > Now only support basic uart drivers to boot up into a basic console.
> >
> > Thanks,
> > Chen
> >
> > ---
> >
> > Changes in v2:
> >   The patch series is based on v6.6-rc1. You can simply review or test
> >   the patches at the link [4].
> >   - Improve format for comment of commitments as per input from last re=
view.
> >   - Improve format of DTS as per input from last review.
> >   - Remove numa related stuff from DTS. This part is just for optimizat=
ion, may
> >     add it later if really needed.
> >
> > Previous versions:
> > v1: due to it is not sent in thread, I have listed permlinks of the pat=
chset
> >     [v1-0/12] ~ [v1-12/12] here for quick reference. You can simply rev=
iew or
> >     test the patches at the link [3].
> >
> > [1]: https://milkv.io/pioneer
> > [2]: https://en.sophgo.com/product/introduce/sg2042.html
> > [3]: https://github.com/unicornx/linux-riscv/commits/milkv-pioneer-mini=
mal
> > [4]: https://github.com/unicornx/linux-riscv/commits/milkv-pioneer-mini=
mal-v2
> > [v1-0/12]:https://lore.kernel.org/linux-riscv/20230915070856.117514-1-w=
angchen20@iscas.ac.cn/
> > [v1-1/12]:https://lore.kernel.org/linux-riscv/20230915071005.117575-1-w=
angchen20@iscas.ac.cn/
> > [v1-2/12]:https://lore.kernel.org/linux-riscv/20230915071409.117692-1-w=
angchen20@iscas.ac.cn/
> > [v1-3/12]:https://lore.kernel.org/linux-riscv/20230915072242.117935-1-w=
angchen20@iscas.ac.cn/
> > [v1-4/12]:https://lore.kernel.org/linux-riscv/20230915072333.117991-1-w=
angchen20@iscas.ac.cn/
> > [v1-5/12]:https://lore.kernel.org/linux-riscv/20230915072358.118045-1-w=
angchen20@iscas.ac.cn/
> > [v1-6/12]:https://lore.kernel.org/linux-riscv/20230915072415.118100-1-w=
angchen20@iscas.ac.cn/
> > [v1-7/12]:https://lore.kernel.org/linux-riscv/20230915072431.118154-1-w=
angchen20@iscas.ac.cn/
> > [v1-8/12]:https://lore.kernel.org/linux-riscv/20230915072451.118209-1-w=
angchen20@iscas.ac.cn/
> > [v1-9/12]:https://lore.kernel.org/linux-riscv/20230915072517.118266-1-w=
angchen20@iscas.ac.cn/
> > [v1-10/12]:https://lore.kernel.org/linux-riscv/20230915072558.118325-1-=
wangchen20@iscas.ac.cn/
> > [v1-11/12]:https://lore.kernel.org/linux-riscv/20230915072624.118388-1-=
wangchen20@iscas.ac.cn/
> > [v1-12/12]:https://lore.kernel.org/linux-riscv/20230915072653.118448-1-=
wangchen20@iscas.ac.cn/
> >
> > ---
> >
> > Chen Wang (8):
> >   riscv: Add SOPHGO SOC family Kconfig support
> >   dt-bindings: vendor-prefixes: add milkv/sophgo
> >   dt-bindings: riscv: add sophgo sg2042 bindings
> >   dt-bindings: riscv: Add T-HEAD C920 compatibles
> >   dt-bindings: interrupt-controller: Add SOPHGO's SG2042 PLIC
> >   riscv: dts: add initial SOPHGO SG2042 SoC device tree
> >   riscv: dts: sophgo: add Milk-V Pioneer board device tree
> >   riscv: defconfig: enable SOPHGO SoC
> >
> > Emil Renner Berthing (2):
> >   dt-bindings: serial: snps-dw-apb-uart: Add Sophgo SG2042 uarts
> >   serial: 8250_dw: Add Sophgo SG2042 support
> >
> > Inochi Amaoto (1):
> >   dt-bindings: timer: Add Sophgo sg2042 clint
> >
> >  .../sifive,plic-1.0.0.yaml                    |    1 +
> >  .../devicetree/bindings/riscv/cpus.yaml       |    1 +
> >  .../devicetree/bindings/riscv/sophgo.yaml     |   28 +
> >  .../bindings/serial/snps-dw-apb-uart.yaml     |    1 +
> >  .../bindings/timer/sifive,clint.yaml          |    8 +
> >  .../devicetree/bindings/vendor-prefixes.yaml  |    4 +
> >  MAINTAINERS                                   |    7 +
> >  arch/riscv/Kconfig.socs                       |    5 +
> >  arch/riscv/boot/dts/Makefile                  |    1 +
> >  arch/riscv/boot/dts/sophgo/Makefile           |    3 +
> >  arch/riscv/boot/dts/sophgo/sg2042-cpus.dtsi   | 1744 +++++++++++++++++
> >  .../boot/dts/sophgo/sg2042-milkv-pioneer.dts  |   19 +
> >  arch/riscv/boot/dts/sophgo/sg2042.dtsi        |  439 +++++
> >  arch/riscv/configs/defconfig                  |    1 +
> >  drivers/tty/serial/8250/8250_dw.c             |    5 +-
> >  15 files changed, 2265 insertions(+), 2 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/riscv/sophgo.yaml
> >  create mode 100644 arch/riscv/boot/dts/sophgo/Makefile
> >  create mode 100644 arch/riscv/boot/dts/sophgo/sg2042-cpus.dtsi
> >  create mode 100644 arch/riscv/boot/dts/sophgo/sg2042-milkv-pioneer.dts
> >  create mode 100644 arch/riscv/boot/dts/sophgo/sg2042.dtsi
>
> Given this is the first sg2042 and it appears to have a few errata (the
> FP rounding issues and the special fence for starvation), I think we
> want to make sure we figure out how to provide that information to
> userspace.
>

Hi, Palmer,
I don't  understand well what's your meaning of "provide that
information to userspace", can you please clarify more?
And for this patchset, do we still lack something else? This patchset
is the first one for sg2042, but I don't see those issues you
mentioned would block it, becasue the target of this first patchset we
just want to make sure the kernel can boot up and work with a uart
console.

Thanks in adv.
Chen


> > base-commit: 0bb80ecc33a8fb5a682236443c1e740d5c917d1d


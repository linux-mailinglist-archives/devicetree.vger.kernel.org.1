Return-Path: <devicetree+bounces-1826-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 28CE07A8826
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 17:22:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D80A4282A3C
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 15:22:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C6333B7B2;
	Wed, 20 Sep 2023 15:22:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B89F83B78C
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 15:22:41 +0000 (UTC)
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A07F394
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 08:22:39 -0700 (PDT)
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-1c465d59719so31000145ad.1
        for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 08:22:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20230601.gappssmtp.com; s=20230601; t=1695223359; x=1695828159; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zPVlO2IEEO/6nSEB/eijM1OQHKXd4fySTb02GTapUFA=;
        b=CRt748bStygZPLYOV9dYeFU754scHa7TUTZdvadPjFSVTTFaW7RtfriJCiVRVshl2O
         r42lkP+zJH+Ef14VC03beh6G86EWxlOl4XN6Q2xpUXEV+VvEDBHl55RF62JpGVLQj87U
         OOUXFqtImyaUiFoYt0A6gtYnXqeECuRDFAnnVikOra4e4FcbHPff3QvG2vvjGCs9ERQ/
         surUrVZHuibSH9OQ8we3xordUnCA4Ex6TuiB3OmifurOSgPC/mO0numFW9jC/t6TzJYI
         lj9L0pRLE30tNcSjRbpMRPIDSd2t9XhmRij33zGr5VmejM6VLrvAcpGCaObmqulVhRme
         6aiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695223359; x=1695828159;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zPVlO2IEEO/6nSEB/eijM1OQHKXd4fySTb02GTapUFA=;
        b=DcR6THB9XYBp059HGEJGUMmaI3FBdXRMYdKLa05ztg4783wfG8sZ8pS8ySWBoVhT8H
         XJhirdpETgCDrMO+IeaWiTsccq4sSExz/lazKRqxVxNlxLKMtAA/j8UY9lyKrCEyEoLA
         m8Qy2ew9pXp8IFrx+hZCZvlZvReClws+R8FJG3bUD0uVeLMJn0P+0gti1JAuZkDEkExz
         Dyqo5F3HreAVXp3CeMlJG09q0vA50tKsuPNczp0yQgb22dRD/uBxx3EOP3duMlimkiRR
         yT6o2sM4lfKajWj4UEQjMLXb2girUCqFI5nn1r//2lcPtXOY58inHoMwVRPGjPzJJD8Z
         h0bA==
X-Gm-Message-State: AOJu0YxpSkusPiCqiybB3Rilccb/bP/4TuilQhz9oOZsLGpT8z7hlirF
	m8ZKXNK4Q6rTl3Foj2iXiNSlRA==
X-Google-Smtp-Source: AGHT+IE4ApIConu2a/RS1kYG9WIO5HCabtzPHK0Zlm4BRkU6utrvdaNjkCBDuHUBV+76Hg4kOamhwg==
X-Received: by 2002:a17:902:bd43:b0:1b3:9d13:34b3 with SMTP id b3-20020a170902bd4300b001b39d1334b3mr2337093plx.37.1695223358955;
        Wed, 20 Sep 2023 08:22:38 -0700 (PDT)
Received: from localhost ([51.52.155.79])
        by smtp.gmail.com with ESMTPSA id h10-20020a170902f7ca00b001c46f1e15edsm6633148plw.271.2023.09.20.08.22.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Sep 2023 08:22:38 -0700 (PDT)
Date: Wed, 20 Sep 2023 08:22:38 -0700 (PDT)
X-Google-Original-Date: Wed, 20 Sep 2023 08:22:35 PDT (-0700)
Subject:     Re: [PATCH v2 00/11] Add Milk-V Pioneer RISC-V board support
In-Reply-To: <cover.1695189879.git.wangchen20@iscas.ac.cn>
CC: aou@eecs.berkeley.edu, chao.wei@sophgo.com, Conor Dooley <conor@kernel.org>,
  devicetree@vger.kernel.org, emil.renner.berthing@canonical.com, guoren@kernel.org, jszhang@kernel.org,
  krzysztof.kozlowski+dt@linaro.org, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
  Paul Walmsley <paul.walmsley@sifive.com>, robh+dt@kernel.org, xiaoguang.xing@sophgo.com, wangchen20@iscas.ac.cn
From: Palmer Dabbelt <palmer@dabbelt.com>
To: unicornxw@gmail.com
Message-ID: <mhng-1c4de53c-6168-432c-b37a-284c90b1ed2d@palmer-ri-x1c9a>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, 19 Sep 2023 23:33:48 PDT (-0700), unicornxw@gmail.com wrote:
> Milk-V Pioneer [1] is a developer motherboard based on SOPHON SG2042 [2]
> in a standard mATX form factor. Add minimal device
> tree files for the SG2042 SOC and the Milk-V Pioneer board.
>
> Now only support basic uart drivers to boot up into a basic console.
>
> Thanks,
> Chen
>
> ---
>
> Changes in v2:
>   The patch series is based on v6.6-rc1. You can simply review or test
>   the patches at the link [4].
>   - Improve format for comment of commitments as per input from last review.
>   - Improve format of DTS as per input from last review.
>   - Remove numa related stuff from DTS. This part is just for optimization, may
>     add it later if really needed.
>
> Previous versions:
> v1: due to it is not sent in thread, I have listed permlinks of the patchset
>     [v1-0/12] ~ [v1-12/12] here for quick reference. You can simply review or
>     test the patches at the link [3].
>
> [1]: https://milkv.io/pioneer
> [2]: https://en.sophgo.com/product/introduce/sg2042.html
> [3]: https://github.com/unicornx/linux-riscv/commits/milkv-pioneer-minimal
> [4]: https://github.com/unicornx/linux-riscv/commits/milkv-pioneer-minimal-v2
> [v1-0/12]:https://lore.kernel.org/linux-riscv/20230915070856.117514-1-wangchen20@iscas.ac.cn/
> [v1-1/12]:https://lore.kernel.org/linux-riscv/20230915071005.117575-1-wangchen20@iscas.ac.cn/
> [v1-2/12]:https://lore.kernel.org/linux-riscv/20230915071409.117692-1-wangchen20@iscas.ac.cn/
> [v1-3/12]:https://lore.kernel.org/linux-riscv/20230915072242.117935-1-wangchen20@iscas.ac.cn/
> [v1-4/12]:https://lore.kernel.org/linux-riscv/20230915072333.117991-1-wangchen20@iscas.ac.cn/
> [v1-5/12]:https://lore.kernel.org/linux-riscv/20230915072358.118045-1-wangchen20@iscas.ac.cn/
> [v1-6/12]:https://lore.kernel.org/linux-riscv/20230915072415.118100-1-wangchen20@iscas.ac.cn/
> [v1-7/12]:https://lore.kernel.org/linux-riscv/20230915072431.118154-1-wangchen20@iscas.ac.cn/
> [v1-8/12]:https://lore.kernel.org/linux-riscv/20230915072451.118209-1-wangchen20@iscas.ac.cn/
> [v1-9/12]:https://lore.kernel.org/linux-riscv/20230915072517.118266-1-wangchen20@iscas.ac.cn/
> [v1-10/12]:https://lore.kernel.org/linux-riscv/20230915072558.118325-1-wangchen20@iscas.ac.cn/
> [v1-11/12]:https://lore.kernel.org/linux-riscv/20230915072624.118388-1-wangchen20@iscas.ac.cn/
> [v1-12/12]:https://lore.kernel.org/linux-riscv/20230915072653.118448-1-wangchen20@iscas.ac.cn/
>
> ---
>
> Chen Wang (8):
>   riscv: Add SOPHGO SOC family Kconfig support
>   dt-bindings: vendor-prefixes: add milkv/sophgo
>   dt-bindings: riscv: add sophgo sg2042 bindings
>   dt-bindings: riscv: Add T-HEAD C920 compatibles
>   dt-bindings: interrupt-controller: Add SOPHGO's SG2042 PLIC
>   riscv: dts: add initial SOPHGO SG2042 SoC device tree
>   riscv: dts: sophgo: add Milk-V Pioneer board device tree
>   riscv: defconfig: enable SOPHGO SoC
>
> Emil Renner Berthing (2):
>   dt-bindings: serial: snps-dw-apb-uart: Add Sophgo SG2042 uarts
>   serial: 8250_dw: Add Sophgo SG2042 support
>
> Inochi Amaoto (1):
>   dt-bindings: timer: Add Sophgo sg2042 clint
>
>  .../sifive,plic-1.0.0.yaml                    |    1 +
>  .../devicetree/bindings/riscv/cpus.yaml       |    1 +
>  .../devicetree/bindings/riscv/sophgo.yaml     |   28 +
>  .../bindings/serial/snps-dw-apb-uart.yaml     |    1 +
>  .../bindings/timer/sifive,clint.yaml          |    8 +
>  .../devicetree/bindings/vendor-prefixes.yaml  |    4 +
>  MAINTAINERS                                   |    7 +
>  arch/riscv/Kconfig.socs                       |    5 +
>  arch/riscv/boot/dts/Makefile                  |    1 +
>  arch/riscv/boot/dts/sophgo/Makefile           |    3 +
>  arch/riscv/boot/dts/sophgo/sg2042-cpus.dtsi   | 1744 +++++++++++++++++
>  .../boot/dts/sophgo/sg2042-milkv-pioneer.dts  |   19 +
>  arch/riscv/boot/dts/sophgo/sg2042.dtsi        |  439 +++++
>  arch/riscv/configs/defconfig                  |    1 +
>  drivers/tty/serial/8250/8250_dw.c             |    5 +-
>  15 files changed, 2265 insertions(+), 2 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/riscv/sophgo.yaml
>  create mode 100644 arch/riscv/boot/dts/sophgo/Makefile
>  create mode 100644 arch/riscv/boot/dts/sophgo/sg2042-cpus.dtsi
>  create mode 100644 arch/riscv/boot/dts/sophgo/sg2042-milkv-pioneer.dts
>  create mode 100644 arch/riscv/boot/dts/sophgo/sg2042.dtsi

Given this is the first sg2042 and it appears to have a few errata (the 
FP rounding issues and the special fence for starvation), I think we 
want to make sure we figure out how to provide that information to 
userspace.

> base-commit: 0bb80ecc33a8fb5a682236443c1e740d5c917d1d


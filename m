Return-Path: <devicetree+bounces-1728-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C50B7A7A79
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 13:32:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 780F71C209CF
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 11:32:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB4221864F;
	Wed, 20 Sep 2023 11:32:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E995156F8
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 11:32:32 +0000 (UTC)
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A466B0
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 04:32:26 -0700 (PDT)
Received: from mail-ua1-f71.google.com (mail-ua1-f71.google.com [209.85.222.71])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 411993F62E
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 11:32:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1695209543;
	bh=tYH75YFDR1TBEbE07AapiR/uoifRSCOLrePngO7AlEw=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=jHs2DgNbWsYWa8zKvJfQ1oDzlTHcI5V9rY0WTd0lDjUGwiLPHaiCn/tH419xRFVNp
	 AiR+HnutNS2221ByE9TnWAIEMklz85hkOpCiNbqVvvHeFsVWAO65cyH55k8+iDiPkW
	 yRPJ+lBOrykhpFNMw2drtSu3BeTHfCXQiAIS8iqNbU5eOcle068L2R1lCCMpZSRUNI
	 dz3vAHc2ZsZO2q9Br/BfUo9J4dB6wVDWGKbqZGNBVF6coBNjCDhg3aN2Fty2UV7GOc
	 d3Gn0fMx0C5FcbP/rAJk98m3vewdRENKbU3Zv34Cc+jHyx1IK+FbmLCe7zLg0VnIO9
	 MQxnU2mgaVzbA==
Received: by mail-ua1-f71.google.com with SMTP id a1e0cc1a2514c-7a8b9999ea6so1401638241.1
        for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 04:32:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695209542; x=1695814342;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tYH75YFDR1TBEbE07AapiR/uoifRSCOLrePngO7AlEw=;
        b=ieeqZVw72a3OWY2kCQhTS6pDkgMEWCkAOQlAvVaOH3sQ61Z0FIZTGjG09hE9+tt3I/
         KR56FL/RWgwsRrMZdkFq9I8SBqe6KrHqk79tn222dAWEueoAC05GzqaNSEHXVZpCPth0
         V/z2mcwF9IQ7RDkmSqLPGl3q4gPvfiglsz8OobEQJwV5r1cRs2xD8E/BhTRO74f1iqYG
         cmGmO7zQ3r1db2d/5OdZxIyDXmVtCdrDk7UDcFOb7js0bteEgI0KEEpKUpeRve/8YtxQ
         R2vlWzE4AHMIhZRxjU+MxS5mhdieSjXylJoAL4oYtM+40d8JceQSNb1SMV+9pVoYVLyf
         pIYg==
X-Gm-Message-State: AOJu0YyzL0SisWwpCB25jNG9MSJqzn2O3t2omDRWxJsjTCRfeJ0yYceW
	vFaa6wfSye1l8JXC4EBZUJNLh7XQduWAg+8ASNLtZw0PrClQT5zmPkfsokg/a4b2mMRk3ntHdXd
	b+Rw6SWDP0AsFRajfxKF/22NAdR8G2WDCut14E2fkTzuHyXbznYChuEU=
X-Received: by 2002:a67:f513:0:b0:452:644e:2999 with SMTP id u19-20020a67f513000000b00452644e2999mr2532833vsn.30.1695209541337;
        Wed, 20 Sep 2023 04:32:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGvZ1bFLaJo/kqVUAKH1id99YWOixlEBKmkfB21yJmnojdR5XsXmQ1IsjH4M/m1GQFCI0Drqqhq4kM+02v3I10=
X-Received: by 2002:a67:f513:0:b0:452:644e:2999 with SMTP id
 u19-20020a67f513000000b00452644e2999mr2532807vsn.30.1695209540730; Wed, 20
 Sep 2023 04:32:20 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 20 Sep 2023 04:32:20 -0700
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <ffe6a61a8879232aea7b86ff8aee5d681c6bd287.1695189879.git.wangchen20@iscas.ac.cn>
References: <cover.1695189879.git.wangchen20@iscas.ac.cn> <ffe6a61a8879232aea7b86ff8aee5d681c6bd287.1695189879.git.wangchen20@iscas.ac.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Wed, 20 Sep 2023 04:32:19 -0700
Message-ID: <CAJM55Z-SYmGL-BjNi6EUKOrq34H=p1hRaRfkjGvBOqoKfacM1g@mail.gmail.com>
Subject: Re: [PATCH v2 09/11] riscv: dts: add initial SOPHGO SG2042 SoC device tree
To: Chen Wang <unicornxw@gmail.com>, aou@eecs.berkeley.edu, chao.wei@sophgo.com, 
	conor@kernel.org, devicetree@vger.kernel.org, 
	emil.renner.berthing@canonical.com, guoren@kernel.org, jszhang@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org, palmer@dabbelt.com, paul.walmsley@sifive.com, 
	robh+dt@kernel.org, xiaoguang.xing@sophgo.com
Cc: Chen Wang <wangchen20@iscas.ac.cn>, Inochi Amaoto <inochiama@outlook.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Chen Wang wrote:
> Milk-V Pioneer motherboard is powered by SOPHON's SG2042.

Hi,

I'm just wondering what is the relation between SOPHON and SOPHGO?
I think most of the content refers to the SoC as Sophgo SG2042 or SOPHGO
SG2042, but here you're using SOPHON.

Also it would be great if you could decide if it's spelled SOPHGO or Sophgo and
be consistent in all these patches.

/Emil

>
> SG2042 is server grade chip with high performance, low power
> consumption and high data throughput.
> Key features:
> - 64 RISC-V cpu cores which implements IMAFDC
> - 4 cores per cluster, 16 clusters on chip
> - ......
>
> More info is available at [1].
>
> [1]: https://en.sophgo.com/product/introduce/sg2042.html
>
> Currently only support booting into console with only uart,
> other features will be added soon later.
>
> Acked-by: Xiaoguang Xing <xiaoguang.xing@sophgo.com>
> Signed-off-by: Xiaoguang Xing <xiaoguang.xing@sophgo.com>
> Signed-off-by: Inochi Amaoto <inochiama@outlook.com>
> Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
> Signed-off-by: Chen Wang <wangchen20@iscas.ac.cn>
> ---
>  arch/riscv/boot/dts/sophgo/sg2042-cpus.dtsi | 1744 +++++++++++++++++++
>  arch/riscv/boot/dts/sophgo/sg2042.dtsi      |  439 +++++
>  2 files changed, 2183 insertions(+)
>  create mode 100644 arch/riscv/boot/dts/sophgo/sg2042-cpus.dtsi
>  create mode 100644 arch/riscv/boot/dts/sophgo/sg2042.dtsi
>
> diff --git a/arch/riscv/boot/dts/sophgo/sg2042-cpus.dtsi b/arch/riscv/boot/dts/sophgo/sg2042-cpus.dtsi
> new file mode 100644
> index 000000000000..9fc79b1cf3bf
> --- /dev/null
> +++ b/arch/riscv/boot/dts/sophgo/sg2042-cpus.dtsi
> @@ -0,0 +1,1744 @@
> +// SPDX-License-Identifier: GPL-2.0 OR MIT
> +/*
> + * Copyright (C) 2022 Sophgo Technology Inc. All rights reserved.
> + */
> +
> +/ {
> +	cpus {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		timebase-frequency = <50000000>;
> +
> +		cpu-map {
> +			socket0 {
> +				cluster0 {
> +					 core0 {
> +						cpu = <&cpu0>;
> +					 };
> +					 core1 {
> +						cpu = <&cpu1>;
> +					 };
> +					 core2 {
> +						cpu = <&cpu2>;
> +					 };
> +					 core3 {
> +						cpu = <&cpu3>;
> +					 };
> +				};
> +
> +				cluster1 {
> +					 core0 {
> +						cpu = <&cpu4>;
> +					 };
> +					 core1 {
> +						cpu = <&cpu5>;
> +					 };
> +					 core2 {
> +						cpu = <&cpu6>;
> +					 };
> +					 core3 {
> +						cpu = <&cpu7>;
> +					 };
> +				};
> +
> +				cluster2 {
> +					 core0 {
> +						cpu = <&cpu16>;
> +					 };
> +					 core1 {
> +						cpu = <&cpu17>;
> +					 };
> +					 core2 {
> +						cpu = <&cpu18>;
> +					 };
> +					 core3 {
> +						cpu = <&cpu19>;
> +					 };
> +				};
> +
> +				cluster3 {
> +					 core0 {
> +						cpu = <&cpu20>;
> +					 };
> +					 core1 {
> +						cpu = <&cpu21>;
> +					 };
> +					 core2 {
> +						cpu = <&cpu22>;
> +					 };
> +					 core3 {
> +						cpu = <&cpu23>;
> +					 };
> +				};
> +
> +				cluster4 {
> +					 core0 {
> +						cpu = <&cpu8>;
> +					 };
> +					 core1 {
> +						cpu = <&cpu9>;
> +					 };
> +					 core2 {
> +						cpu = <&cpu10>;
> +					 };
> +					 core3 {
> +						cpu = <&cpu11>;
> +					 };
> +				};
> +
> +				cluster5 {
> +					 core0 {
> +						cpu = <&cpu12>;
> +					 };
> +					 core1 {
> +						cpu = <&cpu13>;
> +					 };
> +					 core2 {
> +						cpu = <&cpu14>;
> +					 };
> +					 core3 {
> +						cpu = <&cpu15>;
> +					 };
> +				};
> +
> +				cluster6 {
> +					 core0 {
> +						cpu = <&cpu24>;
> +					 };
> +					 core1 {
> +						cpu = <&cpu25>;
> +					 };
> +					 core2 {
> +						cpu = <&cpu26>;
> +					 };
> +					 core3 {
> +						cpu = <&cpu27>;
> +					 };
> +				};
> +
> +				cluster7 {
> +					 core0 {
> +						cpu = <&cpu28>;
> +					 };
> +					 core1 {
> +						cpu = <&cpu29>;
> +					 };
> +					 core2 {
> +						cpu = <&cpu30>;
> +					 };
> +					 core3 {
> +						cpu = <&cpu31>;
> +					 };
> +				};
> +
> +				cluster8 {
> +					 core0 {
> +						cpu = <&cpu32>;
> +					 };
> +					 core1 {
> +						cpu = <&cpu33>;
> +					 };
> +					 core2 {
> +						cpu = <&cpu34>;
> +					 };
> +					 core3 {
> +						cpu = <&cpu35>;
> +					 };
> +				};
> +
> +				cluster9 {
> +					 core0 {
> +						cpu = <&cpu36>;
> +					 };
> +					 core1 {
> +						cpu = <&cpu37>;
> +					 };
> +					 core2 {
> +						cpu = <&cpu38>;
> +					 };
> +					 core3 {
> +						cpu = <&cpu39>;
> +					 };
> +				};
> +
> +				cluster10 {
> +					 core0 {
> +						cpu = <&cpu48>;
> +					 };
> +					 core1 {
> +						cpu = <&cpu49>;
> +					 };
> +					 core2 {
> +						cpu = <&cpu50>;
> +					 };
> +					 core3 {
> +						cpu = <&cpu51>;
> +					 };
> +				};
> +
> +				cluster11 {
> +					 core0 {
> +						cpu = <&cpu52>;
> +					 };
> +					 core1 {
> +						cpu = <&cpu53>;
> +					 };
> +					 core2 {
> +						cpu = <&cpu54>;
> +					 };
> +					 core3 {
> +						cpu = <&cpu55>;
> +					 };
> +				};
> +
> +				cluster12 {
> +					 core0 {
> +						cpu = <&cpu40>;
> +					 };
> +					 core1 {
> +						cpu = <&cpu41>;
> +					 };
> +					 core2 {
> +						cpu = <&cpu42>;
> +					 };
> +					 core3 {
> +						cpu = <&cpu43>;
> +					 };
> +				};
> +
> +				cluster13 {
> +					 core0 {
> +						cpu = <&cpu44>;
> +					 };
> +					 core1 {
> +						cpu = <&cpu45>;
> +					 };
> +					 core2 {
> +						cpu = <&cpu46>;
> +					 };
> +					 core3 {
> +						cpu = <&cpu47>;
> +					 };
> +				};
> +
> +				cluster14 {
> +					 core0 {
> +						cpu = <&cpu56>;
> +					 };
> +					 core1 {
> +						cpu = <&cpu57>;
> +					 };
> +					 core2 {
> +						cpu = <&cpu58>;
> +					 };
> +					 core3 {
> +						cpu = <&cpu59>;
> +					 };
> +				};
> +
> +				cluster15 {
> +					 core0 {
> +						cpu = <&cpu60>;
> +					 };
> +					 core1 {
> +						cpu = <&cpu61>;
> +					 };
> +					 core2 {
> +						cpu = <&cpu62>;
> +					 };
> +					 core3 {
> +						cpu = <&cpu63>;
> +					 };
> +				};
> +			};
> +		};
> +
> +		cpu0: cpu@0 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <0>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache0>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu0_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu1: cpu@1 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <1>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache0>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu1_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu2: cpu@2 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <2>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache0>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu2_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu3: cpu@3 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <3>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache0>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu3_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu4: cpu@4 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <4>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache1>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu4_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu5: cpu@5 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <5>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache1>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu5_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu6: cpu@6 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <6>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache1>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu6_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu7: cpu@7 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <7>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache1>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu7_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu8: cpu@8 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <8>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache4>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu8_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu9: cpu@9 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <9>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache4>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu9_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu10: cpu@10 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <10>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache4>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu10_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu11: cpu@11 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <11>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache4>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu11_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu12: cpu@12 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <12>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache5>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu12_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu13: cpu@13 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <13>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache5>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu13_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu14: cpu@14 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <14>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache5>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu14_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu15: cpu@15 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <15>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache5>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu15_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu16: cpu@16 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <16>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache2>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu16_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu17: cpu@17 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <17>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache2>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu17_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu18: cpu@18 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <18>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache2>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu18_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu19: cpu@19 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <19>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache2>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu19_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu20: cpu@20 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <20>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache3>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu20_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu21: cpu@21 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <21>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache3>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu21_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu22: cpu@22 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <22>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache3>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu22_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu23: cpu@23 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <23>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache3>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu23_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu24: cpu@24 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <24>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache6>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu24_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu25: cpu@25 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <25>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache6>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu25_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu26: cpu@26 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <26>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache6>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu26_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu27: cpu@27 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <27>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache6>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu27_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu28: cpu@28 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <28>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache7>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu28_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu29: cpu@29 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <29>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache7>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu29_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu30: cpu@30 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <30>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache7>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu30_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu31: cpu@31 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <31>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache7>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu31_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu32: cpu@32 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <32>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache8>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu32_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu33: cpu@33 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <33>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache8>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu33_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu34: cpu@34 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <34>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache8>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu34_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu35: cpu@35 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <35>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache8>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu35_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu36: cpu@36 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <36>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache9>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu36_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu37: cpu@37 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <37>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache9>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu37_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu38: cpu@38 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <38>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache9>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu38_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu39: cpu@39 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <39>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache9>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu39_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu40: cpu@40 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <40>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache12>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu40_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu41: cpu@41 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <41>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache12>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu41_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu42: cpu@42 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <42>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache12>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu42_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu43: cpu@43 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <43>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache12>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu43_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu44: cpu@44 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <44>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache13>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu44_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu45: cpu@45 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <45>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache13>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu45_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu46: cpu@46 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <46>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache13>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu46_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu47: cpu@47 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <47>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache13>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu47_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu48: cpu@48 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <48>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache10>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu48_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu49: cpu@49 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <49>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache10>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu49_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu50: cpu@50 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <50>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache10>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu50_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu51: cpu@51 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <51>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache10>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu51_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu52: cpu@52 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <52>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache11>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu52_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu53: cpu@53 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <53>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache11>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu53_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu54: cpu@54 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <54>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache11>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu54_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu55: cpu@55 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <55>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache11>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu55_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu56: cpu@56 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <56>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache14>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu56_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu57: cpu@57 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <57>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache14>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu57_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu58: cpu@58 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <58>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache14>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu58_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu59: cpu@59 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <59>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache14>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu59_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu60: cpu@60 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <60>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache15>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu60_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu61: cpu@61 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <61>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache15>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu61_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu62: cpu@62 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <62>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache15>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu62_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		cpu63: cpu@63 {
> +			compatible = "thead,c920", "riscv";
> +			device_type = "cpu";
> +			riscv,isa = "rv64imafdc";
> +			reg = <63>;
> +			i-cache-block-size = <64>;
> +			i-cache-size = <65536>;
> +			i-cache-sets = <512>;
> +			d-cache-block-size = <64>;
> +			d-cache-size = <65536>;
> +			d-cache-sets = <512>;
> +			next-level-cache = <&l2_cache15>;
> +			mmu-type = "riscv,sv39";
> +
> +			cpu63_intc: interrupt-controller {
> +				compatible = "riscv,cpu-intc";
> +				interrupt-controller;
> +				#interrupt-cells = <1>;
> +			};
> +		};
> +
> +		l2_cache0: l2-cache@0 {
> +			compatible = "cache";
> +			cache-block-size = <64>;
> +			cache-level = <2>;
> +			cache-size = <1048576>;
> +			cache-sets = <1024>;
> +			cache-unified;
> +		};
> +
> +		l2_cache1: l2-cache@1 {
> +			compatible = "cache";
> +			cache-block-size = <64>;
> +			cache-level = <2>;
> +			cache-size = <1048576>;
> +			cache-sets = <1024>;
> +			cache-unified;
> +		};
> +
> +		l2_cache2: l2-cache@2 {
> +			compatible = "cache";
> +			cache-block-size = <64>;
> +			cache-level = <2>;
> +			cache-size = <1048576>;
> +			cache-sets = <1024>;
> +			cache-unified;
> +		};
> +
> +		l2_cache3: l2-cache@3 {
> +			compatible = "cache";
> +			cache-block-size = <64>;
> +			cache-level = <2>;
> +			cache-size = <1048576>;
> +			cache-sets = <1024>;
> +			cache-unified;
> +		};
> +
> +		l2_cache4: l2-cache@4 {
> +			compatible = "cache";
> +			cache-block-size = <64>;
> +			cache-level = <2>;
> +			cache-size = <1048576>;
> +			cache-sets = <1024>;
> +			cache-unified;
> +		};
> +
> +		l2_cache5: l2-cache@5 {
> +			compatible = "cache";
> +			cache-block-size = <64>;
> +			cache-level = <2>;
> +			cache-size = <1048576>;
> +			cache-sets = <1024>;
> +			cache-unified;
> +		};
> +
> +		l2_cache6: l2-cache@6 {
> +			compatible = "cache";
> +			cache-block-size = <64>;
> +			cache-level = <2>;
> +			cache-size = <1048576>;
> +			cache-sets = <1024>;
> +			cache-unified;
> +		};
> +
> +		l2_cache7: l2-cache@7 {
> +			compatible = "cache";
> +			cache-block-size = <64>;
> +			cache-level = <2>;
> +			cache-size = <1048576>;
> +			cache-sets = <1024>;
> +			cache-unified;
> +		};
> +
> +		l2_cache8: l2-cache@8 {
> +			compatible = "cache";
> +			cache-block-size = <64>;
> +			cache-level = <2>;
> +			cache-size = <1048576>;
> +			cache-sets = <1024>;
> +			cache-unified;
> +		};
> +
> +		l2_cache9: l2-cache@9 {
> +			compatible = "cache";
> +			cache-block-size = <64>;
> +			cache-level = <2>;
> +			cache-size = <1048576>;
> +			cache-sets = <1024>;
> +			cache-unified;
> +		};
> +
> +		l2_cache10: l2-cache@10 {
> +			compatible = "cache";
> +			cache-block-size = <64>;
> +			cache-level = <2>;
> +			cache-size = <1048576>;
> +			cache-sets = <1024>;
> +			cache-unified;
> +		};
> +
> +		l2_cache11: l2-cache@11 {
> +			compatible = "cache";
> +			cache-block-size = <64>;
> +			cache-level = <2>;
> +			cache-size = <1048576>;
> +			cache-sets = <1024>;
> +			cache-unified;
> +		};
> +
> +		l2_cache12: l2-cache@12 {
> +			compatible = "cache";
> +			cache-block-size = <64>;
> +			cache-level = <2>;
> +			cache-size = <1048576>;
> +			cache-sets = <1024>;
> +			cache-unified;
> +		};
> +
> +		l2_cache13: l2-cache@13 {
> +			compatible = "cache";
> +			cache-block-size = <64>;
> +			cache-level = <2>;
> +			cache-size = <1048576>;
> +			cache-sets = <1024>;
> +			cache-unified;
> +		};
> +
> +		l2_cache14: l2-cache@14 {
> +			compatible = "cache";
> +			cache-block-size = <64>;
> +			cache-level = <2>;
> +			cache-size = <1048576>;
> +			cache-sets = <1024>;
> +			cache-unified;
> +		};
> +
> +		l2_cache15: l2-cache@15 {
> +			compatible = "cache";
> +			cache-block-size = <64>;
> +			cache-level = <2>;
> +			cache-size = <1048576>;
> +			cache-sets = <1024>;
> +			cache-unified;
> +		};
> +	};
> +};
> diff --git a/arch/riscv/boot/dts/sophgo/sg2042.dtsi b/arch/riscv/boot/dts/sophgo/sg2042.dtsi
> new file mode 100644
> index 000000000000..747fd9764c95
> --- /dev/null
> +++ b/arch/riscv/boot/dts/sophgo/sg2042.dtsi
> @@ -0,0 +1,439 @@
> +// SPDX-License-Identifier: GPL-2.0 OR MIT
> +/*
> + * Copyright (C) 2022 Sophgo Technology Inc. All rights reserved.
> + */
> +
> +/dts-v1/;
> +#include <dt-bindings/interrupt-controller/irq.h>
> +
> +#include "sg2042-cpus.dtsi"
> +
> +#define SOC_PERIPHERAL_IRQ(nr) (nr)
> +
> +/ {
> +	compatible = "sophgo,sg2042";
> +	#address-cells = <2>;
> +	#size-cells = <2>;
> +	dma-noncoherent;
> +
> +	aliases {
> +		serial0 = &uart0;
> +	};
> +
> +	/* the mem node will be updated by ZSBL. */
> +	memory@0 {
> +		device_type = "memory";
> +		reg = <0x00000000 0x00000000 0x00000000 0x00000000>;
> +	};
> +
> +	memory@1 {
> +		device_type = "memory";
> +		reg = <0x00000000 0x00000001 0x00000000 0x00000000>;
> +	};
> +
> +	memory@2 {
> +		device_type = "memory";
> +		reg = <0x00000000 0x00000002 0x00000000 0x00000000>;
> +	};
> +
> +	memory@3 {
> +		device_type = "memory";
> +		reg = <0x00000000 0x00000003 0x00000000 0x00000000>;
> +	};
> +
> +	pmu {
> +		compatible = "riscv,pmu";
> +		riscv,event-to-mhpmevent =
> +			<0x00003 0x00000000 0x00000010>,
> +			<0x00004 0x00000000 0x00000011>,
> +			<0x00005 0x00000000 0x00000007>,
> +			<0x00006 0x00000000 0x00000006>,
> +			<0x00008 0x00000000 0x00000027>,
> +			<0x00009 0x00000000 0x00000028>,
> +			<0x10000 0x00000000 0x0000000c>,
> +			<0x10001 0x00000000 0x0000000d>,
> +			<0x10002 0x00000000 0x0000000e>,
> +			<0x10003 0x00000000 0x0000000f>,
> +			<0x10008 0x00000000 0x00000001>,
> +			<0x10009 0x00000000 0x00000002>,
> +			<0x10010 0x00000000 0x00000010>,
> +			<0x10011 0x00000000 0x00000011>,
> +			<0x10012 0x00000000 0x00000012>,
> +			<0x10013 0x00000000 0x00000013>,
> +			<0x10019 0x00000000 0x00000004>,
> +			<0x10021 0x00000000 0x00000003>,
> +			<0x10030 0x00000000 0x0000001c>,
> +			<0x10031 0x00000000 0x0000001b>;
> +		riscv,event-to-mhpmcounters =
> +			<0x00003 0x00003 0xfffffff8>,
> +			<0x00004 0x00004 0xfffffff8>,
> +			<0x00005 0x00005 0xfffffff8>,
> +			<0x00006 0x00006 0xfffffff8>,
> +			<0x00007 0x00007 0xfffffff8>,
> +			<0x00008 0x00008 0xfffffff8>,
> +			<0x00009 0x00009 0xfffffff8>,
> +			<0x0000a 0x0000a 0xfffffff8>,
> +			<0x10000 0x10000 0xfffffff8>,
> +			<0x10001 0x10001 0xfffffff8>,
> +			<0x10002 0x10002 0xfffffff8>,
> +			<0x10003 0x10003 0xfffffff8>,
> +			<0x10008 0x10008 0xfffffff8>,
> +			<0x10009 0x10009 0xfffffff8>,
> +			<0x10010 0x10010 0xfffffff8>,
> +			<0x10011 0x10011 0xfffffff8>,
> +			<0x10012 0x10012 0xfffffff8>,
> +			<0x10013 0x10013 0xfffffff8>,
> +			<0x10019 0x10019 0xfffffff8>,
> +			<0x10021 0x10021 0xfffffff8>,
> +			<0x10030 0x10030 0xfffffff8>,
> +			<0x10031 0x10031 0xfffffff8>;
> +		riscv,raw-event-to-mhpmcounters =
> +			<0x00000000 0x00000001 0xffffffff 0xffffffff 0xfffffff8>,
> +			<0x00000000 0x00000002 0xffffffff 0xffffffff 0xfffffff8>,
> +			<0x00000000 0x00000003 0xffffffff 0xffffffff 0xfffffff8>,
> +			<0x00000000 0x00000004 0xffffffff 0xffffffff 0xfffffff8>,
> +			<0x00000000 0x00000005 0xffffffff 0xffffffff 0xfffffff8>,
> +			<0x00000000 0x00000006 0xffffffff 0xffffffff 0xfffffff8>,
> +			<0x00000000 0x00000007 0xffffffff 0xffffffff 0xfffffff8>,
> +			<0x00000000 0x00000008 0xffffffff 0xffffffff 0xfffffff8>,
> +			<0x00000000 0x00000009 0xffffffff 0xffffffff 0xfffffff8>,
> +			<0x00000000 0x0000000a 0xffffffff 0xffffffff 0xfffffff8>,
> +			<0x00000000 0x0000000b 0xffffffff 0xffffffff 0xfffffff8>,
> +			<0x00000000 0x0000000c 0xffffffff 0xffffffff 0xfffffff8>,
> +			<0x00000000 0x0000000d 0xffffffff 0xffffffff 0xfffffff8>,
> +			<0x00000000 0x0000000e 0xffffffff 0xffffffff 0xfffffff8>,
> +			<0x00000000 0x0000000f 0xffffffff 0xffffffff 0xfffffff8>,
> +			<0x00000000 0x00000010 0xffffffff 0xffffffff 0xfffffff8>,
> +			<0x00000000 0x00000011 0xffffffff 0xffffffff 0xfffffff8>,
> +			<0x00000000 0x00000012 0xffffffff 0xffffffff 0xfffffff8>,
> +			<0x00000000 0x00000013 0xffffffff 0xffffffff 0xfffffff8>,
> +			<0x00000000 0x00000014 0xffffffff 0xffffffff 0xfffffff8>,
> +			<0x00000000 0x00000015 0xffffffff 0xffffffff 0xfffffff8>,
> +			<0x00000000 0x00000016 0xffffffff 0xffffffff 0xfffffff8>,
> +			<0x00000000 0x00000017 0xffffffff 0xffffffff 0xfffffff8>,
> +			<0x00000000 0x00000018 0xffffffff 0xffffffff 0xfffffff8>,
> +			<0x00000000 0x00000019 0xffffffff 0xffffffff 0xfffffff8>,
> +			<0x00000000 0x0000001a 0xffffffff 0xffffffff 0xfffffff8>,
> +			<0x00000000 0x0000001b 0xffffffff 0xffffffff 0xfffffff8>,
> +			<0x00000000 0x0000001c 0xffffffff 0xffffffff 0xfffffff8>,
> +			<0x00000000 0x0000001d 0xffffffff 0xffffffff 0xfffffff8>,
> +			<0x00000000 0x0000001e 0xffffffff 0xffffffff 0xfffffff8>,
> +			<0x00000000 0x0000001f 0xffffffff 0xffffffff 0xfffffff8>,
> +			<0x00000000 0x00000020 0xffffffff 0xffffffff 0xfffffff8>,
> +			<0x00000000 0x00000021 0xffffffff 0xffffffff 0xfffffff8>,
> +			<0x00000000 0x00000022 0xffffffff 0xffffffff 0xfffffff8>,
> +			<0x00000000 0x00000023 0xffffffff 0xffffffff 0xfffffff8>,
> +			<0x00000000 0x00000024 0xffffffff 0xffffffff 0xfffffff8>,
> +			<0x00000000 0x00000025 0xffffffff 0xffffffff 0xfffffff8>,
> +			<0x00000000 0x00000026 0xffffffff 0xffffffff 0xfffffff8>,
> +			<0x00000000 0x00000027 0xffffffff 0xffffffff 0xfffffff8>,
> +			<0x00000000 0x00000028 0xffffffff 0xffffffff 0xfffffff8>,
> +			<0x00000000 0x00000029 0xffffffff 0xffffffff 0xfffffff8>,
> +			<0x00000000 0x0000002a 0xffffffff 0xffffffff 0xfffffff8>;
> +	};
> +
> +	soc: soc {
> +		compatible = "simple-bus";
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +
> +		clint_mswi: interrupt-controller@7094000000 {
> +			compatible = "sophgo,sg2042-clint-mswi", "thead,c900-clint-mswi";
> +			reg = <0x00000070 0x94000000 0x00000000 0x00004000>;
> +			interrupts-extended = <&cpu0_intc 3>,
> +					      <&cpu1_intc 3>,
> +					      <&cpu2_intc 3>,
> +					      <&cpu3_intc 3>,
> +					      <&cpu4_intc 3>,
> +					      <&cpu5_intc 3>,
> +					      <&cpu6_intc 3>,
> +					      <&cpu7_intc 3>,
> +					      <&cpu8_intc 3>,
> +					      <&cpu9_intc 3>,
> +					      <&cpu10_intc 3>,
> +					      <&cpu11_intc 3>,
> +					      <&cpu12_intc 3>,
> +					      <&cpu13_intc 3>,
> +					      <&cpu14_intc 3>,
> +					      <&cpu15_intc 3>,
> +					      <&cpu16_intc 3>,
> +					      <&cpu17_intc 3>,
> +					      <&cpu18_intc 3>,
> +					      <&cpu19_intc 3>,
> +					      <&cpu20_intc 3>,
> +					      <&cpu21_intc 3>,
> +					      <&cpu22_intc 3>,
> +					      <&cpu23_intc 3>,
> +					      <&cpu24_intc 3>,
> +					      <&cpu25_intc 3>,
> +					      <&cpu26_intc 3>,
> +					      <&cpu27_intc 3>,
> +					      <&cpu28_intc 3>,
> +					      <&cpu29_intc 3>,
> +					      <&cpu30_intc 3>,
> +					      <&cpu31_intc 3>,
> +					      <&cpu32_intc 3>,
> +					      <&cpu33_intc 3>,
> +					      <&cpu34_intc 3>,
> +					      <&cpu35_intc 3>,
> +					      <&cpu36_intc 3>,
> +					      <&cpu37_intc 3>,
> +					      <&cpu38_intc 3>,
> +					      <&cpu39_intc 3>,
> +					      <&cpu40_intc 3>,
> +					      <&cpu41_intc 3>,
> +					      <&cpu42_intc 3>,
> +					      <&cpu43_intc 3>,
> +					      <&cpu44_intc 3>,
> +					      <&cpu45_intc 3>,
> +					      <&cpu46_intc 3>,
> +					      <&cpu47_intc 3>,
> +					      <&cpu48_intc 3>,
> +					      <&cpu49_intc 3>,
> +					      <&cpu50_intc 3>,
> +					      <&cpu51_intc 3>,
> +					      <&cpu52_intc 3>,
> +					      <&cpu53_intc 3>,
> +					      <&cpu54_intc 3>,
> +					      <&cpu55_intc 3>,
> +					      <&cpu56_intc 3>,
> +					      <&cpu57_intc 3>,
> +					      <&cpu58_intc 3>,
> +					      <&cpu59_intc 3>,
> +					      <&cpu60_intc 3>,
> +					      <&cpu61_intc 3>,
> +					      <&cpu62_intc 3>,
> +					      <&cpu63_intc 3>;
> +		};
> +
> +		clint_mtimer0: timer@70ac000000 {
> +			compatible = "sophgo,sg2042-clint-mtimer", "thead,c900-clint-mtimer";
> +			reg = <0x00000070 0xac000000 0x00000000 0x00007ff8>;
> +			interrupts-extended = <&cpu0_intc 7>,
> +					      <&cpu1_intc 7>,
> +					      <&cpu2_intc 7>,
> +					      <&cpu3_intc 7>;
> +		};
> +
> +		clint_mtimer1: timer@70ac010000 {
> +			compatible = "sophgo,sg2042-clint-mtimer", "thead,c900-clint-mtimer";
> +			reg = <0x00000070 0xac010000 0x00000000 0x00007ff8>;
> +			interrupts-extended = <&cpu4_intc 7>,
> +					      <&cpu5_intc 7>,
> +					      <&cpu6_intc 7>,
> +					      <&cpu7_intc 7>;
> +		};
> +
> +		clint_mtimer2: timer@70ac020000 {
> +			compatible = "sophgo,sg2042-clint-mtimer", "thead,c900-clint-mtimer";
> +			reg = <0x00000070 0xac020000 0x00000000 0x00007ff8>;
> +			interrupts-extended = <&cpu8_intc 7>,
> +					      <&cpu9_intc 7>,
> +					      <&cpu10_intc 7>,
> +					      <&cpu11_intc 7>;
> +		};
> +
> +		clint_mtimer3: timer@70ac030000 {
> +			compatible = "sophgo,sg2042-clint-mtimer", "thead,c900-clint-mtimer";
> +			reg = <0x00000070 0xac030000 0x00000000 0x00007ff8>;
> +			interrupts-extended = <&cpu12_intc 7>,
> +					      <&cpu13_intc 7>,
> +					      <&cpu14_intc 7>,
> +					      <&cpu15_intc 7>;
> +		};
> +
> +		clint_mtimer4: timer@70ac040000 {
> +			compatible = "sophgo,sg2042-clint-mtimer", "thead,c900-clint-mtimer";
> +			reg = <0x00000070 0xac040000 0x00000000 0x00007ff8>;
> +			interrupts-extended = <&cpu16_intc 7>,
> +					      <&cpu17_intc 7>,
> +					      <&cpu18_intc 7>,
> +					      <&cpu19_intc 7>;
> +		};
> +
> +		clint_mtimer5: timer@70ac050000 {
> +			compatible = "sophgo,sg2042-clint-mtimer", "thead,c900-clint-mtimer";
> +			reg = <0x00000070 0xac050000 0x00000000 0x00007ff8>;
> +			interrupts-extended = <&cpu20_intc 7>,
> +					      <&cpu21_intc 7>,
> +					      <&cpu22_intc 7>,
> +					      <&cpu23_intc 7>;
> +		};
> +
> +		clint_mtimer6: timer@70ac060000 {
> +			compatible = "sophgo,sg2042-clint-mtimer", "thead,c900-clint-mtimer";
> +			reg = <0x00000070 0xac060000 0x00000000 0x00007ff8>;
> +			interrupts-extended = <&cpu24_intc 7>,
> +					      <&cpu25_intc 7>,
> +					      <&cpu26_intc 7>,
> +					      <&cpu27_intc 7>;
> +		};
> +
> +		clint_mtimer7: timer@70ac070000 {
> +			compatible = "sophgo,sg2042-clint-mtimer", "thead,c900-clint-mtimer";
> +			reg = <0x00000070 0xac070000 0x00000000 0x00007ff8>;
> +			interrupts-extended = <&cpu28_intc 7>,
> +					      <&cpu29_intc 7>,
> +					      <&cpu30_intc 7>,
> +					      <&cpu31_intc 7>;
> +		};
> +
> +		clint_mtimer8: timer@70ac080000 {
> +			compatible = "sophgo,sg2042-clint-mtimer", "thead,c900-clint-mtimer";
> +			reg = <0x00000070 0xac080000 0x00000000 0x00007ff8>;
> +			interrupts-extended = <&cpu32_intc 7>,
> +					      <&cpu33_intc 7>,
> +					      <&cpu34_intc 7>,
> +					      <&cpu35_intc 7>;
> +		};
> +
> +		clint_mtimer9: timer@70ac090000 {
> +			compatible = "sophgo,sg2042-clint-mtimer", "thead,c900-clint-mtimer";
> +			reg = <0x00000070 0xac090000 0x00000000 0x00007ff8>;
> +			interrupts-extended = <&cpu36_intc 7>,
> +					      <&cpu37_intc 7>,
> +					      <&cpu38_intc 7>,
> +					      <&cpu39_intc 7>;
> +		};
> +
> +		clint_mtimer10: timer@70ac0a0000 {
> +			compatible = "sophgo,sg2042-clint-mtimer", "thead,c900-clint-mtimer";
> +			reg = <0x00000070 0xac0a0000 0x00000000 0x00007ff8>;
> +			interrupts-extended = <&cpu40_intc 7>,
> +					      <&cpu41_intc 7>,
> +					      <&cpu42_intc 7>,
> +					      <&cpu43_intc 7>;
> +		};
> +
> +		clint_mtimer11: timer@70ac0b0000 {
> +			compatible = "sophgo,sg2042-clint-mtimer", "thead,c900-clint-mtimer";
> +			reg = <0x00000070 0xac0b0000 0x00000000 0x00007ff8>;
> +			interrupts-extended = <&cpu44_intc 7>,
> +					      <&cpu45_intc 7>,
> +					      <&cpu46_intc 7>,
> +					      <&cpu47_intc 7>;
> +		};
> +
> +		clint_mtimer12: timer@70ac0c0000 {
> +			compatible = "sophgo,sg2042-clint-mtimer", "thead,c900-clint-mtimer";
> +			reg = <0x00000070 0xac0c0000 0x00000000 0x00007ff8>;
> +			interrupts-extended = <&cpu48_intc 7>,
> +					      <&cpu49_intc 7>,
> +					      <&cpu50_intc 7>,
> +					      <&cpu51_intc 7>;
> +		};
> +
> +		clint_mtimer13: timer@70ac0d0000 {
> +			compatible = "sophgo,sg2042-clint-mtimer", "thead,c900-clint-mtimer";
> +			reg = <0x00000070 0xac0d0000 0x00000000 0x00007ff8>;
> +			interrupts-extended = <&cpu52_intc 7>,
> +					      <&cpu53_intc 7>,
> +					      <&cpu54_intc 7>,
> +					      <&cpu55_intc 7>;
> +		};
> +
> +		clint_mtimer14: timer@70ac0e0000 {
> +			compatible = "sophgo,sg2042-clint-mtimer", "thead,c900-clint-mtimer";
> +			reg = <0x00000070 0xac0e0000 0x00000000 0x00007ff8>;
> +			interrupts-extended = <&cpu56_intc 7>,
> +					      <&cpu57_intc 7>,
> +					      <&cpu58_intc 7>,
> +					      <&cpu59_intc 7>;
> +		};
> +
> +		clint_mtimer15: timer@70ac0f0000 {
> +			compatible = "sophgo,sg2042-clint-mtimer", "thead,c900-clint-mtimer";
> +			reg = <0x00000070 0xac0f0000 0x00000000 0x00007ff8>;
> +			interrupts-extended = <&cpu60_intc 7>,
> +					      <&cpu61_intc 7>,
> +					      <&cpu62_intc 7>,
> +					      <&cpu63_intc 7>;
> +		};
> +
> +		intc: interrupt-controller@7090000000 {
> +			compatible = "sophgo,sg2042-plic", "thead,c900-plic";
> +			#address-cells = <0>;
> +			#interrupt-cells = <2>;
> +			reg = <0x00000070 0x90000000 0x00000000 0x04000000>;
> +			interrupt-controller;
> +			interrupts-extended =
> +				<&cpu0_intc 0xffffffff>,  <&cpu0_intc 9>,
> +				<&cpu1_intc 0xffffffff>,  <&cpu1_intc 9>,
> +				<&cpu2_intc 0xffffffff>,  <&cpu2_intc 9>,
> +				<&cpu3_intc 0xffffffff>,  <&cpu3_intc 9>,
> +				<&cpu4_intc 0xffffffff>,  <&cpu4_intc 9>,
> +				<&cpu5_intc 0xffffffff>,  <&cpu5_intc 9>,
> +				<&cpu6_intc 0xffffffff>,  <&cpu6_intc 9>,
> +				<&cpu7_intc 0xffffffff>,  <&cpu7_intc 9>,
> +				<&cpu8_intc 0xffffffff>,  <&cpu8_intc 9>,
> +				<&cpu9_intc 0xffffffff>,  <&cpu9_intc 9>,
> +				<&cpu10_intc 0xffffffff>, <&cpu10_intc 9>,
> +				<&cpu11_intc 0xffffffff>, <&cpu11_intc 9>,
> +				<&cpu12_intc 0xffffffff>, <&cpu12_intc 9>,
> +				<&cpu13_intc 0xffffffff>, <&cpu13_intc 9>,
> +				<&cpu14_intc 0xffffffff>, <&cpu14_intc 9>,
> +				<&cpu15_intc 0xffffffff>, <&cpu15_intc 9>,
> +				<&cpu16_intc 0xffffffff>, <&cpu16_intc 9>,
> +				<&cpu17_intc 0xffffffff>, <&cpu17_intc 9>,
> +				<&cpu18_intc 0xffffffff>, <&cpu18_intc 9>,
> +				<&cpu19_intc 0xffffffff>, <&cpu19_intc 9>,
> +				<&cpu20_intc 0xffffffff>, <&cpu20_intc 9>,
> +				<&cpu21_intc 0xffffffff>, <&cpu21_intc 9>,
> +				<&cpu22_intc 0xffffffff>, <&cpu22_intc 9>,
> +				<&cpu23_intc 0xffffffff>, <&cpu23_intc 9>,
> +				<&cpu24_intc 0xffffffff>, <&cpu24_intc 9>,
> +				<&cpu25_intc 0xffffffff>, <&cpu25_intc 9>,
> +				<&cpu26_intc 0xffffffff>, <&cpu26_intc 9>,
> +				<&cpu27_intc 0xffffffff>, <&cpu27_intc 9>,
> +				<&cpu28_intc 0xffffffff>, <&cpu28_intc 9>,
> +				<&cpu29_intc 0xffffffff>, <&cpu29_intc 9>,
> +				<&cpu30_intc 0xffffffff>, <&cpu30_intc 9>,
> +				<&cpu31_intc 0xffffffff>, <&cpu31_intc 9>,
> +				<&cpu32_intc 0xffffffff>, <&cpu32_intc 9>,
> +				<&cpu33_intc 0xffffffff>, <&cpu33_intc 9>,
> +				<&cpu34_intc 0xffffffff>, <&cpu34_intc 9>,
> +				<&cpu35_intc 0xffffffff>, <&cpu35_intc 9>,
> +				<&cpu36_intc 0xffffffff>, <&cpu36_intc 9>,
> +				<&cpu37_intc 0xffffffff>, <&cpu37_intc 9>,
> +				<&cpu38_intc 0xffffffff>, <&cpu38_intc 9>,
> +				<&cpu39_intc 0xffffffff>, <&cpu39_intc 9>,
> +				<&cpu40_intc 0xffffffff>, <&cpu40_intc 9>,
> +				<&cpu41_intc 0xffffffff>, <&cpu41_intc 9>,
> +				<&cpu42_intc 0xffffffff>, <&cpu42_intc 9>,
> +				<&cpu43_intc 0xffffffff>, <&cpu43_intc 9>,
> +				<&cpu44_intc 0xffffffff>, <&cpu44_intc 9>,
> +				<&cpu45_intc 0xffffffff>, <&cpu45_intc 9>,
> +				<&cpu46_intc 0xffffffff>, <&cpu46_intc 9>,
> +				<&cpu47_intc 0xffffffff>, <&cpu47_intc 9>,
> +				<&cpu48_intc 0xffffffff>, <&cpu48_intc 9>,
> +				<&cpu49_intc 0xffffffff>, <&cpu49_intc 9>,
> +				<&cpu50_intc 0xffffffff>, <&cpu50_intc 9>,
> +				<&cpu51_intc 0xffffffff>, <&cpu51_intc 9>,
> +				<&cpu52_intc 0xffffffff>, <&cpu52_intc 9>,
> +				<&cpu53_intc 0xffffffff>, <&cpu53_intc 9>,
> +				<&cpu54_intc 0xffffffff>, <&cpu54_intc 9>,
> +				<&cpu55_intc 0xffffffff>, <&cpu55_intc 9>,
> +				<&cpu56_intc 0xffffffff>, <&cpu56_intc 9>,
> +				<&cpu57_intc 0xffffffff>, <&cpu57_intc 9>,
> +				<&cpu58_intc 0xffffffff>, <&cpu58_intc 9>,
> +				<&cpu59_intc 0xffffffff>, <&cpu59_intc 9>,
> +				<&cpu60_intc 0xffffffff>, <&cpu60_intc 9>,
> +				<&cpu61_intc 0xffffffff>, <&cpu61_intc 9>,
> +				<&cpu62_intc 0xffffffff>, <&cpu62_intc 9>,
> +				<&cpu63_intc 0xffffffff>, <&cpu63_intc 9>;
> +			riscv,ndev = <224>;
> +		};
> +
> +		uart0: serial@7040000000 {
> +			compatible = "sophgo,sg2042-uart", "snps,dw-apb-uart";
> +			reg = <0x00000070 0x40000000 0x00000000 0x00001000>;
> +			interrupt-parent = <&intc>;
> +			interrupts = <SOC_PERIPHERAL_IRQ(112) IRQ_TYPE_LEVEL_HIGH>;
> +			clock-frequency = <500000000>;
> +			reg-shift = <2>;
> +			reg-io-width = <4>;
> +			status = "disabled";
> +		};
> +	};
> +};
> --
> 2.25.1


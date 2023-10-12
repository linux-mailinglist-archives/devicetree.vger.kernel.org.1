Return-Path: <devicetree+bounces-8170-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E46547C6F48
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 15:32:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 123561C20D62
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 13:32:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E592A29410;
	Thu, 12 Oct 2023 13:32:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GGOqHIgl"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C375727705
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 13:32:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2C02BC433C9;
	Thu, 12 Oct 2023 13:32:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697117572;
	bh=ZZYhdnpgiENRM1+gW/Pd8plnr1hpMAWBo2o0iSfliZ4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GGOqHIgl+91RccrdW0Y93H+f5sYZ8tcCRAPCTsHHW9bgTNrGYg3T1er9zlL2i8IfF
	 6/NARE2th7RDtUnbbhG1ZR2UvXeLiQDg4uN2arw79A5nGZIIiDz2r/3OrQRft2W1oC
	 nU31cfkA0uqF4i1fYi91JPpE/5MA0DfT+nsS2JJf2d6LneifjHdFajva647tg50uyQ
	 csFDl7evGenFjdYh+JlPxXMtxmOgRiiMhPywHi2AGj8RyN5jzz9u493MjkqrjXhJWO
	 Y9iIUCYKF3+DL5hqoBWekq6jFNMiohkPyt2JpzHOwFjxGrLXI8L6e+H8ksuMpUSOk3
	 gqO6IXUjH1NHw==
Date: Thu, 12 Oct 2023 21:20:41 +0800
From: Jisheng Zhang <jszhang@kernel.org>
To: Inochi Amaoto <inochiama@outlook.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Marc Zyngier <maz@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Chao Wei <chao.wei@sophgo.com>,
	Chen Wang <unicorn_wang@outlook.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Anup Patel <anup@brainfault.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: Re: [PATCH v2 0/7] Add Huashan Pi board support
Message-ID: <ZSfyqaWsNh3mR26I@xhacker>
References: <IA1PR20MB49531C1C34C3E972DBBA4151BBCEA@IA1PR20MB4953.namprd20.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <IA1PR20MB49531C1C34C3E972DBBA4151BBCEA@IA1PR20MB4953.namprd20.prod.outlook.com>

On Mon, Oct 09, 2023 at 07:25:14PM +0800, Inochi Amaoto wrote:
> Huashan Pi board is an embedded development platform based on the
> CV1812H chip. Add minimal device tree files for this board.
> Currently, it can boot to a basic shell.
> 
> NOTE: this series is based on the Jisheng's Milk-V Duo patch.
> 
> Link: https://en.sophgo.com/product/introduce/huashan.html
> Link: https://en.sophgo.com/product/introduce/cv181xH.html
> 
> Changed from v1:
> 1. split the patch into several patch and refactor them.
> 
> Inochi Amaoto (7):
>   dt-bindings: interrupt-controller: Add SOPHGO CV1812H plic
>   dt-bindings: timer: Add SOPHGO CV1812H clint
>   dt-bindings: riscv: Add SOPHGO Huashan Pi board compatibles
>   riscv: dts: sophgo: Separate common devices from cv1800b soc
>   riscv: dts: sophgo: cv180x: Add gpio devices
>   riscv: dts: sophgo: add initial CV1812H SoC device tree
>   riscv: dts: sophgo: add Huashan Pi board device tree

For the patch series:
Reviewed-by: Jisheng Zhang <jszhang@kernel.org>
> 
>  .../sifive,plic-1.0.0.yaml                    |  1 +
>  .../devicetree/bindings/riscv/sophgo.yaml     |  4 +
>  .../bindings/timer/sifive,clint.yaml          |  1 +
>  arch/riscv/boot/dts/sophgo/Makefile           |  1 +
>  arch/riscv/boot/dts/sophgo/cv1800b.dtsi       | 95 +------------------
>  .../dts/sophgo/{cv1800b.dtsi => cv180x.dtsi}  | 91 ++++++++++++++----
>  .../boot/dts/sophgo/cv1812h-huashan-pi.dts    | 48 ++++++++++
>  arch/riscv/boot/dts/sophgo/cv1812h.dtsi       | 36 +++++++
>  8 files changed, 165 insertions(+), 112 deletions(-)
>  copy arch/riscv/boot/dts/sophgo/{cv1800b.dtsi => cv180x.dtsi} (58%)
>  create mode 100644 arch/riscv/boot/dts/sophgo/cv1812h-huashan-pi.dts
>  create mode 100644 arch/riscv/boot/dts/sophgo/cv1812h.dtsi
> 
> --
> 2.42.0
> 


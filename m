Return-Path: <devicetree+bounces-8765-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B24187C9F74
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 08:27:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AF107281601
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 06:27:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9F4B13FF2;
	Mon, 16 Oct 2023 06:27:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14ED98460
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 06:27:24 +0000 (UTC)
X-Greylist: delayed 957 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sun, 15 Oct 2023 23:27:23 PDT
Received: from Atcsqr.andestech.com (60-248-80-70.hinet-ip.hinet.net [60.248.80.70])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C16FE1
	for <devicetree@vger.kernel.org>; Sun, 15 Oct 2023 23:27:23 -0700 (PDT)
Received: from Atcsqr.andestech.com (localhost [127.0.0.2] (may be forged))
	by Atcsqr.andestech.com with ESMTP id 39G6BPQv080810
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 14:11:25 +0800 (+08)
	(envelope-from peterlin@andestech.com)
Received: from mail.andestech.com (ATCPCS16.andestech.com [10.0.1.222])
	by Atcsqr.andestech.com with ESMTP id 39G69rND080135;
	Mon, 16 Oct 2023 14:09:53 +0800 (+08)
	(envelope-from peterlin@andestech.com)
Received: from APC323 (10.0.12.98) by ATCPCS16.andestech.com (10.0.1.222) with
 Microsoft SMTP Server id 14.3.498.0; Mon, 16 Oct 2023 14:09:53 +0800
Date: Mon, 16 Oct 2023 14:09:46 +0800
From: Yu-Chien Peter Lin <peterlin@andestech.com>
To: Conor Dooley <conor.dooley@microchip.com>
CC: <linux-riscv@lists.indradead.org>, <conor@kernel.org>,
        Rob Herring
	<robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        "Paul Walmsley" <paul.walmsley@sifive.com>,
        Palmer Dabbelt
	<palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>, Chen-Yu Tsai
	<wens@csie.org>,
        "Jernej Skrabec" <jernej.skrabec@gmail.com>,
        Samuel Holland
	<samuel@sholland.org>,
        Daire McNamara <daire.mcnamara@microchip.com>,
        Geert
 Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>,
        "Emil Renner Berthing" <kernel@esmil.dk>,
        Jisheng Zhang <jszhang@kernel.org>, Guo Ren <guoren@kernel.org>,
        Fu Wei <wefu@redhat.com>, Chen Wang
	<unicorn_wang@outlook.com>,
        <devicetree@vger.kernel.org>, <linux-riscv@lists.infradead.org>,
        <linux-sunxi@lists.linux.dev>, <linux-renesas-soc@vger.kernel.org>
Subject: Re: [PATCH v3 4/6] riscv: dts: renesas: convert isa detection to new
 properties
Message-ID: <ZSzTqgVNSD9Q7V6H@APC323>
References: <20231009-approve-verbalize-ce9324858e76@wendy>
 <20231009-smog-gag-3ba67e68126b@wendy>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231009-smog-gag-3ba67e68126b@wendy>
User-Agent: Mutt/2.2.10 (2023-03-25)
X-Originating-IP: [10.0.12.98]
X-DNSRBL: 
X-SPAM-SOURCE-CHECK: pass
X-MAIL:Atcsqr.andestech.com 39G6BPQv080810
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,RDNS_DYNAMIC,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, Oct 09, 2023 at 10:37:48AM +0100, Conor Dooley wrote:
> Convert the RZ/Five devicetrees to use the new properties
> "riscv,isa-base" & "riscv,isa-extensions".
> For compatibility with other projects, "riscv,isa" remains.
> 
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
>  arch/riscv/boot/dts/renesas/r9a07g043f.dtsi | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/arch/riscv/boot/dts/renesas/r9a07g043f.dtsi b/arch/riscv/boot/dts/renesas/r9a07g043f.dtsi
> index b0796015e36b..eb301d8eb2b0 100644
> --- a/arch/riscv/boot/dts/renesas/r9a07g043f.dtsi
> +++ b/arch/riscv/boot/dts/renesas/r9a07g043f.dtsi
> @@ -24,6 +24,9 @@ cpu0: cpu@0 {
>  			reg = <0x0>;
>  			status = "okay";
>  			riscv,isa = "rv64imafdc";
> +			riscv,isa-base = "rv64i";
> +			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
> +					       "zifencei", "zihpm";

We do have zihpm, and OpenSBI can also probe its existence.

Boot HART ISA Extensions  : zihpm
Boot HART MHPM Info       : 4 (0x00000078)

By the way, we will append "xandespmu" here.
I hope this is an appropriate way to add a new custom extension.

>  			mmu-type = "riscv,sv39";
>  			i-cache-size = <0x8000>;
>  			i-cache-line-size = <0x40>;


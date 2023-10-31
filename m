Return-Path: <devicetree+bounces-13218-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BD0957DCF50
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 15:39:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D1AFA1C204FA
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 14:39:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA396134DB;
	Tue, 31 Oct 2023 14:39:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="dPUni+uz"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61FFF19BAD
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 14:39:01 +0000 (UTC)
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6F89DB
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 07:38:59 -0700 (PDT)
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com [209.85.166.200])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 451123FAEA
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 14:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1698763133;
	bh=au17QPiJsjAocXmUfByZs1Bf5AaxfhY0/xgh3nLmqCY=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=dPUni+uzFVja+fZN1tHz96XhA69P3pC/FrQApnzDlgFYtM+I73m/GuONb+ZggbMRe
	 Woxxlq5bdnHU5kWq2sWjW8HtTxUkfdl/M67/sPC+ckjasBgSsY8QoOfhc/QP4dqhTH
	 HGdeGYxG5dXzWpOWeSVfHNsLpjoobpiBYo4qujRz6gCbhPWbu3SSx/f7nYfzULpjs2
	 EizM7W1v9kfWAsNO1KCBpQ9NNKWIZWeZo0U6NAfVgAd34zwLRM9neu5xczNZ/x9Ym7
	 U/NR07Yy9QnHL723CAeq4VDfbeIAU4ji6oHGYjJNvnrRYGuPat1bGzj4pY/RaJzvaJ
	 tre2WtPSzRXDA==
Received: by mail-il1-f200.google.com with SMTP id e9e14a558f8ab-35742684eb0so54838505ab.2
        for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 07:38:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698763130; x=1699367930;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=au17QPiJsjAocXmUfByZs1Bf5AaxfhY0/xgh3nLmqCY=;
        b=drjOEGEh8sVDpOhL7S6YUHVRYKfnn0fUzuoqwklRl/24wpm5bTegpUcyt5OZa3yTMN
         2FA9YM96npcFDWhQpv7M6O5mjSzpaCxU4Mct8C7cFTtJQYRzwNpoHENa8W9vYGfIv0gW
         6+z2v/qPVPpaAI5eNAnFpJTVCefwJAtVYieF243TmOpp/Ry87M87HLhiyOpdvvEGDRu4
         BEBQHtbRWHEONcUo2vjUT4PgbQmBTJsbwxC4m1VpVE8ylc7SSE0OvYxXmqWsxhCkByyP
         9Tc1ruY9u9GQMVX/igLOFZJE9gJGgER8xehfcaTCdRnPRPFObs48GtwLVu4Buj/oCv8w
         HecQ==
X-Gm-Message-State: AOJu0YwX3dncbK8dQ1g4SNSk9VQbKtwVhJm1LzE64TLmtyhH/khQEJQJ
	KPHknD00wF6BM6A4anIEi9Hi+ZtXz4QIrPoJpSL8/+Jay43XJhBjcu8wgexeRohYylzaBzXcFHh
	/TP/zsgqQrKHX67+ee5igW5hVnWaXfr/UBD4X6PsM1Es0Xo/2Jv9md6Q=
X-Received: by 2002:a05:622a:1009:b0:419:7623:ef6c with SMTP id d9-20020a05622a100900b004197623ef6cmr16897773qte.60.1698763109682;
        Tue, 31 Oct 2023 07:38:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEManiQqpXLt0b01D3i/c6XioIV3LcDFDS3I/YsKWQWlnlDlbI16LCgriOnJiUp81AuiFuChC8BPHTNIdY05AA=
X-Received: by 2002:a05:622a:1009:b0:419:7623:ef6c with SMTP id
 d9-20020a05622a100900b004197623ef6cmr16897742qte.60.1698763109425; Tue, 31
 Oct 2023 07:38:29 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 31 Oct 2023 07:38:29 -0700
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20231029042712.520010-8-cristian.ciocaltea@collabora.com>
References: <20231029042712.520010-1-cristian.ciocaltea@collabora.com> <20231029042712.520010-8-cristian.ciocaltea@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Tue, 31 Oct 2023 07:38:29 -0700
Message-ID: <CAJM55Z8D12XoRG4WGaf=PG0_yp7d_xk9EhOk7bnCKQRMok9eBA@mail.gmail.com>
Subject: Re: [PATCH v2 07/12] riscv: dts: starfive: jh7100: Add ccache DT node
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Emil Renner Berthing <kernel@esmil.dk>, Samin Guo <samin.guo@starfivetech.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Jose Abreu <joabreu@synopsys.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Richard Cochran <richardcochran@gmail.com>, Giuseppe Cavallaro <peppe.cavallaro@st.com>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org, kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"

Cristian Ciocaltea wrote:
> Provide a DT node for the SiFive Composable Cache controller found on
> the StarFive JH7100 SoC.
>
> Note this is also used to support non-coherent DMA, via the
> sifive,cache-ops cache flushing operations.

This property is no longer needed:
https://lore.kernel.org/linux-riscv/20231031141444.53426-1-emil.renner.berthing@canonical.com/

Also it would be nice to mention that these nodes are copied from my
visionfive patches ;)

>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  arch/riscv/boot/dts/starfive/jh7100.dtsi | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
>
> diff --git a/arch/riscv/boot/dts/starfive/jh7100.dtsi b/arch/riscv/boot/dts/starfive/jh7100.dtsi
> index 06bb157ce111..a8a5bb00b0d8 100644
> --- a/arch/riscv/boot/dts/starfive/jh7100.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7100.dtsi
> @@ -32,6 +32,7 @@ U74_0: cpu@0 {
>  			i-tlb-sets = <1>;
>  			i-tlb-size = <32>;
>  			mmu-type = "riscv,sv39";
> +			next-level-cache = <&ccache>;
>  			riscv,isa = "rv64imafdc";
>  			riscv,isa-base = "rv64i";
>  			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
> @@ -60,6 +61,7 @@ U74_1: cpu@1 {
>  			i-tlb-sets = <1>;
>  			i-tlb-size = <32>;
>  			mmu-type = "riscv,sv39";
> +			next-level-cache = <&ccache>;
>  			riscv,isa = "rv64imafdc";
>  			riscv,isa-base = "rv64i";
>  			riscv,isa-extensions = "i", "m", "a", "f", "d", "c", "zicntr", "zicsr",
> @@ -147,6 +149,18 @@ soc {
>  		dma-noncoherent;
>  		ranges;
>
> +		ccache: cache-controller@2010000 {
> +			compatible = "starfive,jh7100-ccache", "sifive,ccache0", "cache";
> +			reg = <0x0 0x2010000 0x0 0x1000>;
> +			interrupts = <128>, <130>, <131>, <129>;
> +			cache-block-size = <64>;
> +			cache-level = <2>;
> +			cache-sets = <2048>;
> +			cache-size = <2097152>;
> +			cache-unified;
> +			sifive,cache-ops;
> +		};
> +
>  		clint: clint@2000000 {
>  			compatible = "starfive,jh7100-clint", "sifive,clint0";
>  			reg = <0x0 0x2000000 0x0 0x10000>;
> --
> 2.42.0
>


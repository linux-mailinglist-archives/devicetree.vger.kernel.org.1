Return-Path: <devicetree+bounces-27348-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D3E881A014
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 14:44:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BEC44B219B6
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 13:44:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 463E737D18;
	Wed, 20 Dec 2023 13:43:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="lamu+NcT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC04338DDC
	for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 13:43:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 123CF3F45F
	for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 13:43:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1703079834;
	bh=Y1f83Xk1FXiEYRkgnz968I1hevI4AFt+heHnZvXG1Zs=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=lamu+NcT/MItfkn7YcRjV3WJoE6lmlcPZ8S7f9/hTVBwx5pazcKhQElTxgDYmy7Gr
	 eI0yxNKTIV/TnwpDkIsHkopayCz3fWvygQ/xtPTtS6a2PpRmeLuh3xYjm5acJ+Rj81
	 a6YnNQOUk6sKQkminUo+iXW/lOS2m87JcpfMPiwOl7I7XF+O3L19nfsrP/P+yJ2IXL
	 BCl7HXSWJpDpRgiGOqLgob+0EMIQnFUdzDoZNUbknRRb/AYap98I1zZWmpdjSXgACL
	 4S++A+rF4L+WA1Ma+afv6uPasrJy1jWOB6qAKR1cNy+TNoEPyzcE9Af3q5TS33oUHY
	 080k/08PMIDhQ==
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-42784a3e560so13579531cf.0
        for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 05:43:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703079833; x=1703684633;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Y1f83Xk1FXiEYRkgnz968I1hevI4AFt+heHnZvXG1Zs=;
        b=O8ijRlWfOuRjZTc+5uRerdxZljWERhMRW2SsLpsrDI5OYfjREXLc5z1AaWtJdDw4Pg
         mENYWrvGtNsPxgkuphE3Nh9TPST+UIBVQKaL/Hy6jodR9SAVmHZIxoGetw97xlbVM0RH
         J8svJ3NbIhcs91Nr1Z+u6jVW8fJhqnIvpqB7nTIsgrornE+1IkvRg+vBv8dlarwMMjJP
         713ET04CR6jzZ4ybR/6ruauL6y6T8YI9UnI+6X+zXVM6G8K5a8Qq/bNIcV1ysv/2E+E0
         sG5+1bF7M5QRWKi8p3SwI9lgZJw2eDSSZvdHZVjmr8UdK9gW1vrLKTAQ8Tv5you4vjn1
         SChQ==
X-Gm-Message-State: AOJu0Yy15iCoCRiTAslngSpbTePYr+PomqSw1/tIJ/oFzpsQBBd3KPTP
	mxuyUfEfaczD9RpRhGOk6VlgfHyLs3e9du/KYlQaYGwVDWM3woodY5lt1+G3NdCjm2KSPqi6iFH
	axQI4Kk8FVwqyr3+am8tOf3nAQB/vAsBaeBQypjIzhIt87+hzuidfz1o=
X-Received: by 2002:a05:622a:1309:b0:423:98ba:1f74 with SMTP id v9-20020a05622a130900b0042398ba1f74mr24124831qtk.58.1703079832893;
        Wed, 20 Dec 2023 05:43:52 -0800 (PST)
X-Google-Smtp-Source: AGHT+IErFMRLbKaj/fBOTAz8xHWWCImycUAmeJWguwHtKgu7CB99Ci5H8wT1jkWzCEL4aBoSuGhJ//HhYBVROra6w1I=
X-Received: by 2002:a05:622a:1309:b0:423:98ba:1f74 with SMTP id
 v9-20020a05622a130900b0042398ba1f74mr24124813qtk.58.1703079832635; Wed, 20
 Dec 2023 05:43:52 -0800 (PST)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 20 Dec 2023 05:43:52 -0800
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20231220004638.2463643-2-cristian.ciocaltea@collabora.com>
References: <20231220004638.2463643-1-cristian.ciocaltea@collabora.com> <20231220004638.2463643-2-cristian.ciocaltea@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Wed, 20 Dec 2023 05:43:52 -0800
Message-ID: <CAJM55Z9DhojDTDPEqx3NO5g61=ezRg-U9odixbZugcXRRVmS7w@mail.gmail.com>
Subject: Re: [PATCH v5 1/4] riscv: dts: starfive: jh7100: Add sysmain and gmac
 DT nodes
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, 
	Emil Renner Berthing <kernel@esmil.dk>, Conor Dooley <conor@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Richard Cochran <richardcochran@gmail.com>, 
	Andrew Lunn <andrew@lunn.ch>, Jacob Keller <jacob.e.keller@intel.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org, kernel@collabora.com, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>
Content-Type: text/plain; charset="UTF-8"

Cristian Ciocaltea wrote:
> Provide the sysmain and gmac DT nodes supporting the DWMAC found on the
> StarFive JH7100 SoC.
>
> Co-developed-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
> Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  arch/riscv/boot/dts/starfive/jh7100.dtsi | 36 ++++++++++++++++++++++++
>  1 file changed, 36 insertions(+)
>
> diff --git a/arch/riscv/boot/dts/starfive/jh7100.dtsi b/arch/riscv/boot/dts/starfive/jh7100.dtsi
> index c216aaecac53..2ebdebe6a81c 100644
> --- a/arch/riscv/boot/dts/starfive/jh7100.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7100.dtsi
> @@ -204,6 +204,37 @@ sdio1: mmc@10010000 {
>  			status = "disabled";
>  		};
>
> +		gmac: ethernet@10020000 {
> +			compatible = "starfive,jh7100-dwmac", "snps,dwmac";
> +			reg = <0x0 0x10020000 0x0 0x10000>;
> +			clocks = <&clkgen JH7100_CLK_GMAC_ROOT_DIV>,
> +				 <&clkgen JH7100_CLK_GMAC_AHB>,
> +				 <&clkgen JH7100_CLK_GMAC_PTP_REF>,
> +				 <&clkgen JH7100_CLK_GMAC_TX_INV>,
> +				 <&clkgen JH7100_CLK_GMAC_GTX>;
> +			clock-names = "stmmaceth", "pclk", "ptp_ref", "tx", "gtx";
> +			resets = <&rstgen JH7100_RSTN_GMAC_AHB>;
> +			reset-names = "ahb";
> +			interrupts = <6>, <7>;
> +			interrupt-names = "macirq", "eth_wake_irq";
> +			max-frame-size = <9000>;
> +			snps,multicast-filter-bins = <32>;
> +			snps,perfect-filter-entries = <128>;
> +			starfive,syscon = <&sysmain 0x70 0>;
> +			rx-fifo-depth = <32768>;
> +			tx-fifo-depth = <16384>;
> +			snps,axi-config = <&stmmac_axi_setup>;
> +			snps,fixed-burst;
> +			snps,force_thresh_dma_mode;

Compared to v4 you're missing a

  snps,no-pbl-x8;

here. It might be the right thing to do, but then I would have expected
it to me mentioned in the cover letter version history.

> +			status = "disabled";
> +
> +			stmmac_axi_setup: stmmac-axi-config {
> +				snps,wr_osr_lmt = <16>;
> +				snps,rd_osr_lmt = <16>;
> +				snps,blen = <256 128 64 32 0 0 0>;
> +			};
> +		};
> +
>  		clkgen: clock-controller@11800000 {
>  			compatible = "starfive,jh7100-clkgen";
>  			reg = <0x0 0x11800000 0x0 0x10000>;
> @@ -218,6 +249,11 @@ rstgen: reset-controller@11840000 {
>  			#reset-cells = <1>;
>  		};
>
> +		sysmain: syscon@11850000 {
> +			compatible = "starfive,jh7100-sysmain", "syscon";
> +			reg = <0x0 0x11850000 0x0 0x10000>;
> +		};
> +
>  		i2c0: i2c@118b0000 {
>  			compatible = "snps,designware-i2c";
>  			reg = <0x0 0x118b0000 0x0 0x10000>;
> --
> 2.43.0
>


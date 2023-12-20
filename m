Return-Path: <devicetree+bounces-27408-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D2B681A2B7
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 16:34:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E63A31F240E6
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 15:34:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EE603EA95;
	Wed, 20 Dec 2023 15:33:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="g4yARkhO"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 504443FE2B
	for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 15:33:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 9EE683F743
	for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1703086433;
	bh=+HVYDneHKVp/XU1Z/f/NTkNW5tbTInLvnUZS1rPPIyg=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=g4yARkhObuoNtljJ8PU6PoUKrSRZCXINbpX4tq7ZokKxsSy2W1cJFmZhsWTnGc5/d
	 9Qht01ZpIkGA2wG8MqNRyEGArnhxFQbpy8tQOvAkW2FWXEUMPqVcfkT775kkagwAJP
	 U9wb3uqxN9HgriDS8xtk/rJS5d+XLng3LGS87UGxz1PE4NRLC7rRH3GZDFJOHvJK74
	 2Kjs0/fHhED9NRWzctz2IXTB7qjjOvl62yxZFNR6U20ZeR9QfgnyrAi06dOKf8ujnu
	 DSZcfnYKSm2X4GeGyHPfn5oCXFNO2xLgARfk/dnBZCIODtg8PVBdlKXqENpP6LuhyN
	 1PhDPOwSPMRqA==
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-77f6e8e3be3so569238985a.1
        for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 07:33:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703086432; x=1703691232;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+HVYDneHKVp/XU1Z/f/NTkNW5tbTInLvnUZS1rPPIyg=;
        b=Wn9W9D6CTEBgR9rROWNfCLDLMWxO3Qx3YXoVLexdoLq+lNc5xQUOx7liy32MFKbbol
         k6mq+tMaYVVoQiE2XtLCxRTSfJZuWC64oC2JJuakbXsFj3iBRi1/yTazjVTz+8lKIjUX
         0h/IAipQpne1at35DEhD+5ALPvldr1e21FhvAZF8baJ8MFqZh9+p7sF0jroivN54V+zK
         a/keGajnt3R+/bbq4QJNQQEX5WlRPdFF2WfjtCTi0KeyIMx6+vQSWvBgq84Woxlev9se
         f6Kr5sN5jS2SiUiSZg9jiFrIDLLWrDSSr4Hgmy0U9QPzd2sFQJvFSqVhnJBVhtuhiuX2
         QLsw==
X-Gm-Message-State: AOJu0YzgEUw+DjwDcqQCL20pyjSowAM7f7KhnWsOgM9t9HFnAwaZ7H7A
	/QVtJ4Q3FYzUWB4EGw2hwXxA+nKEHuMkC2tzCMOFpfWqoOSaoxGPg5+H4g4rkqVyCmXCYjGzfZ6
	V+d6QtfQmfxQZsB1+fPRdqa7Bfe+zXB4FdbgJ2yeJcPMiZ2cGUvhC1zY=
X-Received: by 2002:ae9:f811:0:b0:77f:1572:f8e2 with SMTP id x17-20020ae9f811000000b0077f1572f8e2mr15537949qkh.53.1703086432114;
        Wed, 20 Dec 2023 07:33:52 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG3L7mi2h3cBjp7o3vfhRJ3HDeZBy2tBj5Qlbg1frVHnfR2OHAeRuKccJX697ixjrfWmHuGzXgUFxyDwwaBIPk=
X-Received: by 2002:ae9:f811:0:b0:77f:1572:f8e2 with SMTP id
 x17-20020ae9f811000000b0077f1572f8e2mr15537935qkh.53.1703086431776; Wed, 20
 Dec 2023 07:33:51 -0800 (PST)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 20 Dec 2023 07:33:51 -0800
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <3b2d41cd-4c0a-4277-8650-e6da37139023@collabora.com>
References: <20231220004638.2463643-1-cristian.ciocaltea@collabora.com>
 <20231220004638.2463643-2-cristian.ciocaltea@collabora.com>
 <CAJM55Z9DhojDTDPEqx3NO5g61=ezRg-U9odixbZugcXRRVmS7w@mail.gmail.com> <3b2d41cd-4c0a-4277-8650-e6da37139023@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Wed, 20 Dec 2023 07:33:51 -0800
Message-ID: <CAJM55Z-pq=J1vZ9=25jQJ+0DxXOBGEdxxZsB3jKg+MSF06atTg@mail.gmail.com>
Subject: Re: [PATCH v5 1/4] riscv: dts: starfive: jh7100: Add sysmain and gmac
 DT nodes
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>, Emil Renner Berthing <kernel@esmil.dk>, 
	Conor Dooley <conor@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Richard Cochran <richardcochran@gmail.com>, 
	Andrew Lunn <andrew@lunn.ch>, Jacob Keller <jacob.e.keller@intel.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org, kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"

Cristian Ciocaltea wrote:
> On 12/20/23 15:43, Emil Renner Berthing wrote:
> > Cristian Ciocaltea wrote:
> >> Provide the sysmain and gmac DT nodes supporting the DWMAC found on the
> >> StarFive JH7100 SoC.
> >>
> >> Co-developed-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
> >> Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
> >> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> >> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> >> ---
> >>  arch/riscv/boot/dts/starfive/jh7100.dtsi | 36 ++++++++++++++++++++++++
> >>  1 file changed, 36 insertions(+)
> >>
> >> diff --git a/arch/riscv/boot/dts/starfive/jh7100.dtsi b/arch/riscv/boot/dts/starfive/jh7100.dtsi
> >> index c216aaecac53..2ebdebe6a81c 100644
> >> --- a/arch/riscv/boot/dts/starfive/jh7100.dtsi
> >> +++ b/arch/riscv/boot/dts/starfive/jh7100.dtsi
> >> @@ -204,6 +204,37 @@ sdio1: mmc@10010000 {
> >>  			status = "disabled";
> >>  		};
> >>
> >> +		gmac: ethernet@10020000 {
> >> +			compatible = "starfive,jh7100-dwmac", "snps,dwmac";
> >> +			reg = <0x0 0x10020000 0x0 0x10000>;
> >> +			clocks = <&clkgen JH7100_CLK_GMAC_ROOT_DIV>,
> >> +				 <&clkgen JH7100_CLK_GMAC_AHB>,
> >> +				 <&clkgen JH7100_CLK_GMAC_PTP_REF>,
> >> +				 <&clkgen JH7100_CLK_GMAC_TX_INV>,
> >> +				 <&clkgen JH7100_CLK_GMAC_GTX>;
> >> +			clock-names = "stmmaceth", "pclk", "ptp_ref", "tx", "gtx";
> >> +			resets = <&rstgen JH7100_RSTN_GMAC_AHB>;
> >> +			reset-names = "ahb";
> >> +			interrupts = <6>, <7>;
> >> +			interrupt-names = "macirq", "eth_wake_irq";
> >> +			max-frame-size = <9000>;
> >> +			snps,multicast-filter-bins = <32>;
> >> +			snps,perfect-filter-entries = <128>;
> >> +			starfive,syscon = <&sysmain 0x70 0>;
> >> +			rx-fifo-depth = <32768>;
> >> +			tx-fifo-depth = <16384>;
> >> +			snps,axi-config = <&stmmac_axi_setup>;
> >> +			snps,fixed-burst;
> >> +			snps,force_thresh_dma_mode;
> >
> > Compared to v4 you're missing a
> >
> >   snps,no-pbl-x8;
> >
> > here. It might be the right thing to do, but then I would have expected
> > it to me mentioned in the cover letter version history.
>
> Oh yes, I missed to add this to the changelog, sorry!  I dropped that
> because the property is only valid for snps,dwmac-{3.50a, 4.10a, 4.20a,
> 5.20} compatibles, while we have plain snps,dwmac to handle 3.7x.
>
> We could have probably used snps,dwmac-3.70a or snps,dwmac-3.710, but
> I'm not sure which is the exact chip revision and it wouldn't really
> change anything as there is no special handling for them in the
> snps,dwmac.yaml binding.

I see, makes sense. This way works fine for me.

/Emil


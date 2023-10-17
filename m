Return-Path: <devicetree+bounces-9401-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D4E567CCDAD
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 22:14:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A0BA51C2099B
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 20:14:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2E0D430F9;
	Tue, 17 Oct 2023 20:14:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B19DF2DF9F
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 20:14:08 +0000 (UTC)
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com [209.85.160.52])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C2556FAF;
	Tue, 17 Oct 2023 13:14:07 -0700 (PDT)
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-1e98e97c824so3607066fac.1;
        Tue, 17 Oct 2023 13:14:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697573646; x=1698178446;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BjtM0th7Ga0wqAkmHHke7zShNUXUXypfVS93GqDMmaU=;
        b=XS7SkYSiwMnENG4ROGp/EAoYKnN3dL0g2PAAFQa5r9SbbJfF3+807Zvd7zL/IEkAic
         J2P/LP+KtOD1Ep6Y/wogTD3O/NdB4movC86U2ZA2vUBnNBmPn5KTyENRIXFwYM22Tr+a
         SIi42vyloJhghteZJgJDiKtiUCINI0NDj2jS1wzwumEjYK92Qg8xZ19d5Q13LhQGCa21
         CqSEJinac+Y/dexm4UKu9vCU6lU+pPLdo8ymL+a1PEgm4aTynhxpPnQGhg7XOE4GLR8c
         +tB90hREkb4DE13/+mum8Npvz5yLzstRI/QSOkYkbbQUV0pK91g4K4R6n+7aPop9xRvP
         0jnQ==
X-Gm-Message-State: AOJu0YxmYGIYlcaWdAyWpKeLi/f9eFXXmmwWGAK/DaWHaEUqRDhXRpgG
	2OrLSNT+KBj863ZGyqSwDw==
X-Google-Smtp-Source: AGHT+IEsn7NyYyz1Bs7OZ8OxYl4q66dyjxMFogx3095CSeMhQzjqBlURuKu92JrCzVigMEE82ibKSw==
X-Received: by 2002:a05:6871:c17:b0:1e9:d481:52e9 with SMTP id ve23-20020a0568710c1700b001e9d48152e9mr1820295oab.28.1697573646610;
        Tue, 17 Oct 2023 13:14:06 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id lb5-20020a05687c330500b001cc9bc7b569sm394499oac.27.2023.10.17.13.14.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Oct 2023 13:14:05 -0700 (PDT)
Received: (nullmailer pid 2675575 invoked by uid 1000);
	Tue, 17 Oct 2023 20:14:04 -0000
Date: Tue, 17 Oct 2023 15:14:04 -0500
From: Rob Herring <robh@kernel.org>
To: Frank Li <Frank.Li@nxp.com>
Cc: miquel.raynal@bootlin.com, conor.culhane@silvaco.com, alexandre.belloni@bootlin.com, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com, joe@perches.com, peng.fan@nxp.com, alexander.stein@ew.tq-group.com, haibo.chen@nxp.com, ping.bai@nxp.com, xiaoning.wang@nxp.com, sherry.sun@nxp.com, linux-i3c@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, imx@lists.linux.dev
Subject: Re: [PATCH 2/2] arm64: dts: freescale: imx93: add i3c1 and i3c2
Message-ID: <20231017201404.GA2570433-robh@kernel.org>
References: <20231016152450.2850498-1-Frank.Li@nxp.com>
 <20231016152450.2850498-2-Frank.Li@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231016152450.2850498-2-Frank.Li@nxp.com>
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,
	FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, Oct 16, 2023 at 11:24:50AM -0400, Frank Li wrote:
> Add I3C1 and I3C2.
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx93.dtsi | 26 ++++++++++++++++++++++++
>  1 file changed, 26 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx93.dtsi b/arch/arm64/boot/dts/freescale/imx93.dtsi
> index 6f85a05ee7e1..4d9ed0b32853 100644
> --- a/arch/arm64/boot/dts/freescale/imx93.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx93.dtsi
> @@ -242,6 +242,19 @@ tpm2: pwm@44320000 {
>  				status = "disabled";
>  			};
>  
> +			i3c1: i3c-master@44330000 {
> +				compatible = "silvaco,i3c-master";

The real problem here is not whether we have "v1" or not, but you need 
an SoC specific compatible. Unless there's a public spec where we can 
know exactly how many resets, clocks, interrupts, etc.

Rob


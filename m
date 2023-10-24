Return-Path: <devicetree+bounces-11424-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D31AA7D5BD1
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 21:50:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C42A6B20F63
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 19:49:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 503753CD0C;
	Tue, 24 Oct 2023 19:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0728266A9
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 19:49:52 +0000 (UTC)
Received: from mail-oo1-f49.google.com (mail-oo1-f49.google.com [209.85.161.49])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C8E8129;
	Tue, 24 Oct 2023 12:49:49 -0700 (PDT)
Received: by mail-oo1-f49.google.com with SMTP id 006d021491bc7-581fb6f53fcso2891841eaf.2;
        Tue, 24 Oct 2023 12:49:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698176989; x=1698781789;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=agKMir3qcuKi14ldHG71aEKuRkt+lScGsRzAjnaqW/E=;
        b=vF9xmLUxrZ5rPMx5sOUnehlSIul6bvhfnarpTXse7o6u5CXkoykX0ta43F1mHFb/lW
         IVUK9/0RdYFtZ2D3pwj5g007ksyGJ29nob9MOSN5Mo/muRM+UfK8QY5eM1IVJcuAXGjc
         nJklLRMp0gdyS1zloK4+xEua/D4ZpY7wcGNcIY3uOcU+MlndOMGrvTi1ElvjGznxEcvV
         Ba7UZtwB6ovNuD4D/BP5LWeMyXU3nC6F/m1hOi8YrvMubiC4rKEsES0BjcgSYFDVVguX
         v6L2jG467lV70QCXTr+BHGVQ8ZORYL0QqMNbDi8Q99MAODS2hQivRYF61flLQKZUIcGz
         qudA==
X-Gm-Message-State: AOJu0YyIQ0DbowtRm1kw1qaDKpR/Fediqt7GM4+nHPgSa9jb/BLpOiFb
	K9CZZ8W0D2spoGAjsyO28A==
X-Google-Smtp-Source: AGHT+IHyx9HB+5+xduv+DWRMK6EwebWorzR3T6o2xTNeFxgl5EwZIRIwryDhY3qLSLdiLQZ2wQLsaQ==
X-Received: by 2002:a4a:e0ca:0:b0:581:e303:807c with SMTP id e10-20020a4ae0ca000000b00581e303807cmr12970213oot.5.1698176988888;
        Tue, 24 Oct 2023 12:49:48 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id r134-20020a4a378c000000b00582014b0138sm2165972oor.39.2023.10.24.12.49.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 12:49:48 -0700 (PDT)
Received: (nullmailer pid 452036 invoked by uid 1000);
	Tue, 24 Oct 2023 19:49:46 -0000
Date: Tue, 24 Oct 2023 14:49:46 -0500
From: Rob Herring <robh@kernel.org>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, Abel Vesa <abelvesa@kernel.org>, Peng Fan <peng.fan@nxp.com>, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>, Marek Vasut <marex@denx.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux@ew.tq-group.com, linux-clk@vger.kernel.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH 2/5] dt-bindings: soc: imx93-media-blk-ctrl: Add LDB
 subnode into schema and example
Message-ID: <20231024194946.GA434797-robh@kernel.org>
References: <20231020130019.665853-1-alexander.stein@ew.tq-group.com>
 <20231020130019.665853-3-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231020130019.665853-3-alexander.stein@ew.tq-group.com>

On Fri, Oct 20, 2023 at 03:00:15PM +0200, Alexander Stein wrote:
> Document the LDB bridge subnode and add the subnode into the example.
> For the subnode to work, the block control must scan its subnodes and
> bind drivers to them, do not misuse either simple-bus or simple-mfd
> here.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
>  .../soc/imx/fsl,imx93-media-blk-ctrl.yaml     | 44 +++++++++++++++++++
>  1 file changed, 44 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/soc/imx/fsl,imx93-media-blk-ctrl.yaml b/Documentation/devicetree/bindings/soc/imx/fsl,imx93-media-blk-ctrl.yaml
> index b3554e7f9e76..5ba66dfb0e05 100644
> --- a/Documentation/devicetree/bindings/soc/imx/fsl,imx93-media-blk-ctrl.yaml
> +++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx93-media-blk-ctrl.yaml
> @@ -24,6 +24,12 @@ properties:
>    reg:
>      maxItems: 1
>  
> +  '#address-cells':
> +    const: 1
> +
> +  '#size-cells':
> +    const: 1
> +

Presumably the child nodes are MMIO? If so, missing 'ranges'.

>    '#power-domain-cells':
>      const: 1
>  
> @@ -46,9 +52,16 @@ properties:
>        - const: csi
>        - const: dsi
>  
> +  bridge@20:
> +    type: object
> +    $ref: /schemas/display/bridge/fsl,ldb.yaml#
> +    unevaluatedProperties: false

We do this style a lot, but another way to do child nodes is:

type: object
additionalProperties: true

properties:
  compatible:
    contains:
      const: fsl,imx93-ldb

This way avoids applying the fsl,ldb.yaml schema twice and ensures the 
right LDB compatible is used. 

Rob


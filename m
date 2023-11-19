Return-Path: <devicetree+bounces-16942-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E6547F0753
	for <lists+devicetree@lfdr.de>; Sun, 19 Nov 2023 17:09:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D7CF0280D69
	for <lists+devicetree@lfdr.de>; Sun, 19 Nov 2023 16:09:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA68513AFD;
	Sun, 19 Nov 2023 16:09:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com [209.85.160.54])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8870F9;
	Sun, 19 Nov 2023 08:09:42 -0800 (PST)
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-1ea82246069so2062298fac.3;
        Sun, 19 Nov 2023 08:09:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700410182; x=1701014982;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6FwY3Ii3WuLnORYg7kZbiyOjnq76hZU7a/LRk5adx6s=;
        b=B8aeFLyZf5jV/+GVYKLbtvAGFlp1Qh83htbvSLpwQs9xfpCN9OwOJGinAhKvpO6/YF
         /9HdGRSlltuE1Veq7ZUPa4AU3LvPiBxwcqtVIadryODGDzptnGiQ8z0SEsOCZNrGX2Lf
         54qy0e0eTQbrVeJXUzsrQ21bUvnVQ4AnsFLe1f/sA3tXjQn8EbU+hoBF/XFOjbDq6DPj
         Gyb5uAW/UHrc2/MBIWKJo1miwlJPp9mwVNJbSpy0e1z3S97AG5y57jZq1IDsXsVBubXz
         Xz4qbg93JFwA7Sh1P7fmfUkd9tXwm1GTx1/29eSbRjYujvyUEQAJy4umpd2qHbLqChuL
         tCfQ==
X-Gm-Message-State: AOJu0YxW+W0ksyzrWCV2Huk7AzFJBAhdT5M8IH63jGg+UaM7Jyc+Q8/p
	3Yk95OKKZ3PWcVqUEEVdyW3U7UEwow==
X-Google-Smtp-Source: AGHT+IEz6w9sNadnlJUFScEINQMPuBFhN59ha6xK606aQ5nY0TgW8H9gCuKJz13S9Fn5S94b3GiruQ==
X-Received: by 2002:a05:6871:521e:b0:1eb:192b:e75b with SMTP id ht30-20020a056871521e00b001eb192be75bmr6166361oac.40.1700410182011;
        Sun, 19 Nov 2023 08:09:42 -0800 (PST)
Received: from herring.priv ([2607:fb90:45e3:889f:15b4:1348:6d64:224b])
        by smtp.gmail.com with ESMTPSA id dd14-20020a056871c80e00b001efcb7b4717sm1032878oac.53.2023.11.19.08.09.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Nov 2023 08:09:40 -0800 (PST)
Received: (nullmailer pid 273405 invoked by uid 1000);
	Sun, 19 Nov 2023 16:09:38 -0000
Date: Sun, 19 Nov 2023 10:09:38 -0600
From: Rob Herring <robh@kernel.org>
To: Shengyang Chen <shengyang.chen@starfivetech.com>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org, vkoul@kernel.org, kishon@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, p.zabel@pengutronix.de, minda.chen@starfivetech.com, changhuang.liang@starfivetech.com, rogerq@kernel.org, geert+renesas@glider.be, keith.zhao@starfivetech.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 1/2] dt-bindings: phy: Add starfive,jh7110-dphy-tx
Message-ID: <20231119160938.GA269430-robh@kernel.org>
References: <20231117130421.79261-1-shengyang.chen@starfivetech.com>
 <20231117130421.79261-2-shengyang.chen@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231117130421.79261-2-shengyang.chen@starfivetech.com>

On Fri, Nov 17, 2023 at 09:04:20PM +0800, Shengyang Chen wrote:
> StarFive SoCs like the jh7110 use a MIPI D-PHY TX
> controller based on a M31 IP. Add a binding for it.
> 
> Signed-off-by: Shengyang Chen <shengyang.chen@starfivetech.com>
> ---
>  .../bindings/phy/starfive,jh7110-dphy-tx.yaml | 74 +++++++++++++++++++
>  1 file changed, 74 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/starfive,jh7110-dphy-tx.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/starfive,jh7110-dphy-tx.yaml b/Documentation/devicetree/bindings/phy/starfive,jh7110-dphy-tx.yaml
> new file mode 100644
> index 000000000000..850fe2e61d1d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/starfive,jh7110-dphy-tx.yaml
> @@ -0,0 +1,74 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/starfive,jh7110-dphy-tx.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Starfive SoC MIPI D-PHY Tx Controller
> +
> +maintainers:
> +  - Keith Zhao <keith.zhao@starfivetech.com>
> +  - Shengyang Chen <shengyang.chen@starfivetech.com>
> +
> +description:
> +  The Starfive SoC uses the MIPI DSI D-PHY based on M31 IP to transfer
> +  DSI data.
> +
> +properties:
> +  compatible:
> +    const: starfive,jh7110-dphy-tx
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    items:
> +      - const: dphy_txesc

Module name is redundant. Drop 'dphy_'.

> +
> +  resets:
> +    items:
> +      - description: DSITX_TXBYTEHS reset
> +      - description: MIPITX_DPHY_SYS reset
> +      - description: MIPITX_DPHY_TXBYTEHS reset
> +
> +  reset-names:
> +    items:
> +      - const: dsi_txbytehs
> +      - const: dphy_sys
> +      - const: dphy_txbytehs

Drop 'dphy_'.

Is 'dsi_txbytehs' really a part of the DPHY block? Sounds like it is 
part of the DSI block. If so, the reset belongs there. If the phy driver 
needs it, then it needs to go find the DSI block and get its reset.

> +
> +  power-domains:
> +    maxItems: 1
> +
> +  "#phy-cells":
> +    const: 0
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - resets
> +  - reset-names
> +  - power-domains
> +  - "#phy-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    phy@295e0000 {
> +      compatible = "starfive,jh7110-dphy-tx";
> +      reg = <0x295e0000 0x10000>;
> +      clocks = <&voutcrg 14>;
> +      clock-names = "dphy_txesc";
> +      resets = <&syscrg 7>,
> +               <&syscrg 10>,
> +               <&syscrg 11>;
> +      reset-names = "dsi_txbytehs", "dphy_sys", "dphy_txbytehs";
> +      power-domains = <&aon_syscon 0>;
> +      #phy-cells = <0>;
> +    };
> -- 
> 2.17.1
> 


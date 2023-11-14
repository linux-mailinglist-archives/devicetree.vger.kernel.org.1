Return-Path: <devicetree+bounces-15648-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 716E57EB1AC
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 15:13:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D7DFC1F24DA6
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 14:13:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BBA8405F8;
	Tue, 14 Nov 2023 14:13:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F1E3405DB;
	Tue, 14 Nov 2023 14:12:59 +0000 (UTC)
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com [209.85.167.175])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47583CA;
	Tue, 14 Nov 2023 06:12:58 -0800 (PST)
Received: by mail-oi1-f175.google.com with SMTP id 5614622812f47-3b3f55e1bbbso3671831b6e.2;
        Tue, 14 Nov 2023 06:12:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699971177; x=1700575977;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=grqabXhF1cc92vF8gq/pM9VwhzUupGdZ4UapkLTlThU=;
        b=l/Fuhy4cwCvkZ95+Ld59lpxdsd6vvtV70Me1L3y9gouR+LWbcPTGm95r7u12WE7AkF
         oqsemgTIfnR6VYI2Opq4OmLkEj0YYsjOJvx9S+nrOqKe3t1bmJ1eOtvgvdKp0UnvIwSo
         WzibpY/3aYOaHg811zNpB5OziiogDxXN0ZcU3cMXjN0BeMhj84EsUZxyEpKH3NkXHsX8
         grdfXalBdFJcA/6UyN9uYqdMRbN1nhTakPHmLvbCoKj32WYXFnF/tHLqr4nZNE5QOP6+
         O9D4QxKtJp3nx0f34kSZPZ8rv3vo9Z4ugwEeTtLmdz/P0/faQ+9lHdX9S012JmBq9PsQ
         BksA==
X-Gm-Message-State: AOJu0YzseM6X/SGonksSjuhyWU/4c5HMTFJ6g5t2gC7M3GVHd/6TvnFa
	bOwqUPZ+tY8ugrRMBNB+Gg==
X-Google-Smtp-Source: AGHT+IGM8P2dNpor6yqmA3vMzSNCOpGNAQLuH/RBi+neq4/Gkrf0qxbf/uIffCsQIQU/hDO8wYDRbw==
X-Received: by 2002:a05:6871:64f:b0:1ea:3210:3b5d with SMTP id x15-20020a056871064f00b001ea32103b5dmr14372864oan.40.1699971177494;
        Tue, 14 Nov 2023 06:12:57 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id z18-20020a9d7a52000000b006ce25d48e55sm205730otm.67.2023.11.14.06.12.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Nov 2023 06:12:56 -0800 (PST)
Received: (nullmailer pid 1682194 invoked by uid 1000);
	Tue, 14 Nov 2023 14:12:55 -0000
Date: Tue, 14 Nov 2023 08:12:55 -0600
From: Rob Herring <robh@kernel.org>
To: Daniel Golle <daniel@makrotopia.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Sabrina Dubroca <sd@queasysnail.net>, Jianhui Zhao <zhaojh329@gmail.com>, Chen-Yu Tsai <wenst@chromium.org>, "Garmin.Chang" <Garmin.Chang@mediatek.com>, Johnson Wang <johnson.wang@mediatek.com>, Sam Shih <sam.shih@mediatek.com>, Frank Wunderlich <frank-w@public-files.de>, Dan Carpenter <dan.carpenter@linaro.org>, Edward-JW Yang <edward-jw.yang@mediatek.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, linux-clk@vger.kernel.org, netdev@vger.kernel.org
Subject: Re: [PATCH 2/4] dt-bindings: clock: mediatek: add clock controllers
 of MT7988
Message-ID: <20231114141255.GA1678477-robh@kernel.org>
References: <cde7269e5975907ed2b7799328ea814e529ecf51.1699909748.git.daniel@makrotopia.org>
 <42c9447ae32be8aaeca2047a5e97660fb67dd286.1699909748.git.daniel@makrotopia.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <42c9447ae32be8aaeca2047a5e97660fb67dd286.1699909748.git.daniel@makrotopia.org>

On Mon, Nov 13, 2023 at 09:12:19PM +0000, Daniel Golle wrote:
> Add various clock controllers found in the MT7988 SoC to existing
> bindings (if applicable) and add files for the new ethwarp, mcusys
> and xfi-pll clock controllers not previously present in any previous
> MediaTek SoC.
> 
> Signed-off-by: Daniel Golle <daniel@makrotopia.org>
> ---
>  .../bindings/arm/mediatek/mediatek,ethsys.txt |  1 +
>  .../arm/mediatek/mediatek,infracfg.yaml       |  1 +
>  .../arm/mediatek/mediatek,mt7988-ethwarp.yaml | 60 +++++++++++++++++++
>  .../arm/mediatek/mediatek,mt7988-mcusys.yaml  | 46 ++++++++++++++
>  .../arm/mediatek/mediatek,mt7988-xfi-pll.yaml | 49 +++++++++++++++
>  .../bindings/clock/mediatek,apmixedsys.yaml   |  1 +
>  .../bindings/clock/mediatek,topckgen.yaml     |  1 +
>  .../bindings/net/pcs/mediatek,sgmiisys.yaml   |  2 +
>  8 files changed, 161 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/mediatek/mediatek,mt7988-ethwarp.yaml
>  create mode 100644 Documentation/devicetree/bindings/arm/mediatek/mediatek,mt7988-mcusys.yaml
>  create mode 100644 Documentation/devicetree/bindings/arm/mediatek/mediatek,mt7988-xfi-pll.yaml
> 
> diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,ethsys.txt b/Documentation/devicetree/bindings/arm/mediatek/mediatek,ethsys.txt
> index eccd4b706a78d..ac52579e03618 100644
> --- a/Documentation/devicetree/bindings/arm/mediatek/mediatek,ethsys.txt
> +++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,ethsys.txt
> @@ -12,6 +12,7 @@ Required Properties:
>  	- "mediatek,mt7629-ethsys", "syscon"
>  	- "mediatek,mt7981-ethsys", "syscon"
>  	- "mediatek,mt7986-ethsys", "syscon"
> +	- "mediatek,mt7988-ethsys", "syscon"
>  - #clock-cells: Must be 1
>  - #reset-cells: Must be 1
>  
> diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,infracfg.yaml b/Documentation/devicetree/bindings/arm/mediatek/mediatek,infracfg.yaml
> index ea98043c6ba3d..230b5188a88db 100644
> --- a/Documentation/devicetree/bindings/arm/mediatek/mediatek,infracfg.yaml
> +++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,infracfg.yaml
> @@ -30,6 +30,7 @@ properties:
>                - mediatek,mt7629-infracfg
>                - mediatek,mt7981-infracfg
>                - mediatek,mt7986-infracfg
> +              - mediatek,mt7988-infracfg
>                - mediatek,mt8135-infracfg
>                - mediatek,mt8167-infracfg
>                - mediatek,mt8173-infracfg
> diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,mt7988-ethwarp.yaml b/Documentation/devicetree/bindings/arm/mediatek/mediatek,mt7988-ethwarp.yaml
> new file mode 100644
> index 0000000000000..0c3d5e88b09df
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,mt7988-ethwarp.yaml
> @@ -0,0 +1,60 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/mediatek/mediatek,mt7988-ethwarp.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: MediaTek MT7988 ethwarp Controller
> +
> +maintainers:
> +  - Daniel Golle <daniel@makrotopia.org>
> +
> +description:
> +  The Mediatek MT7988 ethwarp controller provides clocks and resets for the
> +  Ethernet related subsystems found the MT7988 SoC.
> +  The reset-controller can be represented using the ti,syscon-reset bindings.
> +  The clock values can be found in <dt-bindings/clock/mt*-clk.h>.
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: mediatek,mt7988-ethwarp
> +      - const: syscon
> +      - const: simple-mfd
> +
> +  reg:
> +    maxItems: 1
> +
> +  reset-controller: true

type: object

> +
> +  '#clock-cells':
> +    const: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - '#clock-cells'
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/reset/ti-syscon.h>
> +    soc {
> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +
> +        ethwarp: clock-controller@15031000 {

Drop unused labels. Elsewhere too.

> +            compatible = "mediatek,mt7988-ethwarp", "syscon", "simple-mfd";
> +            reg = <0 0x15031000 0 0x1000>;
> +            #clock-cells = <1>;
> +
> +            ethrst: reset-controller {
> +                compatible = "ti,syscon-reset";
> +                #reset-cells = <1>;
> +                ti,reset-bits = <
> +                    0x8 9 0x8 9 0 0 (ASSERT_SET | DEASSERT_CLEAR | STATUS_NONE)
> +                >;
> +            };
> +        };
> +    };


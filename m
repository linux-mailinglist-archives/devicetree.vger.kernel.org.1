Return-Path: <devicetree+bounces-15059-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 601A67E8385
	for <lists+devicetree@lfdr.de>; Fri, 10 Nov 2023 21:12:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1B01E2812C5
	for <lists+devicetree@lfdr.de>; Fri, 10 Nov 2023 20:12:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D7623B2A3;
	Fri, 10 Nov 2023 20:12:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 934E23B785;
	Fri, 10 Nov 2023 20:12:29 +0000 (UTC)
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D464A9;
	Fri, 10 Nov 2023 12:12:27 -0800 (PST)
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-1efabc436e4so1278547fac.1;
        Fri, 10 Nov 2023 12:12:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699647146; x=1700251946;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aYPa4O78Tl9tcmK397HC2WttsKjZOddgN547MJ4MmL0=;
        b=OhS+YDKKYTq/d/EIv64xE31/aQrRpe+f5e6nJJ/BUQZhSPgCqc1299mvURN5OCDjJG
         1xONDYvCqxpK3+8UcghUfSfEVV7zAUkxOILmYSz68s3PpU63cNX61YpttMssvrMH9oeg
         Xs5/4+iipR7e+1GmPBCmKwHxjAdE7Z2FgMdKz7rr2e2F+c248UTDylajYBooOCeUU1gN
         mV96/8AI01uS/+mb/2xX2ZWUG9gjqsLabQCRyHJiC6NoKYHQgzwq/4fuOjre1EGtIla2
         3kh/LEcubORxxcwqiGduIReWUWp7Cxblr5cJ1xrmCGENjzhMF28L1VPIBBVu0fjn0SgH
         dChw==
X-Gm-Message-State: AOJu0YwVYiiJrpq4KTf57154O0OmPnHGl516tjFYBeVynmJ67S5PEJM1
	SQQrkSzmDuoLP0p4Sny0qg==
X-Google-Smtp-Source: AGHT+IGGXIL2O/re8npp6ti2/LlN+F5Sn3lm88DX439xHtC4GKBD8xBJhNWXN6GHMCBpDIWH4xG5Rw==
X-Received: by 2002:a05:6870:2dc6:b0:1c8:c27f:7d9b with SMTP id op6-20020a0568702dc600b001c8c27f7d9bmr282410oab.27.1699647146338;
        Fri, 10 Nov 2023 12:12:26 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id y22-20020a056870725600b001ea4324364csm52458oaf.12.2023.11.10.12.12.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Nov 2023 12:12:25 -0800 (PST)
Received: (nullmailer pid 351692 invoked by uid 1000);
	Fri, 10 Nov 2023 20:12:23 -0000
Date: Fri, 10 Nov 2023 14:12:23 -0600
From: Rob Herring <robh@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Jerome Brunet <jbrunet@baylibre.com>, Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, Martin Blumenstingl <martin.blumenstingl@googlemail.com>, David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Jagan Teki <jagan@amarulasolutions.com>, Nicolas Belin <nbelin@baylibre.com>, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v8 02/12] dt-bindings: soc: amlogic,meson-gx-hhi-sysctrl:
 add example covering meson-axg-hhi-sysctrl
Message-ID: <20231110201223.GA347493-robh@kernel.org>
References: <20231109-amlogic-v6-4-upstream-dsi-ccf-vim3-v8-0-81e4aeeda193@linaro.org>
 <20231109-amlogic-v6-4-upstream-dsi-ccf-vim3-v8-2-81e4aeeda193@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231109-amlogic-v6-4-upstream-dsi-ccf-vim3-v8-2-81e4aeeda193@linaro.org>

On Thu, Nov 09, 2023 at 10:00:03AM +0100, Neil Armstrong wrote:
> Add a thirst example covering the meson-axg-hhi-sysctrl variant and more
> importantly the phy subnode.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  .../soc/amlogic/amlogic,meson-gx-hhi-sysctrl.yaml  | 41 ++++++++++++++++++++++
>  1 file changed, 41 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/soc/amlogic/amlogic,meson-gx-hhi-sysctrl.yaml b/Documentation/devicetree/bindings/soc/amlogic/amlogic,meson-gx-hhi-sysctrl.yaml
> index 16977e4e4357..2edf4ccea845 100644
> --- a/Documentation/devicetree/bindings/soc/amlogic/amlogic,meson-gx-hhi-sysctrl.yaml
> +++ b/Documentation/devicetree/bindings/soc/amlogic/amlogic,meson-gx-hhi-sysctrl.yaml
> @@ -158,3 +158,44 @@ examples:
>              };
>          };
>      };
> +

New example should be separate starting with a '-|'.

> +    bus@ff63c000 {
> +        compatible = "simple-bus";
> +        reg = <0xff63c000 0x1c00>;
> +        #address-cells = <1>;
> +        #size-cells = <1>;
> +        ranges = <0x0 0xff63c000 0x1c00>;

Why do you need all this? 1 cell is the default for examples.

> +
> +        system-controller@0 {
> +            compatible = "amlogic,meson-axg-hhi-sysctrl", "simple-mfd", "syscon";
> +            reg = <0 0x400>;
> +
> +            clock-controller {
> +                compatible = "amlogic,axg-clkc";
> +                #clock-cells = <1>;
> +                clocks = <&xtal>;
> +                clock-names = "xtal";
> +            };
> +
> +            power-controller {
> +                compatible = "amlogic,meson-axg-pwrc";
> +                #power-domain-cells = <1>;
> +                amlogic,ao-sysctrl = <&sysctrl_AO>;
> +
> +                resets = <&reset_viu>,
> +                         <&reset_venc>,
> +                         <&reset_vcbus>,
> +                         <&reset_vencl>,
> +                         <&reset_vid_lock>;
> +                reset-names = "viu", "venc", "vcbus", "vencl", "vid_lock";
> +                clocks = <&clk_vpu>, <&clk_vapb>;
> +                clock-names = "vpu", "vapb";
> +            };
> +
> +            phy {
> +                compatible = "amlogic,axg-mipi-pcie-analog-phy";
> +                #phy-cells = <0>;
> +                status = "disabled";

Examples should not be disabled.

> +            };
> +        };
> +    };
> 
> -- 
> 2.34.1
> 


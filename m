Return-Path: <devicetree+bounces-12705-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8393D7DB1D5
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 02:37:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 61CCC1C208CC
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 01:37:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BF79658;
	Mon, 30 Oct 2023 01:37:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52076650;
	Mon, 30 Oct 2023 01:37:39 +0000 (UTC)
Received: from mail-oa1-f48.google.com (mail-oa1-f48.google.com [209.85.160.48])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2E20A9;
	Sun, 29 Oct 2023 18:37:37 -0700 (PDT)
Received: by mail-oa1-f48.google.com with SMTP id 586e51a60fabf-1dceb2b8823so1997557fac.1;
        Sun, 29 Oct 2023 18:37:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698629857; x=1699234657;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xlMGuUk+qnsLF+L/nJQTBfbm1MmfORWq7xKQHDc9EXw=;
        b=sww6DIpJN3i+/vBDDYO89UA727YeWI1Uwim6Y6a8hjng7efFLaBe+aOvfwXcQ5iS12
         t9vAPpoR65OqpBASDNO+GnId83dwcCPOquTQPZva0ExHW0hS2iXFXtRnScf8TdtcwBMI
         WIVn1oppO1U1WDop9MVYdC9JlRFp/GIFnIS5JkSOYrTLsRhFwQyh7o4yy2Uk1xdSNy4n
         8Jzm+ioPuqfCtqmPdkYg/6Brvm8EnIHivMdwxFqGrAiN2DxJE2Y1CTAsYZXWXpiLG6fh
         obKziwKK3lDj7NW04lR3rFgldN+aZ2azwDu2tS0zpSN1xn6DOnA2Sc02vOa021e1QV0F
         OYow==
X-Gm-Message-State: AOJu0YxvwvTr4igBuzAtE4iK+d13SJM7y5w8CasokujOqv8bpPZawzQ5
	fgQn3J2oNAGiIEi8Mn2LXQ==
X-Google-Smtp-Source: AGHT+IEZOFMr5EN0MHiSMfj7O+mvk+nZJRx3Z3xGz3bf8eovU7M0pK4cWM0M+2uMsKvCWYSf9lROTw==
X-Received: by 2002:a05:6871:5a9a:b0:1e9:ae60:de68 with SMTP id oo26-20020a0568715a9a00b001e9ae60de68mr6512318oac.26.1698629856926;
        Sun, 29 Oct 2023 18:37:36 -0700 (PDT)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id n3-20020a056870e40300b001ea17894928sm1372256oag.21.2023.10.29.18.37.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Oct 2023 18:37:36 -0700 (PDT)
Received: (nullmailer pid 3840493 invoked by uid 1000);
	Mon, 30 Oct 2023 01:37:34 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-riscv@lists.infradead.org, Eric Dumazet <edumazet@google.com>, Richard Cochran <richardcochran@gmail.com>, Paolo Abeni <pabeni@redhat.com>, Jakub Kicinski <kuba@kernel.org>, Emil Renner Berthing <kernel@esmil.dk>, Jose Abreu <joabreu@synopsys.com>, Conor Dooley <conor+dt@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, linux-stm32@st-md-mailman.stormreply.com, linux-kernel@vger.kernel.org, Paul Walmsley <paul.walmsley@sifive.com>, Samin Guo <samin.guo@starfivetech.com>, netdev@vger.kernel.org, Albert Ou <aou@eecs.berkeley.edu>, kernel@collabora.com, "David S. Miller" <davem@davemloft.net>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, linux-arm-kernel@lists.infradead.org, Giuseppe Cavallaro <peppe.cavallaro@st.com>, devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
In-Reply-To: <20231029042712.520010-5-cristian.ciocaltea@collabora.com>
References: <20231029042712.520010-1-cristian.ciocaltea@collabora.com>
 <20231029042712.520010-5-cristian.ciocaltea@collabora.com>
Message-Id: <169855920979.2226136.3264200658228005554.robh@kernel.org>
Subject: Re: [PATCH v2 04/12] dt-bindings: net: starfive,jh7110-dwmac: Add
 JH7100 SoC compatible
Date: Sun, 29 Oct 2023 20:37:34 -0500


On Sun, 29 Oct 2023 06:27:04 +0200, Cristian Ciocaltea wrote:
> The Synopsys DesignWare MAC found on StarFive JH7100 SoC is quite
> similar to the newer JH7110, but it requires only two interrupts and a
> single reset line.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  .../devicetree/bindings/net/snps,dwmac.yaml   |  1 +
>  .../bindings/net/starfive,jh7110-dwmac.yaml   | 74 +++++++++++++------
>  2 files changed, 54 insertions(+), 21 deletions(-)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/net/amlogic,meson-dwmac.example.dtb: ethernet@c9410000: compatible: 'oneOf' conditional failed, one must be fixed:
	'starfive,jh7100-dwmac' was expected
	'amlogic,meson-gxbb-dwmac' is not one of ['starfive,jh7110-dwmac']
	'snps,dwmac-5.20' was expected
	from schema $id: http://devicetree.org/schemas/net/starfive,jh7110-dwmac.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/net/amlogic,meson-dwmac.example.dtb: ethernet@c9410000: reg: [[3376480256, 65536], [3364046144, 8]] is too long
	from schema $id: http://devicetree.org/schemas/net/starfive,jh7110-dwmac.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/net/amlogic,meson-dwmac.example.dtb: ethernet@c9410000: clocks: [[4294967295], [4294967295], [4294967295], [4294967295]] is too short
	from schema $id: http://devicetree.org/schemas/net/starfive,jh7110-dwmac.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/net/amlogic,meson-dwmac.example.dtb: ethernet@c9410000: clock-names:1: 'pclk' was expected
	from schema $id: http://devicetree.org/schemas/net/starfive,jh7110-dwmac.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/net/amlogic,meson-dwmac.example.dtb: ethernet@c9410000: clock-names:2: 'ptp_ref' was expected
	from schema $id: http://devicetree.org/schemas/net/starfive,jh7110-dwmac.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/net/amlogic,meson-dwmac.example.dtb: ethernet@c9410000: clock-names:3: 'tx' was expected
	from schema $id: http://devicetree.org/schemas/net/starfive,jh7110-dwmac.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/net/amlogic,meson-dwmac.example.dtb: ethernet@c9410000: clock-names: ['stmmaceth', 'clkin0', 'clkin1', 'timing-adjustment'] is too short
	from schema $id: http://devicetree.org/schemas/net/starfive,jh7110-dwmac.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/net/amlogic,meson-dwmac.example.dtb: ethernet@c9410000: 'resets' is a required property
	from schema $id: http://devicetree.org/schemas/net/starfive,jh7110-dwmac.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/net/amlogic,meson-dwmac.example.dtb: ethernet@c9410000: 'reset-names' is a required property
	from schema $id: http://devicetree.org/schemas/net/starfive,jh7110-dwmac.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20231029042712.520010-5-cristian.ciocaltea@collabora.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.



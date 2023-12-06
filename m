Return-Path: <devicetree+bounces-22086-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A771C8065C6
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 04:40:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 48855B209DA
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 03:40:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CD24D517;
	Wed,  6 Dec 2023 03:40:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com [209.85.160.51])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 43BE4D47;
	Tue,  5 Dec 2023 19:39:57 -0800 (PST)
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-1faecf57bedso3448978fac.3;
        Tue, 05 Dec 2023 19:39:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701833996; x=1702438796;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=hLT1BoNdZOsa14xuLGA+JXdO1aXqfEnpbPJsybdwp2I=;
        b=wO1rwDuXis5z0nZ55YGYGvGxLa4rYNQ96OrAhs7TzKEOADgnObhZkckZ7WpTU/H2bz
         VJdH8sDx6aHIVhcGa9eEu91cxh1rMLO6hsMu+XEvaQ6YOK6WMg0Qk1ZBWasBVrpF3Zq6
         GJ7GyrmEGRPph5MPV9MyOVixLkvmAP5Df8qmdrXF/PESbzAH9XFLhUjZP3YZ0bJAuedT
         m2JDHmU+/slA6WKAddXM/piepN/Qh7JDwNqtgCchNBhk2y6sV3GrAwgZAzhZ+PzhDZ9/
         Cp9fs5UbaP/zL1YwfSQ0N/v71ZySaacB6MCgYwPL8cabbhJlBu9p3ftHZuUVE+jKHHyh
         uBjw==
X-Gm-Message-State: AOJu0YyOHuhH4NlXgzRTB63vVxxCx1bxGacxHz8J/aVlpf4skONJp7KG
	08L7sIBYDeeUoyulgpYSlw==
X-Google-Smtp-Source: AGHT+IGTmq+FN6dwgEMD4lsPZ+v8n15aufTQBAy0f7TbjXAqsv/BoIE1ZkwoUbLlWPs6l+CoQNYQTg==
X-Received: by 2002:a05:6870:9690:b0:1fb:75a:de65 with SMTP id o16-20020a056870969000b001fb075ade65mr268467oaq.83.1701833996268;
        Tue, 05 Dec 2023 19:39:56 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id pk28-20020a0568704c1c00b001fafc32e808sm2929937oab.0.2023.12.05.19.39.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Dec 2023 19:39:55 -0800 (PST)
Received: (nullmailer pid 463141 invoked by uid 1000);
	Wed, 06 Dec 2023 03:39:36 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Daniel Golle <daniel@makrotopia.org>
Cc: linux-kernel@vger.kernel.org, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Sean Wang <sean.wang@mediatek.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Chunfeng Yun <chunfeng.yun@mediatek.com>, 
	Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, SkyLake Huang <SkyLake.Huang@mediatek.com>, 
	devicetree@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, John Crispin <john@phrozen.org>, 
	netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-phy@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
	Felix Fietkau <nbd@nbd.name>, "David S. Miller" <davem@davemloft.net>, Andrew Lunn <andrew@lunn.ch>, 
	linux-mediatek@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, 
	Mark Lee <Mark-MC.Lee@mediatek.com>, Lorenzo Bianconi <lorenzo@kernel.org>, 
	Alexander Couzens <lynxis@fe80.eu>, Qingfang Deng <dqfext@gmail.com>
In-Reply-To: <e2214e904cde9a9d64ec1e87ac38560f7ac35a1f.1701826319.git.daniel@makrotopia.org>
References: <cover.1701826319.git.daniel@makrotopia.org>
 <e2214e904cde9a9d64ec1e87ac38560f7ac35a1f.1701826319.git.daniel@makrotopia.org>
Message-Id: <170183397527.463082.3332126649962865060.robh@kernel.org>
Subject: Re: [RFC PATCH v2 6/8] dt-bindings: net: mediatek: remove wrongly
 added clocks and SerDes
Date: Tue, 05 Dec 2023 21:39:36 -0600


On Wed, 06 Dec 2023 01:44:51 +0000, Daniel Golle wrote:
> Several clocks as well as both sgmiisys phandles were added by mistake
> to the Ethernet bindings for MT7988.
> 
> This happened because the vendor driver which served as a reference
> uses a high number of syscon phandles to access various parts of the
> SoC which wasn't acceptable upstream. Hence several parts which have
> never previously been supported (such SerDes PHY and USXGMII PCS) have
> been moved to separate drivers which also result in a much more sane
> device tree.
> 
> Quickly align the bindings with the upcoming reality of the drivers
> actually adding full support for this SoC.
> 
> Fixes: c94a9aabec36 ("dt-bindings: net: mediatek,net: add mt7988-eth binding")
> Signed-off-by: Daniel Golle <daniel@makrotopia.org>
> ---
>  .../devicetree/bindings/net/mediatek,net.yaml | 32 ++++---------------
>  1 file changed, 7 insertions(+), 25 deletions(-)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/net/pcs/mediatek,usxgmii.example.dts:18:18: fatal error: dt-bindings/clock/mediatek,mt7988-clk.h: No such file or directory
make[2]: *** [scripts/Makefile.lib:419: Documentation/devicetree/bindings/net/pcs/mediatek,usxgmii.example.dtb] Error 1

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/e2214e904cde9a9d64ec1e87ac38560f7ac35a1f.1701826319.git.daniel@makrotopia.org

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.



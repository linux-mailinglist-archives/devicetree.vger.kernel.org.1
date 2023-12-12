Return-Path: <devicetree+bounces-24162-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 99DB680E3EC
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 06:43:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EEF27282E1D
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 05:43:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E112F154B7;
	Tue, 12 Dec 2023 05:43:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f49.google.com (mail-oo1-f49.google.com [209.85.161.49])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DCB55D1;
	Mon, 11 Dec 2023 21:43:40 -0800 (PST)
Received: by mail-oo1-f49.google.com with SMTP id 006d021491bc7-58d1b767b2bso3273442eaf.2;
        Mon, 11 Dec 2023 21:43:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702359820; x=1702964620;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+B65863yLKUtFx1H3cySA9eHt0gdSQ0o5gL85fM5qsM=;
        b=WS4bhh+yWxO/urW7qZDr0F9CSIHm2zcthZ1zOAD1QA5H7Fed3i8dLOiR2spnylyqL7
         2yFK7EWS5XwGTePGHUlfL28lV+M2N8vOi09BY+nxkH2hEBxPuNKNK9BgjHI1nZataL4p
         oPb8deRawcRKDhrzw5cPttSxOU17K30Xl/JqCPJNAyHe+00PqtEJ7Z994X+mlbx5PWNx
         R9qZaS5BMPpO2zgg57ZZFBRgE3+aBi6YgL7a+VS654BltiEbLhaaZOIxWoGM4akERM8r
         h/4pLa24P3SQme11NDks5j8qLMgrPjLzKt4D1r2ZxjtboS69EOpn9jie1aDk6x3ZsuIX
         P9iA==
X-Gm-Message-State: AOJu0YzVzrwLdDc/mqzbDpGp9bzL5T8rOsSrm1AyHfpQBlq/Cd22OJVz
	M2NT2gpPYslgqaNMWXXsMw==
X-Google-Smtp-Source: AGHT+IEfp8oyZwps8u2dDzwjetO/7PzN9Vr0x/u2+ppbmGKeBu0THct+99WZVE4EB+zu4AMg31Wgjg==
X-Received: by 2002:a4a:7612:0:b0:590:16fd:e056 with SMTP id t18-20020a4a7612000000b0059016fde056mr2876236ooc.14.1702359819930;
        Mon, 11 Dec 2023 21:43:39 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id j27-20020a4a92db000000b0058d4805748fsm2282822ooh.44.2023.12.11.21.43.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Dec 2023 21:43:39 -0800 (PST)
Received: (nullmailer pid 39736 invoked by uid 1000);
	Tue, 12 Dec 2023 05:43:35 -0000
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
Cc: Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	John Crispin <john@phrozen.org>, Chunfeng Yun <chunfeng.yun@mediatek.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, "David S. Miller" <davem@davemloft.net>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Paolo Abeni <pabeni@redhat.com>, 
	Vinod Koul <vkoul@kernel.org>, Felix Fietkau <nbd@nbd.name>, Eric Dumazet <edumazet@google.com>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Russell King <linux@armlinux.org.uk>, 
	Qingfang Deng <dqfext@gmail.com>, linux-kernel@vger.kernel.org, 
	Matthias Brugger <matthias.bgg@gmail.com>, Andrew Lunn <andrew@lunn.ch>, linux-phy@lists.infradead.org, 
	Sean Wang <sean.wang@mediatek.com>, Heiner Kallweit <hkallweit1@gmail.com>, 
	linux-mediatek@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, 
	Alexander Couzens <lynxis@fe80.eu>, SkyLake Huang <SkyLake.Huang@mediatek.com>, 
	Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	linux-arm-kernel@lists.infradead.org, Lorenzo Bianconi <lorenzo@kernel.org>, 
	Mark Lee <Mark-MC.Lee@mediatek.com>
In-Reply-To: <ac6a7277fc534f610386bc51b2ff87beade03be8.1702352117.git.daniel@makrotopia.org>
References: <cover.1702352117.git.daniel@makrotopia.org>
 <ac6a7277fc534f610386bc51b2ff87beade03be8.1702352117.git.daniel@makrotopia.org>
Message-Id: <170235981567.39712.1104850530934071903.robh@kernel.org>
Subject: Re: [RFC PATCH net-next v3 7/8] dt-bindings: net: mediatek,net:
 fix and complete mt7988-eth binding
Date: Mon, 11 Dec 2023 23:43:35 -0600


On Tue, 12 Dec 2023 03:51:01 +0000, Daniel Golle wrote:
> Complete support for MT7988 which comes with 3 MACs, SRAM for DMA
> descriptors and uses a dedicated PCS for the SerDes units.
> 
> Fixes: c94a9aabec36 ("dt-bindings: net: mediatek,net: add mt7988-eth binding")
> Signed-off-by: Daniel Golle <daniel@makrotopia.org>
> ---
>  .../devicetree/bindings/net/mediatek,net.yaml | 148 +++++++++++++++++-
>  1 file changed, 146 insertions(+), 2 deletions(-)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/net/mediatek,net.example.dts:231:18: fatal error: dt-bindings/clock/mediatek,mt7988-clk.h: No such file or directory
  231 |         #include <dt-bindings/clock/mediatek,mt7988-clk.h>
make[2]: *** [scripts/Makefile.lib:419: Documentation/devicetree/bindings/net/mediatek,net.example.dtb] Error 1

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/ac6a7277fc534f610386bc51b2ff87beade03be8.1702352117.git.daniel@makrotopia.org

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.



Return-Path: <devicetree+bounces-21388-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FA70803759
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 15:45:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 60FA51C20DB3
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 14:45:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19605249EB;
	Mon,  4 Dec 2023 14:45:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 323E4D4D;
	Mon,  4 Dec 2023 06:45:26 -0800 (PST)
Received: by mail-oi1-f179.google.com with SMTP id 5614622812f47-3b8b0ced0f4so965449b6e.0;
        Mon, 04 Dec 2023 06:45:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701701125; x=1702305925;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=IStlrL3AAA++ujnW7Gs80LO4c80fIgknoPnSy4FHWTY=;
        b=eV/OIhpXuu39TO1zkZ7A6NFC38toXXxtZizcIYx8wuXyFQ1eUgWVAZ9TDz7Az6hAj/
         /u7UPPwZlxlCHKQM1aXVBAQoHyAdJSmo8cLA7SQwhtmdgwwjRIQ0DNgPQ+9aaookoXSi
         aUDTFGfWsqRYZijmvDSxvCSt6MqBF9NTGoEaq/OD2Sy6FDhbNt1PpL5P9GEAOEft3ICs
         TmLdgnjIzkd8DoZBRoSWH9t5d4V9y+G/3iGl6nz7wJqGwjefYwqfELuQW5kHKZzvWaqV
         OfOgTE9rVEJ1o3W/Dch82aRUU3eHSlqgEsZONUV1P+OMlyPF13w2gnnAsIfUM1EDWDFM
         w2MA==
X-Gm-Message-State: AOJu0YwNl8lx9J+Y8aWIYk0o6BotRMqw8C1uBQ2SqqS68OG4KUzpFS2T
	utrKAKPJ79Ra6Uk/6Alz5w==
X-Google-Smtp-Source: AGHT+IGP/nC2C30emuK8+P2XIGBs/Pp0+yyMdPBFSIlSkDXIrMUGupMhp1AlWT6VkWwdCJoaeK1dQg==
X-Received: by 2002:a54:4414:0:b0:3b8:b06b:9807 with SMTP id k20-20020a544414000000b003b8b06b9807mr1684905oiw.55.1701701125334;
        Mon, 04 Dec 2023 06:45:25 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id z3-20020a056808048300b003b83c516e62sm1847817oid.51.2023.12.04.06.45.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Dec 2023 06:45:24 -0800 (PST)
Received: (nullmailer pid 1246097 invoked by uid 1000);
	Mon, 04 Dec 2023 14:45:23 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Suraj Jaiswal <quic_jsuraj@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Bhupesh Sharma <bhupesh.sharma@linaro.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, linux-arm-msm@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>, Rob Herring <robh+dt@kernel.org>, "David S. Miller" <davem@davemloft.net>, linux-stm32@st-md-mailman.stormreply.com, linux-kernel@vger.kernel.org, Prasad Sodagudi <psodagud@quicinc.com>, kernel@quicinc.com, Jose Abreu <joabreu@synopsys.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, Conor Dooley <conor+dt@kernel.org>, Andrew Halaney <ahalaney@redhat.com>, Konrad Dybcio <konrad.dybcio@linaro.org>, Andy Gross <agross@kernel.org>, Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, devicetree@vger.kernel.org, Vinod Koul <vkoul@kernel.org>
In-Reply-To: <2f215e2dabec345ec7f28e759c9463854959cced.1701695218.git.quic_jsuraj@quicinc.com>
References: <cover.1701695218.git.quic_jsuraj@quicinc.com>
 <2f215e2dabec345ec7f28e759c9463854959cced.1701695218.git.quic_jsuraj@quicinc.com>
Message-Id: <170170112344.1246081.15695671179356012271.robh@kernel.org>
Subject: Re: [PATCH net-next v3 1/3] dt-bindings: net: qcom,ethqos: add
 binding doc for safety IRQ for sa8775p
Date: Mon, 04 Dec 2023 08:45:23 -0600


On Mon, 04 Dec 2023 18:56:15 +0530, Suraj Jaiswal wrote:
> Add binding doc for safety IRQ. The safety IRQ will be
> triggered for ECC, DPP, FSM error.
> 
> Signed-off-by: Suraj Jaiswal <quic_jsuraj@quicinc.com>
> ---
>  Documentation/devicetree/bindings/net/qcom,ethqos.yaml | 9 ++++++---
>  Documentation/devicetree/bindings/net/snps,dwmac.yaml  | 5 +++--
>  2 files changed, 9 insertions(+), 5 deletions(-)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/net/snps,dwmac.example.dtb: ethernet@e0800000: interrupt-names:2: 'eth_lpi' is not one of ['eth_wake_irq', 'safety']
	from schema $id: http://devicetree.org/schemas/net/snps,dwmac.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/net/starfive,jh7110-dwmac.example.dtb: ethernet@16030000: interrupt-names:2: 'eth_lpi' is not one of ['eth_wake_irq', 'safety']
	from schema $id: http://devicetree.org/schemas/net/snps,dwmac.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/net/starfive,jh7110-dwmac.example.dtb: ethernet@16030000: interrupt-names:2: 'eth_lpi' is not one of ['eth_wake_irq', 'safety']
	from schema $id: http://devicetree.org/schemas/net/starfive,jh7110-dwmac.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/net/starfive,jh7110-dwmac.example.dtb: ethernet@16030000: Unevaluated properties are not allowed ('mdio', 'phy-handle', 'phy-mode', 'rx-fifo-depth', 'snps,axi-config', 'snps,en-tx-lpi-clockgating', 'snps,fixed-burst', 'snps,force_thresh_dma_mode', 'snps,multicast-filter-bins', 'snps,no-pbl-x8', 'snps,perfect-filter-entries', 'snps,rxpbl', 'snps,tso', 'snps,txpbl', 'stmmac-axi-config', 'tx-fifo-depth' were unexpected)
	from schema $id: http://devicetree.org/schemas/net/starfive,jh7110-dwmac.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/2f215e2dabec345ec7f28e759c9463854959cced.1701695218.git.quic_jsuraj@quicinc.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.



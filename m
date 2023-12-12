Return-Path: <devicetree+bounces-24164-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 72B3F80E3F1
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 06:44:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A34261C21B04
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 05:44:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 802A9154BB;
	Tue, 12 Dec 2023 05:43:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00480114;
	Mon, 11 Dec 2023 21:43:45 -0800 (PST)
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-6d852e06b07so2761084a34.3;
        Mon, 11 Dec 2023 21:43:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702359825; x=1702964625;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4BE3V109XW9XqPwVdS3nRPzEanrVkvXnsLO8JhtSOyY=;
        b=sJoHPj0VO44iDnhpbd64Y1fS0dyX0hZdKDSndkTm2gMLA6WGZaqs38h4R5dCe4Z6zm
         F/mMeps6TVacOoOu94IuF79pWyNTplPu6/8Na8HLsmOs2/f9uEl/PzmjTCkDSFueaAgt
         JMlvdxuoUTVYwehRQeiMUJOUbulBa/pd1hYrRzz6uSV5uLacNc9eBSrVz7U4BlzUL4lD
         Xe7nSu7EvwIgro+FrcplO+QYk/Dmy4qr6+uecu3va8oEygLT8TnCQy/pV0hv4dEDamMA
         Ki+LC7gAWd5eJ/xU9T1v/FR7PUVtEeHYKBZmkSFi37VXqXjpD3Me3Nvkh927frEwawFj
         QzRg==
X-Gm-Message-State: AOJu0YzLQTFRNbb2eBag4YU3VnR7Jt+sZ5TQTkdEGm+kabb+JFcGDKSm
	/OYawTwwzuUUbQZ6osysdg==
X-Google-Smtp-Source: AGHT+IEidpE0OkX2O2n4hFfdJnKyo4fNvT+2jD4XWsYIQKFOko6a4ZNSvEN+75Msv3qh6bcystQK3Q==
X-Received: by 2002:a05:6808:6545:b0:3ba:d14:b839 with SMTP id fn5-20020a056808654500b003ba0d14b839mr2032679oib.104.1702359825100;
        Mon, 11 Dec 2023 21:43:45 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id so10-20020a056871818a00b001fb1f2c424fsm2934276oab.45.2023.12.11.21.43.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Dec 2023 21:43:44 -0800 (PST)
Received: (nullmailer pid 39732 invoked by uid 1000);
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
Cc: Jakub Kicinski <kuba@kernel.org>, Lorenzo Bianconi <lorenzo@kernel.org>, 
	Sean Wang <sean.wang@mediatek.com>, linux-phy@lists.infradead.org, 
	Eric Dumazet <edumazet@google.com>, Heiner Kallweit <hkallweit1@gmail.com>, 
	Alexander Couzens <lynxis@fe80.eu>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Andrew Lunn <andrew@lunn.ch>, linux-kernel@vger.kernel.org, 
	Qingfang Deng <dqfext@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, 
	Matthias Brugger <matthias.bgg@gmail.com>, Felix Fietkau <nbd@nbd.name>, Paolo Abeni <pabeni@redhat.com>, 
	Vinod Koul <vkoul@kernel.org>, Mark Lee <Mark-MC.Lee@mediatek.com>, 
	SkyLake Huang <SkyLake.Huang@mediatek.com>, netdev@vger.kernel.org, 
	Chunfeng Yun <chunfeng.yun@mediatek.com>, devicetree@vger.kernel.org, 
	"David S. Miller" <davem@davemloft.net>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Russell King <linux@armlinux.org.uk>, 
	John Crispin <john@phrozen.org>, Kishon Vijay Abraham I <kishon@kernel.org>, linux-mediatek@lists.infradead.org, 
	Conor Dooley <conor+dt@kernel.org>
In-Reply-To: <510af8550385da947e2e2516629c4fbed7fc0f64.1702352117.git.daniel@makrotopia.org>
References: <cover.1702352117.git.daniel@makrotopia.org>
 <510af8550385da947e2e2516629c4fbed7fc0f64.1702352117.git.daniel@makrotopia.org>
Message-Id: <170235981451.39631.18161764579046630601.robh@kernel.org>
Subject: Re: [RFC PATCH net-next v3 4/8] dt-bindings: net: pcs: add
 bindings for MediaTek USXGMII PCS
Date: Mon, 11 Dec 2023 23:43:35 -0600


On Tue, 12 Dec 2023 03:47:31 +0000, Daniel Golle wrote:
> MediaTek's USXGMII can be found in the MT7988 SoC. We need to access
> it in order to configure and monitor the Ethernet SerDes link in
> USXGMII, 10GBase-R and 5GBase-R mode. By including a wrapped
> legacy 1000Base-X/2500Base-X/Cisco SGMII LynxI PCS as well, those
> interface modes are also available.
> 
> Signed-off-by: Daniel Golle <daniel@makrotopia.org>
> ---
>  .../bindings/net/pcs/mediatek,usxgmii.yaml    | 60 +++++++++++++++++++
>  1 file changed, 60 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/net/pcs/mediatek,usxgmii.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:


doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/510af8550385da947e2e2516629c4fbed7fc0f64.1702352117.git.daniel@makrotopia.org

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.



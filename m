Return-Path: <devicetree+bounces-12913-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D69897DBDD8
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 17:30:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9166028122C
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 16:30:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F63D12E68;
	Mon, 30 Oct 2023 16:30:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 929B019441
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 16:30:30 +0000 (UTC)
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CFB8998;
	Mon, 30 Oct 2023 09:30:28 -0700 (PDT)
Received: by mail-ot1-f53.google.com with SMTP id 46e09a7af769-6ce2ea3a944so3121178a34.1;
        Mon, 30 Oct 2023 09:30:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698683428; x=1699288228;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=BcVNlJeyBrMVGTXIAmHAqDlrfW8jG94IoCiR838zgwA=;
        b=WEhHGNqkFZBjgOZTV1vR85oJJ1dCipmYzzgi/+R7OIVzGQIRsNDwyME4V7shUQEoDM
         hkE5uToWi8XJf7DjUEEnl/3oKwrVERmeoQTs1Iqog9pw0Wp/f/k/iiMyBtYB3Esh8HP6
         G0prT14SYYufZUeI/P3dBb1FG1eQd5cetCT6UlzIjLYrdBeNl2FtBwCrxF4BXnQv1qoo
         ujX+gIlUbUzKdhARFw0pXHu+GMPqp+AK/oJUAV/z+BJSobPGMphaRPkkyYKoYmuWcWIe
         GGXCV7KH4gPbrzRqp+Tz+YbCjk7NX45AJc37nfJybl5HGrNf0Ut2qtH+McE8OL+C4j09
         ZEsg==
X-Gm-Message-State: AOJu0YzNxEAPvjNMPDyCo/UDojfRyvFLffOlazTpGNoiTyX09QRAp9S2
	+rb3ehGlDqUDTuwmlO0rCg==
X-Google-Smtp-Source: AGHT+IEd12+3cMerzKxQ6WlNn0KGU+krjkb2chcKQwFzPAlC2OFeqZJbU4T3pYy7iCufS7tXF+6nqA==
X-Received: by 2002:a05:6830:1546:b0:6bd:c8c2:b70f with SMTP id l6-20020a056830154600b006bdc8c2b70fmr9872865otp.34.1698683428019;
        Mon, 30 Oct 2023 09:30:28 -0700 (PDT)
Received: from herring.priv ([2607:fb91:e6c7:c3eb:a6fd:69b4:aba3:6929])
        by smtp.gmail.com with ESMTPSA id l11-20020a9d708b000000b006c619f17669sm1448667otj.74.2023.10.30.09.30.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Oct 2023 09:30:27 -0700 (PDT)
Received: (nullmailer pid 1465603 invoked by uid 1000);
	Mon, 30 Oct 2023 16:30:25 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Pankaj Gupta <pankaj.gupta@nxp.com>
Cc: linux-imx@nxp.com, robh+dt@kernel.org, alexander.stein@ew.tq-group.com, s.hauer@pengutronix.de, conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, linux-kernel@vger.kernel.org, shawnguo@kernel.org, V.Sethi@nxp.com, devicetree@vger.kernel.org, clin@suse.com, festevam@gmail.com, pierre.gondois@arm.com, linux-arm-kernel@lists.infradead.org, gaurav.jain@nxp.com, kernel@pengutronix.de, davem@davemloft.net
In-Reply-To: <20231030095849.3456820-3-pankaj.gupta@nxp.com>
References: <20231030095849.3456820-1-pankaj.gupta@nxp.com>
 <20231030095849.3456820-3-pankaj.gupta@nxp.com>
Message-Id: <169868330533.1462937.712295576257900135.robh@kernel.org>
Subject: Re: [PATCH v7 02/11] dt-bindings: arm: fsl: add imx-se-fw binding
 doc
Date: Mon, 30 Oct 2023 11:30:25 -0500


On Mon, 30 Oct 2023 15:28:40 +0530, Pankaj Gupta wrote:
> The NXP's i.MX EdgeLock Enclave, a HW IP creating an embedded
> secure enclave within the SoC boundary to enable features like
> - HSM
> - SHE
> - V2X
> 
> Communicates via message unit with linux kernel. This driver
> is enables communication ensuring well defined message sequence
> protocol between Application Core and enclave's firmware.
> 
> Driver configures multiple misc-device on the MU, for multiple
> user-space applications can communicate on single MU.
> 
> It exists on some i.MX processors. e.g. i.MX8ULP, i.MX93 etc.
> 
> Signed-off-by: Pankaj Gupta <pankaj.gupta@nxp.com>
> ---
>  .../bindings/firmware/fsl,imx-se-fw.yaml      | 83 +++++++++++++++++++
>  1 file changed, 83 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/firmware/fsl,imx-se-fw.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/dma/stericsson,dma40.example.dtb: dma-controller@801c0000: sram:0: [4294967295, 4294967295] is too long
	from schema $id: http://devicetree.org/schemas/dma/stericsson,dma40.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/firmware/fsl,imx-se-fw.example.dtb: se-fw2: 'memory-region' is a required property
	from schema $id: http://devicetree.org/schemas/firmware/fsl,imx-se-fw.yaml#

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20231030095849.3456820-3-pankaj.gupta@nxp.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.



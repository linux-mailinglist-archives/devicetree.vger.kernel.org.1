Return-Path: <devicetree+bounces-30014-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CD36B8262C9
	for <lists+devicetree@lfdr.de>; Sun,  7 Jan 2024 04:15:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7FB261F21D81
	for <lists+devicetree@lfdr.de>; Sun,  7 Jan 2024 03:15:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B899610A01;
	Sun,  7 Jan 2024 03:15:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Zt3wDGPk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f44.google.com (mail-oo1-f44.google.com [209.85.161.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A41711198
	for <devicetree@vger.kernel.org>; Sun,  7 Jan 2024 03:15:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oo1-f44.google.com with SMTP id 006d021491bc7-598204406e8so624122eaf.0
        for <devicetree@vger.kernel.org>; Sat, 06 Jan 2024 19:15:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704597314; x=1705202114; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=aTSKHlVmMubC5kEPp4TOeWLAyI0E8w+0FU0X7VBdSK8=;
        b=Zt3wDGPkGtyQnLvEteR7tTQK0Qe3rz/z6nv2rXagrpQCxdpnWb9k6/h7hPBTtIQdPq
         NYWHuMhd1Hz12UzqCEyN+Teh4BlmY61M1rntq7VsNbj4xzF9aw1Nm4xoPDfm9qR0Ysk+
         4WqDaumFPaszr/hObcl/udDPzgYm4g7ePz26mdL/u+T+NsGyGs0IXk6EBTtyvwY29neS
         TlmUwdZmfwATzJx6niVlrYeDikjYns/bv/ZkZry/iJlAvfqoeeF248rvsnjBMvapu2xQ
         Acg4kQhs3uUcq2fm7nuWinMB6Y7f8cz4HT3evtkxgV8kysuufGmKRsW3HiuacnzIJ4oh
         Ak6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704597314; x=1705202114;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aTSKHlVmMubC5kEPp4TOeWLAyI0E8w+0FU0X7VBdSK8=;
        b=kUdvmTKKzS8LRNHvYecST+UAl8OBr2T3RlWHZRPZ8LWTOTssMOXeK0fQMUqh7pwmd0
         INe86P5RnySWAM4f5tYhIcK3i7XLG4ps4Q33WQ5zJMuc4w0/YjB3L03YAQibfM85WepU
         e7HD88lvKF22KatERkijeSy2xp0EvP5LtfP7wr27gKSoLgKJ5DWWSBweMOoIxl/5e7gK
         HSMkBQoJYtDUfCFyYh1OxQLrlW1L6Do0/jN8fuDaAMXnjfk5xhueV7DIsBizR528ezTA
         j9DbXiPECOet6bH+noBewkXBaAJ17XdhQts6Gm0+vnflN7afk1qFsoZhqVjPpSfjwFN3
         ufeg==
X-Gm-Message-State: AOJu0Yy59H7JUPrSHqPlOUCo1sUTMCcAw6MtiKtektyDJ9K5oxQ21PSk
	I0NILYWQopf3PZm37sG1XMap2h0g+BbJ
X-Google-Smtp-Source: AGHT+IGXkw6IM2mb9M0FTGw/gLZEPmq0TvilhKDKzYZWKSQNDUW24GLr3cdcVThMpJBJvlhJYBFffA==
X-Received: by 2002:a05:6358:7f1d:b0:175:b87:1a3c with SMTP id p29-20020a0563587f1d00b001750b871a3cmr1985625rwn.6.1704597314161;
        Sat, 06 Jan 2024 19:15:14 -0800 (PST)
Received: from thinkpad ([103.197.115.97])
        by smtp.gmail.com with ESMTPSA id t22-20020a1709028c9600b001d4b685f82fsm3716601plo.165.2024.01.06.19.15.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 Jan 2024 19:15:13 -0800 (PST)
Date: Sun, 7 Jan 2024 08:45:06 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Frank Li <Frank.Li@nxp.com>
Cc: krzysztof.kozlowski@linaro.org, bhelgaas@google.com,
	conor+dt@kernel.org, devicetree@vger.kernel.org, festevam@gmail.com,
	helgaas@kernel.org, hongxing.zhu@nxp.com, imx@lists.linux.dev,
	kernel@pengutronix.de, krzysztof.kozlowski+dt@linaro.org,
	kw@linux.com, l.stach@pengutronix.de,
	linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	lpieralisi@kernel.org, robh@kernel.org, s.hauer@pengutronix.de,
	shawnguo@kernel.org
Subject: Re: [PATCH v7 04/16] dt-bindings: imx6q-pcie: Add linux,pci-domain
 as required for iMX8MQ
Message-ID: <20240107031506.GC3416@thinkpad>
References: <20231227182727.1747435-1-Frank.Li@nxp.com>
 <20231227182727.1747435-5-Frank.Li@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231227182727.1747435-5-Frank.Li@nxp.com>

On Wed, Dec 27, 2023 at 01:27:15PM -0500, Frank Li wrote:
> iMX8MQ have two pci controllers. Adds "linux,pci-domain" as required
> proptery for iMX8MQ to indicate pci controller index.
> 

property

> This adjustment paves the way for eliminating the hardcoded check on the
> base register for acquiring the controller_id.
> 
> 	...
> 	if (dbi_base->start == IMX8MQ_PCIE2_BASE_ADDR)
> 		imx6_pcie->controller_id = 1;
> 	...
> 
> The controller_id is crucial and utilized for certain register bit
> positions. It must align precisely with the controller index in the SoC.
> An auto-incremented ID don't fit this case. The DTS or fuse configurations
> may deactivate specific PCI controllers.
> 

You cannot change the binding for the sake of driver. But you can make this
change in other way. See below...

> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
> 
> Notes:
>     Change from v5 to v6
>     - rework commit message to explain why need required and why auto increase
>     id not work
>     
>     Change from v4 to v5
>     - new patch at v5
> 
>  .../bindings/pci/fsl,imx6q-pcie-common.yaml           | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie-common.yaml b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie-common.yaml
> index d91b639ae7ae7..8f39b4e6e8491 100644
> --- a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie-common.yaml
> +++ b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie-common.yaml
> @@ -265,6 +265,17 @@ allOf:
>              - const: apps
>              - const: turnoff
>  
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - fsl,imx8mq-pcie
> +              - fsl,imx8mq-pcie-ep

"linux,pci-domain" is a generic property. So you cannot make it required only
for certain SoCs. But you can make it so for all SoCs. This way, the drivers
can also rely on it.

Now, you should get rid of the commit message about driver internals:

> This adjustment paves the way for eliminating the hardcoded check on the
> base register for acquiring the controller_id.
> 
>       ...
>       if (dbi_base->start == IMX8MQ_PCIE2_BASE_ADDR)
>               imx6_pcie->controller_id = 1;
>       ...
> 
> The controller_id is crucial and utilized for certain register bit
> positions. It must align precisely with the controller index in the SoC.
> An auto-incremented ID don't fit this case. The DTS or fuse configurations
> may deactivate specific PCI controllers.
> 

- Mani

> +    then:
> +      required:
> +        - linux,pci-domain
> +
>  additionalProperties: true
>  
>  ...
> -- 
> 2.34.1
> 

-- 
மணிவண்ணன் சதாசிவம்


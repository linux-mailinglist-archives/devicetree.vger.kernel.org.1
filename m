Return-Path: <devicetree+bounces-30022-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BA31826302
	for <lists+devicetree@lfdr.de>; Sun,  7 Jan 2024 06:34:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 673521C20E12
	for <lists+devicetree@lfdr.de>; Sun,  7 Jan 2024 05:34:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4442711CBB;
	Sun,  7 Jan 2024 05:34:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Q5eyW5Z1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00F54125AB
	for <devicetree@vger.kernel.org>; Sun,  7 Jan 2024 05:34:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-6d9bba6d773so728857b3a.1
        for <devicetree@vger.kernel.org>; Sat, 06 Jan 2024 21:34:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704605659; x=1705210459; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HqP4dggxSEGDvqw7GUe9RC6veZbTj2SMAyF3Y7WYNr4=;
        b=Q5eyW5Z1nktFrKQkZyK0seReKRcYGy13+Hjz+97Q38053HSunHzhRe264qiUTEf1k+
         seLOPuTmpO931SGUfO0S4DhgjNNH1NEWDVBg93U13zCJlcnX4BGlY0I9In6ZoML4ExW9
         S1Pr7Bg4LLH14yZjEsRND/DPLNWkcEWjGOjl8LORXAlsh3daH1dWE7DOuNk/tBv45XGX
         JDp0n1o/eBIpM8zLS+JlwEdcwCdVL3PgWCVQyBYOyX7PpDLuBuj1tY3vndT/IjnmI7j7
         SsgLxeraIcA2tcRoapTNyD9DByxU3EeXLCAXcFMY442OYDPVgehXTR3UppLi6rRVXG1+
         DL2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704605659; x=1705210459;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HqP4dggxSEGDvqw7GUe9RC6veZbTj2SMAyF3Y7WYNr4=;
        b=NCktHjNkJIvAlxHlNg9mGmnOY9zovFZRFcl5Ib3iqv1EuFbiOxIVX2Yy1aW++GfgB9
         HkPuvJwBudf0jgzY5GwK0cK+nMCKsa6KbNpjqfj96AKvsbjJcTJ34CGUPT/kKcxIlMB+
         nqEQUj17yucN7hCko+0nRu++9YpM0BaTmNz69NHpSPC/vR0KJrkTENl+QXLpGKIYs19z
         nzuAP+mvFry2kEeKWYe73oC7cS6Eur4nudceqf04KnCbLz5350sWIqXKwTofZGM1ySRs
         wOiZH7aoah3nG9/vfC57cIiy1K5TsuXwxvTRbOy9U13AaaxSFS7dhvepTVJjp0YYmOsw
         zwDQ==
X-Gm-Message-State: AOJu0Yx4GXJp+QeCTFZ+R1nqksIZ5RJLfzl5UV5mJprD6bbx4PjyvhVo
	5XSnZv+UufXesNQ/Ul9asNXmeODtts7x
X-Google-Smtp-Source: AGHT+IFoZocBFeWiLVzcqTN3OdY9HhgdnN/awWjktzfQJqf+UN8Fi6TZfXwXPnI0VGUphL3v4zXeLA==
X-Received: by 2002:a62:ae0e:0:b0:6d9:9239:2bbc with SMTP id q14-20020a62ae0e000000b006d992392bbcmr1992593pff.55.1704605659283;
        Sat, 06 Jan 2024 21:34:19 -0800 (PST)
Received: from thinkpad ([103.197.115.97])
        by smtp.gmail.com with ESMTPSA id z28-20020a62d11c000000b006daa9c80ab0sm4111219pfg.147.2024.01.06.21.34.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 Jan 2024 21:34:18 -0800 (PST)
Date: Sun, 7 Jan 2024 11:04:10 +0530
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
Subject: Re: [PATCH v7 09/16] dt-bindings: imx6q-pcie: Clean up irrationality
 clocks check
Message-ID: <20240107053410.GI3416@thinkpad>
References: <20231227182727.1747435-1-Frank.Li@nxp.com>
 <20231227182727.1747435-10-Frank.Li@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231227182727.1747435-10-Frank.Li@nxp.com>

On Wed, Dec 27, 2023 at 01:27:20PM -0500, Frank Li wrote:
> The bindings referencing this file already define these constraints for
> each of the variants, so the if not: then: is redundant.
> 
> Acked-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Frank Li <Frank.Li@nxp.com>

Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
> 
> Notes:
>     Change from v6 to v7
>     - rewrite git commit message by using simple words
>     Change from v5 to v6
>     - rewrite git commit message and explain why remove it safely.
>     - Add Rob's Ack
>     Change from v1 to v4
>     - new patch at v4
> 
>  .../bindings/pci/fsl,imx6q-pcie-common.yaml      | 16 ----------------
>  1 file changed, 16 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie-common.yaml b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie-common.yaml
> index 8f39b4e6e8491..a284a27c5e873 100644
> --- a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie-common.yaml
> +++ b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie-common.yaml
> @@ -150,22 +150,6 @@ allOf:
>              - {}
>              - const: pcie_phy
>              - const: pcie_aux
> -  - if:
> -      properties:
> -        compatible:
> -          not:
> -            contains:
> -              enum:
> -                - fsl,imx6sx-pcie
> -                - fsl,imx8mq-pcie
> -                - fsl,imx6sx-pcie-ep
> -                - fsl,imx8mq-pcie-ep
> -    then:
> -      properties:
> -        clocks:
> -          maxItems: 3
> -        clock-names:
> -          maxItems: 3
>  
>    - if:
>        properties:
> -- 
> 2.34.1
> 

-- 
மணிவண்ணன் சதாசிவம்


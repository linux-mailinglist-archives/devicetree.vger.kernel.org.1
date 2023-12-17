Return-Path: <devicetree+bounces-26291-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 215D981613B
	for <lists+devicetree@lfdr.de>; Sun, 17 Dec 2023 18:35:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 531311C20D0C
	for <lists+devicetree@lfdr.de>; Sun, 17 Dec 2023 17:35:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F56846524;
	Sun, 17 Dec 2023 17:35:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QqWpmyGo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f48.google.com (mail-io1-f48.google.com [209.85.166.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC09746B8E
	for <devicetree@vger.kernel.org>; Sun, 17 Dec 2023 17:34:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-io1-f48.google.com with SMTP id ca18e2360f4ac-7b435966249so112911339f.0
        for <devicetree@vger.kernel.org>; Sun, 17 Dec 2023 09:34:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702834497; x=1703439297; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=CpKSkkBtYtil8YsODktdMUzC93N2+NEa5cKCVj6f1J8=;
        b=QqWpmyGoSUQZLL4ML1lNm6swJbEWUpG+Yfly3K9D+ZbZAAOcD+oqx932l1gI6jXE1h
         /y/XbAlWqdWiq81AQ6ZTjBJSVL8vwy5ItS510HKAmcFJ//zUw00IBa47QVxAxakstGbG
         KWjNgGmeLkZ+FtNTrBeCzelWQ0kKck1sIbV6ETgtR2h7Y8LJ92w5XXxXK06q0uEXtwGY
         i3SLjfYQB9mRu/1lsNwMIRiI7+zfSmqgf8BVeNd3xhF7GOan1SHvgdVJIzU4b21Y306U
         GbxOaFQIqv4lYYK94B54js5bhuEoqAmonLuxRuQ49YmPZEZGic7bMWXOP+bwx5zDCcOo
         AYig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702834497; x=1703439297;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CpKSkkBtYtil8YsODktdMUzC93N2+NEa5cKCVj6f1J8=;
        b=g7a2UvHVaRmQTyJKYMSgS0hFD2/3xlxxVOcyi1FmzUyZMhRoVjYwHWCXGwb3GCsu1q
         KIw7db7iZOyIwXf+RY36JuLAJS6uX4LuPbCApx5OXaf6vXVg6rQnPKGCufNZAanul8Rx
         53T5v6ggJ4lT0A28YYv2CdV41Tey+1ldg3SePS8lyBq0CxeoQH7G3IeiJIZMy4UDy/ss
         iCHoeCUzol4I7uT3ZVS1Pvaa5jfZWlrj6V9ZzXxVw4ihlzlu/xuEAiaq+NrrOJzFsSWH
         vHaEK5JorPNkT/O9wqMyP3VL+8nPKmsF3HoKYx81X1zWcZ7MpMAB96Q1GxtYcB1Lwf/F
         TLfw==
X-Gm-Message-State: AOJu0YyXHFzmKuwa9Y7u5EmpCDsWTCWJcrlcAgTHy7WQL7J2Q04tAWvJ
	RhGw9CKjTVEG03BuGv8NUsnhbZHtVeLFWniaUw==
X-Google-Smtp-Source: AGHT+IGHWdluX+d13fjmLz/ABghE6j6WwAmobyNjIu6qplVK/PaeUQ8SB784FrCWR5EvBvm3cuqloQ==
X-Received: by 2002:a92:c54f:0:b0:35f:9d17:846e with SMTP id a15-20020a92c54f000000b0035f9d17846emr4967548ilj.31.1702834496885;
        Sun, 17 Dec 2023 09:34:56 -0800 (PST)
Received: from thinkpad ([103.28.246.178])
        by smtp.gmail.com with ESMTPSA id b21-20020a170902d31500b001d35516262esm1303557plc.158.2023.12.17.09.34.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Dec 2023 09:34:56 -0800 (PST)
Date: Sun, 17 Dec 2023 23:04:49 +0530
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
Subject: Re: [PATCH v4 03/15] PCI: imx6: Simplify reset handling by using by
 using *_FLAG_HAS_*_RESET
Message-ID: <20231217173449.GE6748@thinkpad>
References: <20231217051210.754832-1-Frank.Li@nxp.com>
 <20231217051210.754832-4-Frank.Li@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231217051210.754832-4-Frank.Li@nxp.com>

On Sun, Dec 17, 2023 at 12:11:58AM -0500, Frank Li wrote:
> Refactors the reset handling logic in the imx6 PCI driver by adding
> IMX6_PCIE_FLAG_HAS_*_RESET bitmask define for drvdata::flags.
> 
> The drvdata::flags and a bitmask ensures a cleaner and more scalable
> switch-case structure for handling reset.
> 
> Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
> Signed-off-by: Frank Li <Frank.Li@nxp.com>

One nitpick below. With that fixed,

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

> ---
> 
> Notes:
>     Change from v2 to v3:
>     - add Philipp's Reviewed-by tag
>     Change from v1 to v2:
>     - remove condition check before reset_control_(de)assert() because it is
>       none ops if a NULL pointer pass down.
>     - still keep condition check at probe to help identify dts file mismatch
>       problem.
>     
>     Change from v1 to v2:
>     - remove condition check before reset_control_(de)assert() because it is
>       none ops if a NULL pointer pass down.
>     - still keep condition check at probe to help identify dts file mismatch
>       problem.
> 
>  drivers/pci/controller/dwc/pci-imx6.c | 108 ++++++++++----------------
>  1 file changed, 41 insertions(+), 67 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pci-imx6.c b/drivers/pci/controller/dwc/pci-imx6.c
> index 91ba26a4b4c3d..c1fb38a2ebeb6 100644
> --- a/drivers/pci/controller/dwc/pci-imx6.c
> +++ b/drivers/pci/controller/dwc/pci-imx6.c

[...]

> @@ -1441,31 +1407,39 @@ static const struct imx6_pcie_drvdata drvdata[] = {
>  	},
>  	[IMX7D] = {
>  		.variant = IMX7D,
> -		.flags = IMX6_PCIE_FLAG_SUPPORTS_SUSPEND,
> +		.flags = IMX6_PCIE_FLAG_SUPPORTS_SUSPEND |
> +			 IMX6_PCIE_FLAG_HAS_APP_RESET |
> +			 IMX6_PCIE_FLAG_HAS_PHY_RESET,
>  		.gpr = "fsl,imx7d-iomuxc-gpr",
>  		.clk_names = {IMX6_CLKS_NO_PHYDRV},
>  	},
>  	[IMX8MQ] = {
>  		.variant = IMX8MQ,
> +		.flags = IMX6_PCIE_FLAG_HAS_APP_RESET |
> +			 IMX6_PCIE_FLAG_HAS_PHY_RESET,
>  		.gpr = "fsl,imx8mq-iomuxc-gpr",
>  		.clk_names = {IMX6_CLKS_NO_PHYDRV, "pcie_aux"},
>  	},
>  	[IMX8MM] = {
>  		.variant = IMX8MM,
>  		.flags = IMX6_PCIE_FLAG_SUPPORTS_SUSPEND |
> -			 IMX6_PCIE_FLAG_HAS_PHY,
> +			 IMX6_PCIE_FLAG_HAS_PHY |
> +			 IMX6_PCIE_FLAG_HAS_APP_RESET,
>  		.gpr = "fsl,imx8mm-iomuxc-gpr",
>  		.clk_names = {IMX6_CLKS_COMMON, "pcie_aux"},
>  	},
>  	[IMX8MP] = {
>  		.variant = IMX8MP,
>  		.flags = IMX6_PCIE_FLAG_SUPPORTS_SUSPEND |
> -			 IMX6_PCIE_FLAG_HAS_PHY,
> +			 IMX6_PCIE_FLAG_HAS_PHY |
> +			 IMX6_PCIE_FLAG_HAS_APP_RESET,
>  		.gpr = "fsl,imx8mp-iomuxc-gpr",
>  		.clk_names = {IMX6_CLKS_COMMON, "pcie_aux"},
>  	},
>  	[IMX8MQ_EP] = {
>  		.variant = IMX8MQ_EP,
> +		.flags = IMX6_PCIE_FLAG_HAS_PHY |

This change is not part of this patch.

- Mani

-- 
மணிவண்ணன் சதாசிவம்


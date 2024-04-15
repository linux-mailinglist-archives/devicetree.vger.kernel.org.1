Return-Path: <devicetree+bounces-59530-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BA1F8A5BFE
	for <lists+devicetree@lfdr.de>; Mon, 15 Apr 2024 22:05:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 523D21F229D9
	for <lists+devicetree@lfdr.de>; Mon, 15 Apr 2024 20:05:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90530156669;
	Mon, 15 Apr 2024 20:05:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uC4jN2nQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208F8156653
	for <devicetree@vger.kernel.org>; Mon, 15 Apr 2024 20:05:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713211506; cv=none; b=a844sBXh2Pw6RY6l2sZSwngHs1ku83TViON78JV4Lui0ki8z/qfccrOoFfkn9f8llEQnmNE3gwTj0sHpdc+UrlO8x/GoI/gfPbQOybkHCMLn1hHp20KShAcovqeINCgZgk5/RuLOZjM/624a/tGjv4kJ6u6H4I4+VxGJQCyE6wY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713211506; c=relaxed/simple;
	bh=nV/5Zy5i9dFykq8+Srtuq9aQoYYGfbts8T748v9Xj+U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=k3mBqRLpqlh2M+Sg3DtasKHJsnZ5LotVF0etozDUedm4PR2ysF+etD9XpO5RcXsI+gcl94eLRt6H0yAtjfQiYOQmThyOZHapt/pq8qoRE2QblBPJd6xhO7JPW4ColULxgisuksPA4uUsTRN4sGNKlDd7lArJVTyoEAKs/99D7xQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uC4jN2nQ; arc=none smtp.client-ip=209.85.219.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f174.google.com with SMTP id 3f1490d57ef6-dcbc6a6808fso3464617276.2
        for <devicetree@vger.kernel.org>; Mon, 15 Apr 2024 13:05:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713211504; x=1713816304; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=pVkD3jsw1msmtxQF4rlyHtOM/X3ToEYL670E+U4G0es=;
        b=uC4jN2nQ1hgGZSSPU6ZZQ5nvKsHXISZFT9X0mUHfKxj9AfKJcn5MnuULTFs8OSpzKx
         UYNfr8tPyhl8Y83NlrTMIZ6gviJKVQnac0eJuiLcI8xuwxPAk3+Yz7Iq4Uo7Tm3WQFLL
         QHbABbJoeu6Tqt/nwGEJNFYYCWM4WJGdK4IfHyZ5b0218BIKE9HIE8KOD0gv3vem52gk
         KxKd4vP14H7RyPdVf60yqSGrSdw3aJ7jFPbN6TxY2iWzQcVde0VL/HHurvh2rHgZGP1m
         njB/KZeppUj9WueUe/9M4SK0GY10t9aVOkHBS9yyIY7HdDxWp5JOzcWeS5L6h3EnSRFW
         4s2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713211504; x=1713816304;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pVkD3jsw1msmtxQF4rlyHtOM/X3ToEYL670E+U4G0es=;
        b=rPiRzpZNIGoG4vqhPzhn6Fa3LVY0eMIb1L039eVFdaIykyRxwcpjWzlEoHmrTXHYIh
         XLYhm//0hGrNrT1dZJ6BKHQosmfUJS4zGSTNj8FNZcBEak4Pw68lCL7Gm0MZif5kgxFk
         lvoRjPec1eDVvoIq37tBtIBHFBEjqMHRV0g1OTeAAHl41cVyeKn0SqFuNY9QAAF6lv5Y
         MpvLsNpLGJGiUMTSe1ZqBUV6dpeHiLhqEadmU3gxLWF2FVhwz7LJTC8pSQ2lS3d/3Qg1
         lZ2KpNue3lsnZh89yS31jEPEHSjUDjqB8MnBklH0czx3QSRNkaqhIZvZygoSSZJVujEK
         c1hQ==
X-Forwarded-Encrypted: i=1; AJvYcCVh6IBMtMK+K8+Jg6qWovBn2i9LfQKqMWl3VJl+BBLnx73lArWaNA3q+bXmp09PM83ypjK/QW2X3kabIaMFyxdhKNl1YeCNonu+cw==
X-Gm-Message-State: AOJu0YwM4UrLG+GvF6phwIiJy1BUzfS5HArpNgn0Nggoz/z9cKNzEcwB
	JkLr+Eep8nKlS+IETnnujwAksr2ps1x76p/JlkGEe1LxpB7SFjj9qGufPM7wjQP5mBZ7Eya776H
	WUNjjrrW9OZLqrOFfFhrq1zg1T4AudvPLt2O+qA==
X-Google-Smtp-Source: AGHT+IF3Mae4SNhDlErp9j9yGTNWys2//EJwilymG79SRLAHm+Fa1djrn4pEPWZZFliwe11Jn8vFW2dJFT9lgX1FVfM=
X-Received: by 2002:a25:1942:0:b0:dcf:bc86:1020 with SMTP id
 63-20020a251942000000b00dcfbc861020mr10239771ybz.53.1713211504061; Mon, 15
 Apr 2024 13:05:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240415182052.374494-1-mr.nuke.me@gmail.com> <20240415182052.374494-5-mr.nuke.me@gmail.com>
In-Reply-To: <20240415182052.374494-5-mr.nuke.me@gmail.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 15 Apr 2024 23:04:53 +0300
Message-ID: <CAA8EJpqKWJBqDUacE0xTLzxny32ZTStiRgXsd2LBD=Hou_CRBw@mail.gmail.com>
Subject: Re: [PATCH v3 4/7] PCI: qcom: Add support for IPQ9574
To: Alexandru Gagniuc <mr.nuke.me@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 15 Apr 2024 at 21:22, Alexandru Gagniuc <mr.nuke.me@gmail.com> wrote:
>
> Add support for the PCIe on IPQ9574. The main difference from ipq6018
> is that the "iface" clock is not necessarry. Add a special case in
> qcom_pcie_get_resources_2_9_0() to handle this.
>
> Signed-off-by: Alexandru Gagniuc <mr.nuke.me@gmail.com>
> ---
>  drivers/pci/controller/dwc/pcie-qcom.c | 13 +++++++++----
>  1 file changed, 9 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
> index 14772edcf0d3..10560d6d6336 100644
> --- a/drivers/pci/controller/dwc/pcie-qcom.c
> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
> @@ -1101,15 +1101,19 @@ static int qcom_pcie_get_resources_2_9_0(struct qcom_pcie *pcie)
>         struct qcom_pcie_resources_2_9_0 *res = &pcie->res.v2_9_0;
>         struct dw_pcie *pci = pcie->pci;
>         struct device *dev = pci->dev;
> -       int ret;
> +       int ret, num_clks = ARRAY_SIZE(res->clks) - 1;
>
> -       res->clks[0].id = "iface";
> +       res->clks[0].id = "rchng";
>         res->clks[1].id = "axi_m";
>         res->clks[2].id = "axi_s";
>         res->clks[3].id = "axi_bridge";
> -       res->clks[4].id = "rchng";
>
> -       ret = devm_clk_bulk_get(dev, ARRAY_SIZE(res->clks), res->clks);
> +       if (!of_device_is_compatible(dev->of_node, "qcom,pcie-ipq9574")) {
> +               res->clks[4].id = "iface";
> +               num_clks++;
> +       }
> +
> +       ret = devm_clk_bulk_get(dev, num_clks, res->clks);

Just use devm_clk_bulk_get_optional() here.

>         if (ret < 0)
>                 return ret;
>
> @@ -1664,6 +1668,7 @@ static const struct of_device_id qcom_pcie_match[] = {
>         { .compatible = "qcom,pcie-ipq8064-v2", .data = &cfg_2_1_0 },
>         { .compatible = "qcom,pcie-ipq8074", .data = &cfg_2_3_3 },
>         { .compatible = "qcom,pcie-ipq8074-gen3", .data = &cfg_2_9_0 },
> +       { .compatible = "qcom,pcie-ipq9574", .data = &cfg_2_9_0 },
>         { .compatible = "qcom,pcie-msm8996", .data = &cfg_2_3_2 },
>         { .compatible = "qcom,pcie-qcs404", .data = &cfg_2_4_0 },
>         { .compatible = "qcom,pcie-sa8540p", .data = &cfg_sc8280xp },
> --
> 2.40.1
>
>


-- 
With best wishes
Dmitry


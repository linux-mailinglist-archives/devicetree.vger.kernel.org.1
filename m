Return-Path: <devicetree+bounces-31671-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5764D82C2BB
	for <lists+devicetree@lfdr.de>; Fri, 12 Jan 2024 16:31:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 704A41C2199D
	for <lists+devicetree@lfdr.de>; Fri, 12 Jan 2024 15:31:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2064C6EB62;
	Fri, 12 Jan 2024 15:30:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zoBfz6mI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com [209.85.219.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53B3D6EB52
	for <devicetree@vger.kernel.org>; Fri, 12 Jan 2024 15:30:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f169.google.com with SMTP id 3f1490d57ef6-dbd715ed145so5058565276.1
        for <devicetree@vger.kernel.org>; Fri, 12 Jan 2024 07:30:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705073445; x=1705678245; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=W0RtRDrceU7o1/Nmf4Y60b3s7Mg3JBbPSPUT/mkqdjI=;
        b=zoBfz6mIZ8nBXLXiGlyixnJeGwNOvPuheFXJg63/X+54jrvaPaZduZX5j0PAWWttKr
         Q7SJSGic69VNalICrRTJS+4h27RLXpC2r0tCAIkOL71H/O/AfbYU+QGuV4rYIGioJkpl
         HNAdvlrNgiQbJOt/diYY/o2F+5qIaH1OB68XlJD91WrilZ97vI9Czc9DzfEVOmw2oGKF
         adP8M6zu6JCtjfwKYhnovu8MRBDKF/A7vdAoNoKsAbZJeiIz1j2PEYDihhANyPWZ//H9
         ZJJveyLmGg482SP4JwB1LCWNMttmdLinnLZiORcRvdZd5sORuuyZ7D3Y4bevq0LOcWdK
         r14g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705073445; x=1705678245;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=W0RtRDrceU7o1/Nmf4Y60b3s7Mg3JBbPSPUT/mkqdjI=;
        b=rLHorLaUghbxOl8tByDilNrxMXxMpcEQx3DzVLjsn9G3kMHUD4n7cbCekeP44xdbfk
         i3Dr12OzXcKcF674+iyzSFxrR1tsUf/nB1IQxrA+l2f04tcs4rgRw/ppOeIQ5XSaDWJw
         XZAUDzwPlBwQIgO86qY6lIyesD5RUZ+JsUhs5UYdO0p5bnBYGmYuJdDbFfaNYkapA+gV
         QpFarGlImsMoEdw+F2XOXCIIy+tB/zodxIZMzgxXGUQ47E/zSZQNNpHGNZ1lfdZOrvQ0
         4irIyGpQ0vhScl261JuHE3PMrVL/MLmuP4jN6w55q/Y/oLniMfrd0LtD33z2/houeplA
         6dSQ==
X-Gm-Message-State: AOJu0Ywhx8AXPOWy/Df614J48vp4pJ5n9N8VFelYH1qiGJd1RYHOcWA9
	d3wPwZNfYD+k09LbP7nOi2hsNRt6dmqMFaDBEuPKhlDkhoHz7Q==
X-Google-Smtp-Source: AGHT+IGd+HrHde3PrBt3psbmPgR8SfgIV1PLGbXKC1YmERVo1a12lVyslnBSzBQk9DZz/aZb/qcmxBtBOXowjBMO0Ww=
X-Received: by 2002:a05:6902:543:b0:dbd:7292:1f2d with SMTP id
 z3-20020a056902054300b00dbd72921f2dmr917925ybs.44.1705073444706; Fri, 12 Jan
 2024 07:30:44 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240112-opp_support-v6-0-77bbf7d0cc37@quicinc.com> <20240112-opp_support-v6-3-77bbf7d0cc37@quicinc.com>
In-Reply-To: <20240112-opp_support-v6-3-77bbf7d0cc37@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 12 Jan 2024 17:30:32 +0200
Message-ID: <CAA8EJprq1s42hkbXXKtXTGnyYePQN98t+gmFoHDOGMWJH4Ot3g@mail.gmail.com>
Subject: Re: [PATCH v6 3/6] PCI: qcom: Add missing icc bandwidth vote for cpu
 to PCIe path
To: Krishna chaitanya chundru <quic_krichai@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Johan Hovold <johan+linaro@kernel.org>, Brian Masney <bmasney@redhat.com>, 
	Georgi Djakov <djakov@kernel.org>, linux-arm-msm@vger.kernel.org, vireshk@kernel.org, 
	quic_vbadigan@quicinc.com, quic_skananth@quicinc.com, 
	quic_nitegupt@quicinc.com, linux-pci@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 12 Jan 2024 at 16:24, Krishna chaitanya chundru
<quic_krichai@quicinc.com> wrote:
>
> CPU-PCIe path consits for registers PCIe BAR space, config space.
> As there is less access on this path compared to pcie to mem path
> add minimum vote i.e GEN1x1 bandwidth always.

Is this BW amount a real requirement or just a random number? I mean,
the register space in my opinion consumes much less bandwidth compared
to Gen1 memory access.

>
> In suspend remove the cpu vote after register space access is done.
>
> Fixes: c4860af88d0c ("PCI: qcom: Add basic interconnect support")
> cc: stable@vger.kernel.org
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> ---
>  drivers/pci/controller/dwc/pcie-qcom.c | 31 +++++++++++++++++++++++++++++--
>  1 file changed, 29 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
> index 11c80555d975..035953f0b6d8 100644
> --- a/drivers/pci/controller/dwc/pcie-qcom.c
> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
> @@ -240,6 +240,7 @@ struct qcom_pcie {
>         struct phy *phy;
>         struct gpio_desc *reset;
>         struct icc_path *icc_mem;
> +       struct icc_path *icc_cpu;
>         const struct qcom_pcie_cfg *cfg;
>         struct dentry *debugfs;
>         bool suspended;
> @@ -1372,6 +1373,9 @@ static int qcom_pcie_icc_init(struct qcom_pcie *pcie)
>         if (IS_ERR(pcie->icc_mem))
>                 return PTR_ERR(pcie->icc_mem);
>
> +       pcie->icc_cpu = devm_of_icc_get(pci->dev, "cpu-pcie");
> +       if (IS_ERR(pcie->icc_cpu))
> +               return PTR_ERR(pcie->icc_cpu);
>         /*
>          * Some Qualcomm platforms require interconnect bandwidth constraints
>          * to be set before enabling interconnect clocks.
> @@ -1381,7 +1385,18 @@ static int qcom_pcie_icc_init(struct qcom_pcie *pcie)
>          */
>         ret = icc_set_bw(pcie->icc_mem, 0, QCOM_PCIE_LINK_SPEED_TO_BW(1));
>         if (ret) {
> -               dev_err(pci->dev, "failed to set interconnect bandwidth: %d\n",
> +               dev_err(pci->dev, "failed to set interconnect bandwidth for pcie-mem: %d\n",
> +                       ret);
> +               return ret;
> +       }
> +
> +       /*
> +        * The config space, BAR space and registers goes through cpu-pcie path.
> +        * Set peak bandwidth to single-lane Gen1 for this path all the time.
> +        */
> +       ret = icc_set_bw(pcie->icc_cpu, 0, QCOM_PCIE_LINK_SPEED_TO_BW(1));
> +       if (ret) {
> +               dev_err(pci->dev, "failed to set interconnect bandwidth for cpu-pcie: %d\n",
>                         ret);
>                 return ret;
>         }
> @@ -1573,7 +1588,7 @@ static int qcom_pcie_suspend_noirq(struct device *dev)
>          */
>         ret = icc_set_bw(pcie->icc_mem, 0, kBps_to_icc(1));
>         if (ret) {
> -               dev_err(dev, "Failed to set interconnect bandwidth: %d\n", ret);
> +               dev_err(dev, "Failed to set interconnect bandwidth for pcie-mem: %d\n", ret);
>                 return ret;
>         }
>
> @@ -1597,6 +1612,12 @@ static int qcom_pcie_suspend_noirq(struct device *dev)
>                 pcie->suspended = true;
>         }
>
> +       /* Remove cpu path vote after all the register access is done */
> +       ret = icc_set_bw(pcie->icc_cpu, 0, 0);
> +       if (ret) {
> +               dev_err(dev, "failed to set interconnect bandwidth for cpu-pcie: %d\n", ret);
> +               return ret;
> +       }
>         return 0;
>  }
>
> @@ -1605,6 +1626,12 @@ static int qcom_pcie_resume_noirq(struct device *dev)
>         struct qcom_pcie *pcie = dev_get_drvdata(dev);
>         int ret;
>
> +       ret = icc_set_bw(pcie->icc_cpu, 0, QCOM_PCIE_LINK_SPEED_TO_BW(1));
> +       if (ret) {
> +               dev_err(dev, "failed to set interconnect bandwidth for cpu-pcie: %d\n", ret);
> +               return ret;
> +       }
> +
>         if (pcie->suspended) {
>                 ret = qcom_pcie_host_init(&pcie->pci->pp);
>                 if (ret)
>
> --
> 2.42.0
>
>


-- 
With best wishes
Dmitry


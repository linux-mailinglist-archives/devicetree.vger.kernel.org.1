Return-Path: <devicetree+bounces-61500-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 487098ACF71
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 16:32:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F35EA284285
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 14:32:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C37F315218B;
	Mon, 22 Apr 2024 14:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JREs8Q4M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378AC152192
	for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 14:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713796314; cv=none; b=IKNexVbXztFoUHyCVDVmoO6lyWyxqfJbAUZ4hgc7qsUSf4f5t2Zx1JKgd+jR0atRy3mywSS1AsaeB1d9LaNiLDe+bi3c6Hbv+VomUhoKp2OsBeGPwSHmUgRFiSDzbmW40yYSNcv8XRTe2ZO/FHs3MxyLg+MDpPXJByV1pW9fftc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713796314; c=relaxed/simple;
	bh=Ygh4m5cCpdrw4QNncMQcx2VxNsPyT145KZ8wuVy33pk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=r+W267nmE3CxilpFHXPdJ1n5dtCkmLdu1SHv3LfmqWlFxhvR5/EgIB6zizPUgowaxaw5UetGxemuQ7KAZIy2TdmPGTM05iieoO0CllaY4TwDX5xaESyn5L+sLYz1aUATU4tMpcg3uCeOqdUglr5N+pzXEyl3/omjhjzTceG4/Zs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JREs8Q4M; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-6ece8991654so4255235b3a.3
        for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 07:31:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713796312; x=1714401112; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=I6gA3DduJ/5QN/9c3l1EeoTlW606PB+epDSKgeExDug=;
        b=JREs8Q4MVaau6uRCIWjOyu0XuSncFGs2GV4Qh37aPbHKEi+qtsqJwRdL3uV8EfWkOj
         up9zORgSYNkVFrhSOWafgpENUDJSsx2zS11bK9JGBZU3Tt73D2lQ21huFmm1iBs9Gw4l
         WhQ0mKwd6eQvNfDof1W71ZFM/FvpVHihCGPnnNXZ2Jg3VV8AUJ1B3L95srdLu602wjN3
         rb556ePbG3Z3R64pIxTdBUJPA97PNdK13AF9soALoQCdUOQ9pm6Gf/xDVhuGPSxSyc0P
         OTglbY+EBAf6VrOy0OavmR+3PD3bC4/vRylkByPA1rkBtrxcDEr0vCYRi8ttgTh7eZhz
         w2dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713796312; x=1714401112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=I6gA3DduJ/5QN/9c3l1EeoTlW606PB+epDSKgeExDug=;
        b=lmKyEtOl/JB0GHSidTspE7AjNnAX54eEzFZaiX8zXiRaWBPePPMYL6aLJZ7dwC05K/
         ZjFSoYULOrgcGSXGRSjpSNWjpFO48wo6IISt8xb7ZYc8le2u7flDhLi3x/4akme2uhb3
         Lp1+q2PH+m3rCOuVWj/Xf9ApsuR8Evc4WE9gLMfONawa9PE5fPa7zO+mbix0doAT1M1/
         8WrWnUgUiWhKQempAO3ug/HRoMQCDrx87fFIpKj7qqZ5XTaXYlosSCw5W8Td96BCsSl6
         tPBBjRDOM1C9yPdOp3lSdyGPrklFHtKEkvLiXKrKSxa90nepV/cSL+dyCgDQBRGPqS6Z
         KAvQ==
X-Forwarded-Encrypted: i=1; AJvYcCVpb+7CFH0itf9j8MKPZuKji6XH4BluDnIhlEjomfgeiDRVw4URz52AAxa5Gkq+F59n4HWdUNoGlL/eXm/Uvb6FeOER5ZGL2DRRcw==
X-Gm-Message-State: AOJu0YxWETt/32HVXTcYhs9CjOv9lWtFER5jp+HABAY8tv3BPhoFayvu
	VgBG5UMtRI3ezdwQwbu4ivnTH2pKGIj+1Skyb0Kvj9PzGEPx389HmfprU+nGFQ==
X-Google-Smtp-Source: AGHT+IGN2yX1hZi9NqmP5nGDbTnPt2JRBgZs/+VkK0pGcrgVLali0lkvBAV10nf0CRDwS9U0erEjfw==
X-Received: by 2002:a05:6a20:734d:b0:1aa:755f:1746 with SMTP id v13-20020a056a20734d00b001aa755f1746mr15651557pzc.22.1713796312334;
        Mon, 22 Apr 2024 07:31:52 -0700 (PDT)
Received: from thinkpad ([120.60.70.118])
        by smtp.gmail.com with ESMTPSA id f33-20020a056a000b2100b006ecee611c05sm7904647pfu.182.2024.04.22.07.31.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Apr 2024 07:31:51 -0700 (PDT)
Date: Mon, 22 Apr 2024 20:01:43 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krishna chaitanya chundru <quic_krichai@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>, johan+linaro@kernel.org,
	bmasney@redhat.com, djakov@kernel.org,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	vireshk@kernel.org, quic_vbadigan@quicinc.com,
	quic_skananth@quicinc.com, quic_nitegupt@quicinc.com,
	quic_parass@quicinc.com, krzysztof.kozlowski@linaro.org,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: Re: [PATCH v10 2/6] PCI: qcom: Add ICC bandwidth vote for CPU to
 PCIe path
Message-ID: <20240422143143.GD9775@thinkpad>
References: <20240409-opp_support-v10-0-1956e6be343f@quicinc.com>
 <20240409-opp_support-v10-2-1956e6be343f@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240409-opp_support-v10-2-1956e6be343f@quicinc.com>

On Tue, Apr 09, 2024 at 03:43:20PM +0530, Krishna chaitanya chundru wrote:
> To access PCIe registers of the host controller and endpoint PCIe
> BAR space, config space the CPU-PCIe ICC (interconnect) path should

'To access the host controller registers and endpoint BAR/Config space,'

> be voted otherwise it may lead to NoC (Network on chip) timeout.
> We are surviving because of other driver voting for this path.
> 
> As there is less access on this path compared to PCIe to mem path
> add minimum vote i.e 1KBps bandwidth always which is sufficient enough
> to keep the path active and is recommended by HW team.
> 
> In suspend to ram case there can be some DBI access. Except in suspend
> to ram case disable CPU-PCIe ICC path after register space access
> is done.
> 

During S2RAM (Suspend-to-RAM), DBI access can happen very late (while disabling
the boot CPU). So do not disable the CPU-PCIe interconnect path during S2RAM as
that may lead to NoC error.

> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> ---
>  drivers/pci/controller/dwc/pcie-qcom.c | 43 ++++++++++++++++++++++++++++++----
>  1 file changed, 39 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
> index 14772edcf0d3..e53422171c01 100644
> --- a/drivers/pci/controller/dwc/pcie-qcom.c
> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
> @@ -245,6 +245,7 @@ struct qcom_pcie {
>  	struct phy *phy;
>  	struct gpio_desc *reset;
>  	struct icc_path *icc_mem;
> +	struct icc_path *icc_cpu;
>  	const struct qcom_pcie_cfg *cfg;
>  	struct dentry *debugfs;
>  	bool suspended;
> @@ -1409,6 +1410,9 @@ static int qcom_pcie_icc_init(struct qcom_pcie *pcie)
>  	if (IS_ERR(pcie->icc_mem))
>  		return PTR_ERR(pcie->icc_mem);
>  
> +	pcie->icc_cpu = devm_of_icc_get(pci->dev, "cpu-pcie");
> +	if (IS_ERR(pcie->icc_cpu))
> +		return PTR_ERR(pcie->icc_cpu);
>  	/*
>  	 * Some Qualcomm platforms require interconnect bandwidth constraints
>  	 * to be set before enabling interconnect clocks.
> @@ -1418,7 +1422,20 @@ static int qcom_pcie_icc_init(struct qcom_pcie *pcie)
>  	 */
>  	ret = icc_set_bw(pcie->icc_mem, 0, QCOM_PCIE_LINK_SPEED_TO_BW(1));
>  	if (ret) {
> -		dev_err(pci->dev, "failed to set interconnect bandwidth: %d\n",
> +		dev_err(pci->dev, "Failed to set interconnect bandwidth for PCIe-MEM: %d\n",

'Failed to set bandwidth for PCIe-MEM interconnect path: %d\n'

> +			ret);
> +		return ret;
> +	}
> +
> +	/*
> +	 * Since the CPU-PCIe path is only used for activities like register
> +	 * access of the host controller and endpoint Config/BAR space access,
> +	 * HW team has recommended to use a  minimal bandwidth of 1KBps just to

Single space after 'a'

> +	 * keep the path active.
> +	 */
> +	ret = icc_set_bw(pcie->icc_cpu, 0, kBps_to_icc(1));
> +	if (ret) {
> +		dev_err(pci->dev, "Failed to set interconnect bandwidth for CPU-PCIe: %d\n",

'Failed to set bandwidth for CPU-PCIe interconnect path: %d\n'

>  			ret);
>  		return ret;
>  	}
> @@ -1448,7 +1465,7 @@ static void qcom_pcie_icc_update(struct qcom_pcie *pcie)
>  
>  	ret = icc_set_bw(pcie->icc_mem, 0, width * QCOM_PCIE_LINK_SPEED_TO_BW(speed));
>  	if (ret) {
> -		dev_err(pci->dev, "failed to set interconnect bandwidth: %d\n",
> +		dev_err(pci->dev, "Failed to set interconnect bandwidth for PCIe-MEM: %d\n",

'Failed to set bandwidth for PCIe-MEM interconnect path: %d\n'

>  			ret);
>  	}
>  }
> @@ -1610,7 +1627,7 @@ static int qcom_pcie_suspend_noirq(struct device *dev)
>  	 */
>  	ret = icc_set_bw(pcie->icc_mem, 0, kBps_to_icc(1));
>  	if (ret) {
> -		dev_err(dev, "Failed to set interconnect bandwidth: %d\n", ret);
> +		dev_err(dev, "Failed to set interconnect bandwidth for PCIe-MEM: %d\n", ret);

'Failed to set bandwidth for PCIe-MEM interconnect path: %d\n'

>  		return ret;
>  	}
>  
> @@ -1634,7 +1651,17 @@ static int qcom_pcie_suspend_noirq(struct device *dev)
>  		pcie->suspended = true;
>  	}
>  
> -	return 0;
> +	/*
> +	 * In suspend to ram case there are DBI access, except in suspend to ram case
> +	 * remove the vote for CPU-PCIe path now, since at this point onwards,
> +	 * no register access will be done.
> +	 */

	/*
	 * Only disable CPU-PCIe interconnect path if the suspend is non-S2RAM.
	 * Because on some platforms, DBI access can happen very late during the
	 * S2RAM and a non-active CPU-PCIe interconnect path may lead to NoC
	 * error.
	 */

> +	if (pm_suspend_target_state != PM_SUSPEND_MEM) {
> +		ret = icc_disable(pcie->icc_cpu);
> +		if (ret)
> +			dev_err(dev, "Failed to disable Interconnect path of CPU-PCIe: %d\n", ret);

'Failed to disable CPU-PCIe interconnect path: %d\n'

> +	}
> +	return ret;
>  }
>  
>  static int qcom_pcie_resume_noirq(struct device *dev)
> @@ -1642,6 +1669,14 @@ static int qcom_pcie_resume_noirq(struct device *dev)
>  	struct qcom_pcie *pcie = dev_get_drvdata(dev);
>  	int ret;
>  
> +	if (pm_suspend_target_state != PM_SUSPEND_MEM) {
> +		ret = icc_enable(pcie->icc_cpu);
> +		if (ret) {
> +			dev_err(dev, "Failed to enable Interconnect path of CPU-PCIe: %d\n", ret);

'Failed to enable CPU-PCIe interconnect path: %d\n'

- Mani

-- 
மணிவண்ணன் சதாசிவம்


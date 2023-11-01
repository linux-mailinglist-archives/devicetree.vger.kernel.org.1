Return-Path: <devicetree+bounces-13359-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 03C4B7DDCA7
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 07:31:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B9B3C2810FB
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 06:31:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2ABA4139C;
	Wed,  1 Nov 2023 06:31:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lDCNle0s"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C449568E
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 06:31:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 290B6C433C8;
	Wed,  1 Nov 2023 06:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698820261;
	bh=Tf1WPErRBjYtbexKIcjo7Q56h19eb/MEk0UqAcX+kSA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lDCNle0sCyh4rlmoh9NwgJwrhorc2EbSBIBmIxnZsdYIMmMiVbh4gKjdYdGm1Nitt
	 LMAVpVY9evvjDs+FXTeK2ZU7W2KqoWeM8Wjv34FeN6pY7ZGYLnpQSxWpbve2nJwMdT
	 aZJPWyTZqqeiyYJOY2XK+dh5aFWjDKeLjV15kR3dZ2TU/6KXyjdG/m1JPI7e9Q2Wh4
	 EiMyWuTe3dgrUTRXb7eqoJlIpxItwGSHoUD9U5yXeiQK2uB5uJWC1/uC7rZ3JzgyFu
	 AaBwFvCdwO/+LLlqQv2zs61/L8EU/Nf9wKOs7I+V3RXE/bzfc8q9qgxok8/7r33k2i
	 gcudMdIgQe0FA==
Date: Wed, 1 Nov 2023 12:00:41 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Krishna chaitanya chundru <quic_krichai@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	vireshk@kernel.org, nm@ti.com, sboyd@kernel.org, mani@kernel.org,
	lpieralisi@kernel.org, kw@linux.com, robh@kernel.org,
	bhelgaas@google.com, rafael@kernel.org,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org, quic_vbadigan@quicinc.com,
	quic_nitegupt@quicinc.com, quic_skananth@quicinc.com,
	quic_ramkri@quicinc.com, quic_parass@quicinc.com
Subject: Re: [PATCH v5 4/5] PCI: qcom: Return error from
 'qcom_pcie_icc_update'
Message-ID: <20231101063041.GG2897@thinkpad>
References: <1694066433-8677-1-git-send-email-quic_krichai@quicinc.com>
 <1694066433-8677-5-git-send-email-quic_krichai@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1694066433-8677-5-git-send-email-quic_krichai@quicinc.com>

On Thu, Sep 07, 2023 at 11:30:32AM +0530, Krishna chaitanya chundru wrote:
> Return error from the function if the icc path is specified in the
> dt and icc_set_bw failed or link is not up.
> 
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> ---
>  drivers/pci/controller/dwc/pcie-qcom.c | 23 ++++++++++++-----------
>  1 file changed, 12 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
> index e2f2940..ca6350b 100644
> --- a/drivers/pci/controller/dwc/pcie-qcom.c
> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
> @@ -1357,22 +1357,21 @@ static int qcom_pcie_icc_init(struct qcom_pcie *pcie)
>  	return 0;
>  }
>  
> -static void qcom_pcie_icc_update(struct qcom_pcie *pcie)
> +static int qcom_pcie_icc_update(struct qcom_pcie *pcie)
>  {
>  	struct dw_pcie *pci = pcie->pci;
>  	u32 offset, status, bw;
>  	int speed, width;
> -	int ret;
>  
>  	if (!pcie->icc_mem)
> -		return;
> +		return 0;
>  
>  	offset = dw_pcie_find_capability(pci, PCI_CAP_ID_EXP);
>  	status = readw(pci->dbi_base + offset + PCI_EXP_LNKSTA);
>  
>  	/* Only update constraints if link is up. */
>  	if (!(status & PCI_EXP_LNKSTA_DLLLA))
> -		return;
> +		return -ENODEV;

Why would you want to fail if the link is not up? This will break the driver if
device shows up later.

- Mani

>  
>  	speed = FIELD_GET(PCI_EXP_LNKSTA_CLS, status);
>  	width = FIELD_GET(PCI_EXP_LNKSTA_NLW, status);
> @@ -1392,11 +1391,7 @@ static void qcom_pcie_icc_update(struct qcom_pcie *pcie)
>  		break;
>  	}
>  
> -	ret = icc_set_bw(pcie->icc_mem, 0, width * bw);
> -	if (ret) {
> -		dev_err(pci->dev, "failed to set interconnect bandwidth: %d\n",
> -			ret);
> -	}
> +	return icc_set_bw(pcie->icc_mem, 0, width * bw);
>  }
>  
>  static int qcom_pcie_link_transition_count(struct seq_file *s, void *data)
> @@ -1529,7 +1524,10 @@ static int qcom_pcie_probe(struct platform_device *pdev)
>  		goto err_phy_exit;
>  	}
>  
> -	qcom_pcie_icc_update(pcie);
> +	ret = qcom_pcie_icc_update(pcie);
> +	if (ret)
> +		dev_err(dev, "failed to update interconnect bandwidth: %d\n",
> +			ret);
>  
>  	if (pcie->mhi)
>  		qcom_pcie_init_debugfs(pcie);
> @@ -1596,7 +1594,10 @@ static int qcom_pcie_resume_noirq(struct device *dev)
>  		pcie->suspended = false;
>  	}
>  
> -	qcom_pcie_icc_update(pcie);
> +	ret = qcom_pcie_icc_update(pcie);
> +	if (ret)
> +		dev_err(dev, "failed to update interconnect bandwidth: %d\n",
> +			ret);
>  
>  	return 0;
>  }
> -- 
> 2.7.4
> 

-- 
மணிவண்ணன் சதாசிவம்


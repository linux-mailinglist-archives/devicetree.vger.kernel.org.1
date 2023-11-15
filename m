Return-Path: <devicetree+bounces-13348-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 59FBC7DDC38
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 06:20:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0DFAD28137B
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 05:20:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 232761869;
	Wed,  1 Nov 2023 05:20:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PT76iVfu"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 003FE7F;
	Wed,  1 Nov 2023 05:20:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 03BF7C433C7;
	Wed,  1 Nov 2023 05:19:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698816007;
	bh=IR8T015GjC2W1ZHwd6MH/vDDHExF6SvoDshzi+eVuYY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PT76iVfuRLaaMW2JFu5mmEn8P9JpLjoFNwzbqBWHecWDq/N9KB09bvG4z6+eNaD5V
	 u9S9MPTkqwPu+X1+eHPj7Pgo35yk/zfhHh+a+69Q204JQq1YTnbdu6q3qPLyQqUFOq
	 woECxfMac5Nfyv3IK+Fk7/PH4mWGvB8NCMIKvzOekY8Gna48GZE0tklOcYsIg2YzAc
	 xDyZSnD4EC0UG109TFUiylJdlBr4ks+uu9hh/d+9S/TRm1NOmkiVSDIbf5oHjkEohZ
	 LJv1vM1mncf3CXzJpgTPCuPdYyvDXrskWjgBZ46q0ChHluEyr/phclg45QekXB+QP/
	 U2JbRW5XnJWyw==
Date: Wed, 1 Nov 2023 10:49:47 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Mrinmay Sarkar <quic_msarkar@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	konrad.dybcio@linaro.org, quic_shazhuss@quicinc.com,
	quic_nitegupt@quicinc.com, quic_ramkri@quicinc.com,
	quic_nayiluri@quicinc.com, dmitry.baryshkov@linaro.org,
	robh@kernel.org, quic_krichai@quicinc.com,
	quic_vbadigan@quicinc.com, quic_parass@quicinc.com,
	quic_schintav@quicinc.com, quic_shijose@quicinc.com,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-pci@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	mhi@lists.linux.dev
Subject: Re: [PATCH v6 2/4] PCI: qcom-ep: Add support for SA8775P SOC
Message-ID: <20231101051947.GE2897@thinkpad>
References: <1698729108-27356-1-git-send-email-quic_msarkar@quicinc.com>
 <1698729108-27356-3-git-send-email-quic_msarkar@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1698729108-27356-3-git-send-email-quic_msarkar@quicinc.com>

On Tue, Oct 31, 2023 at 10:41:46AM +0530, Mrinmay Sarkar wrote:

"s/SOC/SoC" in subject.

> Add support for SA8775P SoC to the Qualcomm PCIe Endpoint Controller
> driver. Adding new compatible string as it has different set of clocks
> compare to other SOCs.

"compared to ther SoCs."

> 
> Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
>  drivers/pci/controller/dwc/pcie-qcom-ep.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-qcom-ep.c b/drivers/pci/controller/dwc/pcie-qcom-ep.c
> index 9e58f05..3a53d97 100644
> --- a/drivers/pci/controller/dwc/pcie-qcom-ep.c
> +++ b/drivers/pci/controller/dwc/pcie-qcom-ep.c
> @@ -875,6 +875,7 @@ static void qcom_pcie_ep_remove(struct platform_device *pdev)
>  }
>  
>  static const struct of_device_id qcom_pcie_ep_match[] = {
> +	{ .compatible = "qcom,sa8775p-pcie-ep", },
>  	{ .compatible = "qcom,sdx55-pcie-ep", },
>  	{ .compatible = "qcom,sm8450-pcie-ep", },
>  	{ }
> -- 
> 2.7.4
> 

-- 
மணிவண்ணன் சதாசிவம்


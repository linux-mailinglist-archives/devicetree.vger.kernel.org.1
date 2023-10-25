Return-Path: <devicetree+bounces-11629-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E1A47D641B
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:53:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CB69DB20D6E
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 07:53:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EA6C1BDF3;
	Wed, 25 Oct 2023 07:53:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e6kq3+WI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D93619461;
	Wed, 25 Oct 2023 07:53:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC7AEC433C7;
	Wed, 25 Oct 2023 07:53:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698220408;
	bh=n7geoxZluBkHjmKnM8s/P2+FzK4sT5UeQFEuduBhZmw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=e6kq3+WINzCpXHPmzwRaIy8oZqnFEdP4qiZRJOfhu+DTqpNrF0gj1ewL4kKPDb8YU
	 9C6ZV6myHtv2eYbE80UZFwkgs0Ix4SDZ/gGqNVok0oteF8/e9zo6Qcjw9JMAPH6HCZ
	 HEy+CoEPZttoRrATy6kHg4o7Ew1oQT/NfhmxltfOLp7OzDWl942b9y46xMyf4JGj0o
	 /hGUUoenoli7WMUkFCYlKfFcEf3BTS6VMH9qmz4h+OFymg4HCy1oQTaECcoxyCl+J1
	 +uaJmA+Pt8H++XDmZDd2443w1c0leTOPPSfEv5QMtS8lXRDE/2f5A7gXhLrre6J/1D
	 j3jzSWFpJLsWA==
Date: Wed, 25 Oct 2023 13:23:17 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Mrinmay Sarkar <quic_msarkar@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	konrad.dybcio@linaro.org, quic_shazhuss@quicinc.com,
	quic_nitegupt@quicinc.com, quic_ramkri@quicinc.com,
	quic_nayiluri@quicinc.com, dmitry.baryshkov@linaro.org,
	robh@kernel.org, quic_krichai@quicinc.com,
	quic_vbadigan@quicinc.com, quic_parass@quicinc.com,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, mhi@lists.linux.dev,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 2/5] PCI: qcom-ep: Add support for SA8775P SOC
Message-ID: <20231025075317.GC3648@thinkpad>
References: <1697715430-30820-1-git-send-email-quic_msarkar@quicinc.com>
 <1697715430-30820-3-git-send-email-quic_msarkar@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1697715430-30820-3-git-send-email-quic_msarkar@quicinc.com>

On Thu, Oct 19, 2023 at 05:07:07PM +0530, Mrinmay Sarkar wrote:
> Add support for SA8775P SoC to the Qualcomm PCIe Endpoint Controller
> driver. There will be some change specific to SA8775P so adding new
> compatible string.
> 

What are those specific changes?

- Mani

> Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>
> ---
>  drivers/pci/controller/dwc/pcie-qcom-ep.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-qcom-ep.c b/drivers/pci/controller/dwc/pcie-qcom-ep.c
> index 32c8d9e..4c01c34 100644
> --- a/drivers/pci/controller/dwc/pcie-qcom-ep.c
> +++ b/drivers/pci/controller/dwc/pcie-qcom-ep.c
> @@ -858,6 +858,7 @@ static void qcom_pcie_ep_remove(struct platform_device *pdev)
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


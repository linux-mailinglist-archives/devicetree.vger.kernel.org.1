Return-Path: <devicetree+bounces-13266-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E1E17DD388
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 17:58:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 708C2B20E2C
	for <lists+devicetree@lfdr.de>; Tue, 31 Oct 2023 16:58:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BED62030B;
	Tue, 31 Oct 2023 16:58:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b6PHJWwM"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F22C200D4
	for <devicetree@vger.kernel.org>; Tue, 31 Oct 2023 16:58:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CC2DEC433C8;
	Tue, 31 Oct 2023 16:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698771487;
	bh=SDYNmQ31DRGQ6K6cvQJhakeVosYz6EJUiy1qhYajt4g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=b6PHJWwML+z6Tp2ZxssUi6DpmmRgo2PUKJPfl+MxUB2da+3TPLHydgekhWXyukmcM
	 Xi9r5ZZ+gQg/I7Gi+iOZCjRVTLa9pBWQrl794nSIjSWmCK+zn+Hef4ehuLlxhAeH1V
	 PxNLmzRa3taxJNVAPihEepzCGIx/UjRVQ511sORubx+s/IBr9jlcBgPOYBaLaqQG2c
	 0EBB1vnJluGEd/EAnecikr6pBWApK1t/BxLdKyfwkGmo8fg0b4uJuPpx7qFbRvFqVH
	 IAK2Dg6whcrjkQK1rYAxY76jYVZROYDediL391AMopkKrmHrRLdhuSB7rzmkcO70vA
	 7+Avoub7lvA8w==
Date: Tue, 31 Oct 2023 22:27:47 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Mrinmay Sarkar <quic_msarkar@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	konrad.dybcio@linaro.org, mani@kernel.org, robh+dt@kernel.org,
	quic_shazhuss@quicinc.com, quic_nitegupt@quicinc.com,
	quic_ramkri@quicinc.com, quic_nayiluri@quicinc.com,
	dmitry.baryshkov@linaro.org, robh@kernel.org,
	quic_krichai@quicinc.com, quic_vbadigan@quicinc.com,
	quic_parass@quicinc.com, quic_schintav@quicinc.com,
	quic_shijjose@quicinc.com,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org
Subject: Re: [PATCH v1 0/3] arm64: qcom: sa8775p: add cache coherency support
 for SA8775P
Message-ID: <20231031165747.GF11778@thinkpad>
References: <1698767186-5046-1-git-send-email-quic_msarkar@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1698767186-5046-1-git-send-email-quic_msarkar@quicinc.com>

On Tue, Oct 31, 2023 at 09:16:23PM +0530, Mrinmay Sarkar wrote:
> This series is to enable cache snooping logic in both RC and EP
> driver and add the "dma-coherent" property in dtsi to support
> cache coherency in SA8775P.
> 

You need to explain why cache snooping needs to be enabled _only_ on SA8775P and
not on other platforms, here and also in patch description.

Cover letter is not just meant for describing the changes you are submitting,
you should also put as much info required for the reviewers/maintainers to get
motivation behind the series.

- Mani

> To verify this series we required [1]
> 
> [1] https://lore.kernel.org/all/1698729108-27356-1-git-send-email-quic_msarkar@quicinc.com/
> 
> Mrinmay Sarkar (3):
>   PCI: qcom: Enable cache coherency for SA8775P RC
>   PCI: qcom-ep: Enable cache coherency for SA8775P EP
>   arm64: dts: qcom: sa8775p: Mark PCIe controller as cache coherent
> 
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi     |  2 ++
>  drivers/pci/controller/dwc/pcie-qcom-ep.c |  8 ++++++++
>  drivers/pci/controller/dwc/pcie-qcom.c    | 11 +++++++++++
>  3 files changed, 21 insertions(+)
> 
> -- 
> 2.7.4
> 

-- 
மணிவண்ணன் சதாசிவம்


Return-Path: <devicetree+bounces-9007-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 717257CB27B
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 20:26:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F37C5B20DAD
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 18:26:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C492B3399F;
	Mon, 16 Oct 2023 18:26:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fh01ajxU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A431D31A70;
	Mon, 16 Oct 2023 18:26:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 386FCC433C7;
	Mon, 16 Oct 2023 18:26:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697480801;
	bh=sYde3Du+hMyzjINIU0GO0sOIiLkg2vzuKHXl0Ldl/Jk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Fh01ajxUZQBeYms+rkVQqnO1UDhLQ4+eKVrNHAU5tB68LoQkj71WkpvOtP2sWcAos
	 nzzCM7/jLzpIzpGHkSZUHQPxVfxhrQsI6dl4QZZ81UZXjMeKVauBacEd/qEAk9LEw4
	 +nQM3k017sPvYucr22REAEPbFwr6HeFthxB9fIBQ9lE93leWHrJ1yZKS96pPj4ae36
	 TWF+ne6sd5gM6WCsUMKEtaFzwnDE1xcQqJophO5xt/Kne1v2thj/j5mjenotp2XWV0
	 /AxuZ/p5h3Jb+/nunaBXCv7GSBtfCkxkX/ym3oADRc8X7UjEpQ8x11a3iWxdSM98/L
	 IxLFtblYVqs8g==
Date: Mon, 16 Oct 2023 11:30:27 -0700
From: Bjorn Andersson <andersson@kernel.org>
To: Mrinmay Sarkar <quic_msarkar@quicinc.com>
Cc: agross@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, konrad.dybcio@linaro.org, mani@kernel.org, 
	quic_shazhuss@quicinc.com, quic_nitegupt@quicinc.com, quic_ramkri@quicinc.com, 
	quic_nayiluri@quicinc.com, dmitry.baryshkov@linaro.org, robh@kernel.org, 
	quic_krichai@quicinc.com, quic_vbadigan@quicinc.com, quic_parass@quicinc.com, 
	Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, linux-pci@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, mhi@lists.linux.dev, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 4/4] arm64: dts: qcom: sa8775p: Add ep pcie0
 controller node
Message-ID: <atvjq653nodb65i3u5m53ko4brdhlroqjqkixolyq3k5xtz3u4@ryhqlq3g6bu4>
References: <1697023109-23671-1-git-send-email-quic_msarkar@quicinc.com>
 <1697023109-23671-5-git-send-email-quic_msarkar@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1697023109-23671-5-git-send-email-quic_msarkar@quicinc.com>

On Wed, Oct 11, 2023 at 04:48:29PM +0530, Mrinmay Sarkar wrote:
> Add ep pcie dtsi node for pcie0 controller found on sa8775p platform.
> it supports x2 link width.
> 
> Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi | 48 +++++++++++++++++++++++++++++++++++
>  1 file changed, 48 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> index b6a93b1..485f626 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> @@ -2608,4 +2608,52 @@
>  
>  		status = "disabled";
>  	};
> +
> +	pcie0_ep: pcie-ep@1c00000 {

Please move this node up, to keep the nodes sorted by address (then by
name, and label).

Regards,
Bjorn


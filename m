Return-Path: <devicetree+bounces-11669-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 82F3F7D652D
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 10:32:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3ACED281C3C
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 08:32:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA5DA168CB;
	Wed, 25 Oct 2023 08:32:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ptuouP19"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE14F1CF99
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 08:32:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EBF53C433C9;
	Wed, 25 Oct 2023 08:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698222723;
	bh=3EvtUJ5jSxxg99ZPimDtfxabqbVmNmAQ52h/5Pp/l0k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ptuouP19h4Fln6k46PfSSy9lKo8ckzwutWDpiQMyK/hlbgrztNjE/GaxKGYo2qgSt
	 fBtcIGypHyXkDyZ0oFCTNQ+dX1H/RYvYsioOOiT+8qqLcLfyXN5A/ZZczKsNurRkQr
	 mvfeYB0/7qMEDHhe+9zMHh1AcFfdf3/BmXZmNoGsVMoSy17JUpLdg+q4AvpM4809mH
	 XrY5Wef8yqLCCC8AWWEazUSJHnZEuTfAQGkt1848RNVhncp/GASku4DXhFDpLmTUyF
	 1xjLz+i6BF+HAQCCUiSqC9LLc/3CwCstmiVrxDTgN63dSR6Qt1vs14ulKNlmGJVN3c
	 lM9nGW2gZXwWQ==
Date: Wed, 25 Oct 2023 14:01:56 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Jassi Brar <jassisinghbrar@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: mailbox: qcom-ipcc: document the SM8650
 Inter-Processor Communication Controller
Message-ID: <20231025083156.GH3648@thinkpad>
References: <20231025-topic-sm8650-upstream-bindings-ipcc-v2-1-b1a4670ed6fa@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231025-topic-sm8650-upstream-bindings-ipcc-v2-1-b1a4670ed6fa@linaro.org>

On Wed, Oct 25, 2023 at 10:25:47AM +0200, Neil Armstrong wrote:
> Document the Inter-Processor Communication Controller on the SM8650 Platform.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
> For convenience, a regularly refreshed linux-next based git tree containing
> all the SM8650 related work is available at:
> https://git.codelinaro.org/neil.armstrong/linux/-/tree/topic/sm85650/upstream/integ
> ---
> Changes in v2:
> - Fixed typo in subject
> - Link to v1: https://lore.kernel.org/r/20231025-topic-sm8650-upstream-bindings-ipcc-v1-1-acca4318d06e@linaro.org
> ---
>  Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml b/Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml
> index cc6f66eccc84..a35f9483dc71 100644
> --- a/Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml
> +++ b/Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml
> @@ -34,6 +34,7 @@ properties:
>            - qcom,sm8350-ipcc
>            - qcom,sm8450-ipcc
>            - qcom,sm8550-ipcc
> +          - qcom,sm8650-ipcc
>        - const: qcom,ipcc
>  
>    reg:
> 
> ---
> base-commit: fe1998aa935b44ef873193c0772c43bce74f17dc
> change-id: 20231016-topic-sm8650-upstream-bindings-ipcc-0b4e1924ee28
> 
> Best regards,
> -- 
> Neil Armstrong <neil.armstrong@linaro.org>
> 

-- 
மணிவண்ணன் சதாசிவம்


Return-Path: <devicetree+bounces-11668-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EBD57D6526
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 10:31:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DD55E281CD5
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 08:31:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 800CB1CFBF;
	Wed, 25 Oct 2023 08:31:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gl/9nXAJ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6143B1CFAF
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 08:31:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA6C7C433C7;
	Wed, 25 Oct 2023 08:31:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698222697;
	bh=YnqE7G0jNqwWoVJ1R/3UU77XIIf6urohHotWyxgl7FI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Gl/9nXAJzi6hbbygDvAcV4nojlKBDSyOZnDFrD6E5719Y+A+clTsA6wAFZbIsByur
	 zgRPRSy+1rFnLrvmFLHerl7neCFzdJIoJQvP3ON/yGkSpMRALBel8K5pM9Hl6O9av9
	 xxe1Hli2J3FH3qCJ7K7L5bx9ELpqo5NfQhdrbGO0MMALC7reHhYqOiJ3pc2Xoq9Wgn
	 LgRHDVpPxlCVpScGWv9n+JZ+lf06iMEABYoF6sMyeRsA+nf9II45wbOOV8SSbzcC17
	 ZND/VIiRdAXE4VDdxH5Qaf592CCu9cRm/YIyfQwD+B0QG3BWJq/8Ech2KMGeTgQWJ8
	 yjjY1fgzJx0sw==
Date: Wed, 25 Oct 2023 14:01:30 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: PCI: qcom: document the SM8650 PCIe
 Controller
Message-ID: <20231025083130.GG3648@thinkpad>
References: <20231025-topic-sm8650-upstream-bindings-pcie-v1-1-0e3d6f0c5827@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231025-topic-sm8650-upstream-bindings-pcie-v1-1-0e3d6f0c5827@linaro.org>

On Wed, Oct 25, 2023 at 09:27:14AM +0200, Neil Armstrong wrote:
> Document the PCIe Controller on the SM8650 platform by using the
> SM8550 bindings as a fallback.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
> For convenience, a regularly refreshed linux-next based git tree containing
> all the SM8650 related work is available at:
> https://git.codelinaro.org/neil.armstrong/linux/-/tree/topic/sm85650/upstream/integ
> ---
>  Documentation/devicetree/bindings/pci/qcom,pcie.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> index eadba38171e1..af537732ded6 100644
> --- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> @@ -41,6 +41,10 @@ properties:
>            - qcom,pcie-sm8450-pcie0
>            - qcom,pcie-sm8450-pcie1
>            - qcom,pcie-sm8550
> +      - items:
> +          - enum:
> +              - qcom,pcie-sm8650
> +          - const: qcom,pcie-sm8550
>        - items:
>            - const: qcom,pcie-msm8998
>            - const: qcom,pcie-msm8996
> 
> ---
> base-commit: fe1998aa935b44ef873193c0772c43bce74f17dc
> change-id: 20231016-topic-sm8650-upstream-bindings-pcie-56e90536c258
> 
> Best regards,
> -- 
> Neil Armstrong <neil.armstrong@linaro.org>
> 

-- 
மணிவண்ணன் சதாசிவம்


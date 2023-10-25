Return-Path: <devicetree+bounces-11640-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6208B7D6474
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 10:05:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1C22B281AC0
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 08:05:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABE621C68A;
	Wed, 25 Oct 2023 08:05:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R4t5GB9O"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CA701C686
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 08:05:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E3B3EC433C7;
	Wed, 25 Oct 2023 08:05:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698221130;
	bh=roeLa5qj7aPFDrKeHEe1DXZrXXZ8cR1PxbHoRqCXgCs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=R4t5GB9OKL4sFNxpDHM21I5dGGvZpIO4PNcn5rRxhLFo1Mtfi3oeX4UkhjXXARdzh
	 5r8zb504Zl4QT5l5lVKECQThi6557fc3L4u9vtoPEBjRArb2BGkzDYe7RyDMZjoNAj
	 80b/isuYR5A0VccLt3Out1CxxNbdwl8vJFH9oWwuQXUcx+154tC6BfcZMCarbNBZmi
	 zLgrqNlYCvgL7Urrr3eBJNhYfGo7T92V7UTOQzu0Y3lWB34QF0B9YmqgnxZ5jPKSQk
	 4UJmWWrAdCfTpHuZuAXilUMq717LfH43BSt+t42v2W5TQXQCuCQfaOK93xBQhZetJW
	 xYKMVOjosZhcw==
Date: Wed, 25 Oct 2023 13:35:22 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-scsi@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: ufs: qcom-ufs: document the SM8560 UFS
 Controller
Message-ID: <20231025080522.GF3648@thinkpad>
References: <20231025-topic-sm8650-upstream-bindings-ufs-v1-1-a355e3556531@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231025-topic-sm8650-upstream-bindings-ufs-v1-1-a355e3556531@linaro.org>

On Wed, Oct 25, 2023 at 09:30:48AM +0200, Neil Armstrong wrote:
> Document the UFS Controller on the SM8650 Platform.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
> For convenience, a regularly refreshed linux-next based git tree containing
> all the SM8650 related work is available at:
> https://git.codelinaro.org/neil.armstrong/linux/-/tree/topic/sm85650/upstream/integ
> ---
>  Documentation/devicetree/bindings/ufs/qcom,ufs.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
> index 462ead5a1cec..0d136c047b8b 100644
> --- a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
> +++ b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
> @@ -36,6 +36,7 @@ properties:
>            - qcom,sm8350-ufshc
>            - qcom,sm8450-ufshc
>            - qcom,sm8550-ufshc
> +          - qcom,sm8650-ufshc
>        - const: qcom,ufshc
>        - const: jedec,ufs-2.0
>  
> 
> ---
> base-commit: fe1998aa935b44ef873193c0772c43bce74f17dc
> change-id: 20231016-topic-sm8650-upstream-bindings-ufs-d03cf52d57d5
> 
> Best regards,
> -- 
> Neil Armstrong <neil.armstrong@linaro.org>
> 

-- 
மணிவண்ணன் சதாசிவம்


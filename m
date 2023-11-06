Return-Path: <devicetree+bounces-14188-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4287B7E298A
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 17:16:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F16D82810BE
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 16:16:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1EAE28E3E;
	Mon,  6 Nov 2023 16:16:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IaICYrSq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4F2321342
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 16:16:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D7CFC433C7;
	Mon,  6 Nov 2023 16:16:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699287411;
	bh=16ffoNada2LaV7CDttzlTUVhLa0Ue+1TEG7i9493z1I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IaICYrSqjK01MFXcgweRO26KTYY3CzLc5+DNsGOVsMbD5/nUsU5tAFDspLPfbTeT4
	 qbFfsV0RFHpb1Cd1AB4cuZI9FsqgO0IFwi7ArQSQmlrNqdEjCeq95Auv3/xLzQUeIN
	 DoqDoXvVsXttEXmmXD9+fSYomlXMEtYxne6MDPg4tPwYcNeCAzsyGMPc6zXh3EEnC7
	 hFGcPg518ZKnBYFUaHsyFWyL/O/x9mxFcx0JmZCoxvfPJ4iNRyZm7ybI+SrwIIwwWz
	 6w6666acBWt8lkyycGE/F1qup7KyQ3EK0Vtkx5a9ZBU5w0wLxWG8BMCdH7jEcaazrE
	 Y6Jwe5OdIma8A==
Date: Mon, 6 Nov 2023 08:20:52 -0800
From: Bjorn Andersson <andersson@kernel.org>
To: Krishna chaitanya chundru <quic_krichai@quicinc.com>
Cc: Andy Gross <agross@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, quic_vbadigan@quicinc.com, quic_ramkri@quicinc.com, 
	quic_nitegupt@quicinc.com, quic_skananth@quicinc.com, quic_vpernami@quicinc.com, 
	quic_parass@quicinc.com
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom,qmp: Add PCIe
 qcom,refclk-always-on property
Message-ID: <wt47mf6vx5fx5ddghwb4aljfjqftkplsc2zieays2xwjhkxag3@plromlkrbyxz>
References: <20231106-refclk_always_on-v1-0-17a7fd8b532b@quicinc.com>
 <20231106-refclk_always_on-v1-1-17a7fd8b532b@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231106-refclk_always_on-v1-1-17a7fd8b532b@quicinc.com>

On Mon, Nov 06, 2023 at 05:22:34PM +0530, Krishna chaitanya chundru wrote:
> Document qcom,refclk-always-on property which is needed in some platforms
> to supply refclk even in PCIe low power states.
> 
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> ---
>  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml          | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> index 2c3d6553a7ba..9daf0556ed3b 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> @@ -93,6 +93,11 @@ properties:
>    "#phy-cells":
>      const: 0
>  
> +  qcom,refclk-always-on:
> +    type: boolean
> +    description: A boolean property indicating the refclk is
> +      always on even in Low power states (optional)

As with the driver patch, please improve this description (and use your
80 characters).


It would also be preferable to capture (or at least indicate) the
problem that this flash is working around - so that future readers
doesn't need to go look in the commit history for the phy driver to
figure out what this is doing.

Regards,
Bjorn

> +
>  required:
>    - compatible
>    - reg
> 
> -- 
> 2.42.0
> 


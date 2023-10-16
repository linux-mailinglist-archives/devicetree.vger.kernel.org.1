Return-Path: <devicetree+bounces-8732-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 184C87C9D77
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 04:38:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A7B6CB20B9D
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 02:38:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D0D917D0;
	Mon, 16 Oct 2023 02:38:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dtn3KESJ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 491F6620
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 02:38:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AAD4EC433C8;
	Mon, 16 Oct 2023 02:38:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697423889;
	bh=T5WnSXdJB4MfvIyXC6DMczWEEeOsQwjAqV+LW90t/N0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dtn3KESJWI9dONtkVY8FlFqQ4tdVJUCm+gflh+pExFPd/eVSqVo6wf9rJlDxftjm9
	 DHGVv4e5rBdK7FK+5dbQTMiJ0If/VqefgwPvsok1xbtLJuunQf2fN8t+zhFzkCd731
	 kg4WcM9iVPw5+6QVaryHWu7R/iiFi7BUG5tia14c1dCHsaX1ds7+FBUPHeuWdvulMq
	 nBWmdju1cV8PbKxDBrdSLpYCUA2AICJnyVrtjHYcQ3puuLd2Sr1urw4RM5U+9/uP4S
	 JG46vNM4YLBY8qIHeXs4vOdiIa/oI6zSMp1Lgi337sVXTiqmL6/SdAE8S9y1kG67Mt
	 cM6662M0URl9A==
Date: Sun, 15 Oct 2023 19:41:57 -0700
From: Bjorn Andersson <andersson@kernel.org>
To: Om Prakash Singh <quic_omprsing@quicinc.com>
Cc: neil.armstrong@linaro.org, konrad.dybcio@linaro.org, agross@kernel.org, 
	conor+dt@kernel.org, davem@davemloft.net, devicetree@vger.kernel.org, 
	herbert@gondor.apana.org.au, krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org, 
	linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org, marijn.suijten@somainline.org, 
	robh+dt@kernel.org, vkoul@kernel.org
Subject: Re: [PATCH V1 1/4] dt-bindings: crypto: qcom,prng: document SA8775P
Message-ID: <hgtbdvbhoxwib4ywkd6pdxpcywgudb2b23tvlmaxaggeqgsghg@s6qetpw755rw>
References: <20231015193901.2344590-1-quic_omprsing@quicinc.com>
 <20231015193901.2344590-2-quic_omprsing@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231015193901.2344590-2-quic_omprsing@quicinc.com>

On Mon, Oct 16, 2023 at 01:08:58AM +0530, Om Prakash Singh wrote:
> Document SA8775P compatible for the True Random Number Generator.
> 
> Signed-off-by: Om Prakash Singh <quic_omprsing@quicinc.com>
> ---
>  Documentation/devicetree/bindings/crypto/qcom,prng.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/crypto/qcom,prng.yaml b/Documentation/devicetree/bindings/crypto/qcom,prng.yaml
> index 633993f801c6..85e6b1c199f5 100644
> --- a/Documentation/devicetree/bindings/crypto/qcom,prng.yaml
> +++ b/Documentation/devicetree/bindings/crypto/qcom,prng.yaml
> @@ -19,6 +19,7 @@ properties:
>            - enum:
>                - qcom,sm8450-trng
>                - qcom,sm8550-trng
> +              - qcom,sa8775p-trng

Please maintain the alphabetical sort order of entries like this.


On the two DeviceTree patches, we keep nodes sorted by address, followed
by node name, and then label. And we keep the address padded to 8 digits
to make it easier to keep them sorted. I've corrected that and picked
the 2 (i.e. all 4) DeviceTree patches.

So please fix above, and resubmit the two binding updates from this
series (and you can submit that as one change, no need to keep as
separate patches).

Regards,
Bjorn

>            - const: qcom,trng
>  
>    reg:
> -- 
> 2.25.1
> 


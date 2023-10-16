Return-Path: <devicetree+bounces-9005-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 89DEC7CB272
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 20:24:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5EF1DB20D55
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 18:24:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 686CB33997;
	Mon, 16 Oct 2023 18:24:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NY/8pAvp"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B5F031A9F
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 18:24:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 96BC8C433C7;
	Mon, 16 Oct 2023 18:24:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697480648;
	bh=GBLmmoSGCW+tXYLIivo4TbRnr1P9ngnwrM2YJKL/bTg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NY/8pAvpcvypSxypkIyxpEKPZ2SjHbhFGQ7w8hgRGa6P7HMv4guIeH3axU4oXf32l
	 d8/Y4VDpRmoSxbEOwlETjLdRsI4p19cYlw5bkkdz8Znp8B7YZ4/2SDvaTaEvfeQVyM
	 IbJz56sAcc5WwG6WSwpAvdWiZM5OEY5NQztADQAwjiCOh3F3PvAVB9aqNH4kycx2fS
	 sH0ZlX6VXq7PkCm9SJWkAEaVEmT+NaBSNHiGr6V6wV5jUtysv3vt0GQkQJjiqsJpt+
	 bcIj7Mp3upbMBI8s7K/b25pGompYe/FBdN03b4M22Er6sLHlmkWBgD1uq1Dd5bbGYS
	 H6lOV1MRqhn0g==
Date: Mon, 16 Oct 2023 11:27:55 -0700
From: Bjorn Andersson <andersson@kernel.org>
To: Om Prakash Singh <quic_omprsing@quicinc.com>
Cc: neil.armstrong@linaro.org, konrad.dybcio@linaro.org, agross@kernel.org, 
	conor+dt@kernel.org, davem@davemloft.net, devicetree@vger.kernel.org, 
	herbert@gondor.apana.org.au, krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org, 
	linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org, marijn.suijten@somainline.org, 
	robh+dt@kernel.org, vkoul@kernel.org
Subject: Re: [PATCH V2] dt-bindings: crypto: qcom,prng: document SA8775P and
 SC7280
Message-ID: <gud3cwxig4plnayez3guchyx27thi722gcl6bvdzvv23p3y3av@37kyt5nmx6sg>
References: <20231016143428.2992168-1-quic_omprsing@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231016143428.2992168-1-quic_omprsing@quicinc.com>

On Mon, Oct 16, 2023 at 08:04:28PM +0530, Om Prakash Singh wrote:
> Document SA8775P and SC7280 compatible for the True Random Number
> Generator.
> 
> Signed-off-by: Om Prakash Singh <quic_omprsing@quicinc.com>

Thanks for the quick update, Om.

Reviewed-by: Bjorn Andersson <andersson@kernel.org>

Regards,
Bjorn

> ---
> 
> Changes in V2:
>   - Squashed two separate patches for SA8775P and SC7280 in one.
>   - Sort entries in alphabetic order.
> 
>  Documentation/devicetree/bindings/crypto/qcom,prng.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/crypto/qcom,prng.yaml b/Documentation/devicetree/bindings/crypto/qcom,prng.yaml
> index 633993f801c6..13070db0f70c 100644
> --- a/Documentation/devicetree/bindings/crypto/qcom,prng.yaml
> +++ b/Documentation/devicetree/bindings/crypto/qcom,prng.yaml
> @@ -17,6 +17,8 @@ properties:
>            - qcom,prng-ee  # 8996 and later using EE
>        - items:
>            - enum:
> +              - qcom,sa8775p-trng
> +              - qcom,sc7280-trng
>                - qcom,sm8450-trng
>                - qcom,sm8550-trng
>            - const: qcom,trng
> -- 
> 2.25.1
> 


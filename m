Return-Path: <devicetree+bounces-5697-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 579177B7873
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 09:13:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 7E31E1C20441
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 07:13:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F7196FAE;
	Wed,  4 Oct 2023 07:13:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED0DB10F8
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 07:13:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 867FDC433C7;
	Wed,  4 Oct 2023 07:13:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696403621;
	bh=slTWOyAU1ZBbYv/JtLRY8Y7iFRGILVvZKFfcQRK6mjU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SFB/MuUtKtRQlI+MlBjIu76Wg/9CWWZCq098e2vitg2omxQz5qn3UE4ZUrfY/35FJ
	 LgF6gT4VCSaymC9cZ3j5PiHnPcupI0nL5LsWb4ycLcNyWEnA3FRjfSbwJColtsvO6v
	 0oHI5TYuwd1LWmKvmbejzDOwSMmCL9SFFV0Cdqx0QOMnUEvJJgQ9whChh1wSWFS25Y
	 uRNbhcglC2j8bl5Us4pWA9bNRDvB6vY21MAhpb2SDFkmYRVo652LB4Zo5VsU3G6YVJ
	 zWjeHW41UsSiqFrg05HBCBakP6j2GrLMk5iZdDvAGoiT2uaCfkYzy6DEZgl2Mu9CLp
	 OZwc0e/sikbFw==
Date: Wed, 4 Oct 2023 12:43:37 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	"David S. Miller" <davem@davemloft.net>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Om Prakash Singh <quic_omprsing@quicinc.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Bjorn Andersson <quic_bjorande@quicinc.com>
Subject: Re: [PATCH v4 0/5] arm64: qcom: sm8x50: enable RNG
Message-ID: <ZR0QoUiVPJP8WXJY@matsya>
References: <20231003-topic-sm8550-rng-v4-0-255e4d0ba08e@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231003-topic-sm8550-rng-v4-0-255e4d0ba08e@linaro.org>

On 03-10-23, 09:10, Neil Armstrong wrote:
> Enable RNG on SM8550 & SM8450 by reverting the PRNG bindings & DT
> for SM8450 and correctly document it as a True Random Number Generator.
> 
> - SM8550 QRD test run:
> 
> smccc_trng qcom_hwrng 
> 
> qcom_hwrng
> 
> rngtest 6.15
> Copyright (c) 2004 by Henrique de Moraes Holschuh
> This is free software; see the source for copying conditions.  There is NO warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
> 
> rngtest: starting FIPS tests...
> rngtest: bits received from input: 209420032
> rngtest: FIPS 140-2 successes: 10461
> rngtest: FIPS 140-2 failures: 10
> rngtest: FIPS 140-2(2001-10-10) Monobit: 1
> rngtest: FIPS 140-2(2001-10-10) Poker: 2
> rngtest: FIPS 140-2(2001-10-10) Runs: 3
> rngtest: FIPS 140-2(2001-10-10) Long run: 4
> rngtest: FIPS 140-2(2001-10-10) Continuous run: 0
> rngtest: input channel speed: (min=9.219; avg=63.879; max=19073.486)Mibits/s
> rngtest: FIPS tests speed: (min=24.965; avg=29.093; max=118.469)Mibits/s
> rngtest: Program run time: 10002827 microseconds
> 
> - SM8450 HDK test run:
> 
> qcom_hwrng
> 
> rngtest 6.15
> Copyright (c) 2004 by Henrique de Moraes Holschuh
> This is free software; see the source for copying conditions.  There is NO warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
> 
> rngtest: starting FIPS tests...
> rngtest: bits received from input: 420580032
> rngtest: FIPS 140-2 successes: 21014
> rngtest: FIPS 140-2 failures: 15
> rngtest: FIPS 140-2(2001-10-10) Monobit: 2
> rngtest: FIPS 140-2(2001-10-10) Poker: 0
> rngtest: FIPS 140-2(2001-10-10) Runs: 7
> rngtest: FIPS 140-2(2001-10-10) Long run: 6
> rngtest: FIPS 140-2(2001-10-10) Continuous run: 0
> rngtest: input channel speed: (min=15.711; avg=50.033; max=32.493)Mibits/s
> rngtest: FIPS tests speed: (min=136.239; avg=203.833; max=227.065)Mibits/s
> rngtest: Program run time: 10000978 microseconds

Acked-by: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod


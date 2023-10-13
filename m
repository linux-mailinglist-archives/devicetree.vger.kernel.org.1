Return-Path: <devicetree+bounces-8439-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B84547C831D
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 12:32:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 72E5D282CB4
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 10:32:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A66579F3;
	Fri, 13 Oct 2023 10:32:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDB4712B6A
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 10:32:29 +0000 (UTC)
Received: from abb.hmeau.com (abb.hmeau.com [144.6.53.87])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE000DC;
	Fri, 13 Oct 2023 03:32:26 -0700 (PDT)
Received: from loth.rohan.me.apana.org.au ([192.168.167.2])
	by formenos.hmeau.com with smtp (Exim 4.94.2 #2 (Debian))
	id 1qrFSq-006jMM-Ou; Fri, 13 Oct 2023 18:32:17 +0800
Received: by loth.rohan.me.apana.org.au (sSMTP sendmail emulation); Fri, 13 Oct 2023 18:32:21 +0800
Date: Fri, 13 Oct 2023 18:32:21 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: neil.armstrong@linaro.org
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	"David S. Miller" <davem@davemloft.net>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Om Prakash Singh <quic_omprsing@quicinc.com>,
	Bjorn Andersson <quic_bjorande@quicinc.com>
Subject: Re: [PATCH v4 3/5] crypto: qcom-rng - Add hw_random interface support
Message-ID: <ZSkctT6Fcm+FDDw5@gondor.apana.org.au>
References: <20231003-topic-sm8550-rng-v4-0-255e4d0ba08e@linaro.org>
 <20231003-topic-sm8550-rng-v4-3-255e4d0ba08e@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231003-topic-sm8550-rng-v4-3-255e4d0ba08e@linaro.org>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, Oct 03, 2023 at 09:10:21AM +0200, neil.armstrong@linaro.org wrote:
>
> @@ -198,6 +233,21 @@ static int qcom_rng_remove(struct platform_device *pdev)
>  	return 0;
>  }
>  
> +struct qcom_rng_of_data qcom_prng_of_data = {
> +	.skip_init = false,
> +	.hwrng_support = false,
> +};
> +
> +struct qcom_rng_of_data qcom_prng_ee_of_data = {
> +	.skip_init = true,
> +	.hwrng_support = false,
> +};
> +
> +struct qcom_rng_of_data qcom_trng_of_data = {
> +	.skip_init = true,
> +	.hwrng_support = true,
> +};
> +

I've added static to these three.  Please build your patches
with C=1 W=1 in future.

Thanks,
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt


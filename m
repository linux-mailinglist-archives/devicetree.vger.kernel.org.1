Return-Path: <devicetree+bounces-12404-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 720F57D958F
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 12:50:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A36891C20A8E
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 10:50:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C7538F5C;
	Fri, 27 Oct 2023 10:50:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 419F379CC
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 10:50:20 +0000 (UTC)
Received: from abb.hmeau.com (abb.hmeau.com [144.6.53.87])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB7EBC9;
	Fri, 27 Oct 2023 03:50:18 -0700 (PDT)
Received: from loth.rohan.me.apana.org.au ([192.168.167.2])
	by formenos.hmeau.com with smtp (Exim 4.94.2 #2 (Debian))
	id 1qwKPn-00BeO4-Cc; Fri, 27 Oct 2023 18:50:08 +0800
Received: by loth.rohan.me.apana.org.au (sSMTP sendmail emulation); Fri, 27 Oct 2023 18:50:13 +0800
Date: Fri, 27 Oct 2023 18:50:13 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Om Prakash Singh <quic_omprsing@quicinc.com>
Cc: neil.armstrong@linaro.org, konrad.dybcio@linaro.org, agross@kernel.org,
	andersson@kernel.org, conor+dt@kernel.org, davem@davemloft.net,
	devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
	linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org, marijn.suijten@somainline.org,
	robh+dt@kernel.org, vkoul@kernel.org
Subject: Re: [PATCH V2] dt-bindings: crypto: qcom,prng: document SA8775P and
 SC7280
Message-ID: <ZTuV5XxY+KqP+Qm6@gondor.apana.org.au>
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
> ---
> 
> Changes in V2:
>   - Squashed two separate patches for SA8775P and SC7280 in one.
>   - Sort entries in alphabetic order.
> 
>  Documentation/devicetree/bindings/crypto/qcom,prng.yaml | 2 ++
>  1 file changed, 2 insertions(+)

Patch applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt


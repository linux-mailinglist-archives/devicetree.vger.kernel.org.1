Return-Path: <devicetree+bounces-2604-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A97A7ABAA9
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 22:50:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id C43B9B208F1
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 20:50:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9EE247341;
	Fri, 22 Sep 2023 20:50:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9940F45F63
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 20:50:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 45085C433C7;
	Fri, 22 Sep 2023 20:50:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695415826;
	bh=8rUQPVnfBZ8nP+opU6DTtF/9h/0Y3eo/+O/9HxRH5wE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uV4w3zy8Ixj9BOX7Sc6mk0f8Opy6CAAoMdR0lguNgOWPqPzTpJjnJsObzg0NBlPpw
	 5aA1K+y8AFcnFCTzfUwu1wxG4513oPJeNZ08bndBhLu7sbsttyltqabFz795u7fvwx
	 MI70lspZm3m4M0IJ21M9YdjmKQZfmErXdH0sHN/lr+5lltm6iBu47CwaIdZmwE0MX4
	 Ts/JYCPNuGsyJWe8z4d0mYZHlCcMRDBsNcqg9kAJLtO9JA2dhH8JVjIS5/11G5KcwL
	 qYR0wCFoZ4vEJEp323lTJd8Krh2tsYFVPkl0OhYKBFzgj7V1QV6LErk7bHgfVye9X/
	 hg1ez4SEp4jBg==
Received: (nullmailer pid 3556203 invoked by uid 1000);
	Fri, 22 Sep 2023 20:50:23 -0000
Date: Fri, 22 Sep 2023 15:50:23 -0500
From: Rob Herring <robh@kernel.org>
To: Sricharan R <srichara@win-platform-upstream01.qualcomm.com>
Cc: rafael@kernel.org, quic_srichara@quicinc.com, linux-kernel@vger.kernel.org, dmitry.baryshkov@linaro.org, linux-pm@vger.kernel.org, srinivas.kandagatla@linaro.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, andersson@kernel.org, thara.gopinath@gmail.com, konrad.dybcio@linaro.org, devicetree@vger.kernel.org, krzysztof.kozlowski@linaro.org, linux-arm-msm@vger.kernel.org, agross@kernel.org, conor+dt@kernel.org, daniel.lezcano@linaro.org
Subject: Re: [PATCH V3 1/4] dt-bindings: thermal: qcom-tsens: Add ipq5018
 compatible
Message-ID: <169541580075.3555585.17615922669140216464.robh@kernel.org>
References: <20230922115116.2748804-1-srichara@win-platform-upstream01.qualcomm.com>
 <20230922115116.2748804-2-srichara@win-platform-upstream01.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230922115116.2748804-2-srichara@win-platform-upstream01.qualcomm.com>


On Fri, 22 Sep 2023 17:21:13 +0530, Sricharan R wrote:
> From: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> 
> IPQ5018 has tsens v1.0 block with 4 sensors and 1 interrupt.
> 
> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> ---
>  [v3] Added the tsens-ipq5018 as  new binding without rpm
> 
>  Documentation/devicetree/bindings/thermal/qcom-tsens.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>



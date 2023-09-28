Return-Path: <devicetree+bounces-4358-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB2E7B2246
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 18:26:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id ABA7CB20B84
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 16:26:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 101B051225;
	Thu, 28 Sep 2023 16:26:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 001AA3C6BE
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 16:26:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7C5FEC433C7;
	Thu, 28 Sep 2023 16:26:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695918381;
	bh=3YeoBmK77jwkAjttNPSPgV+qKPQsMz8vnZFqGk3ImLs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sZ56fdBgcURX00o1ZZmaGGdUnHUY6dKGvUSkcSKbUVjHScyxvqbPHU2YIHK1srHCL
	 Eut7bPwZQGzF4GN6DFKZb0ufLBgDi8xQW+vTP8+J2O5Z0wM5htOA8W1BtZ7bMLSvsy
	 k6hC3nfM2PgmSowlc2z1Z475cKLQL1l6tiBD2EnmcxNtf6fJQ9WA+mTaFLsovNTPIF
	 uYhcVlU10SQZh9zcqO4xRYoYq1rXSxAPRvKVMJmfSAGJ9Y14UIZSC2ePtMKT5B7qWj
	 /cDsqoV/d+3jeISLzu3lKvLNn7QLfsD5BPXL1X1OR1f5Fb2ltrwVq4+E/lp6dj+2q8
	 IsX370NPzEvpQ==
Received: (nullmailer pid 811759 invoked by uid 1000);
	Thu, 28 Sep 2023 16:26:17 -0000
Date: Thu, 28 Sep 2023 11:26:17 -0500
From: Rob Herring <robh@kernel.org>
To: Richard Acayan <mailingradian@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Kuogee Hsieh <quic_khsieh@quicinc.com>, Robert Foss <rfoss@kernel.org>, Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>, Neil Armstrong <neil.armstrong@linaro.org>, Vinod Polimera <quic_vpolimer@quicinc.com>, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, Liu Shixin <liushixin2@huawei.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, freedreno@lists.freedesktop.org, Andy Gross <agross@kernel.org>, Ryan McCann <quic_rmccann@quicinc.com>, Rob Clark <robdclark@gmail.com>, David Airlie <airlied@gmail.com>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Krishna Manikandan <quic_mkrishn@quicinc.com>, Jessica Zhang <quic_jesszhan@quicinc.com>
Subject: Re: [PATCH 2/6] dt-bindings: display/msm: sdm845-dpu: Describe SDM670
Message-ID: <169591837694.811719.16275751393760332189.robh@kernel.org>
References: <20230925232625.846666-9-mailingradian@gmail.com>
 <20230925232625.846666-11-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230925232625.846666-11-mailingradian@gmail.com>


On Mon, 25 Sep 2023 19:26:29 -0400, Richard Acayan wrote:
> The SDM670 display controller has the same requirements as the SDM845
> display controller, despite having distinct properties as described in
> the catalog. Add the compatible for SDM670 to the SDM845 controller.
> 
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---
>  .../devicetree/bindings/display/msm/qcom,sdm845-dpu.yaml      | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>



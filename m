Return-Path: <devicetree+bounces-8194-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AC1FD7C7134
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 17:16:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 672AC282170
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 15:16:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D05B8266D0;
	Thu, 12 Oct 2023 15:16:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lWh4zJpk"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B13EA266C7
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 15:16:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5718FC433BB;
	Thu, 12 Oct 2023 15:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697123760;
	bh=CS9VF07gkeV9AwiwyzlAL6GHT7P51hY0vpXVw5KAhCY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lWh4zJpklxplOSn9C02a/hjA8K3FDeTWEEw+casdd7ipQTCi0UVGYh85MS5IP0tam
	 S/UXs3WpP/Vq6Aj98gLmi9nQaQi00C3lP5rcfF3NAu60D8MwVKJFmSLP35cHYLwHQG
	 43420c66qhUI3q9fWAPBk56uyBBzPO3TWpPTPPwHhVQhdQfQmeQ77NXunlKEk4RhFc
	 Wt2+Sk7vZYdW2FEGUTZc3Pr1HUAg2+Q03i6VjjcK/wu7N3TvNgqvBa+V78OOHYRAVc
	 aN1fcHO1ZI8KSg8srd1f7mMK8X8YN3E9boMUT0DMVQ/v/MUhTfl01Ehq3ZguMP58Om
	 4Zhfg+3Nk6gAA==
Received: (nullmailer pid 689622 invoked by uid 1000);
	Thu, 12 Oct 2023 15:15:57 -0000
Date: Thu, 12 Oct 2023 10:15:57 -0500
From: Rob Herring <robh@kernel.org>
To: Richard Acayan <mailingradian@gmail.com>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, Krishna Manikandan <quic_mkrishn@quicinc.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, Ryan McCann <quic_rmccann@quicinc.com>, David Airlie <airlied@gmail.com>, Conor Dooley <conor+dt@kernel.org>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, Marijn Suijten <marijn.suijten@somainline.org>, freedreno@lists.freedesktop.org, dri-devel@lists.freedesktop.org, Sean Paul <sean@poorly.run>, Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, Andy Gross <agross@kernel.org>, Kuogee Hsieh <quic_khsieh@quicinc.com>, devicetree@vger.kernel.org, Rob Clark <robdclark@gmail.com>, Bjorn Andersson <andersson@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Liu Shixin <liushixin2@huawei.com>, Vinod Polimera <quic_vpolimer@quicinc.com>, Daniel Vetter <daniel@ffwll.ch>, Robert Foss <rfoss@kernel.org>
Subject: Re: [PATCH v3 3/6] dt-bindings: display: msm: Add SDM670 MDSS
Message-ID: <169712375677.689486.15371215600805365343.robh@kernel.org>
References: <20231009233337.485054-8-mailingradian@gmail.com>
 <20231009233337.485054-11-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231009233337.485054-11-mailingradian@gmail.com>


On Mon, 09 Oct 2023 19:33:41 -0400, Richard Acayan wrote:
> Add documentation for the SDM670 display subsystem, adapted from the
> SDM845 and SM6125 documentation.
> 
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---
>  .../display/msm/qcom,sdm670-mdss.yaml         | 292 ++++++++++++++++++
>  1 file changed, 292 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/msm/qcom,sdm670-mdss.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>



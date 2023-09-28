Return-Path: <devicetree+bounces-4356-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A8EF57B2221
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 18:20:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 63D10281194
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 16:20:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BA424F144;
	Thu, 28 Sep 2023 16:20:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B6034E298
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 16:20:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 771B6C433C7;
	Thu, 28 Sep 2023 16:20:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695918038;
	bh=UlmHL2MYIeetXX5KGpkapFIPaVtMKWJwuBP9544pnao=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RGJH7sGHDCCRByzAB10xIGEEni1DnJfJy2JvFhPdHSIytggfSgwIFMzw9bFHfFTfZ
	 2acZhEPPXXiQ+46eCnSpX2cZDBpQDKypnDVegs9fAqYb1uzr2kGSqYPlfaxX921rVR
	 UlH6WJ5uYRmYqmn7ztkX11QD8N1OyxTviyZXgwIy/pJmDtnU1Ui8TtQSa0FA3mlRwt
	 lRZWVmAHIvUkIfMi4QHMAJpXWAVrYrX1B1UmpCxJjBjrAeur7YijJgNphgVpx6rig1
	 8EiDuD2cXyyhJ9FDvD7T/w+WGF3TSzwKeY2K2hpw/hhO3RnMXmnzFOcrI2GVfVdQFp
	 MU4L8IRA+bXMw==
Received: (nullmailer pid 756683 invoked by uid 1000);
	Thu, 28 Sep 2023 16:20:33 -0000
Date: Thu, 28 Sep 2023 11:20:33 -0500
From: Rob Herring <robh@kernel.org>
To: Richard Acayan <mailingradian@gmail.com>
Cc: Kuogee Hsieh <quic_khsieh@quicinc.com>, David Airlie <airlied@gmail.com>, Neil Armstrong <neil.armstrong@linaro.org>, Marijn Suijten <marijn.suijten@somainline.org>, Robert Foss <rfoss@kernel.org>, Abhinav Kumar <quic_abhinavk@quicinc.com>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, dri-devel@lists.freedesktop.org, Ryan McCann <quic_rmccann@quicinc.com>, freedreno@lists.freedesktop.org, Liu Shixin <liushixin2@huawei.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Vinod Polimera <quic_vpolimer@quicinc.com>, Conor Dooley <conor+dt@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Clark <robdclark@gmail.com>, linux-arm-msm@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>, devicetree@vger.kernel.org, Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, Krishna Manikandan <quic_mkrishn@quicinc.com>, Sean Paul <sean@poorly.run>, Jessica Zhang <quic_jesszhan@quicinc.com>
Subject: Re: [PATCH 1/6] dt-bindings: display/msm: dsi-controller-main: add
 SDM670 compatible
Message-ID: <169591803268.756483.10293315880191956926.robh@kernel.org>
References: <20230925232625.846666-9-mailingradian@gmail.com>
 <20230925232625.846666-10-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230925232625.846666-10-mailingradian@gmail.com>


On Mon, 25 Sep 2023 19:26:28 -0400, Richard Acayan wrote:
> The SDM670 has DSI ports. Add the compatible for the controller.
> 
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---
>  .../devicetree/bindings/display/msm/dsi-controller-main.yaml     | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>



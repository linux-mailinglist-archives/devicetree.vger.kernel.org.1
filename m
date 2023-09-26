Return-Path: <devicetree+bounces-3307-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DA597AE368
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 03:44:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 229D61C20363
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 01:44:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A96C37EC;
	Tue, 26 Sep 2023 01:44:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 991E4637
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 01:44:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 46D57C433C7;
	Tue, 26 Sep 2023 01:44:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695692695;
	bh=3GmjWwlLfKkAaee1U7rANvoiG26U/KNUaceqIPsT6ng=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=iygnGX/zFTHpDM5zr/7FqpXcmSkCqfdehvGtxkU7MbfwLy/cUlC/E1M8LoQPpaQBN
	 Gksex02EneZnNH11O34brahnhFYM90ZhLA4YsBrD9OpOFvsa7KqsYh8651sMiomYRY
	 dq8QrDUSRenRpeB70fhqfhLQ7GDLLui2cqvdoyZdTlbtfGVKROfuQac/Z59NIQ+xTF
	 2sSD9tOqAX4h1RPaamOVZ+hwhL2gAJSll2R9H1p1co9KBIWvYAfgDPaVr9IpiNiLHF
	 GSmLjIg4eg8YfCYdRaHSjrsUuhTPE6lK3lweZGyOHUPuGZid0XLm+H8OAPWW7f3x+u
	 ng8IVaPvMpsAw==
Received: (nullmailer pid 2651675 invoked by uid 1000);
	Tue, 26 Sep 2023 01:44:49 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Richard Acayan <mailingradian@gmail.com>
Cc: Sean Paul <sean@poorly.run>, Krishna Manikandan <quic_mkrishn@quicinc.com>, Kuogee Hsieh <quic_khsieh@quicinc.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, Marijn Suijten <marijn.suijten@somainline.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Ryan McCann <quic_rmccann@quicinc.com>, Jessica Zhang <quic_jesszhan@quicinc.com>, Andy Gross <agross@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, dri-devel@lists.freedesktop.org, Liu Shixin <liushixin2@huawei.com>, devicetree@vger.kernel.org, Robert Foss <rfoss@kernel.org>, linux-arm-msm@vger.kernel.org, Rob Clark <robdclark@gmail.com>, Rob Herring <robh+dt@kernel.org>, David Airlie <airlied@gmail.com>, Vinod Polimera <quic_vpolimer@quicinc.com>, Conor Dooley <conor+dt@kernel.org>, freedreno@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>, Bjorn Andersson <andersson@kernel.org>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230925232625.846666-12-mailingradian@gmail.com>
References: <20230925232625.846666-9-mailingradian@gmail.com>
 <20230925232625.846666-12-mailingradian@gmail.com>
Message-Id: <169569268968.2651575.14271780119784995097.robh@kernel.org>
Subject: Re: [PATCH 3/6] dt-bindings: display: msm: Add SDM670 MDSS
Date: Mon, 25 Sep 2023 20:44:49 -0500


On Mon, 25 Sep 2023 19:26:30 -0400, Richard Acayan wrote:
> Add documentation for the SDM670 display subsystem, adapted from the
> SDM845 and SM6125 documentation.
> 
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---
>  .../display/msm/qcom,sdm670-mdss.yaml         | 280 ++++++++++++++++++
>  1 file changed, 280 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/msm/qcom,sdm670-mdss.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/display/msm/qcom,sdm670-mdss.example.dts:198.43-200.27: Warning (graph_endpoint): /example-0/display-subsystem@ae00000/dsi@ae96000/ports/port@0/endpoint: graph connection to node '/example-0/display-subsystem@ae00000/display-controller@ae01000/ports/port@1/endpoint' is not bidirectional

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230925232625.846666-12-mailingradian@gmail.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.



Return-Path: <devicetree+bounces-5131-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 45A307B5586
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 16:58:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id F3045281967
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 14:58:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90B6F1A71E;
	Mon,  2 Oct 2023 14:58:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8213918E30
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 14:58:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CC684C433CA;
	Mon,  2 Oct 2023 14:58:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696258735;
	bh=eboChl+wyX3j1fqZPar8FomWTc2qJC6kNeK3QytY7ko=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=huPw0zZOgabsI1929FJTXu1twF5xzgl87G3EhWItDUQeeYos1u33+woRmyrj9/sXg
	 Xsj14wChj5zY9ewsoTJvTt7NS+zbbI+aJdc6zTvK/2lQXgnIQ4yVFRpRihLIkLzSoi
	 Wi3dcXOE2eF9rECZEI3lqmjXltB2vRre4K+mUjjVFvGShKBHCJ1MWPB5ok3r5/+ez0
	 j7dmgYlnvDfos324eCFVf0l/pASUaw4zULNWJNb0A/k1GY4QZFKbfRKGkxDpMk2tw/
	 m9JIkjNK0VZQC23PLbv+s5Pub+TpK8FKd8v7EIN/+slWJr9yp18pulbtS4pMdZdrfa
	 huc2vE0ZGC3zw==
Received: (nullmailer pid 1705392 invoked by uid 1000);
	Mon, 02 Oct 2023 14:58:53 -0000
Date: Mon, 2 Oct 2023 09:58:53 -0500
From: Rob Herring <robh@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: conor+dt@kernel.org, Fabio Estevam <festevam@denx.de>, krzysztof.kozlowski+dt@linaro.org, dri-devel@lists.freedesktop.org, p.zabel@pengutronix.de, devicetree@vger.kernel.org, robh+dt@kernel.org, mripard@kernel.org
Subject: Re: [PATCH] dt-bindings: display: fsl,imx6-hdmi: Change to
 'unevaluatedProperties: false'
Message-ID: <169625873009.1705276.15847466950147815447.robh@kernel.org>
References: <20230930130102.798822-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230930130102.798822-1-festevam@gmail.com>


On Sat, 30 Sep 2023 10:01:02 -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> fsl,imx6-hdmi.yaml makes a reference to synopsys,dw-hdmi.yaml.
> 
> The 'interrupts'and 'reg' properties are described in synopsys,dw-hdmi.yaml,
> so use 'unevaluatedProperties: false' so that these two properties can
> be accepted.
> 
> This fixes the following schema warnings:
> 
> hdmi@120000: 'interrupts', 'reg' do not match any of the regexes: 'pinctrl-[0-9]+'
> from schema $id: http://devicetree.org/schemas/display/imx/fsl,imx6-hdmi.yaml#
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
>  .../devicetree/bindings/display/imx/fsl,imx6-hdmi.yaml          | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Applied, thanks!



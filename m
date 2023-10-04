Return-Path: <devicetree+bounces-5866-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F487B835C
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 17:16:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 328322814BC
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 15:16:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4027518E25;
	Wed,  4 Oct 2023 15:16:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3085D18E0A
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 15:16:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 18AD9C433C7;
	Wed,  4 Oct 2023 15:16:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696432570;
	bh=L/ODagKJ/NY47+xzHBVECHLFfXTxbn2/4aQ/BUUEz/Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=krKfLqeUcbKD3pl/drHH1PxkvaQdS98ejwVmE8aMVUqmKYOBv0nKH+R0y4HHr64Hv
	 ijTmXW+jAu85AKMT7cJaVZF0R5HhtAeckFJuCdjV8qrRcK0vQlINqHG58lHZKfp1es
	 E1WOoqWccMICJVLwGDst/8SU/brpO79L9nndRBlnDrP9153SFCixswNbzMwWqicEYC
	 KKzmpQpqX2UEqE+ooo1MkJqEWC5ZdrGXGoh03cV9OqBJ/tonfhIihW36eSq0Mcv6YW
	 vJ+y0Y3GSBbpwzSP0DMypbG7618UhVaQossNTWnhZW8uQvjrrlgZPsly+dq1+Kr6Ra
	 FA2/NvECDkNYA==
Received: (nullmailer pid 3149821 invoked by uid 1000);
	Wed, 04 Oct 2023 15:16:08 -0000
Date: Wed, 4 Oct 2023 10:16:08 -0500
From: Rob Herring <robh@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: Fabio Estevam <festevam@denx.de>, aford173@gmail.com, devicetree@vger.kernel.org, robh+dt@kernel.org, shengjiu.wang@nxp.com, alsa-devel@alsa-project.org, conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, broonie@kernel.org
Subject: Re: [PATCH] ASoC: dt-bindings: fsl,micfil: Document #sound-dai-cells
Message-ID: <169643256679.3149751.2610225492494450140.robh@kernel.org>
References: <20231004122935.2250889-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231004122935.2250889-1-festevam@gmail.com>


On Wed, 04 Oct 2023 09:29:35 -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> imx8mp.dtsi passes #sound-dai-cells = <0> in the micfil node.
> 
> Document #sound-dai-cells to fix the following schema warning:
> 
> audio-controller@30ca0000: '#sound-dai-cells' does not match any of the regexes: 'pinctrl-[0-9]+'
> from schema $id: http://devicetree.org/schemas/sound/fsl,micfil.yaml#
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
>  Documentation/devicetree/bindings/sound/fsl,micfil.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>



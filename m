Return-Path: <devicetree+bounces-4363-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 83F037B22B9
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 18:48:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 3CEB3281B9D
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 16:48:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD62D499BA;
	Thu, 28 Sep 2023 16:48:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC7B4328B0
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 16:48:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D684C433C9;
	Thu, 28 Sep 2023 16:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695919680;
	bh=4Ziabw/P74jJcE4ZP8mSBgubccfaveLvUS7PyEcnQYs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VaBe9l9oQXHeOILf2q44lEZwMwoAmOeB1TBc82icq/oxPshZw1pkDSie4DzDNqMDy
	 oZJUofnu7MHqQp8Ze/SLbvsk7443M+E9mEbpyQYVUjhK+By6dGTvgbhdcolgh1DE2S
	 JKpLUc2nBF7iHc4vnIejDs8I+jWyDLO0pwYKLbHycr/ugEk4UvgGOeIrG3/95INhkf
	 o/il2cWbJuEUu5lUXJn9EM01RcR6BPOZXd6IX9Xnz7B9Q9tHL/Cuy5J90dUGYFmQDX
	 seIGbxyXuH4SIyjV27m7REliapRlfAZn++3rmxUYanQHGu+khUsmqeQj/9x4qZpKUI
	 NPInH1MgtQJhA==
Received: (nullmailer pid 835692 invoked by uid 1000);
	Thu, 28 Sep 2023 16:47:58 -0000
Date: Thu, 28 Sep 2023 11:47:58 -0500
From: Rob Herring <robh@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: Fabio Estevam <festevam@denx.de>, linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org, devicetree@vger.kernel.org, linux-imx@nxp.com, conor+dt@kernel.org, Dmitry Torokhov <dmitry.torokhov@gmail.com>, krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org
Subject: Re: [PATCH 1/8] dt-bindings: input: fsl,scu-key: Document
 wakeup-source
Message-ID: <169591967800.835622.10464359202188248969.robh@kernel.org>
References: <20230926122957.341094-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230926122957.341094-1-festevam@gmail.com>


On Tue, 26 Sep 2023 09:29:50 -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> The SCU Key controller can be used as a system wakeup source.
> 
> Document the 'wakeup-source' property.
> 
> This fixes the following schema warning:
> 
> system-controller: keys: 'wakeup-source' does not match any of the regexes: 'pinctrl-[0-9]+'
> 	from schema $id: http://devicetree.org/schemas/firmware/fsl,scu.yaml#
> 
> Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
>  Documentation/devicetree/bindings/input/fsl,scu-key.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>



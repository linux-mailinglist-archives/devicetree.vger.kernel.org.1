Return-Path: <devicetree+bounces-3232-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EB387ADCE2
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 18:16:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id 2D66C1F24E7A
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 16:16:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCCA421A10;
	Mon, 25 Sep 2023 16:16:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDB941BDEA
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 16:16:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 405C3C433C7;
	Mon, 25 Sep 2023 16:16:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695658580;
	bh=TSyaUNxgQTernA9NMaDm994uOAqgq7TwhlPvqJNX9tM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bQIUUdtnqJxUmd+MPxkwZ5E09md3C49i97ZEg0rttza330Jv3NkZRNDUXUPq5jhkt
	 ucNA96Lu+jZgYhbhXhXaj2PN9y0sN/ZpmHlYXMEHEKzV92G/oS0MyPI0DNHfpwqy6N
	 o9WLN9Qb3iTT5RWWEshwe+v11XUiFCV77WoXLFf76O3QgtBzBCUFtKdDI9DGB3doAw
	 PWoyjkDKI2t5WU7VZX7c3+fkT3nfirEmtN8T8EsWsVVfMYfh2ry7PL4gAR5k3QjU2c
	 An89XAVSHhp9mHWxc2JrCWS/m1nxCKOJrHb225uGPN3zG2yUtsuY29zZGyH/UPx8q1
	 aqUIN5j0Vv3xA==
Received: (nullmailer pid 1458119 invoked by uid 1000);
	Mon, 25 Sep 2023 16:16:18 -0000
Date: Mon, 25 Sep 2023 11:16:18 -0500
From: Rob Herring <robh@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: robh+dt@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, shawnguo@kernel.org, krzysztof.kozlowski+dt@linaro.org, thierry.reding@gmail.com, Fabio Estevam <festevam@denx.de>, u.kleine-koenig@pengutronix.de, linux-pwm@vger.kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: pwm: mxs: Document fsl,imx28-pwm
Message-ID: <169565857661.1457958.3485561553574114610.robh@kernel.org>
References: <20230922124229.359543-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230922124229.359543-1-festevam@gmail.com>


On Fri, 22 Sep 2023 09:42:27 -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> imx28 uses the same PWM block that is found on imx23.
> 
> Add an entry for fsl,imx28-pwm.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> Acked-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
> ---
> Changes since v1:
> - None. Only collected Uwe's ack.
> 
>  Documentation/devicetree/bindings/pwm/mxs-pwm.yaml | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>



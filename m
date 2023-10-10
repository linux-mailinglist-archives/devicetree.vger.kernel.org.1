Return-Path: <devicetree+bounces-7391-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BE8887C04C9
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 21:39:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EE79C1C20A45
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 19:39:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8DAF3219E;
	Tue, 10 Oct 2023 19:39:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OhW6aqX9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A828332188
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 19:39:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 201B5C433C8;
	Tue, 10 Oct 2023 19:39:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696966757;
	bh=jLybmmqCIxDnVXPrUBWg4L5usGGWYSA0Tz28a1z32eI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OhW6aqX9qYWPUWDh37OuLKGEds1Y7s1JNlK96sq2lea69gtAuYyBX2UHuUwcaXK95
	 zLhbTqJYwaovHiATNuAGy/MUR/Gg0JsxiQr9vmUheTGlJMzqNeFocPgWhdBL6MTOnp
	 UDcWMNtPTTjPqQTloYsW3osT26E89Zn5H2pQYVYQaGLzp4c8zp5yRYbsDUB8nEKfPY
	 +/sbb5C1vPCnXsDRH2ZDOu+FRU1vqIBO06uSaEOSQK5HOF0MZE1pzvPGc2CK4gTxOa
	 njcpS2CjFU05n6LE+fj55Rdto71TywMmlhWyFeIcxXn8RhgEcEUXl991NqB62WqsU7
	 WYLkmafY6SOkg==
Received: (nullmailer pid 1426033 invoked by uid 1000);
	Tue, 10 Oct 2023 19:39:15 -0000
Date: Tue, 10 Oct 2023 14:39:15 -0500
From: Rob Herring <robh@kernel.org>
To: Chancel Liu <chancel.liu@nxp.com>
Cc: conor+dt@kernel.org, s.hauer@pengutronix.de, broonie@kernel.org, linux-kernel@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org, linux-imx@nxp.com, shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org, lgirdwood@gmail.com, alsa-devel@alsa-project.org, robh+dt@kernel.org, festevam@gmail.com, kernel@pengutronix.de
Subject: Re: [PATCH v2 3/3] ASoC: dt-bindings: fsl,mqs: Convert format to
 json-schema
Message-ID: <169696675468.1425993.2823968878328380539.robh@kernel.org>
References: <20231010133838.799714-1-chancel.liu@nxp.com>
 <20231010133838.799714-4-chancel.liu@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231010133838.799714-4-chancel.liu@nxp.com>


On Tue, 10 Oct 2023 21:38:38 +0800, Chancel Liu wrote:
> Convert NXP medium quality sound (MQS) device tree binding
> documentation to json-schema.
> 
> Signed-off-by: Chancel Liu <chancel.liu@nxp.com>
> ---
>  .../devicetree/bindings/sound/fsl,mqs.txt     |  36 ------
>  .../devicetree/bindings/sound/fsl,mqs.yaml    | 113 ++++++++++++++++++
>  2 files changed, 113 insertions(+), 36 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sound/fsl,mqs.txt
>  create mode 100644 Documentation/devicetree/bindings/sound/fsl,mqs.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>



Return-Path: <devicetree+bounces-5246-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FFBA7B5B15
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 21:18:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 2812928232F
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 19:18:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 496971F929;
	Mon,  2 Oct 2023 19:18:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A89D1F923
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 19:18:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F3CB4C433C8;
	Mon,  2 Oct 2023 19:18:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696274321;
	bh=j6ftsCnR5Nn5juRFFdpP16VBXV3veFIXFnvTTKBoMuw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uQIqByqIFEex+U8gKkFEwu7i0cTZoT8e4ngmXfSh3kEyUn4myjbaJo2mz2l4USlez
	 gJPc9UBKW/oeP8E4wmxD6mmhYujmiPTnaiCKyFcN5f/kXempc6Guz3fuLGEcoAs97/
	 nJmRuCjz78qNqid9yU1LpXLOf11yYhs76Tjw57oU5kLy2but+IFbFNReyCwH/bh62X
	 MUQc+9UTusIrsNQ3SA7pewW1XcG8GCmdYlb9KwivADd0dZ0tr95tXqawalRwcy44qA
	 +7/ijy4T4cWpMS1a+t0KWq2y8sfPWRP92Mv4W0r1/PZEWrVW1ZJkWh2T1sV6evBs6Z
	 6rjUZHZezKjoA==
Received: (nullmailer pid 2377967 invoked by uid 1000);
	Mon, 02 Oct 2023 19:18:39 -0000
Date: Mon, 2 Oct 2023 14:18:39 -0500
From: Rob Herring <robh@kernel.org>
To: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Cc: Sakari Ailus <sakari.ailus@linux.intel.com>, Ricardo Ribalda <ribalda@kernel.org>, Fabio Estevam <festevam@gmail.com>, Conor Dooley <conor+dt@kernel.org>, martink@posteo.de, linux-media@vger.kernel.org, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, devicetree@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v3 6/7] media: dt-bindings: sony,imx214: Fix handling of
 video-interface-device
Message-ID: <169627431850.2377918.14018705676565812353.robh@kernel.org>
References: <20230930145951.23433-1-jacopo.mondi@ideasonboard.com>
 <20230930145951.23433-7-jacopo.mondi@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230930145951.23433-7-jacopo.mondi@ideasonboard.com>


On Sat, 30 Sep 2023 16:59:50 +0200, Jacopo Mondi wrote:
> Fix handling of properties from video-interface-device.yaml for
> Sony IMX214.
> 
> All the properties described by video-interface-device.yaml are
> allowed for the image sensor, make them accepted by changing
> "additionalProperties: false" to "unevaluatedProperties: false" at the
> schema top-level.
> 
> Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
> ---
>  Documentation/devicetree/bindings/media/i2c/sony,imx214.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>



Return-Path: <devicetree+bounces-5245-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6029A7B5B14
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 21:18:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 7EB881C204BF
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 19:18:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 304231F929;
	Mon,  2 Oct 2023 19:18:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B8B1F925
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 19:18:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EE968C433C7;
	Mon,  2 Oct 2023 19:18:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696274313;
	bh=CvRbDUepgRE5yTdhw2mgN1pICg9mbxv0pF0xBTyZITc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=h20tfHHFha5js4ci+TasTnAtGeypy4BBebCuXM+P4cZAJEMlfQ42+ZyoDL8muw/CY
	 WSioEUerT4t2rE9zcxMA1lyhHbQH5APSsX5kDnxcdP9MukuCUJAE1rrOR0N9C3Bba4
	 NbwN+RHL8o1u4pfV3ATis1dOOTCYl0s/B0VGbXLi5dl2rvrh76WM6+8E9/fPItFP2h
	 3eDauvfSYadtP9UF5NpPnYY2SWWVTYdoLIS4iXVfgEx6hj/yLpZUepEFShgulTj2aT
	 c7j7q3Y8OhD0hI8VcA5gg2vsOvsmfQawU06Z0I24GhVc6rnaXlmEmogcmCFpqJhNlU
	 z76vPJO/5+LyQ==
Received: (nullmailer pid 2377709 invoked by uid 1000);
	Mon, 02 Oct 2023 19:18:32 -0000
Date: Mon, 2 Oct 2023 14:18:32 -0500
From: Rob Herring <robh@kernel.org>
To: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Cc: devicetree@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Fabio Estevam <festevam@gmail.com>, linux-media@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, martink@posteo.de, Sakari Ailus <sakari.ailus@linux.intel.com>, Steve Longerbeam <slongerbeam@gmail.com>
Subject: Re: [PATCH v3 5/7] media: dt-bindings: ovti,ov5640: Fix handling of
 video-interface-device
Message-ID: <169627431148.2377675.4615037566431541097.robh@kernel.org>
References: <20230930145951.23433-1-jacopo.mondi@ideasonboard.com>
 <20230930145951.23433-6-jacopo.mondi@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230930145951.23433-6-jacopo.mondi@ideasonboard.com>


On Sat, 30 Sep 2023 16:59:49 +0200, Jacopo Mondi wrote:
> Fix handling of properties from video-interface-device.yaml for
> Omnivision OV5640 sensor.
> 
> There is no reason to restrict the allowed rotation degrees to 0 and 180,
> as the sensor can be mounted with any rotation.
> 
> Also, as all the properties described by video-interface-device.yaml are
> allowed for the image sensor, make them accepted by changing
> "additionalProperties: false" to "unevaluatedProperties: false" at the
> schema top-level.
> 
> Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
> ---
>  .../devicetree/bindings/media/i2c/ovti,ov5640.yaml         | 7 +------
>  1 file changed, 1 insertion(+), 6 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>



Return-Path: <devicetree+bounces-5236-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FF847B5AE0
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 21:07:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id E9D76B20BA4
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 19:07:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7ED51F195;
	Mon,  2 Oct 2023 19:07:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7A9F1D53B
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 19:07:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6605EC433C7;
	Mon,  2 Oct 2023 19:07:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696273663;
	bh=I9Tt4zwAf/qSfaNTuq/WUXrhqDYPeTkzrgN+p8bA20U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fZyaxAe+UupcyNPeCdK1dbSd9uIxbcWZbN5QCX2HFmQ6OfLD4HgTTYyyKsfmwP1PC
	 rEZLyIuUy2bL4XxWt37Pxj4t5DY9FpvP81xZzTPU2UHIq4zNjEiRKMtujshSaW7ykl
	 gotONQe32HAgsP9VUCY02bYfdmQ/+3C9CjzEik/Z2OD4HF7HFNApYF6c2sz7vkmT3z
	 i2cPzBgc2FskIiy6tCXR4o/n3QEj2YIP2IcCc/5T045pXsXT0Lk3i+lyJHPfgOfLAy
	 0TzJsv937YYdOZFBZauf6FtvV1ZqZV8nNPhwbS+jBRHfUSf/5GH1xqG803RxjTMBn6
	 8/B226UFKaRxw==
Received: (nullmailer pid 2365550 invoked by uid 1000);
	Mon, 02 Oct 2023 19:07:41 -0000
Date: Mon, 2 Oct 2023 14:07:41 -0500
From: Rob Herring <robh@kernel.org>
To: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Sakari Ailus <sakari.ailus@linux.intel.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Fabio Estevam <festevam@gmail.com>, martink@posteo.de, Michael Riesch <michael.riesch@wolfvision.net>
Subject: Re: [PATCH v3 7/7] media: dt-bindings: sony,imx415: Fix handling of
 video-interface-device
Message-ID: <20231002190741.GA2351787-robh@kernel.org>
References: <20230930145951.23433-1-jacopo.mondi@ideasonboard.com>
 <20230930145951.23433-8-jacopo.mondi@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230930145951.23433-8-jacopo.mondi@ideasonboard.com>

On Sat, Sep 30, 2023 at 04:59:51PM +0200, Jacopo Mondi wrote:
> Fix handling of properties from video-interface-device.yaml for
> Sony IMX415.

It wasn't really broken to be a fix. In any case,

Reviewed-by: Rob Herring <robh@kernel.org>

> 
> All the properties described by video-interface-device.yaml are
> allowed for the image sensor, make them accepted by changing
> "additionalProperties: false" to "unevaluatedProperties: false" at the
> schema top-level.
> 
> Because all properties are now accepted, there is no need to explicitly
> allow them in the schema.
> 
> Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
> ---
>  .../devicetree/bindings/media/i2c/sony,imx415.yaml     | 10 +---------
>  1 file changed, 1 insertion(+), 9 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/media/i2c/sony,imx415.yaml b/Documentation/devicetree/bindings/media/i2c/sony,imx415.yaml
> index ffccf5f3c9e3..8ea3ddd251f6 100644
> --- a/Documentation/devicetree/bindings/media/i2c/sony,imx415.yaml
> +++ b/Documentation/devicetree/bindings/media/i2c/sony,imx415.yaml
> @@ -44,14 +44,6 @@ properties:
>      description: Sensor reset (XCLR) GPIO
>      maxItems: 1
> 
> -  flash-leds: true
> -
> -  lens-focus: true
> -
> -  orientation: true
> -
> -  rotation: true
> -
>    port:
>      $ref: /schemas/graph.yaml#/$defs/port-base
> 
> @@ -88,7 +80,7 @@ required:
>    - ovdd-supply
>    - port
> 
> -additionalProperties: false
> +unevaluatedProperties: false
> 
>  examples:
>    - |
> --
> 2.42.0
> 


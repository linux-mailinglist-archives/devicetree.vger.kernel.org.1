Return-Path: <devicetree+bounces-5244-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 30FE17B5B13
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 21:18:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id B9102B20B27
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 19:18:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C17A1F924;
	Mon,  2 Oct 2023 19:18:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F16B31F174
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 19:18:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C8EACC433C9;
	Mon,  2 Oct 2023 19:18:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696274305;
	bh=QJNNsE5w6lrikruWK8pGPErgOG373fXozuMyrEQpHZE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mblJCGX64AehNcf19Q+qjxW2CdCIieG3By/12G5IKzrBKDYVWUw0D/pFoSjAN79zE
	 QNNrEoL/iyu3tWnYqboRxF0S8t0oPRWCTrgqS1zCaTyoOWjTNrWwuxbBNpcqcpwUWN
	 7BIqNtn42FSvNEBmc9uEtfo9hXptGSAHDgFW32Y19MWoEwKSbZvhz8Iy2awW9poi+x
	 SMUVuZ2Pf8bT9xvpegP7RbbvX2r4Zbm4k5VE4Tiq5KLNazQt4bRfMdzpYIVghVHaG7
	 luyCns466SpK5sTTjQrKR6SV6H+xcNPJlsh9lrUqU8QhyKJeopEJ4eqZ9KB/Tbes3I
	 BjB0INJQabgkw==
Received: (nullmailer pid 2377443 invoked by uid 1000);
	Mon, 02 Oct 2023 19:18:23 -0000
Date: Mon, 2 Oct 2023 14:18:23 -0500
From: Rob Herring <robh@kernel.org>
To: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Cc: Rob Herring <robh+dt@kernel.org>, martink@posteo.de, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Fabio Estevam <festevam@gmail.com>, Mikhail Rudenko <mike.rudenko@gmail.com>, devicetree@vger.kernel.org, linux-media@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Sakari Ailus <sakari.ailus@linux.intel.com>
Subject: Re: [PATCH v3 4/7] media: dt-bindings: ovti,ov4689: Fix handling of
 video-interface-device
Message-ID: <169627430335.2377387.10312964861522055044.robh@kernel.org>
References: <20230930145951.23433-1-jacopo.mondi@ideasonboard.com>
 <20230930145951.23433-5-jacopo.mondi@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230930145951.23433-5-jacopo.mondi@ideasonboard.com>


On Sat, 30 Sep 2023 16:59:48 +0200, Jacopo Mondi wrote:
> Fix handling of properties from video-interface-device.yaml for
> Omnivision OV4689.
> 
> All the properties described by video-interface-device.yaml are
> allowed for the image sensor, make them accepted by changing
> "additionalProperties: false" to "unevaluatedProperties: false" at the
> schema top-level.
> 
> Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
> ---
>  .../devicetree/bindings/media/i2c/ovti,ov4689.yaml          | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>



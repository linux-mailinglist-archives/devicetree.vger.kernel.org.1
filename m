Return-Path: <devicetree+bounces-5243-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BF927B5B12
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 21:17:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 13DF0B20A7E
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 19:17:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D0681F923;
	Mon,  2 Oct 2023 19:17:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E44C1F195
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 19:17:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D7752C433C8;
	Mon,  2 Oct 2023 19:17:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696274274;
	bh=3JgM+v0ZuncMt63lc6R7SDjcc31nAdmBVULeGLpCTfs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GLWTqiax4pcj18ajxGc2ekGV9NbyyQLFkZNj9WZdj42NAK6AKSp4xDs/AezIRPCvo
	 Nw/lObeKZd/qMXxP3v1XrMVPjJtcjbPFqdn8wKZESpEDM71FJGcTWi2xmKB+FZ2t1L
	 qgo9gVFy+L33TuFHvFvgK9gDdCZdh43UaJ5G3xn7HbzZSnihE9ux9kt2sAkaezCvnJ
	 +Zg48bnoaxmO0R0Uwe+P6Pjfek5LcWUHBnINpDstX94jpziiYWiFp5mHvdL95SLnvi
	 mVNYIqIDQe3Z0Q8H3oDCny/gnWOJUh4gW/8E0i5jRLOja6aOKjVUI6466lu94pjVTY
	 2ZTGqkPSNU5oQ==
Received: (nullmailer pid 2376795 invoked by uid 1000);
	Mon, 02 Oct 2023 19:17:52 -0000
Date: Mon, 2 Oct 2023 14:17:52 -0500
From: Rob Herring <robh@kernel.org>
To: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, martink@posteo.de, devicetree@vger.kernel.org, linux-media@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, Sakari Ailus <sakari.ailus@linux.intel.com>, Conor Dooley <conor+dt@kernel.org>, Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH v3 3/7] media: dt-bindings: ovti,ov02a10: Fix handling of
 video-interface-device
Message-ID: <169627427147.2376729.523525213804282269.robh@kernel.org>
References: <20230930145951.23433-1-jacopo.mondi@ideasonboard.com>
 <20230930145951.23433-4-jacopo.mondi@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230930145951.23433-4-jacopo.mondi@ideasonboard.com>


On Sat, 30 Sep 2023 16:59:47 +0200, Jacopo Mondi wrote:
> Fix handling of properties from video-interface-device.yaml for
> Omnivision OV02A10 sensor.
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
>  .../devicetree/bindings/media/i2c/ovti,ov02a10.yaml       | 8 +-------
>  1 file changed, 1 insertion(+), 7 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>



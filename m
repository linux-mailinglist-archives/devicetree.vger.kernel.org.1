Return-Path: <devicetree+bounces-5242-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 666127B5B10
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 21:17:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 1C97F2822D7
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 19:17:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 278181F923;
	Mon,  2 Oct 2023 19:17:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 185351F195
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 19:17:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9B07FC433C7;
	Mon,  2 Oct 2023 19:17:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696274258;
	bh=+63Rw5ZdMVmK8XMxGckqGTRn8bLDHXHHREH3j4Dzd0g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jhSNUo+IPnkNUfZgFKvsvrY0v5rpyigik4nkLGCIEs1v7RKgV6V0uQzFEBF4iGGbo
	 YOfukb/YjbLz8zYCIgs2USoohPjsPagdw7t/bRb/kkWkgmdfOzZ3VvnEPTeU2i+epE
	 2kfixYDlObfs+Pcd1KpTihe7MPVK3sBwl6uU26+cRdT5Q/3cfXQxuRnAu6iwdzJyHG
	 nKW8Yqm17jf0HLCN2BaZIbp7+wYylJ1eglKdWoFBoCdq9WNW9JCogXAEU3fvgNvuOK
	 sYjBuzXLyYl471KK/scx8wETL8wH9w2VItZwsAK4s8yFqavQTh2dTDw3d61edFjh7l
	 0TqC7kkvgN8bQ==
Received: (nullmailer pid 2376314 invoked by uid 1000);
	Mon, 02 Oct 2023 19:17:35 -0000
Date: Mon, 2 Oct 2023 14:17:35 -0500
From: Rob Herring <robh@kernel.org>
To: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Cc: Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, linux-media@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>, Rob Herring <robh+dt@kernel.org>, martink@posteo.de, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH v3 1/7] media: dt-bindings: hynix,hi846: Add
 video-interface-device properties
Message-ID: <169627425412.2376248.16081570796890214410.robh@kernel.org>
References: <20230930145951.23433-1-jacopo.mondi@ideasonboard.com>
 <20230930145951.23433-2-jacopo.mondi@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230930145951.23433-2-jacopo.mondi@ideasonboard.com>


On Sat, 30 Sep 2023 16:59:45 +0200, Jacopo Mondi wrote:
> Allow properties from video-interface-device.yaml for the SK Hynix Hi-846
> sensor.
> 
> All properties specified in video-interface-device.yaml schema are
> valid, so make them accepted by changing "additionalProperties: false"
> to "unevaluatedProperties: false" at the schema top-level.
> 
> Add two properties from video-interface-device.yaml to the example
> to validate the new schema.
> 
> Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
> ---
>  .../devicetree/bindings/media/i2c/hynix,hi846.yaml         | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>



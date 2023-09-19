Return-Path: <devicetree+bounces-1422-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 19CF17A62F0
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 14:30:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C6639281B9C
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 12:30:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5825A15B5;
	Tue, 19 Sep 2023 12:30:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51782339B3
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 12:30:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1C486C433C8;
	Tue, 19 Sep 2023 12:30:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695126603;
	bh=EtFa5rvshidZO96hC+OAr46glLz8FAGtkJNpTV8OXYk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=V2DJIatknYNoZV5FKgknMq5dWC1kMJ8jrAmzHkYCKGWdd6OB5JGpHKm+plcn20V3m
	 0Xor9hZDxJSUdBt0J/Y6w4Z88Rd2IRsAnf0EctwWShWIX1xT5GaDu88OJmfStxfmWI
	 VGhWsJimvfd6cG6nxoUkSFolmkKEhp0eJJZiTE3uOoXuZF8Xs9o0khdyZeYjUPu6op
	 XwTECoP1+iEgM75AfedkO9Wnk76tf/0StLOGqHaCoVdDPuNG9Nzk7E2w5Oc9+HvwUJ
	 GPsrSjTsWT76ZwQZofRxLpUu6+XWFhGDFIlFSgk5T/+XCz041sscP0tX984hM8JtQ5
	 50JY72XIuu1lA==
Date: Tue, 19 Sep 2023 14:29:57 +0200
From: Shawn Guo <shawnguo@kernel.org>
To: Tim Harvey <tharvey@gateworks.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>
Subject: Re: [PATCH] arm64: dts: imx8mp: add imx8mp-venice-gw74xx-imx219
 overlay for rpi v2 camera
Message-ID: <20230919122956.GD11740@T480>
References: <20230711221518.2127861-1-tharvey@gateworks.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230711221518.2127861-1-tharvey@gateworks.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Tue, Jul 11, 2023 at 03:15:18PM -0700, Tim Harvey wrote:
> Add support for the RaspberryPi Camera v2 which is an IMX219 8MP module:
>  - https://datasheets.raspberrypi.com/camera/camera-v2-schematics.pdf
>  - has its own on-board 24MHz osc so no clock required from baseboard
>  - pin 11 enables 1.8V and 2.8V LDO which is connected to
>    GW74xx MIPI_GPIO4 (IMX8MP GPIO1_IO4) so we use this as a gpio
> 
> Support is added via a device-tree overlay.
> 
> The IMX219 supports RAW8/RAW10 image formats.
> 
> Example configuration:
> media-ctl -l "'imx219 3-0010':0->'csis-32e40000.csi':0[1]"
> media-ctl -v -V "'imx219 3-0010':0 [fmt:SRGGB8/640x480 field:none]"
> media-ctl -v -V "'crossbar':0 [fmt:SRGGB8/640x480 field:none]"
> media-ctl -v -V "'mxc_isi.0':0 [fmt:SRGGB8/640x480 field:none]"
> v4l2-ctl --set-fmt-video=width=640,height=480,pixelformat=RGGB
> v4l2-ctl --stream-mmap --stream-to=frame.raw --stream-count=1
> convert -size 640x480 -depth 8 gray:frame.raw frame.png
> gst-launch-1.0 v4l2src ! \
>   video/x-bayer,format=rggb,width=640,height=480,framerate=10/1 ! \
>   bayer2rgb ! fbdevsink
> 
> Signed-off-by: Tim Harvey <tharvey@gateworks.com>

Applied, thanks!


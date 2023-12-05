Return-Path: <devicetree+bounces-21655-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A0C78804C9B
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 09:37:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D1FF01C20BEF
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 08:37:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1641938DD6;
	Tue,  5 Dec 2023 08:37:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hKYRHMfb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AF492E839
	for <devicetree@vger.kernel.org>; Tue,  5 Dec 2023 08:37:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 99884C433C7;
	Tue,  5 Dec 2023 08:37:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701765432;
	bh=QaChC19t84tPQ3fhVSi46FxHN4jYeXoCcq8WNBAg/w0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hKYRHMfb4IUzwQjLfdVCGGS+Ub/LwL1X5Dsl2HE+MPu9zUDyU5PW2pIGAuj9h09iu
	 l3eMzoX0vg8AM/J//Yh/TQ32PbbSsUyLg317MQgKOMIpsffKyUCYoUI+t5AymiXu9M
	 9XVNYP7IH0dVjd8Me6etnFB02TVFw1J/T2OnMe7k/l2xHokBi2otAi/zsfZvYOLAVj
	 B00ovEuBy8I/voMgE+j3CfcU9pkHG8r52DoiimTcj/3r+uXxa8HN61iRcK2zEileQp
	 P8sA4OqJOlVrrQzUP8QCQMukW08r6W0LMENkQ/ThbbicdZn4QtH7MOaI9ayDtpdWFW
	 fOHTpbeV/1VGA==
Date: Tue, 5 Dec 2023 16:37:06 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Nathan Rossi <nathan@nathanrossi.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, Nathan Rossi <nathan.rossi@digi.com>,
	Fabio Estevam <festevam@gmail.com>, Li Jun <jun.li@nxp.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>
Subject: Re: [PATCH v2] arm64: dts: imx8mp: imx8mq: Add
 parkmode-disable-ss-quirk on DWC3
Message-ID: <20231205083706.GC236001@dragon>
References: <20231106021436.1917894-1-nathan@nathanrossi.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231106021436.1917894-1-nathan@nathanrossi.com>

On Mon, Nov 06, 2023 at 02:14:36AM +0000, Nathan Rossi wrote:
> From: Nathan Rossi <nathan.rossi@digi.com>
> 
> The i.MX8MP and i.MX8MQ devices both use the same DWC3 controller and
> are both affected by a known issue with the controller due to specific
> behaviour when park mode is enabled in SuperSpeed host mode operation.
> 
> Under heavy USB traffic from multiple endpoints the controller will
> sometimes incorrectly process transactions such that some transactions
> are lost, or the controller may hang when processing transactions. When
> the controller hangs it does not recover.
> 
> This issue is documented partially within the linux-imx vendor kernel
> which references a Synopsys STAR number 9001415732 in commits [1] and
> additional details in [2]. Those commits provide some additional
> controller internal implementation specifics around the incorrect
> behaviour of the SuperSpeed host controller operation when park mode is
> enabled.
> 
> The summary of this issue is that the host controller can incorrectly
> enter/exit park mode such that part of the controller is in a state
> which behaves as if in park mode even though it is not. In this state
> the controller incorrectly calculates the number of TRBs available which
> results in incorrect access of the internal caches causing the overwrite
> of pending requests in the cache which should have been processed but
> are ignored. This can cause the controller to drop the requests or hang
> waiting for the pending state of the dropped requests.
> 
> The workaround for this issue is to disable park mode for SuperSpeed
> operation of the controller through the GUCTL1[17] bit. This is already
> available as a quirk for the DWC3 controller and can be enabled via the
> 'snps,parkmode-disable-ss-quirk' device tree property.
> 
> It is possible to replicate this failure on an i.MX8MP EVK with a USB
> Hub connecting 4 SuperSpeed USB flash drives. Performing continuous
> small read operations (dd if=/dev/sd... of=/dev/null bs=16) on the block
> devices will result in device errors initially and will eventually
> result in the controller hanging.
> 
>   [13240.896936] xhci-hcd xhci-hcd.0.auto: WARN Event TRB for slot 4 ep 2 with no TDs queued?
>   [13240.990708] usb 2-1.3: reset SuperSpeed USB device number 5 using xhci-hcd
>   [13241.015582] sd 2:0:0:0: [sdc] tag#0 UNKNOWN(0x2003) Result: hostbyte=0x07 driverbyte=DRIVER_OK cmd_age=0s
>   [13241.025198] sd 2:0:0:0: [sdc] tag#0 CDB: opcode=0x28 28 00 00 00 03 e0 00 01 00 00
>   [13241.032949] I/O error, dev sdc, sector 992 op 0x0:(READ) flags 0x80700 phys_seg 25 prio class 2
>   [13272.150710] usb 2-1.2: reset SuperSpeed USB device number 4 using xhci-hcd
>   [13272.175469] sd 1:0:0:0: [sdb] tag#0 UNKNOWN(0x2003) Result: hostbyte=0x03 driverbyte=DRIVER_OK cmd_age=31s
>   [13272.185365] sd 1:0:0:0: [sdb] tag#0 CDB: opcode=0x28 28 00 00 00 03 e0 00 01 00 00
>   [13272.193385] I/O error, dev sdb, sector 992 op 0x0:(READ) flags 0x80700 phys_seg 18 prio class 2
>   [13434.846556] xhci-hcd xhci-hcd.0.auto: xHCI host not responding to stop endpoint command
>   [13434.854592] xhci-hcd xhci-hcd.0.auto: xHCI host controller not responding, assume dead
>   [13434.862553] xhci-hcd xhci-hcd.0.auto: HC died; cleaning up
> 
> [1] https://github.com/nxp-imx/linux-imx/commit/97a5349d936b08cf301730b59e4e8855283f815c
> [2] https://github.com/nxp-imx/linux-imx/commit/b4b5cbc5a12d7c3b920d1d7cba0ada3379e4e42b
> 
> Fixes: fb8587a2c165 ("arm64: dtsi: imx8mp: add usb nodes")
> Fixes: ad37549cb5dc ("arm64: dts: imx8mq: add USB nodes")
> Signed-off-by: Nathan Rossi <nathan.rossi@digi.com>
> Reviewed-by: Fabio Estevam <festevam@gmail.com>

Applied, thanks!


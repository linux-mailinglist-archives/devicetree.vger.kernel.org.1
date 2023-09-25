Return-Path: <devicetree+bounces-2882-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 509557ACD0C
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 02:20:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 91542281331
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 00:20:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A78A136F;
	Mon, 25 Sep 2023 00:20:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93A897E
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 00:20:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B3BD4C433C7;
	Mon, 25 Sep 2023 00:20:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695601230;
	bh=nujv1+lpH59MTmKXnzvoXfuS4mE5xwPwEb34zekYWK0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ocJUqhDuSS+G1htpRFhuIFeJ4Rx7gTlmWO9L/aYzwvrwCT4M65u42dpHjsscg8z/4
	 6hUOqFeIen8RAQKzrIEC6ZRa/hfWopKk2iOZ1kVzN5weEg5nO4L8r5mazYWdnne7U9
	 AlwSzuJgyPXTLlA9W81I6WjvN2iHD9Z2ouWxeoZwNHmmNCZj2PhKBBCU5kyXJJBgX3
	 vRKq7+6X/TfIhriXn6fkewCPfSQqifjK4szjdCybNMwqqwN/kT3k15ALggPg3hewou
	 fkkaazVbC1/fce1ZVgQ9tJzzntHWgGo34MIzPfcxYXQDVeZpZLWGFYVwHBYE+6dDtD
	 4ZL4vMFz9YYbg==
Date: Mon, 25 Sep 2023 08:20:17 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org,
	linux@ew.tq-group.com, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 0/5] TQMa8Mx/TQMa8MxML/TQMa8MxNL LVDS support
Message-ID: <20230925002017.GS7231@dragon>
References: <20230822120804.717592-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230822120804.717592-1-alexander.stein@ew.tq-group.com>

On Tue, Aug 22, 2023 at 02:07:59PM +0200, Alexander Stein wrote:
> Hi,
> 
> this series adds LVDS support using a standard, but exchangable, display on the
> starter kit mainboard MBa8Mx. It is split into 5 patches where the 1st adds the
> necessary DT nodes for LVDS while the following 3 patches add the overlay for
> the actual support for tianma tm070jvhg33 display on each platform.
> The last one enable the necessary driver options in defconfig.
> Thanks for the feedback on v1.
> 
> Changes in v2:
> * Moved common settings to mba8mx.dtsi
> * Added DT overlays for TQMa8Mx and TQMa8MxNL platforms
> * Renamed DT overlay files using the panel name
> * Unified commit message
> * Removed tailing 0 in DT node name
> * Replaced undersorces in DT node names with dashes
> 
> Thanks and best regards,
> Alexander
> 
> Alexander Stein (5):
>   arm64: dts: mba8mx: Add DSI-LVDS bridge nodes
>   arm64: dts: imx8mm-tqma8mqml-mba8mx: Add LVDS overlay
>   arm64: dts: imx8mn-tqma8mqnl-mba8mx: Add LVDS overlay
>   arm64: dts: imx8mq-tqma8mq-mba8mx: Add LVDS overlay
>   arm64: defconfig: Enable Samsung DSIM driver

Applied all, thanks!


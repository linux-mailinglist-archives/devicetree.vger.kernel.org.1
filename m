Return-Path: <devicetree+bounces-19028-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CA2357F9748
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 02:49:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 238E5B209E6
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 01:49:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03BE0EC9;
	Mon, 27 Nov 2023 01:49:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nGDghIiG"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA4DE815
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 01:49:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E1CC0C433C7;
	Mon, 27 Nov 2023 01:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701049748;
	bh=HitpsOTHre0d6XmqLR1efAJ2HPFvlQMsImlDCmogSmY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nGDghIiGgEkCe07gvWWGczaw1VQ1WVyFhuYAaHb5xBNyKFmMnMVMo4lv4DjI8pkpw
	 I/JHor1YoPLh8Jdnj3Mw0OwsaXWP2wNdx2qoN2ew106zqwqzIuYkHh8jyGrc+c9F4C
	 9vAIE9dDClpLodWVH7WPArNNcoSpbSxLW5NITFSia2EYc06X0UmSJO/QUG7mB/t7iC
	 srUyGQecFgp1RCTyjeJ0MumU+QWloZXDISWJA55IONm4fwZrk0YGs4kyRtJop41riL
	 jODax1Uz48Zrb6GLj8/AbN48LdVvahYfL+v2htdZzfasRHxgjVisjo7sYhqrDsMfbY
	 ttnzRW67f+7rA==
Date: Mon, 27 Nov 2023 09:49:02 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 0/4] i.MX7S/D DT fixes
Message-ID: <20231127014902.GE87953@dragon>
References: <20231012081556.2723552-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231012081556.2723552-1-alexander.stein@ew.tq-group.com>

On Thu, Oct 12, 2023 at 10:15:52AM +0200, Alexander Stein wrote:
> Alexander Stein (4):
>   ARM: dts: imx7d: Fix coresight funnel ports
>   ARM: dts: imx7s: Fix lcdif compatible
>   ARM: dts: imx7s: Fix nand-controller #size-cells
>   ARM: dts: imx7s: Add missing #thermal-sensor-cells

Applied all, thanks!


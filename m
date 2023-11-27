Return-Path: <devicetree+bounces-19048-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A6617F97C2
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 04:00:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C18CFB20A12
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 03:00:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A8521C38;
	Mon, 27 Nov 2023 03:00:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TLfwvk9n"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE57917E3
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 03:00:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D4E18C433C7;
	Mon, 27 Nov 2023 03:00:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701054014;
	bh=IkFY8z7tvP3iyBfW1OANk2r9vzoQbd6cRztOmLNq/Mo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TLfwvk9nvifI6oKgObwHPtw59c+mx1N/IQ0AiiRHaruzRBSwCbcMh7iZD/RcN8+FR
	 bo4fCOOJz1BlgvnARSH0K1jfSrVXnBQ7yTFNoFDH4g2G2Gtjcf2zAA5+g4c/yMdyU5
	 VCsj8QcNyWbXXRKEBMqIj94KtB82/DqJKtVYBmP4byfmZIHOJiyrn3smgiwGQ50TA/
	 wHsowPvO2TpFM4w+VHmW/IvWX242us+jaMcIllnlUqMJH+2VYBGJR+hf8Fb28fsU7Q
	 kcl/LmIZ5EKf/Mhe2Yd71MWUUz6yYesPJ3RclQiczEHp1yEALVA0eUl+9mDC2y2WGE
	 Aa6jljNwdOJFw==
Date: Mon, 27 Nov 2023 11:00:09 +0800
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
Subject: Re: [PATCH 1/1] ARM: dts: imx7s: Add DMA channels for CSPI
 peripherals
Message-ID: <20231127030009.GV87953@dragon>
References: <20231023094612.374487-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231023094612.374487-1-alexander.stein@ew.tq-group.com>

On Mon, Oct 23, 2023 at 11:46:12AM +0200, Alexander Stein wrote:
> This adds the rx/tx DMA channels for CSPI peripherals. Channel numbers
> are taken from i.MX7D RM Rev1 01/2018.
> Peripheral types ID (7) is selected according to fsl,imx-sdma.yaml and
> is similar to i.MX6 and i.MX8M platforms. Same goes for transfer
> priority ID (last number).
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied, thanks!


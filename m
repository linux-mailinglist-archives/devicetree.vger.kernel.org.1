Return-Path: <devicetree+bounces-25078-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CC9FA81257F
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 03:50:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 670C91F21ECD
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 02:50:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 296B1814;
	Thu, 14 Dec 2023 02:50:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bi3XAIDE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A8EDA4F
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 02:50:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0E458C433C7;
	Thu, 14 Dec 2023 02:50:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702522215;
	bh=Nd9u1k7UI6o8ADnIXkQDc+MUCqxbS3DKHxdC2rMfDYc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bi3XAIDEmU1Zaq7JpEPUscbyhBCJ7zjw7Wb1/ujl+qRQKfLRS9gbIJ3XNvqJCKTgc
	 Wtg2c0Sn6MrPn7MlAzcfeOsyy0S3Y+f1PZ2Id3Wjr1ODgEY3me/wX8rqs8M1hmHx/j
	 o+/mVai3wKOXk1NExrgO8IMeron1BNdKxmYlZhkzOE8q6vaqPQbWwOVXheb8kgHB98
	 mklO03Iu2vDskCfwNEEMsfoxf1CJRr+N5+NSnidGjGS1Mzzkov+csk521eNSSkDCth
	 +fzH3SFvxiQ1khXlnnJeGbtGogdSmA6H9++cESwPEWLeP8HsH/UeJTepRWgN+THvqd
	 8b/3YhRa23K5g==
Date: Thu, 14 Dec 2023 10:50:09 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Hugo Villeneuve <hugo@hugovil.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
	festevam@gmail.com, linux-imx@nxp.com, leoyang.li@nxp.com,
	robh@kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Hugo Villeneuve <hvilleneuve@dimonoff.com>
Subject: Re: [PATCH v2 0/3] board: imx8mn-dimonoff-gateway-evk: add support
 for Dimonoff gateway EVK board
Message-ID: <20231214025009.GB270430@dragon>
References: <20231207150519.1264808-1-hugo@hugovil.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231207150519.1264808-1-hugo@hugovil.com>

On Thu, Dec 07, 2023 at 10:05:16AM -0500, Hugo Villeneuve wrote:
> From: Hugo Villeneuve <hvilleneuve@dimonoff.com>
> 
> Hello,
> this patch series add support for the Dimonoff gateway EVK board.
> 
> Based on shawnguo/for-next branch.
> 
> Thank you.
> 
> Link: [v1] https://lore.kernel.org/all/20231206160303.33185-1-hugo@hugovil.com/
> 
> Changes for V2:
> - Add Krzysztof Acked-by tag
> - Wrap lines at 80 columns in dts
> - Remove company name from compatible property
> 
> Hugo Villeneuve (3):
>   dt-bindings: vendor-prefixes: add dimonoff
>   dt-bindings: arm: fsl: add Dimonoff gateway EVK board
>   arm64: dts: freescale: introduce dimonoff-gateway-evk board

Applied all, thanks!


Return-Path: <devicetree+bounces-22027-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6961D8063CD
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 01:59:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 56D19B20E96
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 00:59:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C112651;
	Wed,  6 Dec 2023 00:59:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PNewgHzB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7029662A
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 00:59:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8C71AC433C7;
	Wed,  6 Dec 2023 00:59:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701824366;
	bh=sJAJI8bs6y4uGRz8tW7x8dYOVhPHhLeH+OCzid/IUzU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PNewgHzBJnDCvpC+jtfb4lKdWvkx9OE2AmvX3md0amsfQwYoEudt+24LOxR3NyNHn
	 WwLb3i1C6e6QGUpAWb0brWrq7jKuC6cruFYCNqm8p1xPNJVwhmJdkh+1joI1AGzwbk
	 ty4s/Y+uEl8RMy2epDLPyN7nhVQhWP9nSrRX8nF8ydrO0rvIfvuyrmT/fKTnfVIQBY
	 iWbM59ELGpBZ7jOXVAJRngxLxBMU9KryumykvK9MgS9qnAxqf9ysDdK7smT2DjKgff
	 qs8i+AEpzb6LYpLxqXBlpx30aELPv+cG8UibLJlYjco7Wp6K02LDVhRlpXzRr2Ob0V
	 SV9dRaeEnvz7A==
Date: Wed, 6 Dec 2023 08:59:21 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Liu Ying <victor.liu@nxp.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
	linux-imx@nxp.com, peng.fan@nxp.com, ping.bai@nxp.com
Subject: Re: [PATCH] arm64: dts: imx93: correct mediamix power
Message-ID: <20231206005921.GM236001@dragon>
References: <20231113100229.3885321-1-victor.liu@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231113100229.3885321-1-victor.liu@nxp.com>

On Mon, Nov 13, 2023 at 06:02:29PM +0800, Liu Ying wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> "nic_media" clock should be enabled when power on/off mediamix, otherwise
> power on/off will fail. Because "media_axi_root" clock is the parent of
> "nic_media" clock, so replace "media_axi_clock" clock with "nic_media"
> clock in mediamix node.
> 
> Link: https://github.com/nxp-imx/linux-imx/commit/ce18e6d0071ae9df5486af8613708ebe920484be
> Fixes: f2d03ba997cb ("arm64: dts: imx93: reorder device nodes")
> Fixes: e85d3458a804 ("arm64: dts: imx93: add src node")
> Reviewed-by: Jacky Bai <ping.bai@nxp.com>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> Signed-off-by: Liu Ying <victor.liu@nxp.com>

Applied, thanks!


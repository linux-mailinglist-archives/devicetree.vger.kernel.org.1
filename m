Return-Path: <devicetree+bounces-19027-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A29D7F9743
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 02:44:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CEA86B209D6
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 01:43:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F03CA44;
	Mon, 27 Nov 2023 01:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pwsOz5ch"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F95E10FC
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 01:43:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 873E0C433C7;
	Mon, 27 Nov 2023 01:43:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701049433;
	bh=NbtY/8ONFtsYiKUEntFYqbrvFpjIHrWiA8U3dz2SpRg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pwsOz5chZuk7JgC7VchQBzqbpfoOg1c+F9KRJKCLYRlIyFhwUrY9PrEEyUUOGl/6l
	 IEczoTg/DGo1gIaQpRMrn/tAYc66EsLskRvKT3u+MkzGygiooUbQ/ElCZCGZrm2Gex
	 4OtyidZmegygJyW7bWGWpjxOAo+8sPA+XMlEcA2+bLFxDO/eiJhPDeky8qu0FxT/dg
	 kWdPX/eqLRi1nAqCFqQIRW71+Axs4p6m8vzgK2hTtlfqkLn4utgc9TKCJWZIahTJ20
	 2VMChBs1czyD0Phmo/ucB/d+DKro7nFAdihTBhN4K1oOelkgRVYqT7NKf3XmBwP+G1
	 AzjllC+KmSnsQ==
Date: Mon, 27 Nov 2023 09:43:46 +0800
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
Subject: Re: [PATCH v2 0/2] TQMa93xxCA/LA + MBa93xxCA support
Message-ID: <20231127014346.GD87953@dragon>
References: <20231012074236.2708881-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231012074236.2708881-1-alexander.stein@ew.tq-group.com>

On Thu, Oct 12, 2023 at 09:42:34AM +0200, Alexander Stein wrote:
> Alexander Stein (2):
>   arm64: dts: freescale: tqma9352-mba93xxla: add 'chassis-type' property
>   arm64: dts: freescale: add initial device tree for MBa93xxCA starter
>     kit

Applied, thanks!


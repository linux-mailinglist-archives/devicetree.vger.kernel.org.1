Return-Path: <devicetree+bounces-24668-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E38BB810D38
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 10:18:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 141FA1C2092E
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 09:18:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 005331F951;
	Wed, 13 Dec 2023 09:18:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QznIbqvc"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D64B620B00
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 09:18:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D81FC433C8;
	Wed, 13 Dec 2023 09:18:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702459130;
	bh=UCR2zqaZGFe+0JBqYTQeeFFVQLdULVGr1Di1EOawjEw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QznIbqvclrC4C2BwVAts0jr7ZjhGqF6LnBdhfMwVxR3zgbaqf1m1rRikLEzJFe+ZR
	 LX6rkbKX7n+f78iIUs3GRX6IrWdd03hJl83ovw/NRGwix6sX/r/liXNXjNpRJ7S6rj
	 q6LGBYQaaf6QlJVVdkVsPLL1UBvg1Mz6bEImsAtboqtpkYGCtTUypYx85HCmmWEJDP
	 jY5HzJexEOr3IidvKNyHj69oddWKCfNhyGgqmNXbKpvjrwluIi7Ja2F7Sfcmj+bDdq
	 X0A14+E9zpbY0D7CjHKSGoKJMVeHnHCeUXYkCwVDC/WB9S4Q/xCa4FdaoKnU5tF90I
	 0nREBa+JWQncg==
Date: Wed, 13 Dec 2023 17:18:44 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Gregor Herburger <gregor.herburger@ew.tq-group.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Li Yang <leoyang.li@nxp.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux@ew.tq-group.com
Subject: Re: [PATCH 0/2] TQMLX2160A support
Message-ID: <20231213091844.GM270430@dragon>
References: <20231206-for-ml-tqmlx2160a-v1-0-622e41ae4d8e@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231206-for-ml-tqmlx2160a-v1-0-622e41ae4d8e@ew.tq-group.com>

On Wed, Dec 06, 2023 at 03:01:00PM +0100, Gregor Herburger wrote:
> Hi,
> 
> this series adds initial support for the TQMLX2160A SoM on MBLX2160a
> baseboard. The various supported Serdes Configurations are added with
> overlay files.
> 
> Patch 1 adds the compatible to dt bindings
> Patch 2 adds the dts files
> 
> ---
> Gregor Herburger (2):
>       dt-bindings: arm: fsl: Add TQ-Systems LX2160A based boards
>       arm64: dts: freescale: add fsl-lx2160a-mblx2160a board

Applied both, thanks!


Return-Path: <devicetree+bounces-19049-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2894E7F97C6
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 04:05:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5993A1C20823
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 03:05:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 268D61FD2;
	Mon, 27 Nov 2023 03:05:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WDWy9M8u"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05CBE15CF
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 03:05:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 840E5C433C7;
	Mon, 27 Nov 2023 03:05:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701054302;
	bh=cCYR0rsee51S1ewLY/ytk7KdSu8JwC2r/iRiZHtvK1U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WDWy9M8uXMmaVP2iNxUH7d8U6qVSo4jhKilHDOiRvUXbJTJ974xMSwEoyjHWWzTO7
	 2HaT49tsa4atwFz0hANxeEhgyh/9osvXE5EOyXxcHNnV9QT+Nv3o8AN0PANcKqYEjU
	 IC0H93yhtxWXP19eJHWcOJ3DFr4uO7G20vUX21QPhv+aUPvlWMQt1/FywMP88pe4vN
	 dAsLqw4SZ27VNUZjUZzRKy3J721UZwnwQA3hZynpDXruwx3e1VxIdkKJl1dsoz3Dxv
	 6cEZNw9U4GMi8dAUow+VqazO6B2SvFvugsFun5bs7ZKqXSHJxINGumlbc+1W0ZTiyh
	 DLDGSvZ8/tpPg==
Date: Mon, 27 Nov 2023 11:04:57 +0800
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
Subject: Re: [PATCH 1/1] arm64: dts: imx8mp: Disable dsp reserved memory by
 default
Message-ID: <20231127030457.GW87953@dragon>
References: <20231025072832.2277609-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231025072832.2277609-1-alexander.stein@ew.tq-group.com>

On Wed, Oct 25, 2023 at 09:28:32AM +0200, Alexander Stein wrote:
> Even if the 'dsp' node is disabled the memory intended to be used by the
> DSP is reserved. This limits the memory range suitable for CMA allocation.
> Thus disable the dsp_reserved node. DSP users need to enable it in parallel
> to the 'dsp' node.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied, thanks!


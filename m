Return-Path: <devicetree+bounces-2900-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D32EC7ACDA6
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 03:41:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id 46B4F1F2405B
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 01:41:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE4B1A51;
	Mon, 25 Sep 2023 01:41:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8C8BA2A
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 01:41:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3CE17C433C8;
	Mon, 25 Sep 2023 01:41:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695606115;
	bh=8KxFplEBPLfn8AzWhzIT+1kJQ6Sc5/RIt0UUqD3INbo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EYiTlSM/SIr5+VDFtITtEtrBOPdgpDKlGeOESjJZ2Zehzt+666f86DGGxNZkKaxtX
	 ZG+R8dHBhwggHynQ9KjPd6CS55yNSNLIL8D99EOzaoA4D1B7d7FaXO8tdaEqXofs5H
	 e8+H2zM4cfMYeN8PfhbL8t6vhUY1MYxr4qqxYIFuqJI3AIQG6coaBe/+0rGr6GrGLR
	 85KX7DiKQ9N9iSuvlMwZqB7ut5sTloroA4y/EdUIa3BAFHIm4ZIgem1sDUG4464A8b
	 rqWxu+Utp1RBlqUVTaBdA3zL+ssLTRoJeGCqY5z4RYcfiR2m2+XFToa8ZkG2+xFqkY
	 L+WYKP9PqKyFg==
Date: Mon, 25 Sep 2023 09:41:45 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
	conor+dt@kernel.org, Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH 1/2] arm64: dts: imx8mp: Move funnel outside from soc
Message-ID: <20230925014145.GI7231@dragon>
References: <20230906115444.189664-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230906115444.189664-1-festevam@gmail.com>

On Wed, Sep 06, 2023 at 08:54:43AM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> The 'funnel' node does not contain a register range, so it should
> be placed outside of the soc node to fix schema warnings from
> simple-bus.yaml.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied both, thanks!


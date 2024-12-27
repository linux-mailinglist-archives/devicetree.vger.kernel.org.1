Return-Path: <devicetree+bounces-134297-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C0CA9FD24A
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 09:56:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D9A491883929
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 08:56:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50A551552FA;
	Fri, 27 Dec 2024 08:56:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IdGotcxF"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273D3153BEE;
	Fri, 27 Dec 2024 08:56:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735289763; cv=none; b=cbO9c3saSa+xHeyjsPiu2+LzkZInvpnDdbtk8kK3cM9BFcG4zSYR9nMV7gnQ8/dVsVDe4U+T++jXn8t7bksy77jQAwrJqxziV5g9dx51pyxjJ+NNWNb5QZFR81HPcOlagSUzlfCRrPBb8B7xvcPOcRQWUsQTKhMFs5aDQW9fxg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735289763; c=relaxed/simple;
	bh=bUCK5MKJ+rZPzsvb6rQdvPZgK8diuXQSd1E+oQQ1EPo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TS6HgcAv3s6lKUIppS772LhTGR2xgaTOLn+r7fmQbTMyz9Vwqz6pcr2igZShLA9IDuQJ21UlJZE0Fcujwp4uTIV3IwxNFWtKjAIv6dDUiCgEoUZ40R44XegL/sNQy6HABlgZpB9NPrtuelnjBtTVzP+vgTzNvoPNmn1m4/HYx7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IdGotcxF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4441FC4CED0;
	Fri, 27 Dec 2024 08:56:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735289763;
	bh=bUCK5MKJ+rZPzsvb6rQdvPZgK8diuXQSd1E+oQQ1EPo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IdGotcxFGxaQwRtqRJMgy/G5NuvFm+yByE4wjsYbW+d/s6sAxe2GdR5ZnLkuL7utR
	 MmyAAZBZulCevbJibz5AlksDeM3Cp7VuOV06ZPOHvDT4uEdg46uB3xRWzeTzh5p7/r
	 tUjnMNZJ3pfL9sJuRnBn60DV1RdycB90asTSkIdOWeui1CbMDvKM9wpTjtmmDj456c
	 N0z73862Ax4psGr291h7xQofNqbNLUiudy4BDcmKM4sNSzrL5M7NzfDFMr4AXsgwki
	 cmhh2efOQkCUbWRZ/tee/8Y/ggUa6jIOtyI4WfRu3qADO2YZnnEc0tJT0SGtgvLt33
	 jAamby2KGMGvw==
Date: Fri, 27 Dec 2024 09:55:59 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, cristian.ciocaltea@collabora.com, 
	detlev.casanova@collabora.com, krzk+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org, 
	robh@kernel.org, sebastian.reichel@collabora.com, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH] dt-bindings: phy: add rk3576 hdptx phy
Message-ID: <hh3zowf257dwwp3uo7al5l5ql7hewy7j5rzjqdt3eqvd653mdj@4tgjm6zdsuyi>
References: <20241224091919.267698-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20241224091919.267698-1-andyshrk@163.com>

On Tue, Dec 24, 2024 at 05:19:13PM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> The HDPTX PHY on rk3576 is compatible with it on
> rk3588.
> 
> Add compatible for it.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> ---
> 
>  .../devicetree/bindings/phy/rockchip,rk3588-hdptx-phy.yaml | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)

Also: where are any users of this binding?

We don't take bindings without *UPSTREAM* users.

Best regards,
Krzysztof



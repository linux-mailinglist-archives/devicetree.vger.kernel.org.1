Return-Path: <devicetree+bounces-134296-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 280A59FD248
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 09:55:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C9C031632B8
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 08:55:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8BBD155301;
	Fri, 27 Dec 2024 08:55:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uVDPfKVL"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FCBC154457;
	Fri, 27 Dec 2024 08:55:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735289731; cv=none; b=mt+8/5zcOFGbkl2VLrgB0q9janT1RNZ5I6n+7c8xUGkx/ICHJgwFajwHgTVNPYoM1c/otZy9yWdnqiiypZr+wQ3iUk9hxaYdKQIAEb45x2IEAWPM6RcYHpELkm1k1sNqhX8wTd5VBinE4TSby2vhwzTjxuMTtH1H3qkrXhxeh84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735289731; c=relaxed/simple;
	bh=tIr3Bw7GISihWLQBUVLaTqGB+HTC9NniLcfir5D2zis=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fk6oEEAEaAiLJx7NcPi0tbK1+p1dq5PxZykqFeXZFiM/22Iv4fpN6R8lJpAW7xeivLBquCY4z4n0bnqE7j14gnJGsbpN/hMQIQa/DaM3XkHHoX8uU6snFMCVSr2r1xr9NdSd0Bd+U0Lu6EMmyfXmCfsHRNpJhkM4Gtz7VJLKbCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uVDPfKVL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5AC94C4CED0;
	Fri, 27 Dec 2024 08:55:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735289731;
	bh=tIr3Bw7GISihWLQBUVLaTqGB+HTC9NniLcfir5D2zis=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uVDPfKVLwxD2I1eDq3ldOGEuYb49ANjWZAsaURvBcNrUS9fbOs0m70/8VdShjWbQI
	 76hl3smVOzTQdS7FUl6AAbdzwZThaU4uFKuVKUUTyDQnYoBglwfHjmJirWyKAvj98V
	 Pt09MZ2SF1d8DXboa8BXI4o0C9y8Gd7xNQOGIRBtWAXExWBzLn4T6KxgalWqLcBJn/
	 nsbTaHzXqHcRBVmBSiHev5bIbTrkTwvfiZlEhfZVsf9Dmo08tAu0RWPUWYTCSsIg/a
	 Zc/x0pcUz03Sp89Wu+sKM0BRk4l7izjnprC1b5atX3HFSA5UUJAhrGblcPwhiDQVfO
	 c7CGaGef886Lw==
Date: Fri, 27 Dec 2024 09:55:27 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, cristian.ciocaltea@collabora.com, 
	detlev.casanova@collabora.com, krzk+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org, 
	robh@kernel.org, sebastian.reichel@collabora.com, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH] dt-bindings: phy: add rk3576 hdptx phy
Message-ID: <gkx4rmkwhngqsn5wotp3mdk6nn4oydrzgkfwhansd6j5ap5pek@rowfnww34rsd>
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

Please wrap commit message according to Linux coding style / submission
process (neither too early nor over the limit):
https://elixir.bootlin.com/linux/v6.4-rc1/source/Documentation/process/submitting-patches.rst#L597

> 
> Add compatible for it.

"Add compatible for the HDPTX PHY on rk3576, which is fully compatible
with foo bar."

One sentence.

> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> ---
> 
>  .../devicetree/bindings/phy/rockchip,rk3588-hdptx-phy.yaml | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/rockchip,rk3588-hdptx-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,rk3588-hdptx-phy.yaml
> index 84fe59dbcf48..364db2049ce2 100644
> --- a/Documentation/devicetree/bindings/phy/rockchip,rk3588-hdptx-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/rockchip,rk3588-hdptx-phy.yaml
> @@ -11,8 +11,11 @@ maintainers:
>  
>  properties:
>    compatible:
> -    enum:
> -      - rockchip,rk3588-hdptx-phy
> +    oneOf:
> +      - const: rockchip,rk3588-hdptx-phy
> +      - items:

Why items?

> +          - enum:

Why enum?

> +              - rockchip,rk3576-hdptx-phy

So that's just enum with previous entry... but you said compatible, yet
nothing is here. Test your patches - DTS will fail on this. Driver as
well (assuming you expressed properly compatibility).

Best regards,
Krzysztof



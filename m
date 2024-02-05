Return-Path: <devicetree+bounces-38832-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8798084A77D
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 22:34:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 416A428C122
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 21:34:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE430482E4;
	Mon,  5 Feb 2024 19:53:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sb7egcgk"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6B0D82D7A
	for <devicetree@vger.kernel.org>; Mon,  5 Feb 2024 19:53:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707162786; cv=none; b=basq8AXfbhVMXSKo6JtFuY+qtlFOKGlFE9UR4L/PwXQH1JJ85T8e41fQzVrJfk+lMPGvVT5hyoDfTe0NiAWLwYA3s1j6vAE01QG8zO46HraixRhw5Q9aHHf55bXvlxlv/Vj+SaUo0/CUJNCdfqgGo9GTANb2BNUI5Sk+2EnpSUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707162786; c=relaxed/simple;
	bh=qXI0KJlbtc3Ef0K4urDt/lp/O1IVhBKhTN/nq2nIt/4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nCdWp5x7RSA1HWecs/1VQf2rjKenHHdbRwChQFXWrp/MVyMs7ehg8klAbQXrXFTyAq5q22JY1Cb0lKn3DyUALP6cm+5AaS+asRsvcpmmaw28lU4ibq7HDY7oT+GSj6ANsAmYjj6145DdvPOArdJ4yNz+7QhGfEOUiEVEOLtIe+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sb7egcgk; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 99EBDC433F1;
	Mon,  5 Feb 2024 19:53:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707162786;
	bh=qXI0KJlbtc3Ef0K4urDt/lp/O1IVhBKhTN/nq2nIt/4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Sb7egcgkFSyq+YS8h3EODcJypQwZfPF5q0CKUyk60YQXRnoGdDUGfhocM/bMuUg+X
	 vcmyy+vP+4ZNSznCAWF25r0pS7l9LHSWtTNJgJCAuAoo5CDuaha1+twOr0fO/CBwaW
	 dO7XO5ycK2EpsF9rLYjJN7EAQOh5VJjqNSeeHVzqgfH2zMAzGDNbHV2UOQlT8p4X1B
	 xitQeLtfglMbY8ZqfMiifuOi5semP4dGai/9ElA5NXEskmhI0lrM1cEpoR82V2gVou
	 XFP61ssSlqeg7uiUnD1SY5ayOuCSvL+SHc+Ygsu/0MzFUO3t8TOEzW3U33xL7tGrzu
	 CZLJnHX+WRR9Q==
Date: Mon, 5 Feb 2024 19:53:02 +0000
From: Rob Herring <robh@kernel.org>
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Frank Rowand <frowand.list@gmail.com>,
	Sakari Ailus <sakari.ailus@iki.fi>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/2] of: property: add missing kerneldoc for
 of_graph_get_endpoint_count()
Message-ID: <170716278057.268973.4200209136410402344.robh@kernel.org>
References: <87sf27cw0g.wl-kuninori.morimoto.gx@renesas.com>
 <87r0hrcvzk.wl-kuninori.morimoto.gx@renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87r0hrcvzk.wl-kuninori.morimoto.gx@renesas.com>


On Mon, 05 Feb 2024 05:37:19 +0000, Kuninori Morimoto wrote:
> of_graph_get_endpoint_count() doesn't have kerneldoc. Add it.
> 
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> Reviewed-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
> ---
>  drivers/of/property.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Applied, thanks!



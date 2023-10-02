Return-Path: <devicetree+bounces-5167-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB567B57F0
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 18:34:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 29575283A6E
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 16:34:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B98517741;
	Mon,  2 Oct 2023 16:34:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C831DA23
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 16:34:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A129C433C7;
	Mon,  2 Oct 2023 16:34:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696264467;
	bh=jtuwi+vOj6zbCBIJ2oUr9ETnp0tDdTO/OAT4zJyqOXE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Cp9sTQBY0asUeXXoKuvACc5c9LP7UsoTBSZeQ6nlIEAbtjlrlruks4/M0GTasaT54
	 hGI3OsIVcddi2V6vlN8j+rqkJ+OdDz/sTRffR9TP6ANVb8LamC7RLesBsaAVADXPan
	 lcpQ/uASMmNvFKJSTF/8ugaW6vaSwiVuKxkIjaEmsbYXUSQUSfIApwPyi+MLtiuUKY
	 wJiWD5N5oet/cx64mu84dU0NBSr12rOmQODe1CNAbE+o7VhVHx2+ZPNIPLXXcn/YsV
	 th2A2+gLGo4ytmNnak/cMtzY67g0PexkyRzuGNRmcVdsDbU0gSQDVKY7Un0ms0r0ym
	 RNeIw1RuHxw7A==
Received: (nullmailer pid 1905428 invoked by uid 1000);
	Mon, 02 Oct 2023 16:34:26 -0000
Date: Mon, 2 Oct 2023 11:34:26 -0500
From: Rob Herring <robh@kernel.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: devicetree@vger.kernel.org, Frank Rowand <frowand.list@gmail.com>, Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH] of: overlay: Reorder struct fragment fields kerneldoc
Message-ID: <169626446399.1905346.14572411433091326169.robh@kernel.org>
References: <cfa36d2bb95e3c399c415dbf58057302c70ef375.1695893695.git.geert+renesas@glider.be>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cfa36d2bb95e3c399c415dbf58057302c70ef375.1695893695.git.geert+renesas@glider.be>


On Thu, 28 Sep 2023 11:35:39 +0200, Geert Uytterhoeven wrote:
> The fields of the fragment structure were reordered, but the kerneldoc
> was not updated.
> 
> Fixes: 81225ea682f45629 ("of: overlay: reorder fields in struct fragment")
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
>  drivers/of/overlay.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Applied, thanks!



Return-Path: <devicetree+bounces-256326-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B9238D38B07
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 02:14:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A99EB30319E2
	for <lists+devicetree@lfdr.de>; Sat, 17 Jan 2026 01:14:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15A641E1C11;
	Sat, 17 Jan 2026 01:14:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KiSsEkY0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6A3A1D9A54;
	Sat, 17 Jan 2026 01:14:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768612449; cv=none; b=uy7cMJct62ct40lyqhgyNSaGz+xLB0uTnanxNTP5uPhdND+VfjuBwAk7g2v34amG16vBM7l8aj/iSUQsTCinUM3IctLwhSGyY6rFqd0WTDoM4vBVJ+9wNLCzguLGT2k9NxWrS/vvDkxtesH9w6lXvU894J78TtxELOafvIE+rJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768612449; c=relaxed/simple;
	bh=DkQypmAZ9XI/9ZmNPjoXGXHdW9J5qzltj6ZcQ/CNcn4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hwAnX9ULhkZMYWvGIf08+ZOBWG16pyRWeuVjCghk9dN+BH22fN5MF4obPfd6r9JLm3Y0vWolHBpoJIv4gsnbq5SLRO1Ldt5JPxlK72Cy5W7Amt5YZ0hKvErO32rUTDYeLFeUlWyAP75f/pjrLG5fqkUjgrSU4wiOf+fXvTNi8j8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KiSsEkY0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 44B23C116C6;
	Sat, 17 Jan 2026 01:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768612448;
	bh=DkQypmAZ9XI/9ZmNPjoXGXHdW9J5qzltj6ZcQ/CNcn4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KiSsEkY05rLkN1XrI2p1s3FsR4WhYIZMwAQ7nxG7j6+7aAiut/oOU5SogxIm7FSqb
	 NFDNFPsd+LGt6vnnmRj8OCF1Tm3JEw+FqzJeGchyiHS8okucainKTJqjPy2TAh6ZUR
	 nZCImVmg3K9c2stBib1UFxnOtU0UWrAQCj0BI7HF3x1exQyGwvkp5X9p038icec0bK
	 z2uK37BGRmcrDIFkdCh4jfON4axt5kOrhMdAl4cd6hevKGFBEHwOnEdr+Z5bPSdmkw
	 dHP2X22GYC6dAptE7+wxUkcDIHaYri94JR7XDEhdDqzkwx9gimLs/Dts4xIFjHRnGn
	 JAvoorqeHPRkQ==
Date: Fri, 16 Jan 2026 19:14:07 -0600
From: Rob Herring <robh@kernel.org>
To: Saravana Kannan <saravanak@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Andy Gross <andy.gross@linaro.org>,
	Sudeep Holla <Sudeep.Holla@arm.com>
Cc: Marek Szyprowski <m.szyprowski@samsung.com>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] of: platform: Use default match table for /firmware
Message-ID: <20260117011407.GA2286765-robh@kernel.org>
References: <20260114015158.692170-2-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260114015158.692170-2-robh@kernel.org>

On Tue, Jan 13, 2026 at 07:51:58PM -0600, Rob Herring (Arm) wrote:
> Calling of_platform_populate() without a match table will only populate
> the immediate child nodes under /firmware. This is usually fine, but in
> the case of something like a "simple-mfd" node such as
> "raspberrypi,bcm2835-firmware", those child nodes will not be populated.
> And subsequent calls won't work either because the /firmware node is
> marked as processed already.
> 
> Switch the call to of_platform_default_populate() to solve this problem.
> It should be a nop for existing cases.
> 
> Fixes: 3aa0582fdb82 ("of: platform: populate /firmware/ node from of_platform_default_populate_init()")
> Cc: stable@vger.kernel.org
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---
>  drivers/of/platform.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/of/platform.c b/drivers/of/platform.c
> index d4e169b3b5af..d90b1677d84e 100644
> --- a/drivers/of/platform.c
> +++ b/drivers/of/platform.c
> @@ -568,7 +568,7 @@ static int __init of_platform_default_populate_init(void)
>  
>  		node = of_find_node_by_path("/firmware");
>  		if (node) {
> -			of_platform_populate(node, NULL, NULL, NULL);
> +			of_platform_default_populate(node, NULL, NULL);
>  			of_node_put(node);
>  		}
>  
> -- 
> 2.51.0
> 


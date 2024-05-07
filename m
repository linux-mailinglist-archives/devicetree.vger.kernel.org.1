Return-Path: <devicetree+bounces-65588-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B5ED48BEEB2
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2024 23:11:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 71EA5283B28
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2024 21:11:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB7F078C69;
	Tue,  7 May 2024 21:11:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DPoixQPz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C37A478276;
	Tue,  7 May 2024 21:11:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715116274; cv=none; b=CWMnjstTZ3oqhU++PtSsQpgclOEumXFSJlRogEt14cLblYND4eOo7YLvvfiSsaxLP60cxOwH+iTkheUnGtR0nvC7NvV/cpNkhFSrAXbvAqH1u9QU23YN+ecGW4JKVTPWS6vmk/YLxrHUGORlMrod1xIkl1gRrGso1CujixrcKxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715116274; c=relaxed/simple;
	bh=XdUodymdRB65eR7Rdr7ZYq48VpisLuK+dc2m5P9E1jE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=i36OYuSNmVAjxXl5UMkuOb/bVB1aEayawOhHpvBneKNN1Gs6OrfqT1xO8W0jP7hDkkEcqL7QQ+1yFRGpeUESKIe6heVOTffTb/DowKUSTo7EGvzGIHpPFMt0Ex5UlEANK2KpSOcFwDR0J4k8R5DzQnlDxpf9kO9HPNHI1QT378o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DPoixQPz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1EA90C2BBFC;
	Tue,  7 May 2024 21:11:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715116274;
	bh=XdUodymdRB65eR7Rdr7ZYq48VpisLuK+dc2m5P9E1jE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DPoixQPzNU6IyEpl+1YPBIPcbPSW507umWTlrI87a+x4ukswKKUhIL4Q0tRb2K7wO
	 IFP7pGSsVDKfjN37CWzJquawoaZWDAv85aLKLe7xLaQd10BP2V4RNp1nOM6NaqiF/o
	 r4dQhUZXgOSCQubJAGqRHk0H0jq7+iajzL/B3Xd1zbjZztZz0VMKknBZDgIF1W5qnW
	 I5wDyluT2wYzMzLXt5wZx/gx8OycdII7C2YTyFnc3ElG1WwAHQLqizRTu2BQmSzgqa
	 H7gDOx4K9VHZunRE+ELBhHsitZ1CMcbSW/c5dBS5X+fJl0RiJMtgzWwXjqxhmO0Ksr
	 H4n86KutFUOUw==
Date: Tue, 7 May 2024 16:11:12 -0500
From: Rob Herring <robh@kernel.org>
To: Neha Malcom Francis <n-francis@ti.com>
Cc: conor+dt@kernel.org, krzk+dt@kernel.org, kristo@kernel.org,
	vigneshr@ti.com, nm@ti.com, broonie@kernel.org, lgirdwood@gmail.com,
	marten.lindahl@axis.com, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	u-kumar1@ti.com
Subject: Re: [PATCH 1/5] regulator: dt-bindings: Unify compatible
Message-ID: <20240507211112.GA1053164-robh@kernel.org>
References: <20240507122158.3739291-1-n-francis@ti.com>
 <20240507122158.3739291-2-n-francis@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240507122158.3739291-2-n-francis@ti.com>

On Tue, May 07, 2024 at 05:51:54PM +0530, Neha Malcom Francis wrote:
> TPS62870/1/2/3 devices have different output currents (6A/9A/12A/15A) of
> the TPS6287x family. The I2C addresses are the same between them. There
> is no need for different compatibles for each for these devices so drop
> them and add a unified "ti,tps6287x" compatible.

And s/w will never need to know what the max output current is?

Same i2c address has no bearing. That's usually not even fixed for 1 
device.

> 
> Signed-off-by: Neha Malcom Francis <n-francis@ti.com>
> ---
>  .../devicetree/bindings/regulator/ti,tps62870.yaml         | 7 ++-----
>  1 file changed, 2 insertions(+), 5 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/regulator/ti,tps62870.yaml b/Documentation/devicetree/bindings/regulator/ti,tps62870.yaml
> index 386989544dac..2998773db990 100644
> --- a/Documentation/devicetree/bindings/regulator/ti,tps62870.yaml
> +++ b/Documentation/devicetree/bindings/regulator/ti,tps62870.yaml
> @@ -15,10 +15,7 @@ allOf:
>  properties:
>    compatible:
>      enum:
> -      - ti,tps62870
> -      - ti,tps62871
> -      - ti,tps62872
> -      - ti,tps62873
> +      - ti,tps6287x

You just broke the existing users.

Wildcards in compatible names are generally discouraged. Maybe if this 
was a new binding and had sufficient justification why we don't need to 
distinguish parts, but this is an ABI and we're stuck with them.

If you are doing this to support more versions, then feel free to use 
an existing string. It's just a unique identifier. You have 4 to choose 
from.

Rob


Return-Path: <devicetree+bounces-253558-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 575E4D0E9EB
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 11:42:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 34F153007C40
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 10:40:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5725F335BA8;
	Sun, 11 Jan 2026 10:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LEpqqfbT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34ADD330661;
	Sun, 11 Jan 2026 10:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768128033; cv=none; b=s6WwEk22N0Lr4MtMXXN3LNpL2fQjmrCJlimtl8jtONlGuCg0JisRmsCGGoTkCGveYsUYL99Cq0Ep45sijEXeEYSpvKrXHqcz1KudCfImpWpRT2DGX4hNEQjNU2ELHTZB6UJ0fVH5IB98Gf8pMmz5+YvqXILJPc/qO1a0DnjGiLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768128033; c=relaxed/simple;
	bh=jNXP3T+QGdDwl9VpGDdEjw5Gc/3zONZuRVJyjdi8Pkk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=e5WHzJ79kRDceHuVRs2NiH15pK4kz4JT/xJBy6fQdS7DPNRKLrPKT2P7ZNbA1RxTa4g5HqE+uXIn77y3pXlx78DyGzmNR1uvzoXCpkNQaZSLj7Y33AaEj2r2ZqZ3IgKNNuy9mIjvAuaVh+IkSVSDKG4jX0ZFAvmHmP1MnHcvU0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LEpqqfbT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 849A4C4CEF7;
	Sun, 11 Jan 2026 10:40:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768128033;
	bh=jNXP3T+QGdDwl9VpGDdEjw5Gc/3zONZuRVJyjdi8Pkk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LEpqqfbTdpthCVE6J0syaQoiZT2GHX1BJ0Vi6SGyDNQPjuBqWFhDD7Fhln71NRRhL
	 vZAKijff4tkh2P/A7H0F0C2A9iCldzCSkBc+q0I3JGFhbqYDb8EMELwOxJE61Q+Nqh
	 153M5K85RLeQSY2/3iPPKDWSfZiNPzuW99J5ba/rGBwJhIWK2XpXvgjqkolYfEvRRo
	 uPML9sqLEL3uzznP9whlcMWiW5b5VMvr3SWc+ZJacbQvMjbObiTC5hDIGTpvdEk9I5
	 u/rUfkCDl1rys1yiHWfSZ+ZL6ehammbuff6iFUUxFRa0LK5R04Z1BnbEda1jnR1UmF
	 aQs09toTbrGjg==
Date: Sun, 11 Jan 2026 11:40:30 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Tzu-Hao Wei <twei@axiado.com>
Cc: SriNavmani A <srinavmani@axiado.com>, 
	Prasad Bolisetty <pbolisetty@axiado.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, openbmc@lists.ozlabs.org
Subject: Re: [PATCH 3/4] MAINTAINERS: Add Axiado AX3000 eMMC PHY driver
Message-ID: <20260111-watchful-pigeon-of-brotherhood-6ada05@quoll>
References: <20260109-axiado-ax3000-add-emmc-phy-driver-support-v1-0-dd43459dbfea@axiado.com>
 <20260109-axiado-ax3000-add-emmc-phy-driver-support-v1-3-dd43459dbfea@axiado.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260109-axiado-ax3000-add-emmc-phy-driver-support-v1-3-dd43459dbfea@axiado.com>

On Fri, Jan 09, 2026 at 05:43:31PM +0800, Tzu-Hao Wei wrote:
> Add SriNavmani, Prasad and me as maintainers for Axiado AX3000 eMMC PHY
> driver
> 
> Signed-off-by: Tzu-Hao Wei <twei@axiado.com>
> ---
>  MAINTAINERS | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index a0dd762f5648b7e4e6fc62560662e43720422e01..6d1af11eb289ffb7c0d8634ac7d8f903aed1799c 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -4250,6 +4250,16 @@ W:	https://ez.analog.com/linux-software-drivers
>  F:	Documentation/devicetree/bindings/hwmon/adi,axi-fan-control.yaml
>  F:	drivers/hwmon/axi-fan-control.c
>  
> +AXIADO EMMC PHY DRIVER
> +M:	SriNavmani A <srinavmani@axiado.com>

No activity:
https://lore.kernel.org/all/?q=f%3Asrinavmani%40axiado.com

> +M:	Tzu-Hao Wei <twei@axiado.com>
> +M:	Prasad Bolisetty <pbolisetty@axiado.com>

No reviews:
https://lore.kernel.org/all/?q=f%3Apbolisetty%40axiado.com

Are these maintainers going to actually maintain code? At least Prasad
should provide proper review now.

> +L:	linux-phy@lists.infradead.org (moderated for non-subscribers)
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/phy/axiado,ax3000-emmc-phy.yaml

> +F:	drivers/phy/axiado/Kconfig
> +F:	drivers/phy/axiado/phy-axiado-emmc.c

If you are a maintainer of Kconfig you imply you maintain everything, so
simply entire directory...


Best regards,
Krzysztof



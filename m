Return-Path: <devicetree+bounces-34408-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C459839A8E
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 21:50:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 25D5E282202
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 20:50:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FDA14C81;
	Tue, 23 Jan 2024 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NvZm30Ik"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38ED14403;
	Tue, 23 Jan 2024 20:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706043034; cv=none; b=e0l2HGqi66jeLGuWq1ny9+g+NJ0pVHDqlbtcxG4aaCaslXDf8ntRpzENoFCxX6F3Lm5qUHd5ioVyvXAVkk0KIZ0pGljQ8cbdkC3G4iR4dZ4O7PO8BXqxyVvcNg3QzZaQp6dt8ya9ZwXGySqYFeOcBwPpdVKw+LKTSa0TuHyG9VA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706043034; c=relaxed/simple;
	bh=MYddOfrG4LOTcyvzHKRcFXsA6OLpJzlhOr/O3WNYetY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=p7L1wpskossdvv9QIMxHIMcctG8ThpIgZSAUOQorI2+cMW7i4nLucUw/tBYMb8T72nB1fnCsPN4m/A9tRrYzp4+BsQ6w/w51AIofwtaC9nWVHmhPP/J9uPABQFB+WAJb61q85PGRtirD3zqHhO0mMfFTS/z0tzf+qxW0PeRGCxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NvZm30Ik; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 80ACCC433F1;
	Tue, 23 Jan 2024 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706043033;
	bh=MYddOfrG4LOTcyvzHKRcFXsA6OLpJzlhOr/O3WNYetY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NvZm30IkyvfCAZlVER5qlDaInlsI0WB1/yuf1au0OGjfmgUAKZC85cm7qSrDyfes5
	 Eq3BDkTQQUsiv6oRNzKe2XffR3Mlop4TKkO0FBYr1jfk4b6kZ3Y4GsG39upbsgkSk1
	 /oe39y8OzmTCo9hRmNkPjLrL54FoGz6mxWzeWVQoSv9Dx+PqRn503/LtbaC3jp5ceA
	 xhlThuRnkWFyfsAuV76+wjGpNUV2WU98x5SP9pUbWp5HxZq4KOunZ9fdiquKMOuKzm
	 xmiSCeJFJdnK2mUhTpQMk7rynrPBORDBwJXZ2ASK+JMJ9d/l7PgG5Tv+jlRV2REBjX
	 ZHv9Emql5iB0A==
Date: Tue, 23 Jan 2024 14:50:31 -0600
From: Rob Herring <robh@kernel.org>
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: daniel.lezcano@linaro.org, tglx@linutronix.de,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
	linux-imx@nxp.com, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH 1/2] dt-bindings: timer: nxp,sysctr-timer: support i.MX95
Message-ID: <20240123205031.GA1890036-robh@kernel.org>
References: <20240122092225.2083191-1-peng.fan@oss.nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240122092225.2083191-1-peng.fan@oss.nxp.com>

On Mon, Jan 22, 2024 at 05:22:24PM +0800, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> i.MX95 System counter module has similar design as i.MX93, so add
> fallback compatible with nxp,sysctr-timer
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  .../devicetree/bindings/timer/nxp,sysctr-timer.yaml         | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/timer/nxp,sysctr-timer.yaml b/Documentation/devicetree/bindings/timer/nxp,sysctr-timer.yaml
> index 2b9653dafab8..4f0b660d5ce3 100644
> --- a/Documentation/devicetree/bindings/timer/nxp,sysctr-timer.yaml
> +++ b/Documentation/devicetree/bindings/timer/nxp,sysctr-timer.yaml
> @@ -18,7 +18,11 @@ description: |
>  
>  properties:
>    compatible:
> -    const: nxp,sysctr-timer
> +    oneOf:
> +      - const: nxp,sysctr-timer
> +      - items:
> +          - const: nxp,imx95-sysctr-timer
> +          - const: nxp,sysctr-timer

Based on the driver changes, imx95 is not compatible with the existing 
hardware. Different register layout equals not compatible.

Rob


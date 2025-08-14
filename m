Return-Path: <devicetree+bounces-204842-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B8308B27089
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 23:04:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CE35D1BC7418
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 21:04:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 465C7272E42;
	Thu, 14 Aug 2025 21:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k9UbsbGD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B2026D4DD
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 21:04:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755205463; cv=none; b=T/7eRfFHqBaDKwy/DR98AxSKD2QpXehAdn6xsQNEH4U9Cus39LLD747Y/gonzjEyvK2e4kF+dBnWgr4EFX7xB7T+u7an3KTs+1Al/6xwM3sR3/Ar344uBPEvPvUIVkDUjR8bXGujumniUl2mfbLIu2xatiEtfK34q2Vrhjpn69U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755205463; c=relaxed/simple;
	bh=n13b5HQISlhA/70Cv5syYWGpEOsvm9HFOMaW2LiyC80=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cpMTxh7bzvJE4dzUXHkw19tkRILwuLwqRUop7LH8Mm9Dp8xAQj4BIQYhVLQtwBuXaff+oTqENC4jvLX+vxH/VVM4aHs0X5VORFteOFxs+stMtkCY1Kwtiu5bWoZyLM3up3X6KJsw+AGfJex4Aj/3Hy2rsA5rXexMQIQzrj+widc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k9UbsbGD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 848BFC4CEED;
	Thu, 14 Aug 2025 21:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755205462;
	bh=n13b5HQISlhA/70Cv5syYWGpEOsvm9HFOMaW2LiyC80=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=k9UbsbGDQ8YDvU1zxj6IvmOWierLnzXIcfTj3I2z/1kvlZY07CSJlxgWGOgfN+E55
	 v/ZSrVKkZhTd89dB0WnoF1gqw3tKLCvj91Ep5lRM3qrqScJ74CKxB2AXYJTKSOcJ06
	 uoll0I5NMxa+EARnlcD4UEHyzrCBRJphjw+0cEj1tpCEIE9H6WCq7JlgvVRWCWzo31
	 FCir+mFiK9iVYCEDi4b9uODINZbPHRU21kTuMn9stDif9DP/iINjhWVwRTYKoBdoOR
	 0L+nOrI7kT7XnKk3VhVC+BRtLCmqyyGLdY2sELoEwSoCKJMkrVxmIcJ42Ky5ItzbjQ
	 jDn0c1lNYmcrA==
Date: Thu, 14 Aug 2025 16:04:21 -0500
From: Rob Herring <robh@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Linus Walleij <linusw@kernel.org>, Imre Kaloz <kaloz@openwrt.org>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/3] dt-bindings: arm: List actiontec devices
Message-ID: <20250814210421.GB3905129-robh@kernel.org>
References: <20250814-ixp4xx-mi424wr-dts-v1-0-b7c10f3c4193@linaro.org>
 <20250814-ixp4xx-mi424wr-dts-v1-2-b7c10f3c4193@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250814-ixp4xx-mi424wr-dts-v1-2-b7c10f3c4193@linaro.org>

On Thu, Aug 14, 2025 at 06:40:04PM +0200, Linus Walleij wrote:
> One two IXP4xx device families from OpenWrts backlog:
> Actiontec MI424WR revision A/C and revision D, both
> of these are IXP4xx devices.

Also, 'ixp4xx' should be in the subject.

> 
> Revisions E and later use different chipsets.
> 
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
>  Documentation/devicetree/bindings/arm/intel-ixp4xx.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/intel-ixp4xx.yaml b/Documentation/devicetree/bindings/arm/intel-ixp4xx.yaml
> index d60792b1d995f909f621b3326e62d19223f6683c..b7b430896596aacb792983d8538b84f389cc5bd1 100644
> --- a/Documentation/devicetree/bindings/arm/intel-ixp4xx.yaml
> +++ b/Documentation/devicetree/bindings/arm/intel-ixp4xx.yaml
> @@ -16,6 +16,8 @@ properties:
>      oneOf:
>        - items:
>            - enum:
> +              - actiontec,mi424wr-ac
> +              - actiontec,mi424wr-d
>                - adieng,coyote
>                - arcom,vulcan
>                - dlink,dsm-g600-a
> 
> -- 
> 2.50.1
> 


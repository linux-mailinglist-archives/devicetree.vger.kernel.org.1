Return-Path: <devicetree+bounces-204841-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A802B27086
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 23:03:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 843D8565B9A
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 21:03:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 972E6247287;
	Thu, 14 Aug 2025 21:03:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W+MNVYCU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72D57481DD
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 21:03:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755205427; cv=none; b=PcdVi7gFtBo/uqJ5eW6WamISByFn2nHoKSmlDmATnqATqyCUyJ18eeZRjhqlM/Rk3cxOqlHr3wvhgjK2Kmqfo4ON4udofvm96UkCxrwoO/N8/Sei9mBEkUpat8sNln5/KuT4/DjIObMTKu4fxur9qHTq5ui0yl0dwY1eR7KyYp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755205427; c=relaxed/simple;
	bh=/cMIpvVKVnuyA7oJNfhFxhtMLJRGewWERCpdem8N3co=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mhVfe/uzVa32vfDu3PYEG/uZj5yQ3cG0lzlrHFefOpT8bI2d0uk29ZHA53MMsQT8i9zZOOtUJmTWMbg+vnE3KGVT9gkI3cnDwPvR9kcuSxmEKW/oz79qDV1D/+mT4dxDcSeBQcufE+Qqy8XM2FP+d7VS44G7ssjFF7t7VUcKhAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W+MNVYCU; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 95C74C4CEED;
	Thu, 14 Aug 2025 21:03:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755205426;
	bh=/cMIpvVKVnuyA7oJNfhFxhtMLJRGewWERCpdem8N3co=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=W+MNVYCUJLQBc1yK3Cc8ydKZ9H12nGPrcgFKWMP1vAYJzC2tZj8gx6g8cYrk8q394
	 FMRzyJifExSgLEtFxzycID4AguyW7K0Esvv/juQ86Tr+rwy2mZ8kzlh1sMrCJnuRXu
	 QT8Jvn9a/nRtPQP0ffsQIvm2lmn8ATVoPHOsA0wkRRFJ9lOm/z1NT+GLgvdRPj3SsZ
	 iVEDgMJ0c86KKXWxTKE+3DwL31kWKiO/oZYJZGxvEGZj4tdl5/IRkq8jKqltbUeMrx
	 PkQNmNxCa9NEh4Ld8WhCl3CJA6YBWwaOat1fv11RXZ/QnkOp7RPVTx4CXg+RlyCZxz
	 tgQv0JTSmEiPQ==
Date: Thu, 14 Aug 2025 16:03:45 -0500
From: Rob Herring <robh@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Linus Walleij <linusw@kernel.org>, Imre Kaloz <kaloz@openwrt.org>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/3] dt-bindings: arm: List actiontec devices
Message-ID: <20250814210345.GA3905129-robh@kernel.org>
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

One two?

OpenWrt's

> Actiontec MI424WR revision A/C and revision D, both
> of these are IXP4xx devices.
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


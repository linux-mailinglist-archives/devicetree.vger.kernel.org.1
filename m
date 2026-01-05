Return-Path: <devicetree+bounces-251369-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C7D8ACF25F7
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 09:23:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7314C301B831
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 08:21:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF5FD312836;
	Mon,  5 Jan 2026 08:21:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VSJLZexM"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 947A1311975;
	Mon,  5 Jan 2026 08:21:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767601271; cv=none; b=Z1aoWEKpnIhP0AP2TgeiWO63wnMu3lEp7IesAee2/HD1elAr6w+ULm+O6x14A/SnoKRKBDSAfFT4CoQcqGq+L3BSv1b77w1D5AfH9h83hxh/pRFAx/j9h3magJgYa+lJxxLbead8lvOnZj2u1t6E3V56/BIrvnRcqI78HVB4EqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767601271; c=relaxed/simple;
	bh=kQa1JNevuS+WPQwMFKC10iMoFprepPCs6UnztP+Yvm0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WxKiSLq2T9+K3U+usczDNpcDkhVANiBwRICfxqMS7whm6kKAyctvHd7wv2pxKFUuIpQedUoiabeznkKYhH8Od8XYBO7w2jp5SGpwzxbFCzTeYDW/wU/CsjqDy4TDrccp46cBIjK9KezO2CoWjcUP/LV25Be64716cGokXZeQTiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VSJLZexM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9D598C116D0;
	Mon,  5 Jan 2026 08:21:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767601271;
	bh=kQa1JNevuS+WPQwMFKC10iMoFprepPCs6UnztP+Yvm0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VSJLZexM6M27vNabMDwaDO1NI+4+jaFTCFv1S1ArgSojVwRubHSepKOec7c3E1QLE
	 V3W5euo9MAEUKY/EZXB2QDRIBCOAyZYBpgZhVg3p9TL9RcXoAzx270lVGCO28cOCwz
	 MMsf0wnPv4P53gZAKmSncBJs8xvU6CO3rLmiqRG/kI3PUN8ttNGCy8VtfVm4qFfIeF
	 RoXXf23TuexE2Ttso1YexVK6IOLn4JGG4fxGdzi0S7KsoxLpmkJ/CmLs+Woqsas5p1
	 5ZhW0i93eICmzzjOqwK4H/LaZTQm4+YmfwA/V9sozZwXGInl3wxrW3a0Xmss4ShJrL
	 OMl5xX9eMSItA==
Date: Mon, 5 Jan 2026 09:21:08 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Gary Yang <gary.yang@cixtech.com>
Cc: peter.chen@cixtech.com, fugang.duan@cixtech.com, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-cix-kernel-upstream@cixtech.com, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: cix: add OrangePi 6 Plus board
Message-ID: <20260105-excellent-uakari-of-joy-f0dfa4@quoll>
References: <20260104075400.1673101-1-gary.yang@cixtech.com>
 <20260104075400.1673101-2-gary.yang@cixtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260104075400.1673101-2-gary.yang@cixtech.com>

On Sun, Jan 04, 2026 at 03:53:59PM +0800, Gary Yang wrote:
> OrangePi 6 Plus adopts CIX CD8180/CD8160 SoC, built-in 12-core 64-bit
> processor + NPU processor,integrated graphics processor, equipped with
> 16GB/32GB/64GB LPDDR5, and provides two M.2 KEY-M interfaces 2280 for NVMe
> SSD,as well as SPI FLASH and TF slots to meet the needs of fast read/write
> and high-capacity storage
> 
> Signed-off-by: Gary Yang <gary.yang@cixtech.com>
> ---
>  Documentation/devicetree/bindings/arm/cix.yaml | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/arm/cix.yaml b/Documentation/devicetree/bindings/arm/cix.yaml
> index 114dab4bc4d2..9e132e609b7b 100644
> --- a/Documentation/devicetree/bindings/arm/cix.yaml
> +++ b/Documentation/devicetree/bindings/arm/cix.yaml
> @@ -16,9 +16,16 @@ properties:
>    compatible:
>      oneOf:
>  
> -      - description: Radxa Orion O6
> +      - description: Radxa Orion O6 board
>          items:
> -          - const: radxa,orion-o6
> +          - enum:
> +              - radxa,orion-o6
> +          - const: cix,sky1
> +
> +      - description: Xunlong orangepi 6 plus board
> +        items:
> +          - enum:
> +              - xunlong,orangepi-6-plus

Previous patch was correct, not this one.

<form letter>
This is a friendly reminder during the review process.

It looks like you received a tag and forgot to add it.

If you do not know the process, here is a short explanation:
Please add Acked-by/Reviewed-by/Tested-by tags when posting new
versions of patchset, under or above your Signed-off-by tag, unless
patch changed significantly (e.g. new properties added to the DT
bindings). Tag is "received", when provided in a message replied to you
on the mailing list. Tools like b4 can help here. However, there's no
need to repost patches *only* to add the tags. The upstream maintainer
will do that for tags received on the version they apply.

Please read:
https://elixir.bootlin.com/linux/v6.12-rc3/source/Documentation/process/submitting-patches.rst#L577

If a tag was not added on purpose, please state why and what changed.
</form letter>

Read last sentence and linked documentation. Where did you explain
ignoring/dropping my tag?

Best regards,
Krzysztof



Return-Path: <devicetree+bounces-55712-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DB928961D0
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 03:15:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3113E1C22238
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 01:15:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 214FCFC01;
	Wed,  3 Apr 2024 01:15:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="otPkQs9R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-177132.yeah.net (mail-177132.yeah.net [123.58.177.132])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C930833E1
	for <devicetree@vger.kernel.org>; Wed,  3 Apr 2024 01:15:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=123.58.177.132
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712106952; cv=none; b=OLLRj33WEHpD+x5/2o1Jb7NxjdNSMY7RM/RDtirHFm4qKP3l6n9Va0PYFaJb1JqkQ9fYzMCMk7YIzhF7k5ScFDo1ArdwjbjsnbsVUvthlqy0LdVllO0YnGG32o6DaocJcmIMS7ate3OQu7T9AEih4lEOgqOM6YwU4MOd2twvUNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712106952; c=relaxed/simple;
	bh=dWBHMCmaitAP48db4fAIbcveiAUCQHjT59JZeexowBc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=N4ILdOnttg7b1qameCnlmNa+4IVwAta8yW76PS5NcLMto82pCaZc/suLVzSxAHyanABa3BU0+7gl9EWEOBFl67XGDTt9lDIw2LPyFEhA+CQKU9yKjtCzmCYdeBqDUvddWEKq57pFDZ6BouP00NGAoIVA1hjeu6MnJtUbAEkHa4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=otPkQs9R; arc=none smtp.client-ip=123.58.177.132
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=ELALI0ShQWbaJT/YcQMzlTzqIqgf0G8wMIxnIcbfiEo=;
	b=otPkQs9RyhbGWBBwpBPiZXIeVxLXAZhJNiU9DE0r2iY/Zn9UhtA3+uzVzKP4ts
	S0jSn7HFrvuVF5YqA/p/po6QFe75xG1aMlZF+9vOa+rxQcmQt2eNJZBDvxbta1Bn
	QxUXCVsM8pOTTMIFciyreShbSyFdaXDzRu0xCUMZ16Fbw=
Received: from dragon (unknown [223.68.79.243])
	by smtp2 (Coremail) with SMTP id C1UQrADnD1CprQxmgt6yAg--.10300S3;
	Wed, 03 Apr 2024 09:15:23 +0800 (CST)
Date: Wed, 3 Apr 2024 09:15:21 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Gilles Talis <gilles.talis@gmail.com>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, robh@kernel.org,
	shawnguo@kernel.org, festevam@gmail.com, alex@voxelbotics.com,
	andrew@lunn.ch
Subject: Re: [PATCH v2 0/3] Add support for Emcraft Systems NavQ+ kit
Message-ID: <ZgytqXy/S63iXbTD@dragon>
References: <20240330133410.41408-1-gilles.talis@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240330133410.41408-1-gilles.talis@gmail.com>
X-CM-TRANSID:C1UQrADnD1CprQxmgt6yAg--.10300S3
X-Coremail-Antispam: 1Uf129KBjvdXoW7GFyrurWfuw13KryrZF15twb_yoWfCwb_ur
	WkAa1fZr4DJr48Ka10ya18XrWYkFWaqrW3A34Dtw1fKFy7ZFZ3trZ7GrnY9w18CrW8uF9F
	vr17JrZY9Fy3GjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU0tl1DUUUUU==
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiDRC1ZVszXX8yJQAAsQ

On Sat, Mar 30, 2024 at 09:34:07AM -0400, Gilles Talis wrote:
> Hello
> 
> This series adds a device tree file for the Emcraft Systems NavQ+ kit [1]
> 
> The first patch adds a new vendor prefix for Emcraft Systems
> The second one adds the board to the arm/fsl.yaml DT bindings.
> Last patch adds device tree file for the kit.
> 
> [1] https://www.emcraft.com/products/1222
> 
> Changes in v2:
> - Add Acked-by review tags
> - Fixed device tree warnings reported by dtbs_check
> - Reworked leds node
> - Remove unused i2c6 pinctrl entry
> - Removed unused regulator node in Ethernet entry
> - Link to v1: https://lore.kernel.org/imx/20240328202320.187596-1-gilles.talis@gmail.com/
> ---
> Gilles Talis (3):
>   dt-bindings: vendor-prefixes: Add Emcraft Systems
>   dt-bindings: arm: Add Emcraft Systems i.MX8M Plus NavQ+ Kit
>   arm64: dts: freescale: Add device tree for Emcraft Systems NavQ+ Kit

Applied all, thanks! 



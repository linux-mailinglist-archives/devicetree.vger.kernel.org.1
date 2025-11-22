Return-Path: <devicetree+bounces-241339-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E3F90C7CE4F
	for <lists+devicetree@lfdr.de>; Sat, 22 Nov 2025 12:30:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 953974E1A6A
	for <lists+devicetree@lfdr.de>; Sat, 22 Nov 2025 11:30:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 077232FE04E;
	Sat, 22 Nov 2025 11:30:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p1x4E8ea"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEA862FDC53;
	Sat, 22 Nov 2025 11:30:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763811054; cv=none; b=ueEV4rN6+GqvXZ2iUqxuKqELT5x/wH0krCFJYtuDWoRS/DQ5TYRm+8TW2eHEl5bqdLDNr10itUno68gEdQBmC74ie9jLW0mMoeZIIqukLhbUo8UcoiHm77hRQfXcWtfR77bGsAs3erZ+E/DR+hF/MB+Wl42OqoOWI0pmBQmHI+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763811054; c=relaxed/simple;
	bh=wrwqhdFSmRHFPHwVpL5Z/tLTITU5aRbOkeIbdOHN3hI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Rg1vBFoqY+eV/rBlCSk/DKSZ3rxZF36P3RHy0suPhAbKlpoTwlGC9+dQVxB+DucfKm6AMwwPeAe5yfSTQkS9DUWYnCCipownmhIQJzbqrIPEg0iTiLAuPBMLM7BsgPTNOD1XFIWaXYO8tSrkF/FYu34Nvrn6TGLe0zI3NSl6/4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p1x4E8ea; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C871EC4CEF5;
	Sat, 22 Nov 2025 11:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763811054;
	bh=wrwqhdFSmRHFPHwVpL5Z/tLTITU5aRbOkeIbdOHN3hI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=p1x4E8earpihvpn8f81tbqyWQc7odBC+S0Nkend+pVMUFjYmIafNN6Ym/glFgGjH3
	 kITBRQ0u9Z3OvnMFFoKpmmAwhEA1dqxQtgXoXuB44xmJj7eS7Q9fYhgjkj4n2s1cYj
	 tM6kuvB8CU+5vfswINwR3WXvytZABQYutxhkiGkpXkH7Ofm0YIks3SQYjJMrM4JdTw
	 kQOuKXugEN5T0GzWWXC1n8ss59zpNK9RwwZ/BnL5NJQ6jz3e5Zlk1nrtk8M1a36VQ1
	 guDXOgxP3qTIcboI6/CQWhUK8Ru6G7qsZrVkc6nOz8/kzpPT54yBWNzO9lIHksdsXg
	 ecetv0PX1SonA==
Date: Sat, 22 Nov 2025 12:30:51 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Cc: Rob Herring <robh@kernel.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Miquel Raynal <miquel.raynal@bootlin.com>, 
	Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
	=?utf-8?Q?Beno=C3=AEt?= Monin <benoit.monin@bootlin.com>, =?utf-8?B?VGjDqW8=?= Lebrun <theo.lebrun@bootlin.com>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mtd@lists.infradead.org
Subject: Re: [PATCH v2 1/3] of: reserved_mem: Support multiple 'reg' entries
 for memory-region
Message-ID: <20251122-spicy-chupacabra-of-joy-ec1ee0@kuoka>
References: <20251121-mtd-memregion-v2-0-c5535fdcebe4@bootlin.com>
 <20251121-mtd-memregion-v2-1-c5535fdcebe4@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20251121-mtd-memregion-v2-1-c5535fdcebe4@bootlin.com>

On Fri, Nov 21, 2025 at 04:42:35PM +0100, Gregory CLEMENT wrote:
> + * This function allows drivers to lookup a node's 'memory-region' property
> + * entries by index and fill an array of struct resource pointers for the entries.
> + *
> + * Returns the number of resources filled in @res on success.
> + * Returns -ENODEV if 'memory-region' is missing or unavailable,
> + * -EINVAL for any other error.
> + */
> +int of_reserved_mem_region_to_resource_array(struct device *dev, const struct device_node *np,
> +					     unsigned int idx, struct resource **res)
> +{
> +	struct reserved_mem *rmem[MAX_RESERVED_REGIONS];
> +	int count, i;
> +	struct resource *r;
> +
> +	if (!np)
> +		return -EINVAL;
> +
> +	struct device_node __free(device_node) *target = of_parse_phandle(np, "memory-region", idx);

Odd cleanup placement. Please read cleanup.h. Also please run checkpatch
because it told you this - marked it as ERROR.

Best regards,
Krzysztof



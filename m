Return-Path: <devicetree+bounces-247296-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 16041CC69C6
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 09:38:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 24530300A342
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 08:38:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A4E8336ED9;
	Wed, 17 Dec 2025 08:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZGnkKpV2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24816335BD5;
	Wed, 17 Dec 2025 08:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765960714; cv=none; b=dMURNE8C4TTfaECaKY+FZavC69oTlAeYt4+RsF+XKs4o5VAyCEo3HHaIDo6BsjuizZnamVd1WjtZzK7MvbyEewlYGTKj+FKLjmASBTV1/PrcMnHwvbX9peISeyCadrZ15vule84cgapK1+qmBkTjmy6hHYTcMJzB7tYzmn/VF9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765960714; c=relaxed/simple;
	bh=SEK/Xv/Xpl1SB8LM/NKk5Oox72KsTiMyeOEPmpwl2Jg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=teUmjGjZyOEhTBcYj64f1X9lIJftXvQSTHyCCOjGsQ+9bdOZl1ueR/K1w8nfk13xCjklMvkv+rTV+pYEL9X/P9WoI6sw7xu5AId7NJ6tPXWkK9rrtehipmqrZ29iFMXVZrNwc7QNzE5DZwRTNSq6mZIDmOZIoHy1xlFUq2zUcXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZGnkKpV2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6F371C4CEF5;
	Wed, 17 Dec 2025 08:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765960714;
	bh=SEK/Xv/Xpl1SB8LM/NKk5Oox72KsTiMyeOEPmpwl2Jg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZGnkKpV2D3o8VjP+EFMXDZJCBrR4/A1B7x+1gZzdquyGkCynph7xWWEcSoois7nEL
	 N/Fpz80eBfX63qEt881a4/ji2jVta/Z1riZFlgfrsP8DXi9NwiXAYKS5VesBcLqzrU
	 1Dg4eXua9UczMKDOqVOx/HBA35vs/uocPrDye3XcqyWPS87W4el6XmX9d2Sg8stedu
	 NoAkDOSnMhz4RlEs/CdQsOtgo9UPdbdMI2hVCJJ3+JPgAc2frvMBEQWhHOVbR1lzfy
	 1eqf+AhUjXpWJJeWttIYzGJVvzaRzF/zpNXsUltVP6QI1ShPtspIBj+4WjV2o4tiIJ
	 aSf0kpmmtmRAQ==
Date: Wed, 17 Dec 2025 09:38:31 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Manikandan Muralidharan <manikandan.m@microchip.com>
Cc: lee@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com, 
	claudiu.beznea@tuxon.dev, dharma.b@microchip.com, maarten.lankhorst@linux.intel.com, 
	mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH 1/2] dt-bindings: mfd: atmel,hlcdc: Add sama7d65
 compatible string
Message-ID: <20251217-secret-beluga-of-patience-3ba530@quoll>
References: <20251215090639.346288-1-manikandan.m@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20251215090639.346288-1-manikandan.m@microchip.com>

On Mon, Dec 15, 2025 at 02:36:38PM +0530, Manikandan Muralidharan wrote:
> Add LCD compatible string for sama7d65.
> 
> Signed-off-by: Manikandan Muralidharan <manikandan.m@microchip.com>
> ---
>  Documentation/devicetree/bindings/mfd/atmel,hlcdc.yaml | 1 +
>  1 file changed, 1 insertion(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof



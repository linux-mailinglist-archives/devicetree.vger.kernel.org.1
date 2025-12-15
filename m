Return-Path: <devicetree+bounces-246663-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D215CBEBA4
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 16:46:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 879D730022C7
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 15:46:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1BE04C6D;
	Mon, 15 Dec 2025 15:46:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nDPtDi6y"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9F7030B518;
	Mon, 15 Dec 2025 15:46:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765813574; cv=none; b=PmdB7PuGj9qxhaq9zbofcjGRYtqADgsMNyPZqlgi0dazbk11tFn8AbCxlBRkISapwwfR5bZWFjRj0XI/fxpAnWcJCgwM28AEm0Ge7IFESYhuoHgKba+6fFHGO1zIeBAfz0GYTq2W+bC1ZbpLoASEzM+wo1BenzMBVdJD2xkfUbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765813574; c=relaxed/simple;
	bh=RBcP/eSO2QNmdalyQxiVfyGHG3izklUqdyBs1bazKGM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SGVBcRI+u3wNZpkUwUILGsyX5MiZn/muVEWpd/jG1wa8magkYk5YMCuMDtDqQZE3FpZ0UKQgx+/Y9ofzU+u0iW6XpNX4iyG0V7cGGbS8dFmwZJPyICKJuaWXXfiuIK92yTXoQd8X9usEQ9Vud3j+BdRLbNeg0ITBPVrtQHqnYPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nDPtDi6y; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A2B4C116B1;
	Mon, 15 Dec 2025 15:46:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765813574;
	bh=RBcP/eSO2QNmdalyQxiVfyGHG3izklUqdyBs1bazKGM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nDPtDi6y6AReGXrwzZJU/MPynvSNnFn5P2VOXFwC3Q9DsyOxbJ4JcLQ73AC6qQgiM
	 RP2AdeMar9cJeS2YDWlNJMkECGX6sdIX2XPNRXldvL3HcOISkbsc5GGD87quvhyUKa
	 +MIaCU9wQumdmwhmraFETLzSMIyOQmJHoCV9ILIT0FyQCnm0GVdpNDCRIxvaIsMuYx
	 EZJqvmAEzQvWYzkTPf3Hff2OvEPkNTQ/CuFuC3AUAII53L3G16SPofInDiAwlOxNrq
	 6xL/7RrJda1tfFINlnHJJwHBkK7wTqOSq1SY9DmtxHXXxJpkY1sqNCol7w4LbM84hw
	 W7+yEkobgRV1A==
Date: Mon, 15 Dec 2025 15:46:07 +0000
From: Lee Jones <lee@kernel.org>
To: Manikandan Muralidharan <manikandan.m@microchip.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
	claudiu.beznea@tuxon.dev, dharma.b@microchip.com,
	maarten.lankhorst@linux.intel.com, mripard@kernel.org,
	tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
	Ryan Wanner <Ryan.Wanner@microchip.com>
Subject: Re: [PATCH 2/2] drm: atmel-hlcdc: add LCD controller layer
 definition for sama7d65
Message-ID: <20251215154607.GE9275@google.com>
References: <20251215090639.346288-1-manikandan.m@microchip.com>
 <20251215090639.346288-2-manikandan.m@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251215090639.346288-2-manikandan.m@microchip.com>

On Mon, 15 Dec 2025, Manikandan Muralidharan wrote:

> From: Ryan Wanner <Ryan.Wanner@microchip.com>
> 
> Add the LCD controller layer definition and atmel_hlcdc_of_match
> entry for sama7d65.
> 
> Signed-off-by: Ryan Wanner <Ryan.Wanner@microchip.com>
> Signed-off-by: Manikandan Muralidharan <manikandan.m@microchip.com>
> ---
>  drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c | 81 ++++++++++++++++++++

>  drivers/mfd/atmel-hlcdc.c                    |  1 +

Please separate this into its own patch.

>  2 files changed, 82 insertions(+)

-- 
Lee Jones [李琼斯]


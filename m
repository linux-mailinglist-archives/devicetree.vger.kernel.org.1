Return-Path: <devicetree+bounces-175655-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CAC67AB16FF
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 16:15:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1DD0C5264D4
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 14:15:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A88D2957A7;
	Fri,  9 May 2025 14:14:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBA7F29550F
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 14:14:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746800098; cv=none; b=CcHH3cYGO2owN+jcQF5NFHSRI/pZ4GpCFDboQdoMvfFQCAN4vzgRtC1FEwVH+jkb+jo+d8PhxORYuMcbMkGKCR3OiN+j2K0TXYCRkumuGrNveMbdxNENboE/Ve862ocrmLFJ1uYVnvNDnZPX3d1Mw1RJSTmo/Jr2G4UopxlBShY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746800098; c=relaxed/simple;
	bh=s6AFNKfhOUQxhPErK+VYvRCi85O52tCQXQ7zgRuE+RA=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=hmSgYMhRvplCgrkeafX90qKPTwkZtTIxiEHO/goWQI1dVF8oPrf+wMdjumuXgzYmlWAaUV6y3DdH6XO75R2BME6GyV3KnjX2EAogHN8DM3CZqZwMF/wb4kz0/pBg0xcKDrdMpLc/U8D+h7SMe9b7Tx/vnSnKJbK12d2pjbeuFik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3A2A61595;
	Fri,  9 May 2025 07:14:44 -0700 (PDT)
Received: from donnerap.manchester.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7B3413F5A1;
	Fri,  9 May 2025 07:14:52 -0700 (PDT)
Date: Fri, 9 May 2025 15:14:48 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org, ryan@testtoast.com,
 macromorgan@hotmail.com, p.zabel@pengutronix.de, tzimmermann@suse.de,
 maarten.lankhorst@linux.intel.com, simona@ffwll.ch, airlied@gmail.com,
 mripard@kernel.org, samuel@sholland.org, jernej.skrabec@gmail.com,
 wens@csie.org, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org
Subject: Re: [PATCH V9 02/24] clk: sunxi-ng: h616: Add LVDS reset for LCD
 TCON
Message-ID: <20250509151448.3191a3d8@donnerap.manchester.arm.com>
In-Reply-To: <20250507201943.330111-3-macroalpha82@gmail.com>
References: <20250507201943.330111-1-macroalpha82@gmail.com>
	<20250507201943.330111-3-macroalpha82@gmail.com>
Organization: ARM
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Wed,  7 May 2025 15:19:21 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

Hi,

despite the slightly ill fate of this series, I was wondering if we could
get the non-controversial clock parts for instance already merged, to
reduce the number of patches and mitigate the churn with dependencies?

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add the required LVDS reset for the LCD TCON. Note that while this
> reset is exposed for the T507, H616, and H700 only the H700 has
> an LCD controller.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Signed-off-by: Ryan Walklin <ryan@testtoast.com>

Matches the T507 manual:

Reviewed-by: Andre Przywara <andre.przywara@arm.com>

Cheers,
Andre

> ---
>  drivers/clk/sunxi-ng/ccu-sun50i-h616.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/clk/sunxi-ng/ccu-sun50i-h616.c b/drivers/clk/sunxi-ng/ccu-sun50i-h616.c
> index daa462c7d477..955c614830fa 100644
> --- a/drivers/clk/sunxi-ng/ccu-sun50i-h616.c
> +++ b/drivers/clk/sunxi-ng/ccu-sun50i-h616.c
> @@ -1094,6 +1094,7 @@ static const struct ccu_reset_map sun50i_h616_ccu_resets[] = {
>  	[RST_BUS_TCON_LCD1]	= { 0xb7c, BIT(17) },
>  	[RST_BUS_TCON_TV0]	= { 0xb9c, BIT(16) },
>  	[RST_BUS_TCON_TV1]	= { 0xb9c, BIT(17) },
> +	[RST_BUS_LVDS]		= { 0xbac, BIT(16) },
>  	[RST_BUS_TVE_TOP]	= { 0xbbc, BIT(16) },
>  	[RST_BUS_TVE0]		= { 0xbbc, BIT(17) },
>  	[RST_BUS_HDCP]		= { 0xc4c, BIT(16) },



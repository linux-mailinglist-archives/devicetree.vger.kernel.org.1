Return-Path: <devicetree+bounces-152141-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CD794A482E9
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 16:27:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A55F93B4CD0
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 15:27:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A786D26B2D9;
	Thu, 27 Feb 2025 15:27:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB12A2356AD
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 15:27:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740670054; cv=none; b=ZsVA0wAqNMEIpbUU+iW9ZINls20rtvrZeDHwlnIFQdsZuAJAhSRXZpPVp0XO2n4DotXI/rgDn8lxX+6a6eWSB3IR76nM9saLIrWqqSMZwAspX8sXIWGw4D7G6t8GYSCSvRQi2WtfWDywkpielQZ5cc27CGRSkkmlxIcglMQwQcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740670054; c=relaxed/simple;
	bh=gum4d8B8kIo09pq7rNh7RAZp5aA8pmQJmAwMW1ddnTs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=To6ybXAFjXnAm6P4OsNIsDN6qk9377sWP4N/e7GiRFuDHIDerINAohUkt2Kp0Fmbc7gbMOsf4MVuSreK6I8ZbLqLgqaind4nZWJoB0Apbx1aby8hUqGlIxa3OKZgT60X9QjU3TaVgT8ljf65bZqEwBMuGHuP1xAnDeKYnf8Js48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D09D815A1
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 07:27:47 -0800 (PST)
Received: from e110455-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 12E473F5A1
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 07:27:31 -0800 (PST)
Date: Thu, 27 Feb 2025 15:27:30 +0000
From: Liviu Dudau <liviu.dudau@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Russell King <linux@armlinux.org.uk>, Will Deacon <will@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Jessica Clarke <jrtc27@jrtc27.com>
Subject: Re: [PATCH v7 01/10] arm64: Kconfig: Update description for
 CONFIG_ARCH_VEXPRESS
Message-ID: <Z8CEYheKAr3VJ8k5@e110455-lin.cambridge.arm.com>
References: <20250221180349.1413089-1-vincenzo.frascino@arm.com>
 <20250221180349.1413089-2-vincenzo.frascino@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250221180349.1413089-2-vincenzo.frascino@arm.com>

On Fri, Feb 21, 2025 at 06:03:40PM +0000, Vincenzo Frascino wrote:
> Update the description and contextually the help text of
> CONFIG_ARCH_VEXPRESS to reflect the inclusion of all ARM Ltd Platforms.
> 
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>

Reviewed-by: Liviu Dudau <liviu.dudau@arm.com>

Best regards,
Liviu

> ---
>  arch/arm64/Kconfig.platforms | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
> index 02f9248f7c84..c468c23b2bba 100644
> --- a/arch/arm64/Kconfig.platforms
> +++ b/arch/arm64/Kconfig.platforms
> @@ -374,13 +374,12 @@ config ARCH_UNIPHIER
>  	  This enables support for Socionext UniPhier SoC family.
>  
>  config ARCH_VEXPRESS
> -	bool "ARMv8 software model (Versatile Express)"
> +	bool "ARM Ltd Platforms"
>  	select GPIOLIB
>  	select PM
>  	select PM_GENERIC_DOMAINS
>  	help
> -	  This enables support for the ARMv8 software model (Versatile
> -	  Express).
> +	  This enables support for the ARM Ltd Platforms.
>  
>  config ARCH_VISCONTI
>  	bool "Toshiba Visconti SoC Family"
> -- 
> 2.43.0
> 

-- 
====================
| I would like to |
| fix the world,  |
| but they're not |
| giving me the   |
 \ source code!  /
  ---------------
    ¯\_(ツ)_/¯


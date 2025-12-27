Return-Path: <devicetree+bounces-249871-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C8519CDFD06
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 14:16:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 938F0301143A
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 13:14:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F9533126B3;
	Sat, 27 Dec 2025 13:14:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mgQxRVP4"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47CB98834;
	Sat, 27 Dec 2025 13:14:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766841259; cv=none; b=qxUKkF8bJjE40hTtkNz4CE5D8e4Z9kFNvWs4kovZJA7l2MEw+L+DWxmn2pfZeap966PuIpYBqcQfmxWXR2C0kQeFWML887PTh628H0ogDGJiJZZYJ3OimGmduHsEZ2vvIglWP54zLcJpbnQRSxc2XJbcp9/lUbzMthvDI4/RQ/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766841259; c=relaxed/simple;
	bh=i9LBcbhUDW99QwEkFg6vlArk/fPDmBuTYEKfXVI5PWs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BgMplZgEhkB3EWCOeMCfSoYKgiJ9Vbt0aR5CoN3YvidJnKYKIIFXXRuJvvADkXJBLfeiaDsKzx7ZGyFLHkYibEA26Y/pg5DvJx5X6oLuGWJy371aZkQqhu55OUauId+6giMZpOu5qr22pPwpEjFCu6SwCQoaCqNPu3pRhZpYfOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mgQxRVP4; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5395AC4CEF1;
	Sat, 27 Dec 2025 13:14:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766841258;
	bh=i9LBcbhUDW99QwEkFg6vlArk/fPDmBuTYEKfXVI5PWs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mgQxRVP4eBT71qGFjcoEIKQXWi3MILwIvLOGStTTWUOAK1Wm8fbhP/T6K1cK7WAqj
	 Gv75cNTYCV5SmtPB7vUzopJ5XmjN+iZjGyw6tSJNx6Ya8kVrzgCcj3mIHINRFDXlsD
	 TD6J5RyvHt1ay47El+czNIOFCIeRGPA7ioFmV+nLP05cj0JaL58iAa2KvTV1KYe2dS
	 cshDrz2Ry/zug7YChKnj68qvQgjZ9SxIToOE5OdRoLRN0MNHaxQU0OWycW0w715te1
	 PvBlivimHz11/Zu5TWI4fYqbXON31ejH0D0jJ1433Cl1qjnS3Xwuhbc3xCH+ewduln
	 lsT3by94sGPuQ==
Date: Sat, 27 Dec 2025 14:14:16 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Coiby Xu <coxu@redhat.com>
Cc: kexec@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	Arnaud Lefebvre <arnaud.lefebvre@clever-cloud.com>, Baoquan he <bhe@redhat.com>, Dave Young <dyoung@redhat.com>, 
	Kairui Song <ryncsn@gmail.com>, Pingfan Liu <kernelfans@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, Rob Herring <robh@kernel.org>, 
	Saravana Kannan <saravanak@google.com>, open list <linux-kernel@vger.kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE" <devicetree@vger.kernel.org>
Subject: Re: [PATCH] arm64/kdump: pass dm-crypt keys to kdump kernel
Message-ID: <20251227-funky-swallow-from-pluto-910b9d@quoll>
References: <20251226141116.1379601-1-coxu@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20251226141116.1379601-1-coxu@redhat.com>

On Fri, Dec 26, 2025 at 10:11:15PM +0800, Coiby Xu wrote:
> Based on the CONFIG_CRASH_DM_CRYPT feature, this patch adds

Don't use "this patch". See submitting patches.

> LUKS-encrypted device dump target support to ARM64 by addressing two
> challenges [1],


...

> +static void __init early_init_dt_check_for_dmcryptkeys(unsigned long node)
> +{
> +	const __be32 *prop;
> +
> +	if (!IS_ENABLED(CONFIG_CRASH_DM_CRYPT))
> +		return;
> +
> +	pr_debug("Looking for dmcryptkeys property... ");
> +
> +	prop = of_get_flat_dt_prop(node, "linux,dmcryptkeys", NULL);

Where did you document the ABI?


Best regards,
Krzysztof



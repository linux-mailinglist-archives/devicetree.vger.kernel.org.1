Return-Path: <devicetree+bounces-256598-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B5A9CD39A75
	for <lists+devicetree@lfdr.de>; Sun, 18 Jan 2026 23:19:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4D2AC300509E
	for <lists+devicetree@lfdr.de>; Sun, 18 Jan 2026 22:19:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A532D2C21F6;
	Sun, 18 Jan 2026 22:19:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=xff.cz header.i=@xff.cz header.b="vWfPP1/S"
X-Original-To: devicetree@vger.kernel.org
Received: from vps.xff.cz (vps.xff.cz [195.181.215.36])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73EB72C0F79
	for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 22:19:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.181.215.36
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768774778; cv=none; b=dg3QU979rWShkAJOpxfc5DSi/HTu8NK0ISktBxn9GXlI2zz/STfxQNu0fe1Woy9cigaLi9XTivH6AjfbODYdtl48rXXYPiEFJs5z6GcLDCx1z7fuOvp9B89a6xy5+e+PBiUQhHbxjbIX0+k05Eq7urpo++tuAS8Rg8SliSvLqGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768774778; c=relaxed/simple;
	bh=cblX9jkR3kK0JXIO//SSgI0CBfwe8fL4kkNcudepMJ0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ko1VcM5WDd/6SS3wpDRN/459OfNHnx5nOgtrJgs5+phtZT+MrbyiBFgSEpjKasJaxE0vIde5sMa13YoqWfox90jczf2IJRKgTJCdtNgCTI3THisibfj2qoyQdAPdyTefCZyIoF+EaE+xqazuNp4qqHHokLKxPfoNui+jIPWvmZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=xff.cz; spf=pass smtp.mailfrom=xff.cz; dkim=pass (1024-bit key) header.d=xff.cz header.i=@xff.cz header.b=vWfPP1/S; arc=none smtp.client-ip=195.181.215.36
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=xff.cz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=xff.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1768774766; bh=cblX9jkR3kK0JXIO//SSgI0CBfwe8fL4kkNcudepMJ0=;
	h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
	b=vWfPP1/SdkG+4FnYFWL3VHCXHf0WbRvFr0gkr4FmMYgTMMeYrV5DqPKla2B8NoyhX
	 co7F8vLiA0d5+MnmNKNsMjxB+WCQfwrfg5LQ2F6TWKMb6qvq2iH2JZlEcOBDxXXSdQ
	 OMfMiulyVYt/DMdAXF2GYVsphNhOlAN+IBakeXrw=
Date: Sun, 18 Jan 2026 23:19:26 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: Luis Garcia <git@luigi311.com>
Cc: Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	Olivier Benjamin <olivier.benjamin@bootlin.com>
Subject: Re: [PATCH 0/1] Fix imx258 variant on pinephone pro
Message-ID: <hu2f4zd3qx75h3lj5sjinnj7lwcacpy4ywzbrp53tuch2xe4fd@fzkbs2q3lpbq>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>, 
	Luis Garcia <git@luigi311.com>, Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	Olivier Benjamin <olivier.benjamin@bootlin.com>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20260118214620.3319040-1-git@luigi311.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260118214620.3319040-1-git@luigi311.com>

Hi Luis,

On Sun, Jan 18, 2026 at 02:46:19PM -0700, Luis Garcia wrote:
> imx258 had the driver updated a while back and it introduced
> two variants, the imx258 and imx258-pdaf. The pinephone pro
> is using the pdaf variant so this switches it to the correct
> variant and eliminates the pdaf pixels from the sensor output
> resulting in a much cleaner image.

You don't need a cover letter for a single patch. Also this
description should be in the patch itself.

Thank you,
	o.

> Luis Garcia (1):
>   arm64: dts: rockchip: Fix imx258 variant on pinephone pro
> 
>  arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> -- 
> 2.50.1
> 


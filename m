Return-Path: <devicetree+bounces-91007-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B0179476EB
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2024 10:11:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CB8DF1C21013
	for <lists+devicetree@lfdr.de>; Mon,  5 Aug 2024 08:11:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9B2814900E;
	Mon,  5 Aug 2024 08:11:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="T0fv4flw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [220.197.32.16])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7206413C906
	for <devicetree@vger.kernel.org>; Mon,  5 Aug 2024 08:11:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.16
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722845464; cv=none; b=Pq4pW6nmQ71UM45drrIvSRQ28XxR59wkS42KiUrLEJP0yQjbBN1BvbsP9DT+dz9hS1kJpsxVUNhm5W2g7TMOxpnVu1cF6Rz5Fsn+oRTczxz9p/Pd3wO9OdvLSNWHrCjR7GUStV1vLkFdIFmaTLgTy0aVKZ6DRmzGu2KxF7UQPH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722845464; c=relaxed/simple;
	bh=kg+r68Mi4lN2fwrekidUVs3rPCJB3mD1dS3bnxirBXA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=n8G4fSIQI0o07Mu7hfYycCqmDRf9+i1UCcAdhfVcRsAz2nCkUPQ/oNflaaXOpM2hSYFbST6rtGqq+Pjbpn1HpNwEO1+wVn9jALQ3S8tnNYS8Xgb/VvUtsXEb7+cIbG5WQsgG9jZvjI1aSiJ9MIgsq/jei0EIFVRbetQkxxyLhQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=T0fv4flw; arc=none smtp.client-ip=220.197.32.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=PRdj3+j2289C5fCKd62laaXwk+yTK09cd5I1fSMwcG0=;
	b=T0fv4flwbaTKKDkwrRvYAMFB7YKjZ9qyXhRNVsYRq4YQrl2QCUGSsJ+tsn7K9+
	UtPgLGCErtyNmSH4Xg5VgLU3dLlwb6IkUuufiWHT55QDfiY2dR33zKHYDqqHHATv
	on6TYgXDooYOh881sdpfWoC/TMS7RoVhOsBhi5EgUHPTA=
Received: from dragon (unknown [117.62.10.86])
	by gzsmtp2 (Coremail) with SMTP id Ms8vCgCHTpDqiLBmu4HVAQ--.60087S3;
	Mon, 05 Aug 2024 16:10:19 +0800 (CST)
Date: Mon, 5 Aug 2024 16:10:17 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Fabio Estevam <festevam@gmail.com>
Cc: shawnguo@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, tharvey@gateworks.com, parthiban@linumiz.com,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH 1/2] arm64: dts: imx8mm-phygate-tauri-l: Remove
 compatible from dtso
Message-ID: <ZrCI6YQV+bO28kva@dragon>
References: <20240701231229.197614-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240701231229.197614-1-festevam@gmail.com>
X-CM-TRANSID:Ms8vCgCHTpDqiLBmu4HVAQ--.60087S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUVcTmUUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiEQMyZWawgZYcTwAAsX

On Mon, Jul 01, 2024 at 08:12:28PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> There is no need to describe the compatible string inside
> a dtso file.
> 
> dt-schema produces super verbose warnings about that.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied both, thanks!



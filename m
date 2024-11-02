Return-Path: <devicetree+bounces-118330-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 94D369B9D88
	for <lists+devicetree@lfdr.de>; Sat,  2 Nov 2024 07:55:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 40D921F22568
	for <lists+devicetree@lfdr.de>; Sat,  2 Nov 2024 06:55:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15154156F2B;
	Sat,  2 Nov 2024 06:55:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="Eg6HOusQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [220.197.32.19])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9BDE155336
	for <devicetree@vger.kernel.org>; Sat,  2 Nov 2024 06:55:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.19
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730530511; cv=none; b=nChImDSDyxiPgfslXcBBQ7T4AAwZ0CnHDhV+P0plOC93gIMGiwQ0xoxN8MzMz90b82/aFIvYyp0qs4d837Kj29cCmOS6XJfb4fje12lRJ4aTrVqdKbSItchDaHDJ3EOZziPaXwwTo4XUzvVVwcKm7jqf6Acw9Tm2bT9EIrPkrGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730530511; c=relaxed/simple;
	bh=LIKrC1PC8f7PG/hdHrXkTxopHQsZDRMpMKMkHe08hBo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=En4XlfQf86JKFXJ3EAokOoVXU7egg0d3/B+BV7kHNE21hh1X6cqO3pQTxIY2IyCGkvGV298W7/y1gdjn/nDGM5upBmGuhTtlknIpybwLTrJQ0eUQsdA+0yKpqnrtFE8cm0QLxETpz4Gxd4dxGkqKmH41vM57DUt2+zKnplzAqHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=Eg6HOusQ; arc=none smtp.client-ip=220.197.32.19
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=qPj1anUEXZHf/a1qxTMG7RLU/90Mk03XP663TewCDgs=;
	b=Eg6HOusQP/Yc7vhQ1yztgmQtYUgUV8RiJhezoGlRgI6ohMPymLyw5HTpm8P49O
	Cujla6ELoaoYavWsZAZGjF110N+t2Iq1qOSzmGQ8esR94udtbUrw61eYkNx+qCDi
	g+LXjnYmc1Eb507Uwhyydv5bJQrqWqkPbdrrc6Zh30zHI=
Received: from dragon (unknown [])
	by gzsmtp3 (Coremail) with SMTP id M88vCgBHecCyzCVnCQJ2AQ--.14608S3;
	Sat, 02 Nov 2024 14:54:44 +0800 (CST)
Date: Sat, 2 Nov 2024 14:54:42 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Fabio Estevam <festevam@gmail.com>
Cc: shawnguo@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH] dt-bindings: power: fsl,imx-gpc: Document fsl,imx6sll-gpc
Message-ID: <ZyXMssAspMI4uYS7@dragon>
References: <20241028124518.72576-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241028124518.72576-1-festevam@gmail.com>
X-CM-TRANSID:M88vCgBHecCyzCVnCQJ2AQ--.14608S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUcy8BUUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiCwCLZWclsr81+wAAsk

On Mon, Oct 28, 2024 at 09:45:18AM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> Document the existing fsl,imx6sll-gpc compatible used with fsl,imx6q-gpc
> fallback.
> 
> This fixes the following dt-schema warning:
> 
> ['fsl,imx6sll-gpc', 'fsl,imx6q-gpc'] is too long
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied, thanks!



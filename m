Return-Path: <devicetree+bounces-239089-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B8DAEC61484
	for <lists+devicetree@lfdr.de>; Sun, 16 Nov 2025 13:14:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 7488E4E3370
	for <lists+devicetree@lfdr.de>; Sun, 16 Nov 2025 12:14:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE89C2D3A9E;
	Sun, 16 Nov 2025 12:14:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="iTFGbxP+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [1.95.21.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5C742D3237;
	Sun, 16 Nov 2025 12:14:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=1.95.21.15
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763295269; cv=none; b=NdpkACndQBgtve1KYK8CxO1G6JiD/B3OOl/JMnmGTOxRh0reeXIYQYQufMaCrFOXNohqv9oNROyteLExWCdsZDkJROzfj/VOv1LqqNBKRPJvrDoXaUDbF9/9si4ExBVFowgwzVSmniB2ENN/biy6bVJpy8HxT+HS1I/1x12BbX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763295269; c=relaxed/simple;
	bh=iJ01YwiG2W6Icq7YmLu4Ty5cSzM3LN8706VHTmyAh1w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OuF+GrAdY71P87ZsTLuiL0df9Jz0Cm/54Oc1H2p7mUNYG+JeAkH0oEMnE69dZ+4hkE7ziurxAPloDDMP63qfqUNDrOQgBGKlyzuNuCx5PNY0oKF/xmq0Qs+Q9kkCBb4bZVCHcw9FkMbAnINfVaezs91b8aW2pzqLLaYu5v0nmEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=iTFGbxP+; arc=none smtp.client-ip=1.95.21.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:To:Subject:Message-ID:MIME-Version:
	Content-Type; bh=/OPyiJznobP/BHgzUxfvT09XKk0Ntk9H61WV3izV1lk=;
	b=iTFGbxP+M1RUepI0KtUkpEd3L+aOtVf8Tn2bX/apDpjKL6YjvlFNTTlRTDoVwU
	g6nC2Ee1uOhQtuDA3zN6A6SPJJR9JgWsCGLEBAKYsQW3VwJZoWrx5jVlOSB/7Onr
	bMALZvZCmHLWwo5IPClwNV0LGRx8TtPRM0QjKMvSPR9HQ=
Received: from dragon (unknown [])
	by gzsmtp2 (Coremail) with SMTP id Ms8vCgCnMQj4vxlpXUglAg--.8013S3;
	Sun, 16 Nov 2025 20:13:46 +0800 (CST)
Date: Sun, 16 Nov 2025 20:13:44 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: max.oss.09@gmail.com
Cc: Max Krummenacher <max.krummenacher@toradex.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: imx8qm-apalis: add pwm used by the backlight
Message-ID: <aRm_-PWcJCW3SPsE@dragon>
References: <20251031125510.433175-1-max.oss.09@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251031125510.433175-1-max.oss.09@gmail.com>
X-CM-TRANSID:Ms8vCgCnMQj4vxlpXUglAg--.8013S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxU2eHqDUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiNxrONGkZv-pOBAAA3o

On Fri, Oct 31, 2025 at 01:55:07PM +0100, max.oss.09@gmail.com wrote:
> From: Max Krummenacher <max.krummenacher@toradex.com>
> 
> Add pwm node used by the backlight output pin BKL1_PWM and
> reference it from the pwm-backlight node.
> 
> Signed-off-by: Max Krummenacher <max.krummenacher@toradex.com>

Applied, thanks!



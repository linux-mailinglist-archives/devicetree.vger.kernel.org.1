Return-Path: <devicetree+bounces-207788-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 19E0CB30CDA
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 05:47:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 285C5AC3319
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 03:45:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1D8928C878;
	Fri, 22 Aug 2025 03:43:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="MWBz1Hhf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [220.197.32.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E35E428CF4A
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 03:43:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755834211; cv=none; b=NsJZ36NrQDVFxpXpZ+UdsRL2kIQznV/qLQuMUpIKOQhPP/15JP3jd6q92vAXMlTXRCV6beo8RJlxFU8ZaxNr+pndjLCATEWLEDHu7MSrMR/8cVqlgHQ5lGJmu7YSdjQl6MQ3fKy881ZW9QC+27CNLFFe+j5sAH2IhxSHkFEEYH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755834211; c=relaxed/simple;
	bh=4060zgJP/pSCl08nUofF3yyzoKGahdPpnHBWzWSvRE0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ShLC3k1AyL+Q62z1IqODSgkBDKHFMTp1EDpiGNBXAVOsjJO0Pd2ln/Tv1YjRh8XRJh7QOa1DFAVIzJZqqg5+4pB9uEMGE/9XM7zS6/GTUhBm2aNBCeYIq6Momrg82gs/yupfZuvw3/KvR4B+2KZeaLwNvmdsImVWLHoWVDgXJCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=MWBz1Hhf; arc=none smtp.client-ip=220.197.32.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:To:Subject:Message-ID:MIME-Version:
	Content-Type; bh=x8nAN6lH4iIKWitR1lkqTMUOmZDGNmPb6HAGd4OPNUE=;
	b=MWBz1Hhfc54z3LCta+MG6OWeZ2TiBw7nE+XD/Ffgth9DxRt3KZ7lGS/ys2WloX
	JWAOcYJXj9hiflwd2GzsckAeYz8e14pkysUDbCKarBua8Y/M5SwQljaqv3+ENMIt
	gfAghv5QXBL34cAFp750SbYj/Ivdq+l7zlCPgYIVsDNDM=
Received: from dragon (unknown [])
	by gzsmtp1 (Coremail) with SMTP id Mc8vCgAn_Ict56docRIZAw--.14029S3;
	Fri, 22 Aug 2025 11:42:39 +0800 (CST)
Date: Fri, 22 Aug 2025 11:42:37 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Jacky Bai <ping.bai@nxp.com>
Cc: shawnguo@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	kernel@pengutronix.de
Subject: Re: [PATCH] arm64: dts: freescale: Add dma err irq info on imx94
Message-ID: <aKfnLWqfrErWBwLN@dragon>
References: <20250725070430.660644-1-ping.bai@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250725070430.660644-1-ping.bai@nxp.com>
X-CM-TRANSID:Mc8vCgAn_Ict56docRIZAw--.14029S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUrR6zUUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiBAixZWinhqf3uAAAs5

On Fri, Jul 25, 2025 at 03:04:30PM +0800, Jacky Bai wrote:
> Add the err irq info for edma2 and edma4. These two err irq are
> connected to the GIC directly, not irqsteer.
> 
> Signed-off-by: Jacky Bai <ping.bai@nxp.com>

Applied, thanks!



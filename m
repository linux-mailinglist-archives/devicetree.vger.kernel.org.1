Return-Path: <devicetree+bounces-215677-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F2DF3B52584
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 03:10:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B154A463783
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 01:10:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA44C1DE4F1;
	Thu, 11 Sep 2025 01:10:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="jCAOO/Rp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [220.197.32.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDF911A08A4
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 01:10:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757553006; cv=none; b=ohh9Xsw6fwFCUEFZabuaZky0J68Ql4qCxJYqBBl1jiLqoBYXCVpEjn9r1AtgLNsPDLDSwPB4170krix+SnWxUyhFawZV9/M3YTxkC6f46MhpocXHC1Bkqbttzu9df2InORF3LcSjMOBOno/eUW1g0Cw415/hLpgswZStr9K0weE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757553006; c=relaxed/simple;
	bh=Sz+NVcU26w6m2cAYOsVGsNSAgePHTrMwLinIIgk3sEs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aJsiLm4xS3jreLVzm761R7/4vv8vD8uUaGTBWQDA+cyROUDN+Ma1tSgXwonsvdEatWClchJYgskczIabHSIldJqYakiqrgth5sZ7Wc+IbvWLF8Wysj9VFqTbMrbTKBz1QNRWP4qK4GXh99GJvchxL81cZu6LcBk0jJuTUM0s5Mc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=jCAOO/Rp; arc=none smtp.client-ip=220.197.32.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:To:Subject:Message-ID:MIME-Version:
	Content-Type; bh=p8fZSVL95erMaMyHPCedn250s/J96Co6GTJBPpiNgNA=;
	b=jCAOO/RprN1yTPtfvT+mOmogybY+U+bASpvpUWB9ahkfir0D7ld6jJFgp3H4TO
	It9wIhIjBhRyJ8JyVrW1Qs8H01gZoFBw1EnTylHJy/7IYHnvgtrZsqOA+vi7R5Vn
	QP5O/CqHP8r6VrqV9kFURG+l4ctRXgrxXTY8hV/Rg2S04=
Received: from dragon (unknown [])
	by gzsmtp2 (Coremail) with SMTP id Ms8vCgDXv_hTIcJooAxfBA--.43095S3;
	Thu, 11 Sep 2025 09:09:40 +0800 (CST)
Date: Thu, 11 Sep 2025 09:09:38 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Fabio Estevam <festevam@gmail.com>
Cc: shawnguo@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: soc: fsl,imx-iomuxc-gpr: Document i.MX53
Message-ID: <aMIhUhBgpIo6cPW7@dragon>
References: <20250822120241.26419-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250822120241.26419-1-festevam@gmail.com>
X-CM-TRANSID:Ms8vCgDXv_hTIcJooAxfBA--.43095S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUjBT5UUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiBAfFZWjCB7k19wABs0

On Fri, Aug 22, 2025 at 09:02:41AM -0300, Fabio Estevam wrote:
> imx53.dtsi has the following compatible entry:
> 
> compatible = "fsl,imx53-iomuxc-gpr", "syscon";
> 
> Document the "fsl,imx53-iomuxc-gpr" entry to fix the following
> dt-schema warning:
> 
> failed to match any schema with compatible: ['fsl,imx53-iomuxc-gpr', 'syscon']
> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>

Applied, thanks!



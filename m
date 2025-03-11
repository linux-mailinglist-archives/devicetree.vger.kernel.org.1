Return-Path: <devicetree+bounces-156358-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FE4EA5B65E
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 02:55:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 101F03A40A9
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 01:55:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28BCC41C63;
	Tue, 11 Mar 2025 01:55:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="lHdgC4mZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [1.95.21.16])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C48118821
	for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 01:55:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=1.95.21.16
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741658150; cv=none; b=RS9bBArBS710idkprA9wLQRXKeUZrWH3FxUQKmLFgTqNFWNajA6amIEm0OEdQi0LjReRsJQbP39eYsvm9jDpcvWd5TzK1BYmE0fexy9YhdlCze/sVcKVZ0fezgk1FicaFqTFsM6QFkEsfIn1nIs/thQiISQWSOZjLpAiO1UEi1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741658150; c=relaxed/simple;
	bh=cuqzIDOhySCFTgOGSVbW6HfrQTrdB5bAwa362NFlG7s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WSSGadUNsnXVMxYKdMcqm2RZCNdLLAFJ+uCkiLOzjuMIHWvmDuipjy2yv2IO66hDRcb1jw5m4Ijz5ichskRD3rmnz/f3Ja2iIs9gEfIyBXGhWq/Z4gE8DHF+qczDVr21K/FNc7ZzTmAqiD5nfmKUp6DOTNO79O1U0yGU7e6U1fQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=lHdgC4mZ; arc=none smtp.client-ip=1.95.21.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=ZPSlj+DOZhRo3Cam9wIjJ4SVrhTvYwkYYTH4FNeO3TA=;
	b=lHdgC4mZ2a0l7+ut7J0eq8QcsdE3VLD3oL1jzGNXEA/nU/UaVg4rDsby5e5rv9
	IE7uYDzwTWMn/ffe2M4T7oOBdEeKt0EsQTMF+YbkTuzlhUQ5y9jGnf6+fIzO8kS8
	SDvtyP7BTA5wVu1BGqhkJY055ixktUEGp/MHiqRksLIxs=
Received: from dragon (unknown [])
	by gzsmtp2 (Coremail) with SMTP id Ms8vCgBnq+IKmM9nYu2zAA--.818S3;
	Tue, 11 Mar 2025 09:55:24 +0800 (CST)
Date: Tue, 11 Mar 2025 09:55:22 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Fabio Estevam <festevam@gmail.com>
Cc: shawnguo@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH v2] ARM: dts: vfxxx: Fix the order of the DMA entries
Message-ID: <Z8+YCoJwtBeCSco5@dragon>
References: <20250220124809.2361942-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250220124809.2361942-1-festevam@gmail.com>
X-CM-TRANSID:Ms8vCgBnq+IKmM9nYu2zAA--.818S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUx4EEUUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiEgINZWfPVKnAwwAAsu

On Thu, Feb 20, 2025 at 09:48:09AM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> According to fsl,dspi.yaml the expected order for describing the dmas
> and dma-names properties is "tx" first, followed by "rx".
> 
> Adjust it acordingly to fix the following dt-schema warnings:
> 
> spi@4002c000: dma-names:0: 'tx' was expected
> spi@4002c000: dma-names:1: 'rx' was expected
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied, thanks!



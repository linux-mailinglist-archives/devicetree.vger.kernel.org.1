Return-Path: <devicetree+bounces-134651-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B4D8F9FE256
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 05:05:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 97F9A1881CB3
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 04:05:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C5B278F5B;
	Mon, 30 Dec 2024 04:05:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="clyx2ISe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [220.197.32.17])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D99FA78F4A;
	Mon, 30 Dec 2024 04:05:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735531520; cv=none; b=kAI/1Y5X8A+AaxZ7AL+UeAJYK/UTulac4KARfJAzUexZnk+YJsCPvjpj2DKCjtBIqbPFrAHrqQA1o1UNeAFPZQA8gQUdpnMDs9FSqBGHsh8xPlwjbjnAlWLT+kyQuUo0gCskwjqoL5Sjp6mA2jl682DG+WJ1uulZBjJ9GMKhsDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735531520; c=relaxed/simple;
	bh=YbhemzYc3Dcvk37szIuBL/A+XxwJHE+4xJKHD04qIXs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pPaz3t2g+/cFornrWubLXDtJ5SZwccAwphbIMetJJgF3nQaPXZEZr50cCrKGLZrWh/P1zG772C5rABaN+0RbR1P9igGX5MhCvflCDsfZ9FPXoyDOPWLOdSfbWX6XNmEBdttbP1IFghMTamTE9uHO50zr+82pMzaf8Af2VVWZT1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=clyx2ISe; arc=none smtp.client-ip=220.197.32.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=OX/rFN2ToZOmzEtAbDTU/7yu2ExFG98z9SCi/hu5y6s=;
	b=clyx2ISeKZvpsx4/Q0hsEBdY8F0aZEnH0jhUk505EoZSMzEGx1CAhAftHIu8aq
	x/hhy1Reucjb0w0OTlBbC1as1oFOFznbWOYvI3T/bR4e13vZyH5HCIeb5uD0EBRW
	8qIWIRSjGSa9lSgN2PpXRaouQ5xvkp2xaf5BgYNqCo3o8=
Received: from dragon (unknown [])
	by gzsmtp3 (Coremail) with SMTP id M88vCgCH28jQG3JnIsD1BQ--.59947S3;
	Mon, 30 Dec 2024 12:04:34 +0800 (CST)
Date: Mon, 30 Dec 2024 12:04:32 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/3] ARM: dts: imx: add phy-3p0-supply for i.MX6 series
Message-ID: <Z3Ib0FYfgMxQuePa@dragon>
References: <20241126-v6-12-topic-imx-3p0-regulator-v1-0-c618ed111c75@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241126-v6-12-topic-imx-3p0-regulator-v1-0-c618ed111c75@pengutronix.de>
X-CM-TRANSID:M88vCgCH28jQG3JnIsD1BQ--.59947S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUea0PUUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiEgzFZWdyDiU6ZAAAse

On Tue, Nov 26, 2024 at 10:22:12AM +0100, Stefan Kerkmann wrote:
> Stefan Kerkmann (3):
>       ARM: dts: imx6qdl: add phy-3p0-supply to usb phys
>       ARM: dts: imx6sl: add phy-3p0-supply to usb phys
>       ARM: dts: imx6sx: add phy-3p0-supply to usb phys

Applied all, thanks!



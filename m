Return-Path: <devicetree+bounces-207902-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 461B7B31276
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 11:02:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 21C021C80D04
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 09:02:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 310714C83;
	Fri, 22 Aug 2025 09:01:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="d5WraUMZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [220.197.32.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E60C3139D
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 09:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755853316; cv=none; b=OLRC9IwSoVbUOVpgcI5u8RW3egLiXlKY4iRosOpJOdiy6ghahXpscRNmXWezru6xoLT4O6tiKayk+SlzAayc5CyiQRlEtGFBOlgWXracyIPL5Al7m2foDarLPHbF2JutaY/0TrgarApUsSwYInDvF0OF+ibyrO60glwyC4DXom0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755853316; c=relaxed/simple;
	bh=9ge1KhfR4GPontv0mr0iYuisXbmPgCbvoZHfhrs08jI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Dji839xa4JBz/WjF+Y8NJWzTGw1NqvLby7ceHXZl6jsYCb6p+t9MtL1N3UoZxAtOqBPsgYvabPxXgaVtUeMdoQdRWB0jWk3tnY7CTe2pf2LDo+25DTc73PIJbRsVd0IzU8meVHFn1DigEShv4tshY9YT2v6H99ErN0PAggCcnHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=d5WraUMZ; arc=none smtp.client-ip=220.197.32.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:To:Subject:Message-ID:MIME-Version:
	Content-Type; bh=szsFJQd7FpONlwOm+0H1IEbNubvgFFPa2+Vofeysjbs=;
	b=d5WraUMZ95QQRPkROwQ+DJ10P6fMlQcaMqqvkrYcaC/eItrxon8v3z4g0R4o6c
	tKl8zjkrKgYXpRmu3VT7nhgMDiZwIYAAqifwv6nWO0t5uFl2jeNidrBtao33Oljz
	cQp1nV2sa0bJzLlxaJYFKZmFsHVu/9w7rWF7KQID7148I=
Received: from dragon (unknown [])
	by gzsmtp1 (Coremail) with SMTP id Mc8vCgD3H9PLMahoWSkcAw--.15940S3;
	Fri, 22 Aug 2025 17:01:01 +0800 (CST)
Date: Fri, 22 Aug 2025 17:00:59 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Marek Vasut <marek.vasut@mailbox.org>
Cc: linux-arm-kernel@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org,
	imx@lists.linux.dev, kernel@dh-electronics.com
Subject: Re: [PATCH] arm64: dts: imx8mp: Fix missing microSD slot vqmmc on DH
 electronics i.MX8M Plus DHCOM
Message-ID: <aKgxy6tmlw28awes@dragon>
References: <20250810160340.10042-1-marek.vasut@mailbox.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250810160340.10042-1-marek.vasut@mailbox.org>
X-CM-TRANSID:Mc8vCgD3H9PLMahoWSkcAw--.15940S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUU8529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUeLvtDUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiNQ3DKWioMc2g0gAA3c

On Sun, Aug 10, 2025 at 06:03:07PM +0200, Marek Vasut wrote:
> Add missing microSD slot vqmmc-supply property, otherwise the kernel
> might shut down LDO5 regulator and that would power off the microSD
> card slot, possibly while it is in use. Add the property to make sure
> the kernel is aware of the LDO5 regulator which supplies the microSD
> slot and keeps the LDO5 enabled.
> 
> Fixes: 8d6712695bc8 ("arm64: dts: imx8mp: Add support for DH electronics i.MX8M Plus DHCOM and PDK2")
> Signed-off-by: Marek Vasut <marek.vasut@mailbox.org>

Applied, thanks!



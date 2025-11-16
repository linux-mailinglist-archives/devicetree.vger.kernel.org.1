Return-Path: <devicetree+bounces-239058-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A66FC6121B
	for <lists+devicetree@lfdr.de>; Sun, 16 Nov 2025 10:43:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 66AE74E14AA
	for <lists+devicetree@lfdr.de>; Sun, 16 Nov 2025 09:43:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45ADA23BCFD;
	Sun, 16 Nov 2025 09:43:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="hZF0SMoU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [1.95.21.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2B00156661;
	Sun, 16 Nov 2025 09:43:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=1.95.21.16
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763286210; cv=none; b=COmmJP1naRhxogLN1WKeytRAOfCqvCCprvO3rJL9kI5tzA8kgUhwJOAXQYQnenNMDLfU8LtDYCjV5my65jK2sY4LSnVQgta+RhnfVjh3hMqKECcJf7grhmxGWtl/DoU+ByL4Rbq/l8WhHz3+WisyuoPIFYuOwqfmMFRTa4fJHGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763286210; c=relaxed/simple;
	bh=0ibplLhd3v7Iw2zYmlxRjCn8CTztadGu2ZrRMrRE1/g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BCZ1mf7f54BvoIx1xFsjsNQ+fsatoJYi+ij5aR8hTJ5NIXjxg+otVYLhLLyEEWnYID9hsiI6JNkZ+VlxZCA1JSFvVqj0JvojwJmyc02KmGCeRivqtmd7rGPPshTANoUTIjtuOJ6kJHybJqO+uJSNchiM3snizlt3w3UzreHRJP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=hZF0SMoU; arc=none smtp.client-ip=1.95.21.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:To:Subject:Message-ID:MIME-Version:
	Content-Type; bh=x/0v29LNdkN3c0TsJQzVdp5QigjeZCzTwl5nAgC3p+Y=;
	b=hZF0SMoUF9Nc5zFp+OVBVeCULFLpJkLEXZ4BuBG+Tpv6a3dLAMzAX+YGYWscuS
	nvJ00yMJDdqOS5rmVgzVYuX+AhvO7Vbi2i+klBrByWIjU5AeyNsUl/3IzSyZuaUv
	Qu38lzPn77Cd6G5yekOhEN+IeYviWuAloMJoG3E5AiiC8=
Received: from dragon (unknown [])
	by gzsmtp2 (Coremail) with SMTP id Ms8vCgCniOponBlpAo0jAg--.8173S3;
	Sun, 16 Nov 2025 17:42:02 +0800 (CST)
Date: Sun, 16 Nov 2025 17:42:00 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Primoz Fiser <primoz.fiser@norik.com>
Cc: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, upstream@lists.phytec.de
Subject: Re: [PATCH v2 1/2] arm64: dts: freescale: imx93-phyboard-nash: Add
 jtag overlay
Message-ID: <aRmcaMwxOUotXx7a@dragon>
References: <20251028115820.3165399-1-primoz.fiser@norik.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251028115820.3165399-1-primoz.fiser@norik.com>
X-CM-TRANSID:Ms8vCgCniOponBlpAo0jAg--.8173S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUra9aUUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiIAvhR2kZnGt6DwAA3-

On Tue, Oct 28, 2025 at 12:58:19PM +0100, Primoz Fiser wrote:
> Add overlay to enable JTAG pins on the board's JTAG (X41) connector.
> 
> Signed-off-by: Primoz Fiser <primoz.fiser@norik.com>

Applied both, thanks!



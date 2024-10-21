Return-Path: <devicetree+bounces-113547-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 340509A6052
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 11:39:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DE2781F21D9F
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 09:39:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFA341E3787;
	Mon, 21 Oct 2024 09:39:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="dzsB/AS4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [220.197.32.18])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93CD81E282F
	for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 09:38:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729503540; cv=none; b=gYzY3rqtlOlNaiU+KRzm1t7zO63ZlIXRQ0ZIOI7W5h1s5//k7HavIK9SHS6+7sT5kJQhNyiNc8ZauZCzUB5NXZ9gEKMn57T+fN3/0TjRd/gFtlT7jIdY+3rCGgOdsU7LrgAz0+tBAn0CVLeksG/iokguUwuVwCzxC2DM0+idanc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729503540; c=relaxed/simple;
	bh=pV7oexWPEc02zkJRVKKsSFBrKPstzrGT79rRdthbwg4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oZSD0FnA06HBKQ65OKLONr5/ipjwnCwbgyHkTy94oB3RHu5n8kRCH08WV+n93kJc8uECga/BZeKwOSA+tOr0PekOZUccJWy17bHz0QVpUVcTvCr3wZMzRsThhqjKAPYrI9hltUYzh1+qgsH6ARsj2GEn3RWnANBwOjLycbkz+DU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=dzsB/AS4; arc=none smtp.client-ip=220.197.32.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=14aLLpVvY+Z3yvhRqQwVn+AW9wVJ2IvtnsP5jmd9dBI=;
	b=dzsB/AS4J5ZM5aBaH7lj2xkr9L3hilSPdlzyf8g1p0Vfe/ZJqkHK52mo7XWXH+
	u7KTltg2APXgkXmZ9mw2otyBVF0CEco+wAMD5SffHmZMUzSElEKmrf3EAK5eZ/6y
	JrEGHelRmZSzsWP0jY/G3a118cB5VEonsr89gj4wyhf94=
Received: from dragon (unknown [])
	by gzsmtp2 (Coremail) with SMTP id Ms8vCgCnzuMHIRZnahKHAA--.4779S3;
	Mon, 21 Oct 2024 17:38:17 +0800 (CST)
Date: Mon, 21 Oct 2024 17:38:15 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Fabio Estevam <festevam@gmail.com>
Cc: shawnguo@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, LW@karo-electronics.de,
	Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH] ARM: dts: imx6qdl-tx6: Fix 'fixed-clock' description
Message-ID: <ZxYhBzZnR7n37FcV@dragon>
References: <20241005125824.2037222-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241005125824.2037222-1-festevam@gmail.com>
X-CM-TRANSID:Ms8vCgCnzuMHIRZnahKHAA--.4779S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUU8529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUslksUUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiERh-ZWcWDP88jgAAsj

On Sat, Oct 05, 2024 at 09:58:24AM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> Per fixed-clock.yaml, it is not correct to pass unit address and
> reg to represent 'fixed-clock'.
> 
> Remove it to fix the following dt-schema warning:
> 
> clock@0: 'reg' does not match any of the regexes: 'pinctrl-[0-9]+'
> 
> Reported-by: Rob Herring <robh@kernel.org>
> Closes: https://lore.kernel.org/linux-arm-kernel/172808887941.121658.5039774358299826312.robh@kernel.org/
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied, thanks!



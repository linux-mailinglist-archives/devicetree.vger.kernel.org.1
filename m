Return-Path: <devicetree+bounces-207911-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 21CB7B31297
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 11:09:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 12EDD4E5E0B
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 09:09:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15B3A225762;
	Fri, 22 Aug 2025 09:08:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="Pchf78Se"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [1.95.21.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E402B2EE281
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 09:08:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=1.95.21.15
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755853732; cv=none; b=ePkWLnMnOg5GrWUyK7uPUwXu+wmEDMgCQ9q/j1wQcfLPYzMfNde1MEQfAc15saBWl0NUrcduENrdfN1xigkBPNxuTaLBlmjkI31XSW/yvcaMz7KSqgD/mw0hYJNxMgDGdRlNZ4wGCcw5kQVMK7jscoDWizuuYkd6BwHOkBQG5Bo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755853732; c=relaxed/simple;
	bh=AMVish0knTsB4uHBVqWYys6IdJKKToqtvi+Dm7acPA0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SpWL3iWAur+qQZD4Pc7NkNRVofyoq6b4JRt3Ju9VpdvufOeIp5zCrTjOdno1sHLIT9MCrcTCuHkhbOwCVbYSf7PHIwjX0iy9FcGn53KIFnt8l0AGcoZ1SGXGct/jIlD9dvLuq0GBVKYFApcst42pD8vn+gF9bXsafdiPPjv6KxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=Pchf78Se; arc=none smtp.client-ip=1.95.21.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:To:Subject:Message-ID:MIME-Version:
	Content-Type; bh=Pq5FIUVbk41Ll/76FA3FSDCaWx/FphWlFTXL1AII6Jk=;
	b=Pchf78SewR9yVH/4I3ViAbKvx71tObGe5nO5njKpURzIBpJEBfC1caRw2jy/Vi
	L/NwcAPbNAHe98ktwWpogq6Wn3vbd7r6xaExL0w3nrUfRubrgaNM+tNg1p6xWpY7
	a4yU5jiqLxcdsItELiVlIqFevVEYHHHh3hldooBQFQwiI=
Received: from dragon (unknown [])
	by gzsmtp2 (Coremail) with SMTP id Ms8vCgDXDveBM6hoij0oAw--.7939S3;
	Fri, 22 Aug 2025 17:08:18 +0800 (CST)
Date: Fri, 22 Aug 2025 17:08:16 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 resend] arm64: dts: freescale: Switch to hp-det-gpios
Message-ID: <aKgzgMMFvofPi_Tz@dragon>
References: <65670a9983c47919317e02557f072dbe0426f48a.1755099817.git.geert+renesas@glider.be>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <65670a9983c47919317e02557f072dbe0426f48a.1755099817.git.geert+renesas@glider.be>
X-CM-TRANSID:Ms8vCgDXDveBM6hoij0oAw--.7939S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxU5VyxDUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiNQMxlmioM4OlFgAA3S

On Wed, Aug 13, 2025 at 05:44:46PM +0200, Geert Uytterhoeven wrote:
> Replace the deprecated "hp-det-gpio" property by "hp-det-gpios" in
> Freescale Generic ASoC Sound Card device nodes.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Applied, thanks!



Return-Path: <devicetree+bounces-45668-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E1EA4862A7E
	for <lists+devicetree@lfdr.de>; Sun, 25 Feb 2024 14:55:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 992F31F21408
	for <lists+devicetree@lfdr.de>; Sun, 25 Feb 2024 13:55:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B775712E47;
	Sun, 25 Feb 2024 13:55:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="Rz6CKsrY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-177132.yeah.net (mail-177132.yeah.net [123.58.177.132])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9888125DC;
	Sun, 25 Feb 2024 13:55:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=123.58.177.132
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708869315; cv=none; b=EyhM3Yk8va4bNyVNGf//i/Yl8N+HSAQO/BCcBwZk9IF7Wc662l0EIBVT2H0aBUJMt7hP7RFC3hAieLmhS6DnVSS1yh7+RlezBeERed0SkcWM2bLj1P5R9j5MofPUlEpqzjXpWHo0z6xsfvKAiqKHKANIYworGuFI+FjW/mAsTWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708869315; c=relaxed/simple;
	bh=tUkBjkdQUE8lTZw22tefLlynl2BVSgEsu9KBtFp6vjo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eNM9lE4ODg9ewGgfXm/M866QM5014RRCT++dsuw9N5+t8kXh+Vtlf87Uy9wN56IUhEjM4vx71ixHvBIGl1aE9d/CWlwBWdvkDN2JZM2bkkpvaYIaL00tnTRnoWzblDQ0xBkJSbFylJzgCoOkHAGalx+mZsM7KFjy7yKAjf4mYdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=Rz6CKsrY; arc=none smtp.client-ip=123.58.177.132
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=UW6ENvKnDY7pX+sFHL2FClOc0P5xJuweSnyoSrx/mRA=;
	b=Rz6CKsrYtp+m1uToRRQgWFmcviqujWjpFi109+7nPvaDuMU40XyJD6xirCkv1G
	SLxKbG+LohCeRtSTTrUycv67v/h7/ZL/ngN5yJeux1z0TlCqQF0Dt2yKarg+gLzl
	fZhd7ZpPdjq4XXECkYlVav9a1GddXEyXdlnudE5WVDqoY=
Received: from dragon (unknown [183.213.196.200])
	by smtp2 (Coremail) with SMTP id C1UQrAD33xeMRttlVa9WBA--.38653S3;
	Sun, 25 Feb 2024 21:54:22 +0800 (CST)
Date: Sun, 25 Feb 2024 21:54:20 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Sebastian Reichel <sre@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>,
	Dong Aisheng <aisheng.dong@nxp.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v4 08/16] ARM: dts: imx6ull: fix pinctrl node name
Message-ID: <ZdtGjOOEx2cWL+oK@dragon>
References: <20240224213240.1854709-1-sre@kernel.org>
 <20240224213240.1854709-9-sre@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240224213240.1854709-9-sre@kernel.org>
X-CM-TRANSID:C1UQrAD33xeMRttlVa9WBA--.38653S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUTPl1DUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiGA6PZV6NnjV5+wAAsG

On Sat, Feb 24, 2024 at 10:29:40PM +0100, Sebastian Reichel wrote:
> pinctrl node name must be either pinctrl or pinmux.
> 
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Sebastian Reichel <sre@kernel.org>

Applied, thanks!



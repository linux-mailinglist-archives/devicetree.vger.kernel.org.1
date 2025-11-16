Return-Path: <devicetree+bounces-239093-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D03BBC614D0
	for <lists+devicetree@lfdr.de>; Sun, 16 Nov 2025 13:39:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C36F84EB73F
	for <lists+devicetree@lfdr.de>; Sun, 16 Nov 2025 12:36:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DAAD32D836A;
	Sun, 16 Nov 2025 12:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="h6Jzz2g7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [220.197.32.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAEE82D7DD9;
	Sun, 16 Nov 2025 12:36:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763296593; cv=none; b=c5gX6is7MaFK246gY+fBIUWiqc1MqVQD1k30IuMc/ttvuXetUU9dIK5EpIx/wCz2I+Pkw5JWqe+lbAj4iILSKtU+88EkefDiK2S4FeEa7UBX1FhoIXcPfSQ3cJA8gyauTOHM6UEgEcOtwuEvLLhBuOl+ZGTyxovuazvL+W6IhZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763296593; c=relaxed/simple;
	bh=xI6GTSWspNfy+6ClMqCVIyfHoNwqx/pHqEgBpQrryOs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZKOVTM5Jxcie8exJ1PshVWBya/l+aIH9a7d1fntVVH2946KIefFOVCIZRCS0C5RgFBG1tl0gX+kGjcHpxM8jdviofYZPOnztrlMcGe+cTyMOyTTQMsTsWbvqzz9bQGjWhONpSKAyCssRmSDDS87iMtGsJ83CY+QFAuSIb8/jKIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=h6Jzz2g7; arc=none smtp.client-ip=220.197.32.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:To:Subject:Message-ID:MIME-Version:
	Content-Type; bh=eMycqlp4chuOd7Fhf2Y0kQgHwkZhH9Lp2pIekCxZrTQ=;
	b=h6Jzz2g7UtfaPGPYk4yVfbxFvKzZqUIRwe6qAEoyd3AQSsBwt+bEli5tLGL8za
	xtTiAmd3R+kap6AbEDUpqn4GU+gRNYR5UK3n+EfKPzbT98jN5afTswUJxPmC5PpD
	G6DoNmDwcBM70tSFRsyiactKzuFdmBvbodEI4cuwfQjW8=
Received: from dragon (unknown [])
	by gzsmtp1 (Coremail) with SMTP id Mc8vCgAn5MUsxRlpXbc7AQ--.8035S3;
	Sun, 16 Nov 2025 20:35:58 +0800 (CST)
Date: Sun, 16 Nov 2025 20:35:56 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Michal =?utf-8?B?Vm9rw6HEjQ==?= <michal.vokac@ysoft.com>
Cc: Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] ARM: dts: imx6dl-yapp43: Enable pwm-beeper on
 boards with speaker
Message-ID: <aRnFLJneVeZoJeD-@dragon>
References: <20251106085429.2067699-1-michal.vokac@ysoft.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251106085429.2067699-1-michal.vokac@ysoft.com>
X-CM-TRANSID:Mc8vCgAn5MUsxRlpXbc7AQ--.8035S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUzYFADUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiIA4dgmkZxS49pgAA3x

On Thu, Nov 06, 2025 at 09:54:28AM +0100, Michal Vokáč wrote:
> Lynx, Pegasus and Pegasus+ boards have a speaker connected to the PWM3.
> Enable a pwm-beeper on these boards so the system can produce simple
> sounds.
> 
> Signed-off-by: Michal Vokáč <michal.vokac@ysoft.com>

Applied both, thanks!



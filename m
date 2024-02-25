Return-Path: <devicetree+bounces-45659-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DB611862A5A
	for <lists+devicetree@lfdr.de>; Sun, 25 Feb 2024 13:47:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7A279B20E5D
	for <lists+devicetree@lfdr.de>; Sun, 25 Feb 2024 12:47:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0206A1FB4;
	Sun, 25 Feb 2024 12:47:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="bxvq/CKL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-177131.yeah.net (mail-177131.yeah.net [123.58.177.131])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF22CDDDA
	for <devicetree@vger.kernel.org>; Sun, 25 Feb 2024 12:47:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=123.58.177.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708865264; cv=none; b=H+MOX0S1RbLXe4FIFz41vFWTzWXSIcfKVD0bq5yoPNX6tRstZc+4GFUeQdvRgU4rCjQR7PbNv6FjRerdCZ0QipFqXjoIozHUSmgPRJ6NULdvMsRSqUKkXfl+M7BQ6mBAIRhT2Swt6qA3B7AG07z1kh0djR0W+DFs0USfaIoxJGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708865264; c=relaxed/simple;
	bh=PQt9UIXfelyrAn9iuqVGX5qcHvGO9kSvkM3jN20Y9+Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=B2oGWrlWBqNpDQEG4kFyxa4dTKA5Vmhvxd2COxbHxRgEfZwu2KME99UAJ8yR2pz3vWbE8dN6DJhBZn0HGlfyoHMEirXmraD/LYS4JF9LsYup+R0tWGD4UZRF+H3ZN3sqMVf1roQY45gAZlU21VKqEH2Q1tmOXUdEG34sqPqh+Qk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=bxvq/CKL; arc=none smtp.client-ip=123.58.177.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=/0T2+omcEk6SUP/41crzLheP44c3qafGcziam+76Hpo=;
	b=bxvq/CKL7ZhnLRtmxqPKJNyIbeagsKcrUcaG8XPOuuo5jBtRm36GpsjrDJSAhn
	4ENvTWpBNxDdnsoxrdhiDY3GWDyPR2rX1vkRC2gSG2R3UMu9LuXb2zYvUXYGB93I
	HE4ycC9h+YE3+ZYCsoeKkx8nbkoIxXUJUqLhNcQ6fljh8=
Received: from dragon (unknown [183.213.196.200])
	by smtp1 (Coremail) with SMTP id ClUQrADH7w_WNttlqyVXBA--.13069S3;
	Sun, 25 Feb 2024 20:47:19 +0800 (CST)
Date: Sun, 25 Feb 2024 20:47:18 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>, linux@ew.tq-group.com,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/2] arm64: dts: imx8mq: tqma8mq-mba8mx: Add missing USB
 vbus supply
Message-ID: <Zds21pw+jQF+/YPv@dragon>
References: <20240220153334.2624873-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240220153334.2624873-1-alexander.stein@ew.tq-group.com>
X-CM-TRANSID:ClUQrADH7w_WNttlqyVXBA--.13069S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUI2Q6DUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiFRePZV6Nm6ZhRQAAsi

On Tue, Feb 20, 2024 at 04:33:33PM +0100, Alexander Stein wrote:
> VBUS 5V is statically provided to both USB host and on-bard USB-hub.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied, thanks!



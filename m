Return-Path: <devicetree+bounces-207903-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BBB9B31277
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 11:02:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1ADD81C88028
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 09:02:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E9F6222582;
	Fri, 22 Aug 2025 09:02:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="FLzuYBjA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [220.197.32.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384294C83
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 09:02:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.16
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755853333; cv=none; b=jFqoGanYiNPJvn8bHRuHVAp34Eq9AIg2XdtuZu471hCXrAJFq4pnhqHYCxBtEjINJmsCs93g2xWpMA1deRhpr4CBZQoRLJ21pLislR0CFGX1chuZYmlawO20zd6oo6fptg8Ak4aITuxgtq7CpZadH762ZS+Ju//DVuDF8e75NEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755853333; c=relaxed/simple;
	bh=ZZZjeWgCzgKLE4noZbJnjmwDp7GDDaCCQZMrg3G/O7A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nrmTjnxjpUuWUyl9VcxWlbRTliON3eehEC0ffMI0C1tGtnGsugjVuFe2+KyCt8+MMshXCJO9CUeS/1aVaQsuX+FUAL8cbzooE97sBuwIYe/NdRksH7htrdeyii34HEc0Y0o87sDiapW7iEFt/OFeQKGDCT1n1/t8s1G324vlGLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=FLzuYBjA; arc=none smtp.client-ip=220.197.32.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:To:Subject:Message-ID:MIME-Version:
	Content-Type; bh=N4dSGioxFo4M4rdf3JnJE8WIclENgwBnsbRifgmAlrU=;
	b=FLzuYBjAM80wv95phdoRt2N8B7AsAOOGMEetr6qoM249MlSG09cL7yT0nQ227p
	/BKCbxL+P/YHOWOh01wxEzA5lExpIPKDxXp9OiRoKgF/MStlBRchyCW534uESgXn
	ptR5AsYflE4lqaz0eHzOYZRdhvI5Fc+sQ01MQ0RJiSwy8=
Received: from dragon (unknown [])
	by gzsmtp2 (Coremail) with SMTP id Ms8vCgDXRdvcMahoDisoAw--.17475S3;
	Fri, 22 Aug 2025 17:01:18 +0800 (CST)
Date: Fri, 22 Aug 2025 17:01:16 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Marek Vasut <marek.vasut@mailbox.org>
Cc: linux-arm-kernel@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org,
	imx@lists.linux.dev
Subject: Re: [PATCH] arm64: dts: imx8mp: Fix missing microSD slot vqmmc on
 Data Modul i.MX8M Plus eDM SBC
Message-ID: <aKgx3DOjkQYYGFAc@dragon>
References: <20250810160500.10213-1-marek.vasut@mailbox.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250810160500.10213-1-marek.vasut@mailbox.org>
X-CM-TRANSID:Ms8vCgDXRdvcMahoDisoAw--.17475S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUU8529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUemhFUUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiNh7HLWioMd6MNwAA3W

On Sun, Aug 10, 2025 at 06:04:32PM +0200, Marek Vasut wrote:
> Add missing microSD slot vqmmc-supply property, otherwise the kernel
> might shut down LDO5 regulator and that would power off the microSD
> card slot, possibly while it is in use. Add the property to make sure
> the kernel is aware of the LDO5 regulator which supplies the microSD
> slot and keeps the LDO5 enabled.
> 
> Fixes: 562d222f23f0 ("arm64: dts: imx8mp: Add support for Data Modul i.MX8M Plus eDM SBC")
> Signed-off-by: Marek Vasut <marek.vasut@mailbox.org>

Applied, thanks!



Return-Path: <devicetree+bounces-92899-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A4B7E94EBF1
	for <lists+devicetree@lfdr.de>; Mon, 12 Aug 2024 13:41:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D2BCE1C21147
	for <lists+devicetree@lfdr.de>; Mon, 12 Aug 2024 11:41:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA4B0176AD0;
	Mon, 12 Aug 2024 11:41:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="p1SjPgL4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [1.95.21.14])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C018F16A948
	for <devicetree@vger.kernel.org>; Mon, 12 Aug 2024 11:41:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=1.95.21.14
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723462864; cv=none; b=uy3nK+8JOZ/NqFrE6vtN5cujAy4Vpvg5iOTgSBHF/jrzHxBfvAWOCs8rst3Kuf6S5AtnlERYtV6hCA9zCq3fmlr6ynR8loNnSH07mo/Cd08mfF2A8+RcX3kPtG6STCeDnUUXWTrV/GwoF027TxoR1HQBsvQQLSLQJmB8w4av0QI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723462864; c=relaxed/simple;
	bh=8mNkyAe4QwRPsdp54TZvRjolS22NXvzqQatP3Nieljs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ojp+9iWddj1JJ5TI0wneY8AG0sRjg8W3GalJbVnhtKxLHCWlrZdDQol15fYEo82i/nwzq+FpEiXMrIHJT10UdLIEwDzgdcFCr2qfStNLEqMNhuIkRVBPOczA1rWq+h/21KjI6aaCC/JhKxQqjJs50uVJcwDICDvED707OT9S4/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=p1SjPgL4; arc=none smtp.client-ip=1.95.21.14
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=Ts55m7mpTC0I6LnjoJa/C+UU7cvRLo6zyXkhTE+BCwc=;
	b=p1SjPgL4fc/+FyGB3+JkVdSTZOiOsfmNkovu7AK9JwRWW0uQU16aUtmFtiqChm
	R7B+clntBzOf/5HV/1UfM3VYx4Uq7YXehK0TRFwML879EKeouK21BDMh9Q/ieJGj
	RIlNhG8AQBirCpUX+92Mr3ISGisoMoCCPuY/M23hHIKL8=
Received: from dragon (unknown [117.62.10.86])
	by gzsmtp3 (Coremail) with SMTP id M88vCgCXH8Ch9Llmd4EQAg--.625S3;
	Mon, 12 Aug 2024 19:40:19 +0800 (CST)
Date: Mon, 12 Aug 2024 19:40:17 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Liu Ying <victor.liu@nxp.com>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, shawnguo@kernel.org,
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
	dmitry.baryshkov@linaro.org
Subject: Re: [PATCH 1/2] ARM: dts: imx53-qsb-hdmi: Do not disable TVE
Message-ID: <Zrn0oR3ocKPBrI8H@dragon>
References: <20240722030413.3456203-1-victor.liu@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240722030413.3456203-1-victor.liu@nxp.com>
X-CM-TRANSID:M88vCgCXH8Ch9Llmd4EQAg--.625S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUsBMNUUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiCwc5ZWa578UNDgAAsm

On Mon, Jul 22, 2024 at 11:04:12AM +0800, Liu Ying wrote:
> SII9022 and TVE are connected with IPU DI0 and IPU DI1 respectively, so
> they are in two different display pipelines and may run simultaneously.
> Keep TVE being enabled as imx53-qsb-common.dtsi does by not setting it's
> status property to "disabled".
> 
> Fixes: eeb403df953f ("ARM: dts: imx53-qsb: add support for the HDMI expander")
> Signed-off-by: Liu Ying <victor.liu@nxp.com>

Applied both, thanks!



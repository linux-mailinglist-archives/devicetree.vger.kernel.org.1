Return-Path: <devicetree+bounces-239100-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AE93C6155E
	for <lists+devicetree@lfdr.de>; Sun, 16 Nov 2025 14:11:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B50264E6291
	for <lists+devicetree@lfdr.de>; Sun, 16 Nov 2025 13:11:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D88172D8768;
	Sun, 16 Nov 2025 13:11:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="EmkVErn1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [1.95.21.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2883C23BF91;
	Sun, 16 Nov 2025 13:11:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=1.95.21.15
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763298672; cv=none; b=ha/z0MWws7V5N2tVZbIRXfD0GhV1XJW9tynz7FFvHdZBS6frY2et6m5ssZIBHn2vcRaieEm/Y7QmZH1Gqer7M8Pz5j0cW6iebiZY/lcRaHsyvXKYT6XUPZvILAgDgWNLCrNB+B9UVtR6OEbJrPHMvo1F1swLUxJiSFvRTf0RKWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763298672; c=relaxed/simple;
	bh=rD9K4LiNQFuQgNTEM0CDuKb4VnJ/W90rbS9ErlVkVtA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DNxmfPkYwrgab5BpIU6O4IPmvPaC5R5UFndJi+gtmKpd6cYqF1uY+KpSi7Hk0W+OxKSJmk72GX3gyHyukvj+yIbxuWgA56w+K723bivhjSmn1Kgnm/99QPbUtAP9zprezmcqXDre/t8NjbksAt/Ey/T/KwyGlLZa+5Z6MC+Eb8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=EmkVErn1; arc=none smtp.client-ip=1.95.21.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:To:Subject:Message-ID:MIME-Version:
	Content-Type; bh=dWBBmvT5p0UOXw0ZQWdcqEHb8L1MuEgC28NscIj1Rzo=;
	b=EmkVErn1LDwDlPIFjJrwgEGtza1lnQQHZMMu6czXrRbc4FOVfKlHN9p3hnDz+J
	+QLkKVUSVY0Ya0ubuarNLj+3bXZeEJ2UGimlNfreCvBJgJ68DaOB7kW1WVuDfFu2
	xG2nPPkTmfFV/4ckNmPEdJ7gkotZTv+Gh5ud+6e0f1ljc=
Received: from dragon (unknown [])
	by gzsmtp2 (Coremail) with SMTP id Ms8vCgD3HEREzRlpnOIlAg--.8122S3;
	Sun, 16 Nov 2025 21:10:30 +0800 (CST)
Date: Sun, 16 Nov 2025 21:10:27 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Xu Yang <xu.yang_2@nxp.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
	festevam@gmail.com, Frank.Li@nxp.com, jun.li@nxp.com,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: imx8qm-mek: fix mux-controller
 select/enable-gpios polarity
Message-ID: <aRnNQ__Ukp_74XA5@dragon>
References: <20251113111444.888985-1-xu.yang_2@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251113111444.888985-1-xu.yang_2@nxp.com>
X-CM-TRANSID:Ms8vCgD3HEREzRlpnOIlAg--.8122S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUU8529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxU8PfHUUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiIAYlimkZzUZP6AAA3V

On Thu, Nov 13, 2025 at 07:14:44PM +0800, Xu Yang wrote:
> According to the board design, set SEL to high means flipped
> connection (TX2/RX2). And the TCPM will output logical 1 if it needs
> flipped connection. So switch to active high for select-gpios.
> The EN pin on mux chip is low active, so switch to active low for
> enable-gpios too.
> 
> Fixes: b237975b2cd5 ("arm64: dts: imx8qm-mek: add usb 3.0 and related type C nodes")
> Cc: stable@vger.kernel.org
> Reviewed-by: Jun Li <jun.li@nxp.com>
> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>

Applied, thanks!



Return-Path: <devicetree+bounces-248005-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E7B7CCDB08
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 22:30:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 097A6300E816
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 21:30:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BD8B301468;
	Thu, 18 Dec 2025 21:30:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=antispam.mailspamprotection.com header.i=@antispam.mailspamprotection.com header.b="ys7iCUtU";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=valla.it header.i=@valla.it header.b="NbLdgIkC"
X-Original-To: devicetree@vger.kernel.org
Received: from delivery.antispam.mailspamprotection.com (delivery.antispam.mailspamprotection.com [185.56.87.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51A972D8798;
	Thu, 18 Dec 2025 21:29:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=185.56.87.11
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766093400; cv=pass; b=lFcd/ahpDOX9I+ffTIqGg0XeSz8Ah7uRQrrda8vK5b5TcE5hRpaSZFodrbCGvW4BP3xrn3dTRISFIDz3dqkx2tOnj1MxASuQIWjNB7s4gTyQtC/JEKmkO8X5vkVZiIMPrm2LzJOdveZO7Wu8/ALN3r1UzF+3iiB1HzDSTuAwXbI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766093400; c=relaxed/simple;
	bh=ZzvEed4sEkcv3SWvfOHQgv/2cRbBc1HpGi2Alr+EpL0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=k+3d9RVAq4UIGc7nRdFyCmqfdQkOQNSOSpX7aSwHmEnv5MNay2VS6icUGPaQUJsh4xw9JN4+94fXEm0jwd+31mImEr7PYppar4UvwuSIqMrI4GHzjVAGG49rNAPQNzpaF41GIjue7/K/CHsVejgl9Ub6H07LrgaHzNVZg0kDKJk=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=valla.it; spf=pass smtp.mailfrom=valla.it; dkim=pass (1024-bit key) header.d=antispam.mailspamprotection.com header.i=@antispam.mailspamprotection.com header.b=ys7iCUtU; dkim=pass (1024-bit key) header.d=valla.it header.i=@valla.it header.b=NbLdgIkC; arc=pass smtp.client-ip=185.56.87.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=valla.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=valla.it
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=outgoing.instance-europe-west4-1fw8.prod.antispam.mailspamprotection.com; s=arckey; t=1766093398;
	 b=tnxmOTZ+R49twV59elmaKC1vScav+oxGzQRBo/qNFWxweVmlN8wp5sSk9J5jsvrrOWX7vdlbV1
	  ee10A9uM47B4KfexuHpYiDD1+CqSafBZ+Y/Btht1w4i4b5b6VE9FmvxqHyIGqwoTf6zL/Nqqya
	  +kRpd5P1CnB2LjGs8Gn9rlwomzGG2dwa1Jp61ZzrQffXIZGJBKozG2ZFiYd1cZxHXJE8v+/ucl
	  N04DJj2tjQFsoOIJmupOs6EWdArbwCV1DytUyZG+gRAtfRidCKsTFWMmYhNykYHYeM4QJ1OhmQ
	  09+R1fIlxqe1w7s6lOWCwR8vHp9fk6niNmbSF/Qd+sFPjg==;
ARC-Authentication-Results: i=1; outgoing.instance-europe-west4-1fw8.prod.antispam.mailspamprotection.com; smtp.remote-ip=35.214.173.214;
	iprev=pass (214.173.214.35.bc.googleusercontent.com) smtp.remote-ip=35.214.173.214;
	auth=pass (LOGIN) smtp.auth=esm19.siteground.biz;
	dkim=pass header.d=valla.it header.s=default header.a=rsa-sha256;
	arc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed; d=outgoing.instance-europe-west4-1fw8.prod.antispam.mailspamprotection.com; s=arckey; t=1766093398;
	bh=ZzvEed4sEkcv3SWvfOHQgv/2cRbBc1HpGi2Alr+EpL0=;
	h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:
	  From:Date:DKIM-Signature:DKIM-Signature;
	b=nk6DctSUZAlwWJ2VfoJoKZ08sk3RBcpsu1Y7wrhGW7p0BcuClvC8x7h0zkTU+z1w0xDhbi+tcz
	  r11qVuxfgrH2QCN8by/olTD78Gf5qBh4oUXwGU8Dc+lH5HIrRC8y+xzAPDIMbsBoGf29jrAj1M
	  HgRnBnEDt2l5A5MzvrZeHE/Sus/c547YOpgyjhVA8NPzNvMqye6bFiQ5GziI2pb6jQZ2UDxMRy
	  irRg2gllXD10phGoRgr0Lw0sZccVfytIpcyi0IFStU+yQVlqq9jqUawDOvwoNMtxrdN0rNRHd0
	  BWemfoDDPcVa1qjzu/zs2Co5MN3vaBobPWyu2bg6Um3fgQ==;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=antispam.mailspamprotection.com; s=default; h=CFBL-Feedback-ID:CFBL-Address
	:Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	List-Unsubscribe:Content-Transfer-Encoding;
	bh=tpKlTYeTCs6R8eO95vUUpCyeGtT/lX8I/YjZJmafD90=; b=ys7iCUtUUfjcVWC8qDiYRzHp+L
	lRKGTzFzM/1z1w23zsPehmw1gkwFiwN0yETgM4Vgxi22ciMRMCxf76hrFPGFnlSkIzK+XKxs/e7hV
	C9/8ajaNqTC3e2QlMENz160uz1y+xaZiu2r9CVD4RZc9QIpgDzRTU0FBE4sJPiD9/PbU=;
Received: from 214.173.214.35.bc.googleusercontent.com ([35.214.173.214] helo=esm19.siteground.biz)
	by instance-europe-west4-1fw8.prod.antispam.mailspamprotection.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.98.1)
	(envelope-from <francesco@valla.it>)
	id 1vWLZC-00000003fgS-2u2n;
	Thu, 18 Dec 2025 21:29:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=valla.it;
	s=default; h=Subject:Cc:To:From:Date:list-help:list-unsubscribe:
	list-subscribe:list-post:list-owner:list-archive;
	bh=tpKlTYeTCs6R8eO95vUUpCyeGtT/lX8I/YjZJmafD90=; b=NbLdgIkCc+yH/GfSisI0WY9P43
	XnSIPYXmJf7kWE7vt8ZvjTnyLV9VgjFCywQfzLqCDigWle5tQll4SFHXwFfZQopdyB2NvDhZYZaHg
	tBE0VeTFYoAD9uVxdZrSOqaRYhNmohIIjo7/Ywb+isipUJz5OngCp3HQXRRi7VRl8zUw=;
Received: from [95.248.141.113] (port=61650 helo=bywater)
	by esm19.siteground.biz with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.98.1)
	(envelope-from <francesco@valla.it>)
	id 1vWLZ5-00000000FX5-3itd;
	Thu, 18 Dec 2025 21:29:39 +0000
Date: Thu, 18 Dec 2025 22:29:38 +0100
From: Francesco Valla <francesco@valla.it>
To: Fabian Pflug <f.pflug@pengutronix.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	Haidong Zheng <haidong.zheng@nxp.com>,
	Danwei Luo <danwei.luo@nxp.com>, Lei Xu <lei.xu@nxp.com>
Subject: Re: [PATCH v4 2/2] arm64: dts: freescale: add support for NXP i.MX93
 FRDM
Message-ID: <aURyQsjf7AY09n41@bywater>
References: <20251218-fpg-nxp-imx93-frdm-v4-0-cd3a9f6ac89a@pengutronix.de>
 <20251218-fpg-nxp-imx93-frdm-v4-2-cd3a9f6ac89a@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251218-fpg-nxp-imx93-frdm-v4-2-cd3a9f6ac89a@pengutronix.de>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - esm19.siteground.biz
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - valla.it
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-SGantispam-id: 70fb00a543c5269d586b1a5fc9164f80
AntiSpam-DLS: false
AntiSpam-DLSP: 
AntiSpam-DLSRS: 
AntiSpam-TS: 1.0
CFBL-Address: feedback@antispam.mailspamprotection.com; report=arf
CFBL-Feedback-ID: 1vWLZC-00000003fgS-2u2n-feedback@antispam.mailspamprotection.com
Authentication-Results: outgoing.instance-europe-west4-1fw8.prod.antispam.mailspamprotection.com;
	iprev=pass (214.173.214.35.bc.googleusercontent.com) smtp.remote-ip=35.214.173.214;
	auth=pass (LOGIN) smtp.auth=esm19.siteground.biz;
	dkim=pass header.d=valla.it header.s=default header.a=rsa-sha256;
	arc=none

On Thu, Dec 18, 2025 at 12:39:22PM +0100, Fabian Pflug wrote:
> The FRDM i.MX 93 development board is a low-cost and compact development
> board featuring the i.MX93 applications processor.
> 
> It features:
> - Dual Cortex-A55
> - 2 GB LPDDR4X / LPDDR4
> - 32 GB eMMC5.1
> - MicroSD slot
> - GbE RJ45 x 2
> - USB2.0 1x Type C, 1x Type A
> 
> This file is based upon the one provided by nxp in their own kernel and
> yocto meta layer for the device, but adapted for mainline.
> 
> Signed-off-by: Haidong Zheng <haidong.zheng@nxp.com>
> Signed-off-by: Danwei Luo <danwei.luo@nxp.com>
> Signed-off-by: Lei Xu <lei.xu@nxp.com>
> Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
> ---
>  arch/arm64/boot/dts/freescale/Makefile             |   1 +
>  arch/arm64/boot/dts/freescale/imx93-11x11-frdm.dts | 620 +++++++++++++++++++++
>  2 files changed, 621 insertions(+)
>

Reviewed-by: Francesco Valla <francesco@valla.it>
Tested-by: Francesco Valla <francesco@valla.it>


Thank you!

Regards,
Francesco



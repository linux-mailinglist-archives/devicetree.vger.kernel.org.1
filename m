Return-Path: <devicetree+bounces-256070-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C863DD317CF
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 14:04:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4B1543008742
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 13:04:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15EFC219301;
	Fri, 16 Jan 2026 13:04:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=antispam.mailspamprotection.com header.i=@antispam.mailspamprotection.com header.b="YiixPQG4";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=valla.it header.i=@valla.it header.b="P9H/Nd9m"
X-Original-To: devicetree@vger.kernel.org
Received: from delivery.antispam.mailspamprotection.com (delivery.antispam.mailspamprotection.com [185.56.87.1])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FF522045AD;
	Fri, 16 Jan 2026 13:04:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=185.56.87.1
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768568657; cv=pass; b=RBr+rgaVR2DvzGyFPFb85ciKUx42RIVipGAd1GollMd2Qxsnd/ES0vkMeQTyQVMqLkEJgjitTxRyl6rzajY27IVAfqIwyvOIDWnREzySmFTuQPNWtCNlKMz8lvlAI5gin3XIqBHAnMx5/uqw4EIjh+/WU1Pid6eS5L8WoaGpPRQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768568657; c=relaxed/simple;
	bh=XSE9gGYLw8PadLVndxcVP/TcpVS4AVlOUv4UXdPej8w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nIopTJP2/KTUWqVw9707ypXCkFFWUWg9zqVVZJs+8+5IZIVLVDSGr1SHz0IQ0Af1xO5T/otjaL6DzjFv5Y8H2JOUBfhd6ZjJRFKKzA+1OFo2gyg9HHCRdmi4V3ZA3rt7IJivLSLbOvjsNtAGUCW6/s5/wrGUbK54Mazgcq33bdY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=valla.it; spf=pass smtp.mailfrom=valla.it; dkim=pass (1024-bit key) header.d=antispam.mailspamprotection.com header.i=@antispam.mailspamprotection.com header.b=YiixPQG4; dkim=pass (1024-bit key) header.d=valla.it header.i=@valla.it header.b=P9H/Nd9m; arc=pass smtp.client-ip=185.56.87.1
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=valla.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=valla.it
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=outgoing.instance-europe-west4-l5rn.prod.antispam.mailspamprotection.com; s=arckey; t=1768568655;
	 b=2zCtvW/SpoijHELt0IOoMSl3gLbTyFFV7phB8TggCWZM0V4qxVUeo8+9IUv5axzNp7VbRHBheD
	  Ww+CdAZTofLug20uOIVU5v6VUB0B1oTg9JnPjw8ru8GevUs7UIyrEA1zRLAwybI9R8s18pGjbJ
	  IuIAicMhCVJDxx3GJ4OJmd3t1FEFzLPp7MMhu6UVn3Aaew+s1IVYxhboYokuOCHsAZhE5WyMIr
	  va8DqZNtmJs25O7JeTOt/hO5HZYPfPPfhvcz6wBdEgHBQFAu36NDigiv2tUP66s5qTal+uvCSx
	  Ldfpu3odCP+eDESg71zJnZG5MmFKGa6oLiFJzgVg0wp0Lg==;
ARC-Authentication-Results: i=1; outgoing.instance-europe-west4-l5rn.prod.antispam.mailspamprotection.com; smtp.remote-ip=35.214.173.214;
	iprev=pass (214.173.214.35.bc.googleusercontent.com) smtp.remote-ip=35.214.173.214;
	auth=pass (LOGIN) smtp.auth=esm19.siteground.biz;
	dkim=pass header.d=valla.it header.s=default header.a=rsa-sha256;
	arc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed; d=outgoing.instance-europe-west4-l5rn.prod.antispam.mailspamprotection.com; s=arckey; t=1768568655;
	bh=XSE9gGYLw8PadLVndxcVP/TcpVS4AVlOUv4UXdPej8w=;
	h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:References:
	  Message-ID:Subject:Cc:To:From:Date:DKIM-Signature:DKIM-Signature;
	b=2MIV3yoahue8SheXmdUheBbtGR7zcvAKLFwOlCykma5AkH+IAkKKDbX7i7/Sgp84fTVI7bsRbQ
	  LyLZ5lzxyqvJr4lLwahHdC7BKcDVzrVxQpxEpnRPF6GAMqsHwT3Hz9qdASjD/Rh/X6P4Uf2lK4
	  0dGeKz14NGTTVj7XcZPf42xD5vmcnqVFBCgmlj85i7BOZ7DwFSHJfE1lBAzTCst7jyWQgtDpoW
	  JZJNhx8OQ8E8psPaV6F9p4Clqirc3qmj3WIj5wKN7y4suxytrdT1aYRmlUXp4PGjA6Z7VATQGg
	  bWPu7UHzW0IlKCN6q4YopGtgHj2LQzkozg2zTb05EK+pVQ==;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=antispam.mailspamprotection.com; s=default; h=CFBL-Feedback-ID:CFBL-Address
	:Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Subject:Cc:To
	:From:Date:Reply-To:List-Unsubscribe;
	bh=xkK1Ejw0KxmIMEk93SickPJJ21Kj8+bMSYnsUDhPGNk=; b=YiixPQG4G3rGRqCrm+THLSx7JN
	S4EciL+0xzi0U6sDXtGlBnLDMjD6tmoX/UUw7IOdw+kyO7r8VHyPGqx8S54/oCByyV39tbE79v142
	fBRtYh5oa2MC+bLvUlqWzyPs/2CtZzlSH2AH30kQsP7uiW2ayG3veKI0yJPvsrDy17x8=;
Received: from 214.173.214.35.bc.googleusercontent.com ([35.214.173.214] helo=esm19.siteground.biz)
	by instance-europe-west4-l5rn.prod.antispam.mailspamprotection.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.98.1)
	(envelope-from <francesco@valla.it>)
	id 1vgjUj-00000001br1-1OTR;
	Fri, 16 Jan 2026 13:04:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=valla.it;
	s=default; h=Subject:Cc:To:From:Date:list-help:list-unsubscribe:
	list-subscribe:list-post:list-owner:list-archive;
	bh=xkK1Ejw0KxmIMEk93SickPJJ21Kj8+bMSYnsUDhPGNk=; b=P9H/Nd9meIDed7qu/cwVrC+SAf
	H5B+l1TOcHF68tQvca42uE+EHuoM987Rq7Xu9rl1ZwHLEiK8M+VUs0dKW8y8yGIyTl3ie6IMU4UKh
	YVStldrpw4Qp+67x9HRFZ6jHr7lRObEXorWIXr7JrzFSHSJSk6k4drDjCvVA6MeGoKgQ=;
Received: from [95.248.141.113] (port=60003 helo=bywater)
	by esm19.siteground.biz with essmtpa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.99.1)
	(envelope-from <francesco@valla.it>)
	id 1vgjUd-00000000M5y-1XmV;
	Fri, 16 Jan 2026 13:03:59 +0000
Date: Fri, 16 Jan 2026 14:03:57 +0100
From: Francesco Valla <francesco@valla.it>
To: Daniel Baluta <daniel.baluta@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: imx91-11x11-frdm: fix CAN transceiver gpio
Message-ID: <aWo3PZni1Pb9T6FI@bywater>
References: <20260115-imx91_fix-v1-1-9351c3fac76a@valla.it>
 <CAEnQRZD2CvQLO2hBDbX2H8PeeNkzQmLoK6jzeF6HKw8HHa8ukg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAEnQRZD2CvQLO2hBDbX2H8PeeNkzQmLoK6jzeF6HKw8HHa8ukg@mail.gmail.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - esm19.siteground.biz
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - valla.it
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-SGantispam-id: 6a24f6a303db1600773d4a81a1927982
AntiSpam-DLS: false
AntiSpam-DLSP: 
AntiSpam-DLSRS: 
AntiSpam-TS: 1.0
CFBL-Address: feedback@antispam.mailspamprotection.com; report=arf
CFBL-Feedback-ID: 1vgjUj-00000001br1-1OTR-feedback@antispam.mailspamprotection.com
Authentication-Results: outgoing.instance-europe-west4-l5rn.prod.antispam.mailspamprotection.com;
	iprev=pass (214.173.214.35.bc.googleusercontent.com) smtp.remote-ip=35.214.173.214;
	auth=pass (LOGIN) smtp.auth=esm19.siteground.biz;
	dkim=pass header.d=valla.it header.s=default header.a=rsa-sha256;
	arc=none

Hi Daniel,

On Fri, Jan 16, 2026 at 01:40:11PM +0200, Daniel Baluta wrote:
> On Thu, Jan 15, 2026 at 8:25 PM Francesco Valla <francesco@valla.it> wrote:
> >
> > According to the HW schematic, the CAN transceiver does not have an
> > enable pin but a silent one. Fix the GPIO property name and polarity.
> >
> > Fixes: b4bf5e55899e ("arm64: dts: freescale: Add FRDM-IMX91 basic support")
> 
> Just for clarification GPIO 23 is connected to a pin named CAN_STBY.
> So I wonder if it isn't
> better to use standby-gpios instead of silent-gpios?
> 
> I am looking at FRDM-IMX91 schematic file SPF-94610_A1.pdf.
> 
> But on the other hand we have
> 
> static const struct can_transceiver_data tja1051_drvdata = {
> »       .flags = CAN_TRANSCEIVER_SILENT_PRESENT | CAN_TRANSCEIVER_EN_PRESENT,
> };
> 
> So TJA1051 is not advertised as having a stdby flag.

Regardless of the name of the net, the functionality of a standby vs a
silent pin is very different. In this case, since the TJA1051 is
including a silent pin (pin S in he datasheet [0]), I think it's better
to declare it that way.

In case someone adds the support for a phy-oriented listen-only mode
(which is something I am thinking), this wouldn't break the integartion.

Regards,
Francesco

[0] https://www.nxp.com/docs/en/data-sheet/TJA1051.pdf



Return-Path: <devicetree+bounces-237213-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C4A87C4E3E8
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 14:52:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1E41A1881AC7
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 13:50:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B48E352946;
	Tue, 11 Nov 2025 13:50:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="eWREf8iX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [220.197.32.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 429CF35292F
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 13:50:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762869026; cv=none; b=diTTSlYTNe3HsUKIkS2iT3BwT8ZRmMDBI1wL9hDswZ0xpvINN9SkpWipSoSsTeeDsiy1KQIU/Uscb9h4GZxAd+QC2dC9XpP9aT2k2G0pIWGNvpZ+Bv4+a9/ay8ITU7HPkSJqgPKWVaI+BwrjdzVOjdxPCWbi5T/ZjAV01bShVLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762869026; c=relaxed/simple;
	bh=EplIHvrvZL420qH1C2gc31qKDeP35H2HjVrJb3PNEHQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rE8jqt3g47eBox31rnT5wZVpnX90OYnJgeY3Lr1qTLzDx2+s1Kl+pGRsBI8xJDkKhXrLbsvTsyC9yBbaqD+m1eyECBlUlpwCEIOPYdIDSkUGk2SICmXyOuwaPLONjijRq4LB/9bsQj2YO59nBI+eW9Ru6WXipxr6/4yurTuNvNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=eWREf8iX; arc=none smtp.client-ip=220.197.32.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:To:Subject:Message-ID:MIME-Version:
	Content-Type; bh=2vkKMxf17e38diTrd8d7LZ5FzwArRfBMVD8++NmkNFY=;
	b=eWREf8iXLuLd9plb6jnp4QaIo7pbi+FuTcQL/YI0+h1TazDRMOCjwfyHburar7
	wOvk+GmqVGKEFqr90TwEpAJVOX3NixI1qYQUhMrKV8Gv96nlvA7A+xCJmPuZxMx0
	zGk4qSFKoX0B2fl6Jhrj/tVYrkMl9lf7TYciVLi2qQTqE=
Received: from dragon (unknown [])
	by gzsmtp3 (Coremail) with SMTP id M88vCgAHhmfpPhNpH63GAQ--.5223S3;
	Tue, 11 Nov 2025 21:49:31 +0800 (CST)
Date: Tue, 11 Nov 2025 21:49:29 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	Daniel Scally <dan.scally@ideasonboard.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH] arm64: dts: imx8mp-debix-model-a: Fix ethernet PHY
 address
Message-ID: <aRM-6aREP-hrnio0@dragon>
References: <20251026121730.13197-1-laurent.pinchart@ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251026121730.13197-1-laurent.pinchart@ideasonboard.com>
X-CM-TRANSID:M88vCgAHhmfpPhNpH63GAQ--.5223S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUza9aUUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiNAvoTmkTPutIKAAA3W

On Sun, Oct 26, 2025 at 02:17:29PM +0200, Laurent Pinchart wrote:
> The RTL8211E ethernet PHY on the Debix Model A board it located at
> address 1. Replace the broadcast address with the correct unicast
> address.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Applied, thanks!



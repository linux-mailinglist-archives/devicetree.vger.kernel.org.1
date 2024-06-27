Return-Path: <devicetree+bounces-80546-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9763D919F7E
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 08:44:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 32444B22228
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 06:44:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67CF02D030;
	Thu, 27 Jun 2024 06:44:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="WfHVKnWo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [220.197.32.18])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A2F924B5B
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 06:43:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719470642; cv=none; b=LEFP0VNvdLgVDWhC5mqAKj8w3iGG+CMoVdZ3k4XczebZGATxy20bhKCWzA6Z0y1CYQtknwPVaZLEu/zQOZlb2SfS3Jf6hFb6QF78Ht0fVnGPg4K1PVKniGwwHj1cIx4JoUCaC8Nb5VdnxUSp1Jk6gEbc34cYrDErxaBZmBWQ2bo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719470642; c=relaxed/simple;
	bh=2A1/2HrTKjDsWOcr0jMGmUfyKlVQymgD4VQxvVVU4YU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DmEEdlcU23QVeSL6+pDOCFIBOsvcLOSysYCKTAkrJ86ZisLlfoTFYitTtjqgXEX37z6t9xhN6dL772LEqrLVh6JgDKmlJklOdUf0XQ1bvix76/ZmIPR2AKw614fL3ymvNPymWxnkw3405QZv71xsNb+T87wfgbsOO/CztwgzRHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=WfHVKnWo; arc=none smtp.client-ip=220.197.32.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=RL696Ekw/RfvvXhAh6mLeEdJy7RchRYI7LZ9WoWmZmY=;
	b=WfHVKnWoAYdQIAJaPD9LbvEr4LBWowDXNKWrgvQCvFNqObT3c+HJfMfpdwhJsj
	W8D3HzHSO0ttGMSjOw8/RQ1TpAn3HKejlOrT9cnrXlK1+TVmI8GrQ2vQVfmUCouf
	C4ohkUnREifqI4O3lp4E/haofiKgiUMPX4mlOwu/gvHa8=
Received: from dragon (unknown [114.218.218.47])
	by gzsmtp1 (Coremail) with SMTP id Mc8vCgDHj2qQAn1mR28ZAA--.25037S3;
	Thu, 27 Jun 2024 14:11:30 +0800 (CST)
Date: Thu, 27 Jun 2024 14:11:28 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	=?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH] ARM: dts: nxp: imx6: convert NVMEM content to layout
 syntax
Message-ID: <Zn0CkGMPJ/piux2Z@dragon>
References: <20240520060222.2980-1-zajec5@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240520060222.2980-1-zajec5@gmail.com>
X-CM-TRANSID:Mc8vCgDHj2qQAn1mR28ZAA--.25037S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUVG-eUUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiBBILZWZqryB7ewAAs7

On Mon, May 20, 2024 at 08:02:22AM +0200, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> Use cleaner (and non-deprecated) bindings syntax. See commit
> bd912c991d2e ("dt-bindings: nvmem: layouts: add fixed-layout") for
> details.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>

Applied, thanks!



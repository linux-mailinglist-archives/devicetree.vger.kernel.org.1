Return-Path: <devicetree+bounces-93198-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F34894FF6F
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 10:15:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E0E94B20A1D
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 08:15:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD302139D19;
	Tue, 13 Aug 2024 08:15:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="GVRG9SPn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [220.197.32.19])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1656E23A8
	for <devicetree@vger.kernel.org>; Tue, 13 Aug 2024 08:15:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.19
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723536910; cv=none; b=mkdQ79H+4ERAt187ihpwxddXXkYIJKr6KSvB/mNimt0NKjHmWsBQhEh6n+PELiFJxJQc3IbD+P3Hr26J2OFc7qwXAohktFaU/oA2N5D2HjJAKk6DwQSr0zN2D/r4+3oJDM8XTlDfX7HGRKH6hekE47YE8dyRPxDVoNbxFUb8uSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723536910; c=relaxed/simple;
	bh=3AyQxuUOn0ZdX0WCT7YlYt5V4PoOCIpo7SKBHIAE7r0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=q648DAlaT7np2scgj742tXXUqs4Pu9bauDDYXH/JvamhDg7yCk1glFqTXaqzHN+drUHRaw9WBW33yMhc7gQMBoOBdVCXIKjowtPtEZl3l2yVlPzMkWgc6/ThUS6ZAbkrv2ISKi89k5PBc3TFp/juHU4y3LoY8huQ7H26co85mDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=GVRG9SPn; arc=none smtp.client-ip=220.197.32.19
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=Vy3wmrLVcBgYdFbXv+wcegrCL/A4+QLP9Z4SXXo1iw8=;
	b=GVRG9SPnEhDEtcyMcrz/JZIRjVmlDkztIumIGCsWNEIiGcf6Ru6LHxqw1yXXrw
	S7OBmNLusHtKJ6fvetulcaUYWPp8lbe1kn4+8BQpiYZ9XB8wyDqH/Cf8wXqspQ67
	ZGlpKNljaj8bAHVbGttPmUrnd6dlP9jE5+AERF7VkpVlc=
Received: from dragon (unknown [117.62.10.86])
	by gzsmtp3 (Coremail) with SMTP id M88vCgD3f8DkFbtmcCYbAg--.8967S3;
	Tue, 13 Aug 2024 16:14:30 +0800 (CST)
Date: Tue, 13 Aug 2024 16:14:28 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: =?iso-8859-1?Q?Jo=E3o_Paulo_Gon=E7alves?= <jpaulo.silvagoncalves@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	=?iso-8859-1?Q?Jo=E3o_Paulo_Gon=E7alves?= <joao.goncalves@toradex.com>,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2] arm64: dts: imx8mp-verdin: add HDMI audio support
Message-ID: <ZrsV5GNh7fyOUFo4@dragon>
References: <20240807135419.248219-1-jpaulo.silvagoncalves@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240807135419.248219-1-jpaulo.silvagoncalves@gmail.com>
X-CM-TRANSID:M88vCgD3f8DkFbtmcCYbAg--.8967S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUsPfHUUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiAhw6ZWa7DWMZOQABsT

On Wed, Aug 07, 2024 at 10:54:20AM -0300, João Paulo Gonçalves wrote:
> From: João Paulo Gonçalves <joao.goncalves@toradex.com>
> 
> Add native HDMI audio to Verdin iMX8MP and all its carriers boards.
> 
> Signed-off-by: João Paulo Gonçalves <joao.goncalves@toradex.com>

Applied, thanks!



Return-Path: <devicetree+bounces-207996-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FF98B31467
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 11:57:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0BB9C3BB1A6
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 09:51:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E052B2F3C3A;
	Fri, 22 Aug 2025 09:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="p5fo/eP/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [1.95.21.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 799EF2882CA
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 09:46:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=1.95.21.15
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755855994; cv=none; b=hVLKSGevpofQay3GTgumzGZ0OaPpqEst7khpExNI93ILdrH2O9I6nHljJDFS1zVBRAQp4SHtBb2Ylczj/mDM2cgzbiyhb+2CXxbA/CGLEwhAUxkFj8U7zZWBU4a6wb4j5EoL6QA7HSo0tUtkMwjKuE92yiFKmybYEPSQ+AiCI0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755855994; c=relaxed/simple;
	bh=hZIFeZM9VhRbmPOPc61DxNlifcA9CMWh824SMbcFkIU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=T8waElyIbbDKXjW8+sjiCaYMvbE7m54mUSJgTeplf4Pwhv8bgV+q6CIPYgNlHVrGvbyBHEX/mVp3l3eGznNJnyoONF81bcfUlEW7FnHhUwZauWW0GfPU1Zt8iSETo4sDHyaraklUgKmZpNn+y/ti3uhu7Xby5NhKN/EzUahdqRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=p5fo/eP/; arc=none smtp.client-ip=1.95.21.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:To:Subject:Message-ID:MIME-Version:
	Content-Type; bh=clS6Cdmf4KgVVXMdWWXj4Q3e/QPaKy98Ok5lrn1DW90=;
	b=p5fo/eP/9e7BjfxyPpREoZ4SPwJdTa20+LUnauDJb9TqbZLH4JrYuqBmItEJl2
	GjhaH+IKU6bJz/WEA+U+Mr2qXX7yb1n4hfT4bwpOg/lKjANdSyLYBZGVO3qIBeY1
	ySmc4cdeQlEQl2E9S+MsLaJftTyJH7D2wVCYokbcymweQ=
Received: from dragon (unknown [])
	by gzsmtp2 (Coremail) with SMTP id Ms8vCgDHr_hJPKho45soAw--.10809S3;
	Fri, 22 Aug 2025 17:45:47 +0800 (CST)
Date: Fri, 22 Aug 2025 17:45:45 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Marek Vasut <marek.vasut@mailbox.org>
Cc: linux-arm-kernel@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org,
	imx@lists.linux.dev
Subject: Re: [PATCH] arm64: dts: imx95: Fix JPEG encoder node assigned clock
Message-ID: <aKg8SS5X2t_jXnDh@dragon>
References: <20250820162747.209626-1-marek.vasut@mailbox.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250820162747.209626-1-marek.vasut@mailbox.org>
X-CM-TRANSID:Ms8vCgDHr_hJPKho45soAw--.10809S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxU2LZ2UUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiNQtlymioPEu4JQAA37

On Wed, Aug 20, 2025 at 06:27:26PM +0200, Marek Vasut wrote:
> The assigned clock for JPEG encoder IP has to be IMX95_CLK_VPUBLK_JPEG_ENC
> and not IMX95_CLK_VPUBLK_JPEG_DEC (_ENC at the end, not _DEC). This is a
> simple copy-paste error, fix it.
> 
> Fixes: 153c039a7357 ("arm64: dts: imx95: add jpeg encode and decode nodes")
> Signed-off-by: Marek Vasut <marek.vasut@mailbox.org>

Applied, thanks!



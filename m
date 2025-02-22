Return-Path: <devicetree+bounces-149815-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2638EA407D9
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 12:17:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1CDD2178174
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 11:17:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF57B2066C8;
	Sat, 22 Feb 2025 11:17:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="dnNUa52A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [220.197.32.16])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0C0D13BC0E;
	Sat, 22 Feb 2025 11:17:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.16
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740223035; cv=none; b=KH1JFnYwpNsyVX1cr94O2qG3g0GyjqFj8qN/yZAUyTem2hKCKNjNWfeNAm3Lgly8WCoblykQrE7LAep28dt9nFNL3HMoBjjtgDq+07D8Gg+0OPEXrHuCd29uSwDq4PkdsC366QRwYV5IaN0BsNTPBIlK82loYkeFoG5rs2sNV7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740223035; c=relaxed/simple;
	bh=dflH2HmHUuNcWroyDa0Zen2AU1YwDykE3SoAGJ3oM4c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=d74VniPL9PFVNYcZfZtSv+kl8qL/0ejmWRUdpzIiy+0xmTcp2UISBkOO+iwi+1SKnjNKvdg6rLOjHcKkOwTsFf4EytFWExAE7YhmMTVT0ItpPO3fdiCN5gWummzhBetKMMYdIKdmqTJ+0/XIbONeox5d6wnCRtsJnQlwyt1PRmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=dnNUa52A; arc=none smtp.client-ip=220.197.32.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=rNlxsLndcPoIjInqZQdWVtvA9nkiN43ptPaG8BsfZ0w=;
	b=dnNUa52AOab8U1KTcJ7nMJIHMBnmOg0V1hp15vozqOPeCdXV4K00B4vFD67E2G
	9O8NMmWNBI3VcmqOPk6FAeZIt055WcW/d7eiL2uIlAiPkF2U5ELx8DeviU4Q4SCm
	W1KOYzkj0VlbRPzDOMLO9Bb0k7/WGgu6rILuf78NwfDn4=
Received: from dragon (unknown [])
	by gzsmtp1 (Coremail) with SMTP id Mc8vCgAXqg74sblnHryPCQ--.22155S3;
	Sat, 22 Feb 2025 19:16:10 +0800 (CST)
Date: Sat, 22 Feb 2025 19:16:08 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, linux@ew.tq-group.com,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/4] arm64: dts: freescale: tqma8mpql: Add vcc-supply for
 spi-nor
Message-ID: <Z7mx+KwMrvYNRGuu@dragon>
References: <20250121103026.1404856-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250121103026.1404856-1-alexander.stein@ew.tq-group.com>
X-CM-TRANSID:Mc8vCgAXqg74sblnHryPCQ--.22155S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUxuWlDUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiBAv7ZWe5p-wfsAAAs7

On Tue, Jan 21, 2025 at 11:30:22AM +0100, Alexander Stein wrote:
> (Q)SPI NOR flash is supplied by 1.8V. Add the corresponding supply.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied all, thanks!



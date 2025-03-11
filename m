Return-Path: <devicetree+bounces-156353-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F3B3A5B5DD
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 02:28:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 50CB1165B97
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 01:28:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C3FE15A8;
	Tue, 11 Mar 2025 01:28:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="VhMpyXWu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [1.95.21.15])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BBF7360
	for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 01:28:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=1.95.21.15
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741656492; cv=none; b=tC3LqEZLR3Ni6wkvD3t5DAC5SaMZPWx/5QxkB1bKz91tObQG/wmNRPKRfAd6W8l5DvXTym9dHjnUe5TQGaC6GwKaGjRX6O2sp2AAvDxqkMlCI56bh66OFtpwnz0U+mpNBJ5xwiXLBCW2iMFAihiVX3/CFfm6Zw5fdHzqQiFypnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741656492; c=relaxed/simple;
	bh=874v8COafl3Qhv6xKrbErRRlovnYAQlx9ser4aWd+MM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sD/7fodGgroIowyDQ8cEjSkSbWuTtFMXJjMXLy6dYdbXwgSV8M6D550u4pmDbtfzrOawjvixe7JtTfHbKngeAH9XK8nMbhJsDM/HDTasyEt+NNX6RYODa5md4K+kGdfRCC/GKXk5U2WoFi5p+difKVXXVKybhBFmaSUsacQd9WU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=VhMpyXWu; arc=none smtp.client-ip=1.95.21.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=IUd1uRT/xLiAftfidXKIq5PpZVoa+Ty/sg4D9wULGPE=;
	b=VhMpyXWueRjMCzQuQzyXA8/6J8sU6SRwpZn1XOlJH7FejxOxo2i8eYYtRjDFDs
	FcWD/ydRINoqPyZHI5bd6d02I+6n/NxCufbCaQUYYQY/TDrym/maZfJKeedlfNc1
	biv8Ug1kgoyhFEDs+KoLbDoWyw1c1buG6xG3QK1yt87fo=
Received: from dragon (unknown [])
	by gzsmtp3 (Coremail) with SMTP id M88vCgBXC0+Hkc9nkneuAA--.826S3;
	Tue, 11 Mar 2025 09:27:37 +0800 (CST)
Date: Tue, 11 Mar 2025 09:27:35 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	patchwork-lst@pengutronix.de
Subject: Re: [PATCH] arm64: dts: imx8mp: configure GPU and NPU clocks to
 overdrive rate
Message-ID: <Z8+RhzwHNJvUcF+P@dragon>
References: <20250204182737.3361431-1-l.stach@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250204182737.3361431-1-l.stach@pengutronix.de>
X-CM-TRANSID:M88vCgBXC0+Hkc9nkneuAA--.826S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUU8529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxU4db1UUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiCwINZWfPUl2s+wAAsR

On Tue, Feb 04, 2025 at 07:27:37PM +0100, Lucas Stach wrote:
> A lot of other clocks on the i.MX8MP, including the DRAM set up by the
> bootloader are already running at overdrive clock rates. While this is a
> deviation from the configuration of other i.MX8M* family SoCs, overdrive
> is the default for most i.MX8MP boards and only some special purpose
> boards will choose to run the SoC at nominal drive rates. Up the GPU and
> NPU clock rates to their overdrive level to be consistent with other
> clocks set up in the dtsi.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

Applied, thanks!



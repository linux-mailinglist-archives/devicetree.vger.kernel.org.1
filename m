Return-Path: <devicetree+bounces-134654-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 789D99FE263
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 05:31:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2D4FA161709
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 04:31:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE3D9147C9B;
	Mon, 30 Dec 2024 04:31:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="RjAJ31d7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [220.197.32.16])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E1EF2AE8D;
	Mon, 30 Dec 2024 04:31:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.16
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735533099; cv=none; b=D19Z960jx7ZALk6FtYpX0BzcM7e8LBrvAiS5VwTzShxZV3LKBj45BPFwFcj2VQW3UvyWJv3uhWjxyLKYcJWeAMbE/yJ2KFbJKByRd3vrSGH63t4rotAMKVxEpsGJI6PX6rjPdRRAi6+ZvQ7mEL35VbBcsndkqClpw+pJL87bQZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735533099; c=relaxed/simple;
	bh=OgxOz7T/85Rn8Xv1Ep1lp4z8z6lkr2utNhxKxz8/4t0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LjhyZMT/yGMuh2mw8XiRdmzq6JUd22k6pauw3yfCX37TNsUNLwGpUBO8kH17Lx8OTUaZt01ZXAfSeT0UnZQ7KFNxbSZMjElB2pbVBjTu2oaRjAd7z7opTxEErKiPVuyMTro5aVii9fru7xCCuLo0Xg+zeAbRaHOpsBrizpCP6jk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=RjAJ31d7; arc=none smtp.client-ip=220.197.32.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=VbAGOV1h5XzJc+x6qKEPvwu+pAupe3fETtmFrAGVrxA=;
	b=RjAJ31d78vZcDdlRrRgjQf+2wiTSfxVUxoUic1o4ISibgs3x9si75KTsJDrpsn
	Wnn3aKWpFDJfVbPUlzfs/Dzoq2qTEc4eQkis5XXMo6jquTXuOSNm2mNeFlS4WwiL
	nuOYY7BsXIRq6aPQY5WcWTBnxGGn8ldUhtM9nenFJg9pk=
Received: from dragon (unknown [])
	by gzsmtp1 (Coremail) with SMTP id Mc8vCgBnjrn2IXJn8c4DBg--.60875S3;
	Mon, 30 Dec 2024 12:30:48 +0800 (CST)
Date: Mon, 30 Dec 2024 12:30:45 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Peng Fan <peng.fan@nxp.com>,
	Markus Niebel <Markus.Niebel@ew.tq-group.com>,
	linux@ew.tq-group.com, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] arm64: dt: imx93-tqma9352-mba93xxca: enable Open
 Drain for MDIO
Message-ID: <Z3Ih9eG7TqKGonkx@dragon>
References: <20241205150730.3132807-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241205150730.3132807-1-alexander.stein@ew.tq-group.com>
X-CM-TRANSID:Mc8vCgBnjrn2IXJn8c4DBg--.60875S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUsmFCUUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiEQ-FZWdyDppGaQABsR

On Thu, Dec 05, 2024 at 04:07:28PM +0100, Alexander Stein wrote:
> From: Markus Niebel <Markus.Niebel@ew.tq-group.com>
> 
> The board has a pull-up resistor for MDIO pin per PHY design guide.
> When MDIO is idle, it needs to be high and open drain is better
> to be used here for power saving.
> 
> Signed-off-by: Markus Niebel <Markus.Niebel@ew.tq-group.com>
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied both, with s/dt/dts in subject.



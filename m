Return-Path: <devicetree+bounces-45083-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C36778609B4
	for <lists+devicetree@lfdr.de>; Fri, 23 Feb 2024 05:00:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 48E04B23F81
	for <lists+devicetree@lfdr.de>; Fri, 23 Feb 2024 04:00:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8680028EB;
	Fri, 23 Feb 2024 04:00:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="iSi5lxSb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-177132.yeah.net (mail-177132.yeah.net [123.58.177.132])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2404DDA6
	for <devicetree@vger.kernel.org>; Fri, 23 Feb 2024 04:00:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=123.58.177.132
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708660852; cv=none; b=aXjd4lvo5ieZkPm+QC49VVLhZny2Ajo+Z5UQLrfVoA0wNYna+TQ6DcD7TGJtOGlULt+hrSFkZeLwiwvH2N3e+q6EqC/HpBPzENexpU96/BSnZlEI6tqrWsh6jJUw8thqatVRwOec5L/lDi8JhUOTYHs5KXM646HwUYpOYu1dL8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708660852; c=relaxed/simple;
	bh=s6xlqHirdWt87G2AiMNP3OpOt2kQWTW3DNE0BRZ+u14=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=B1VEirL8QZB5TSU+g1utEb+1yVo92k8D8zZXEh5In/ksSg2uJ1M8OOIH7MeveOozU1wA7wred4TneqEBcP9RehZgG4VRmn8RcatxThSXPVC5w6+83WvgFiTwnDajZOPa20Buoj1o9srlkaTQb12cnDiTsUeHHfpQhZmI1sbAH0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=iSi5lxSb; arc=none smtp.client-ip=123.58.177.132
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=TEZ3yDuA/VZk2mofgCVyRvC5qJrCYXgD2IK8gap4pt4=;
	b=iSi5lxSbCYfZ9PIyBzWQx/G3c51pMYlVbgm1lSGypi+r0EVc+m/vJd5Y9QsJCv
	fvzMfh5FhYCrm5zxNc3lFsXDI0Ai9rTCh0kf1sBOyffPRI8EUvJEDL63vz5tnYK6
	L+OFzo2or6QigBRSQwO2XGm+OrWM6sdygvMAaLu1VFB2E=
Received: from dragon (unknown [183.213.196.200])
	by smtp2 (Coremail) with SMTP id C1UQrAD33ohOGNhlUyAuBA--.6026S3;
	Fri, 23 Feb 2024 12:00:15 +0800 (CST)
Date: Fri, 23 Feb 2024 12:00:13 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/2] arm64: dts: freescale: imx8-ss-dma: Fix edma3's
 location
Message-ID: <ZdgYTQh6avExV4qp@dragon>
References: <20240206080459.1741172-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240206080459.1741172-1-alexander.stein@ew.tq-group.com>
X-CM-TRANSID:C1UQrAD33ohOGNhlUyAuBA--.6026S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUIxpnUUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiDw+NZVnxce1JXQAAsI

On Tue, Feb 06, 2024 at 09:04:58AM +0100, Alexander Stein wrote:
> Sort nodes by base address. edma3 comes later in the memory map.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied both, thanks!



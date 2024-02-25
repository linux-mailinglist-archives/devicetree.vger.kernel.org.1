Return-Path: <devicetree+bounces-45661-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D7271862A62
	for <lists+devicetree@lfdr.de>; Sun, 25 Feb 2024 14:00:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1625E1C209C3
	for <lists+devicetree@lfdr.de>; Sun, 25 Feb 2024 13:00:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2EECA10979;
	Sun, 25 Feb 2024 13:00:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="RZo8XT1X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-177131.yeah.net (mail-177131.yeah.net [123.58.177.131])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B62EA469E
	for <devicetree@vger.kernel.org>; Sun, 25 Feb 2024 13:00:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=123.58.177.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708866028; cv=none; b=VGnUNIbsmmpysj2MlcwuFBCZ0qM0/Rij6jbMjAA+d8UqOfxNS8Niq7ExsHDCR2pLLEZIIlQ/cqH/S9hfPBlnD164RIwpkSpkyQO8ZvX8Bl4fSBjr6bm7Gi4O1WAYntH6EgDcezSM0deReEQKilQmZbDz2TLNFR9oFTxx4we/1c4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708866028; c=relaxed/simple;
	bh=xRLMrJaSllOfiW1vmbtSPmZk474+nvCVdvbKt5loOpg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Mmyii0F6HqupLWoK1zybvye0s89n2GkHvHUuAEiD5C6AsXgrx5wIWrBo0yDPNjgyHwpmRVtXQZVqMGmwsoqc0D/yxljFP6MAzbIKaksG7tpBzaMXPJKmWkRcVE8tkuyJ85SudfKZu3uig0DaD8t3Eizcflk7o/ZvX7E86O8jzCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=RZo8XT1X; arc=none smtp.client-ip=123.58.177.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=SbY2e0GcrcVMmk7giFN3EkgFayakueCensr38uhr8ME=;
	b=RZo8XT1X0EAjb2b8kEI+jUWx2MhE83yfP+0+9q+K1pEOCUugPOgwyQffzwgvJ4
	Om0F5Mn771wnyBws/qdxLzv5NzOVbu+n4B80S8OoglulAHP4Q8ueZkyyfEJ7oiFj
	tCnqcoRPdXW/K91TSR8whDR24vELUUxQWM70Qq3RM5AWE=
Received: from dragon (unknown [183.213.196.200])
	by smtp1 (Coremail) with SMTP id ClUQrADnz4euOdtlvztXBA--.59720S3;
	Sun, 25 Feb 2024 20:59:28 +0800 (CST)
Date: Sun, 25 Feb 2024 20:59:26 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	NXP Linux Team <linux-imx@nxp.com>, linux@ew.tq-group.com,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/1] arm64: dts: mba8xx: Add missing #interrupt-cells
Message-ID: <Zds5rnsi8DFREQXx@dragon>
References: <20240221144012.533946-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240221144012.533946-1-alexander.stein@ew.tq-group.com>
X-CM-TRANSID:ClUQrADnz4euOdtlvztXBA--.59720S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUsPl1DUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiDhCPZVszYWKLvQAAsp

On Wed, Feb 21, 2024 at 03:40:12PM +0100, Alexander Stein wrote:
> The GPIO expander is a interrupt-controller, so add the missing
>  #interrupt-cells property as well.
> 
> Fixes: 71363a485ad0c ("arm64: dts: freescale: add initial device tree for TQMa8Xx")
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied, thanks!



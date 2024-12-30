Return-Path: <devicetree+bounces-134655-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FB509FE266
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 05:33:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E33121602E6
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 04:33:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6B3D15CD74;
	Mon, 30 Dec 2024 04:33:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="ONItbrki"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [1.95.21.15])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBEFE7DA73;
	Mon, 30 Dec 2024 04:33:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=1.95.21.15
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735533216; cv=none; b=c/fYVPDGNz5YaoUGr8g9PhhEwjZZPjQHyCIPE8UDR0xrXwPqi53AO+3iGGTqqZ83Ra2PH7NZuZt1ZW3LCye6h487U1aTHJEVCVm5xNOyOKAYZGluBRiflRSUapBi8n1dMOza+9KtnRV1nBp3blA37XqEEarARfZG0NQ9Xju557Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735533216; c=relaxed/simple;
	bh=g+vuPhQyFl6UPd393S0vFYqJMu+nWZUlGhRDquuIT18=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fugs+VJTpsVETS48eWq+LsYqQouoq7lEBqXigBVEfwd2GsOsuhP+G+dT5PJOFO+FjV+KBjjT8oSHFtweud6YkrALzsLu1v2OyJZeL9Nckd71IY96nrIj5isdHqRKEyLC2Q1fZw6EKDMBIl9JkOZXY35i3zFpZYn4+v9IBftzyQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=ONItbrki; arc=none smtp.client-ip=1.95.21.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=sRbOUu8aGJVO600q2KogDHBrNV2xszMwCHc4iiXDYuk=;
	b=ONItbrkihs+pA902M+iRc/mvKo6K5EiqF45hs6AogEPrx9aQ1XYO6O0gGAEs3h
	vVa8xgPEs4uQfcvTTBOdbvqV1N4b/DI+mbEsQxgGk04Iw8ERhL/5woDbnZkxrFI1
	4J46z3QMTGEifviG8LMWZOPFMTYp4jg72B35602iG+PRk=
Received: from dragon (unknown [])
	by gzsmtp1 (Coremail) with SMTP id Mc8vCgCXHQR+InJniNUDBg--.61031S3;
	Mon, 30 Dec 2024 12:33:04 +0800 (CST)
Date: Mon, 30 Dec 2024 12:33:02 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Cc: linux-kernel@vger.kernel.org, linux-amarula@amarulasolutions.com,
	Michael Trimarchi <michael@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Subject: Re: [RESEND PATCH v2] arm64: dts: imx8mn-bsh-smm-s2/pro: add
 simple-framebuffer
Message-ID: <Z3IifsJxLG34b3sN@dragon>
References: <20241205162612.1804274-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241205162612.1804274-1-dario.binacchi@amarulasolutions.com>
X-CM-TRANSID:Mc8vCgCXHQR+InJniNUDBg--.61031S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUsmFCUUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiBA7FZWdyDmBPOQABsm

On Thu, Dec 05, 2024 at 05:26:04PM +0100, Dario Binacchi wrote:
> Add a simple-framebuffer node for U-Boot to further fill and activate.
> 
> Co-developed-by: Michael Trimarchi <michael@amarulasolutions.com>
> Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
> Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

Applied, thanks!



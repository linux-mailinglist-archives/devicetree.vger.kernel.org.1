Return-Path: <devicetree+bounces-239059-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A0BFDC61221
	for <lists+devicetree@lfdr.de>; Sun, 16 Nov 2025 10:44:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 0918F35F2D6
	for <lists+devicetree@lfdr.de>; Sun, 16 Nov 2025 09:44:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA32423D7CD;
	Sun, 16 Nov 2025 09:44:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="V1qlQuWd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [220.197.32.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DD662264B0;
	Sun, 16 Nov 2025 09:44:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.19
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763286271; cv=none; b=HurkZOSqVFRP3OpEfWEgTyyM07HJMM5GWguGt66vN9COXlknGmDptB5QKTERTBfcoUCqI9FXF5krXHPGVNc4MoEtV7WJDTgxDzX+w8b0a01kUiSc23lVWzIPqrwsuoXO9lseXVH5c2AYCwZt+SdKzrR8qnfh3M/wSwbXugkp2S8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763286271; c=relaxed/simple;
	bh=uoktajP6GKmpgJWLkx1PHjw0ytxfrrJiW2Lr3KzPkcU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YL9YWxLLZlM1bCZt8pUQTu0Mi3TA+ld4pEEU7njVBJK9npctYCLCYetPQb4uAx/2x5/j1OJL4L9xeCLKU+85qZBc44ADAfbs9iU3HTII2IgSgtNeW0L8beEJl68EQ6osFZ8+1B3g+kYLbidhY/0T1UDFDXKoAx01zOu1Nn6cHlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=V1qlQuWd; arc=none smtp.client-ip=220.197.32.19
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:To:Subject:Message-ID:MIME-Version:
	Content-Type; bh=yuCXAew1ENyewRNTNIKnXN+mXacGjLsytBQ3ltmtgHU=;
	b=V1qlQuWduYpXQe4zr4nr/k1OLwA/LgCaONo3FAFjtvsEO93i9peYIJFQP4NtZw
	q7/AylopJCe49l+DisN7kYcSwZw0/5lvTpLJgJtHRo4xXX3cqTkAFMFXShxNJcBx
	pNKyWn5xdtlaiS8+/B8X7JrFV5/a3mCuNepDRQHFbkGSc=
Received: from dragon (unknown [])
	by gzsmtp3 (Coremail) with SMTP id M88vCgDX_1TPnBlpHEsWAg--.7896S3;
	Sun, 16 Nov 2025 17:43:45 +0800 (CST)
Date: Sun, 16 Nov 2025 17:43:43 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Andreas Kemnade <akemnade@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alistair Francis <alistair@alistair23.me>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Frank Li <Frank.li@nxp.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH v4] ARM: dts: imx: e70k02: add sy7636
Message-ID: <aRmczxYXbjRDMHXD@dragon>
References: <20251028-sy7636-rsrc-v4-1-242ccfd3bc10@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251028-sy7636-rsrc-v4-1-242ccfd3bc10@kernel.org>
X-CM-TRANSID:M88vCgDX_1TPnBlpHEsWAg--.7896S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUOjg4UUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiOBH7YWkZnNENYwAA3g

On Tue, Oct 28, 2025 at 04:00:36PM +0100, Andreas Kemnade wrote:
> Add the EPD PMIC for the e70k02 based devices as a step towards full EPD
> support.
> 
> Acked-by: Alistair Francis <alistair@alistair23.me>
> Reviewed-by: Peng Fan <peng.fan@nxp.com>
> Signed-off-by: Andreas Kemnade <akemnade@kernel.org>

Applied, thanks!



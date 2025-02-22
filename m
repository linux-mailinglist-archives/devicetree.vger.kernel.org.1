Return-Path: <devicetree+bounces-149856-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 63720A40949
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 16:00:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BC3E9189E6A8
	for <lists+devicetree@lfdr.de>; Sat, 22 Feb 2025 15:00:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14E5B42A95;
	Sat, 22 Feb 2025 15:00:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="Y4gQA153"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [1.95.21.17])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AA1833998;
	Sat, 22 Feb 2025 15:00:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=1.95.21.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740236440; cv=none; b=PT0Q+fp/dulxQ2u1LTUwHh+PctG8i7ngh/qv3UAVa6iyGfyqeMdQ1M5yZaPcKCGH2taRQyfGR6w/2WuoFetZrzMa0KSpZJDh5495KSCFdDzo3UsOfExmOU7samyQXlOv2Zc/90bbtVjVki/P0CeP5H6hDHnHTx4bIRsHUlK3BT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740236440; c=relaxed/simple;
	bh=OKe6QRTlXlfRzsO6k+n/DgK5Yjn37vIB+q2Y13+5D3Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CIaP+dT8i3DCv9GvjbSmYK3LpPdEuj6XokvFtmL3VTp2ck0s1bS0Tu8d1Nuwaba3z5jLYg9nfZNbHICoIv24k5nEGQvPVtiS6sjxPPWUqFvkRmRFLs+Cxtp5RxJYDRgR39iatctIb1aHn7dacFkGCb8ScASpdctR2fKoUqt6/V0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=Y4gQA153; arc=none smtp.client-ip=1.95.21.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=lr9E6bgj+FVra1H0FVQ1LPnUfFoxChUOCwxBKvYbs+0=;
	b=Y4gQA153sXLHJXw5OAPbt5ep7sPGg527sh4tlG03czMimAa5U7wDIb42/JqLwN
	x5cvJWjeFjPc8PBZEsJTduIEnN3ccnwoNz2Er0Fk4F+Jrk3o0wA3g8UPVk9Z39eL
	O1j5lLTV7dJ6PgTqmfV5kCNp/cLo7Qmvm3qYUKOjMzsyo=
Received: from dragon (unknown [])
	by gzsmtp2 (Coremail) with SMTP id Ms8vCgAnSaFy5rlnUPC7CQ--.24012S3;
	Sat, 22 Feb 2025 23:00:04 +0800 (CST)
Date: Sat, 22 Feb 2025 23:00:02 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Frank Li <Frank.Li@nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	"open list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <imx@lists.linux.dev>,
	"moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
	open list <linux-kernel@vger.kernel.org>, hongxing.zhu@nxp.com
Subject: Re: [PATCH 5/5] arm64: dts: imx95: add ref clock for pcie nodes
Message-ID: <Z7nmckvKi1xcb4Qo@dragon>
References: <20250128211559.1582598-1-Frank.Li@nxp.com>
 <20250128211559.1582598-5-Frank.Li@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250128211559.1582598-5-Frank.Li@nxp.com>
X-CM-TRANSID:Ms8vCgAnSaFy5rlnUPC7CQ--.24012S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUV2NtUUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiBBX7ZWe5p-zUGwAAsF

On Tue, Jan 28, 2025 at 04:15:59PM -0500, Frank Li wrote:
> Add "ref" clock for i.MX95's pcie and fix below CHECK_DTBS warnings:
> arch/arm64/boot/dts/freescale/imx95-19x19-evk.dtb: pcie@4c300000: clock-names: ['pcie', 'pcie_bus', 'pcie_phy', 'pcie_aux'] is too short
> 	from schema $id: http://devicetree.org/schemas/pci/fsl,imx6q-pcie.yaml
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>

#1 ~ #4 are applied and #5 doesn't apply.

Shawn



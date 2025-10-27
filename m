Return-Path: <devicetree+bounces-231298-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B64E1C0BFD0
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 07:47:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 3472034AC6A
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 06:47:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D4C021A436;
	Mon, 27 Oct 2025 06:47:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="qVfXX4rB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [1.95.21.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9922A7263E;
	Mon, 27 Oct 2025 06:47:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=1.95.21.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761547637; cv=none; b=D7cQvDCRII7T8lCFWlWwLJqeut9td6bP+W64crm1nzOpb8xkrNDOQl4ueAkfUPjuxlvpqKGMXAQ1cpztcj5LO3VwOPV70CsNrLI2ZMTC+8OPpY9RjhuhT/Yo+GZOOryahwV4uT8uzAxtcCdR4MgY+ICHScaX0cersb4AEXfk35U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761547637; c=relaxed/simple;
	bh=bo3NOIF0t5gaXmQ1xgkCi5tl9D9o3HjrADLeEVuRHXY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RSwa9CS0KF2IddV+bOcjg1pduGrG862Fy5osZ24zXoR8c7CwDYHA2zKezN2Qe56IQj+nDKk3Zi4XjC8QQED3fz05In1i0iYM6s14DNMOZPID/+TpSBa2W0QMkNhL9jN2cMh82Et9DC4lYhBNap2A2FNfYv4BdkZBZC0BNofJlKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=qVfXX4rB; arc=none smtp.client-ip=1.95.21.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:To:Subject:Message-ID:MIME-Version:
	Content-Type; bh=551Y0v0A1o0aoP7KQKW2C4ibdjJ4FOICqXnj3ewFFF8=;
	b=qVfXX4rBeLJN0ings7Be1Q3eF2slGrTx6sTbjvp9PVatYv8DCe8beRSrrmW1KS
	Fgi8TYY6KNi0zaBPOZACoqrTR2aQh5XYwnWPrATqCHdL+XONAA5CZQW1m3BanhpB
	l6QjSq9MGLzrboCneaBotGd7pjyDeZJR573lh5tcnbQDE=
Received: from dragon (unknown [])
	by gzsmtp1 (Coremail) with UTF8SMTPSA id Mc8vCgDHnlZUFf9oEY8_AA--.44029S3;
	Mon, 27 Oct 2025 14:46:46 +0800 (CST)
Date: Mon, 27 Oct 2025 14:46:44 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Frank Li <Frank.Li@nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	"open list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <imx@lists.linux.dev>,
	"moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
	open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 1/1] arm64: dts: imx95: Fix MSI mapping for PCIe endpoint
 nodes
Message-ID: <aP8VVMFRTeQILNuq@dragon>
References: <20251017203947.2749779-1-Frank.Li@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251017203947.2749779-1-Frank.Li@nxp.com>
X-CM-TRANSID:Mc8vCgDHnlZUFf9oEY8_AA--.44029S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUO7KIDUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiNBZ02Wj-FVZDEAAA3I

On Fri, Oct 17, 2025 at 04:39:46PM -0400, Frank Li wrote:
> The msi-map property was incorrectly applied to pcie0-ep instead of
> pcie1-ep. Correct the msi-map for both pcie0-ep and pcie1-ep nodes.
> 
> Fixes: bbe4b2f7d6533 ("arm64: dts: imx95: Add msi-map for pci-ep device")
> Signed-off-by: Frank Li <Frank.Li@nxp.com>

Applied, thanks!



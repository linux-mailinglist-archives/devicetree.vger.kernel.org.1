Return-Path: <devicetree+bounces-169799-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C32A4A98481
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 10:58:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9AB5516375F
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 08:58:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5B531EE014;
	Wed, 23 Apr 2025 08:57:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="RbPwiFs3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [220.197.32.18])
	(using TLSv1.2 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5B3F1EDA08;
	Wed, 23 Apr 2025 08:57:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745398668; cv=none; b=ll9GE36BhHEqq7Ki0KwBURTrgJBDGIR+vSZtoFZ/AgbdJV+hWY43NQHMDrsmP1N3fGJda3Hmf3pRyX0ehzJxoq0q7y8B49AXMYzrb/q38FttB2wjeH9TXb9fnkIayZSxQ4Ogao0yD3Zg6rM2fwjo3zrNag2sC1JosB1EGT1tndc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745398668; c=relaxed/simple;
	bh=jAGffbxkS51Ffe25MdVdNd/UFKkSVXZh3QS+14qiZN0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qCra9Oldu9BBc6icC41JS7+0nmRcyteeOgKRnYEcPW+cMS4z7O0uwdpX+GW+wvX8rB5rGABdjVavtUPOvc9UEin+ZImVia7HKfKpm7dKLXfQ+eQnhEIb/HpN8tEJcQoHBPE0lYxdtcyaPR/dkW2DLgeJPtofDsmWUiJzS0W5KC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=RbPwiFs3; arc=none smtp.client-ip=220.197.32.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=CwxHeywLh4KrwQiqrLgmDoeWyxSu3XmmurwXVdnBOqA=;
	b=RbPwiFs3tAdHcmyH8/ppEQR4Pj/h9KdEGPwF4+ifl6x6vOr408RanLq7UZSbc8
	vMe4a3L4Pzj+iBDSpdcZixdaoOuYNWZ34R798NXWKoTD992mbC8FX7Po/VBoz53+
	VM59dahKIwVQSLvnST5WHWuyT+UvJa9UAV1YFyYTKzzzk=
Received: from dragon (unknown [])
	by gzsmtp2 (Coremail) with SMTP id Ms8vCgCXFNtMqwho8_nRAw--.33766S3;
	Wed, 23 Apr 2025 16:56:46 +0800 (CST)
Date: Wed, 23 Apr 2025 16:56:44 +0800
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
	open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 1/1] arm64: dts: imx8qm-mek: consolidate reserved-memory
Message-ID: <aAirTH/lBetu9avM@dragon>
References: <20250326215214.1706887-1-Frank.Li@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250326215214.1706887-1-Frank.Li@nxp.com>
X-CM-TRANSID:Ms8vCgCXFNtMqwho8_nRAw--.33766S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUIco7DUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiCwQ4ZWgIdsHOEAAAsb

On Wed, Mar 26, 2025 at 05:52:14PM -0400, Frank Li wrote:
> Move dsp_vdev* to under existed reserved-memory node to consolidate all
> reserved-memory together.
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>

Applied, thanks!



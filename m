Return-Path: <devicetree+bounces-239062-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B2307C61242
	for <lists+devicetree@lfdr.de>; Sun, 16 Nov 2025 10:59:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 07B6C361E4C
	for <lists+devicetree@lfdr.de>; Sun, 16 Nov 2025 09:59:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1D351DE4CE;
	Sun, 16 Nov 2025 09:58:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="NVfGM1+N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [1.95.21.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD5D035CBA5;
	Sun, 16 Nov 2025 09:58:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=1.95.21.15
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763287135; cv=none; b=pOHIyLExaNa0U8DBa8Wn1gA39dIYlUNp4se/i9gOqfD5tPxfgaxuRAu/SPzPFystNtymmqehd6mVFQ42S1B8L5xHGSEsHdcaLHnxlSiB0uIpHeSxVdmLGLLuyoGurqX6pWvg2YFfBgJeDPthf0inndW76TRpW1L6eP+TksZKfCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763287135; c=relaxed/simple;
	bh=/IodfAgsUrjjhcTtKe3TjnTr29d7GbzX8k72lEB8M4E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=R4YaIa/UPNoY+4LR9xhTUDNV+sc1rfQAWXIjy4PnDCMjEULUD+bWz2pczVxO2GWzV0XdAXId7A2p66e7SZitPtTcCuBVZfltzzNkrNWufZJQuA2RPXiEc+aS9Tr4k4gUfu2BIwWicawcLMnGNoC5ghBUS+msuHj36OpbcC8jaCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=NVfGM1+N; arc=none smtp.client-ip=1.95.21.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:To:Subject:Message-ID:MIME-Version:
	Content-Type; bh=L/q/AVGR8/RLFNl3U55Jp3zAzhPBmJRaurGlvbnRsa8=;
	b=NVfGM1+NNXoSfCZuZfMyzw0avrtRsSfVKBEgKWreGrlavlglFXw2+vNM9twf4b
	qQNlyF1RTwP+7PIhVnrgwXhUQbkpY4Mf0qKpXoFuHR2vSiRUKHWe/+71fQsyJ2/c
	3c1rV0BZmZwKis3LrD3pvelAh1zAdoWPFk0Vv5lK7ElDc=
Received: from dragon (unknown [])
	by gzsmtp2 (Coremail) with SMTP id Ms8vCgAXn886oBlp3LsjAg--.8159S3;
	Sun, 16 Nov 2025 17:58:20 +0800 (CST)
Date: Sun, 16 Nov 2025 17:58:18 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Frank Li <Frank.Li@nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, Joy Zou <joy.zou@nxp.com>,
	Richard Zhu <hongxing.zhu@nxp.com>, Sherry Sun <sherry.sun@nxp.com>
Subject: Re: [PATCH 00/12] arm64: dts: imx8qxp: collect some imx8qxp-mek dts
 patches
Message-ID: <aRmgOiqUXLk8BIDe@dragon>
References: <20251029-8qxp_dts-v1-0-cf61b7e5fc78@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251029-8qxp_dts-v1-0-cf61b7e5fc78@nxp.com>
X-CM-TRANSID:Ms8vCgAXn886oBlp3LsjAg--.8159S3
X-Coremail-Antispam: 1Uf129KBjvdXoWrZryfKw13tr1fAF1kCw45Wrg_yoWDJrg_uw
	4FkFn5C3yYyr4fA345A3Z29rW0gryFyrykWry2gwn3X3WxWFyayFy0v34fWw18GF4fWF1D
	Aw18Xw1UXr45WjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IUjOeOJUUUUU==
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiIhzXPWkZoDzehwAA3h

On Wed, Oct 29, 2025 at 03:54:36PM -0400, Frank Li wrote:
> collect some imx8qxp-mek dts patches.
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
> Frank Li (9):
>       arm64: dts: imx8qxp: add MAC address in ocotp
>       arm64: dts: imx8qxp: add readonly for ocotp

Skip this one

>       arm64: dts: imx8qxp: add wakeup source for power-key
>       arm64: dts: imx8qxp-mek: add state_100mhz and state_200mhz for usdhc
>       arm64: dts: imx8qxp-mek: update usdhc1 clock to 400Mhz
>       arm64: dts: imx8qxp-mek: add flexspi and flash
>       arm64: dts: imx8qxp-mek: add phandle ocotp mac-address for fec
>       arm64: dts: imx8qxp-mek: add fec2 support
>       arm64: dts: imx8qxp-mek: change space with tab
> 
> Joy Zou (1):
>       arm64: dts: imx8: add edma error interrupt support
> 
> Richard Zhu (1):
>       arm64: dts: imx8qxp-mek: Add supports-clkreq property to PCIe M.2 port

Skip this one

> 
> Sherry Sun (1):
>       arm64: dts: imx8qxp-mek: Add lpuart1 to support the M.2 PCIE9098 bluetooth

Applied the rest, thanks!



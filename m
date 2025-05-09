Return-Path: <devicetree+bounces-175646-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 99FCBAB15E6
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 15:55:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 11E344A16C9
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 13:55:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D95428FFE3;
	Fri,  9 May 2025 13:54:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="K9PxEyfr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [220.197.32.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 549E3267B74
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 13:54:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.19
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746798899; cv=none; b=DT1+Td4X40WjIzslI55xd+ozlL8uihEI1WY9nxZrfbSvRy/kcX6wSDbI2kJZhq+u5llxxstxbrBmRy1Uxb1NJc5VtE24Z1xSy/ZkszUbcIgIZ0s60Qfs6jP+PJSA8ES7zM64IaCzn/DvvR15ZMOb06AK1G/PB7/n/njFswtopBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746798899; c=relaxed/simple;
	bh=JpcHSboQoDJQqtPkSw8rL5cSQk4HHcNjNLT3/ntcRrw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=l4MeRb6LJyvLTdzo/jh7tvPNV2TWanVxFOnZqs+i0VSb0Kb5qg4uNB+kLEybHfqw6PP11hyAwnpkTEC1azf1btkzomEK7QJmW9dcJ61NO/fPKXLdlZxO+nEZ6PSdWERWNt1RKaBqXON9eHGx/SZielWpYAobQrJgmK1+AQV0Cfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=K9PxEyfr; arc=none smtp.client-ip=220.197.32.19
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:To:Subject:Message-ID:MIME-Version:
	Content-Type; bh=Ssj99sYpJXTFZJPScPM2oAgzEWZZ5DXMgQ1Kw1tihm8=;
	b=K9PxEyfrbz73OF8/PjGXttw51CntkQtp8Pcbv0grEMfrKTo5rb0zlIAijENPoG
	mCc4ACT8lOyuSJ/KCQXwjiVlmoiC9kBFV+SWjAWl1hIQHnnieRK9wM112FY2qrMO
	UvSNxJDdHH4EGV9ZDWtCI1yAqtdstUuUPenLd0O7+k+pc=
Received: from dragon (unknown [])
	by gzsmtp1 (Coremail) with SMTP id Mc8vCgAHj_fyCB5oUfWpAA--.49000S3;
	Fri, 09 May 2025 21:53:56 +0800 (CST)
Date: Fri, 9 May 2025 21:53:54 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Jacky Bai <ping.bai@nxp.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	shawnguo@kernel.org, s.hauer@pengutronix.de,
	linus.walleij@linaro.org, kernel@pengutronix.de, festevam@gmail.com,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, aisheng.dong@nxp.com,
	peng.fan@nxp.com, frank.li@nxp.com
Subject: Re: [PATCH v6 0/3] Add i.MX943 basic dts support
Message-ID: <aB4I8gGl+Z0v3JnH@dragon>
References: <20250421065139.3073232-1-ping.bai@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250421065139.3073232-1-ping.bai@nxp.com>
X-CM-TRANSID:Mc8vCgAHj_fyCB5oUfWpAA--.49000S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUFsjjUUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiCxpIZWgd37VaMgABsK

On Mon, Apr 21, 2025 at 02:51:36PM +0800, Jacky Bai wrote:
> Jacky Bai (3):
>   dt-bindings: arm: fsl: add i.MX943 EVK board
>   arm64: dts: freescale: Add basic dtsi for imx943
>   arm64: dts: freescale: Add minimal dts support for imx943 evk

I fixed the trivial things on the second patch, and applied the series,
thanks!

Shawn



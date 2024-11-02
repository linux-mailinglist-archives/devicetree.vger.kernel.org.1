Return-Path: <devicetree+bounces-118322-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E9509B9C84
	for <lists+devicetree@lfdr.de>; Sat,  2 Nov 2024 04:21:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 15076282701
	for <lists+devicetree@lfdr.de>; Sat,  2 Nov 2024 03:21:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4A6041C79;
	Sat,  2 Nov 2024 03:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="YvqeqwxU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [1.95.21.17])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 862361DFE4
	for <devicetree@vger.kernel.org>; Sat,  2 Nov 2024 03:21:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=1.95.21.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730517714; cv=none; b=Eqaa/ybrOxKqnqb4rpIb8I/zVaLNG1MZ2HPZjRJDtMFpHqp7RCv/ZIFX2nEjr2eS6s/GSuJriU1f/958mSBb8SZKfr/i/80AhgJPpvkxsZxGki4I4DJrnvNIIem7+dsYQUdusfwsQauvAJXpmtHhKgwolNPni3h84TfUJsDCapo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730517714; c=relaxed/simple;
	bh=r/WgMGi6XV+IlJ3veJC+r5p6U8YQuLgByj1FhqkANFI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=b8vzZ9MphfOo0IwqRextGdWDSpWhw9VoRc4A/wBXS3AGhc9WbTOL9exFu8GiTWHwiwLFNt4rVdrVa2nmuDlOk0Qydx4wb/JmvC3aUhw5Hy9nVEq5ZxBAdfNeY2MFOmFvdKTxU1mhDWUk74CBxFzq8Yw2sBDTehg3EPopllmNnpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=YvqeqwxU; arc=none smtp.client-ip=1.95.21.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=JjL0raJiVUlycOYhCY61dJCO2t6SV6L7FxvmwMjQWlU=;
	b=YvqeqwxUiIF8HgDfuN/yIassynajvdq7Mh3cKvrq7U7SJCGFJM+oy4IoWDE+t7
	Ay37B2QzF6wl9G7Uf0z6ZYaebsm8n44x/rOiR0olwmquDJEl+I2DSYe11imhGbkx
	opZytiRLbRBb8C/pSDWHFvSsOsRvVk7mClivoTyMWp4Nk=
Received: from dragon (unknown [])
	by gzsmtp3 (Coremail) with SMTP id M88vCgCXz0qvmiVncM5yAQ--.14512S3;
	Sat, 02 Nov 2024 11:21:21 +0800 (CST)
Date: Sat, 2 Nov 2024 11:21:19 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Fabio Estevam <festevam@gmail.com>
Cc: shawnguo@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, imx@lists.linux.dev,
	Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH 1/2] dt-bindings: soc: imx: fsl,imx-anatop: Fix the i.MX7
 irq number
Message-ID: <ZyWar1bUUufm1fOC@dragon>
References: <20241025004159.1571782-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241025004159.1571782-1-festevam@gmail.com>
X-CM-TRANSID:M88vCgCXz0qvmiVncM5yAQ--.14512S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUx0eHDUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiERWLZWcliaEkcgAAsW

On Thu, Oct 24, 2024 at 09:41:58PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> Unlike the other i.MX devices, i.MX7 has only two anatop interrupts.
> 
> Add logic that contemplates such case to fix the following
> dt-schema warning:
> 
> anatop@30360000: interrupts: [[0, 49, 4], [0, 51, 4]] is too short
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied both, thanks!



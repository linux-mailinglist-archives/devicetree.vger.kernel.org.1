Return-Path: <devicetree+bounces-118331-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 66C989B9D89
	for <lists+devicetree@lfdr.de>; Sat,  2 Nov 2024 07:56:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1E72D1F2216D
	for <lists+devicetree@lfdr.de>; Sat,  2 Nov 2024 06:56:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 880AE154420;
	Sat,  2 Nov 2024 06:56:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="XjSRwUtL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [220.197.32.17])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFDE2145346
	for <devicetree@vger.kernel.org>; Sat,  2 Nov 2024 06:56:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730530570; cv=none; b=fsAr4sXw0qmI988uYyKsmpAhYQyRpnKf9mRBUegeWR3H5BzO/JiommOtAQHqOcFcGz/767lUilNyMdmbqjCHB6Y23TiTLU8faju7PSd/jBWXtRSvQb4KBOJFB99lIa/ssqq8R+qDLb7o9BNJnI4Tj31vpZQu5ZY0elQiElTenQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730530570; c=relaxed/simple;
	bh=igKN6eVV5m/3UR+KcOg0iI9V2frTG5LH2CqD/x/afrY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Uq6V+u6Ro5pyT04vOGR1fgTFkmGJShvbtD7fejVW/jRJ+rpHx6I9gBmrRsfAxMIlUcJaXMltQ+jiexM/7CJGEBjHDK1l9XJqJrcUA/NPf0Refon90mTg6twt9FD5AhUa1FEm/p/Klh8HNTKziUW6U2NlnUN+2WshiaHFmUeKyEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=XjSRwUtL; arc=none smtp.client-ip=220.197.32.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=zWJwQWlc5Mm0fBuMtrIwZFuvP9vMnmn7fQEr75MviHo=;
	b=XjSRwUtLoywjnMEZg+f5SaWj6KOJpvT+cNKQ/ZXEtLfWpzsZvnKxq3rR4Rhlxj
	PfyuItJJxF7pEhKXbVEOFIs1xDQLtR6yEVMO7zhx2DG2RH9INREgFGmqdEGRwxES
	VKEukCZc4fgA+e6qLFBNFPrLPqT3H9Dg8Fc4q08B7h7I8=
Received: from dragon (unknown [])
	by gzsmtp1 (Coremail) with SMTP id Mc8vCgB3csTwzCVnHEV5AQ--.14992S3;
	Sat, 02 Nov 2024 14:55:46 +0800 (CST)
Date: Sat, 2 Nov 2024 14:55:44 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Fabio Estevam <festevam@gmail.com>
Cc: shawnguo@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH] ARM: dts: imx6sll: Improve gpc description
Message-ID: <ZyXM8IJJy6woQRzj@dragon>
References: <20241028124545.72652-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241028124545.72652-1-festevam@gmail.com>
X-CM-TRANSID:Mc8vCgB3csTwzCVnHEV5AQ--.14992S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUU8529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUzhL0UUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiEROLZWcliaGP+wAAsy

On Mon, Oct 28, 2024 at 09:45:45AM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> According to fsl,imx-gpc.yaml, 'clocks', 'clock-names', and 'pgc'
> are required properties.
> 
> Describe them to fix the following dt-schema warnings:
> 
> interrupt-controller@20dc000: 'clocks' is a required property
> interrupt-controller@20dc000: 'clock-names' is a required property
> interrupt-controller@20dc000: 'pgc' is a required property
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied, thanks!



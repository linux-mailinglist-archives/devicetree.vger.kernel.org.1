Return-Path: <devicetree+bounces-118323-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C9549B9C87
	for <lists+devicetree@lfdr.de>; Sat,  2 Nov 2024 04:26:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 778611C20F12
	for <lists+devicetree@lfdr.de>; Sat,  2 Nov 2024 03:26:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FB6313665B;
	Sat,  2 Nov 2024 03:26:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="dAN5qZ1e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [220.197.32.18])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 989B91DFE4
	for <devicetree@vger.kernel.org>; Sat,  2 Nov 2024 03:26:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730518016; cv=none; b=gLeOUcS1X8s54jCsjxAZfk3/62eaL2RgtX2XgWxOXjUrwK8agkJm3YSDjWPtTNghgyxvApqY9gC8+0F9v5/kxNgSjZSAqRQm43D0wjPgbrDCFawP+XnQhJbpoSYBlom84HBFvxfTwHGihYmsbGy/Dsbx4C2CG84AwJoLLOYfUnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730518016; c=relaxed/simple;
	bh=nD+iQCLJh7+NDL5u79e4KYk9wGpDwt6fXtMLD4syEW8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=N5uEU3vszejOaazqk8hmdkm9s4IsE57osD0LYz7fzp9c9s4oXNZ/qSto4vgPMOh31dJT7ZW4VchQZy8w8ap/AtIVxZ+Cx5rBNo9+GKqUh6ROVhtEpZAhgPraeL1x64OkhY+41JovKl4L9W7MN9ULznt9DyDS2ViGFrKd7PB7GiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=dAN5qZ1e; arc=none smtp.client-ip=220.197.32.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=QEtnDnK/7wth/uKbwtADHbubamilF5yoOXWVFYE6lhk=;
	b=dAN5qZ1eUDXdEyf5meWRioT+DSfcFfDJWtgxxUNSgJPuk7x/kUuTQTdgxIEe5Q
	4NcXaFp53WBFh6WqAiud3lnU7k9M7KEXa4Xixsrulhnmdb/vQSfe9peRRC5/Xx1e
	JUbOlnorWPWxC7GSphvb1TKPiZwjzNlOILK2BaqPFFQ3E=
Received: from dragon (unknown [])
	by gzsmtp1 (Coremail) with SMTP id Mc8vCgDnAIbkmyVnBSB2AQ--.14854S3;
	Sat, 02 Nov 2024 11:26:29 +0800 (CST)
Date: Sat, 2 Nov 2024 11:26:28 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Fabio Estevam <festevam@gmail.com>
Cc: shawnguo@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, imx@lists.linux.dev,
	Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH 1/3] ARM: dts: imx6sll: Remove regulator-3p0 unit address
Message-ID: <ZyWb5CBbGDfJ/Nmf@dragon>
References: <20241025010855.1593365-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241025010855.1593365-1-festevam@gmail.com>
X-CM-TRANSID:Mc8vCgDnAIbkmyVnBSB2AQ--.14854S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUx18BUUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiERWLZWcliaEkcgABsX

On Thu, Oct 24, 2024 at 10:08:53PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> According to imx-thermal.yaml, the anatop regulators should not
> contain unit-address/reg entries.
> 
> Change it accordingly.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied all, thanks!



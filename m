Return-Path: <devicetree+bounces-111911-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D24D9A0479
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 10:39:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C8DB11C20AA1
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 08:39:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A4541FCC72;
	Wed, 16 Oct 2024 08:39:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="p57ihQBa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [220.197.32.18])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0BF11D8E05
	for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 08:39:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729067987; cv=none; b=qTdGFBfgZMmIlZL74bBevjImwPyCmmUEDrRVZp5aoUjbfunTXpDYYo8EuXtLsZgJrbshfZf17ZIbkLu+uz5VrUpSrvJVWLkh8CuC/s0kmhWA7FqgrTKwMkWUxwIigiomXr5NdaSkMzQ5ZmdI51rpvwHayRRMB53+66LxgFeonSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729067987; c=relaxed/simple;
	bh=hmXLG5FyFlbkrzspJ4ayxaAb+AJWOvsaEWLT8ELyWe8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oNpelJOZuLHnLt5547qr5PRnmOgswuD5gkYHNz4r78W0PH4zLTkEz+pxoeNgnEZuMQWIZzES+RpdodxJP2tSVD8ZndECHvu3HYxyAVtlskjT2y3rhik8aYPCIpwRb/Kx2ss3Ur2L0QYpyKzYSLhVB92oXS0T6AD0BmUM5ywp/QM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=p57ihQBa; arc=none smtp.client-ip=220.197.32.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=dIDx6W+/oV90Fu7cAMuiAKked9f9TLl3AvdDNe91B/c=;
	b=p57ihQBaHs0iz+Cq9jQiVtop3/NQq9s2pHJ/77+wSDnndOR2Bt+qJxd9hHQmxu
	XGqqjorHDJ4Ftfqj8hsk1VkKna+jG1zEvw45V8g9mPnHRq2mILW5e7OCfT5yQpFj
	+dWi5lHOWITEYnMllOYNuTiPMxgm+A2UL8FYPdN5u4TL4=
Received: from dragon (unknown [])
	by gzsmtp3 (Coremail) with SMTP id M88vCgAX_+yvew9n+NYZAA--.422S3;
	Wed, 16 Oct 2024 16:39:12 +0800 (CST)
Date: Wed, 16 Oct 2024 16:39:10 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Fabio Estevam <festevam@gmail.com>
Cc: shawnguo@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH 1/3] dt-bindings: vendor-prefixes: Add an entry for
 ComVetia AG
Message-ID: <Zw97rk8p1vRL+Jzx@dragon>
References: <20240913200906.1753458-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240913200906.1753458-1-festevam@gmail.com>
X-CM-TRANSID:M88vCgAX_+yvew9n+NYZAA--.422S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUTBT5DUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiCRJ6ZWcPLG3tggAAsC

On Fri, Sep 13, 2024 at 05:09:04PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> ComVetia AG is a professional radio communication platforms
> manufacturer:
> 
> https://comvetia.com/
> 
> Add a vendor prefix entry for it.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied all, thanks!



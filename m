Return-Path: <devicetree+bounces-207955-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F110B313C7
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 11:44:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0BA19B017EE
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 09:38:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73BF71EBA0D;
	Fri, 22 Aug 2025 09:33:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="aOygQgko"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [1.95.21.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5D912EF65F
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 09:33:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=1.95.21.14
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755855185; cv=none; b=lLKTFHYX0EZQiEd9uBElUdgkjjTbJlojSvRDH2zB++JwHZrA7TfdWvSkbwdnltGAsjmM5gikVe7MHzMh8sP7g9mjclf+Pr7zBXjNzR0GRRT8JgH4hkoJfDBNfGLPWoheGMdMb3skRsf/9n/5eLRJ8VOy3h590QhM2qGDn2dU/nw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755855185; c=relaxed/simple;
	bh=7VQvdlNb/y4/eGH/Iy/WJpknB6SKJEPsJTruwjxrFSo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=E+OsBxULx/wCUoux9sPNOo05PmJJjjABLxXP104A3SGn31KChH+xZfdsKkyOOfrbcszbH8RFO+4rk1QUKWlNIZHkztz34w5nOtMuKgDCH28WXGyRDfJadQRLIoRHLgoeqtAGxz3jg2zjDUxA6qi+GJcUXS51iWJfDO7i3nhLf6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=aOygQgko; arc=none smtp.client-ip=1.95.21.14
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:To:Subject:Message-ID:MIME-Version:
	Content-Type; bh=bHGTe7z2X8VhNkwBjYC+POamvLkfxWgR48fLTVRtZcw=;
	b=aOygQgkooXvr4XzEcpTOuE1/Zwc7ECheoiXTrTD15h+kpJYOhPe0RD191+8wyq
	4U0ajuZTkae81jsumFF/hSuJImH2sEDStGSiD5nCBVjRQYGUS3+iFexh/fznJ21/
	y7IdWGPrkikqoKxC7HCQaJqzfW8ylAe3glUbJtVvNDvyM=
Received: from dragon (unknown [])
	by gzsmtp2 (Coremail) with SMTP id Ms8vCgDnX_k2OahoS3soAw--.11369S3;
	Fri, 22 Aug 2025 17:32:39 +0800 (CST)
Date: Fri, 22 Aug 2025 17:32:37 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Fabio Estevam <festevam@gmail.com>
Cc: shawnguo@kernel.org, stefan@agner.ch, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org
Subject: Re: [PATCH] ARM: dts: vf: Change the NAND controller node name
Message-ID: <aKg5NQH09gNqYicc@dragon>
References: <20250819194018.2850727-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250819194018.2850727-1-festevam@gmail.com>
X-CM-TRANSID:Ms8vCgDnX_k2OahoS3soAw--.11369S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxU84E_DUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiIhefBWioOTcFoAAA3E

On Tue, Aug 19, 2025 at 04:40:18PM -0300, Fabio Estevam wrote:
> fsl,vf610-nfc.yaml references nand-controller.yaml, which only allows the
> node to be 'nand-controller'.
> 
> Change it accordingly to fix the following dt-schema warning: 
> 
> $nodename:0: 'nand@400e0000' does not match '^nand-controller(@.*)?'
> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>

Applied, thanks!



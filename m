Return-Path: <devicetree+bounces-118329-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 07EF19B9D85
	for <lists+devicetree@lfdr.de>; Sat,  2 Nov 2024 07:50:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3A9A81C2161A
	for <lists+devicetree@lfdr.de>; Sat,  2 Nov 2024 06:50:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B2C8147C91;
	Sat,  2 Nov 2024 06:50:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="bXg6nIqe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [220.197.32.19])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 449B2380
	for <devicetree@vger.kernel.org>; Sat,  2 Nov 2024 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.19
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730530237; cv=none; b=I4qwp8//Od+1WEIs8uiTE3QFvoRO/dcVORo6K4n4TMic8zrQPBNslvsHIoC/SqepMPlx5zUfp6pHAdSbuEb1Sjkja3NGbtDrsV1XDpIKFhV11ntWz5gSLSSOu+iMJ8GML7CslaaoATPbWGpObDnj7UjVZS/HPXhthsSVx8gf5CQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730530237; c=relaxed/simple;
	bh=gJg6Qs98qNWypnWQ6w3U/ETMeZRhN6VcNBmQimqCW58=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oV/NiJx5jsczHqrS0YBDFIkwcVR3e7A8l/hM+w4rXG5bTZ4fUAd84rhAm0gWWFEeup/x0rhdJjSaoIMSIG2lT6SFKjSrFtjLiZa6CX/nopIv5KXLilyLWvhbHExFf7QH6Fv1yp5RTIYp/K7yIjnN792+DGo6W6MJUHAR+utb/D4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=bXg6nIqe; arc=none smtp.client-ip=220.197.32.19
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=vvmNlpMTSaGbNzPaTN+BMBPIP2pkxKmlsbNMka7+MqM=;
	b=bXg6nIqeWrA0J7CAwyYKPYT+bmO+9lZe0hSd5v63NxeMawf1h6dYI8451rB10p
	OaR4I82z5pJFlYW5r/k8IIcyj2n8PsjdsmWBi7rnTEKRvkv7R9t2w/2unR/JW5EZ
	V7tl0db3Sn+s9dmICkOkSjYEg4qCksyWYpJhUY+au7gGQ=
Received: from dragon (unknown [])
	by gzsmtp2 (Coremail) with SMTP id Ms8vCgCnrySkyyVnoHd+AQ--.15062S3;
	Sat, 02 Nov 2024 14:50:14 +0800 (CST)
Date: Sat, 2 Nov 2024 14:50:12 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Gilles Talis <gilles.talis@gmail.com>
Cc: conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
	shawnguo@kernel.org, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	festevam@gmail.com
Subject: Re: [PATCH] arm64: dts: imx8mp-navqp: Add HDMI support
Message-ID: <ZyXLpDoyNtzm2RRy@dragon>
References: <20241027225408.195475-1-gilles.talis@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241027225408.195475-1-gilles.talis@gmail.com>
X-CM-TRANSID:Ms8vCgCnrySkyyVnoHd+AQ--.15062S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUx18BUUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiEgCLZWclifuLwgAAsF

On Sun, Oct 27, 2024 at 06:54:08PM -0400, Gilles Talis wrote:
> The HDMI connector on the board is a micro-HDMI (type "d")
> 
> Signed-off-by: Gilles Talis <gilles.talis@gmail.com>

Applied, thanks!



Return-Path: <devicetree+bounces-80689-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 94E1591A36E
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 12:05:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 482B21F226B1
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 10:05:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8531D13C3CF;
	Thu, 27 Jun 2024 10:05:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="i5T/sRWC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [1.95.21.17])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6C9922EF2
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 10:05:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=1.95.21.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719482740; cv=none; b=mHTBSTL+EIYOveHsz9brWgvuVKTejcaAOyFhK/QKiVqkpbUpwOsmDqHY+hWv73mogDec1yYjQn3tVBb8j+rtCQhbAgWvAwDIVsZ1J9B9g8Y8ysn7Sc4DWA8dQh0pwE8U4fAGTRVcOYulM0ymDbntL7DNcG1mhdjrixPKMoVoq20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719482740; c=relaxed/simple;
	bh=xczqqtXsVrrwAMvmh9AI1sXsOJfyF1tCCQOsGAFdmLM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PXomjuNqGHqsfmw7ntrNXFoViFoOm5MYxBaZwwSVUVPZLYsq6gP15tuWm910lcwYoIGGM5QFc9pATzRyK+daRbdwxWgsbT4WuOByt7qUbGRcU2kRDqi9S01N9wqCTfvVhN2n+LpXn5R0itlLxt09XHsxy6tVBk8gYu3ggwm15yw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=i5T/sRWC; arc=none smtp.client-ip=1.95.21.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=Q3DO9iZvJ7SWjOlivAqabwQjr44lGGsASnW0CVN/hA0=;
	b=i5T/sRWCT2LmS4VrZuTAz1vNCl+X+OW0d+D3kIY0NYIn4wAh3F4ErieHHLMQc3
	8r4GvAi78hu/ixUtMD2mtoIKoc9hfvwHAftFFhtxpz5km3DRhFxmq1ZDVIjMKN/6
	K3ukBh7XLkBy+UKJ19rn0abOEO3nmEbnySckwyv8X7voY=
Received: from dragon (unknown [114.218.218.47])
	by gzsmtp3 (Coremail) with SMTP id M88vCgD33x1LOX1mv0AaAA--.52926S3;
	Thu, 27 Jun 2024 18:05:01 +0800 (CST)
Date: Thu, 27 Jun 2024 18:04:59 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Fabio Estevam <festevam@gmail.com>
Cc: shawnguo@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH] arm64: dts: imx8qxp-mek: Pass memory-region to the DSP
 node
Message-ID: <Zn05S5ATfw5USx29@dragon>
References: <20240626140532.615857-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240626140532.615857-1-festevam@gmail.com>
X-CM-TRANSID:M88vCgD33x1LOX1mv0AaAA--.52926S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUxXo2UUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiCw0LZWZv-czt0AAAst

On Wed, Jun 26, 2024 at 11:05:32AM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> According to fsl,dsp.yaml, 'memory-region' is a required property.
> 
> Pass 'memory-region' to fix the following dt-schema warning:
> 
> imx8qxp-mek.dtb: dsp@596e8000: 'memory-region' is a required property
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied, thanks!



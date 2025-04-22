Return-Path: <devicetree+bounces-169174-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CD7EA95C4F
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 04:49:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B77D616C9CB
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 02:49:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D98CE347A2;
	Tue, 22 Apr 2025 02:49:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="czg1r706"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [1.95.21.16])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14AB5196
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 02:49:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=1.95.21.16
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745290160; cv=none; b=StSlmQYZZIR7a7KracLyXJ3m+xZ9RNHlmoDPswdGYf0hYo9CZGJnhxSPqcb3F5d6WoExcCR8lmyco8LwquGyAw3sb0jNJRstg1v2fTs9oBc4zFaW4JQrLdZcaD8aUgaG2Rt8oPRbo3x2sYYjZtVPIbYZBmrdpg+vge5XbMebmwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745290160; c=relaxed/simple;
	bh=G6+dnTJ/YNat46txBZhlm1KMeHdftCHNu4LxP/fY/P0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uqPsa2XQt8vb4sNZdS5W7DE6RB7HQ/KFqTLerLCGzDnTpx4w0bZuK+NpN3cbPpppWddMz1e5vDm1vrTirOJFirbOdIM01poHkgj7ZyAyR7U1Mu69LLGvlHv9nDmKhC6Nw4qK6fI41vby+tOsHYjczCIJe+WeJDpOaIbuXHCRbvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=czg1r706; arc=none smtp.client-ip=1.95.21.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=trhyNIM9mIFtIbavFty/Wnrrd5K7EkciM85AXCfhM0Y=;
	b=czg1r706O01f0jhnKMve4+UToK2y5T1nFdPfcJ53ettuM4ljIj1Phpk7/FTSJD
	RBzyEAxFjz4jdWPrnPQ7L8rb/Ci/RVyH4d7e1EI2LV3FwBdN0YPY5UkdkX+PBYDQ
	ldDWmOobM5AU3xruIhPfdqb5AvtIEU7k8NNRd50lexVxU=
Received: from dragon (unknown [])
	by gzsmtp1 (Coremail) with SMTP id Mc8vCgC3QjyGAwdofxCrAw--.442S3;
	Tue, 22 Apr 2025 10:48:40 +0800 (CST)
Date: Tue, 22 Apr 2025 10:48:38 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Fabio Estevam <festevam@gmail.com>
Cc: shawnguo@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org, hector.palacios@digi.com,
	Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH v3] ARM: dts: imx51-digi-connectcore-som: Fix MMA7455
 compatible
Message-ID: <aAcDhqrCthjDtKbw@dragon>
References: <20250317123109.2216509-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250317123109.2216509-1-festevam@gmail.com>
X-CM-TRANSID:Mc8vCgC3QjyGAwdofxCrAw--.442S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUxpnQUUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiBB83ZWgG2pu5jgABsQ

On Mon, Mar 17, 2025 at 09:31:09AM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> The "fsl,mma7455l" compatible string is not documented anywhere.
> 
> MMA7455L is the exact same device as the MMA7455, with the exception that
> it is lead-free. Use the documented compatible string.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied, thanks!



Return-Path: <devicetree+bounces-169170-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B494A95C42
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 04:42:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0434D3A43B4
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 02:40:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8700125634;
	Tue, 22 Apr 2025 02:41:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="DVuA0pgK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [1.95.21.15])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E53BB26ADD
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 02:40:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=1.95.21.15
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745289661; cv=none; b=ngQb2F0XBIP5wFZErAb7sA1iUPzNc6Ae3ONsuh0Ye03HXJt1+OraMV10QBcHjK92l/4OEIxrFm6NtSst/VNjXNauU8ZeN7JMz3kHCiBuJRJer4tNPEy9+662QhMYgc0tmJ9D60aIcYA4YkgRBqV80KlmxWeKVpWR6vsYanekc7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745289661; c=relaxed/simple;
	bh=6j/yBoWOKnFee9Xyri3TI5XGuUGcyWGWSL8b5h6CAoQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eb9dd7FUDBgmvxnUdzfl9ievhWjvQfuqlmwLazu+DORWM/fZBJtj3zjv9mPMssi2z1/AEU51mTTLnTPyGqUnYOVRv9tZ6JvyDND7bdmTwC/5s5ej0NOUxEqF63uI+tJJI1NMl0+sjDiy9oyT+ju3fXQHZTmSvXSISl0wU5i1/e4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=DVuA0pgK; arc=none smtp.client-ip=1.95.21.15
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=U59dnMWUeTOPX8RRgdP3t8+lP2W/eaBKDgmC/sG7uJM=;
	b=DVuA0pgKlLafF0tvPLt+2i4HE34qR4T7EAMlRtbcLL8SjJzNZF008r7JL5UVKC
	ln2rNUa62ewk1INFEDKGt5FU/j+MiyLL33zsbp21wm+0OX440rh/PfTzbzC+rq9n
	iwNQE2ATjbveYYwenUUecNsTzVKccJdSwu80fRCqHHB7I=
Received: from dragon (unknown [])
	by gzsmtp2 (Coremail) with SMTP id Ms8vCgDXQCAy_wZoixa8Aw--.12594S3;
	Tue, 22 Apr 2025 10:30:11 +0800 (CST)
Date: Tue, 22 Apr 2025 10:30:10 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Fabio Estevam <festevam@gmail.com>
Cc: shawnguo@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH] ARM: dts: imx31/imx6: Use flash as the NOR node name
Message-ID: <aAb/Ml38SxRJll5e@dragon>
References: <20250313175752.1532299-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250313175752.1532299-1-festevam@gmail.com>
X-CM-TRANSID:Ms8vCgDXQCAy_wZoixa8Aw--.12594S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUxJ3vUUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiERM3ZWgG8sE6-QAAsK

On Thu, Mar 13, 2025 at 02:57:52PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> According to mtd-physmap.yaml, 'nor' is not a valid node name.
> 
> Change it to 'flash' to fix the following dt-schema warning:
> 
> nor@0,0: $nodename:0: 'nor@0,0' does not match '^(flash|.*sram|nand)(@.*)?$'
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied, thanks!



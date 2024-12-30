Return-Path: <devicetree+bounces-134681-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 278F79FE395
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 09:05:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9308D162026
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 08:04:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 189541A071C;
	Mon, 30 Dec 2024 08:04:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="hTgKhFHZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [220.197.32.16])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 123E0134AB
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 08:04:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.16
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735545896; cv=none; b=mWYeTnOO44cp7E8baFtswcjJhRuHV6wx2fXQ6BOkP4BC6IDI+EruD8ehXNdDf0/2/TYWH5v3ctgU6P8DyOYR60KvS4a+NECz/d04KEl9Ens5tgk2aRtd9JIJdEM0/MWATlJ3x/id+bs3lROvK3ZHLrahc9jX4lOn3Gxop0fRR4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735545896; c=relaxed/simple;
	bh=L+8Jb/YVchdHzgCas1uDwHVajZv77WBONKRlguQybbU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=S5ZxgGIEkpQW6Mb1T58nZWiOVgLfJrBDycbmVtT8FOttYIw4MV+S2av03wq6mFdBcVzXsMlU+rr+qHc6Ams2SKQoQ6fslvUVZGS5Iv+5D3Virs19htaVlTh2JL847EEo0RqyIr+GHWkUDZEnEDIBJRMDjcY7FBDo44L/kS5Dqqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=hTgKhFHZ; arc=none smtp.client-ip=220.197.32.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=cGhMB8KeVaYgWNAUXgR6szKiJVILeCd7gq6JvQk2QT8=;
	b=hTgKhFHZxMSdUUt7HMAhdn2Iq3znLleCrwaaXT9Q1Q/zw5YwFuhrPbw0EoEBWc
	yaXuPeLBiBoS8owzatUOISioe0aAcq+oiY86q77VLQAT7jIOY6sq+i5RXXyToMYA
	JorCAB5KPPOpKYC7DvevdVKyll/KCdgwRAPNnNcQyrh7M=
Received: from dragon (unknown [])
	by gzsmtp1 (Coremail) with SMTP id Mc8vCgAH19QEVHJnSkoGBg--.60863S3;
	Mon, 30 Dec 2024 16:04:21 +0800 (CST)
Date: Mon, 30 Dec 2024 16:04:19 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Fabio Estevam <festevam@gmail.com>
Cc: shawnguo@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH v2] ARM: dts: imx: Use the correct mdio pattern
Message-ID: <Z3JUA9231oc7mhH8@dragon>
References: <20241218000232.74643-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241218000232.74643-1-festevam@gmail.com>
X-CM-TRANSID:Mc8vCgAH19QEVHJnSkoGBg--.60863S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUsvPSUUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiCxjFZWdyEhDb4wABsd

On Tue, Dec 17, 2024 at 09:02:32PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> mdio-gpio is not a valid pattern according to mdio-gpio.yaml.
> 
> Use the generic 'mdio' name to fix the following dt-schema warnings:
> 
> 'mdio-gpio' does not match '^mdio(-(bus|external))?(@.+|-([0-9]+))?$'
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied, thanks!



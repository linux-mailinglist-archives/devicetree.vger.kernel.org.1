Return-Path: <devicetree+bounces-113561-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AAB59A60FE
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 12:02:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A35E81C215CA
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 10:02:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFBFB1E3779;
	Mon, 21 Oct 2024 10:01:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="ji3H7+2q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [1.95.21.14])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A2B21E2854
	for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 10:01:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=1.95.21.14
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729504896; cv=none; b=mGPmKa3HRJYxxhP/M/f0AhpLwtC6nAJ3H41+rtZcvZw52Sda1YzV/9D0jZh+TZDRPshQmtFpRrwRf4VmHhpzrTbyxReW+nc8NqgqO2alBiFG1O86ClxbFVEKxJ877mPOMdYXuYjhxjukmT2PSv3PI5M1uCvZBhzI1ViUfrVEH/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729504896; c=relaxed/simple;
	bh=ObGji+VpeiBlD8yG5csc2xrc883qj5jnMMm0K2kjqGY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tPnfm1YzXmN9NNEiM/5T3zT/R7psleQ+/1ImrsToADdZRO3DGjYqZdZNOjTVIt1FselbFa+spuM3F34xcrwEI2aHnvifOU0/eWj3NTivVhMmFVOh4BQQjkpiTGkSKBCTforwHUaugIov0jUiX8QtL/AREPL3Sj0fZB3c2WyDeLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=ji3H7+2q; arc=none smtp.client-ip=1.95.21.14
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=Nr0Qb4mi+ev48H2kOnl6cXqXokfjag9D5tJnRQARqQ0=;
	b=ji3H7+2qoa+IqT8HYhYzDy5dW4VKB+8y1Ku1zs3VwhynMHk/Zgf6tYLbS4mPZP
	6+o3+8UUh2T0C+F4JCky3tHPl0c/qHN/f07i/igp2mJvvNQSaAGcTthtUlM0GRpk
	40AIPmvoZFA4IjyCWOTTUjgFvJqNtS6efE1MgikPT0Bso=
Received: from dragon (unknown [])
	by gzsmtp3 (Coremail) with SMTP id M88vCgCH+_Q7JhZn2mWEAA--.4609S3;
	Mon, 21 Oct 2024 18:00:29 +0800 (CST)
Date: Mon, 21 Oct 2024 18:00:27 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Marek Vasut <marex@denx.de>
Cc: linux-arm-kernel@lists.infradead.org,
	Christoph Niedermaier <cniedermaier@dh-electronics.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org,
	imx@lists.linux.dev, kernel@dh-electronics.com
Subject: Re: [PATCH] ARM: dts: imx6qdl-dhcom: Fix model typo for i.MX6 DHSOM
Message-ID: <ZxYmOzTYBv0CvooS@dragon>
References: <20241007135030.30559-1-marex@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241007135030.30559-1-marex@denx.de>
X-CM-TRANSID:M88vCgCH+_Q7JhZn2mWEAA--.4609S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUa89NUUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiBAl-ZWcV6t2pkwABsp

On Mon, Oct 07, 2024 at 03:49:58PM +0200, Marek Vasut wrote:
> Each DHSOM uses three digits in the Cnnn part, drop the trailing zero.
> This is a change in comment, no functional change.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>

Applied, thanks!



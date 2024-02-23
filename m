Return-Path: <devicetree+bounces-45084-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 481B18609B5
	for <lists+devicetree@lfdr.de>; Fri, 23 Feb 2024 05:01:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0202C2883E8
	for <lists+devicetree@lfdr.de>; Fri, 23 Feb 2024 04:01:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C195101C1;
	Fri, 23 Feb 2024 04:01:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="AcTcRaBc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-177132.yeah.net (mail-177132.yeah.net [123.58.177.132])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5546F28EB
	for <devicetree@vger.kernel.org>; Fri, 23 Feb 2024 04:01:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=123.58.177.132
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708660900; cv=none; b=s1yMaFBVYH9F6udUUVXBegKo2EdOeB+T+L+vYyKaa5pBfykhadovXTJ2z9ehYUAqU2VOaWGUt4WO+RiAf4hGQmqvWvP8jhBSGQecc/CCgtj/UHoTliHQomUPtuqjA62xk6LLny5YkLcFQCHmQ0I3tJpDX5PKc8eXlCZfibbyCA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708660900; c=relaxed/simple;
	bh=Pjz69Y08TAnaI688aIa/fYlVM6QiIS8GVGSCm1Fsqko=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JirWkazZeEjUOFH0x7Pl3v4R2lVmyOd1ChDLIlv5Ha3yIhFo8PZ5UOdUaAOmVeD7I/2N/o47wfn7r6n1nh+CahpHokE7PlEJ2BDy4Ix3YAHtHk/XrNwkwXP5emf/Vj6uMiokJIXPBTnITomK9x5FxBoZw1lIqz91ysTasNT/3Ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=AcTcRaBc; arc=none smtp.client-ip=123.58.177.132
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:Message-ID:MIME-Version:
	Content-Type; bh=E7c987E+qTntLFWlLDIUqia2KwKjxPJ05y6+Afmk8pI=;
	b=AcTcRaBc+gzqZuDdHZmLPE6E7eSNCDcLHkt5w8pkUl6l3R1UhaXogAw1sKJ3i1
	iD4L9SOhxvUZxrfJ2QdgxSLMycwXcP4ATW8h7M2Qjs4vwEli/crnh75KpfjGSPZo
	4HS5DaOYRuu/bnrYUeiaEOzCZcp7ZqHZ+q40PNSxqn9gY=
Received: from dragon (unknown [183.213.196.200])
	by smtp2 (Coremail) with SMTP id C1UQrAD3H0CAGNhl3iIuBA--.27207S3;
	Fri, 23 Feb 2024 12:01:05 +0800 (CST)
Date: Fri, 23 Feb 2024 12:01:04 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Marek Vasut <marex@denx.de>
Cc: linux-arm-kernel@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	NXP Linux Team <linux-imx@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: imx8mp: Enable SAI audio on Data Modul
 i.MX8M Plus eDM SBC
Message-ID: <ZdgYgHs1G9pK9t7K@dragon>
References: <20240206125541.37959-1-marex@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240206125541.37959-1-marex@denx.de>
X-CM-TRANSID:C1UQrAD3H0CAGNhl3iIuBA--.27207S3
X-Coremail-Antispam: 1Uf129KBjvdXoWrtF18XF1xZryfZFy8Jw17GFg_yoW3XrcEv3
	WUtF1fC3y8JF93tanxJFy0va929r15XFyjv395Jr4S9ry5WFs5Ar1DtFWfZr4UJa9xt3ZF
	v3s2gryUt3sIkjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU8BBT5UUUUU==
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiDgGNZVszYVxxhQAAsG

On Tue, Feb 06, 2024 at 01:55:17PM +0100, Marek Vasut wrote:
> Add SAI I2S and audio bindings to Data Modul i.MX8M Plus eDM SBC.
> 
> The SGTL5000 is attached to SAI3, however the SGTL5000 codec MCLK
> must be supplied even if the SAI3 is not in use and is controlled
> separately by the codec. The MCLK is also used to drive the codec
> I2C block, so without MCLK, I2C access to the codec would not be
> possible.
> 
> To provide such flexible MCLK control, use PWM4 with period 1 and
> duty cycle 50% as 12 MHz clock source, as there is no direct way
> to route MX8MP CCM clock to the MCLK pin. Use codec as bitclock
> and frame clock master, so that the SGTL5000 PLL can be used to
> generate derived clock.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>

Applied, thanks!



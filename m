Return-Path: <devicetree+bounces-94259-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA1695480F
	for <lists+devicetree@lfdr.de>; Fri, 16 Aug 2024 13:29:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 99DAF286092
	for <lists+devicetree@lfdr.de>; Fri, 16 Aug 2024 11:29:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31DD41741D2;
	Fri, 16 Aug 2024 11:29:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="TB5pwUcR"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72C08155A43
	for <devicetree@vger.kernel.org>; Fri, 16 Aug 2024 11:29:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723807776; cv=none; b=eyZ9yuMCdVquZy6IwupCEB+N4NlnwjQ71Lw2vWbxjjBaCubBkpmroThhCpGv0uW1vpCXCN9kbYIuP1uQeWPvYZU3yt1pmcGvWrpgkSum7iCZtXG5LHrhKUBjA7h8NjhiHHZj/qY53itycGDeuIT1KX6LhtDnxHHI/410N7zkgZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723807776; c=relaxed/simple;
	bh=NoyA5AEcKhKlCbOk3JYvueNJ/UkkFX8b2K84Lh8bQgE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=dL5HhhMOgcLn4P5AoPpMjPur0m96Q4pha2B2VvvTt2dXZtuHTtvepwJrrcCzZz/oorNt66o/XDsXSD68xodBtiAK8EzrEtKACd99MvGAbkoRcveATLtlzmiu68Y09pS/0qpUsofe1VbC+QzTohMqTAAJHiEfCgYzUHelMYHtcw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=TB5pwUcR; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=dh13Yg5RYcx8fuw068Q03jh3AT3EGjbX//VB+8LRuW4=; b=TB5pwUcRTqa2lUVT4oHBHm+nzp
	ybhVfTidmgvX4xw2Jf0FPnEboszAtISiaGv4eCV1izR7bWWhFcfeyLHBXDfIN5e35AdqxKFa1hwW/
	o1yJS4reNbzoh1tlDEi0BRW/3mjANmnrqD/l7oEsbRNGCeRiLTvpcfSCXHnh96p1iw8o2F0qV72bg
	FT/0Tm/C0pfL9AaIOBpZnujax7YHSvpKSYC4/0SwjfSC8KbUN7+tO4ZRrcFiCnkbZ1RQwEP7OqBnJ
	lZqvyZCRpI8VZD/y0oGqhla9o74Gnj1iKIKF0Qfwmi7qlc/x6y7U9q3axLiHyOAMXMgPZM6hukbWE
	ptuXJzQQ==;
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sev96-000182-VD; Fri, 16 Aug 2024 13:29:29 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Krzysztof Kozlowski <krzk@kernel.org>, FUKAUMI Naoki <naoki@radxa.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 catalin.marinas@arm.com, will@kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/2] arm64: defconfig: add CONFIG_LEDS_PWM_MULTICOLOR
Date: Fri, 16 Aug 2024 13:29:27 +0200
Message-ID: <1894793.tdWV9SEqCh@diego>
In-Reply-To: <7AA0A63882CF1421+db730266-394c-4823-afa6-8595d40daa18@radxa.com>
References:
 <20240816023243.487-1-naoki@radxa.com>
 <a6cf0764-508d-4929-9252-c9fb7567e3ee@kernel.org>
 <7AA0A63882CF1421+db730266-394c-4823-afa6-8595d40daa18@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi,

Am Freitag, 16. August 2024, 13:06:37 CEST schrieb FUKAUMI Naoki:
> thank you very much for your review.
> 
> but, I decided not to use "pwm-leds-multicolor" for Radxa E25.
> please ignore this patch series.

What Krzysztof meant was probably more in line of that a commit message
should not explain what the commit does, because that can be seen in the
code.

Instead the commit message should explain why that change is needed.


> really sorry.
> 
> Best regards,
> 
> --
> FUKAUMI Naoki
> Radxa Computer (Shenzhen) Co., Ltd.
> 
> On 8/16/24 14:18, Krzysztof Kozlowski wrote:
> > On 16/08/2024 04:32, FUKAUMI Naoki wrote:
> >> enable "pwm-leds-multicolor" driver.
> > 
> > Why?
> > 
> > Best regards,
> > Krzysztof
> > 
> > 
> 
> 






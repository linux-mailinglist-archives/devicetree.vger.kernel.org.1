Return-Path: <devicetree+bounces-78902-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D8EB913A3A
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 13:59:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1FDF8B2093E
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 11:59:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 311E3146588;
	Sun, 23 Jun 2024 11:59:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="ODPOqDDi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 050C21474D8
	for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 11:59:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719143982; cv=none; b=jeFABCJnInmalVwPMisQhvMCpwoFgz2YywzkXZvQgpVhxPDe4ks0yKVYaiUOQUERq986G2y5959T0OiOOCZioP8bUhUyilRpPkIDWilqD8Y/pUPS4jJZ91O1HS2CwSTQNZZv1bXc1GFQzghF+QUIAFdeiVCoiqhKl28Nj+cuGmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719143982; c=relaxed/simple;
	bh=pqBUdKp/JntHDfKCTbup3xB/TNkbzKI8UQNWRi4EfTI=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=doOiRBmbj0i1rxJw0b1WZHGVNlrvHwTigaN2CkPU9Qrt825j1L9bWhaetsCv5SzoYjuAXsYi/Fnmkf8HxijInbGNy0PdkSMVcgGgsaUWrtuqn3IN6nBft88Zw/aBc4wZEXKGqiV/+xtbnXez1HDyXgRhuoTC89TMnnFZoNri4Lg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=ODPOqDDi; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1719143978;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Eit2nOI5mdTDLIy/1lxlB+WC2Bc8iIghH1Bk3+quVmI=;
	b=ODPOqDDiAOOgcO8SQCpgeMxgopL7/xxvKAfR/YPNyZF6/JyTSa73MxNyhfLUCBoipOtGFa
	Sivq40H0FRoIhAUCFUNqZ8dCNM25Yr6vUGi8pabXa05deyWcicikk/hPl/XAe9q9ZXhc9q
	CLhRRdSXaBZLraw48Qc4SJB2Z7GyTlkPjlikqtZfraVHx11lO4GRWgooWx29S843W8XEzc
	bWOPK1w3qXc7r5OEFOE41FaHb1iy4qL8toKz11INFyMKzMzc0maIOzgd9CYrv4x6q7YSbD
	i1OdNTNlbN+M0WlzAxle82ksjnTKjL+Q9qyM3RV6pDk4jKSA80I7S2Xwx0sRWQ==
Date: Sun, 23 Jun 2024 13:59:37 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, FUKAUMI Naoki <naoki@radxa.com>,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: add dts for Radxa ROCK Pi E v3.0
In-Reply-To: <2659620.bgRvk7e4E5@diego>
References: <20240623075318.80492-1-naoki@radxa.com>
 <8da8e56a-e24f-4b56-9861-df55369c984f@kernel.org>
 <9941941CA3B1175A+26e42825-e100-44b7-a565-f1a86ca3fff8@radxa.com>
 <2659620.bgRvk7e4E5@diego>
Message-ID: <57ee9d6967b339aa054e4e697e112b28@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Heiko,

On 2024-06-23 12:43, Heiko Stübner wrote:
> Am Sonntag, 23. Juni 2024, 10:18:58 CEST schrieb FUKAUMI Naoki:
>> On 6/23/24 17:07, Krzysztof Kozlowski wrote:
>> > On 23/06/2024 09:53, FUKAUMI Naoki wrote:
>> >> Radxa ROCK Pi E v3.0 has DDR4 SDRAM instead of DDR3 SDRAM.
>> >>
>> >> for Linux, this change doesn't make any difference from a device tree
>> >> POV. but, for bootloader (U-Boot TPL), it makes a difference.
>> >
>> > What difference?
>> 
>> U-Boot TPL initialize DDR SDRAM.
>> 
>> https://github.com/RadxaNaoki/u-boot/commit/16d823eb95fe311c82a8ebb31570b59b1c59c43b#diff-03ce6c241f5db74ae87d4d8654bfef5eeb5bc42a9f1ff3cc828b70b3b2ac51d2R4
>> https://github.com/RadxaNaoki/u-boot/commit/16d823eb95fe311c82a8ebb31570b59b1c59c43b#diff-31b80303774e7c10b527fb2dbc704b82e6c5ccdc6d53dd4f65861309ce0e7413R4
>> 
>> there is 1 letter difference, ddr"3" and ddr"4".
>> 
>> >> bootloader needs a separeted dts for v3, so I add new dts for it.
>> >> dtb can be shared between v3 and prior, so I don't touch Makefile.
>> >
>> > I don't understand. If you have the same DTB then you do not need second
>> > DTS.
>> 
>> 2nd dts is for bootloader. it's not needed for Linux.
> 
> but _what_ is this different dt needed for. If it is unchanged from the
> first one, why can't you reference that one in u-boot?
> 
> Similar to Krzysztof, I don't see _why_ you need a separate devicetree
> at all.

Please see the U-Boot patch submission [1] for more details.  Anyway,
I think in this case we'll need a rather full-fledged support for a new
board version, because that's what it actually is.

[1] 
https://lore.kernel.org/u-boot/20240623041542.50137-1-naoki@radxa.com/


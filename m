Return-Path: <devicetree+bounces-137909-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 16CE3A0B0F9
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 09:24:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 24E1A1885817
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 08:24:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01214233135;
	Mon, 13 Jan 2025 08:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="d8Empi5W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B47F1465AE;
	Mon, 13 Jan 2025 08:24:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736756662; cv=none; b=pqtr4JimRTXfKBQcpveY9s8Yu3DhQekKWnV48r7giacdo4n61aCF4B+PmVZQmVie+8r0twOXPZ0e1qwVAvwfzqEORDQML28pAuw2TQYW2FB6pmEHyUEezFL0hgkDU0t++eJ172alRc2pIjQ3qthFsWVA20me2SRsXHn7YLdeutU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736756662; c=relaxed/simple;
	bh=W1AJx50RbfJIo7DGCNaPzhN+xsJZQ6D7nxxHOWYulYQ=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=RQmHmDdWzvXNtSD5Uz6KDBS9387pGlyddXGk4io9+MXYN8Lf4+9kUZD1U89uKqmY6CM+GkVB6tNKH3EpQEeIU2gzNAu7xmatEOKOn6UirO+cYqtBhk4Of/tGkw0mneW4r53g1UKdt142k2IcmgkJL/CiFwen1iO4u+FI3UHIUFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=d8Empi5W; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1736756657;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=NP5Y8/O0Oc9k478L1LRw9mJQHwjSZlVZoadTLuLD3bY=;
	b=d8Empi5WA2UJ1zS0ddwUrM+Qk1NkOfJa4O3dj5SEXV6LaLW7Y+bc12XtymLBfnjfJ6AgIt
	sf/zpnRI2sY1w1ufENH7lsq77JuGSqiG8Td2KqrSyllg3aqZthzhUOWKQcWfVXzlnh9n9p
	dZT1YstAPQKIzzzJWDIxgoHf4KrYWzWgolISWRgFS1fN0vRprnNkcGA9HTODoDwmrfU47C
	eMai8Ilw7AxGhPCMWO6oGs0+Fwa4ZtXEX+98DYe7iRKAA7k/Pc2dy2Mzbm/e8R0hVILBxM
	fGNUlWyfs/7sVCUtcMkdK3zpn4r3OmQqBgMLkhnUrWlel2a+BNWaVQKoVLZ49g==
Date: Mon, 13 Jan 2025 09:24:16 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Junhao Xie <bigfoot@classfun.cn>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Jonas
 Karlman <jonas@kwiboo.se>, Chukun Pan <amadeus@jmu.edu.cn>, FUKAUMI Naoki
 <naoki@radxa.com>, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 3/3] arm64: dts: rockchip: add dts for Ariaboard
 Photonicat RK3568
In-Reply-To: <54b5dac0-5791-4b20-a237-dac6fd03c259@classfun.cn>
References: <20250112073344.1976411-1-bigfoot@classfun.cn>
 <20250112073344.1976411-4-bigfoot@classfun.cn>
 <1e72cc9cdc390e79e97806fe4f7d8abf@manjaro.org>
 <35f8fe37-b06f-49eb-b0c2-430421f1ff3b@classfun.cn>
 <7b55c7469774c41d9896df3100df1630@manjaro.org>
 <54b5dac0-5791-4b20-a237-dac6fd03c259@classfun.cn>
Message-ID: <3ee25756b12e999631bd959d787ff248@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Junhao,

On 2025-01-13 09:18, Junhao Xie wrote:
> On 2025/1/13 12:25, Dragan Simic wrote:
>> On 2025-01-12 23:16, Junhao Xie wrote:
>>> On 2025/1/12 16:47, Dragan Simic wrote:
>>>> Unless the design of the board is proprietary, it would be good
>>>> to provide a link to the board schematic, for those interested
>>>> in verifying the board DT file.
>>>> 
>>>> As a note, I already tried to find the board schematic with no
>>>> success, so the design might be proprietary.
>>> 
>>> Yes, this board is proprietary. I asked the manufacturer and
>>> they don't provide schematics.
>>> 
>>> But I found a partial schematic diagram of some of connectors
>>> on the board here
>>> https://dl.ariaboard.com/photonicat_rk3568/Photonicat%20rk3568%20EVB%20Board%20spec.pdf
>> 
>> Yes, I also found that PDF file.  It's somewhat similar to what
>> Raspberry Pi provides with its reduced schematics -- helpful to
>> an extent, but still leaving a lot to be desired.
>> 
>> Out of curiosity, what did you actually use as a reference to create
>> the board dts file?  Perhaps some downstream dts file provided by
>> the manufacturer or found in some operating system image?
> 
> I wrote this device tree based on other rk3568 devices in mainline,
> and downstream board dts:
> https://github.com/photonicat/rockchip_rk3568_kernel/blob/novotech-5.10/arch/arm64/boot/dts/rockchip/rk3568-photonicat-base.dtsi

Thanks for the clarification.  It would be good to include that
link in the description of patch 3/3, for future reference.


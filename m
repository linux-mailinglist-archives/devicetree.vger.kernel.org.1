Return-Path: <devicetree+bounces-143404-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D3897A29948
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 19:41:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D69151885D4A
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 18:41:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B909B1FF7D0;
	Wed,  5 Feb 2025 18:40:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.bugwerft.de (mail.bugwerft.de [46.23.86.59])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE7FF1FF7CB
	for <devicetree@vger.kernel.org>; Wed,  5 Feb 2025 18:40:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.23.86.59
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738780808; cv=none; b=Ejqb7IkGRia7GZ+y3d6RGQO3n8u32G1zuIIWz1Ce/TDMgWwcdvkOjgSKfOGwyMNHMFK0HQbf+AvGSZQ3nf9pnsU1Jco5Gr+26LDoMgNcvdTbz/mb7nRzTR5+Tl2tsdFs+xLgVSi1bUFvsshIK7UByIiquIqyFIPALV21pMjzm0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738780808; c=relaxed/simple;
	bh=oSHF51smxJZUm5AwnRs840AbrS2oh3i8OwcnsRmsNyo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=R5drdiTiryQKdU5vompoVq1BMzFqS0izAe3O+WozRO9YDVK0IjFEnqd9xm0FZGNc4pK+zGs1AJ3wSyY368YfMPm/CCCVuMcgjJd3r2CMXsr6pubYmZ1bhc1AipW1o6Lp/BuSabNVGmAMdGyUqgsP411WVlppuAH1ZizcgOEFk24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=zonque.org; spf=pass smtp.mailfrom=zonque.org; arc=none smtp.client-ip=46.23.86.59
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=zonque.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=zonque.org
Received: from [192.168.100.34] (p4ff24055.dip0.t-ipconnect.de [79.242.64.85])
	by mail.bugwerft.de (Postfix) with ESMTPSA id 39D57281C3B;
	Wed, 05 Feb 2025 18:32:31 +0000 (UTC)
Message-ID: <adbfeb77-592c-4b14-9a0c-1e63bf9affad@zonque.org>
Date: Wed, 5 Feb 2025 19:32:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] pwm: pxa: Use #pwm-cells = <3>
To: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>,
 Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, =?UTF-8?Q?Duje_Mihanovi=C4=87?=
 <duje.mihanovic@skole.hr>
Cc: =?UTF-8?Q?Herv=C3=A9_Codina?= <herve.codina@bootlin.com>,
 linux-arm-kernel@lists.infradead.org, linux-pwm@vger.kernel.org,
 devicetree@vger.kernel.org
References: <cover.1738777221.git.u.kleine-koenig@baylibre.com>
Content-Language: en-US
From: Daniel Mack <daniel@zonque.org>
In-Reply-To: <cover.1738777221.git.u.kleine-koenig@baylibre.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


On 05.02.25 18:53, Uwe Kleine-König wrote:
> Hello,
> 
> this series' goal is to soften the special device-tree binding of
> marvel,pxa-pwm devices. This is the only binding that doesn't pass the
> line index as first parameter.
> 
> Here the #pwm-cells value is bumped from 1 to 3, keeping compatibility
> with the old binding.
> 
> The motivation for this was that Hervé sent a patch introducing pwm
> nexus nodes which don't work nicely with the marvel,pxa-pwm
> particularities.
> 
> For merging this series (assuming device-tree and pxa maintainers agree)
> I guess keeping the patches together makes sense because with the 2nd
> patch applied but without the 3rd there are a few dt-checker warnings.
> 
> So I suggest to take it via my pwm tree as I guess drivers/pwm/core.c
> has more potential for a conflict than arch/arm/boot/dts/intel/pxa.
> So please send Acks and tell me if you would need an immutable branch
> for pulling into the PXA tree.
> 
> Best regards
> Uwe
> 
> Uwe Kleine-König (3):
>    pwm: Add upgrade path to #pwm-cells = <3> for users of
>      of_pwm_single_xlate()
>    dt-bindings: pwm: marvell,pxa-pwm: Update to use #pwm-cells = <3>
>    ARM: dts: pxa: Use #pwm-cells = <3> for marvell,pxa-pwm devices

For all patches in the series:

Reviewed-by: Daniel Mack <daniel@zonque.org>

> 
>   .../devicetree/bindings/pwm/marvell,pxa-pwm.yaml |  3 +--
>   arch/arm/boot/dts/intel/pxa/pxa25x.dtsi          |  4 ++--
>   arch/arm/boot/dts/intel/pxa/pxa27x.dtsi          |  8 ++++----
>   .../dts/intel/pxa/pxa300-raumfeld-controller.dts |  2 +-
>   arch/arm/boot/dts/intel/pxa/pxa3xx.dtsi          |  8 ++++----
>   drivers/pwm/core.c                               | 16 ++++++++++++++++
>   6 files changed, 28 insertions(+), 13 deletions(-)
> 
> 
> base-commit: c98e66144b7d07ee9a3ca8241123b628a8ac0288



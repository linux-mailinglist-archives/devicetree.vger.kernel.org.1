Return-Path: <devicetree+bounces-238917-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1099DC5FBA3
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 01:16:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BCB8E3BCF66
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 00:16:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2543B38DD8;
	Sat, 15 Nov 2025 00:16:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b="X+55deDZ";
	dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b="X+55deDZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.mleia.com (mleia.com [178.79.152.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380EE22339;
	Sat, 15 Nov 2025 00:16:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.79.152.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763165774; cv=none; b=Vx/utm9rdFh/RZ/wjMx8gKwGtqpZdScX807hAdtQ476J4jvlE/xRG/nErYfPoviZED+mzkT+irch7Q4ErE76739KvkjbLlUuyEM1SThd/cT8jSyqZGxGYIuMqB9S12vExTR/LV55+06vSnxDfYMsRa1QGR/Kfc9c5jSOzGV7ynQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763165774; c=relaxed/simple;
	bh=U3Vdu/lF1NOoptVfbcwB+PehQp1h+KtWDf1t6cJ2e+4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=o6ve2wxIrPa4AJe8U3NPQcqjSV7S00t27AfoFG8FPelhhN78OHthVGa3zpHcLXJstjBwJ8zlZ1XvlpKCHvIBWgf7xYbHj3NurVOgCC4E938ukQFYTxRe5FMCpbQIID1OFVCwXC6N0MURGO92FN+XV4V/18Muq7jdW1vV4JJ6IoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mleia.com; spf=none smtp.mailfrom=mleia.com; dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b=X+55deDZ; dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b=X+55deDZ; arc=none smtp.client-ip=178.79.152.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mleia.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=mleia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mleia.com; s=mail;
	t=1763165765; bh=U3Vdu/lF1NOoptVfbcwB+PehQp1h+KtWDf1t6cJ2e+4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=X+55deDZLoypUbDpIedjmcAHsL/d/z7aadsLHsHez+sMSuE6u0RpPhbdnUA9jEWvk
	 hdqcqT412weiG7qMZSCuZwbiJLgER0sqJFb9jWHyCaLdgFLByAetnKMr4BcLRMgkTB
	 3axPu9zIi2ado43HQ2ppXo5Yt6CS/Vazq2mgNMG1crsQBGt9UMSU6gek15fCNBG2C2
	 ZsIsAjcre0pNVHTmkv4R6AA0AAtqf3ualrrw1ddqsQnlxx9NXTosjGQhFlQLKYbkHY
	 ijSfmZNVoNhdrYolgIJwbKfeJNc82CiKcGitRGz2GIidK5z3cpbEbhCAYK3dzbskU1
	 wOayMIIzhN+7g==
Received: from mail.mleia.com (localhost [127.0.0.1])
	by mail.mleia.com (Postfix) with ESMTP id 26F363E101C;
	Sat, 15 Nov 2025 00:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mleia.com; s=mail;
	t=1763165765; bh=U3Vdu/lF1NOoptVfbcwB+PehQp1h+KtWDf1t6cJ2e+4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=X+55deDZLoypUbDpIedjmcAHsL/d/z7aadsLHsHez+sMSuE6u0RpPhbdnUA9jEWvk
	 hdqcqT412weiG7qMZSCuZwbiJLgER0sqJFb9jWHyCaLdgFLByAetnKMr4BcLRMgkTB
	 3axPu9zIi2ado43HQ2ppXo5Yt6CS/Vazq2mgNMG1crsQBGt9UMSU6gek15fCNBG2C2
	 ZsIsAjcre0pNVHTmkv4R6AA0AAtqf3ualrrw1ddqsQnlxx9NXTosjGQhFlQLKYbkHY
	 ijSfmZNVoNhdrYolgIJwbKfeJNc82CiKcGitRGz2GIidK5z3cpbEbhCAYK3dzbskU1
	 wOayMIIzhN+7g==
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi [91.159.24.186])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.mleia.com (Postfix) with ESMTPSA id 951E83E16D7;
	Sat, 15 Nov 2025 00:16:04 +0000 (UTC)
Message-ID: <37edb265-90ff-43cf-bfeb-3371f12c78a8@mleia.com>
Date: Sat, 15 Nov 2025 02:16:04 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/5] ARM: dts: lpc3250-phy3250: add at25 required
 properties
To: Frank Li <Frank.Li@nxp.com>,
 Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 "moderated list:ARM/LPC32XX SOC SUPPORT"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
Cc: imx@lists.linux.dev
References: <20251114174712.1206027-1-Frank.Li@nxp.com>
 <20251114174712.1206027-3-Frank.Li@nxp.com>
From: Vladimir Zapolskiy <vz@mleia.com>
In-Reply-To: <20251114174712.1206027-3-Frank.Li@nxp.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-49551924 
X-CRM114-CacheID: sfid-20251115_001605_176339_239D3181 
X-CRM114-Status: GOOD (  14.20  )

Hi Frank.

On 11/14/25 19:47, Frank Li wrote:
> Add at25 required properties (size, address-width and pagesize), which
> duplicate deprecated properties.
> 
> Fix below CHECK_DTB warning:
>    arch/arm/boot/dts/nxp/lpc/lpc3250-phy3250.dtb: at25@0 (atmel,at25): 'pagesize' is a required property
>    arch/arm/boot/dts/nxp/lpc/lpc3250-phy3250.dtb: at25@0 (atmel,at25): $nodename: 'anyOf' conditional failed, one must be fixed:
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
> change in v2
> - move node name change to new patch
> ---
>   arch/arm/boot/dts/nxp/lpc/lpc3250-phy3250.dts | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/nxp/lpc/lpc3250-phy3250.dts b/arch/arm/boot/dts/nxp/lpc/lpc3250-phy3250.dts
> index 21a6d0bca1e8a..732d590f6cfdf 100644
> --- a/arch/arm/boot/dts/nxp/lpc/lpc3250-phy3250.dts
> +++ b/arch/arm/boot/dts/nxp/lpc/lpc3250-phy3250.dts
> @@ -216,6 +216,10 @@ eeprom: at25@0 {
>   		at25,byte-len = <0x8000>;
>   		at25,addr-mode = <2>;
>   		at25,page-size = <64>;
> +
> +		size = <0x8000>;
> +		address-width = <16>;
> +		pagesize = <64>;
>   	};
>   };
>   

I see that I was imprecise in my ask, please replace (remove) the deprecated
properties with the new ones added. There is no reason to keep both, forward
compatibility should not be supported.

Sorry for any caused confusion.

-- 
Best wishes,
Vladimir


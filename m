Return-Path: <devicetree+bounces-137408-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 82A2CA08E7A
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 11:50:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 53792188C069
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 10:50:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A28B20ADC2;
	Fri, 10 Jan 2025 10:50:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="UoGoi+o9"
X-Original-To: devicetree@vger.kernel.org
Received: from lelvem-ot01.ext.ti.com (lelvem-ot01.ext.ti.com [198.47.23.234])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26EB120550F;
	Fri, 10 Jan 2025 10:50:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.234
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736506229; cv=none; b=ul4j3HLtIarfJKkEvgwIpnBwQlWij7C6VPALAF0A1WkwqVYG8xwDOHUjqBRQeSKaFZoYQsvqC7sd95Ja/8oHIMSNGGhmQ7vj3GY3sdwAIcoS53k56QITT/bMANnBUZKFugu466n6gFgxyGRpTNy6zm3IkC4A4F63ESY1l/5xyGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736506229; c=relaxed/simple;
	bh=YHf2RJqhxGDA+WfEWQHhGYToLRBlHLMD5ZuBDEVZj5k=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=cR4VGFjiy0+bmFKIdTBvww+Xo90mXCwvhcH5dvDL3EVAyrfTwTqU9l3M1ps9MG/aSzc3G+wBq59WpB0+nVq3VXmrMdN1vPSnsNPihzWbXjMzokirQFw6J2pcCCxVwE9wTUKx5JB7V6e5St5nUb7JWxr/l8bt/dX9cQA/x9YheW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=UoGoi+o9; arc=none smtp.client-ip=198.47.23.234
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelvem-ot01.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 50AAoKqc3106649
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 10 Jan 2025 04:50:20 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1736506220;
	bh=rYrQC0kXwBVMa1J45wEqt9TQ8aBV6ll3GFZxCHeR19w=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=UoGoi+o99ilNkoPbD9QVCUxa1zhtOlhpzbxhqm7K20thbDMKoORdR4GRNoJ3vNhPR
	 FlazG57RWWvXBATEoMcw8NrSXZNOwMCtamq8eUOfpfrn9MO0ZqV7/ADSLSmdsqeEGm
	 ucPwdq//pC3liDAnX7jEuYxo7+ClXt3Az4uZIGRY=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 50AAoK4R120658
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 10 Jan 2025 04:50:20 -0600
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 10
 Jan 2025 04:50:19 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 10 Jan 2025 04:50:20 -0600
Received: from [10.24.72.180] (jayesh-hp-z2-tower-g5-workstation.dhcp.ti.com [10.24.72.180])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 50AAoGxT104651;
	Fri, 10 Jan 2025 04:50:17 -0600
Message-ID: <b67cc247-0c96-493c-b048-315db295158a@ti.com>
Date: Fri, 10 Jan 2025 16:20:15 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: ti: k3-j784s4-evm:quad-port-eth-exp1: Remove
 duplicate hogs
To: Siddharth Vadapalli <s-vadapalli@ti.com>
CC: <nm@ti.com>, <vigneshr@ti.com>, <kristo@kernel.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <c-vankar@ti.com>
References: <20250110101855.156136-1-j-choudhary@ti.com>
 <ybyexqc4ssjt5lkr76bfiaf7usmq7xto42byyboov5pjkdc4fn@wsj26klcliio>
Content-Language: en-US
From: Jayesh Choudhary <j-choudhary@ti.com>
In-Reply-To: <ybyexqc4ssjt5lkr76bfiaf7usmq7xto42byyboov5pjkdc4fn@wsj26klcliio>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

Hello Siddharth,

Thank you for the review.

On 10/01/25 16:15, Siddharth Vadapalli wrote:
> On Fri, Jan 10, 2025 at 03:48:55PM +0530, Jayesh Choudhary wrote:
> 
> Hello Jayesh,
> 
> In the $subject of this patch, please use the overlay name as-is instead
> of adding the colon which splits the overlay name:
> s/k3-j784s4-evm:quad-port-eth-exp1/k3-j784s4-evm-quad-port-eth-exp1

I will fix this typo.

> 
>> The j784s4-evm board dts now has the gpio hogs for MUX2 after integration
>> of audio support.
>> Remove duplicate gpio-hogs from the overlay dtso to prevent mux probe
>> failures leading to can-phy3 deferred probe:
>> 'gpio-mux mux-controller: probe with driver gpio-mux failed with error -16'
> 
> This appears to be a fix since overlay functionality was broken since
> the commit which introduced audio support. Please add a "Fixes" tag
> to indicate this.
> 

Will add it in v2.

Warm Regards,
Jayesh

>>
>> Signed-off-by: Jayesh Choudhary <j-choudhary@ti.com>
> 
> With the above comments addressed,
> 
> Reviewed-by: Siddharth Vadapalli <s-vadapalli@ti.com>
> 
> Regards,
> Siddharth.


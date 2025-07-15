Return-Path: <devicetree+bounces-196454-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C07F9B056E7
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 11:44:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BC0803AF0B7
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 09:43:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D45DE27584E;
	Tue, 15 Jul 2025 09:44:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="HcipY2/4"
X-Original-To: devicetree@vger.kernel.org
Received: from lelvem-ot02.ext.ti.com (lelvem-ot02.ext.ti.com [198.47.23.235])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9432270EA9;
	Tue, 15 Jul 2025 09:44:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.23.235
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752572648; cv=none; b=YK7lEhBI4B1040dAuQDgM5LBqu5l1Rjhp2/sOZu4bsK+nL2SKrJtORRDtXj4nTDjLc65+fF2RGfYQOYT+k2s8noh5uxoJOEBJFC9gi1/trGCFccFwZcAQVwcQOvl06zIHMm8xMH4AvsDUUqczIzCWWlu0NFEBiAHXln9Kra/dYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752572648; c=relaxed/simple;
	bh=wuPLzqHfh3gWzTFevxMJ7FlgQ/iYDTRmG40LDkZDS98=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=lj8NoNVVl3UYHqZiiCz4VhgNW3axl3DDUeA0M0ACXPldv1Q6wx9HwPPxixoY4BrGbyrdj5zqUvfONo0krLVyl569nHLVkQkaJwdUlYLQhRRbJaTywd8yLOq+QK3jW0cJ4vFa/ATtH0rZrk0R/B3k2Q8+aDnA947NoUBdxxU+aNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=HcipY2/4; arc=none smtp.client-ip=198.47.23.235
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from lelvem-sh02.itg.ti.com ([10.180.78.226])
	by lelvem-ot02.ext.ti.com (8.15.2/8.15.2) with ESMTP id 56F9higY2864311;
	Tue, 15 Jul 2025 04:43:44 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1752572624;
	bh=pPj+ZjyXI08K1aa9ZtqJ2JQ4vXsCzR+hY2K3B7jFZY0=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=HcipY2/4YMrPz6oInXTxuQgxYPe/6zR029wPd0s9QnDqJHqHqukrflc9WIZ7vq6Tw
	 KZOyF4027omc7xLuYYBvnoQJolvl/8mtI3T8hnODp0wOPjugVKivRKSoouIs1PxCgE
	 KNggh50s3EvXp6tXtnsHP7NSoxI0rV+aeo4yaADM=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
	by lelvem-sh02.itg.ti.com (8.18.1/8.18.1) with ESMTPS id 56F9hiLK1175149
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=FAIL);
	Tue, 15 Jul 2025 04:43:44 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55; Tue, 15
 Jul 2025 04:43:44 -0500
Received: from lelvem-mr05.itg.ti.com (10.180.75.9) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.55 via
 Frontend Transport; Tue, 15 Jul 2025 04:43:44 -0500
Received: from [172.24.227.166] (jayesh-hp-z2-tower-g5-workstation.dhcp.ti.com [172.24.227.166])
	by lelvem-mr05.itg.ti.com (8.18.1/8.18.1) with ESMTP id 56F9heAe2655315;
	Tue, 15 Jul 2025 04:43:41 -0500
Message-ID: <eb5c71b5-62bb-4ec2-b3a1-a34ed3d70849@ti.com>
Date: Tue, 15 Jul 2025 15:13:39 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/7] Add DSI display support for TI's Jacinto platforms
To: Vignesh Raghavendra <vigneshr@ti.com>, <nm@ti.com>,
        <devicetree@vger.kernel.org>
CC: <kristo@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
        <conor+dt@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <devarsht@ti.com>, <u-kumar1@ti.com>
References: <20250624082619.324851-1-j-choudhary@ti.com>
 <0d81594f-ad1a-4c65-a00a-9c97c8b01a65@ti.com>
Content-Language: en-US
From: Jayesh Choudhary <j-choudhary@ti.com>
In-Reply-To: <0d81594f-ad1a-4c65-a00a-9c97c8b01a65@ti.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

Hello Vignesh,

On 26/06/25 11:45, Vignesh Raghavendra wrote:
> 
> 
> On 24/06/25 13:56, Jayesh Choudhary wrote:
>> Hello All,
>>
>> This series adds the dts support to enable DSI on 3 platforms for TI SoCs:
>> - J784S4-EVM
>> - J721S2-EVM
>> - AM68-SK
>>
>> Relevant driver fixes, CDNS-DSI fixes[0] and SN65DSI86 detect fix[1]
>> are Reviewed and Tested.
>>
> 
> Are these merged?

SN65DSI86 fix which was an essential patch is merged.
CDNS-DSI fixes will soon get merged (and that does not break these
integration patches for DSI).


Warm Regards,
Jayesh

> 
> [...]
> 


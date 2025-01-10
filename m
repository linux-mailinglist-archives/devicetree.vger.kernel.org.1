Return-Path: <devicetree+bounces-137599-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A83EA09E2C
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 23:38:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 085E33AAC6C
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 22:36:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BBC02248AB;
	Fri, 10 Jan 2025 22:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b="fbqKdkfY"
X-Original-To: devicetree@vger.kernel.org
Received: from mr85p00im-hyfv06011401.me.com (mr85p00im-hyfv06011401.me.com [17.58.23.191])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBBFA217712
	for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 22:34:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=17.58.23.191
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736548474; cv=none; b=ZfW2JA+7wG1LYT9Sqw5mqJ+O6wl5FR3xAr5JsIZnITel4FZ0tqTn5yFfHnrgXw2TzImpBTJYgemcM5d9QY9/VblPnSzGhK2tGgXzZlIUdywWeCUnUveT3lyAeuDOXOrShsGoJ8QwtUDwvZebxX0G+juYGECXdbFqCVIvYJhWnfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736548474; c=relaxed/simple;
	bh=NyT/TlNP+fecD/ylGy1NfPDaaofw/fWhiFKIdTZaCfY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dsIx/bygWSNd66uaQOuo38xcoo0RS/IqZqZPWJ0f1fiIoQL+agquiAL0q9f14XGZNrh6k+F7SndUhWdtwIHNYjZgCzdNCTcIpqk1iK6HPYaz8oBelfFmrrWG0tzZqdVgEaYux0Fyv4OSgQmviFet6GQRTOJVyC3GzGVpayy7x8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com; spf=pass smtp.mailfrom=icloud.com; dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b=fbqKdkfY; arc=none smtp.client-ip=17.58.23.191
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icloud.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1736548471;
	bh=wHy6Zon4xDwDb200OfbfzqcvdhouDGirFCJvj9qv2tw=;
	h=Message-ID:Date:MIME-Version:Subject:To:From:Content-Type:
	 x-icloud-hme;
	b=fbqKdkfY/rV8gSHGBdr0TlCUWkzLRvj5B1m7GDgE3a1IHEs+tc6TxdTTbXdzdgeID
	 I1Vnb/t1JJM04Lp+txJaqJC0rxn8eU58JnLbIILa1jxWZIH5hfnExYx4ghgprwAt8S
	 Uxcfa+oR2HJiszWwY+LDl4ulB4JjkU/4+fkZ/MUiLxuObP48qCqzii0v+IEUb8JUaO
	 2qzM8QbBH0v5RtrBLzOFwAn1YSkBWnoqpp86NsxGznPynHCXqE8h7lXP5ZpjlYnhaX
	 SgeQc20dO79ZmIWl092ZB3EYizb5+QpZnqcwS8GFGWLlyTLjvGIh3B7yixEjVRXI9Z
	 sI5mSkrxFjmMw==
Received: from [192.168.1.25] (mr38p00im-dlb-asmtp-mailmevip.me.com [17.57.152.18])
	by mr85p00im-hyfv06011401.me.com (Postfix) with ESMTPSA id D22DC357B028;
	Fri, 10 Jan 2025 22:34:26 +0000 (UTC)
Message-ID: <dc7328d2-502c-4d10-af8f-f3ae02f636b8@icloud.com>
Date: Sat, 11 Jan 2025 06:34:21 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 06/14] of: property: Avoiding using uninitialized
 variable @imaplen in parse_interrupt_map()
To: Rob Herring <robh@kernel.org>
Cc: Saravana Kannan <saravanak@google.com>, Maxime Ripard
 <mripard@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Grant Likely <grant.likely@secretlab.ca>, Marc Zyngier <maz@kernel.org>,
 Andreas Herrmann <andreas.herrmann@calxeda.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Mike Rapoport <rppt@kernel.org>,
 Oreoluwa Babatunde <quic_obabatun@quicinc.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Zijun Hu <quic_zijuhu@quicinc.com>
References: <20250109-of_core_fix-v4-0-db8a72415b8c@quicinc.com>
 <20250109-of_core_fix-v4-6-db8a72415b8c@quicinc.com>
 <20250110202649.GA3227291-robh@kernel.org>
Content-Language: en-US
From: Zijun Hu <zijun_hu@icloud.com>
In-Reply-To: <20250110202649.GA3227291-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 1IiCdYC92CucYCalf19-LrsRuOsRlUbF
X-Proofpoint-ORIG-GUID: 1IiCdYC92CucYCalf19-LrsRuOsRlUbF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-10_09,2025-01-10_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 bulkscore=0 suspectscore=0
 clxscore=1015 phishscore=0 malwarescore=0 mlxscore=0 spamscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2501100174

On 2025/1/11 04:26, Rob Herring wrote:
> On Thu, Jan 09, 2025 at 09:26:57PM +0800, Zijun Hu wrote:
>> From: Zijun Hu <quic_zijuhu@quicinc.com>
>>
>> parse_interrupt_map() will use uninitialized variable @imaplen if fails
>> to get property 'interrupt-map'.
>>
>> Fix by using the variable after successfully getting the property.
>>
>> Fixes: e7985f43609c ("of: property: Fix fw_devlink handling of interrupt-map")
>> Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
>> ---
>>  drivers/of/property.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/of/property.c b/drivers/of/property.c
>> index dca1a3ebccae1093b2b11f51e8e692bca854d0e3..6245cbff3527d762c16e7f4b7b7b3d4f2e9ddbe6 100644
>> --- a/drivers/of/property.c
>> +++ b/drivers/of/property.c
>> @@ -1391,9 +1391,9 @@ static struct device_node *parse_interrupt_map(struct device_node *np,
>>  	addrcells = of_bus_n_addr_cells(np);
>>  
>>  	imap = of_get_property(np, "interrupt-map", &imaplen);
>> -	imaplen /= sizeof(*imap);
>>  	if (!imap)
>>  		return NULL;
>> +	imaplen /= sizeof(*imap);
> 
> sizeof() is a compile time constant, there's not an actual dereference 
> here.
> 

the uninitialized variable is @imaplen, and not sizeof(*imap).

>>  
>>  	imap_end = imap + imaplen;
>>  
>>
>> -- 
>> 2.34.1
>>



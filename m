Return-Path: <devicetree+bounces-137606-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D698A09ED0
	for <lists+devicetree@lfdr.de>; Sat, 11 Jan 2025 00:49:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7BDE716A065
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 23:49:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E88F2206B7;
	Fri, 10 Jan 2025 23:49:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b="FtEQfNZ/"
X-Original-To: devicetree@vger.kernel.org
Received: from pv50p00im-hyfv10011601.me.com (pv50p00im-hyfv10011601.me.com [17.58.6.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFD021ACEB8
	for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 23:48:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=17.58.6.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736552940; cv=none; b=pMt6czse32HK1LtNzYDYEl+tQmvNOPzkq/EguI7crFLJzxHmoygAR1xFKSCEe2iLhX0cWo5E1lK3wyLk1gTdvz3EgsGGA0Mt98uopN9gVB+atTzTydgNJSAtEHD46S/P1OtCPvy0N+RnBnPfear0F+RJLALBhoRAl9kQ5mj8xIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736552940; c=relaxed/simple;
	bh=nNvI6+Ij5PfspPm5wCBJgXUw+j8JC43ac3S8PgjXqe8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=j/6C+YcNN0t9H9gnG0HWfJHBZTbfr4rDfSlNuy0ysZdYafpz4GoUsLm7sZyp+asj6/HLbSSqQ3Cfb0WrWCTlydwkuaqNsjH7iNUl7fHueQm/WpzJDV5k6C0oEXZVbB/7dazznNWlCPHIXbEFFSmksvsaBCWRt3GYKaZeyH1ceXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com; spf=pass smtp.mailfrom=icloud.com; dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b=FtEQfNZ/; arc=none smtp.client-ip=17.58.6.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icloud.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1736552938;
	bh=cF6o63r7qtB2VW8oto8UiNAPYI1DK0A4nQPfQ6OkpfQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:From:Content-Type:
	 x-icloud-hme;
	b=FtEQfNZ/U4gGKmsfq3/3zFn1e7F22igj7QKWEcg+LppeNsCl8Z7Rc7r0qnJlnaxWM
	 TA6xz+QmDPpcO1C9Oh2CAo/Vd/Z0P+fLu2WgJaxoNqeHXmybWVwmBtJcyZFXX0z+Ta
	 dWNQ3inSzyuzgfcf4aQjZzDbpacNc+iIXHt7XgUB79B9aWhp9WNf8pWguzjbCL5nqw
	 xqlq4+9f1INSsNbduI6wsAVxvn0Onl9+umaCAthRWePaiN1Ltq9kqqvI/Np442JMpT
	 686SX/a3kb1ZZg8z9qmmUAfzdIn6818PSg5w1chPYHkf0cURFyNS3i42BfhwmaYZdf
	 gkKZaosXDD9YA==
Received: from [192.168.1.25] (pv50p00im-dlb-asmtp-mailmevip.me.com [17.56.9.10])
	by pv50p00im-hyfv10011601.me.com (Postfix) with ESMTPSA id BFAF5C800E8;
	Fri, 10 Jan 2025 23:48:52 +0000 (UTC)
Message-ID: <c79dd576-0a85-48e2-a7f8-e4b4e005a18b@icloud.com>
Date: Sat, 11 Jan 2025 07:48:48 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 14/14] of: Improve __of_add_property_sysfs()
 readability
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
 <20250109-of_core_fix-v4-14-db8a72415b8c@quicinc.com>
 <20250110204154.GA3529721-robh@kernel.org>
Content-Language: en-US
From: Zijun Hu <zijun_hu@icloud.com>
In-Reply-To: <20250110204154.GA3529721-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: yKl1o_u4D5fSSygwcsMAm8oU_9pygmIs
X-Proofpoint-GUID: yKl1o_u4D5fSSygwcsMAm8oU_9pygmIs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-10_10,2025-01-10_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999 malwarescore=0
 adultscore=0 bulkscore=0 spamscore=0 suspectscore=0 phishscore=0
 mlxscore=0 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2501100184

On 2025/1/11 04:41, Rob Herring wrote:
> On Thu, Jan 09, 2025 at 09:27:05PM +0800, Zijun Hu wrote:
>> From: Zijun Hu <quic_zijuhu@quicinc.com>
>>
>> __of_add_property_sysfs() hard codes string "security-" length as 9, but
>> that is not obvious for readers.
>>
>> Improve its readability by using strlen().
> 
> Does the compiler optimize the strlen call away? Maybe, maybe not. If 
> not, that's N calls to strlen() where N is the number of properties in 
> your DT. That's in the 1000s easily.
> 
> Do you really want to go test enough compiler versions we support to 
> feel confident this is optimized away. I don't.
> 

i understand your concern about performance.
perhaps, such impact about performance may be ignored for linux OS.

what about below solution ?

const char security_prefix[] = "security-";
use 'sizeof(security_prefix) - 1' for the length of string.


> Rob
> 
>>
>> Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
>> ---
>>  drivers/of/kobj.c | 3 ++-
>>  1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/of/kobj.c b/drivers/of/kobj.c
>> index aa887166f0d21030d620d43c864ca76cde1c6d05..44bfe50c6ea6503e3940578de1dfc7fe0583dfb3 100644
>> --- a/drivers/of/kobj.c
>> +++ b/drivers/of/kobj.c
>> @@ -62,10 +62,11 @@ static const char *safe_name(const struct kobject *kobj, const char *orig_name)
>>  
>>  int __of_add_property_sysfs(struct device_node *np, struct property *pp)
>>  {
>> +	const char *security_prefix = "security-";
>>  	int rc;
>>  
>>  	/* Important: Don't leak passwords */
>> -	bool secure = strncmp(pp->name, "security-", 9) == 0;
>> +	bool secure = strncmp(pp->name, security_prefix, strlen(security_prefix)) == 0;
>>  
>>  	if (!IS_ENABLED(CONFIG_SYSFS))
>>  		return 0;
>>
>> -- 
>> 2.34.1
>>



Return-Path: <devicetree+bounces-137670-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C74B7A0A3AD
	for <lists+devicetree@lfdr.de>; Sat, 11 Jan 2025 13:53:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0E1D23AA55D
	for <lists+devicetree@lfdr.de>; Sat, 11 Jan 2025 12:52:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE21B19AA58;
	Sat, 11 Jan 2025 12:52:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b="HcezXZny"
X-Original-To: devicetree@vger.kernel.org
Received: from pv50p00im-ztdg10012001.me.com (pv50p00im-ztdg10012001.me.com [17.58.6.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D537197A9F
	for <devicetree@vger.kernel.org>; Sat, 11 Jan 2025 12:52:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=17.58.6.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736599971; cv=none; b=Vmdc2TDdItW6QKB2XrA6BtA1Sr4JuYrwqHE7t11r0reA9jqMBT5Zg4hcmmT34OCUqXKT10FM4mY3Amwt8L2fz4wSTHsVWfkgZCQu93HDjtKB8Xx0+nx89oR3PPZtuSr3+wr3tC410sWyDLult4WaR6K2C+vJ8Q6BN+YPZA15kdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736599971; c=relaxed/simple;
	bh=CG7wOT9feGtbJytF5bO/h6edaWj/RbG31qKSWxqnBAg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=X80qAIiWXej7cZKVtMvr0sRpW2iixDL8FVda9BqHCFYpjn03biBvDc3sTaJloKUoEPUa0bFfy48qK7Y/t3rNOOjEQQQP+S3ZlTsyVLKtnyqSdHdejSN81rDBP6sQ3KaeN20PhfVd8dKDRru9L8fVWaWBFsXtilxRl3RA15eSJYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com; spf=pass smtp.mailfrom=icloud.com; dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b=HcezXZny; arc=none smtp.client-ip=17.58.6.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icloud.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1736599970;
	bh=LMpX2Ad36CGz6ptWggqRWYsj20HCMu4L/jmLJQ3uV/c=;
	h=Message-ID:Date:MIME-Version:Subject:To:From:Content-Type:
	 x-icloud-hme;
	b=HcezXZnyCj6xuHh9YxczAVkqexdlWdfsNC07F6VvBXOBQfaVQWvFzDH1gqTwGzBAz
	 cDG1RZ763WSdotdBf9aZhlq/eo+g6ieBKcy1TLbrfucnIipmb1eV3Crk4b3p22kEv7
	 lKX9JRUhgI57+zRVXo6ghNt+Y/PdNiJWWP0OZIdHl3ZhuZSEHlnZjSd6BlNecv4stB
	 vsIKEbIZre0JKjX4nN/Z3AePGW2tjFVPSBFTJXAGr8AhphlPx5fj0ZYUqKqU+Nt8Hj
	 Z3DU26yzGuHi5tD8vSzHxFZV+YnpkD9k37kvOZsG5vhAD0eEIF9QAaFQKf9cPzw7Bl
	 cbH91tRFC8XoQ==
Received: from [192.168.1.26] (pv50p00im-dlb-asmtp-mailmevip.me.com [17.56.9.10])
	by pv50p00im-ztdg10012001.me.com (Postfix) with ESMTPSA id 30784A0366;
	Sat, 11 Jan 2025 12:52:43 +0000 (UTC)
Message-ID: <7ac7b17a-0cfa-44a9-bfe7-35792609e248@icloud.com>
Date: Sat, 11 Jan 2025 20:52:39 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 06/14] of: property: Avoiding using uninitialized
 variable @imaplen in parse_interrupt_map()
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>,
 Maxime Ripard <mripard@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Grant Likely <grant.likely@secretlab.ca>, Marc Zyngier <maz@kernel.org>,
 Andreas Herrmann <andreas.herrmann@calxeda.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Mike Rapoport <rppt@kernel.org>,
 Oreoluwa Babatunde <quic_obabatun@quicinc.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Zijun Hu <quic_zijuhu@quicinc.com>
References: <20250109-of_core_fix-v4-0-db8a72415b8c@quicinc.com>
 <20250109-of_core_fix-v4-6-db8a72415b8c@quicinc.com>
 <20250110202649.GA3227291-robh@kernel.org>
 <dc7328d2-502c-4d10-af8f-f3ae02f636b8@icloud.com>
 <jmwcuelvywejhgy3mjo4y4odewirotlagmlahevsh2kicrakey@qvdajicxn7tc>
Content-Language: en-US
From: Zijun Hu <zijun_hu@icloud.com>
In-Reply-To: <jmwcuelvywejhgy3mjo4y4odewirotlagmlahevsh2kicrakey@qvdajicxn7tc>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: lc2EQkYlwLtMiKbKtOsuzw2TRLEqvi4i
X-Proofpoint-ORIG-GUID: lc2EQkYlwLtMiKbKtOsuzw2TRLEqvi4i
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-11_05,2025-01-10_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 adultscore=0 phishscore=0
 bulkscore=0 malwarescore=0 mlxlogscore=999 mlxscore=0 clxscore=1015
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2501110111

On 2025/1/11 17:01, Krzysztof Kozlowski wrote:
> On Sat, Jan 11, 2025 at 06:34:21AM +0800, Zijun Hu wrote:
>> On 2025/1/11 04:26, Rob Herring wrote:
>>> On Thu, Jan 09, 2025 at 09:26:57PM +0800, Zijun Hu wrote:
>>>> From: Zijun Hu <quic_zijuhu@quicinc.com>
>>>>
>>>> parse_interrupt_map() will use uninitialized variable @imaplen if fails
>>>> to get property 'interrupt-map'.
>>>>
>>>> Fix by using the variable after successfully getting the property.
>>>>
>>>> Fixes: e7985f43609c ("of: property: Fix fw_devlink handling of interrupt-map")
>>>> Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
>>>> ---
>>>>  drivers/of/property.c | 2 +-
>>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/of/property.c b/drivers/of/property.c
>>>> index dca1a3ebccae1093b2b11f51e8e692bca854d0e3..6245cbff3527d762c16e7f4b7b7b3d4f2e9ddbe6 100644
>>>> --- a/drivers/of/property.c
>>>> +++ b/drivers/of/property.c
>>>> @@ -1391,9 +1391,9 @@ static struct device_node *parse_interrupt_map(struct device_node *np,
>>>>  	addrcells = of_bus_n_addr_cells(np);
>>>>  
>>>>  	imap = of_get_property(np, "interrupt-map", &imaplen);
>>>> -	imaplen /= sizeof(*imap);
>>>>  	if (!imap)
>>>>  		return NULL;
>>>> +	imaplen /= sizeof(*imap);
>>>
>>> sizeof() is a compile time constant, there's not an actual dereference 
>>> here.
>>>
>>
>> the uninitialized variable is @imaplen, and not sizeof(*imap).
> 
> Correct. I think error is harmless, because whatever stack/random value
> of imaplen we use in 'imaplen / =sizeof', we immediately return.
> 
> Anyway, for code correctness and silencing whatever warnings there are
> (if there are you should actually paste them in commit msg):
> 

thank you Krzysztof Kozlowski for code review.

no warning messages since this issue is found by reading code.

> Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
> 
> Best regards,
> Krzysztof
> 



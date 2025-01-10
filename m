Return-Path: <devicetree+bounces-137604-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 34BE0A09E70
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 23:59:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4106016B148
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 22:59:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9459621C174;
	Fri, 10 Jan 2025 22:59:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b="BmQ9LTJ/"
X-Original-To: devicetree@vger.kernel.org
Received: from pv50p00im-ztdg10021101.me.com (pv50p00im-ztdg10021101.me.com [17.58.6.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38DDC21A43A
	for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 22:59:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=17.58.6.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736549973; cv=none; b=JHPoT6lKr9tGSXWtBfjBIOAQKymOEBomyPlsxjjxFMQCdlInrfIsnYCp0xH90DOlOSuWQONFny8U8fqyhLUY+ISNu37DqMwo9ZoTuX0qj5ORc3L5ZM082XIZ+UKCLAew1qbCyPEfbYXL7RyDGAgI4v17Pr3Pay9/E3dA6Oyzdj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736549973; c=relaxed/simple;
	bh=StNc9mD+Vpl7k8T3trTZk76Ux9oy4w3yGl5SesJdnDM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=C75YVqsuAxmJbr6LqzHkYTcR0nctw8Z+D0gDZy95K2cJ6r/Cug0iAUs4wr2J6xXuigAwXbRriO88iJIHfIIPMegF+ETHqz5g0r9tq+H0KofvbafJAcC+tVgUAXVbxhO4yjJvKad62tsU6Adlcd1cbyEErpJ7Jcs2T3ag/5YXPsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com; spf=pass smtp.mailfrom=icloud.com; dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b=BmQ9LTJ/; arc=none smtp.client-ip=17.58.6.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icloud.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1736549971;
	bh=mhgYIBsjrOA3QeuXZRObJ8KhZBlIYA5ncUYcMO+fA1A=;
	h=Message-ID:Date:MIME-Version:Subject:To:From:Content-Type:
	 x-icloud-hme;
	b=BmQ9LTJ/TvZOGsOtS3Cx2F6Lggrc1z7ie/tc069deg3c11R5yQLpiQXwauOhqVHoM
	 zOKgZ1RziOzh0OxLEalzEYjGpb66otVJe7u9jmhrNSFXRLmcm+k4qVjP7XA5KaXI5j
	 mXMRChp8KNQpHy67POXUWi/i/97CgFrCDTFnnkgZjPgvJ/CbTBzIFKE1Hftm4hjwyX
	 O+uyfQgmF//rCpo5n+77kG1Ll/44YDPD5G8jKW1pEnFHAnq5fNa2kiTvRc9TMgutKn
	 IRAd+ucEr+kBNNsGDpuj+8/l09jd5sNic8rvl/lLTL4ZUjhUcCjH1UdTGsx56qohC3
	 hhgVgQx8yFOHg==
Received: from [192.168.1.25] (pv50p00im-dlb-asmtp-mailmevip.me.com [17.56.9.10])
	by pv50p00im-ztdg10021101.me.com (Postfix) with ESMTPSA id 660CED00304;
	Fri, 10 Jan 2025 22:59:26 +0000 (UTC)
Message-ID: <cce3520f-389c-44f9-9c55-9b925bfc6f91@icloud.com>
Date: Sat, 11 Jan 2025 06:59:22 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 03/14] of: Make of_property_present() applicable to all
 kinds of property
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
 <20250109-of_core_fix-v4-3-db8a72415b8c@quicinc.com>
 <20250110174505.GA3220565-robh@kernel.org>
Content-Language: en-US
From: Zijun Hu <zijun_hu@icloud.com>
In-Reply-To: <20250110174505.GA3220565-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: VbO2OTrldIx8kTz6Cg-8AhUuykWYXUPa
X-Proofpoint-GUID: VbO2OTrldIx8kTz6Cg-8AhUuykWYXUPa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-10_10,2025-01-10_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 mlxscore=0 malwarescore=0
 bulkscore=0 spamscore=0 suspectscore=0 mlxlogscore=552 adultscore=0
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2501100177

On 2025/1/11 01:45, Rob Herring wrote:
> On Thu, Jan 09, 2025 at 09:26:54PM +0800, Zijun Hu wrote:
>> From: Zijun Hu <quic_zijuhu@quicinc.com>
>>
>> API of_property_present() invokes of_property_read_bool() to check if
>> a property is present or not, and that has 2 shortcomings shown below:
>>
>> - That narrows down property scope applicable to of_property_present()
>>   from all kinds of property to only bool type.
>>
>> - That is less logical since it says a property's presence is decided by
>>   its bool property value.
>>
>> Fix by making of_property_read_bool() invoke of_property_present().
> 
> I already indicated I wasn't interested in taking this until we have 
> reason to split the behavior. I've sent out a series on that now[1].
> 

the patch you indicate is patch [4/14] as below, not this patch [3/14]
https://lore.kernel.org/all/CAL_JsqJvh5pddoVEgaKQvGth0ncgtC9AAGxMEiK__NiZKrjmxA@mail.gmail.com/

the actual change of this patch is only to swap function name between
of_property_present() and of_property_read_bool() even if it seems this
patch has many changed lines.

okay, let me drop this patch in v5. (^^)

> Rob
> 
> [1] https://lore.kernel.org/all/20250109-dt-type-warnings-v1-0-0150e32e716c@kernel.org/



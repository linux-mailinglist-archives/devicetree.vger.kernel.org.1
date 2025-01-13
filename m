Return-Path: <devicetree+bounces-138119-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0565CA0BB26
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 16:07:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 94EAE16A7F7
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 15:05:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10FC02297E2;
	Mon, 13 Jan 2025 15:00:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b="0lPgoZQG"
X-Original-To: devicetree@vger.kernel.org
Received: from pv50p00im-ztdg10021201.me.com (pv50p00im-ztdg10021201.me.com [17.58.6.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 922F22297E9
	for <devicetree@vger.kernel.org>; Mon, 13 Jan 2025 15:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=17.58.6.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736780437; cv=none; b=HdyFiw0KmxzJLmHC5jNyNza+GWYa6I1WzcG50sdKttawGSLTV5xbq5ZlD0/XVz5SdM1wRB5o34hhuBIdUtzZwhvKfu1oL8KsQzRQQ1S5ePIMvwbD7fRu3lPD7zdUzgJVontQ1FSOLq0qGQTQPUA/1uuZ6+xo6VwtsqLnUeGnC/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736780437; c=relaxed/simple;
	bh=zbCGV0ZY5gnQrCPMVzqnzUW2ncuu4OkSscuH5N8+3Hw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iRRpeGy/sZ6NojL1SsqROCTS0rKI9SMpH2MM1N4EpB06sf9MtAMSE3w8YMIl5anZfiDQa+qlJ8dMs4vsF5cGoc3RxP7VHraimksPI3hEqXelacvLHfWFMQV2dT8Bdb/KebmW1D6ZmdTDMhTTYfAY7LHrPppDK2fjIv9pdI3vPlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com; spf=pass smtp.mailfrom=icloud.com; dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b=0lPgoZQG; arc=none smtp.client-ip=17.58.6.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icloud.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1736780435;
	bh=zDJKm3+aU7EvooFfjlknm3+Drf1cEzzZPUD2odgoYms=;
	h=Message-ID:Date:MIME-Version:Subject:To:From:Content-Type:
	 x-icloud-hme;
	b=0lPgoZQG0rVxRzW5bwBRnlKi94rpkCEC1N93vixhgOoQJvml+TPNDHmNfCsi01mY0
	 X7DTVN/rx71ZzciDzzT00Tvptp/cYrX62bUW/Q4CJ5Y4dVH0Ao+PgCeGCKzxXU1vOn
	 YM84LoQxpClX6A+xwawKC17C1kKVRZMo4uJSXLwvowRTEgKDNJNRF7ddFrLZRQlrqK
	 oLzG5Kt7UoW36HdvrycCMYOUJzn8iazTfELQEPm2NrYfUoEAReA0505y6eFK4dW2SM
	 C7OASy3m0lZcQXsnsTMqQMEVy/RhRJpiu5hkQvVg4L7mUhJ8qOLdI3kHeCxkMYaCmM
	 YSrhC+OZH6gIg==
Received: from [192.168.1.26] (pv50p00im-dlb-asmtp-mailmevip.me.com [17.56.9.10])
	by pv50p00im-ztdg10021201.me.com (Postfix) with ESMTPSA id 5832E3118DCB;
	Mon, 13 Jan 2025 15:00:29 +0000 (UTC)
Message-ID: <954725b5-5d53-4bd0-9a06-61ac1aa35dfe@icloud.com>
Date: Mon, 13 Jan 2025 23:00:12 +0800
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
X-Proofpoint-GUID: D3KVc0ABjTb7T14W7iw-bqG0U4IX_mox
X-Proofpoint-ORIG-GUID: D3KVc0ABjTb7T14W7iw-bqG0U4IX_mox
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-13_05,2025-01-13_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 adultscore=0 spamscore=0 mlxlogscore=939
 mlxscore=0 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2501130125

On 2025/1/11 04:41, Rob Herring wrote:
>> From: Zijun Hu <quic_zijuhu@quicinc.com>
>>
>> __of_add_property_sysfs() hard codes string "security-" length as 9, but
>> that is not obvious for readers.
>>
>> Improve its readability by using strlen().
> Does the compiler optimize the strlen call away? Maybe, maybe not. If 
> not, that's N calls to strlen() where N is the number of properties in 
> your DT. That's in the 1000s easily.
> 
> Do you really want to go test enough compiler versions we support to 
> feel confident this is optimized away. I don't.

i understand your concern about performance.

what about below solution ?

 int __of_add_property_sysfs(struct device_node *np, struct property *pp)
 {
+#define SECURITY_PREFIX "security-"
        int rc;

        /* Important: Don't leak passwords */
-       bool secure = strncmp(pp->name, "security-", 9) == 0;
+       bool secure = strncmp(pp->name, SECURITY_PREFIX,
sizeof(SECURITY_PREFIX) - 1) == 0;

        if (!IS_ENABLED(CONFIG_SYSFS))
                return 0;





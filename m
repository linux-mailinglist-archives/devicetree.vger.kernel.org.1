Return-Path: <devicetree+bounces-141471-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C0F2A20DB1
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 16:54:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A72E91653FA
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 15:54:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D5331D6DBC;
	Tue, 28 Jan 2025 15:54:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="hzLrmj/i"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com [210.118.77.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F291D61B9
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 15:54:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.118.77.11
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738079686; cv=none; b=CUTT4jbuygXHAUbmtM0H+ppBB7TcqScoa0wxkBoy0Q0VpFbi0a8u5bp+aztE2kvzB65vsE3f7bHSFGXRKrvk3dkhhIIhjq0GxZYi13V5Uz7NA7HBsE8r6Q6Eh26raNvmwWoCCjuj0ZZ8frSyOkPtn8hpprrM5e2CROxYLP5D0uY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738079686; c=relaxed/simple;
	bh=1xXmo7fSzX5xJn4I3NvhjoFCB5Vr1PhhkgBVFu2Ofk8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:From:In-Reply-To:
	 Content-Type:References; b=gb7Hz3Gx8f8ehh7V3Demd4q6tvi8WonULiBrINZmEeed7fgXK0j/BKCL9KUoERnXlfTB9/N6rlzap1Y0swKyr838egmo0CqcIbeCIfT2wqU5b2dozlJoVL2i64lszJ4/nUimWl+2fyAkDry1lOlUHCnI8buTaDweoFpiuorNxPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=hzLrmj/i; arc=none smtp.client-ip=210.118.77.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
	by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id 20250128155442euoutp01850ef25f8501729f32879410b672dcc9~e5kMsC7gB2944929449euoutp01N
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 15:54:42 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com 20250128155442euoutp01850ef25f8501729f32879410b672dcc9~e5kMsC7gB2944929449euoutp01N
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1738079682;
	bh=mvpuymEbp4aI2batWLH2Tq0iHDbwofquNtT7dusR37Q=;
	h=Date:Subject:To:Cc:From:In-Reply-To:References:From;
	b=hzLrmj/iJq2mcM3vKYvBFrStcJGeg30tr3Sw+/GjcUdsvFCPkCvbAde0WQ1nE/CIw
	 nj1Y+ekjteKU0D5n23WtXCJYO1TB1JuVw/bSPDfuDqdxpRBUdCJWHBMZfnnRcTPYpX
	 DKQyGsgeRVWdGmlZoSrw5WVl32Za/aZ5wGhkas4A=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
	eucas1p2.samsung.com (KnoxPortal) with ESMTP id
	20250128155441eucas1p2b185981c1709cfbf2834aec9d3d6fe06~e5kMHkqd50179801798eucas1p2b;
	Tue, 28 Jan 2025 15:54:41 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
	eusmges3new.samsung.com (EUCPMTA) with SMTP id 34.4D.20397.1CDF8976; Tue, 28
	Jan 2025 15:54:41 +0000 (GMT)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
	eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
	20250128155440eucas1p2b5044db92977d2cfbad1b5346634c960~e5kLWjpio3183431834eucas1p2z;
	Tue, 28 Jan 2025 15:54:40 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
	eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
	20250128155440eusmtrp1c37431ff6e99842ca2d82978659286f0~e5kLTSVGl2660026600eusmtrp1e;
	Tue, 28 Jan 2025 15:54:40 +0000 (GMT)
X-AuditID: cbfec7f5-e59c770000004fad-bf-6798fdc14932
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
	eusmgms1.samsung.com (EUCPMTA) with SMTP id 5B.34.19920.0CDF8976; Tue, 28
	Jan 2025 15:54:40 +0000 (GMT)
Received: from [192.168.1.44] (unknown [106.210.136.40]) by
	eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20250128155439eusmtip24583f31f0967761cc25db731eb189555~e5kJ_R0Py0461804618eusmtip2D;
	Tue, 28 Jan 2025 15:54:39 +0000 (GMT)
Message-ID: <0324973c-2180-4077-a000-b7b6d895b7aa@samsung.com>
Date: Tue, 28 Jan 2025 16:54:39 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC v3 04/18] firmware: thead: Add AON firmware protocol
 driver
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, drew@pdp7.com, guoren@kernel.org,
	wefu@redhat.com, jassisinghbrar@gmail.com, paul.walmsley@sifive.com,
	palmer@dabbelt.com, aou@eecs.berkeley.edu, frank.binns@imgtec.com,
	matt.coster@imgtec.com, maarten.lankhorst@linux.intel.com,
	mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch,
	ulf.hansson@linaro.org, jszhang@kernel.org, p.zabel@pengutronix.de,
	m.szyprowski@samsung.com, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org, dri-devel@lists.freedesktop.org,
	linux-pm@vger.kernel.org
Content-Language: en-US
From: Michal Wilczynski <m.wilczynski@samsung.com>
In-Reply-To: <20250121-small-ruby-seahorse-7475d0@krzk-bin>
Content-Transfer-Encoding: 7bit
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sf1CTdRzH+z7Ps+cZy8njsNtX7NjdPLqgRBTKb2d5mVjPWWdyXuXVmS15
	mpxj4OZCxbsMkJCNlPHTQaBAQsREkPEraMmPDaUbDGQQbYB3yoEHLAIykR8xHir+e70/vz+f
	+/BxkZn05UcqT7EqpUwhJQVEjeWJbevthRx58KUfA1B7XyGGTE8NFCpvsmGooNXGQ4Pd1Ri6
	N+sm0Y2HXRQabfqaQI7S7yiUYKkg0ZhhkESdnTcpNKUb5KGehjwSTae2AlQznUgiY6uLQtem
	TAQqrmsAKOnidR6y392HXIPtBBrr0eEoyeCNlhrrKLToqCRQ7qSZQtXjaTxkNX6EEs0ZxJt+
	jLv/AsWMj40RTEvyDMU0/XWVYOoNLorR1f8KmKqyiyTjdDSSTP6dcGZIa8WYW8VfMYlGC8Zc
	Wghm3D/3ksy31WWA6U7oow6KPha8HsEqIr9kVdt2fyY4buq1YDHpXqf77ut450ELlQL4fEiH
	widDZAoQ8EV0KYDzjqZVMQNgzy9Ly8JrWUwDqM17zcOeBLvrFsEFlQDYOzLJ48QEgPoB+0pZ
	Ib0baud3eJCg/eFS105PrpDeAO9ceUB4+DlaAocGcigP+9DvwxvaXp6HN9IBsG/h8UpJnG7k
	wayMmysOnBbDgQcFmIdJegccLilYsXvRu2Bf/gjFxUhg7UQe7kmGtF0Ac1tyMW7qMJjkblxl
	H/jIWk1x/DzsSNcRHEfDYdOfOMfnYL3Ousq7oNM2R3qWwZenq2jYxpn3wEr9OMldcT3sn9jA
	jbAe6muycc4shMlJIi76BZipS/2vqa20BrsMpIY1VzGsWdKwZhnD/32vAqIMiFmNOkrOqkOU
	bGyQWhal1ijlQceio6rA8o93LFpn60Dpo6mgZoDxQTOAfFy6UXjEliMXCSNkZ86yquijKo2C
	VTeDzXxCKhYWmi/IRbRcdoo9wbIxrOpfL8b38j2PbfEWfNK256TfmXcdMbM98t9HjYEuS3lk
	78MTc+7sdTaqc9EYG5c1uL9SKX3r73lJXtfo4cRQ/NBRzFEoSgj2TW3L2bfuWql3yMvfaw5u
	3Vu499mCCkBGfBpyRJLf7RW9v31O+7YiITvS2JKMJDOvDDc4Sg5bixRtlfb7tb4dJ//I6lbf
	fc9RHl4vMWjiin9yviT+5rLGvGnT5pkDw4FX0nSvzh5yxsUFtM7FX3+ceftpf9W5+JAAnr8j
	/pkfPnB9oTFkyo/FHIi9N/7h9sqg0aKiF53+TmW96Z3CsPRwPO3s8OfN/rW/9e8s8hMpJlPM
	pyNDfYyzGWEjC280h28JE5NavV5KqI/LtgfiKrXsH/GZRhRSBAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrMKsWRmVeSWpSXmKPExsVy+t/xe7oH/s5IN/g2X9fixPVFTBZbf89i
	t1iz9xyTxfwj51gt7l3awmRx5et7Not1Ty+wW7zY28hicW3FXHaL5mPr2SxezrrHZnH+/AZ2
	i48991gtLu+aw2bxufcIo8W2zy1sFmuP3GW3WPhxK4vFkh27GC3aOpexWlw85Wpx994JFouX
	l3uYLdpm8Vv837OD3eLftY0sFrPf7We32PJmIqvF8bXhFi37p7A4yHm8v9HK7vHm5UsWj8Md
	X9g99n5bwOKxc9Zddo+enWcYPTat6mTzuHNtD5vHvJOBHve7jzN5bF5S79Gy9hiTR/9fA4/3
	+66yefRtWcXocan5OnuAUJSeTVF+aUmqQkZ+cYmtUrShhZGeoaWFnpGJpZ6hsXmslZGpkr6d
	TUpqTmZZapG+XYJextarx5gKJnNWXH/Yw9rAeJi9i5GTQ0LAROLi3c0sXYxcHEICSxklOh8v
	ZIJIyEhc637JAmELS/y51sUGUfSaUWLf7WVADgcHr4CdRPcfIxCTRUBV4v8Fc5ByXgFBiZMz
	n4C1igrIS9y/NQNsl7CAr8SSa/vBxosIaEpc//udFWQks8AeVonDmz9Dzf/FKPFo0TmwDmYB
	cYlbT+aDdbAJGEk8WD6fFcTmFLCWuD7vGTvIYmYBdYn184QgyuUltr+dwzyBUWgWkjtmIZk0
	C6FjFpKOBYwsqxhFUkuLc9Nziw31ihNzi0vz0vWS83M3MQJT17ZjPzfvYJz36qPeIUYmDsZD
	jBIczEoivLHnZqQL8aYkVlalFuXHF5XmpBYfYjQFBsVEZinR5Hxg8swriTc0MzA1NDGzNDC1
	NDNWEud1u3w+TUggPbEkNTs1tSC1CKaPiYNTqoEpz/b/g1P6V8UuPtqc0KwQ9r8hmI3JbKpk
	n9mz3xIV6a3ZjzZuOaJwWKSgsrzkdfm/kwd339mWM7/OMJff5fZn/tq/Yfp8P9Lj9iuYbkrJ
	/hKo1nbILIxf+atrS/2ZXSz+26eGiEZY/FbadOP1artjTD0aM5oZEx7PLOxQ01RoWy203nN2
	gJzZl/cy25ku2c3rVqlpWPZ1Pcf+A7n9ktMzGC93ivCl9J5Qs6oW7PK0vCd7nNM0K4DVeLlX
	qKKT9H8+rf/BzcyVy6pXWDG9yZghq1u5VGf5nY9duWWJK/pm8qarsttXtUobWc+M117zO8C7
	6Myegj2a6eEd7S/ENh89v6Zk78rCfXcWLpK3UWIpzkg01GIuKk4EALc2jiLmAwAA
X-CMS-MailID: 20250128155440eucas1p2b5044db92977d2cfbad1b5346634c960
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-RootMTR: 20250120172124eucas1p233b3f6da39e7064db62b02a66bc1ac29
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20250120172124eucas1p233b3f6da39e7064db62b02a66bc1ac29
References: <20250120172111.3492708-1-m.wilczynski@samsung.com>
	<CGME20250120172124eucas1p233b3f6da39e7064db62b02a66bc1ac29@eucas1p2.samsung.com>
	<20250120172111.3492708-5-m.wilczynski@samsung.com>
	<20250121-small-ruby-seahorse-7475d0@krzk-bin>



On 1/21/25 10:56, Krzysztof Kozlowski wrote:

>> diff --git a/include/linux/firmware/thead/thead,th1520-aon.h b/include/linux/firmware/thead/thead,th1520-aon.h
>> new file mode 100644
>> index 000000000000..3daa17c01d17
>> --- /dev/null
>> +++ b/include/linux/firmware/thead/thead,th1520-aon.h
>> @@ -0,0 +1,186 @@
>> +/* SPDX-License-Identifier: GPL-2.0 */
>> +/*
>> + * Copyright (C) 2021 Alibaba Group Holding Limited.
>> + */
>> +
>> +#ifndef _THEAD_AON_H
>> +#define _THEAD_AON_H
>> +
>> +#include <linux/device.h>
>> +#include <linux/types.h>
>> +
>> +#define AON_RPC_MSG_MAGIC (0xef)
>> +#define TH1520_AON_RPC_VERSION 2
>> +#define TH1520_AON_RPC_MSG_NUM 7
>> +
>> +extern struct th1520_aon_chan *aon_chan;
> 
> Drop all externs.

This is required so the code will compile as the
int th1520_aon_call_rpc(struct th1520_aon_chan *aon_chan, void *msg);
is non static and exposed in the same header.

I really would like to keep th1520_aon_call_rpc in this header, as it
could be useful for other drivers to construct their own RPC calls to
reboot or shutdown the system e.g watchdog.

> 
> 
> Best regards,
> Krzysztof
> 
> 


Return-Path: <devicetree+bounces-200173-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DADA5B1396C
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 13:02:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4144F3BBC11
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 11:01:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32C5B22ACEF;
	Mon, 28 Jul 2025 11:02:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="frPYx53x"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93ED720E005
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 11:02:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753700535; cv=none; b=iFdRwN+UYDIG5DOgM3ZJeNAQtw8NsHHwv1OvT8xh0KXcta2uLFvSOpPnF1LIhk4Ac8rm3GLBcULczB3vC78TAtcBSLSUqX36vNllvXcCGtVoi52kG0WOSDAgRrpsmAqyHJHC23IQM/61XQwGtqP6lxeHYLKAEy8Gy3xQbmbnGfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753700535; c=relaxed/simple;
	bh=QTMRuquNtkVF7801cvDRB8V3A6EINsz1F+qf1uDU7N0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HcfBiE9jj+4mu/wHh7iwoQXEb64slf/fnD5GfuUfMDxiGIukDJ6lAHWNBsPr4cGWH6NEWk+ooVB5ps3lvOncsyxLzV/luAl+EcZyVO39OieopD0KUdMNTWizD0me05fqjnxIefii/X0srvkNCwm1fGBWGz08bKWx12uTUd661So=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=frPYx53x; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56SAlJXc012498
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 11:02:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tkOmERj2A/upJpeVadcUk/yz4v7zZx5u22OaAAkVIQ0=; b=frPYx53xW8xjyAwY
	iu3awnkfSND/Krjea0qeDHUldMRhw9jEwAazzOcP4RE6Ovbw45RrY6VDy/EdHhOU
	M09zEmmP+Xm3EjpePYMbRGqFtwM+K0SPQHot7TqHA6gcPDvb+jIOO5ue1fovYMom
	+XXbJ0W/njAJmmwTorqKzmtnVjYIJ+ZkNxItWA/Jx+MuOyuthG7OqvRXqhzZd63M
	RCAb+DFFF0g7oLWgAd+a3IaL2UmhvJztSVvOqkyQiCXmzM6WTJQkm/MrwAupvnNX
	H6Z0ZFbkMm6MeLsg1bvI1g3tif6JSivamMaJFP43mbLnOcSFyoHxJgJvDAdu00zQ
	0EveqQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484qd9va0t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 11:02:12 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7e34ba64a9fso7032785a.1
        for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 04:02:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753700531; x=1754305331;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tkOmERj2A/upJpeVadcUk/yz4v7zZx5u22OaAAkVIQ0=;
        b=VuZtFNHCdAhzauQzCJMQvuI0iws/VeGbdt9iEXeN0AsmoPbFIaDje0Ku1nCBPJW97d
         nAtOJ8DkjXutyoicWHcPbbdbRuOqROrStKYyERbsOkJjs9kjU4GiIIQKu9eHc34lfzeQ
         xv0dk7g+INvU+p6mjWIzP9CQP0+uXsaS6+cIoFP4CvTmHxcGxXJrvIJpXa/wEohos6BO
         e92n/desm1Wk/VuOFKdIWE+uK5R8sXlVK7hEWbJygF4X1iNSDNbPIbYg3BAn28NtaexP
         yUu2rXm0cmkX+6MlXqmgC6rzIvgcQoVfHy2Z6UeN1HgjlsvZ/92TRfoIL7KdmlaUqb1o
         Imsw==
X-Forwarded-Encrypted: i=1; AJvYcCWH24D1WSs5mvBC9LQQRDQn7nUVk6pCaIstU+TD6OrtdBgh0A/s6uvpmiMWgilszC6sJ3JZhZpnHYk+@vger.kernel.org
X-Gm-Message-State: AOJu0YyNF6+JQn+1DNgX2f8hsU+HtDkJY+jfjvlnhyLzmJH4WGwrN9z/
	oemhiuguFqaUFtIbWuvTU7sLqWyIQ1ET3TEyMzdY2d+Tt34gxCP0s/GWweb67W4fwKvsUZEzCKU
	dXSIMdDx4CAhRhAaPKEvzmKAOwPNXYY8qNtfqaBlnDvmPsS1LWCEIF+Jae7Fpzsi9
X-Gm-Gg: ASbGncunQh557rXa2YUdw1KcjdPn5XBZHWhhwCswTDvRCuAZEYzTSOHcPwcyobGn5PW
	ropVef7/n6xTb//wM0MhtiP7atyyyDUxXsl8ZpFPJixdsXr6eo2ziGpqbI5ZkB3tiqS2JVFF8h0
	1jEeMQdjVyLZmc+DRsB8UbLVvdc61oK1qU/AUvjICf5UZBzEQ4wr5BHhY4KXSgpOZgwahjOd6UC
	GCOw9N/iGlxbixavg49pa4iQptKyOnc5QANqsruh/4/xdfQm69nfRALszQD5zqt8D1ZQkRwgnhW
	ubs+VH8Fiu1y+LdCtodY6eCv7vVAkJRVt3zXEch1xfnbTBjCuaYhMi2mqQiLzXY4fcKrdsnj1P/
	GRSz72dMN0AUPV/LGIw==
X-Received: by 2002:a05:620a:a00b:b0:7e6:3c4f:6e44 with SMTP id af79cd13be357-7e63c4f6e8cmr594471385a.7.1753700531156;
        Mon, 28 Jul 2025 04:02:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFUIgDqBhwTM69wrpR7rB+q9FoIvwjatH6qNVoaRQs0g4MWIANkOEW6KBTVIFmEb1l0QgxQIg==
X-Received: by 2002:a05:620a:a00b:b0:7e6:3c4f:6e44 with SMTP id af79cd13be357-7e63c4f6e8cmr594467285a.7.1753700530518;
        Mon, 28 Jul 2025 04:02:10 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af635af3c15sm406076066b.127.2025.07.28.04.02.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Jul 2025 04:02:09 -0700 (PDT)
Message-ID: <dda5b873-4721-4734-89f4-a0d9aeb5bdab@oss.qualcomm.com>
Date: Mon, 28 Jul 2025 13:02:07 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] dt-bindings: clock: qcom: Add SM8750 GPU clocks
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250723-topic-8750_gpucc-v2-0-56c93b84c390@oss.qualcomm.com>
 <20250723-topic-8750_gpucc-v2-1-56c93b84c390@oss.qualcomm.com>
 <20250724-blazing-therapeutic-python-1e96ca@kuoka>
 <54b617c1-bd1b-4244-b75d-57eaaa2c083d@oss.qualcomm.com>
 <5b8d42d5-d034-4495-9d28-27478a606d62@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <5b8d42d5-d034-4495-9d28-27478a606d62@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 7Db5qxtY0Ul_6bDJ1hG3ZB35yzjMx1Jc
X-Authority-Analysis: v=2.4 cv=Pfv/hjhd c=1 sm=1 tr=0 ts=688758b4 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=N0DHfeS2NgGftJ_ZqQEA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: 7Db5qxtY0Ul_6bDJ1hG3ZB35yzjMx1Jc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI4MDA4MSBTYWx0ZWRfX43hIfZnw94ZY
 cCIB8b2OOkMwgRlkFs1cjXo5+0o7+rxHpuUw7HG0sDGrXNatL3kxsyTS6oi8NdKJgvil9Lv6sgq
 oRx25Jvpkq2RatyDaKIH+TTvaYmVQV1OcPNmXP9YCj1bYzCjkzC4Ju1D1sPTngdExwPWAqi2+0d
 aa8L9qCPjlsbvUzTYyTX3kJB1nQ1k7Gd0/LV8pOqDUoTjW+6xLQ7LgIBNfpUCcSRnLoamRgfAOW
 C2MP/yjGOKRWeQfRMfTh/UHOgFHx/43OMkla+FwU9UP1J/F8AAqMoXtPke7wenBJDQNOCUX0QeQ
 O6qOlGIIJ4wOqwWbejeuLI0wCPlei+YZO3o8tu4QcFyyFJ34xuYDlDH9zX7El0TO7jgouvBJ4bd
 wv+pPIH+b+UQsNsCsLaMg12JCXiMEnFsISAKbV0EqX3p5tlKJOUWf6sbBgm3Uk3aEjyT45Z+
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-28_03,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=999 clxscore=1015 adultscore=0 priorityscore=1501 mlxscore=0
 spamscore=0 suspectscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0
 impostorscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507280081

On 7/28/25 7:01 AM, Krzysztof Kozlowski wrote:
> On 25/07/2025 11:30, Konrad Dybcio wrote:
>>>>  
>>>> @@ -40,6 +42,9 @@ properties:
>>>>        - description: GPLL0 main branch source
>>>>        - description: GPLL0 div branch source
>>>>  
>>>> +  power-domains:
>>>> +    maxItems: 1
>>>
>>> This should be a different binding or you need to restrict other
>>> variants here.
>>
>> Actually looks like this is the same case as the recent videocc changes
>> (15 year old technical debt catching up to us..)
>>
>> I'll send a mass-fixup for this.
>>
>> Some platforms require 2 and some require 3 entries here. Do I have to
>> restrict them very specifically, or can I do:
>>
>> power-domains:
>>   description:
>>     Power domains required for the clock controller to operate
>>   minItems: 2
>>   items:
>>     - description: CX power domain
>>     - description: MX power domain
>>     - description: MXC power domain
>>
>> ?
> 
> This is correct and should be in top level, but you still need to
> restrict them per each variant (minItems: 3 or maxItems: 2).

So I was happy about how simple it was, until I realized we also need
to poke the VDD_GFX domain. It does however not necessarily exist on
all platforms and I don't want the binding to become a spaghetti of ifs..

CX & MX is present on all(?) platforms
GFX & MXC's (any combination of those, unfortunately) presence varies

Is there anything better I can do than creating a separate case for:

* CX_MX
* CX_MX_GFX
* CX_MX_MXC
* CX_MX_GFX_MXC

?

Konrad


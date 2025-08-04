Return-Path: <devicetree+bounces-201590-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 65BE4B19E19
	for <lists+devicetree@lfdr.de>; Mon,  4 Aug 2025 11:01:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 214B53AA179
	for <lists+devicetree@lfdr.de>; Mon,  4 Aug 2025 09:01:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66C2B242938;
	Mon,  4 Aug 2025 09:01:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ld5Z1aLI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC0AE1E520D
	for <devicetree@vger.kernel.org>; Mon,  4 Aug 2025 09:01:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754298101; cv=none; b=q2BDcR6y8AJX8AGvVc/v4BhKbeQOqGyahUgRfPfTEpY3CQhwo6UN6BDQq+Fyxz3jvfT30nDsNYEljHPAvZPFlgnv5HLaPfHsJ+LYkkmrNlM6u3YsfdLKdws7tV+GJb4snMyZeS80KuML3SFWJs5nwc00/xNVUruN+tlLAHNeNDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754298101; c=relaxed/simple;
	bh=8dT0hCsSa+pOFyIm2orcWN2fXAkvYbs0ddIV1PMTUy0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uHPu3Qvx/xOt9ogRGPCF6C6gBajqDguQOw9Zi8/lM/ywp807HqmucixzcZPFdZ705fiyD/B+z/TKevBPcPzSJnW6VZ0CMJ99uie46aj/ien2WUDAZtLm8yea8NLW1GC5ptC7JR6QgRg8uHMHJ+fZCZ7nZwwmTbJjpDQj4T+3eAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ld5Z1aLI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 573Na5QJ010359
	for <devicetree@vger.kernel.org>; Mon, 4 Aug 2025 09:01:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YSVwT60Y5j6SK3F/zYcMZ5PZCH+z92QqbFAGhTVhlu4=; b=ld5Z1aLIRZYNK8R7
	AkhNXfCzDQ4MLhIQFUZ5VRa+HNIveY4DVZavOyenNPwP+96h7bhgJ4r8RZ1yBrD6
	ORIOt7gGd0Crdve2Z83IlTbQhtt3eOgyt5B7pdi6q1MM5sW47PPwg+AfwAjIvrmA
	xfXJX4fBQ4Kj+HdXNf0GpHs/mbWeWZpCzaBZ5RX8ahHa/T58KhRr9XDZ7rogveux
	4eFaWEWR36qE0HevDHGvHocze+9f6O1bVDXWvaqMjESB4guNdyEStTtH8PJUxZiu
	KpEJTqNsJvoSfygcOyMG8iTowfVrYZVz5A7Q2GHashz/q7OzLyhRhcs9yn8P8C7y
	TEdJkA==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 489bek46tp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 04 Aug 2025 09:01:39 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-76bb73b63d2so3886608b3a.1
        for <devicetree@vger.kernel.org>; Mon, 04 Aug 2025 02:01:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754298098; x=1754902898;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YSVwT60Y5j6SK3F/zYcMZ5PZCH+z92QqbFAGhTVhlu4=;
        b=izO2RmwX9kW9DK4gT/qmy2crqiX44xtvsvOGD/5GCDdk7qQHcyAUe8LINBqGGvfWQt
         BwjZ1nOQu0WZ8dLjHivUGqXVlCuw2VbJbcQTuin3WHrNmvHBE+1Y++neA6h77ocXj2lY
         xYG9lIc6sfEAK47zzDw7oTtubgow9fCVMjDQZokWD5WSn6icCjcIJFrnhopMha5mEw8T
         2DBwQOaIyL9zWZV38s1pdFRQoE1X0dqb0lmr8PwjvOoJQuh5gmQgbhR3TsyPc71wAbWS
         1Tmkj98jUvqN5H0vAteXZ4bg2XlbvtOaQmZ512g7OSVADUsiekocfgTd/vFI2Y9FiH5l
         8v6g==
X-Forwarded-Encrypted: i=1; AJvYcCV+2tFeSdNI+woER51On1HufzEXNyP9hUrK4YNp0mvppqXDz4h3QDx3OUrypreZbNiiHhyAcpY8Ea68@vger.kernel.org
X-Gm-Message-State: AOJu0YzxLBk2BBcLV5IU9JvjIxSzcmE+/pMPW485wtla2550hTWZl0Qm
	AZKBLbrjaPvjInCrftdjVAjyxFjHkftBzNCIShjsVBNpup0oKd/k52Fku1UPe+gOyyy0hzzKR3A
	IBlF7vDr7zMwCg8J+t32QOdJZmFzkZUaEzODz4KfYFzLVScD6K6BPT2Uu4CsdoRs7
X-Gm-Gg: ASbGnct8ijd6vNL1gd9PboRuxvw2vfxHRTYXqUlJkSivBbZpuCyxVh6LLzZ7ZYlxBCN
	auQ0nClj0dMmh/0s5dEpUGHuaWOw0eWtpc1PNypenxz4aP+9f7tkBdc+w26eHFUwocmTPJGZ3kD
	saRIX1REBPdwV8qszuyqbs//DdjAKpwB8Wa+OaP4UXMoojYIEDFZYM21pog6UnyqkGQNqJ51Gic
	Y/bkQ4aWriA1LBZ269tiE3KMo+BzCwyTcAF5sqCPfGG5KHgakVIClE408WjyHf3OrDBR82WFYZ1
	zKyQfGjEHbZyHLDLqvgRwpmoRAueZyKEauJ3h7FsDJYrTc5tKrtiXw6oww+reqQeGuo=
X-Received: by 2002:a05:6a20:a10b:b0:240:116b:cc4e with SMTP id adf61e73a8af0-240116bdcfamr2552172637.5.1754298097818;
        Mon, 04 Aug 2025 02:01:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHMWc3XRarjZz0UicInQJgk7t7SP2zauTJ6j3s03rAStb/JNHrgMbiOAy2gd9heuPOjjuKTWg==
X-Received: by 2002:a05:6a20:a10b:b0:240:116b:cc4e with SMTP id adf61e73a8af0-240116bdcfamr2552105637.5.1754298097274;
        Mon, 04 Aug 2025 02:01:37 -0700 (PDT)
Received: from [10.218.30.152] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31f63da6141sm13929997a91.1.2025.08.04.02.01.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Aug 2025 02:01:36 -0700 (PDT)
Message-ID: <677e1143-e38a-4c73-a445-923c9df5fcce@oss.qualcomm.com>
Date: Mon, 4 Aug 2025 14:31:30 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/7] dt-bindings: clock: qcom: Document the Glymur TCSR
 Clock Controller
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: kernel@oss.qualcomm.com, Pankaj Patil <quic_pankpati@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Taniya Das <quic_tdas@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250729-glymur-gcc-tcsrcc-rpmhcc-v3-0-227cfe5c8ef4@oss.qualcomm.com>
 <20250729-glymur-gcc-tcsrcc-rpmhcc-v3-2-227cfe5c8ef4@oss.qualcomm.com>
 <20250730-mottled-myrtle-bull-3ae03c@kuoka>
 <9cb06263-2a61-4acd-a9cc-157abb832d62@oss.qualcomm.com>
 <48610dd9-16c0-48ec-9997-2de9e0f7b3b6@kernel.org>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <48610dd9-16c0-48ec-9997-2de9e0f7b3b6@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=M7tNKzws c=1 sm=1 tr=0 ts=689076f3 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=3e4NYzSl0HTm_xoazEIA:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA0MDA0OCBTYWx0ZWRfX4rAOA4iUOQD/
 nT0jFjr9pqky7iapVCE7bElLwrur3oaoenc2dvjOgQIc5O/qvm9W0BfIxxr6qKCick0Z+aG+pn4
 /FoEnVuG1NuLRQDBHAkIC3iuhM4An4f7F7tMMpuJGqmZaLaI7vBd1J17fchp3q37UCYCK4RS/e7
 0XaXjqh6mYP0/HFiV/o8DocGp3bgBlvPIUaZH6DwdICrQITXm33jLeF8q1Iu/bJe5QPRANHpf7s
 dwdLrf5LDbXiy5u2bjl0r6YPPV+GTD2roGR/HbOX5KHrAChRtRZa/Z9ZtCSCAzOWtuYeQjT9DwX
 AoSiLOT/RQuHiKEEqCw7OLNKvov4qf24nxfW8Z7abN+urYQlmig0kPJfg5ROqFwReQzWHqGyEIg
 LJIxUg15rvKtnlz+6i2rkchnHKGCiJ/L77gxQ29YzKCsDrXIIHyW6+LetUky0GhoC86/DWHb
X-Proofpoint-ORIG-GUID: jEzX4TPElBXr5Y95Nx6zQkJqnEIh6RRS
X-Proofpoint-GUID: jEzX4TPElBXr5Y95Nx6zQkJqnEIh6RRS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-04_04,2025-08-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 malwarescore=0
 clxscore=1015 mlxlogscore=999 mlxscore=0 bulkscore=0 spamscore=0
 suspectscore=0 phishscore=0 adultscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2508040048



On 8/1/2025 2:40 PM, Krzysztof Kozlowski wrote:
> On 01/08/2025 06:14, Taniya Das wrote:
>>
>>
>> On 7/30/2025 12:47 PM, Krzysztof Kozlowski wrote:
>>> On Tue, Jul 29, 2025 at 11:12:36AM +0530, Taniya Das wrote:
>>>> Add bindings documentation for the Glymur TCSR Clock Controller.
>>>
>>> Same question as for v1, what is Glymur?
>>
>> Glymur is the Qualcomm's next gen compute SoC.
> 
> Explain it in at least one commit msg, not in reply to me.
> 

Yes, I will add it in the next patch set.

>>
>>>
>>> Where is any DTS using this (or explanation of lack of DTS)?
>>>
>>
>> Krzysztof, the DTS will be posted separately once the driver and
>> bindings are reviewed.
> 
> Hm? That's not what I was told thus I ask. I am sure that above is not
> true, but if you insist and put it that way it is incorrect. You cannot
> send DTS because you wait with drivers to be reviewed. We want to see
> entire picture.
> 
> Best regards,
> Krzysztof

-- 
Thanks,
Taniya Das



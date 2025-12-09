Return-Path: <devicetree+bounces-245393-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DC4BBCB068A
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 16:33:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 89F9530E02CD
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 15:31:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AEDC24A047;
	Tue,  9 Dec 2025 15:31:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GRwKEgp+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="an7m/txg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EA912FFDE2
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 15:31:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765294276; cv=none; b=R99F73ry3b+vansqOXZECRdBD8bTUnqqii3iMekt+keoDOjVuak8byyPJosftChGspv+t1nXt5hFElOtgGp6jk027eUxnY0HLLOq4Zm6DkiB/oTrSWubGWQU4AzulsiMlo0Zkz7/pbDbga4wDOHgvmitb6l5BfSyZU63iDTWuRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765294276; c=relaxed/simple;
	bh=KCb30gx7f4oKZDZUU0e+gs3C4HrrmkkGV6npmE6kIAk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eo31teArqvBmtC3A93jCIatt7HMaWGNDaRd8h0heAjTRo8uqeomX1zk7/dAdYLPBuHiDMhdJEIi4cyT8vej4sMj8lS7uWR428WMhtpJMbrOIzF/zZ66loL5j+DwwNj4Puw9NBQiofIP2YQTkFzVlFr4sc2SBrUYAMXSw4AW4SfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GRwKEgp+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=an7m/txg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B9FUxnc3950796
	for <devicetree@vger.kernel.org>; Tue, 9 Dec 2025 15:31:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	thb0hjUV4NRW58vBjYa9I4NxttjPT7GRJDee8NVVxG4=; b=GRwKEgp+V0GKlm7O
	y7Ts4UQZFHj4YRxIVr35wnfy7nNEGyOphYc4Ac4W4/d/JR+O6AiceTJRwRH+sc9J
	JazRnhTYLwyg7wM29LKU6c03rSAfxXdb/7nNtKXp1dSO/zXw3TJIys0ONTODaCLd
	ZD6jtd6n9h8VQls4DQautq2yNiNYPcX43EH2PzOGU4NDUZT7VDoDdFgPt/osjIUQ
	swselhcdJ02SMtMiFIWztSsw5xERoqWGNxxLK1pTmhTbDTNqNuSxc4PGTPYlZfOO
	L7QbZi3ae8ALGrzLoY5q6VrUl3yPopuPZygxbksh7uDMvoBo0c+XqJe0a9dCsOSf
	Q1dkXg==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4axmt80byr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 15:31:13 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-34566e62f16so6857496a91.1
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 07:31:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765294272; x=1765899072; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=thb0hjUV4NRW58vBjYa9I4NxttjPT7GRJDee8NVVxG4=;
        b=an7m/txgU+iDhXkm/FdryJdYrolyJf/4cNMEFPZbYGHTOG3ZLsT3I9V91VZUa1BoK+
         wt8hbmVEubhLXjxNZavlytA6a5vfcIPjjVkXJQE1QIJ3ZvzHZhUOg9nrt89vW7iVWoBE
         11aRkBjdBSQ/Ps2qRa6Ca8swf44s+l/uOvQjsbI+PfcyD1xKHFHYUFTKU5xfRZhY+WWl
         ety9noz+tSj7gMUq6wN2rIBMY0+exPyQ/P2dIC82wdTxB9oXVSzJHMuXh3yWZQA63nlM
         1ZjDR5hFtVs414Tt9uizvdWnyT6X1xKG1MQXLrQTxrXgM+44JYfM128EKuOyfuBFPZQI
         SBng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765294272; x=1765899072;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=thb0hjUV4NRW58vBjYa9I4NxttjPT7GRJDee8NVVxG4=;
        b=ue1oMABprMnQagbZITCQos1qZXfZzn6pTqMFIglYUq0NeksD5sHbOPVq46yTo9znxs
         ewj9s4PtUoOValMUGb4SighRhdAZjAmu3hbMRVP15Gmh80mSI1LWWwqhtiy9R906Qmgw
         B29fvPf9mX4oIWBuUQvjOgF/1ZG5OI7OT30CUqvarL4LZHMmV/RoN1ne+XckappFOO1c
         H25cJdXFR96l9mU06ISA0G1xv/pqmHD6VFgMqHIIPs0v5vPcVoV1Mrz0io0HsWgx/ruM
         kJpJOGSR4ZzZW6tDqWoPHblfAa/ZiNVohG4WDBanzw8x+yxGLHBhcKHV0Yx3Sbczd2Gl
         BqWA==
X-Forwarded-Encrypted: i=1; AJvYcCWV8dsfzC4shx+RbVXYwM32qN9zpg7Wd25qL+4hdKkTnlAuAG9iuGhOpdRbnQxsD6T8v4ObwnixsBld@vger.kernel.org
X-Gm-Message-State: AOJu0YxwR0s0LaP18ZLm1R4Bsv9yCtu8/7Aqmy4OirV83h6uQX6nMSKV
	BznkNOuV0zQd9pwc5VNHzMJfBlfl0ZyUCYrqkahabbIiCuyc89P0YKCTmSe2P7IJztobWyiRyWT
	lXEpRy3bV18U581j1hZTlEEGu6MsDhB2txbdrnmB0lkMzjk/VOLNf1Q21puzwFUtT
X-Gm-Gg: ASbGncvQ6PnrTb/+hP73YGzVKSfiHyU40DPRcljpWaSA32dN3V6jRMc1VuO3v8YnM5b
	/7VziKwbaiZcSP5cjrRPYMFgNn5tz8p/2NAQHxAolUziLqr/amCk3hYwku+w2gkbj6TD47Ez9H7
	3wjgosAOtmidWG9KiAL1Dfc+w1O8mWTVVaC1gtauL1LQpv6r1s99IVp+xc8znweugsjCxJaCnVo
	pUvWkTrFwUvBVEdFdLSkNyJOfdL+1omOqWiNo6ZtRFTBnwC/kbGyjOwj7iwm1pliWzOw7z7V8Qs
	LzI8EJkpnKYnqyYP59CjQlagpwNFCy4sAtJMVRLXuis1TPjml/f6QkhpRU+HmRIMAaPbd1aUQ6O
	f4RY15sXGPyLc6zXTAPxtHLZlwqf7f7cD/Ybnfsh/DNmcGw==
X-Received: by 2002:a05:7022:4289:b0:11b:fe75:d03 with SMTP id a92af1059eb24-11e0315ee80mr8364232c88.8.1765294272442;
        Tue, 09 Dec 2025 07:31:12 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF9WxP/KWShg/hGEgDY14g8/pXhFx/huFNzQ7Xe9WB9pU56V2oDPS7bXrRuHGDh4G3Pps7B4Q==
X-Received: by 2002:a05:7022:4289:b0:11b:fe75:d03 with SMTP id a92af1059eb24-11e0315ee80mr8364208c88.8.1765294271684;
        Tue, 09 Dec 2025 07:31:11 -0800 (PST)
Received: from [192.168.1.3] ([122.177.247.113])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11df7552defsm72868773c88.2.2025.12.09.07.31.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Dec 2025 07:31:11 -0800 (PST)
Message-ID: <e41753b8-c4d4-4c4c-87d2-4475cc17f1f1@oss.qualcomm.com>
Date: Tue, 9 Dec 2025 21:01:02 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: hamoa-iot-evk: Add vbus regulator
 support for Type-A ports
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20251209041701.3245452-1-krishna.kurapati@oss.qualcomm.com>
 <6awlcjah2ajwzxzdvoch5e3vn2ztvxyjdbikffhp6efti3f4wt@swhugoqsmf6z>
 <34aabb90-c81c-43eb-ba95-024f97d91afb@oss.qualcomm.com>
 <j62ntbrmol7qjqcuey3har3d74gqt573ew67w7nrnnhv3pzrnj@hptvrfbeaobs>
Content-Language: en-US
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <j62ntbrmol7qjqcuey3har3d74gqt573ew67w7nrnnhv3pzrnj@hptvrfbeaobs>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=NvXcssdJ c=1 sm=1 tr=0 ts=693840c1 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=E0qm/x4VGr2IK/H1a0Uz4A==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=pGLkceISAAAA:8
 a=zC5czPtbmswiYTL7XGkA:9 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA5MDExNiBTYWx0ZWRfX1EZDJW5Jxe5+
 +vdov7H2X7PQ1QkKVJBHfQbCnb5KivOaqUXpnf/P8Stjlqyhdo5HhkVP5W0d8sRsxwzCXDc0njo
 U8T+kKKD28ePXX2nnIpAW7Bu2fktHc93ELmWKnmT+zgRPV9JzTsNnXY9sz1Jd7lWOLkgrlfxagB
 wYHxwYc8iGn6RG1Ph6Llw8FLOzAfwGXSiBnLecw1ttTA61JuU5loUgrdqS8Sl60h0d41s892hRK
 oJDOs2XYG47E/L2xtgsKLZ5VxCw+wrI04V1ATx4bBAcYVrY2FHZ5muX4oZPmKMTvT6hOe1H3JUD
 wutQA5kwIDkK8V0U/hCASg82D6go+m2Wrat4U6zn6JlrF5cAk3kyEIMp9WFDrL08eiPs58g5ztF
 byYIuIuRQ7N1nNhNu4hC+PLBrfFYOA==
X-Proofpoint-ORIG-GUID: lQUViz0pRswSVIGkP_MNWEd4ugBNpZhx
X-Proofpoint-GUID: lQUViz0pRswSVIGkP_MNWEd4ugBNpZhx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-09_04,2025-12-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 impostorscore=0 bulkscore=0 spamscore=0
 lowpriorityscore=0 adultscore=0 suspectscore=0 phishscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512090116



On 12/9/2025 8:49 PM, Dmitry Baryshkov wrote:
> On Tue, Dec 09, 2025 at 01:31:10PM +0530, Krishna Kurapati wrote:
>>
>>
>> On 12/9/2025 1:22 PM, Dmitry Baryshkov wrote:
>>> On Tue, Dec 09, 2025 at 09:47:01AM +0530, Krishna Kurapati wrote:
>>>> The Multiport controller on Hamoa EVK platform is connected to Two Type-A
>>>> ports. VBUS for each of these ports are provided by a TPS2559QWDRCTQ1
>>>> regulator, controlled from PMIC GPIOs.
>>>>
>>>> Add the necessary regulators and GPIO configuration to power these.
>>>
>>> Should this also include corresponding USB-A connector devices? See
>>> qcs6490-radxa-dragon-q6a.dts for the example of how to describe them.
>>>
>>
>> Hi Dmitry,
>>
>>   I see same discussion that came up when we were trying to upstream TypeA
>> connectors of SA8295:
>> 	
>> https://lore.kernel.org/all/CAA8EJppf+j6H8vPOrer1Oj6SuM=qHKXoBahtCaCr7an-cbpyOQ@mail.gmail.com/
>>
>> There is no entity (either phy or dwc3) as of today that can read the vbus
>> from connector-A node and use it. So keeping these regulators always on for
>> now.
> 
> There are two distinct questions:
> - one is how you describe the board and onboard devices / connectors
> - another one is how to make sure VBus is enabled.
> 
> I'd suggest having full description (with connectors, graph links
> between USB host and connector and vbus-supply properties) and then
> having the comment before regulator-always-on describing why it's on.
> 

Thanks for the review Dmitry. So, IIUC, the suggestion is to add the 
connector nodes for Type-A ports, add the vbus in the connector and mark 
the vbus regulator nodes as always ON.

W.r.t the graph nodes, we can't link the connector to any available node 
today. Can we leave the remote endpoints empty and unlinked to anything.

Regards,
Krishna,


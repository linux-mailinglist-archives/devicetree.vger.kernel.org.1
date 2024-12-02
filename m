Return-Path: <devicetree+bounces-126105-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 360229E0450
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 15:05:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EC16F281BA6
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 14:05:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CD05202F9E;
	Mon,  2 Dec 2024 14:04:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jIQhBeZ8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 853CF200120
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 14:04:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733148299; cv=none; b=JqvA9KX/Inibeok/GZ+zO1o/RvKfayWYnkZuSD9UKKEjbeng++jxC1K0vzAocysTVOVlp6E01u7S3vnWxo9CMYxP/RgoZHuIpwxc6e+P1ys83lCIdJHpTGN5qh7Hv1ZxHLwl8Wj99MSjVJyGyZPvymJdWcjwN2eL8AXOIv1fk8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733148299; c=relaxed/simple;
	bh=aCYEkOOpOjkMmGmDP1MwOlRPzT0/3YQQiUfyUisKajQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aLHgja0QtG9DVHxn1K4BtWxPVyfnQfsjnj45jO0MSzoPXUHf9erwPVbaNXXy4YdnZzuPgjp01TCSqbY19Y1osqdv0COH58p2DBLbsp/lOBHLRNurisGy/KfgrpKVACzjPBP/4nkUiU7SoXRWYUhUni1tVs/jcpUOC5Dl/H5G6LU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jIQhBeZ8; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B28Geim031478
	for <devicetree@vger.kernel.org>; Mon, 2 Dec 2024 14:04:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	obaOPszO5mGm/TOqEFLd2+ypX1a+TNEXvHr7XvUqJ7E=; b=jIQhBeZ8H2dDtMVf
	P7Kyqn6cy62AuXpsil62QSHvcfgIJ1S6nKJ6/tMk2uBDZyBq5Uy56+Tkfi6x05ne
	T5NEuTOKHslTq5ar6lKhsmzQKKs0G33w1DCW71BlTlZIbr4hzm0tvWmZOiPc1xOm
	E85bOxD8/ogLbbCykmzhPnvWzR6sGusHHNlAKeNHBzDoDDqNcY6JyGO/PTx6kkO2
	ZviRNau3d5wEDrb53Y4q7glL6pqMVUUIV9SM0cZl1TFt6p7yxSoq7hLDftOoYB9k
	xJt/HgRzlV3qFMXZ9zE0cc28lVQtZE1vEGSvigc8PDu0HLOopyKDzZF7iV6dJk7n
	Tgu/ug==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 437u36d1f7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 14:04:56 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4668a6d41a5so5756351cf.0
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 06:04:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733148295; x=1733753095;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=obaOPszO5mGm/TOqEFLd2+ypX1a+TNEXvHr7XvUqJ7E=;
        b=OR9HOx+RLqggOKVFgSonWrcYU4paM3EI3XOtZ2UeqlnQHVtkWN3N3kJHr6tFAYMJJj
         5AB9qSrsrj/0FlKlsv/9/yGvGHZKAgmVkWOhdpjpPoPXX0WEfqcfY1lG29mCesnjpI+L
         2djFV1BV16s4k9Z/PhGpRzI3NRlWku6ysNZmuykOvtvg+Z3LFxi2KchSpcD9DkiGSiHi
         BLtsx8KXvi2n0Kq9tj5ywzoGcbykNpKkMHHB0FAbYmISfWFQl2NnE+c5jdW9Prz61f0N
         5h454RHxp5Y48f4SJ8vYz6kmd99yJefLrCPffsLA7JFX/f8XJKFP07S4PjPETkVhA6O/
         drWQ==
X-Forwarded-Encrypted: i=1; AJvYcCWG7JzuW6oTUNWZLi2Yad41BfVsAABLcnmzSpM50uKgNP4FiBuaQHVpeqWjzh4fkfsiVIPIpxw9SR2M@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2kiZQ4aqiqeZqisA3srECKwJ/6smFfUpnGdI3f4rH+hA0W5Lh
	GXo1Qhlzhw2YsRl9nXLC39yU+GUmrb0J2u1uUOe7vyJItGVJnxPYC//8qUX/2Q7GjiYwTLpgaJu
	xIfs8dp6xnleLbi2PLRwLHSP1m8thmEStuCTkJYjPVNdIxZbINdDT79ZZC0Hm
X-Gm-Gg: ASbGncsPl2gu0wGmnSo/HFUhJoL3/o2nAU5hdFn7N0X24B8Izqn8YqY1zuMlpCJQVQ0
	fosXuz99mB6tfrQbFKjI64RPnWUhkSXuBc0ilsh8Hxpt8i+ZEf4weBDHjYdV48IqUJ75hVXfNPI
	2tqUb2JHA2Nc/jhsD/NjZ1krorYmfWrKcHDaL0+zDk2jf6wBZmU3VwOTHu34VvR2dDiHYmXnMmB
	MmPx1jpQqtNmbtopUVgBjIJkZlyVA4UPtAGLs/vrKQeBDMTG5QruwGId4F/lr9qly/QvzMzC0m0
	l+naZp9j6pHujUYvzo25HGS+a1nxd1Y=
X-Received: by 2002:a05:622a:5792:b0:461:1fc9:61a3 with SMTP id d75a77b69052e-466b35d760amr125683951cf.9.1733148295155;
        Mon, 02 Dec 2024 06:04:55 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHcZ81mFmkrUNeLqEFEbFVMmp5vJUXLKK5kw3UAW0/7jWrcoiWhxK7YAGq7iyqIpT1YBAn9qA==
X-Received: by 2002:a05:622a:5792:b0:461:1fc9:61a3 with SMTP id d75a77b69052e-466b35d760amr125683631cf.9.1733148294536;
        Mon, 02 Dec 2024 06:04:54 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa5998e6dadsm513906866b.132.2024.12.02.06.04.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Dec 2024 06:04:54 -0800 (PST)
Message-ID: <a7186553-d8f6-46d4-88da-d042a4a340e2@oss.qualcomm.com>
Date: Mon, 2 Dec 2024 15:04:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/4] dt-bindindgs: i2c: qcom,i2c-geni: Document shared
 flag
To: Mukesh Kumar Savaliya <quic_msavaliy@quicinc.com>,
        Krzysztof Kozlowski <krzk@kernel.org>, konrad.dybcio@linaro.org,
        andersson@kernel.org, andi.shyti@kernel.org,
        linux-arm-msm@vger.kernel.org, dmaengine@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
        conor+dt@kernel.org, agross@kernel.org, devicetree@vger.kernel.org,
        vkoul@kernel.org, linux@treblig.org, dan.carpenter@linaro.org,
        Frank.Li@nxp.com, konradybcio@kernel.org, bryan.odonoghue@linaro.org,
        krzk+dt@kernel.org, robh@kernel.org
Cc: quic_vdadhani@quicinc.com
References: <20241129144357.2008465-1-quic_msavaliy@quicinc.com>
 <20241129144357.2008465-2-quic_msavaliy@quicinc.com>
 <db428697-a9dc-46e1-abbe-73341306403f@kernel.org>
 <a8b1ccd2-c37b-4a6f-b592-caf1a53be02c@quicinc.com>
 <fc33c4ed-32e5-46cc-87d6-921f2e58b4ff@kernel.org>
 <75f2cc08-e3ab-41fb-aa94-22963c4ffd82@quicinc.com>
 <904ae8ea-d970-4b4b-a30a-cd1b65296a9b@kernel.org>
 <da2ba3df-eb47-4b55-a0c9-e038a3b9da30@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <da2ba3df-eb47-4b55-a0c9-e038a3b9da30@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 9Qv0iCdkzgFh6zGI6Hy10UiB5xbd2ah8
X-Proofpoint-ORIG-GUID: 9Qv0iCdkzgFh6zGI6Hy10UiB5xbd2ah8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 mlxscore=0
 clxscore=1015 bulkscore=0 adultscore=0 lowpriorityscore=0 impostorscore=0
 mlxlogscore=999 phishscore=0 suspectscore=0 spamscore=0 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2412020121

On 2.12.2024 1:55 PM, Mukesh Kumar Savaliya wrote:
> 
> 
> On 12/2/2024 4:34 PM, Krzysztof Kozlowski wrote:
>> On 02/12/2024 11:38, Mukesh Kumar Savaliya wrote:
>>>>
>>>> Come with one flag or enum, if needed, covering all your cases like this.
>>>>
>>> Let me explain, this feature is one of the additional software case
>>> adding on base protocol support. if we dont have more than one usecase
>>> or repurposing this feature, why do we need to add enums ? I see one
>>> flag gpi_mode but it's internal to driver not exposed to user or expose
>>> any usecase/feature.
>>>
>>> Below was our earlier context, just wanted to add for clarity.
>>> -- 
>>>   > Is sharing of IP blocks going to be also for other devices? If yes, then
>>>   > this should be one property for all Qualcomm devices. If not, then be
>>>   > sure that this is the case because I will bring it up if you come with
>>>   > one more solution for something else.
>>
>>
>> You keep repeating the same. You won't receive any other answer.
>>
> So far i was in context to SEs. I am not sure in qualcomm SOC all cores supporting this feature and if it at all it supports, it may have it's own mechanism then what is followed in SE IP. I was probably thinking on my owned IP core hence i was revolving around.
> 
> Hope this dt-binding i can conclude somewhere by seeking answer from other IP core owners within qualcomm.
>>>   >
>>> IP blocks like SE can be shared. Here we are talking about I2C sharing.
>>> In future it can be SPI sharing. But design wise it fits better to add
>>> flag per SE node. Same we shall be adding for SPI too in future.
>>
>>
>> How flag per SE node is relevant? I did not ask to move the property.
>>
>>>
>>> Please let me know your further suggestions.
>> We do not talk about I2C or SPI here only. We talk about entire SoC.
>> Since beginning. Find other patch proposals and align with rest of
>> Qualcomm developers so that you come with only one definition for this
>> feature/characteristic. Or do you want to say that I am free to NAK all
>> further properties duplicating this one?

I'm not sure a single property name+description can fit all possible
cases here. The hardware being "shared" can mean a number of different
things, with some blocks having hardware provisions for that, while
others may have totally none and rely on external mechanisms (e.g.
a shared memory buffer) to indicate whether an external entity
manages power to them.

Even here, I'm not particularly sure whether dt is the right place.
Maybe we could think about checking for clock_is_enabled()? That's
just an idea, as it may fall apart if CCF gets a .sync_state impl.

Konrad


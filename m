Return-Path: <devicetree+bounces-144723-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 55A75A2F170
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 16:24:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E3AC41605C1
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 15:24:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08F4E222565;
	Mon, 10 Feb 2025 15:24:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kVU6vey2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52EED222575
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 15:24:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739201044; cv=none; b=HcylQ8MHa1FExSE+SFUcE1G+Wr5Gnbd0w6CM3PCsqu1v+MyxtrOFh7ahbXVXR0GTadmjblZcQt+So9Pp2emx/51a+BzshPS6eTW4U8ZONDKOxNNM3wZh/xS9L3H5xRrUZHczDPN5ELNyU+DkL46/9y4v0OtW60b9iFT0zYPmdwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739201044; c=relaxed/simple;
	bh=i6Ee1ySBnMQnQ1leoAF4yPYS9Gao1pD480H6Qy5oYho=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=t26squHMaSMzdyHp6vYBG4uySlgPVv62O9uKgNcQzlYwHVvh8DX2ioFBZvj0NHub7WeamINd22qP+k89oQeGDRQ3zLzXa7Z2JAh74+3QW2AK86kkEa9cVgP4zRAeFW1knG24TGlQMxjmjy0vSBeEp5RQcamtyjjNIyEyYAQUp1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kVU6vey2; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51A9a3e3018208
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 15:24:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mWXJOIJtM8FQ3Dbeoev9P44UaLn9dvzZC/R+g/hayx4=; b=kVU6vey2DMWWUSMW
	7M7go10t3SbN73f+qWrn7bV39d423Rq/KU3GNdRbCwen/bn6N8MIbVo6SP5pTZ/r
	gCX/KU7dE3sFsfBuZsue3A2ATP9RF3zDgjDC7Kgt8kuLeXPjiBr/Je3C6S2LDRCu
	+6iS8RU1EkhCjA6ZlSIDMJrD0fK/bM/f8TlmR8wCbwuCSsEPN7lc/uU9gG0ij4eJ
	0qHy0Jvz56rnylGmMzCoIAboo35Tks4OyIM5nwGyZh6QmuvmK7b+fUDM6y/BpaQZ
	FbkoedZhjFEuQW1E5ZQzqNO5s4o6kDPkdw1Uvnrn9HvFkIZjCmlZRLzPIUzf+LWH
	AUCgKQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44p0guvpka-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 15:24:02 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-46e78a271d3so7139301cf.3
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 07:24:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739201041; x=1739805841;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mWXJOIJtM8FQ3Dbeoev9P44UaLn9dvzZC/R+g/hayx4=;
        b=FBcE2Qcy7IMOBLZbgnxcqyl2fUa+AbngVs81XAThz+ZBlTeZIGMiW8iVC/bVNQt30X
         djVrPhLWfJy9YrSvYqBk/IN3hal5dgsX2ztQ1PQx4oarmlm+eWnT36dpWZD8nGZn3uTB
         Dks3wTnGG8b0H3ULOmULUwrnvNoYEBXNzlsUgKAr9gKa55xomubEPj1iuUNUiC6ZstXE
         CJ80535cvZZMZZSJknxiXGQI3FjwY2f49WtmqrgRa0bRpgZko0QIkNG7rUdiy4wu5GeE
         wHzrHCiZKj7FvBjmTelxGMLHkDypXK5PuH1ihn9jGSdYn93jEzDHYIxzERG4hblhKDE6
         Vahw==
X-Forwarded-Encrypted: i=1; AJvYcCXZXlIwHoTRcJ0r1I2OnhxeCRaOtOpnD/Msu/90ALBRTuFsh2yJkk2cVqEs8/pT2I9dFD3wjdnK4KvW@vger.kernel.org
X-Gm-Message-State: AOJu0YwmIF8tw+jWVgKtyB/05AZ1nT1aCJJMVCuE8RAqxjJf8zTs8Efq
	PBLRfe0+Be4cE2nJSqwzmdCACSrFHiA8/2KCerYDMnQywGavbULsuTGNDIXgoKkEktgf4oQgIWY
	MIKowFR4w1OGDkZYBBr/bYHZ5+2mj6zX+vi10XY/5Fpupwa0CeIHGG5q/bNjy
X-Gm-Gg: ASbGncua95/37NSD0K8BY/nNkvEKoEmt6eZpC4F1BI0BwvsCEAvZMJBfqjQ14eWd1TZ
	7o6N3bNrJAusr/HFjL/BUgoeL8JAmb7FRnGBGyMfPbCFXruD45BUQco5b+JUghSG4BllBPTgfv8
	MAb2IZ8VzcdPeHNF6jXExR3VWl6N2dXvvHGJygChx14xQerADZdO13xYYpqkW13JaOgtgsrOg9D
	TwP0TNAw5eRy18ZgvEDjSz9GVlZjbHk8Ak1mvqh+wFWBoS4KGh501L6Tvno+ZPB37Nfin0Zxtwc
	w9F0LWqXnYYWjXhxeTc0D9aEc3usD9a1tmHOq7sOQKMxEMdv6RkmVxna6MY=
X-Received: by 2002:a05:622a:2610:b0:471:8f79:c64 with SMTP id d75a77b69052e-4718f790f80mr30565801cf.7.1739201041172;
        Mon, 10 Feb 2025 07:24:01 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH7XhFVAkkuwaP/spxQbPJQxfsD13ry6mQley7HwTujBCXn6LBOHMTzGaIM1ip5eFRuptxJow==
X-Received: by 2002:a05:622a:2610:b0:471:8f79:c64 with SMTP id d75a77b69052e-4718f790f80mr30565661cf.7.1739201040745;
        Mon, 10 Feb 2025 07:24:00 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab7d45572efsm52481166b.5.2025.02.10.07.23.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Feb 2025 07:24:00 -0800 (PST)
Message-ID: <bbbd36a1-d67c-404c-b749-eefcf493ed7f@oss.qualcomm.com>
Date: Mon, 10 Feb 2025 16:23:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sm8650: add PPI interrupt
 partitions for the ARM PMUs
To: neil.armstrong@linaro.org, Konrad Dybcio
 <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250207-topic-sm8650-pmu-ppi-partition-v1-0-dd3ba17b3eea@linaro.org>
 <20250207-topic-sm8650-pmu-ppi-partition-v1-2-dd3ba17b3eea@linaro.org>
 <ba546075-cfc0-4b17-9129-f99054e2e1ae@oss.qualcomm.com>
 <6aa71142-3b1d-476f-9c78-1207fbbed3f5@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <6aa71142-3b1d-476f-9c78-1207fbbed3f5@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: aT1kUOkVF7k0Uuanh0eretENSafcxGQf
X-Proofpoint-GUID: aT1kUOkVF7k0Uuanh0eretENSafcxGQf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-10_08,2025-02-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 impostorscore=0 malwarescore=0 lowpriorityscore=0 phishscore=0
 clxscore=1015 adultscore=0 bulkscore=0 mlxscore=0 spamscore=0
 mlxlogscore=737 priorityscore=1501 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2501170000 definitions=main-2502100127

On 9.02.2025 3:44 PM, Neil Armstrong wrote:
> On 07/02/2025 21:30, Konrad Dybcio wrote:
>> On 7.02.2025 11:31 AM, Neil Armstrong wrote:
>>> The PMUs shares the same per-cpu (PPI) interrupt, so declare the proper
>>> interrupt partition maps and use the 4th interrupt cell to pass the
>>> partition phandle for each ARM PMU node.
>>>
>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>>> ---
>>
>>> @@ -5309,6 +5309,20 @@ intc: interrupt-controller@17100000 {
>>>               #size-cells = <2>;
>>>               ranges;
>>>   +            ppi-partitions {
>>> +                ppi_cluster0: interrupt-partition-0 {
>>> +                    affinity = <&cpu0 &cpu1>;
>>> +                };
>>> +
>>> +                ppi_cluster1: interrupt-partition-1 {
>>> +                    affinity = <&cpu2 &cpu3 &cpu4 &cpu5 &cpu6>;
>>> +                };
>>> +
>>> +                ppi_cluster2: interrupt-partition-2 {
>>> +                    affinity = <&cpu7>;
>>> +                };
>>
>> I'm not sure this is accurate.
>>
>> I *think* it's cores 0-1 and 2-7, but I can't find a concrete answer
> 
> Core 7 is a Cortex-X4, and has a dedicated PMU node, look at the cpu compatibles.

Look at what these compatibles do in code. Nothing special for the X.

Konrad


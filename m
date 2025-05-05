Return-Path: <devicetree+bounces-173681-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7401EAA9403
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 15:08:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7558F1899FB4
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 13:08:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 121FB2561B3;
	Mon,  5 May 2025 13:07:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OGtOGBMz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B4FA20C02D
	for <devicetree@vger.kernel.org>; Mon,  5 May 2025 13:07:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746450474; cv=none; b=iMU6gjaec4EubOIjgmsu8CqypUOArUK9yEjamvwCihQSyi+1HR/klibvPQYEgK5wnmqlbNFvK1sRjqSJVKU4QKjNRQQF/6tlcUoTjWxTqdDOV4Uc+vrN459edQyft+EKdPaeyvUNLjtcz+iffj8w7qKMcZLCJmjoYsKMf2yKcTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746450474; c=relaxed/simple;
	bh=Co5/+JRmTV9xf6AE6O7EzpylVwg5wsLvPoGaApnYw+4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ksutcqywcRw+kt0tWSfeLnKUH2/T+xgAFkXFMfFFQE3GAjsK9G0sxX01eZ5SzdlKEwmv81L1ejD5kpUMMv68PI6frIcsuhpkqE9u6ER8zG4xwAp0Q7JgiF33DbDbV45k/NY3Hb9XMcKCSG9Omma37iLMFmsACZkTNWhGMuEh/qI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OGtOGBMz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 545Bv0Ra015953
	for <devicetree@vger.kernel.org>; Mon, 5 May 2025 13:07:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oJ2xkOZreVOLEDBm9yTWCFsnyfq9hqlhNlEZZUyUYhE=; b=OGtOGBMzNTjfBuZD
	4PZ+56hd6zE+zlNlP+sev4p1NxQ8BveHxGSvzS+ewfswkz7fflOZCD2cg7qMBYFB
	q83fqp1ZTDpzwCBQjKKnJlsOqW6r+jrnp8TjXDKhDE49/SkXlDobUzeQA98GFny2
	FKfefxPUAmDS9JtZAmh+wT0+4P4HcZHp6f6BXxO0ESZ2dOqqO9HmxRj/PwhEIvKt
	/DkU/ICNDYOA96I5ljZTKfHjw0mOOd96stKK7eq3gfZ7O8Bz/Gf0AughhdDzjHFR
	7zGrDSZ4qm0vVE8HvQSMdUlozEfwOMXB5Jlb9+bpJ/6SGvJ6oQ9ZSQauiTOSqhkY
	osPKgA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46dce9c2v7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 05 May 2025 13:07:50 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6eeb8a269a7so19881386d6.0
        for <devicetree@vger.kernel.org>; Mon, 05 May 2025 06:07:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746450469; x=1747055269;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oJ2xkOZreVOLEDBm9yTWCFsnyfq9hqlhNlEZZUyUYhE=;
        b=ZTXux/S697henR9XZ/U1hmSen+i3D7BRHh3OUO8dOEsrEW8P2owBGKFOXRzUUDSjz2
         7iKp/GwIJszZHEkWgtiW519fJxh4T5ChZNqkZ+fN27cImNCyH+1e7rbdMDSHlLcxu6gb
         viksoDpfPIjsDz0VACtypztjsI1Kv5Ed4w2VxB3BOJx6II8XaL9zZKEhPad1R5fS8I3Q
         5WpdfCZfFzzaWWzFkOG721DTavqy08eYmPRb36BO8XtEn67+j4LGRrG2n3846naowsXn
         oCNdKZlglol/gSo6KgFBW9ECW+DIl9+SMlL8SINxTMvXeVGEsOUHi0D2E+y061Ij0NcC
         OaMQ==
X-Forwarded-Encrypted: i=1; AJvYcCUodGOO2660MhOVWrOrcUljpLk0I/dq+HrljLBnbfH6mZIZ5WptB1MSK/vDW107k1Jq3bAXNSVm611W@vger.kernel.org
X-Gm-Message-State: AOJu0YzuIK+LZGEXOc7kTMtS0aonVpcDTrgsh61d10BAy5iaBKVMHhQy
	XR20rfE3i38czbcCftKNHvujrjrVJSGAyaenKbrNn0kRqrlpN5VSmmpYlbUIhPlZo9GI6JPpOTd
	DG1dulWnJfKaXzuAVUbbMJkbunGfYCxt+nrENkAZVfONr2lHOqzjKhgs1F1pS
X-Gm-Gg: ASbGnctGcUWjgs5THqWjOX6R6zgS19QJHVsGuAM6vgHUGOH/8poNOK9EDENwum1h0BZ
	+QnaL+CytqAglw0SAgMTd/mwE7TS3cA2Jq7OzDHrxHMCAU8NnZgbRM1VQoRB37MMy1Spp0/Oo3a
	OknmY4LiiYinOLpyMYuSaD+M+lot3OIwQWA4yfTpBavm1nSDj0iZQM+XPQ7WBEX/zBpb33mY9G+
	9+JQ1AJm55nPDaUgTbKbYXwjylHdh8gFPg0adUG55RrCiYC1WQpFc02UGy36xf4aim4yL32X6Pv
	2atyHCsiNICAzs7UWQGSPMGurwuyUiORf1PukgIhKFdB1F1eUx6HrB0rXMEItl9d8yQ=
X-Received: by 2002:a05:620a:24ce:b0:7c0:be0e:cb09 with SMTP id af79cd13be357-7cad5b618bamr628258185a.7.1746450468850;
        Mon, 05 May 2025 06:07:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEjHQXQJA0Wg7e8FXr0tEryYns4283mrVA0VshcEjXdpS+g9SWnQrrJmYkgMZ1/GNoTTXSE8w==
X-Received: by 2002:a05:620a:24ce:b0:7c0:be0e:cb09 with SMTP id af79cd13be357-7cad5b618bamr628256385a.7.1746450468376;
        Mon, 05 May 2025 06:07:48 -0700 (PDT)
Received: from [192.168.65.169] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad18950b5a6sm488310466b.155.2025.05.05.06.07.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 May 2025 06:07:47 -0700 (PDT)
Message-ID: <9e8c9de6-19a9-44bc-83b7-5947bb626962@oss.qualcomm.com>
Date: Mon, 5 May 2025 15:07:45 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V5 3/6] remoteproc: qcom: add hexagon based WCSS secure
 PIL driver
To: Gokul Sriram P <gokul.sriram.p@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, andersson@kernel.org,
        mathieu.poirier@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, konradybcio@kernel.org, quic_mmanikan@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org
Cc: quic_srichara@quicinc.com, vignesh.viswanathan@oss.qualcomm.com
References: <20250417061245.497803-1-gokul.sriram.p@oss.qualcomm.com>
 <20250417061245.497803-4-gokul.sriram.p@oss.qualcomm.com>
 <72f0d4f7-8d8a-4fc5-bac2-8094e971a0e3@oss.qualcomm.com>
 <538b32d1-c7b7-41b5-aa93-d285604d1f05@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <538b32d1-c7b7-41b5-aa93-d285604d1f05@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA1MDEyNiBTYWx0ZWRfX7IbKmBIu9adK
 vz6cPjdhytzmmEa2h1P7NQlf6AjDKABbTbyFwtgQIt3KN9Zw0Br5d550JgMccMrwO+bMNUfxit9
 JP5C407KyK/I4KpB5EjnJ1V2WbzqfwDF/4z89NT1T7m0jfNQKPNEs4Wii+QqZ5z6nkGvj8dP872
 MPH6OV36TGE/WC7bmf/iiLa/n7vQOzRycMTZQeHvkBZKoapZIGWhdgNOo30DY379AZsudVTXyys
 THMr9eScFS0pdSOCV1AP7yUc9LFLqyMlwEQ4kM+l5XPQHHCe4OIB6V3aE7m9QvZgn7M44bqe7iz
 6FqL6jrUjBYyAaFPmf43reJTUqiK3flqTaAbvvEt0PGtw7O8A31Uk0aJpg+HG14YJ5FbRcDKjDN
 RpRHZZbBh7KN8/+gK+OSX2uBPRtGAzJC8c0yundXvwefUAR2T84G3U6udJdfq7I5RQf1mm8X
X-Proofpoint-ORIG-GUID: J-HADDnqNdQsJTFszP2EP0dCuhmpZjNa
X-Authority-Analysis: v=2.4 cv=Qope3Uyd c=1 sm=1 tr=0 ts=6818b826 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=3J7CewlSCtftuwbhWDwA:9 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: J-HADDnqNdQsJTFszP2EP0dCuhmpZjNa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-05_05,2025-05-05_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 mlxscore=0 adultscore=0 clxscore=1015
 malwarescore=0 bulkscore=0 suspectscore=0 impostorscore=0 phishscore=0
 mlxlogscore=648 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505050126

On 5/5/25 2:30 PM, Gokul Sriram P wrote:
> 
> On 4/25/2025 5:17 PM, Konrad Dybcio wrote:
>> On 4/17/25 8:12 AM, Gokul Sriram Palanisamy wrote:
>>> From: Vignesh Viswanathan <vignesh.viswanathan@oss.qualcomm.com>
>>>
>>> Add support to bring up hexagon based WCSS using secure PIL. All IPQxxxx
>>> SoCs support secure Peripheral Image Loading (PIL).
>>>
>>> Secure PIL image is signed firmware image which only trusted software such
>>> as TrustZone (TZ) can authenticate and load. Linux kernel will send a
>>> Peripheral Authentication Service (PAS) request to TZ to authenticate and
>>> load the PIL images. This change also introduces secure firmware
>>> authentication using Trusted Management Engine-Lite (TME-L) which is
>>> supported on IPQ5424 SoC. This driver uses mailbox based PAS request to
>>> TME-L for image authentication if supported, else it will fallback to use
>>> SCM call based PAS request to TZ.
>>>
>>> In order to avoid overloading the existing WCSS driver or PAS driver, we
>>> came up with this new PAS based IPQ WCSS driver.
>>>
>>> Signed-off-by: Vignesh Viswanathan <vignesh.viswanathan@oss.qualcomm.com>
>>> Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
>>> Signed-off-by: Gokul Sriram Palanisamy <gokul.sriram.p@oss.qualcomm.com>
>>> ---
>> [...]
>>
>>> +static int wcss_sec_start(struct rproc *rproc)
>>> +{
>>> +	struct wcss_sec *wcss = rproc->priv;
>>> +	struct device *dev = wcss->dev;
>>> +	int ret;
>>> +
>>> +	ret = qcom_q6v5_prepare(&wcss->q6);
>>> +	if (ret)
>>> +		return ret;
>>> +
>>> +	if (!IS_ERR_OR_NULL(wcss->mbox_chan)) {
>> You abort probe if wcss->mbox_chan returns an errno, please rework
>> this to use if (use_tmelcom) or something
> 
> Hi Konrad,
> 
> do you mean to use 'use_tmelcom' variable from driver descriptor? If
> yes, what if mbox_request_channel( ) failed?
> 
> or based on wcss->mbox_chan, should I set 'use_tmeeiihcckgddglcom' to
> true or false and use it?

Add 'use_tmelcom' in match data and then make decisions based on it
if the mailbox channel get fails and use_tmelcom is true, fail probing
etc.

Konrad


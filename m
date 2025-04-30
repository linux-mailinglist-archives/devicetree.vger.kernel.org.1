Return-Path: <devicetree+bounces-172499-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 743A7AA4E8F
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 16:29:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6F0E27ACEE6
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 14:27:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39BEB25C711;
	Wed, 30 Apr 2025 14:28:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mXaRyaM+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB9CC25D900
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 14:28:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746023323; cv=none; b=k9JzQz7KN7crwHx+eBzlhEuNEpw/mk5e6Ra73WlJ0z3mA2VfHG/gD3YchS0ao47sJOYY6ysoGE1VBD5we3B3NTFJ1sip6dTk/tKRhfYij8zcy+eGFFwdclH4OlaN+v2xJuigxCayOo0oI3RiwQ/FmYxPROw0Nwg8kXVGYgSb/is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746023323; c=relaxed/simple;
	bh=Ea+OL1UD4IeeXhOa1OHpuw+SoVUR57EIBkmEY9Df6qQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RqfmUk14q/9vWrohUH/vAJq38BTDBvLTv+B89RUOikXcCBTBgyOKQpcogPGm9Y0hTY08jRHMXtbUN/GEHvvPpSEHCtwXJA9BiSv/Y6lxJS3LzojmwF7joYyaeTy4y1xqLb5xQ6UAX6sYcn8B7CCfy0DIms/N84O4XwyUGbRUewI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mXaRyaM+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53U965o5018336
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 14:28:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Zq61iP31K/SKuaA9uKhg0WF0dBHfozX3buotk4oRXgQ=; b=mXaRyaM+svAE7Rwu
	YMlb8pyPSAADZXQqKdGRfS9/FtPH3zogrVAK2B5MI2bVCndY7UOdGE9e+dCxYOrK
	eJzeDgj5QeDQo2I0XRUHuXkdBo83EduCdNwFtPDj2hLzmqueJ+kh8toO3f0mC4lW
	n3zMQvoTzGqnEbgaiMoLV92oi2eQfLaN4pKggYQ+cNYoadx7XRMuCGNAMpkbi2o+
	7iejYNzkJtUH7If4mUexyyzzsLwBLfm1JQiGF4ehgFbBKbmxpVk6C9E/MuIWggBu
	vVc8GEfdJZxDnm5Fqbsr3gsr/hf8HloPKE3CT8zUm3d9nlXiC65rh/x91LjYjfOi
	9bepUg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46b6uaaesq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 14:28:40 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5466ca3e9so45148785a.2
        for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 07:28:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746023319; x=1746628119;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Zq61iP31K/SKuaA9uKhg0WF0dBHfozX3buotk4oRXgQ=;
        b=sMR0B3sUKjxFXbykW8kSXh89GA/H2YtquWe92sV719v5yI1IlvmJEaHfBnHuAVSQfJ
         zZAeixp5WAo3+ylxzN3glJsi16rs3oH8aVrgsW6DXgXleHhIXcHPuy4YKlcqrhiYLutS
         OJaMx/nEBtDN4yhueyvNuk/rEeWUzIroJuz38pgMGbWkMZZQuJunAW65KSOA0/oI/xSo
         lc8kGYeATcCq1CKTsxn0b2nR4I8OZlNlypFyJOpnJiXIpHjPxbs8MLMCW1DTjoi4fvBA
         GuyibRxoYlkFWM3BzUphh6WghFAyr/v8Pf/BH6pgWUbXjRhxJS02ixcL5UMKg9UFcKwJ
         C9Xg==
X-Forwarded-Encrypted: i=1; AJvYcCUNmEWknbBB7SPn5gyKYT+QYYxmGee6mN0ctq36+9L97NfqA1NnQcziB2oHpfMn99zwKTkR/DKA2V/A@vger.kernel.org
X-Gm-Message-State: AOJu0YzxkGkrcGRtwCHbDxuVLlDHvx+/TzyZbXc27OotlezT0q6Uc2vG
	CNFCrC7uIZFPIUdR7RFAqLHt5H93sWz0FSmXqkujYnklulXB+O7x1AVgOmbvcyOPlD6xh+w7n3e
	ilOZnbB/RLy5ewSygA/YZn2BswAFjrrMOIZCiGPXmEq7hUm1cEcV0C0sk6enM
X-Gm-Gg: ASbGncsC1DJgwZ9cY9hzx8A3kWNS13WedB2+yhSlPyaAwYtM2kUmH2zJo9ZnOtR23ka
	fCcVdGSrZ/eCgDn14fSHMkW6u4AuIiXMveiA71Hfy3fhBctd8LlvEQFKJZ63o4b/BFJzQP3mxJk
	VJVDYwOjhsNVuTquIPthzrzv3j2B2el0CLRz6dCyijSHv3+qSwlk+Y8TfsDNjdA5jDqtXmUzCyS
	MkkyxHalVto4dTENrx1JocPslX8qQ5J4AxUge4qB9eUCTWN7o/1bdT9XuT8GpeOlGkZ+hxuxDhq
	mprVGOKCAwWW99fLAG88sxXs+oLc0/g2sorzz/PrHeB008dzsUkkhx7SGiCCNNbFRkQ=
X-Received: by 2002:ac8:5701:0:b0:472:1ee7:d2d with SMTP id d75a77b69052e-489e44a96bbmr16570961cf.1.1746023319402;
        Wed, 30 Apr 2025 07:28:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE1h0qZjefApXqcgKQUffginmJLtkxecKA1YyqGGhd7RCZ8G3bHMmEl1a/YhLVBZkYXb2cFxg==
X-Received: by 2002:ac8:5701:0:b0:472:1ee7:d2d with SMTP id d75a77b69052e-489e44a96bbmr16570801cf.1.1746023319068;
        Wed, 30 Apr 2025 07:28:39 -0700 (PDT)
Received: from [192.168.65.132] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f7fbcfc090sm3955469a12.20.2025.04.30.07.28.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Apr 2025 07:28:37 -0700 (PDT)
Message-ID: <f6f17489-19ec-4956-ace4-47ec93081359@oss.qualcomm.com>
Date: Wed, 30 Apr 2025 16:28:35 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/5] watchdog: qcom: add support to read the restart
 reason from IMEM
To: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck
 <linux@roeck-us.net>,
        Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org
References: <20250416-wdt_reset_reason-v2-0-c65bba312914@oss.qualcomm.com>
 <20250416-wdt_reset_reason-v2-5-c65bba312914@oss.qualcomm.com>
 <4e9621c2-f347-4cba-9422-b14f96ee4c0b@oss.qualcomm.com>
 <0a774c34-e82d-4ff0-aa3f-4f348f4c2296@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <0a774c34-e82d-4ff0-aa3f-4f348f4c2296@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=BNizrEQG c=1 sm=1 tr=0 ts=68123398 cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=457TODNtC_aKx0OvaTIA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDMwMDEwMiBTYWx0ZWRfX+OVNXzOJboM8 RH/j0c80lQP62zc+1skCU66RLXMLTK6fpeyTqmrl35rjxUyf+g9JUnYj6gUyAZCm8B7oyZwCjzS JRaJOSiDXUPJkY2k+ycCCaPk8eje+zfahOMCl81ZO3vKP3vjsOHJZG9+2tpo7UeKxa/8sQHs2JZ
 bp/xdvxWARiDy6Ne7BxET1S44KJk6Yxvgml/NWbVNEuQH4+pkE3ZKheRBnH3q2QNDPt/8mRjtE3 I0LR7/3il88fIruXpu+jw387XOi9qDWdrNuLAEU9ouhL8OPaWU15hAn1Bp2C/kEzsMXRpGBvgr9 aBSgTCd/decA55uDNKFdsUE4tq54tPt21YB7QA2pGJU/QwIARX81dqw8iaINfWWemL3YfQ9VOTL
 4cBYMOYpKoH7vq299kCsUJUS4cRCUEk+DKSX1H8Svh6IYWxIt+v7a0xvp7eBfk18hFQC7UIM
X-Proofpoint-GUID: sKAwh707wE4nRmQpWy4V25fEd3bYgxZ_
X-Proofpoint-ORIG-GUID: sKAwh707wE4nRmQpWy4V25fEd3bYgxZ_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-30_04,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 impostorscore=0 bulkscore=0 clxscore=1015 spamscore=0 adultscore=0
 phishscore=0 mlxscore=0 suspectscore=0 lowpriorityscore=0 malwarescore=0
 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504300102

On 4/17/25 8:19 AM, Kathiravan Thirumoorthy wrote:
> 
> On 4/16/2025 8:21 PM, Konrad Dybcio wrote:
>>>       .max_tick_count = 0xFFFFFU,
>>>   };
>>>   +static int  qcom_wdt_get_restart_reason(struct qcom_wdt *wdt,
>> double space> +                    const struct qcom_wdt_match_data *data)
>>
>> Please align this
> 
> 
> Ack.
> 
> 
>>> +{
>>> +    struct regmap *imem;
>>> +    unsigned int val;
>>> +    int ret;
>>> +
>>> +    imem = syscon_regmap_lookup_by_compatible(data->compatible);
>> I still think nvmem could be better here, as it allows to plug in
>> more magic values
> 
> 
> Sure, I will be on vacation next week. I shall check on how to use nvmem here once I'm back.

We talked offline and I learned that IMEM is not in fact non-volatile, so
while good looking, the nvram APIs are probably not really fit for it.

Let's continue with the syscon approach.

Konrad


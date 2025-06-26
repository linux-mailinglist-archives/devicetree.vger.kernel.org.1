Return-Path: <devicetree+bounces-189789-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B4F46AE989C
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 10:40:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 64D6D7AEAE6
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 08:38:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8229727EFE9;
	Thu, 26 Jun 2025 08:38:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="G+jVVRcz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E455B25BF08
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 08:38:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750927087; cv=none; b=mOYDJGaHrimfxfcAgHg43AOKiQXLyyzBxhwu6gUeDEipehA0VrMK89CG/POeOZQlW6ig05OogX8Yg3sD5CTzPXfNQVQqW4x5NsREYxy4H/ca2WWVGvJDaUJ96lfkjORqzclXZFwpnlmreTBD/7vVduhqAT7WPMFe/wHPgWtIvxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750927087; c=relaxed/simple;
	bh=jx/K8tygJjGoas2i+iwGNVNUm3+ZqzRYN3QILlGvNsw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=R0jL0maeLDTHMFFiPSNKrk8K6bDLI5W9ZxHVQClpDyRLCY0lZdCif8EHJt5Z3k6KJ+g+6xqvIvUOJkOSSgc9E4hKl5LpY9UR+APG7NzSNjlz+2s/HFA2sL8mUU4Dd21fkhnfBJGH+tcsix9QT52vdMVweaC9SG9+AXIPe7Lloak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=G+jVVRcz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55Q0E34X032321
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 08:38:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DN2gLQs/N6h7C/Maw6kExG3LolsSEMumqxKA8yzbDWk=; b=G+jVVRczn7E5t1VS
	BvsKRC8qcTsKEUeaXW0U0e/0JvKx3jEtD8QdM/lT1mgS5sKanN1sFYO/B8xAP+L/
	6zg5gmuwqNWubZ9MTy/Vh4GXo0hO/pZ4KpQL4/cYZ3FrTFTWp6IBSPw9yWoK7Omj
	Voqq71EXzalVwtTxQQDeTN2YJ+XKqizHO2xO2I3tvwUrHRK8vRtz9Cvq1Su2Hq8r
	UPd7ZeuOeUVjvW7WXbbI3OEAiYBW6D2gAPahmXTvW79Ww5PLwAXLFYEeCtIabsR3
	LFQAKph9B4oZFKPYUjgFX3Cb9bPzXXggRyxJ+34bHzGEUYLcatIRTloBj69f+nS4
	W3wm0w==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47f4b42h24-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 08:38:05 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7d3ea727700so10708585a.3
        for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 01:38:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750927084; x=1751531884;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DN2gLQs/N6h7C/Maw6kExG3LolsSEMumqxKA8yzbDWk=;
        b=oiqSYSm72etuiF6A4KyFsEITHdSglfmlbA4qzNndM0eOtv2Zhg8fDMUI1Y3hnZSlSi
         2OHDwpffusrLJOgUmmIogvhNKjNxRmHF2wxTK6lwckACHU6kuBCx0ICvjFlb8oFqyvEY
         sdIIDhxpQaMcujt9NyofeVj3JrS5t3QO282GUezGWOS4IuDYLXpNnrNO96ZTHlAPUHPU
         NfVJd+12ya5mFPLNyV75LSveBtvdn/aT4V/xuKWvI+Tc9oqOhNcpOIQlo1NXpO+ksamI
         asPjDV0HnHxQXiGandXgCPFk5AsiOlbv8ltEXsIWu8Ly6rWp1QTV06yd2mGQLZshKAdU
         f8ag==
X-Forwarded-Encrypted: i=1; AJvYcCX3xSfY+UkW/nyetI3Z0PIa3dQ6YlVZzu5cv8YUJkCsvC2I8XVFR7TbJRi58Yl2PrB+OHUgb5bJPoVV@vger.kernel.org
X-Gm-Message-State: AOJu0Yyzp9V3naE3g8y61SI2emkaZecChhrghX/iM23nuIyqLO960Lby
	0jlF2kzeMRUEEa+Zdd4pP41zmYleyu59Qw10aHKYJL8DqilPOUfJukEIbkRaD3WoVDrWk11Ii+m
	OK0/NhdH0MPmmipudJMX4t1P8hKjaEYgCNa2whzQrkOQKFlVyDrcsQX5Y9Kcq15MB
X-Gm-Gg: ASbGncsGBMmVCrZDSFYC3VkUu8Z4B7mpigoHPqhkU/nTkwkjgCnTUcxBYsICkHQlnu8
	kcOW/RtEt0fS62tmlAlBMlGWa6DKX63wQN+BgjIPQEKm8L8+rJHSsVFHfDRDXhfvF0bH7CzS+wr
	NLfqo+TgCfJ9DNkS6gLwJq5Dd9JWpCX7kLb6tuJZ5/aN50ao6mFXkrv86kFj3RzOM3BOcXzO+nK
	oPsyfTAaZZzIu+dNf+NVUWmWiDBIB6uZGk9CwJy2Snxr6Rj67vZurrL4S1nJC6+hfotTNDCVDjU
	+jYXYWnRi/1+TqPpQP9PBkd3GmQ5i1DFBKKzrV7vYfFFfUjv6Pe1aLcIHsp3ZTxm6jD+qk0+RtF
	FE04=
X-Received: by 2002:a05:620a:394f:b0:7c0:c024:d5 with SMTP id af79cd13be357-7d4296f07camr348015385a.8.1750927083673;
        Thu, 26 Jun 2025 01:38:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEE8XRSLwrca8EjF9FheFZBFZEGiaUI959MuTBNXXt+9+gWR0YgIVeiXbqyruvrR19c3XdKiw==
X-Received: by 2002:a05:620a:394f:b0:7c0:c024:d5 with SMTP id af79cd13be357-7d4296f07camr348014285a.8.1750927083307;
        Thu, 26 Jun 2025 01:38:03 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae054209ac4sm1177132466b.169.2025.06.26.01.38.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Jun 2025 01:38:02 -0700 (PDT)
Message-ID: <39d6a38d-6728-4998-aca2-23138677123b@oss.qualcomm.com>
Date: Thu, 26 Jun 2025 10:38:00 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: arm: qcom: Add bindings for IQ8 EVK
 board
To: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>,
        Umang Chheda <umang.chheda@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        kernel@oss.qualcomm.com
References: <20250623130420.3981916-1-umang.chheda@oss.qualcomm.com>
 <20250623130420.3981916-2-umang.chheda@oss.qualcomm.com>
 <aFy7wEmP0EzGUHX+@hu-bjorande-lv.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aFy7wEmP0EzGUHX+@hu-bjorande-lv.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI2MDA2OSBTYWx0ZWRfX+4LMu7eMz0zy
 u9O58jsB2+lfcuALw778l7/Z5yfV6JR5bfjSsnC7AVBJ1mkgQq3mKxXPa0WUYBj68m8g2tGSGC+
 mOpybtBFjAESjmdoi0tm/GXM/IAVkoST7ffTsCid40fsTyJZyUwYQVUzi6wBg9TZDDFgoFr+9cV
 F/TnPlE5Hn4sPX9YnmnUGQLadlg2IuL1TRwy0H9uCTxO8pjveslXDTc8lEooeft0HXWpChegcPb
 jex9y1ntqVRr+rQTjQz+S2RgRbYaLUHmX07ExYdipZtpQWHcrDImPy7oYAR1uUALryb20t0is6R
 8dsRdN7jnsN/mbLvkqEquljUC6g9EqELa21aIVxOpKEmKYB3htbXLpTBbj/Zbty0IUst58ID/eH
 0VvPiRO5+bbQKR0Sw7+k0W2VmNeq+XAKxWawCz+y1IOtXGNCvthi48SLBse/l4GBko1w+2y3
X-Proofpoint-ORIG-GUID: NTWvcdDsaTw284wCbKx9Kmfs3YxcdWLf
X-Proofpoint-GUID: NTWvcdDsaTw284wCbKx9Kmfs3YxcdWLf
X-Authority-Analysis: v=2.4 cv=A8BsP7WG c=1 sm=1 tr=0 ts=685d06ed cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=2leXWRGikYLyCpLsO-IA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-26_04,2025-06-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 mlxlogscore=999 malwarescore=0 spamscore=0 bulkscore=0
 phishscore=0 adultscore=0 impostorscore=0 suspectscore=0 mlxscore=0
 clxscore=1015 priorityscore=1501 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506260069



On 6/26/25 5:17 AM, Bjorn Andersson wrote:
> On Mon, Jun 23, 2025 at 06:34:19PM +0530, Umang Chheda wrote:
>> QCS8275 is another SoC under IQ8 series of SoCs. Unlike QCS8300
>> which has safety features, it doesn't have safety monitoring feature
>> of Safety-Island(SAIL) subsystem, which affects thermal management.
>>
> 
> QCS8300 and QCS8275 are both the "Monaco" SoC, with some differences in
> which nodes are "okay" and "disabled", and as you say here some side
> effects thereof.
> 
> Describing these as "Monaco" and "Monaco with Sail" would lend itself
> for a better structure.
> 
>> qcs8275-iq-8275-evk board is based on QCS8275 SOC.
>>
>> Signed-off-by: Umang Chheda <umang.chheda@oss.qualcomm.com>
>> ---
>>  Documentation/devicetree/bindings/arm/qcom.yaml | 7 +++++++
>>  1 file changed, 7 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
>> index b14206d11f8b..19823bc91a3b 100644
>> --- a/Documentation/devicetree/bindings/arm/qcom.yaml
>> +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
>> @@ -54,6 +54,7 @@ description: |
>>          msm8998
>>          qcs404
>>          qcs615
>> +        qcs8275
> 
> Please add "monaco" instead.
> 
>>          qcs8300
>>          qcs8550
>>          qcm2290
>> @@ -935,6 +936,12 @@ properties:
>>            - const: qcom,qcs404-evb
>>            - const: qcom,qcs404
>>  
>> +      - items:
>> +          - enum:
>> +              - qcom,qcs8275-iq-8275-evk
> 
> Please use the qcom,monaco- prefix. Is qcom,monaco-evk unique enough?
> We can sync up offline on this.
> 
>> +          - const: qcom,qcs8275
>> +          - const: qcom,qcs8300
> 
> Please replace these two with just qcom,monaco.

We could in theory keep the SKU id as a penultimate entry in the top
level compatible, but I'm not sure it makes sense given what we want
to achieve (just thinking out loud) - exposing soc_id through
qcom_socinfo & sysfs seems to be enough, and if it's not, we can
handle the odd cases separately.

All in all, let's go with Monaco.

Konrad


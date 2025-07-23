Return-Path: <devicetree+bounces-198981-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 10FF3B0EE48
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 11:21:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8CA073A6C20
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 09:21:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C89D285CAE;
	Wed, 23 Jul 2025 09:21:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="V7zfWItt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7F152E36FA
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 09:21:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753262507; cv=none; b=B7nv8wHT9IN0jfo23n9yXrpZKFuCQ4uVq7gZWiB7+xBMKkUvQUE2+reAU747ERAe9apdvopKmmnon62q0mZO+ciaSZNUELJZrHST2w63OFUhI6WVjLmqz+FnbD+lTk4ix9ILMJiyGQYR3PE7RDyS2xQ8L0UdPxXsXLbdwshcIn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753262507; c=relaxed/simple;
	bh=lhb31hAfmJWv+pFCSk8uxuRQUATQK2rglMLyJJynjCc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nO8OEvAPx/7rjyTY4f9gZ7qJWxXQ2RaB7M1h76AetsZ+CFreSh4nYwoY6ShED6NB5XXSkfU2bH/j49jFOe2TUAjOu1ONlHfDb6jgGDCLz1/DBgWnBgeix6wfVmjJn6f3Ozf7u8cQG9uDACKj0YOMFiuKXfa0dTAm7wzVqL0KDV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=V7zfWItt; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56MMNti3007909
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 09:21:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Nb/6O3iiOkNyz5fp5T+ekQVrNaBGU510DuWWGBJBlD4=; b=V7zfWItt8+wifj2c
	wRGy4DMLzDM013wvEXJwXusO5btF7AzB+r6aldVoaL5uO4VAa6viLxSt+a4Pmgt3
	HcKWLrUAeu7vl7TThd4d8/7sGJcCtgCIdAuy9cPKWRqj1CTQG05IF7dbC3oS+7eU
	m48Pm468vZl/Gtt4NnuL+y7V1RBIq2ci8OfqdxKGSSMx7a9P7y82wn0LqzV0lQIQ
	i/c6t3dCmbMZtg+wNAN389e0dJElI7niMdLrT8Xij8HFmEVn+kSd2dut2gcFD16l
	7JfeqonA4DxqDUvnLzzWwKF1fUXnAWFLzbWeN6sTddgjYz6dt1q1PS4yjIw4kSy1
	XiDzgg==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 482d3htm4b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 09:21:44 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-315af0857f2so6135879a91.0
        for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 02:21:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753262503; x=1753867303;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Nb/6O3iiOkNyz5fp5T+ekQVrNaBGU510DuWWGBJBlD4=;
        b=Dhs9RJLyaKpzBlqGXNE/r5HBMcDOa6lEsz408uWhOGzZsaYO+SKmHw5AFk1Pva2/RQ
         +2OWdwx63Zj00LldH/YiC6funbtCBJTQbJsNGpFSuNTJRtQNYewZyg8M/90L1KBODEV3
         1FzaZTaxqm9qG7HKe35vcqHb9xXZx13rj742dM/qJkwbL0Yu1HU2lXcgT/+Mc/twdiaU
         CJnRebAO/cAdxRmeGY6eAELqvrN8a16ZsaP96bJcoMc7lzrKzGJ/8mvIMlrK2I1/GP+z
         QsW4mB1OkHm1yk4u8mOHJq4niYeIEj5HroIHm6jvbmrPz5d/5IkrTyi/jLyj3e/7WUHj
         Tqjw==
X-Forwarded-Encrypted: i=1; AJvYcCWX67lV5wf28TzRoKmTizHkfpXOFJI6dYMoxkZcT3SDvtd8jt6U64hw9cp0OGxUVLvMLfu6JJGVQY+8@vger.kernel.org
X-Gm-Message-State: AOJu0YwA6F47EZXlXu8JVSF5ttPW7n3OooBmGleqlH3iHSrqG6CAfK7G
	tzd3/SQR2DME8tgNJPIgTNgDsW55dk1UOC8VRwFuwYiOGG6cFH5SgmWvH0mOeOKMKuSnKK/Mgnl
	Y5O+KWzdKOF/xfiqFo5DUGT7ML+JCVds4UO9kOCIgmyn+MwcOcyDE0sxiNllmXjvm
X-Gm-Gg: ASbGncsaRB7oj6XfWgGvMwt57K6SnVyHNCGFKhEzVN6f0EKL28q56frcnZGCPBuAGjT
	1U/3l4V3VPwjIIPXMa8Zo/rBXiku5gHknj8jd+OUt4XPAvewPRHfBrdwfM+kvOqZb297Q0qVBWo
	CRHvtMl/eACy1oAnYBob2UrGekpry4lZnlgHKsFzmAstG2c2XROv4sZ4ozQox6DQy5DD9bKO3pT
	ZGZM8ZiHh8LzBCJ8SLOOJ7GMwVCvbp8Ys84LnOcnbgkNh0Hl7BJ1ISgNTk247lofYM6EYQYhreG
	jK2AX1wvxU4dgyRBy2qYXmmbxAIPLx4Vb2qO2GdhnEB+otiBEoZQr0HLLm5qKOHNN2M=
X-Received: by 2002:a17:90b:3f8f:b0:312:639:a058 with SMTP id 98e67ed59e1d1-31e5082e792mr3737784a91.27.1753262503144;
        Wed, 23 Jul 2025 02:21:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEt87+pV3bznhTxSzIjTAcYlS83i2dw2B8Ky3HyJPtNmRuAysXZs8ygxv0dO+g66ulY7n8p3A==
X-Received: by 2002:a17:90b:3f8f:b0:312:639:a058 with SMTP id 98e67ed59e1d1-31e5082e792mr3737742a91.27.1753262502629;
        Wed, 23 Jul 2025 02:21:42 -0700 (PDT)
Received: from [10.217.216.26] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b3f2ff63683sm7223957a12.41.2025.07.23.02.21.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Jul 2025 02:21:42 -0700 (PDT)
Message-ID: <ff05ceaf-6e32-4d66-ac2b-a1b55f41adbb@oss.qualcomm.com>
Date: Wed, 23 Jul 2025 14:51:37 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/7] dt-bindings: clock: qcom: Add bindings documentation
 for the Glymur TCSR
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Cc: sboyd@kernel.org, mturquette@baylibre.com, andersson@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        quic_rjendra@quicinc.com, linux-clk@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250716152017.4070029-1-pankaj.patil@oss.qualcomm.com>
 <20250716152017.4070029-3-pankaj.patil@oss.qualcomm.com>
 <20250721-striped-defiant-hippo-6dee44@kuoka>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <20250721-striped-defiant-hippo-6dee44@kuoka>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=G8UcE8k5 c=1 sm=1 tr=0 ts=6880a9a8 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=P-IC7800AAAA:8 a=EUspDBNiAAAA:8
 a=VwQbUJbxAAAA:8 a=CvYCOFMdU_owP9l6gQwA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22 a=d3PnA9EDa4IxuAV0gXij:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIzMDA3OCBTYWx0ZWRfX+q9gXG3C5bMK
 AKdei7ngJOEQgvOgPMlga2k9gXVP2gXKflA/mPGmZDSgTcHJmshpZuu8QVYj60wbs8Os2WbUvdb
 tqSX7Pqm5SxxXr0eleDdOg3TPawc2qrbOlO6ZpzeOAQAgWJaZo/FpVtNHCFpECXblS4Lf5oePQj
 3xHxN2zsEwRypyFRkUNu+S9voJtLgAB63Kmy1jxslswkxmLRhjrNqn0mUQwB0ZdqX7Lu0u/eZMe
 +WxhS6u16+bsnY1ObJSeiWNr7DLZp5qbjfuzT8jDvfv6sEu/Go6b+ckGsE81UwFaAy3CP6fQo/d
 eSUJ0tv1VcRJcI+5jQWbL7jUDfABbjUN3iTnWNr7x5gEJ1mnX/mNGFGYA8Zica/iv7FGDO9gEJc
 Qn+1VW23dAAAwx5BFj1fwwS8Z5simk/4qNINHxi0Qjq64MieZsFksR7k5VDRoysx8VjNlEF3
X-Proofpoint-GUID: ojqyNt72r5L7ic0AOH8OtLgZO73Do70r
X-Proofpoint-ORIG-GUID: ojqyNt72r5L7ic0AOH8OtLgZO73Do70r
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-23_01,2025-07-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 mlxscore=0 suspectscore=0 priorityscore=1501 clxscore=1015
 bulkscore=0 impostorscore=0 phishscore=0 spamscore=0 lowpriorityscore=0
 mlxlogscore=999 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507230078



On 7/21/2025 2:49 PM, Krzysztof Kozlowski wrote:
> On Wed, Jul 16, 2025 at 08:50:12PM +0530, Pankaj Patil wrote:
>> From: Taniya Das <taniya.das@oss.qualcomm.com>
>>
>> The Glymur TCSR block provides CLKREF clocks for EDP, PCIe, and USB. Add
>> this to the TCSR clock controller binding together with identifiers for
>> the clocks
>>
>> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
>> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
> 
> A nit, subject: drop second/last, redundant "bindings". The
> "dt-bindings" prefix is already stating that these are bindings.
> See also:
> https://elixir.bootlin.com/linux/v6.7-rc8/source/Documentation/devicetree/bindings/submitting-patches.rst#L18
> 
> And same for documentation...
>

Will fix this as well.


>> ---
>>  .../bindings/clock/qcom,sm8550-tcsr.yaml      |  3 +++
>>  .../dt-bindings/clock/qcom,glymur-tcsrcc.h    | 24 +++++++++++++++++++
>>  2 files changed, 27 insertions(+)
>>  create mode 100644 include/dt-bindings/clock/qcom,glymur-tcsrcc.h
>>
>> diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8550-tcsr.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8550-tcsr.yaml
>> index f3afbb25e868..9fbf88836782 100644
>> --- a/Documentation/devicetree/bindings/clock/qcom,sm8550-tcsr.yaml
>> +++ b/Documentation/devicetree/bindings/clock/qcom,sm8550-tcsr.yaml
>> @@ -8,12 +8,14 @@ title: Qualcomm TCSR Clock Controller on SM8550
>>  
>>  maintainers:
>>    - Bjorn Andersson <andersson@kernel.org>
>> +  - Taniya Das <taniya.das@oss.qualcomm.com>
>>  
>>  description: |
>>    Qualcomm TCSR clock control module provides the clocks, resets and
>>    power domains on SM8550
>>  
>>    See also:
>> +  - include/dt-bindings/clock/qcom,glymur-tcsr.h
>>    - include/dt-bindings/clock/qcom,sm8550-tcsr.h
>>    - include/dt-bindings/clock/qcom,sm8650-tcsr.h
>>    - include/dt-bindings/clock/qcom,sm8750-tcsr.h
>> @@ -22,6 +24,7 @@ properties:
>>    compatible:
>>      items:
>>        - enum:
>> +          - qcom,glymur-tcsr
>>            - qcom,sar2130p-tcsr
>>            - qcom,sm8550-tcsr
>>            - qcom,sm8650-tcsr
>> diff --git a/include/dt-bindings/clock/qcom,glymur-tcsrcc.h b/include/dt-bindings/clock/qcom,glymur-tcsrcc.h
>> new file mode 100644
>> index 000000000000..72614226b113
>> --- /dev/null
>> +++ b/include/dt-bindings/clock/qcom,glymur-tcsrcc.h
> 
> Filename matching compatible.
> 
> Best regards,
> Krzysztof
> 


Yes, I will take care.
-- 
Thanks,
Taniya Das



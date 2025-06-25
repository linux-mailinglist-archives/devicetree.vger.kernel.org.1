Return-Path: <devicetree+bounces-189581-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 34F40AE8626
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 16:20:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7237417DDB9
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 14:20:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26F9B266B40;
	Wed, 25 Jun 2025 14:20:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Lo11exSa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D6EA265CB2
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 14:20:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750861230; cv=none; b=SSIzKNVXm9pj13V04B2uw2Jy4aw4iNDdTZpWAmMiCYkD62awfr8ms5vBHypZy5C7dS3xcsQdIQJCgrUbhFVsJPxfa7At+nyGu7+GBr1C3kPdFvNXFrcx6kOrElhJ6IlJtIQy0Qv58PReFj5AZVdHIcUEiDDjhnNz/27r4vlFB/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750861230; c=relaxed/simple;
	bh=IX8IaLLBnV9g5/7hPrzkuQaSZUqxCxGVjz89dzM3wTM=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=Htjx+6T8tvb37XGeFpDbvdd4z3gwk963K9Hsyd/Cj6zx69kk5H7mzoIu/AJ7IQnXmvzWfAN3JdFAXZGluNPC6zWFXGyg6vMxh29nxczCMrRTbYOBmAXN+o3/lR8SYQ0ixA/M+1CYScZBUotvk9NXBar868aLCmEbjmA3/r14Sso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Lo11exSa; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55PB4qrx023175
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 14:20:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hw1xBrAtM4Jso28awVzsgXTidcI+QFA8inWaDXtxLIQ=; b=Lo11exSavx8WkwvJ
	Yu/eEOo/18a6VbBNyjft8DbbujY8vPooLiTD40Mxq1dZcqOIblu10zSMk1kn9V2g
	nmx0LcLHHDmVgJ/CgywmrqGq89dlP8Qqjxhvc12zgBUQId97f2IYOm1ZBHTn/9h0
	7wLO5uUXr4I3XLjRouXfYeXZtxZWOm/yawkO37zIEXTwwBnbal+c6mw3advxHzSK
	pCp51tc3++hk988ja/7fAvCpjEKmTPyuD13+g6L5UjEAbV8BEmKBaX+rlsbY5ia3
	ftbpYRO1mG9qf8zuwGwSZoQl9UTBMQ8NhNA6hIk0N2AqyGUrAaXzBLOG1LInU5Cv
	bptfqQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47g88f9x90-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 14:20:27 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7d097083cc3so184740785a.3
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 07:20:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750861226; x=1751466026;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hw1xBrAtM4Jso28awVzsgXTidcI+QFA8inWaDXtxLIQ=;
        b=ior3xGJTe+4UYUTHfu/B+D4LgIyfO8KCTROJwOqAKpYqLSAFQGQknmZtnBZXXGPaWV
         YKQxdRFE29M4x/4JzF+4/XX6S1NyzC7IQDt9Gx8zsXrf4xCZxOwV2MIaNcXx8u2O9xlV
         8G4o/wM/vOkdvdG+iR/WWjpAS/AkGAdvsi3QFqEU+avHRSfZ4fmM8pPqy6foIQSQtPCt
         DAkEbNrv8UNKrCztZpYK0HzZRpwmL74tKU7jfvTe5GJtUrsbp7yCnU4qXTc9MRf6zIqI
         GgS2NFw/EdSb3zAQyiik/pMz5keeba2d3RD3nEci2zvyjJcqtBO+xlwk59LO2WO35i8N
         UlAw==
X-Forwarded-Encrypted: i=1; AJvYcCX+Gt1qoIq6qOo0Rwu5TfmYdofMgg9DLyEczWIv0J3o1xYyC9AlSuB89YzNL37oDlSKSWrcB7K0GSFD@vger.kernel.org
X-Gm-Message-State: AOJu0Yzfka1dzfIT/eK7rdjNJDA89UN4nNI76qGHm4a8Myh8dDre1NxV
	+DzlB/fVM64Hie6KMX/Ptx8ckTBR1cfkzX0DVx5iCX9aCtCfb3XEm5GxZEdFlO2c2Gqya6yfSBB
	vsxI8gO69O4GPtoKhlBUb0IP/DaTW8ZL/sUWU45ieUkiSDAwTDhv+JxG1tfJwny4b
X-Gm-Gg: ASbGncvkxaO3Uwp8FGH/0PUb2Au2u9Vghn+vsoRDX21eP/ZklynNI6+LJb/9x2bxfPE
	/qfEMCWGZs6mxuCPlC4TH1+XFfPlgB3xLAJVLofzxrffLIgccKh73MROdxnViieWSidAUYDOXzd
	uYn/vRnP8paSNaMITVuEzStw644c40Wz7T7g9DT/jyc2uFCkHC1gDcHbd9PE9dGAH/DJPWQbaNw
	7X9h8QZQgjuUM6yZFffGJX6KgOJIw0wso+0DfItPEjU0hOWP0F7YL6WWxOrSqeanFCwOE2XX7dE
	/F8At5rNQD7VjDT5fS3IzrdZuPj7xRMuDbwe5KsiXTeh5/UQAUn1kdpz0foKZ5Ushbp987mM8Lq
	Jkv0=
X-Received: by 2002:a05:620a:24cf:b0:7d4:289c:884f with SMTP id af79cd13be357-7d4296899bdmr175663585a.1.1750861226588;
        Wed, 25 Jun 2025 07:20:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFcPG5c6FU6ZG+efM90I/kQ/p8jv4tpnX+CiGYwW0+TF/XyKO2wUFOFtKbHLtVfRKzlqQtqQA==
X-Received: by 2002:a05:620a:24cf:b0:7d4:289c:884f with SMTP id af79cd13be357-7d4296899bdmr175660485a.1.1750861225838;
        Wed, 25 Jun 2025 07:20:25 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae0a67a80a5sm331473366b.26.2025.06.25.07.20.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Jun 2025 07:20:24 -0700 (PDT)
Message-ID: <23ae6ddb-682a-4c4a-bd63-f0a1adb6f4f8@oss.qualcomm.com>
Date: Wed, 25 Jun 2025 16:20:21 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] regulator: qcom-rpmh: add support for pm7550
 regulators
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>,
        Liam Girdwood
 <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20250625-pm7550-pmr735b-rpmh-regs-v1-0-cab8ef2e5c92@fairphone.com>
 <20250625-pm7550-pmr735b-rpmh-regs-v1-4-cab8ef2e5c92@fairphone.com>
 <bc27209a-e0f8-40bf-979f-3d747c501ae8@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <bc27209a-e0f8-40bf-979f-3d747c501ae8@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI1MDEwNCBTYWx0ZWRfX80uC0i88lhXj
 khBhqyzSFhZ0pwhbO4OkpP+QFDboi293juMY9xpXASXDhPSSl1q6Uc5Tr0y1nZTzlmYQEEjDfAk
 Za4/ntzwAn/kuhGTrShgeE8hD+rztm8BcLoOYXamC2zm1XgrBZJrJ9Fgnx5gdJZiEp3WR4mDnfK
 XjPcbGSV+oV2wfhD4XWp+pSptp9i8Eu13ID5awAMro/96QyypH2NMS8EtHhNZaN9AbHBTcneaWQ
 SO9xjQ+6qtP9VNAR3VwuvWst8hgOVAEhua+jei3I70u3udfInRMbNEvJvE0jRow+DAxNE6shgVD
 IKmC3htquDNdcPT8PQASgziKvMaaiymq9YbMusrXzY0S29qIEJ8l6jyPKIllocVWwrebY/Bpl1+
 F1yen5pAUZcnBen1E4J1xEwfJtj9PLnKmi8KFInYEJMNZjZ7+bvY42/OILFh1WT1iw7aH1zx
X-Proofpoint-ORIG-GUID: V90h0L7ogoJnxXAzBdiseGSKbxvax__B
X-Proofpoint-GUID: V90h0L7ogoJnxXAzBdiseGSKbxvax__B
X-Authority-Analysis: v=2.4 cv=LNNmQIW9 c=1 sm=1 tr=0 ts=685c05ab cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8
 a=3wOqg-wJ11FJ_073BQQA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-25_04,2025-06-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 spamscore=0 bulkscore=0 mlxlogscore=901
 impostorscore=0 mlxscore=0 clxscore=1015 adultscore=0 priorityscore=1501
 lowpriorityscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506250104

On 6/25/25 4:10 PM, Konrad Dybcio wrote:
> On 6/25/25 11:18 AM, Luca Weiss wrote:
>> Add RPMH regulators exposed by Qualcomm Technologies, Inc. PM7550 PMIC.
>> It has 6 FTS525 (FT-SMPS) and 23 LDOs with 3 different types.
>> L1-L11 are LDO515 LV NMOS, L12-L13 are LDO515 MV PMOS, L14-L23 are
>> LDO512 MV PMOS.
>>
>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>> ---
> 
> FWIW everything you said in the commit message is correct, but I'm not
> 100% sure how to map these LDO types to the existing definitions

OK so found another page (also made sure that the supply maps are
indeed OK)

SMPS is OK
L1-L11 is OK
L14-23 is OK

L12/13 -> pmic5_pldo515_mv

so please update that and add:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


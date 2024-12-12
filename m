Return-Path: <devicetree+bounces-130429-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F57E9EFBA2
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 19:54:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6568028D524
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 18:54:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B72FB1D63E0;
	Thu, 12 Dec 2024 18:51:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MoIMUBry"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C76801ABECA
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 18:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734029519; cv=none; b=eXHvGfdfzX7ng028vgnGzj+KYVFp9u1wIHsHhAigcaqHvIsV5VYyLE+JNesaInFnq94UJ0l/BxdVSkNYOD+hgONA0NUWWgaVCewCeJrdZbSUTvG+7XUe6L7JswRce0FBpAmuajVWOZJlhe2v5xwhOhExulXRQVQaBvfGYflx0tg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734029519; c=relaxed/simple;
	bh=RQYDiHd9It9L7bt5UKp8LB5wrmjonska+s4p2piALbY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=baCvmIDlpuspnCwIX/UI1WuuefB/8fxKo2LjqK0eq9peA2Z9PLuVqmfMlDKyZs/tRzycIb0iNQM/XdvVxrqkqWSxOyhfjCGl2fMDZ371U2jaJsu9CMKGeiCaQ0d8VQi2GbnBwTwo5eX+/5r9z2Hoxji8vbeYFlZDVJcjSaN1z6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MoIMUBry; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BCGHaAK014868
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 18:51:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zxsp0Ujiodtl8bONZyQG5BW3txGq1ewnQuxzTrTB7dU=; b=MoIMUBryedQmkisZ
	2qkg6d0vGmVDUUxCFZ0970Fvztmj63EEC+x4a8v5gd1LkCyiRCdTQqSACtYPgHVo
	OMW5NnQBTwudnGJZt+9F1UwCXRTwdvXbJdeUW+HBlCsfVdevkK4B6Kr+hrbEooao
	9/ZnF4jA6bs8FXtZIRiel4gLDus/Y1B5hEHX5E3BzxOlinFZXCns55D5PZhJpYVA
	9Fr3zHxqIr3Y8Cp9F/QpfRR2YadPuSbihvKb/AZAAY5bOJ97ac5BJL5iLQfmhP35
	qSu1NWB8AsHu47eb05byFiqd5rZLPI9WnCPgH0a2EV42D8LFCDLJv1fRseH5w1hu
	Gj6BEw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43f7dpn7fj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 18:51:53 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6d8e7016630so2349126d6.1
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 10:51:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734029513; x=1734634313;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zxsp0Ujiodtl8bONZyQG5BW3txGq1ewnQuxzTrTB7dU=;
        b=vO69VpiFEiG20QwL6v5KB5YJpcOrSJqTfevYUsaRi+3uykCRB3XXshflWWbCO3QgEW
         rLS86CiQdrnidZWQbcQTF07dsI7qNfy3KC+tVVGZK7aOPR0DxpqOZgNM2bjixSujD4VB
         Ar0ciISnoqiVkYsIvd8P0iFmk2VLJ/gA1DzMEjLtNqZ11XWbRYoVNVCZnHr+QEbauSIx
         KmQmVXWFYD090g/4sK6zyAOoW3/fHapc5C29UP4XpmLVTHz5g27wrzY0i8WB+/Q409UG
         07fSLRqaTLQtw6lvH6jWf0xaxN/vc0A5b6QfHTWaH3kJ3/Zl00EYvVLF8c4NmLWapf0x
         KoMw==
X-Forwarded-Encrypted: i=1; AJvYcCW/LHK5OpXabSv1LLOMSBRzkjMgwlh05y/d3wL9AS3GyIQVI8vM1oIDnp9QOkmMIh1hW1ICjBAY45xv@vger.kernel.org
X-Gm-Message-State: AOJu0YzRwD6aXA+tmka3/LcrpDioByhuuT1Z6Ck4K/TTYhBNn0vpmiIV
	WOBqmlcrxv1V9xSnZwOgBgVSAkfqiSQmpNhi1Q2tD41fFdBIAX0i68+3La0ZBvIuXPHm/e2Dlvo
	EJen3kBTA8ew536P5K0e/T3q5sXxhlNR7dt5evmbkd9180Ld+VnU/HdrN5EAo
X-Gm-Gg: ASbGncuGGoYNReZz/wL9zO9FZUG7JRdXDNhcd4hcaHYVdTxg2lPY4ie9gt/9DIMBuLk
	tEnKeGJcF6K60CSzP8svjYLTWVvEFzr1peAXq1zPIzNPhZJkvU8q+pY8rDd7aFqXBRyw0Gg1QnL
	8VJb4whqj8hAx6cWE7vgpigcqBffzeuutdArnEwt5A5RpclAfJlnNHot+XrHMoRqdgT95V8Og6c
	ZMm/Q/+d4di4g1ybmaS9N6DKSUJSAkrg0aYrmACL4tA4xYTVhdNUZNfp/u+Kip5NuTCZ6lyVlMV
	P3tzfvEgzPvu+jCiT+/j7dreTYDCOmPUea2XQQ==
X-Received: by 2002:a05:620a:4549:b0:7b6:d089:2749 with SMTP id af79cd13be357-7b6f8941a79mr74365685a.7.1734029513013;
        Thu, 12 Dec 2024 10:51:53 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFN2jyr8FCbiNi4X7Td2247OcL/NrJ02mfIvguB98o78LrY1uReIr8pyquLkqqIDVibs1rVEA==
X-Received: by 2002:a05:620a:4549:b0:7b6:d089:2749 with SMTP id af79cd13be357-7b6f8941a79mr74363185a.7.1734029512640;
        Thu, 12 Dec 2024 10:51:52 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d3e7936581sm7597667a12.56.2024.12.12.10.51.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Dec 2024 10:51:52 -0800 (PST)
Message-ID: <37ce381a-c6d3-4ad7-9ba4-bc02e3b6c776@oss.qualcomm.com>
Date: Thu, 12 Dec 2024 19:51:49 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 07/19] arm64: dts: qcom: sm8550: Fix ADSP memory base
 and length
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Abel Vesa
 <abel.vesa@linaro.org>,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, stable@vger.kernel.org
References: <20241209-dts-qcom-cdsp-mpss-base-address-v2-0-d85a3bd5cced@linaro.org>
 <20241209-dts-qcom-cdsp-mpss-base-address-v2-7-d85a3bd5cced@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241209-dts-qcom-cdsp-mpss-base-address-v2-7-d85a3bd5cced@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: nVYi0wLDyfyZ-d7qUNkwGkS0shedFprf
X-Proofpoint-ORIG-GUID: nVYi0wLDyfyZ-d7qUNkwGkS0shedFprf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 spamscore=0
 priorityscore=1501 lowpriorityscore=0 phishscore=0 clxscore=1015
 mlxlogscore=954 mlxscore=0 adultscore=0 bulkscore=0 malwarescore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412120136

On 9.12.2024 12:02 PM, Krzysztof Kozlowski wrote:
> The address space in ADSP PAS (Peripheral Authentication Service)
> remoteproc node should point to the QDSP PUB address space
> (QDSP6...SS_PUB): 0x0680_0000 with length of 0x10000.
> 
> 0x3000_0000, value used so far, is the main region of CDSP.  Downstream
> DTS uses 0x0300_0000, which is oddly similar to 0x3000_0000, yet quite
> different and points to unused area.
> 
> Correct the base address and length, which also moves the node to
> different place to keep things sorted by unit address.  The diff looks
> big, but only the unit address and "reg" property were changed.  This
> should have no functional impact on Linux users, because PAS loader does
> not use this address space at all.
> 
> Fixes: d0c061e366ed ("arm64: dts: qcom: sm8550: add adsp, cdsp & mdss nodes")
> Cc: stable@vger.kernel.org
> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


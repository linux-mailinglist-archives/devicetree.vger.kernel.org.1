Return-Path: <devicetree+bounces-161267-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B998A733E1
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 15:06:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CFA51173CA9
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 14:06:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29DE6216399;
	Thu, 27 Mar 2025 14:06:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LB7FkJMG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFB63212B00
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 14:06:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743084370; cv=none; b=Nj0nmDCZzh950LMfTCDmm9pABzApTcTfOlitMb0y+2w9SGQ07hwrLODGx53YY4VGEbCX5mthA9sI47/VOs9dQgEFdPopJqS0Du7aMBEmYdH6QJYzwe+9sBRZb5n3l9bKm+oquDCIGEAVY1WGgKvJAgzXHJdNCzSIlx5C4SBmmaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743084370; c=relaxed/simple;
	bh=afvCO3GqTkYmUbMmMPc9YHgnK5xxbjvJVFV7ZeJ+Lsk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LfZLDN53FPo85RVqiIR9zI48Fk+wIREGKV6DUztz9u0L8Ye9DKdFv9v/T2VRqIFmEHYY3XqDp1y1K/5RerROgGDNLU0kX0V2vPwlKoadhbNqF1Tcv/tOjAaTqBBz+QAfiZWbaRLCCZQ/VqRkE7InGhkzQEQ5FR3cJjwzvmZi+0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LB7FkJMG; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52R5jOle013891
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 14:06:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3Z3KvQEYwkY1/2lhJB022eBJFJ7oF2A08hRma9OdFRg=; b=LB7FkJMGasCGJkip
	Q7A7dbQ6r9RxeV5jIMlSsgL8mVRhWVYdDYIJhRBl1AWGBFfn9UCpUDx7fwgUWvTw
	Q6xHrJFlcyvuur0REohlN6aIEqg6v/C6UJ+FYWLIYoTZfQeuttUoDnVw7xjmefU+
	hv7dQhSW0vuOsVhT64S7ic9rulR5OfEMlq+Q36aUNp1HtRY2jnxA/1QTtSNN/Ct8
	PT18n5Z/7OT21H0sKNIFhp1zNfPsR4YmlBFniLBgKaxVMDr/THoeogKY3Z3etS+0
	77IpJAJYEuqHwBCygupwOZ19JFlOlzo+jzwsyCGCDmZ/3PFaVpYlnRiSQa+QUx9r
	L7e0Yg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45mffcm6hn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 14:06:07 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5af539464so27722785a.0
        for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 07:06:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743084367; x=1743689167;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3Z3KvQEYwkY1/2lhJB022eBJFJ7oF2A08hRma9OdFRg=;
        b=bD9O9g/OR1bhvzqk5DgTvYlj2u3hRkFQXSOm0zQE2O/naIzmR+PtY5XYzoT1+EFnwg
         Sv/aMk7iowVtJz1WuGKmrdrOWo1FByegiViSx5YLElUOP59pnplq2nUEiaBuVTlLvzvN
         wXvWTBMaDjOXrkek1mogJINbI0/Tw34YCFKde9mnz5esw/zSkV4tA/YjPmBC3DzDWmVC
         Rex3ocF+e08251yuEkXxh111C2nVGgnx20WPH00xELP2DdJVWiE0xsOFKEjpPnS7L61v
         2/gSIIdXhHOZe8d5ZZuNGxBktk2w/wv8Td0fX9oJo6RQkAYXduZGMKQyaBlKJSe/njhR
         lqow==
X-Forwarded-Encrypted: i=1; AJvYcCXp4YGnMxqf7BjCMpp5GS5jzjEI2lyVYbIPy/apt/oWi8HiDEvQKzrhf3wLnz4Qcyee10/cr+dWI6x9@vger.kernel.org
X-Gm-Message-State: AOJu0YxXxDUz/Y4W2HWYjpBm1FysTmNnlN8Dqp/icw2MFGlFQeBTL1H2
	vrjvrZpQTr+Y8ACUtRjZJVdKu3gUkjwOZn8utNqmImREjXTQJAIKyP6Y4DjcFnlqvgtA4viTXZV
	aR1N5HEgMlwqTVV79n7gDDxFgt0qU6129NJ37ZDIsllG5NA8lazkE+4B/Oal0
X-Gm-Gg: ASbGnctZ1qfgBV4bLRORM8rJHBllrUaCjzxF3JL/+eqxMGfXx4H7SY7GuJCdHofXcVj
	luFmlw2dPPad5VfxG6emee69C29PQLmHTiGKRRAlOEWNnlSbEDw/XTnmRZKkkNqvwBle5grmoWW
	Q1Uk0NcQUP/QSg8Nu69MNWej2l7878oEYMJp6ogTSBMpmSO7dtUChdOCdMrbTjPu43hYlG9K/ES
	BSjyxvS0kgADonapUHFUW98Du7WaYlxYSs4hOEVK6xBe2ckdfLQXKhcHvj+BdgOb1edA0XrKgv5
	IaiX3bPM1ubDM4EL8QciI4d2PjTPZ68CCqM9NVmCuUUYloe0aORXQAqUtt9Pd5iqzq81VA==
X-Received: by 2002:a05:620a:444d:b0:7c3:d798:e8ae with SMTP id af79cd13be357-7c5ed9e0e27mr214865485a.2.1743084366496;
        Thu, 27 Mar 2025 07:06:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH9U/NvKfe+2u2COADpA0a5xEZZ0BxZtOhr2Vb8gi40zJ1NKZ6CZ8U/c1x/1bIsmt3ifaanzA==
X-Received: by 2002:a05:620a:444d:b0:7c3:d798:e8ae with SMTP id af79cd13be357-7c5ed9e0e27mr214862885a.2.1743084365910;
        Thu, 27 Mar 2025 07:06:05 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac3ef8e5128sm1235201466b.59.2025.03.27.07.06.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Mar 2025 07:06:05 -0700 (PDT)
Message-ID: <f2e1090e-d4b7-4984-b852-5d7cb54bae6f@oss.qualcomm.com>
Date: Thu, 27 Mar 2025 15:06:03 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 11/12] arm64: dts: qcom: sa8775p: Clean up the PSCI PDs
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Marc Gonzalez <mgonzalez@freebox.fr>,
        Dmitry Baryshkov <lumag@kernel.org>, Arnaud Vrac <avrac@freebox.fr>,
        Sayali Lokhande <quic_sayalil@quicinc.com>,
        Xin Liu <quic_liuxin@quicinc.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20250327-topic-more_dt_bindings_fixes-v2-0-b763d958545f@oss.qualcomm.com>
 <20250327-topic-more_dt_bindings_fixes-v2-11-b763d958545f@oss.qualcomm.com>
 <dr2wkctvk2glk5agdxpijmz2wifvj5f3dwyh2pjlzesravutwx@xa4zcsuyur5p>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <dr2wkctvk2glk5agdxpijmz2wifvj5f3dwyh2pjlzesravutwx@xa4zcsuyur5p>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=CdgI5Krl c=1 sm=1 tr=0 ts=67e55b4f cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=sGqUSZP9eBR_ybGCrCcA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: 8z104HSvhHPLL_OUq99ZvCB2NcNxiDWC
X-Proofpoint-ORIG-GUID: 8z104HSvhHPLL_OUq99ZvCB2NcNxiDWC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-27_01,2025-03-26_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 mlxscore=0
 spamscore=0 mlxlogscore=842 lowpriorityscore=0 suspectscore=0 phishscore=0
 clxscore=1015 bulkscore=0 impostorscore=0 adultscore=0 priorityscore=1501
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503270096

On 3/27/25 3:00 PM, Dmitry Baryshkov wrote:
> On Thu, Mar 27, 2025 at 02:47:13AM +0100, Konrad Dybcio wrote:
>> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>
>> Because SA8775P comes with two disjoint CPU clusters, we have to follow
>> a similar topology description like the one in sm8750.dtsi, so:
>>
>> system_pd
>> 	cluster0_pd
>> 		cpu_pd0
>> 		...
>> 	cluster1_pd
>> 		cpu_pd4
>> 		...
>>
>> Do that & wire it up to APPS RSC to make the bindings checker happy.
> 
> Should these two be separate commits? One being pure cosmetics and
> another one being a fix (probably with a Fixes tag).

potayto-potahto, both are needed to achieve a non-cosmetic bugfix

Konrad


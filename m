Return-Path: <devicetree+bounces-222946-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AB6E4BAFB50
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 10:42:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 86B404E21CC
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 08:42:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD9A2284681;
	Wed,  1 Oct 2025 08:42:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CmemrJcc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F2AF27D771
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 08:42:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759308169; cv=none; b=KyCnJPJM3Yxh7AhDnwkMMC3WdKJnPE8mPl0M8RVUhBdjKoNSsxzHlA2QAfdapbqIXHF0DIUcM6fVf7SuswCprlFP0gY/TRsXWcQ07S7wtmBKurWY6vylhKrC3E0kl6w+srafLQbwznE9OiEbYmIj/svCAX9p+yxAE29NaM3XiFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759308169; c=relaxed/simple;
	bh=ywB4TRn64dL9GrZgeL+rxfSwyjMN1NqbuW1p5qkBoSI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jbqUwPWypAWvTxVu5R9Ah3cQLNq9sY5CStTFujlNzLLd2mB14PdFgVjOYtQPZC1L3XOPDfxN7qI7hcze3O4XFzXsStUP4FPGFsW1efAUgxV5k0aRiXf8gW4LUi2fhnoSnOeXqWm0Q9kOov57JMNmcq9T/Gih5vwgsHGo1enJRpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CmemrJcc; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5918Lu0R024766
	for <devicetree@vger.kernel.org>; Wed, 1 Oct 2025 08:42:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2AXkv0SchroDbDxwaQLmJ1jgS5WU7BUYEQwWO7JzI/8=; b=CmemrJccsjcf9w2W
	ft3zshGdTa4c/8c5KvQhipDcKIj0a2W0olYc8q1clyW3OI9hAvVWxemvlsZpZlNZ
	3L/IMBt5/wLBdBvCgNNftmuVEXI6AIDpKESLqJyaIQTtB9uPUqevEjPqlJGkDyiD
	MtGDTyAZzzLRisAWp2csE/uDkua7ZIzphkaztaWd9CqaUDHP/f7iDyWstnZgNeZW
	5ig2wjtshRZ6O+DFLawLDDRhrY2jENZPRBdfZ4WFB3jU4Lv7PH3ao6RlHRKyNFPG
	qXGLSQCFuFz+JMV9mjG5R6Tl221ZdBlE7s62xJEE+XHuqOzVO4d3TQZ13zjVVLll
	7CG3tA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e59n4a8y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 08:42:46 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4e0f9bedf1aso5734281cf.0
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 01:42:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759308166; x=1759912966;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2AXkv0SchroDbDxwaQLmJ1jgS5WU7BUYEQwWO7JzI/8=;
        b=Zi2AGsJKsmb2Wi4jtl9Qy47fqrWbKoPXaPvv8CuYxexHiZNz79u7f2pa8JaC2rsDKT
         IqIkAsaNNFDIXY8OxTEkTRYSo1+2dOw+s/UR5DnYiVeDEZeUwJYDfNz6O7gOTAqjdW82
         Fmc2n2qOHQuqbXCsiPbbhypDhWRCQQw07mM3BgqZMlKI1vSvzJHaVdK8JWc7kLTweyLo
         Th/N79bUyxGLxHEXPSO927T8umdYnjBI1LZzRgHL6+FYl38yDn4/Kug1S9CPaLVgM9/k
         dhN6HLLluqz/8NYtZZoAkWYd5kjYAiNA1Ae6puObFrkzil8IWJfDoMOMv1osyhbpSSHu
         tSqA==
X-Forwarded-Encrypted: i=1; AJvYcCWdUI94Ggf6vMVoVXmdxJfeBDL65YqKhUg8iCxp982tYpPxZ4cb1LorlcFiX4kDs12iUhWIj58PZLEt@vger.kernel.org
X-Gm-Message-State: AOJu0YzZ5RdFY0O1P9w4JNJ1K+/KOZigQUNqk/VXNr3kG0wDnHYt1pDN
	OeNHS55zQDGbOZF+acyICn2IS2HJibjqMKoydK73OWiVL+Z0cbiwxWZjfovYAe3NHQ2uDlAMaEs
	GLLBaumBbkNAMnSRtneOsO+OYobHUNwENq90FT5APTGmvIAlK/VZ6ixVko/ieqw4U
X-Gm-Gg: ASbGncv0Z/eAJ08ArSEhfZ14FAuMS0g7MQkHzUi3BMxka2bNyEB1TzEi0YeoRG83UOU
	qVOOW57bpJQmwBc5IrQMkwgGrT5W+eGCMe6F1SesKtkLQmf+6cA5D7KW4CBdiLmtFZtdBYXRcn5
	Oy5EBYOfRvmG+WyFgDR9YdMw0FVWsS6hQN7BCcZwNpDGVC9JQF4mKEEhYRNjAsmzzYQPybFk7Yx
	+h1GqfLmes6FljvqHMIVMJpLSw75XlRD/zLtLsbkdjBpULxDlp9EyJmEQqeF3Nlrc04q3QTsCxj
	k6FsYWU0NlJ08SQhJZdcP8j/2UFF2Hq0XW6e79BMz0OVqdZxkWyGKTwh++dE3m1W9fGOKN3Z+WI
	vof1kkaquzGHPll40HveyErOvk5g=
X-Received: by 2002:a05:622a:1790:b0:4b6:2efe:2f73 with SMTP id d75a77b69052e-4e41bf6f1c8mr24267641cf.1.1759308165840;
        Wed, 01 Oct 2025 01:42:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF7/tCqSURz5SUFulF00TbJ80vijd1LGyEq3ySw1CXLtSkpP/xK1BzE6sjcisbfNg6/ZFRKVA==
X-Received: by 2002:a05:622a:1790:b0:4b6:2efe:2f73 with SMTP id d75a77b69052e-4e41bf6f1c8mr24267411cf.1.1759308165166;
        Wed, 01 Oct 2025 01:42:45 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-634c065a67csm9320710a12.36.2025.10.01.01.42.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Oct 2025 01:42:44 -0700 (PDT)
Message-ID: <26eafedd-a3e2-4234-9237-4cf7282c0d19@oss.qualcomm.com>
Date: Wed, 1 Oct 2025 10:42:42 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 23/24] arm64: dts: qcom: glymur: Add USB support
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@linaro.org>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250925-v3_glymur_introduction-v2-0-8e1533a58d2d@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v2-23-8e1533a58d2d@oss.qualcomm.com>
 <dzjj344c6zlkg4rvi455xoedhd4d2kjvodi6yftv7svhvvmxbz@kwq7rkq45tms>
 <66a5084e-3f7a-452d-ad5b-5867528f57a5@oss.qualcomm.com>
 <2c576766-bff2-27ab-2805-298a9d743b09@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <2c576766-bff2-27ab-2805-298a9d743b09@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: YTKDWC_dLEvDLYa6b8AFeqo_VX--Fh4D
X-Authority-Analysis: v=2.4 cv=O4g0fR9W c=1 sm=1 tr=0 ts=68dce986 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=l2iTe4CMrS6P3tszQeoA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: YTKDWC_dLEvDLYa6b8AFeqo_VX--Fh4D
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAwMSBTYWx0ZWRfXwUr7LBALD+zC
 AvQc/x4jdF6uJFKFO17cDgM2dSfaMwfUMA5io0CNLDX9cUCAltmuH59Vu49cc9biYiln5Tpy8kg
 z7BbJ3kEJblyTPTw6Cgj5L/ZxDx5kpMlRjr+avlXb4zi9mXS/mjLT2V7L4Y1DR2aEIg+AWVnWd4
 OJq1vEzZJo9Rsui39CluIukapeJ5vOllsoSBDF7YX3EQJ8xKa3cTZmiRdTRvUor2rVQnUCHvKrg
 3WceGQtdvlfQOHsa8D/nB1gMl98KTbmKkRlxF0/peOTcDnOIruZNqCUNiGoq+7t0zlLzck+Rxe6
 w1L7D/RcRfCVrBVVQ2o5VfdSbUpnmH4I8RwVeeVfbSgme2ycbu+GPjuq6ZayUq8FGRZy6kM09a5
 jyNRD28OZrUGLZqGNdSdISnhXlELKg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-01_02,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 clxscore=1015 priorityscore=1501 lowpriorityscore=0
 spamscore=0 impostorscore=0 bulkscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270001

On 9/26/25 3:09 AM, Wesley Cheng wrote:
> 
> 
> On 9/25/2025 3:59 AM, Konrad Dybcio wrote:
>> On 9/25/25 12:54 PM, Abel Vesa wrote:
>>> On 25-09-25 11:58:29, Pankaj Patil wrote:
>>>> From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
>>>>
>>>> The Glymur USB system contains 3 USB type C ports, and 1 USB multiport
>>>> controller.  This encompasses 5 SS USB QMP PHYs (3 combo and 2 uni) and 5
>>>> M31 eUSB2 PHYs.  The controllers are SNPS DWC3 based, and will use the
>>>> flattened DWC3 QCOM design.
>>>>
>>>> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
>>>> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
>>>> ---
>>
>> [...]
>>
>>>> +
>>>> +        usb_1_ss0: usb@a600000 {
>>>
>>> This is usb_1_ss0, but then you have usb1_ss1 ?
>>
>> I'm in favor of just calling it USB0/1/2/MP/HS because that's what it is..
>>
> 
> I never really understood why we have:
> usb_1_ss0_hsphy
> usb_1_ss0_qmpphy
> 
> usb_1_ss1_hsphy
> usb_1_ss1_qmpphy
> ...
> 
> Not sure why we have the usb_1* tag for the primary and secondary PHYs. I think it'd be simpler to just do what Konrad mentioned:
> 
> usb0_hsphy0
> usb0_qmpphy0
> usb1_hsphy0
> usb1_qmpphy0
> usb2_hsphy0
> usb2_qmpphy0
> usb_mp_hsphy0
> usb_mp_hsphy1
> usb_mp_qmpphy0
> usb_mp_qmphy1
> 
> then controllers can be
> 
> usb_0_ss
> usb_1_ss
> usb_2_ss

I'd get rid of the _ss suffix too, we don't need to be super specific
(plus they support ss+ /or whatever the official naming is/ on some
platforms and not others and uniformity is good)

Konrad



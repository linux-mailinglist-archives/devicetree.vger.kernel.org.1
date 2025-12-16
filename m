Return-Path: <devicetree+bounces-247003-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 37852CC2BA4
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 13:29:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6825C308ABAF
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 12:21:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE009328615;
	Tue, 16 Dec 2025 12:18:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RiJ+xHtb";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="M9FbrVm6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BEAA314A74
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 12:18:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765887509; cv=none; b=V/ROWOBz49aBGMnaNPIXHIK4EfLSjmXlCk+iHAV0YZbdpfamqQVVsJ/Qu/zo5QwfXXZybjQacIscyRr2Gq2TjRuraoOu0np1jqYt4HpP+I8bzBDTf+AAvrznWsuBW7tVN8wpG+axlRIbSufj4lWq7DBP/f7ekzTLCjK1t9zycJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765887509; c=relaxed/simple;
	bh=IgbrckJ8/m+L7rQ+YGOHhMTi2lN5L69wFwUdEig5HWY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=I6EQPBihIGSmMT/XBK6I/+j4yqtMFedDO1RyT3nvDVIBRraMEO1e0Mpk4IR6MFCQQGpqvr3ocJqUcQUmmyfmELU2wRTqBhgredng+1l2GsmDJDaIwLZKYFrHOQLUJNSdBwEPwK/lyvoXKyCCV8rWO687ZwYFOH6APfwWMilW+2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RiJ+xHtb; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=M9FbrVm6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BGAMBsJ3829526
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 12:18:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gLeSWQEgN0Hq9iuqOdJbomTDuGn1najYt9wSZnLiKIg=; b=RiJ+xHtbgZD6q3Ra
	6Tim5XWQKk0s/5NjDl7t4DuuZHIoHi1fiAPooYkY/813RNVjAn3/i9V2xxI34dxm
	LY18zS6fyFt8uE+BPh/oHpBVRXO3tqUBQfG+fS1Eonq2ubB+JnSjxMqWH7+Th4K3
	8dsOIIfdgzW8omHmCOXJOdg0w+yOb78gi+TdC7jtQwpjboLhV9ChcYi80jDdPP8U
	hdQqOsjPuneqFXtcf14N3LHqeD/anyjaZXgxtXgg1f1Klw9eQBJZiUsx7Wei6vtj
	dJUO1g7jrhawDCma/95mDgTXPfaTxi6GomUm/9worcepoPyIKMiJGqa4OloPYiwW
	kOgYuw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b35m2rex3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 12:18:26 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4f1aba09639so15111811cf.0
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 04:18:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765887506; x=1766492306; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gLeSWQEgN0Hq9iuqOdJbomTDuGn1najYt9wSZnLiKIg=;
        b=M9FbrVm6CxhweBEEhSO2kRgglbQ764jQDBB+o3CTAzn6cdkSQO0HTYr9dSO0y3dByH
         z2e+HUWBDQcMIiuro7qedlFH+lnJOvVljot1dr1P5rQL3Ay/MONxuS19oCmn3LFQc7Hc
         kAfONqxQmBHg0P4cvAHCTD24m6pCnjZoB2EBZ1jBzXNyyxLhgV3aIEMxjvROPA1ySdwq
         cdakh39DT5LxZBxeLNDQ+3B4+D3o0TCBEzrUyqgILADxX/g1dhapi6/nRGBKNb80j/B8
         CaRXu5b0iR02FxxSolF6DlF1+LX+Bb+/jnLlfC9EATT6hRxOU1hRpEGT2wuoJ+C0TAyT
         aHdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765887506; x=1766492306;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gLeSWQEgN0Hq9iuqOdJbomTDuGn1najYt9wSZnLiKIg=;
        b=aDys7ZGxc19h1lPm+3PNYO0fRC/SygcRXtDp78lGHgg90xkhGrAwwSJNp03y/DYXqX
         tYED65vilgKYTDS18srpuEnWvMmYqk+C8tFLkLX7asgb6MQeqNVG4GdbS4C7jh2X0PsE
         aVNJof/1tYWU3BD0p2GG4LCHxo1ls4zwIcJH2hxMtM5sOfXfcCaoTSh47xHkvuzIk1J+
         KKxL2XTPL/U0BQ2hVTOMA6GiG/rvrpaFwoM229pS4CG0Y+b1BtAxVRhJbjC6txWk3knb
         Xfu0/uLCddKV4V5ZwIN528Ub3IW8lIhvnBTD/A229yX15IKf4vsWp1w9hbPlPzV3HB+E
         3bnw==
X-Forwarded-Encrypted: i=1; AJvYcCUWd9OOYSfGJRB7pislGIt6vjav5jGt6jKuvqbdO3wg+py6vPOO6wqsAM2Yj4DW4HofauhM9W9FpdJy@vger.kernel.org
X-Gm-Message-State: AOJu0YzSILNK+oAi9XcH5WdXXIuvUnV7a0lbBHCCrHaQU2JDj94HE5si
	1DjT9vL8EwftPyTkEBZqziUGzfPI0dMjO23gRXYH0kO7rXQpNN4JDI4Tg1GritMs6bPwXCssjyV
	kcL7XAq/MMVsAih1nDLQbRClvZvuC8yIgF4xOA1wSM4Uu4ylVMq1D9aTO3S/MvR/C
X-Gm-Gg: AY/fxX5QZJZeqPOQd35Hzqk/YAMss2NjVik7NPYM72tNUQv5PV6k3QcIZ6RmxFdqVIH
	kFBrcv+ewa3gvJ9ygwNeezfHtG3iXr2hz4i0uECV0N3caGUYEFrG9V1sBWGVXYlIn66nTFJfppo
	SpJ6QCeaFL6zXulKJ5qsLpJBzIkQCwwuPcpgQ3twk35p7baWB2aV6fMeWcteD2xprwDhQk6D+JK
	PEkF3nAJpxiBxgxhUNI3O7XRDsvnO6x5MktsswHyHkLxMyOB6JkiMFqgmKMoyoDoOAtGk4zSCdR
	XBlo6Gqsgo0eq2pi6X7MdX9GRSGCEuQxyNNOzghuW5tVm0mhvRMi/0S0Y4K8Zk2cWMOthjcaYCs
	wg9Lv/LFZyOuqQLd9AASWTNt3YjZl+dAO7IqYNJ+NMABlxdWPtDwMOvNWsjiE9s0ZWg==
X-Received: by 2002:a05:622a:409:b0:4f1:aab9:851b with SMTP id d75a77b69052e-4f1d062f452mr151920671cf.9.1765887506275;
        Tue, 16 Dec 2025 04:18:26 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFCymIRaI7wnVzSlN0gvR4JGfpggG6OO0QhbvguaHtQaxxnFQfG0GbMrMZIugN9w3H+9Tjywg==
X-Received: by 2002:a05:622a:409:b0:4f1:aab9:851b with SMTP id d75a77b69052e-4f1d062f452mr151920421cf.9.1765887505724;
        Tue, 16 Dec 2025 04:18:25 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7cfa56c152sm1628758866b.56.2025.12.16.04.18.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Dec 2025 04:18:25 -0800 (PST)
Message-ID: <c1e08b3e-c861-41d2-8ca7-4db43432416e@oss.qualcomm.com>
Date: Tue, 16 Dec 2025 13:18:22 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: sdm630: fix gpu_speed_bin size
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Alexey Minnekhanov <alexeymin@postmarketos.org>
Cc: Konrad Dybcio <konradybcio@gmail.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251211-sdm630-fix-gpu-v2-1-92f0e736dba0@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251211-sdm630-fix-gpu-v2-1-92f0e736dba0@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=LpGfC3dc c=1 sm=1 tr=0 ts=69414e12 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=e7aU34VQUkOlsANtNgcA:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: t3Vwpg6X5WlF0PKjrAnIj5UWub0ScXmy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE2MDEwNCBTYWx0ZWRfX4ehmaMaGx5A1
 CDuH5HfVTYYP1HJlH0TRBwPisp5EvJTussfVZJrF+kwC3ho/tyjfzLWAtGXszbe96Iw/St16+bm
 O5lRjb4vSY/VH5lUcpsA5nNo/JrPSy6hm/87HhYYMpOEFZ/xVGA+UUPi8L7sYsPuFGQHt7oafWo
 P/J8OfxdbHVDEe03noQtM0Sz6XPZgIz5gaDjk+Adq/voPconCbdQ+nNOeuqiPLwQZNJKojFsoEU
 fad97aUTZtUlKpkyR9UNLMlHQAkfFoUf1BzbXbcu3yTaymSKYM3V7qcF9isaW2ZT3gnJaBDmejS
 qAK4gdX+BY5A2UrdBxHxgC6ezWN8vW2RciKXxJALmFOlZRYZLrG92Cs8TERowrDqUZxBNGQJrvE
 2BXfyjUBiXVbvID8p5i92zj4pjxgvQ==
X-Proofpoint-ORIG-GUID: t3Vwpg6X5WlF0PKjrAnIj5UWub0ScXmy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-16_02,2025-12-15_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 phishscore=0 malwarescore=0
 priorityscore=1501 suspectscore=0 spamscore=0 bulkscore=0 clxscore=1015
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512160104

On 12/11/25 2:27 AM, Dmitry Baryshkov wrote:
> Historically sdm630.dtsi has used 1 byte length for the gpu_speed_bin
> cell, although it spans two bytes (offset 5, size 7 bits). It was being
> accepted by the kernel because before the commit 7a06ef751077 ("nvmem:
> core: fix bit offsets of more than one byte") the kernel didn't have
> length check. After this commit nvmem core rejects QFPROM on sdm630 /
> sdm660, making GPU and USB unusable on those platforms.
> 
> Set the size of the gpu_speed_bin cell to 2 bytes, fixing the parsing
> error. While we are at it, update the length to 8 bits as pointed out by
> Alexey Minnekhanov.
> 
> Fixes: b190fb010664 ("arm64: dts: qcom: sdm630: Add sdm630 dts file")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
> Changes in v2:
> - Update cell length to 8 bits (Alexey)
> - Link to v1: https://lore.kernel.org/r/20251006-sdm630-fix-gpu-v1-1-44d69bdea59a@oss.qualcomm.com
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


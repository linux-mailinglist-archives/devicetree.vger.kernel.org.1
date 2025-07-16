Return-Path: <devicetree+bounces-196828-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 539C7B0734C
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 12:27:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8AE8D5633C0
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 10:27:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E8442F363F;
	Wed, 16 Jul 2025 10:26:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ljasKkbH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D2532F1FF2
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 10:26:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752661618; cv=none; b=ml1c187NsS3G3fyEe6j5//dIcDg1+1C6MpzyFm/Os92MLzSiq8Q55LUW9wHFkr3km7NNVu7tikXo5DjFreL2eD3pJmPltMnEEbNoyixln0/YsxyTsdiZps2EIRYQC/rSLxZFvEhmevo5xrmCDkybLox+djy+ciWJnWI1tF8+eaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752661618; c=relaxed/simple;
	bh=dkcnz2DvhVBraNdPkknEde5QEnIQI0sshBOKGYDq0/w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qXoWuK9VBU9E38cFUbcXABulyj64gIf0Iz6fuPPzKhmQRjdAb2YeV+0aA2RmKMcDTruqlbm/qbRB84gChdofSYvrlJyjW/HMfcL0VY2+PrP4++wyK455YYJtKj8X9CZH7um80Ph7Gk/+p/4q/N5tMlm37uUxT1FDngCy6FHXq1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ljasKkbH; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56G6LB0k024700
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 10:26:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UEIv5Q5pbfuoiy+cWUkNc8sRfBTll0fo56yYG/WZqis=; b=ljasKkbHOwB5hHZn
	chg7RZpzIk5HwOWIvCZBx0RRM3Wnr+WjffkaTPH/R6/BBz4O9KUUZUHbZlDh1NGn
	amZtYIGOIPkIQ+sD2cKWUBoiX9Ym/xdcSiL8KovIPk4HrOsDmRwX06Z7HlOupFtr
	YDUzfUuPPN+kamJOOCh7slUpXv9ayZvEas2CssZL4KD6NDGhmsAnyARTiQlbTrAu
	xgNEnpvMB4DVCd+5+ZiLSHtAykJFFAEAtHkCQ9CfiLf25y/DoXAf78WNo3MVv2D1
	7FvZYFoe5afRfYEHcMSZXIRKIBgb/MDVTyKyKcQj7apPi8sLUbRiFnk8Z6ozMSTP
	uTKk0Q==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47w5dpees9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 10:26:55 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ab7406bfa1so7067081cf.3
        for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 03:26:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752661614; x=1753266414;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UEIv5Q5pbfuoiy+cWUkNc8sRfBTll0fo56yYG/WZqis=;
        b=X5f/EeiA9kFs6p3kMpxVt0dEOEwu+cNX4HOSSl1I/rFtAP1mnvjprSRZLNgFUu+828
         TUdOG9Z4DjrhCc4nKn5/oCVWs8A5D4SjQPzCp6C7g6sJ1QsklOq0W8UeBdxmJ8zqAKm4
         ExjNtplZNNZG1H8BHft647iXmYrRaemeqD1PndIsXN2tjx8+EFul7yRtTCamNyibycsI
         /dLCWnjuQ4pqkedZoyluglsVUxYi+tmIzGGM8F14oLymtqVFxzP7QqL9+xWrYLr5Ujxu
         lbQBZRhCX2v6l0Ghl4vpH3FUdbf08mFIay3f8+fYYbvknOdZ0AppGf4x/WI5IcUDcQto
         ChEA==
X-Forwarded-Encrypted: i=1; AJvYcCV7Kzi3+EoJzeTreMpbsSrtsGf2UMixSE+ZtrVrYwnDeyb2ImgJGvujf2KQNHoLE9IhobUsyRuSFafU@vger.kernel.org
X-Gm-Message-State: AOJu0YwUs2hGqxzGz8ep5AjEw/d4h2YYeoIE/m0r4dUd9hr7mIdkl8gq
	VGBePSv2bpH//p/b7MAr6v79M5HXRqHl/vzw9UAWmmnfqyCqPHoDiqP0RPDhorbOw615wLNAchj
	Bz6pO5dVdRdrntm84gNUSQ7ZCtWDEB40pj3Ac7ru32S9tcQ+CZnWetDgp5E18VIUf
X-Gm-Gg: ASbGncuqMYCXKx+VWicrFFtaEHZmhjFkDg1zEYmJCmajZsDB0b48VwaypR0+URgd0OI
	BJzSNsmZ7pOSUYwhAH4MAIZPAzrlGKipoguDX24VO+wjeKR6WSRBagLTIrpAXNi2c0hSXBg+xmk
	FDnsEZe+NCEk34zHXJq3lo61TBWLVN8VZYgb26EnsNNaSdZFPlpn2lrE8HbnbCi4rS7cMRq8Xv3
	jDEQlR/OWi7ux1/S5IY6EdTrcDf7dW9p6J7wkaWVkbiT+85PIEdKpXwQEwnJokOC9I57VcneY/H
	Dn6adXS1gChBDtiOmMNtzCbb4J5o90TlUDoRa5Q4djnxrThunU0xPF/hQdi+DOfZU5euVR5HXM2
	2YJ5GxjDkAv/3dvhmiSv0
X-Received: by 2002:ac8:5942:0:b0:4ab:7a5c:fc9a with SMTP id d75a77b69052e-4ab90aa14camr16129401cf.8.1752661614047;
        Wed, 16 Jul 2025 03:26:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHS/bx6dHr7YlW34OZ9B32jhEtnpkNZ3+stxyMSlcMbABfC0piVan4Nuc13I/veqJQKwZHKuA==
X-Received: by 2002:ac8:5942:0:b0:4ab:7a5c:fc9a with SMTP id d75a77b69052e-4ab90aa14camr16129141cf.8.1752661613342;
        Wed, 16 Jul 2025 03:26:53 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e7eeae5fsm1171801466b.64.2025.07.16.03.26.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Jul 2025 03:26:52 -0700 (PDT)
Message-ID: <e65c43fc-c188-4acf-a0ae-c34ad171fded@oss.qualcomm.com>
Date: Wed, 16 Jul 2025 12:26:50 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] dt-bindings: arm: qcom: Document HAMOA-IOT-EVK board
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Yijie Yang <yijie.yang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250716-hamoa_initial-v1-0-f6f5d0f9a163@oss.qualcomm.com>
 <20250716-hamoa_initial-v1-1-f6f5d0f9a163@oss.qualcomm.com>
 <604a5823-c563-4d37-ab14-e3164f3b1cd8@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <604a5823-c563-4d37-ab14-e3164f3b1cd8@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE2MDA5MyBTYWx0ZWRfX8RWY5vOBvxHN
 2K5qejJWwF9/cUw85QKs1nNCFdqUn4lm7/qGdZkB6qOwsJriMZbv1ZIyCpxa24RkIJhTWq9+VSi
 mUvSXD3sPRUOfr8eJpr4+Iu+qGLRNjsuN7Dk43xl3y4LXGdAIegDcLHDC8XLh19bnpB9ojj8Va9
 aGsvCfqaScm/O+Du8SOjickom00o5a00+UX4GxL6KoJevLP2MXAGXgk0yoVFeXcg6Chr17ciIQc
 quWxXMe7m4Xy4Mnstf9z4nlAepK719vfMSYO9cPNLyKl7ggOkHqRnh8TLN0PCCvMir1ds7Ffik9
 2ZltgZx+JGVQusvOpZcar0o24EYxjarocOlL+7lnZnZ+7tVHZmycZHD1IbDGkz4/P99zgZWGf1M
 8dmgp0qLlmi95LZJn69pSzxLBmt+AioVYXB/XHJOVicBEEWqgURQjatVxqjRiIgHUkPm/h+Y
X-Proofpoint-GUID: 0C1rSSJHSJt9ytbJFzu82UXTpgoQaYwG
X-Proofpoint-ORIG-GUID: 0C1rSSJHSJt9ytbJFzu82UXTpgoQaYwG
X-Authority-Analysis: v=2.4 cv=Y+r4sgeN c=1 sm=1 tr=0 ts=68777e6f cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=VgApEbnXb6FI9c-La98A:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-16_01,2025-07-15_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 mlxlogscore=999 phishscore=0 malwarescore=0 priorityscore=1501
 adultscore=0 impostorscore=0 mlxscore=0 suspectscore=0 lowpriorityscore=0
 bulkscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507160093

On 7/16/25 11:30 AM, Krzysztof Kozlowski wrote:
> On 16/07/2025 11:08, Yijie Yang wrote:
>> Document the device tree binding for a new board named "EVK" based on
>> the Qualcomm Hamoa-IoT platform.
>>
>> The "hamoa" name refers to a family of SoCs that share the same silicon
>> die but are offered in multiple speed bins. The specific SoC used in
>> this board is the x1e80100, which represents one such bin within the
>> Hamoa family.
>>
>> Although "qcom,hamoa-iot-evk" is introduced as the board-specific
>> compatible, the fallback compatible remains "qcom,x1e80100" to preserve
>> compatibility with existing in-kernel drivers and software that already
>> depend on this identifier.
>>
>> Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
>> ---
>>  Documentation/devicetree/bindings/arm/qcom.yaml | 9 +++++++--
>>  1 file changed, 7 insertions(+), 2 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
>> index ae43b35565808ed27cd8354b9a342545c4a98ed6..83b09ec1100ca03044c832212a99e65cc1177985 100644
>> --- a/Documentation/devicetree/bindings/arm/qcom.yaml
>> +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
>> @@ -100,8 +100,8 @@ description: |
>>          sm8550
>>          sm8650
>>          sm8750
>> -        x1e78100
>> -        x1e80100
>> +        x1e78100 # hamoa
>> +        x1e80100 # hamoa
> 
> 
> Huh? Why, no drop.

I suggested this, so that people who read this file for the first
time have an idea of which magic numbers correspond to what magic
name for existing platforms (where new DTs will be expected to include
the codename in the file name (just like this submission) to get away
from SKU/speedbin names).

We can drop it if you insist, but I'd rather keep it for newcomers.

Konrad



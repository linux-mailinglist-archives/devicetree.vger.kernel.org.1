Return-Path: <devicetree+bounces-232681-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3459CC1A18C
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 12:44:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 130D43A34FC
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 11:42:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDC8630BBBB;
	Wed, 29 Oct 2025 11:42:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kBPu1obG";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="b5smWCxt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D934303A3D
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 11:42:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761738160; cv=none; b=Td2w9pfenfoazsL6K9zXTxLK8tqQZuxhB7PbbCoeFVjEorp2Eo0C//dJS3JPm2PqC6XJR1hDS/hXIHH7zOFGOtxLrkWug964stPzj3XNhtvTj2j/hPTmrhoQymwIGqEvZnxycwdlD+aeGCurhfuGVm9fRq3JrNo56EaK3P42Q3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761738160; c=relaxed/simple;
	bh=GK+h9CifNt1/N8ART1U9SkukAckkPwLv+RPCo//wacs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uoHC5qYHCIEJckUs7poBGgcpoDWXJIQKTsiqWweF62k8VG9cggFBs+1OPycsHEKswkLaExlaJcnXuI+usvjCMx2KziQFjo0qN4duxhmAf0Qb7mExygqRssjGQXYsAm7wJkmxJJe2cKsUKcjPAuQkPyvADyS4GZoH9AENXB/7g0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kBPu1obG; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=b5smWCxt; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59T8TToE4135357
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 11:42:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	82QGbvIm5tIICRw6Xgbk0nOud47sW9k/+sQlIS7mO38=; b=kBPu1obG6oBpAV/w
	rX6X70BPCMPWiaukpiTfJP+34elZvgCzHBot/M9AVAFwmeqqDGCwdp2IBOkKE5Ud
	+AI3X5yJlR8i+f1tJargKwLo8JBsMR7jgVr9kMZsR87LILmaV1GLpUf5vIyiCqs3
	fwr1I9PbworcjvrFg9aK7FSfI0tvRr73SuFCZUUN76gUvQ8Td8SiE+Z5OGhRbs+1
	GG3alG/4DMG7NhoI1S/dWUamLbesF9jlmwDrwvTbonXjn3zI0cbrUZt8jaMYA1FJ
	QtHDYgMe0WO2zqjvN97P2ydt1lgWAKjnvGJref17Uea6tGqBsCS0dJzlxOmSr45O
	vqQqHA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a3ff9rj6b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 11:42:38 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-78105c10afdso6455554b3a.1
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 04:42:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761738158; x=1762342958; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=82QGbvIm5tIICRw6Xgbk0nOud47sW9k/+sQlIS7mO38=;
        b=b5smWCxteP81vgHgT3zGSnQjtevKViAfvvl/oAizWixhLPrFOEgeJrP0HyHLGQXfyC
         LukVoiGdsjZg9sPDbTcGpmyDJMCZSemMqwD4TrDTRLWT3GczHRV9U381ni3NPc5PQXL6
         7eCQeHoCNkX0KxRvvsSV/L5bUqmeNYUbuwHjVTicEbsawj4TONYNp4FKnJNlSnL4SnFu
         HA+Fco+lDlhkBk7dh0fSOPvsvWp4aG696Lrcicvfkw25wjafUN2o87+boocDbFjPf/Mv
         8uNc2akCIwCTexWh57UwJ4mfrOh9Ngh8loGEpMbiYrpvYHd6lRsBxIQNfyBgl55l6TzS
         nW9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761738158; x=1762342958;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=82QGbvIm5tIICRw6Xgbk0nOud47sW9k/+sQlIS7mO38=;
        b=csDmw03Mcwh4Deqv/fWqAkmVCCNGBgTti4MXDqxRQexZI7u10jHBxRNe83/TE4/pyv
         wxBvWjp+zerTNBKKgPkrYVYNpV5dQs2+zx/eg1m1uhsbFlrXQo3SbP9VxnCXEqdK4u4e
         vYSPLUj/Jg5z3Q2fkQ3gOCp/0afH/zR7BJl8oB2gn8jTd6pvyXvyEy+7IWvAauT9ZtwK
         1scmIXaM3exaLZPl6dNUKu5yyLfHYa8Z8iMwLMpTWIRuK5345iKmOaSEA7+KwU7FGnIM
         6bEzjyzbjfyfO8YVwMNBe744N3zLRT1NJZq72ppZaPcfuGXK8SHbdHw+p8vEmfuuVcaq
         XfaA==
X-Forwarded-Encrypted: i=1; AJvYcCXb8/zIoPY4FXxFVWPHVcOxpevBkpwfxHr25gWmPtE1+4k4btAzqND83b0HBAHv9yQnnqopu7GDq2hP@vger.kernel.org
X-Gm-Message-State: AOJu0YxFozQP9eXfWVnwm4o/UCRXBZd8OkJJEX1YEffwFUb8IUdyL821
	N6z4XTz/4VQyUGpx9+6kQyKi1hewKk8oUskYxRVkJiGJM+e76JDW1G4DSMpGEpNgYK9J2FieOLB
	QA1uBt37L2DpmeVhB9+zPgqpn4DHfSas26OTRgkhL8UREhURGMbx5Ui36kVV7lSkU
X-Gm-Gg: ASbGncv8d+rX6gt1OR4brPBg6osmC1kMakHfYoKnvrw8Mutd8V1cpUwrJFz2Z8d1KfE
	kwY7Ar4YgcZBTxZ6URr9cmICC2PEcildzpstjKV7r5lONZ/HXOocGZwZNBsXK1Qvc3q6Veikb0Q
	Asd7wkuBpSCkvXueilSsGNsYo3o+wy6HKc3YSuIM8v9tONL/qMidd2aiJHpZvJPCX3EBqxQpN0Z
	Epz4S1UfBCenVWOJPI0QkN2M3C4I+/i69VXegPValdvefgV08fut85TfuuUEDzlCeRCKg+IjhQg
	ShUkS7ENn5nOtR4Xbh/cuREe9nv0RDTMvLPpkTQxaczcqFcsk1jWP4xFGxzMsh+tInQ7cbEeS7H
	hzmyk0P90e0lmKCGncUyK44yfvzXSX78N
X-Received: by 2002:a05:6a00:1742:b0:7a1:49f7:ad04 with SMTP id d2e1a72fcca58-7a4e2dfd22fmr3505508b3a.14.1761738157907;
        Wed, 29 Oct 2025 04:42:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE60h7iSnXrX8hGpp8tyqVaKcNJkQPbjBnD8dVqZHjYUw2lDZ67G334v4k3EVjp4iGr6sSeOA==
X-Received: by 2002:a05:6a00:1742:b0:7a1:49f7:ad04 with SMTP id d2e1a72fcca58-7a4e2dfd22fmr3505467b3a.14.1761738157365;
        Wed, 29 Oct 2025 04:42:37 -0700 (PDT)
Received: from [10.218.1.199] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a4140699basm14858553b3a.50.2025.10.29.04.42.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Oct 2025 04:42:37 -0700 (PDT)
Message-ID: <6297468b-77d0-4202-8ec1-3e731acc43de@oss.qualcomm.com>
Date: Wed, 29 Oct 2025 17:12:31 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 3/3] arm64: dts: qcom: sm8750: Add USB support for
 SM8750 QRD platform
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
References: <20251024151521.2365845-1-krishna.kurapati@oss.qualcomm.com>
 <20251024151521.2365845-4-krishna.kurapati@oss.qualcomm.com>
 <a117b105-a734-4f67-9bb2-c06728e79083@kernel.org>
Content-Language: en-US
From: Krishna Kurapati PSSNV <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <a117b105-a734-4f67-9bb2-c06728e79083@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 4c4wxUUJMzh8ryyTErvhuv_wCKR8Ek1g
X-Proofpoint-GUID: 4c4wxUUJMzh8ryyTErvhuv_wCKR8Ek1g
X-Authority-Analysis: v=2.4 cv=Cf4FJbrl c=1 sm=1 tr=0 ts=6901fdae cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=mnim3SVQaNIeGpcasOwA:9
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI5MDA4OCBTYWx0ZWRfXzuy8W8rtalaK
 vRf4WpsxIghV24TTsx1qd3qdvPK2KI9aPinDjKEy5qXJtu/RL3pYQcr/KMQAjdJtC5yxESnf2HL
 Ne1/wxwdoU91LwR/su1yxzo/PvHcu7TtWkIhzD4qzm1qF9hKyOT6ExVOVDvINzTWspxu4/zYVpw
 XwNGGntnne2cz+1L0iT8juBGgPSA14q4T1hjwG1V398L52JtqbSW2ZWzpKfu1c34D8KSk4p8S7R
 e+42W6fN7hcC+V/O1Mwri1HOJjPxl3VIQz8+rqUPt9qre+rB2SpgUn8tiRpA/13vTUJd/IdX3t3
 BPf+429qBlXS74+LJZjwh6cPZM9+Y1bGphb7nfPTiN/Y5l13mkdG0JxJSfZN+EdzVgKGoOt4VdZ
 RpfxE86pS2ZvIkoGFASIWa7SaVuVPg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-29_05,2025-10-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 phishscore=0 malwarescore=0 impostorscore=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 spamscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510290088



On 10/29/2025 1:37 PM, Krzysztof Kozlowski wrote:
> On 24/10/2025 17:15, Krishna Kurapati wrote:
>> From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
>>
>> Enable USB support on SM8750 QRD variant.  The current definition
>> will start the USB controller in peripheral mode by default until
>> dependencies are added, such as USB role detection.
>>
>> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
>> [Krishna: Flattened usb node QRD DTS]
>> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> 
> NAK.
> 
> You ignored every previous tag - multiple reviews and tests, and then...
> 
>> ---
>>   arch/arm64/boot/dts/qcom/sm8750-qrd.dts | 22 ++++++++++++++++++++++
>>   1 file changed, 22 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sm8750-qrd.dts b/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
>> index 13c7b9664c89..fc5d12bb41a5 100644
>> --- a/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
>> +++ b/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
>> @@ -1054,3 +1054,25 @@ &ufs_mem_hc {
>>   
>>   	status = "okay";
>>   };
>> +
>> +&usb_1 {
>> +	dr_mode = "peripheral";
> 
> You sent something different with issues.
> 
> Really, this was a correct patch. Was reviewed. Why you decided to drop
> all this, drop everything which was correct?
> 
> Your explanation:
> "- Removed obtained RB tags since the code has changed significantly."
> is just wrong. Almost NOTHING changed, except completely unimportant two
> node merging.
> 
> NAK
> 


Apologies Krzysztof,

On first patch that adds changes to base DTSI, there were changes moving 
to newer bindings and merging child node and parent node. I should've 
removed RB tags received on that patch only. But I was over cautious and 
misinterpreted the rules and removed them on the other patches as well. 
Will be careful the next time.

Also is there any issue with marking dr_mode as peripheral here in usb_1 
node ?

Regards,
Krishna,


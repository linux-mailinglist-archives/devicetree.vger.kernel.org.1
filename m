Return-Path: <devicetree+bounces-231269-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EB626C0BCBA
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 05:59:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A0BA24E137B
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 04:59:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D33A325A2A4;
	Mon, 27 Oct 2025 04:59:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JuzDYkXv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ADDC23EA98
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 04:59:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761541187; cv=none; b=sVk02oucyqdWgirjJOZsxNycAueqmCoSSRsnwvolbgFqqQL0Kn4xEmM62g1q2oWB4BM2wfoUSgkq3Oy1Xcbsg7exl9rzmb94VROr3yPcN4iIirkaJSaMEiwH1oXRHBpc+9erbH2NeQO2Tg9BkYOjESFKkWxhRtunkWUFvIevzsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761541187; c=relaxed/simple;
	bh=NXOAHiSNmxOiOS7HVDbazr8bykt6LWHHKDDuEoEkaxQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dwSWR1l+FTgZmI+jpFpMJNqjWM1+lNX1VTEkXeuC4q9++W6f9SxDgD8pA/8QQ2W5cxwH+EqtX5XykpHoO9L1DCVh4NENCStgB5/asITVSk/wqRwCv9ckmNf3bsfS742vTUxEpfV0MmvKJUUQLDyMuz+JI7OvNv+pBSxYh908ku0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JuzDYkXv; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59QKEdkQ767186
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 04:59:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mD3eW8Q+X7VqXorSBBv6tEIzWjDaO0115Pe6L0VYuqQ=; b=JuzDYkXv6gvnOp2i
	bK+BXGbJDxdjchicRRYIHbQ1csoaD+b4m21NwrkVWU7HoTQrrkF5EYjM3AXnfg6p
	HHyUTlbCviz1Fizj2hsUNS5576oD8yGOcZZC3hsFysMaEJhCNexNSgbGMl31QPn9
	QIjiUmTrX/lFkQn9RVRh4PscGam0ACJcccjhKSwcWGsKfu98ws14jKzhDMYhBIT4
	YVvpIbyhghJrGb0hkuOrjde5y08ZlGmca+RANhjIXB2uatOLB173dmrpLNuMCqdd
	cQsn6g0Rh9Y64CqwM6k74zssKDhJ4pvkZMDFvlJbIpKSb3jwAProYA0Ruxw12M42
	nKArdg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a0nnxuafs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 04:59:44 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-29085106b99so41033115ad.1
        for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 21:59:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761541184; x=1762145984;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mD3eW8Q+X7VqXorSBBv6tEIzWjDaO0115Pe6L0VYuqQ=;
        b=Ve3Mq339zzkPJXzRI5/HBZld330+ZBd8u1cIXk4nxun+Q0J/84AlgwKR3UICFZfqXg
         4YTlXqG4h0OCD0Zg4JQwTHTQih4IKmO0h40Z4yW9iOvjcYt565iDXTm9LqeuQmR8REwd
         kcwGdxsSXmOIQx+NP097N6/ifTGnZGIgDClzDT/nf1pfqSvLvuraTYukQGd/ULEDN5Wu
         Jsn16PLn7WjN0gLwIRoKP0+1MScpQ8AYcRmB1S6SUK4jdLPZr48RaqjZm9Jpcw3/2gwO
         ea3rf5YP5VT/Qz3JlF21ZnNlanZDtN+Qkok7l8T9N5Tzh8mipempgI+ZGdg1pkgOg/P9
         9SRQ==
X-Forwarded-Encrypted: i=1; AJvYcCXENUuSEOLc1m1fYF9Ntpan7he/F+0f+hStMIbICZnAxkFqmkEYTjoes3NSpNdvWD8vPvBpyPSAuFjN@vger.kernel.org
X-Gm-Message-State: AOJu0YxUWI67uhg0Kt6dZtjs+wqg7jXM3QgiidwG044Nl2Y2rkdWu6v7
	U7ld0vPiWrKIuwrcLSONja5PVaJEMCNkvTXDfI2uTqMvdv1B90+fzY0GJA9V6K21HjrVAHkvVB7
	aopTm/Xt6+r4MUAcQOe3YJp1av9OiW/db8iaDJpeL/wr/J+AkC8w+gcQUBxvNSxff
X-Gm-Gg: ASbGncv0xL+MZOdMPNrZjKDHhQRXgW0p/zy8t4lkGYjfsU4X3Y32v1cn4Mr1DmCHGC2
	J3wRn3gEK5D+QGchLQ0EmCPOy9WOa9KdBNUPRQ+oCk4VGO5IxylQ9iSqyZGR4wUJGiOc+KH2YT1
	MxkIOSX0zFuxNTajKx0To66id8DRMobvc7YxeBo7tHfehXoUk0SFc4rfj3UcSIfuxYlzjECIYBK
	dxipYAQp0R8HI9XiHJGosFeluvAxyMQPpYoZfhhtzHUNy+TpbsdIqGq4MI/BxTzh4hr2MPuPaSg
	9zbxx9VhDp2BrKterjLeuPsFy1ivow39+Ft2OTT2fqTbLHHYalOokF3Ntxd0K2noStmrzu4cD/B
	NXZY4w5Q+Z2TAp94r2Qie5N6g1BYjR/CZzO3urJuM7Ps=
X-Received: by 2002:a17:903:2f88:b0:235:e8da:8d1 with SMTP id d9443c01a7336-2946de3ddbcmr113941225ad.8.1761541184070;
        Sun, 26 Oct 2025 21:59:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG2IPsDoUoRRbxLruyTRMj23/2P6SPWPhK/AySX1U9OdkkR/gxEhSC6+HDgwzasnTw0x5TNow==
X-Received: by 2002:a17:903:2f88:b0:235:e8da:8d1 with SMTP id d9443c01a7336-2946de3ddbcmr113941055ad.8.1761541183628;
        Sun, 26 Oct 2025 21:59:43 -0700 (PDT)
Received: from [10.151.37.217] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498d09a59sm66527395ad.35.2025.10.26.21.59.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Oct 2025 21:59:42 -0700 (PDT)
Message-ID: <cfb94b1a-7ad0-4067-a08b-2af358edb768@oss.qualcomm.com>
Date: Mon, 27 Oct 2025 10:29:37 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: sram: qcom,imem: drop the IPQ5424 compatible
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251015-ipq5424-imem-v1-1-ee1c1476c1b6@oss.qualcomm.com>
 <20251021-quaint-hopping-tuna-0dade2@kuoka>
Content-Language: en-US
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <20251021-quaint-hopping-tuna-0dade2@kuoka>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=Xc+EDY55 c=1 sm=1 tr=0 ts=68fefc41 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=NEAV23lmAAAA:8 a=EUspDBNiAAAA:8 a=og02JtxI0NfJW1qUVyoA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: cuvX-gv4hSltxbutENKZ8yiF_6H3sC5p
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI3MDA0MyBTYWx0ZWRfX34zmVyXuJHPB
 mALiriY/xTwZKmb5cmN+LRyh5TBWzHXIE7BQ/ir/2BiM/4GH+tpCvSPr2PXZ2mZwiVdPXddsSif
 xYEgpmeijOwpW46NOX7nPa6jivy6IERgjgLP8lmQREmeHPc5kp0rsOt+QbwQdWltvDpOaD9BkQC
 QC5EO5wznwilPu12mgtEkGP6oYydbOBzbhho3J7+hbyO3x2q/UDUUZuOgVBbUA6AmbjR9EaG6On
 U9d2DlGbJd+PM5B3/ASzw+jPbI2aDn8yrNV/ivhZsIwI+3tqzHnyWtuuL/PJRcKwN2nPTuZ+qYF
 0WKzZeZeLH1ulP4rROpa67PK14YqeWjtyf+rPHfvauJT2188UfwMHXgIcOdIm9pn9+CYtPi8wtM
 SWiaF4MGjwSja7PJkN2bAn7AOcFcIQ==
X-Proofpoint-ORIG-GUID: cuvX-gv4hSltxbutENKZ8yiF_6H3sC5p
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-27_02,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 priorityscore=1501 suspectscore=0 adultscore=0
 malwarescore=0 lowpriorityscore=0 phishscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510020000 definitions=main-2510270043


On 10/21/2025 12:32 PM, Krzysztof Kozlowski wrote:
> On Wed, Oct 15, 2025 at 11:46:58AM +0530, Kathiravan Thirumoorthy wrote:
>> Based on the recent discussion in the linux-arm-msm list[1], it is not
>> appropriate to define the IMEM (On-Chip SRAM) as syscon or MFD. Since
>> there are no consumers of this compatible, drop it and move to
>> mmio-sram.
>>
>> While at it, add a comment to not to extend the list and move towards
>> mmio-sram.
>>
>> [1] https://lore.kernel.org/linux-arm-msm/e4c5ecc3-fd97-4b13-a057-bb1a3b7f9207@kernel.org/
>>
>> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
>> ---
>>   Documentation/devicetree/bindings/sram/qcom,imem.yaml | 3 +--
>>   1 file changed, 1 insertion(+), 2 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/sram/qcom,imem.yaml b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
>> index 6a627c57ae2fecdbb81cae710f6fb5e48156b1f5..3147f3634a531514a670e714f3878e5375db7285 100644
>> --- a/Documentation/devicetree/bindings/sram/qcom,imem.yaml
>> +++ b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
>> @@ -14,11 +14,10 @@ description:
>>     transactions.
>>   
>>   properties:
>> -  compatible:
>> +  compatible: # Don't grow this list. Please use mmio-sram if possible
>>       items:
>>         - enum:
>>             - qcom,apq8064-imem
>> -          - qcom,ipq5424-imem
> And where is qcom,ipq5424-imem added? This is supposed to be one patch.


Kindly excuse for the delay in the response as I was out of work.

This is supposed to be added in the sram.yaml binding, but I haven't 
completed that yet. Between Konrad has done some rework [1] on removing 
the imem.yaml and combined with sram.yaml (in his dev tree). So I hope 
it will be taken care along with that.

Konrad, Can you help to share the plan on when the patches will be 
posted for review? It will be helpful for reviving my other series[2] 
and obviously yours too :)

[1] https://github.com/quic-kdybcio/linux/commits/topic/imem_sram/

[2] 
https://lore.kernel.org/linux-arm-msm/20250610-wdt_reset_reason-v5-0-2d2835160ab5@oss.qualcomm.com/#t


Thanks,

Kathiravan T.


>
> Best regards,
> Krzysztof
>


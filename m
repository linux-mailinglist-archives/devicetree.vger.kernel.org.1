Return-Path: <devicetree+bounces-240048-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D285C6CC7A
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 06:02:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sea.lore.kernel.org (Postfix) with ESMTPS id 0A2062416B
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 05:02:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7457E244687;
	Wed, 19 Nov 2025 05:02:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Va3ObGAQ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="I/YrHD2C"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D69A1220698
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 05:02:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763528525; cv=none; b=iTDGkDs/QRbxjMhUTUvlnAKgnN//25cCBXnxIYjF1yvkQu2wrJNxb0GKCahiQXxU8iMQOoB+LbYwKL6WubqzaLARYL8GfpmssXBwY03mF8r3c+eEKbwVrXHx5axsCzmnbCRdr4weV9/Jdmi6ggsm6nv3MFxL1ZWfkkegV3RFyqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763528525; c=relaxed/simple;
	bh=SkDPb7JF1wbSbOailasNv8LOqVqSAWaBT47PG7LF3sk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Hv9p+Bpoywuw+4/gtT+rKzCRp/JPo3ATJIBAUcndKrnEyEDM10GP+Blbo1ilQsqckSGrTzkmvi4ahYYx6ry+69jUH2gNiw3xZxqj4mg79bPH7Eelz4iw/JzDAqRMnl9ndFaGqC4t8o2beQKBnVq0EgZiPxwEFk/GkvO7o45B3dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Va3ObGAQ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=I/YrHD2C; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AJ4XZ2o884823
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 05:02:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	z5NqIgx2P5nS26/g9jgskIxQbUIoH+MmlLA6OGcwLQ8=; b=Va3ObGAQhE7IG7+V
	8fVr5FNmrv0qdE42+P7m0gLZ3EnxQWzW5uIzPnrzVn3CAGHk2YQPG1mkW3dxf3kv
	lW8TGEB3dctlU2J6uw3v8PEi8jl8UJF1wlSvny2aJU94Q6IetegXwxMugtgxOh/D
	syZZI9jldW6Wx99cC7me32lyLRd9SxhKj98cifJ3i2SrkuQiSXm2hFTKJ+GXGrLZ
	+UBreJDF2jeMe5HH6H+uTZ1nduC9jW3ST7c8e/tfLFxvC4M/dX1gySBBFBoK1sO/
	HKZlB8gDY/BB7IAfH4M7eHGiqp5o8xvnB3jNV9LnTDV7pbq0KS0ZS+Ex3YlcnvRG
	8dKQAQ==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ah6yq821q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 05:02:02 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7b6b194cf71so9130855b3a.3
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 21:02:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763528522; x=1764133322; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=z5NqIgx2P5nS26/g9jgskIxQbUIoH+MmlLA6OGcwLQ8=;
        b=I/YrHD2CyW4DRztiLfSFh8iAJVlBR0oTq/juzUQnhuXvNyfVkNOO6Ja+IemskfD4Z6
         nKAlfD+kHDti2T9CcLyCYQxz/QWw2ngVpsdP/jWIUbGpNyswSkkPJGaLyh4eQefPiG46
         EVvalvGyBe8DRmBy77npKGZdIw78qhAUWF2KBs4d61Z2D67XCxWgQLlH8F2S3RfVBQha
         PH/l5n8flQTVeBwDYE/d+75XquIEUlDZ/Sr7EHfQrN8SWdRtkhvSUY7I0ulaNhWCkBEd
         R9fjunaKAr986NqSYOoguaSysPHV3xmGgpKrut7UI9fa8xJUHCI4Q4QlUcw7n535Bzwt
         QDLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763528522; x=1764133322;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z5NqIgx2P5nS26/g9jgskIxQbUIoH+MmlLA6OGcwLQ8=;
        b=v7c73iRx3KXiaSWQ4pmMbOCiRC2t8xgGv4tf6haZTl4SpJ4vdPsF0jVCdCe2TAoHPO
         NQc4jSspWZELqmCpwuyAuS9t7vjj8ek61SedzXz/XdZLVe8wKWIFFmWmz1Ih1S9iayRV
         O/RUBa7SaJ7Mqx4RkLR4pRQ9F6Q6ouHXNQ81OLXzVHPAdJ4s0NR8xaM0X3ose5k9oUp7
         YyiFjXy1vj75Pcq52l+imfHTSex7czqgzAGkhs8rGUPhvpcwNF3Q/UlnZ+eIX1VvHk2l
         U1pVBafnbp6ppottD3S1I6EIozbfKmMi+VxueSaCvWWxKnZ5XLPE+UuTrImR1S76Nrn0
         jG4A==
X-Forwarded-Encrypted: i=1; AJvYcCWasvjoKVlUX7E1fFWECc2EKnxNhjRm0U+YUj7k73KRtDuoc9/n/T0EP+b8ZClnGoh8ZkyQsaAe3sXd@vger.kernel.org
X-Gm-Message-State: AOJu0YznEfpy0HfUdmEhAa7bzslCLV+wABg3XDOhnL6n1oO5at5cOD1k
	7/VP5FSdlYJnlC+xlhcnqJy7HOXqmrIkaSwWpyce4jZVhC8dxX2LMxWOFyoxtuWoUBXshxwMtsJ
	TbC6QOS6t8OXaVyrt25yjiVRpQFaiKsgGIzP+SWg0NU1/CYkOOJe/AbfmxoEM6Vvz
X-Gm-Gg: ASbGnct6men87k7iItq4UkNRltQpC70v8ytvTI8bYt5OycffOI207utrLBri5Mz0/bS
	5NV3UjzvEv07Fx9WSUmzPRjkaVnqZjxp3gLHgXOlnI1Ltcyrm3rOxcoeSSfgFwegB1qSelp+MSK
	u0fF++HBOH2cj0ZwYrC364/Cn6oVj/ZKUBgnVGbAMb35zXPAhq06JVovFR/ka7wxFgPykYshpg2
	JBeN5hN0/geiYOl0+M2ZaTKAhxj2aBgJT5usl076hKMSaU/nQmqNwuO1gk9Sf4IHXMBcP7BfQeH
	rJGS/DPEzmpWG6DTIP8McPsrgf4n+pb2cFFPr4NvLgz+3ODkCzNhVUW98mpJCRSCRY6qR5KLQiD
	K3DDRiN8MP2gQBbmVRuFsIRM8wCiujd9JsWLqkthou8RSaw17
X-Received: by 2002:a05:6a00:1407:b0:7b8:b1ff:be51 with SMTP id d2e1a72fcca58-7ba3be8c4f5mr20546304b3a.18.1763528521510;
        Tue, 18 Nov 2025 21:02:01 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH063BKmkkOWeo4TjNaTNBDPjwkkczHRvzPlsft60lCBe6xwb6sabiu6gIU78Nf2irU95uk7w==
X-Received: by 2002:a05:6a00:1407:b0:7b8:b1ff:be51 with SMTP id d2e1a72fcca58-7ba3be8c4f5mr20546272b3a.18.1763528521040;
        Tue, 18 Nov 2025 21:02:01 -0800 (PST)
Received: from [10.218.21.154] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7b9271505acsm18149433b3a.35.2025.11.18.21.01.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 21:02:00 -0800 (PST)
Message-ID: <9a7ead5d-e8b8-49bd-883f-575f7eb22b78@oss.qualcomm.com>
Date: Wed, 19 Nov 2025 10:31:55 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/2] dt-bindings: pinctrl:
 qcom,sa8775p-lpass-lpi-pinctrl: Add SA8775P LPASS pinctrl
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        kernel@oss.qualcomm.com, ajay.nandam@oss.qualcomm.com,
        ravi.hothi@oss.qualcomm.com
References: <20251116171656.3105461-1-mohammad.rafi.shaik@oss.qualcomm.com>
 <20251116171656.3105461-2-mohammad.rafi.shaik@oss.qualcomm.com>
 <8a2f9708-6f3e-4c4b-942a-8df7b4d6e127@oss.qualcomm.com>
Content-Language: en-US
From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
In-Reply-To: <8a2f9708-6f3e-4c4b-942a-8df7b4d6e127@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: -Q49-wL7544cYhsW7Jh7lbq1bKkluxK_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE5MDAzNiBTYWx0ZWRfX3WlDXc0By00i
 69l0QcjkY7R1nB9lVVoFYf5u/q/wF8v5y9djQCBBJZgnJsmyXks6GUvttSO156+kAjvtU8QfcVg
 XQxO8ztBusy5JfvjSELLJEn5u3tI9DJBZ0oZUP5uvgyEyHt794Cw63/004kGX6NPCIv4FRmG9vZ
 0LGNRdbIk9ki+HWRDVo57RFMpqov4R3CmV9iu8UwduTXCbUHfqjLGNrgGU3H7FUq/LrKFz7Wf06
 tx+CmSkH3qjuywtdw0L65Qcwy/1S+kAAZYISEoI5GTn37ZBEv7Jm4xjY4mD9XLx/fpQZ9R09bn+
 d43qCRMuOz2TfNsOHtmzYUyB4X4+9gpD1GpNpTFedd8hPcou0P/5hkx6QjqhVK5UpdLZyWJh21D
 6xu8MpVMoz5mastIGjO/iEzCTTzY4A==
X-Authority-Analysis: v=2.4 cv=Ut1u9uwB c=1 sm=1 tr=0 ts=691d4f4a cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8
 a=pU8MzpUV3DlFKexVmMUA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-GUID: -Q49-wL7544cYhsW7Jh7lbq1bKkluxK_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-19_01,2025-11-18_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 suspectscore=0 malwarescore=0 adultscore=0
 bulkscore=0 lowpriorityscore=0 impostorscore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511190036



On 11/17/2025 6:14 PM, Konrad Dybcio wrote:
> On 11/16/25 6:16 PM, Mohammad Rafi Shaik wrote:
>> Add bindings for the pin controller in Low Power Audio SubSystem (LPASS)
>> of Qualcomm SA8775P SoC.
>>
>> Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
>> ---
>>   .../qcom,sa8775p-lpass-lpi-pinctrl.yaml       | 106 ++++++++++++++++++
>>   1 file changed, 106 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/pinctrl/qcom,sa8775p-lpass-lpi-pinctrl.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,sa8775p-lpass-lpi-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,sa8775p-lpass-lpi-pinctrl.yaml
>> new file mode 100644
>> index 000000000000..01a56dbeaeff
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/pinctrl/qcom,sa8775p-lpass-lpi-pinctrl.yaml
>> @@ -0,0 +1,106 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/pinctrl/qcom,sa8775p-lpass-lpi-pinctrl.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Qualcomm SA8775P SoC LPASS LPI TLMM
>> +
>> +maintainers:
>> +  - Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
>> +
>> +description:
>> +  Top Level Mode Multiplexer pin controller in the Low Power Audio SubSystem
>> +  (LPASS) Low Power Island (LPI) of Qualcomm SA8775P SoC.
>> +
>> +properties:
>> +  compatible:
>> +    const: qcom,sa8775p-lpass-lpi-pinctrl
> 
> Are the mappings the same for monaco? You can preemptively add the
> compatible here too, if so
> 

Ack,

yes right, Lemans and Monaco share the same pinctrl mapping.
I’ll include the Monaco compatible entry as well.

Thanks & Regards,
Rafi.

> Konrad



Return-Path: <devicetree+bounces-196206-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3829BB046EF
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 19:53:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 94E7B4A0B18
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 17:53:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 599B12676EB;
	Mon, 14 Jul 2025 17:53:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YHQCd3V0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E23362673B5
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 17:53:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752515629; cv=none; b=lVU35VyJVBl63YfiHwJnfRD6HHp1mShirJJjkThgkaGuHRX/Sm/v6F8vYzOEQoXQ2NBFdQPWF3tBTA6BAbwg9PfsI1pfIu9LI8SDqgacrdkvpspA8uGzZVk92e6ZSkPCL2JfGvio0DiHcKQcOdNSwAULbbNxChXG7uplkU+qjEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752515629; c=relaxed/simple;
	bh=YvsJN12SAY9OQ75DnDkBYqvaW6o0cntTB75m162ikOg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=J44KLY6a+hhOP0CW6Hj9aWNHSxvqJYPg1nfPcCk4tYJb0Ag1sd+3gViQM/fvWu2ByQ9XUmKljns4So0SGJD+7OVocCRaLbZX0NPe2vrIbeRlAyp2fiflABf5hZt8iBYLtWDW7NWtdttGwZrDpemZEMgc6YbzPYHUGqhwde1BvGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YHQCd3V0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56EGSR4a029012
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 17:53:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fK6x+ly3xuI/2lAjrk6WHaK2Wj/VJnTiR8SzPU9LGHk=; b=YHQCd3V0Cae+VGUk
	84WIQIRbGymyYAmUvvD4+fCmV2kNvPOF6HVlOqX5DLwSrU6S70yklbcgbE/4BCL+
	EeN22p30ny++MTzzLnKEHGe51UUxwLOAJgUuS0WGNTIrTLnNOgIaKUYRn7yRh/Tx
	8OKLguXe81zaLvLUDJjY3O1ECX5PfZYGD5s8C70atShXlot5Y5W5hClCDa5B2Pp5
	Y4LD/R6L5paSi+da7NqbFjTDzxrtyETwZQO1CVwYdabfMwdbt8ue2kWMe43HHnJ6
	aGbxmaWCbzrXJk1NG2zKXdHN99bw12m1k7OrE9pgmYJ+zy2yL0Hy88DqR2D03cTL
	g/1Y/g==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47w5drg7gw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 17:53:46 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6fafb22f5daso2836406d6.0
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 10:53:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752515626; x=1753120426;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fK6x+ly3xuI/2lAjrk6WHaK2Wj/VJnTiR8SzPU9LGHk=;
        b=YnG+sKufUD/p0o+mWFePrn+t9bm7zUmk9J9f9Jqsp/BYShrchq865HpF2vu4N9s2K5
         eawYmMXCZuLQoFKKVSIuvHREtBPaNLUIuGKH5UfAxVhbzDpgW6xwvAz25uLU5GqFqeB8
         wbwXp6XH22doOEHQVdIKQ4OZ9PDso8jJEJLUBhLohpj/p2flkOrk2dVceB0Kcc9dKCwp
         Lq32l/a8N9ppWFP4N8mU9r5LOMOk1dMC9SpjK6K5Vc9I1IXdRVwb7mx6e30zL+KEgkEb
         4R2WqZwbmAP/QQhOWAlGueeVoSHyu+U+WkwNof95qQTkWeH7op1fdweEsJXiIuxE5a+f
         xWPw==
X-Forwarded-Encrypted: i=1; AJvYcCXoO2GEKY0T3t25+qe/SL/1V2cOS50B15XJKpjDR5CpgrvUGsYkEcgCBR9x5kDl7BH6224ZIUz7dUJp@vger.kernel.org
X-Gm-Message-State: AOJu0YxqjW9+omLFeWKXS80nmTxKANSJsNnrY/0qGhF6SjF7C/01XitQ
	CoL+EEPGLHLKNCeBTqyFJHZ1hLpCaGy/Gm5bSlvWi4zQAl5MF1VErrkqJEX92+6b+Cfb/3ODLBc
	usiQ06db12waXOks8LpJIWRRPeX5bS4jlXsM+YcGOwp5qe0sT8gqUf1AT05fb6hRR
X-Gm-Gg: ASbGncv+fk3IQGY5mOzMdFgkkW+AUOPiakkP8+/J1mzA22J+Q0C7UHgUb3UqDtbRa0q
	7A8cEVzY0e8W8NTh9HFETp5Sa3FpZpYZ1OjzS2l9eoVmgHMagKexWECAkcFZLdOqeQKla809H2D
	kigNIbvehy4tD2PPKEqvUe8AsQfIix0gkXtFcGhXvDmT7FF2mm71AL7AXe8Kv51+b1iAeuXiCpY
	+4N3ZN5DLXFjzGcuPAOZCymlpe4KpYTCJax1tNyEkWHdiY60izcw1q1Oml4tiMp+QJ7Eyo4Yc5u
	tK1zYl7WaaG2hDO3LvZLKyzWBZi8gS2w9bdLn9nQk/ko50G7RP0qrjwjzNUt3cZ8GypvIuxGkQg
	tcEUmAsdF/KLT9Xz2nBB4
X-Received: by 2002:a05:620a:618f:b0:7e3:2d1d:bda5 with SMTP id af79cd13be357-7e32d1dc30fmr148797885a.9.1752515625437;
        Mon, 14 Jul 2025 10:53:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH33J/OmI1AFTIjnQFvLICqDRKARWzq6lcWnIeXIfJs1esBEhAy06+UMvKScpJWaDTw5mOsbA==
X-Received: by 2002:a05:620a:618f:b0:7e3:2d1d:bda5 with SMTP id af79cd13be357-7e32d1dc30fmr148796485a.9.1752515624920;
        Mon, 14 Jul 2025 10:53:44 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-611c976ec04sm6252166a12.60.2025.07.14.10.53.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jul 2025 10:53:44 -0700 (PDT)
Message-ID: <bf78d681-723b-4372-86e0-c0643ecc2399@oss.qualcomm.com>
Date: Mon, 14 Jul 2025 19:53:40 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v2 1/3] dt-bindings: sram: qcom,imem: Allow
 modem-tables
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Andrew Lunn <andrew+netdev@lunn.ch>,
        "David S. Miller"
 <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>, Alex Elder <elder@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
        Alex Elder <elder@riscstar.com>
References: <20250527-topic-ipa_imem-v2-0-6d1aad91b841@oss.qualcomm.com>
 <20250527-topic-ipa_imem-v2-1-6d1aad91b841@oss.qualcomm.com>
 <97724a4d-fad5-4e98-b415-985e5f19f911@kernel.org>
 <e7ee4653-194c-417a-9eda-2666e9f5244d@oss.qualcomm.com>
 <68622599-02d0-45ca-82f5-cf321c153cde@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <68622599-02d0-45ca-82f5-cf321c153cde@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 7Uk4_NNGX5TRpITtSIsUHGSKX0GFerY1
X-Authority-Analysis: v=2.4 cv=D4xHKuRj c=1 sm=1 tr=0 ts=6875442b cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=kRKpuzDA6j_fRx5RDl4A:9
 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: 7Uk4_NNGX5TRpITtSIsUHGSKX0GFerY1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE0MDExMyBTYWx0ZWRfX3V7yAyxpYm5Q
 S1ZR+y7BYETTqTlIRNB+3GqQhdjzsiQaAmdvMzxZpo6GxPsxX9WScJ8fUoop4Mb4e5RN+JTxLtj
 8GoJGLbtervLA7UL29tBeYFTT9nyy8lRol9ePKZsDaezcg3otWnwDxxX1qw8Ei/yGLazHom/VyS
 t1ZsFpjxdBG5gybpGZvfiI6axc4prA1lLt4QlEewV/+po0x3tVQYgNtlXEgZJhDTyrcwECJSHTs
 qP2wyaYpCJsrH8jYL3tiqnYri9Q86iuIkTXKVf1PxyVT+cOfy3fqTU4FsSp7vo5ilLciXVj4VM+
 O4NIU+XdMeyGrglQRHBmxQt7/MMHc00ylSe0qFcwJlY2+myYxKPPvoirVLB8Iq2NPbkb0aspDeq
 Tra88nwpJmwjw9DFoc0WU5gZ11oQ7+NRVHV9ucfj1sGzZMEkvkd2ukqYIy6Q7PrHCRNlCvTd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-14_02,2025-07-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 mlxlogscore=999 impostorscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 malwarescore=0 suspectscore=0 bulkscore=0 mlxscore=0
 priorityscore=1501 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507140113

On 5/27/25 1:42 PM, Krzysztof Kozlowski wrote:
> On 27/05/2025 13:36, Konrad Dybcio wrote:
>>>> diff --git a/Documentation/devicetree/bindings/sram/qcom,imem.yaml b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
>>>> index 2711f90d9664b70fcd1e2f7e2dfd3386ed5c1952..7c882819222dc04190db357ac6f9a3a35137cc9e 100644
>>>> --- a/Documentation/devicetree/bindings/sram/qcom,imem.yaml
>>>> +++ b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
>>>> @@ -51,6 +51,9 @@ properties:
>>>>      $ref: /schemas/power/reset/syscon-reboot-mode.yaml#
>>>>  
>>>>  patternProperties:
>>>> +  "^modem-tables@[0-9a-f]+$":
>>>> +    description: Region reserved for the IP Accelerator
>>>
>>> Missing additionalProperties: false, which would point you that this is
>>> incomplete (or useless because empty).
>>
>> How do I describe a 'stupid' node that is just a reg?
> With "reg" - similarly to many syscon bindings.

Is this sort of inline style acceptable, or should I introduce
a separate file?

diff --git a/Documentation/devicetree/bindings/sram/qcom,imem.yaml b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
index 7555947d7001..95fbb4ac9daa 100644
--- a/Documentation/devicetree/bindings/sram/qcom,imem.yaml
+++ b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
@@ -67,7 +67,13 @@ properties:
 
 patternProperties:
   "^modem-tables@[0-9a-f]+$":
+    type: object
+    properties:
+      reg:
+        maxItems: 1
+
     description: Region reserved for the IP Accelerator
+    additionalProperties: false
 
   "^pil-reloc@[0-9a-f]+$":
     $ref: /schemas/remoteproc/qcom,pil-info.yaml#

(fwiw checks are happy with the above)

Konrad


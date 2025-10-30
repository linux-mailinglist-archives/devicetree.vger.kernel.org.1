Return-Path: <devicetree+bounces-233142-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DC4FC1F65F
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 10:56:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 91642188583F
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 09:56:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B9C5340DA0;
	Thu, 30 Oct 2025 09:55:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="llXfMHF5";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PLNquPMg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3F5A34D90C
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 09:55:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761818147; cv=none; b=raC5jmAItGG3UuJHXUl4/sHXcHMBWDAyalMhaJ1TXiFUMt/wA0u8++eCTVER/7LYRMRMxI1mGSOjBbxlCBnQbnZS9Pa2MAQnS1q8uacQHXM/FQQcnxVo1meKuPUNqZyZlEFV1dMyA0myo/Myi/OIpuASmhs2ttsaDxsg2nRcIMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761818147; c=relaxed/simple;
	bh=slKW9L5x+Vd9nonv1JxQPKYUvCioEofsk+O6FXGrWEA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=g6hMHNGJG8r4du9a4PFQ1MpGpphhj3UjWR73CrrL26pQ0+zOkL9fxWwP6E2nvh62DdIjIGb6BzSm82eo35Yg5bDsd2h21lKBT4WFrGsAQtIcxoEzx3XJ9HEHnQHegt0JFJi/0w8ha8NYdKo4eCf7Ya+x0o+ZgnOrjKmqEq+Dfeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=llXfMHF5; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PLNquPMg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59U9WNuF3117126
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 09:55:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	J5/Jxy6FXaPiBQjK1w8+WRc0ckZ+y5lc27V0KfPeyZo=; b=llXfMHF53jrUKs9Y
	rpYYL+GoyBt5fZp1tqfiR2y0mJiZ0y9KbVxny3EgyYPMSsfEh/G6cUFq2VmbIFnN
	kKQfTo4c/sR7ux2eRLdU8S91RNcGDOwTjfDPSnix/8jW9dLqgPt2KJSb+YpL2QTe
	xOY6B0yJg++b8H1vNWCgQm/bQfkHRDyEHdSDulGgy+TXSOKdTaSlEyRcXac46Ojj
	f4FN7FVn1flWnCOCoq0SGX9KcG4wBFOO8SMqr+N53bgL6mPogjg0FWqfgsxGNq6E
	A0svXhoXOPSyJYs/Nfxo9oNKZJSZu3aFA6YFc8BffY4uDCS7//OJY34OgeQmioDu
	y4pf6g==
Received: from mail-oo1-f70.google.com (mail-oo1-f70.google.com [209.85.161.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a45frg2ta-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 09:55:44 +0000 (GMT)
Received: by mail-oo1-f70.google.com with SMTP id 006d021491bc7-651e9210231so1220540eaf.3
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 02:55:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761818144; x=1762422944; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=J5/Jxy6FXaPiBQjK1w8+WRc0ckZ+y5lc27V0KfPeyZo=;
        b=PLNquPMgjYfRiVT9j1YPs/VTF1CTPkCAlAk1OQQdGyEOD93VJXojzC0LqHFQLPpvra
         05PXoO/mcHkFGRtWz/sYe4eRzhO6v5Vt8UGvTp/zuJRxszXtkQxoDYFqJodk9crfZPsl
         XXm9NcJOzaVHcGhVAPUhkMIeJpAzQS2clyhMHWMATGdn1zBVYBrZps97duh6rY/7tXkN
         WTRqA0J8+iGYqwDN1uNAuJbinousCO2TU3/Lyr3fJ5o+0nw62+zb4fmU+n61quU8ulT4
         i+QDtPaFcGOuvEFlVQ7hbMxaxJZhrniroiZohSp24B+wFpUn8EpwTdqJG/qTpYwlBJd9
         2l3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761818144; x=1762422944;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=J5/Jxy6FXaPiBQjK1w8+WRc0ckZ+y5lc27V0KfPeyZo=;
        b=IP3soCY2euGHOMqA2+lg0aP0Wcp5y6U2HANDmss29luIBtc51oEcw1Iw9LIflSevVw
         U8XYWDwl5xgXJkKzNfECZw0KfdT4u8WN9PZA1mnMFL7YQYJOSjCdoJTbWj7fRd7b7CXD
         J53P0TPuFgQwe6W6TEMJsmZEPKyzkzNGusqNCXWUs0wLeBpV1hGrOkjcit0WCoOIj9q1
         pTg+gsgVcJS3W9yNU/JDHWcyJAP8PHhM35qVQMwViaDC2vGFWAlLHKad9dDCWb8JmZm7
         eLW8sAPim5TPS8gCnmW6Mel3gzJTRz+P+PoEGvsFyOvgKsAnWlJph+oKkiLKfqG37042
         InUQ==
X-Forwarded-Encrypted: i=1; AJvYcCWXXJeLGloLbPQZYzZiBOq/MUNOMAbNcGI8/UtZvN1FOxwOETCV7gh4uPaLxrf3ePouutU3XC9tpta0@vger.kernel.org
X-Gm-Message-State: AOJu0YxrfinahpaVi8uv8gXunWM4Mmxn9YVw4hmqTS1NoX6da6jVyMG9
	LyjUeFRuWgXO/Y21RDbWlR3pdW5Ip2HN712ais+FElXndE3diDCrWS9s5sfiDT1t8bsPLYFgdaL
	2sy1lWjBCGM6Y0n+MG/dOBQd/ukHhDA++yv1LIeDAed/eaus5GH7jOFdyv2QWqdA1
X-Gm-Gg: ASbGncu3R8KnOnIPi+WzYSXlN6oQhPWSuT/7fOAzTw2wR+IozApKHiLiiwJ/INSKXhk
	SCpnjkQqIcb+LonD6Y4lw1rT23nfuHMuiuLTrW1mXVXMdumbI+cFYgEk1LTZFcA7bOeuJDVEelh
	g12rcyEce3I8bD5ZawjNza7u1jiix78nrWd6lmTrzP9yd6QLDJqRunot4AFN21KbgPIBN6JgSay
	ExD/z+WrdRtf1MCj0Hs2L9n5MU+hP1ogf3TcRQSmRWljRBu+sN/jF7YLLnH8eHYeVtQj6hUdxy0
	32yBBVbJSTo9abAGkQhQYoBLATHqkZZ2L48WHf09qy8nucHCm/oWZdsMaCLDjoHDyaJk5j+/91c
	bi+sgaJeVs7TsA61fSlVG6gA9qQ==
X-Received: by 2002:ac8:59c3:0:b0:4ec:f654:8522 with SMTP id d75a77b69052e-4ed22216b99mr34207371cf.38.1761817347641;
        Thu, 30 Oct 2025 02:42:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH/8qp23qWFyHDBD7eZ1LN+vTcJ3LO+5eIrwfuCD9HQ3Q5hCF4435OigRG3baPksTJWu7zEGg==
X-Received: by 2002:ac8:59c3:0:b0:4ec:f654:8522 with SMTP id d75a77b69052e-4ed22216b99mr34207121cf.38.1761817347050;
        Thu, 30 Oct 2025 02:42:27 -0700 (PDT)
Received: from [192.168.68.121] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-429952b7b2dsm30920542f8f.2.2025.10.30.02.42.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Oct 2025 02:42:26 -0700 (PDT)
Message-ID: <82beffa9-d956-4820-812c-b2cd53d4a262@oss.qualcomm.com>
Date: Thu, 30 Oct 2025 09:42:24 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] ASoC: codecs: lpass-tx-macro: fix SM6115 support
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>,
        robh@kernel.org, broonie@kernel.org
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
        perex@perex.cz, tiwai@suse.com, srini@kernel.org,
        linux-sound@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, alexey.klimov@linaro.org,
        Stable@vger.kernel.org
References: <20251029160101.423209-1-srinivas.kandagatla@oss.qualcomm.com>
 <20251029160101.423209-2-srinivas.kandagatla@oss.qualcomm.com>
 <312b62d9-c95e-4364-b7e8-55ebb82fd104@oss.qualcomm.com>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
In-Reply-To: <312b62d9-c95e-4364-b7e8-55ebb82fd104@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=KupAGGWN c=1 sm=1 tr=0 ts=69033620 cx=c_pps
 a=lkkFf9KBb43tY3aOjL++dA==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=2Ovg_PPPbudXyttJYDwA:9 a=QEXdDO2ut3YA:10 a=k4UEASGLJojhI9HsvVT1:22
X-Proofpoint-ORIG-GUID: kvImpmFF8NKPxhq98MJD7sg6VbFw9rrP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMwMDA4MCBTYWx0ZWRfX7U4y33DL1xVP
 WoVoh+qFJ+yEmOi4+V1kUfR32GKhLQtJ2Ns9Bcmd3knRRrOXlSm4SPPlZnNKwoTYiH87S9H+48U
 QOW9eq3y4UtWSsYc8jo7c4/OMNaaOt+jJ8nwUNRAYbamHQ/3kwvsPJz1wzduOOshr6wY7p7zDFF
 8iLRhKHKSD8qN21v4kR3sh4Ui58XZr2oUn4bPJo+NXK0k44jzuFOodbTPOPiWNe6pV8xsiZyMJR
 CfoncfXPyvcbuSQQZ5nvFwix/fP8kB0UvtzK4eQRHWzivTem/dSVReCoIkKGYnikVXmUzIwpH52
 bbSYOmGcMd7BawdHovZd19pzBKi1VZ/qzp/K4vwNegvZzG5dudoKYMzSnqordfYLQ4jWNF7qKXr
 bGD+8JemjAdgs6m0IXvQ2xSdEK3y+A==
X-Proofpoint-GUID: kvImpmFF8NKPxhq98MJD7sg6VbFw9rrP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-30_02,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 bulkscore=0 priorityscore=1501
 clxscore=1015 spamscore=0 impostorscore=0 adultscore=0 phishscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2510300080



On 10/30/25 9:06 AM, Konrad Dybcio wrote:
> On 10/29/25 5:00 PM, Srinivas Kandagatla wrote:
>> SM6115 is compatible with SM8450 and SM6115 does have soundwire
>> controller in tx. For some reason we ended up with this incorrect patch.
>>
>> Fix this by removing it from the codec compatible list and let dt use
>> sm8450 as compatible codec for sm6115 SoC.
>>
>> Fixes: 510c46884299 ("ASoC: codecs: lpass-tx-macro: Add SM6115 support")
>> Cc: <Stable@vger.kernel.org>
>> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
>> ---
>>  sound/soc/codecs/lpass-tx-macro.c | 12 ------------
>>  1 file changed, 12 deletions(-)
>>
>> diff --git a/sound/soc/codecs/lpass-tx-macro.c b/sound/soc/codecs/lpass-tx-macro.c
>> index 1aefd3bde818..1f8fe87b310a 100644
>> --- a/sound/soc/codecs/lpass-tx-macro.c
>> +++ b/sound/soc/codecs/lpass-tx-macro.c
>> @@ -2472,15 +2472,6 @@ static const struct tx_macro_data lpass_ver_9_2 = {
>>  	.extra_routes_num	= ARRAY_SIZE(tx_audio_map_v9_2),
>>  };
>>  
>> -static const struct tx_macro_data lpass_ver_10_sm6115 = {
>> -	.flags			= LPASS_MACRO_FLAG_HAS_NPL_CLOCK,
> 
> 8450 has | LPASS_MACRO_FLAG_RESET_SWR here

sm6115 has soundwire controller on tx macro like 8450, so they are
compatible.

>> -	.ver			= LPASS_VER_10_0_0,
> 
> and the version differs (the driver behavior doesn't)
Its 9.5 on 8450 vs 10.0.1 on sm6115 both the CSR maps are identical, so
9.5 is compatible with 10.0,1


--srini

> 
> Konrad



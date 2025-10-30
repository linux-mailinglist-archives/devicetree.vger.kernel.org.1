Return-Path: <devicetree+bounces-233465-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B34FC2274B
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 22:46:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C01504EA02C
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 21:46:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30A3B32A3C2;
	Thu, 30 Oct 2025 21:46:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NXuJG2No";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cwhgd4RT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A32FE524D1
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 21:46:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761860800; cv=none; b=ld+T7JVP7HZ+Q9zrWsysUSdF7vsobD8QlPq+3/Luxuuez0JvMjPjQlD1zHtnXu6IJC//x8h0mnO/RAld+BsfPe4OAwsv4vOWyK59sJVyZ4XPdPpHnEa55+HhjYhk/4eh508M9NcsU785jKWtXfaLQ8GtF09zkRT39bZBVYf5IV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761860800; c=relaxed/simple;
	bh=9iy3WYYWQj4OFJDP7O7hwwFZEy7svX6PlMzByPxJP8g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=J9u8WJj+FaaoLvcjartx2K938qvd/xUELbxtB3linUxXZvd19mB+MbHPBC/450wMeI5SJ0ge1/YT279Om4NlIMwdOvVnft00sDRgT9wUAl5TIQMxTnkMaLXVxblk2cXmyTDCOwmv8cQZRUQYazJFvUWWUubYA983Y8J1AJTTLws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NXuJG2No; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cwhgd4RT; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59UFEQfo083992
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 21:46:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jVDX3iOuXAA8cHJyPrUycviFCZvCGXFR5o+pvr9LcSk=; b=NXuJG2NoEi5QuVXp
	s6/XKwFhbmebVRSNjoxnblPxGW0sPWG2U55fnfTxU4GgMipAcDQMPkfBYPfau2hY
	02vWXPjImV9oR0Bf+kheZFqfTvQ904WBTKV5HlJB4WUuGv+gX0ucp7dhSkUl60RP
	ari+H9PhudqZi8CcxLZrSiRAEmev1gtVz78ZehV92tBTbc32YxoyAPbzISlO6+25
	G+kNZKtLG+MkSH44xncsnArOhI5YuljkJxm7pHDliM05TLluC7v+m2UDWUxnBZ7z
	kKiYVK0aQHNYMznuOs4EriB6WsvW0xlBlL0um1KLHhqX0KSQ3KcxTNAkNHksrSFK
	zFKMFg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a4ag3933r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 21:46:37 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4e884663b25so40546601cf.0
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 14:46:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761860797; x=1762465597; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jVDX3iOuXAA8cHJyPrUycviFCZvCGXFR5o+pvr9LcSk=;
        b=cwhgd4RTZLBkZ85dRzkRdXqE/HkuQ136OAYcolIg05QVezswmriP5E/VyEWqDyRtzj
         k/UiEzHDZpvQMMMedZFt3sCO207pMv5MDZvCZiZh/2CNRNY0MDGiKNxF6pZXdb/lp6x+
         gGwHkK7n2EJRpnxp6unKEXlYzpe1e+Q+KaBaVfC/II6kc/vQL7QwrF5xw45OtO13hlBq
         Ql/B2WpGmHH681CDDn4bN033hSAhxqrDi2mhsIc1I1yw0QBDt3LAJQmkL/Qoi5u13hwN
         IW5V3U7MHGS3dxrWgDLjSqR9NQYTFrJYgalF7ri7qc0VLNwE70frwy8LLfIhVw5Q2oOT
         NfHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761860797; x=1762465597;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jVDX3iOuXAA8cHJyPrUycviFCZvCGXFR5o+pvr9LcSk=;
        b=Hx76tuxxSx1Alfreab553jz1n4KIAdmO3m9Xynk+fg38pc8irJb6kcLO23ESYCKmi0
         opjqlP4AZBNwlKEk4qWUSGjRPGHWHlSizQ3JWs6METiiWgmllvL1PectQX0x0s1PTG9c
         qJWRE5tzYDfrmY69BUNHurIRdB2IhjxPHMGD+Dt3qBbBBloD4H6Z7bohQ31GE478qmXs
         qkb/GT2wue09j/QQ3MSsTpLGUKbLAtLmknBMfqlt3K0eQdkl9m6Qipkg84E3nI2FhzHW
         XMA2UXYRV2yCx/sGMiSKsRT2AMF5XeSYOBnqWPn6crKUHOd07KhLkYcc7MPE2wc2p75u
         IkFg==
X-Forwarded-Encrypted: i=1; AJvYcCWo2HNUEh9xrwRKA9r5z4ienSpavS+XAMCaW0NqUIUDnjn6NTDsSjxeV6O3t/Yg2pVsfbr000Ms1aI/@vger.kernel.org
X-Gm-Message-State: AOJu0Ywm8E7DRwDh37GJotU504gh+3fM/cQYnEE4cWurLtScYqU30/cU
	zB7WmQVrBGsxZNhH3f3+9boKi/mnFTh4/x5m//DfTBbMdtpmDK0Aoh/3S//K6Tgg41CPsYQNM2B
	Vf6mCh/EM+mXz+/B/RdUMX7KLPQsPum2F7/pRtfp/mWB5tQA+hEJeLBWexfzYY32x
X-Gm-Gg: ASbGnct7OuymNNMgxjjynnzZobvaidTdVyKyKImtq24rH7dV/EM3H1IJdYFA+SBCmcp
	TX6neetI4Lcczk+E7mGdBadGzqf/Z18umyV0QpEN4oy9ZaUKahMSEOJIPvbVALjAd1a4JrlHA+4
	ZiLEsm2sjs393P1AA1cXghB6XjlrH9JGL6WQ6/tpeCN/QCo8DU5s7B2Ypbj5ERfBM7idcSqlzpN
	K2l3Al1gJj8NNGL0AkkeH5WtG07Pyx9ix6aO6cRTvojA1uiAfQBuVL+bc6GWhdLiJYh50H/B/8e
	38gglqRtXbsY9W29wPMqAtIguYGZB955S/CDmHl7aXJjB32PgRVvh+kFeMz0T9SjIDyyfDTFvst
	O5nGrLwDSytUcsLfTzRNaAqv2LQ==
X-Received: by 2002:a05:622a:2510:b0:4d8:1f72:ba60 with SMTP id d75a77b69052e-4ed30d5e031mr16451921cf.14.1761860796893;
        Thu, 30 Oct 2025 14:46:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGnuDE06delvSf/YiMnURg7d6uZPSXU8wi15UKKa4OnmjQ0HS415wTaSDpjJ2fhr2dxUh3ZIw==
X-Received: by 2002:a05:622a:2510:b0:4d8:1f72:ba60 with SMTP id d75a77b69052e-4ed30d5e031mr16451641cf.14.1761860796450;
        Thu, 30 Oct 2025 14:46:36 -0700 (PDT)
Received: from [192.168.68.121] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-429952d4494sm34634222f8f.21.2025.10.30.14.46.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Oct 2025 14:46:36 -0700 (PDT)
Message-ID: <38e7060a-4f17-401e-bb3b-d4ba0a88d6a7@oss.qualcomm.com>
Date: Thu, 30 Oct 2025 21:46:35 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] ASoC: dt-bindings: qcom,lpass-tx-macro: Add sm6115
 LPASS TX
To: Rob Herring <robh@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Cc: broonie@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, perex@perex.cz, tiwai@suse.com,
        srini@kernel.org, linux-sound@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        alexey.klimov@linaro.org
References: <20251029160101.423209-1-srinivas.kandagatla@oss.qualcomm.com>
 <20251029160101.423209-3-srinivas.kandagatla@oss.qualcomm.com>
 <20251030181102.GA128512-robh@kernel.org>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
In-Reply-To: <20251030181102.GA128512-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMwMDE4MyBTYWx0ZWRfXy0MSyPdw6IF8
 sbH9TeMCqnJSIadTRVNALvOd7orho2IQpdhaNuzB5bz6HlqySPhJm1l81bTLOmFdHKT0Q1iLVry
 CMylRNaegkB1iVvfWtYwX5MYN/IczpTXz7Z25KdgTqy0FDlXLfioZ1XYareLcqsVcc5W3UqVZrA
 4Bb40W8JZzO/xPLwRewXxV+z8pCUaNIly+c2AzQEbdyiuU5KG9CnDdhHB0hdoMOKM+xDNThz55q
 cOcuzFDW5ZhOITZ4WVM/dWLl073cFbrBZLyXGMpIvkuzYEpg6CDf3Ja4VYqf1BWai5P4W1n+fBV
 ynBaS51izZIjqgeSF1D4d3L142Ei+Ix0K2S8yDiwoE3z4vFZ1tNiCIjgh9Cl2bQRwagCZbmiF4b
 9ZLihIBtEAXMDRFAkVVm5WWPzvp2CQ==
X-Authority-Analysis: v=2.4 cv=TrnrRTXh c=1 sm=1 tr=0 ts=6903dcbd cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=jP17tGJVULRfIL2J_joA:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: MGIkJ2IJKW58BxdKcdjcY7LBq4AsIqgI
X-Proofpoint-GUID: MGIkJ2IJKW58BxdKcdjcY7LBq4AsIqgI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-30_07,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0
 bulkscore=0 malwarescore=0 adultscore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510300183



On 10/30/25 6:11 PM, Rob Herring wrote:
> On Wed, Oct 29, 2025 at 04:00:59PM +0000, Srinivas Kandagatla wrote:
>> Add bindings for Qualcomm SM6115 SoC Low Power Audio SubSystem (LPASS)
>> TX macro codec, which looks like compatible with SM8450.
> 
> Add? Looks like it was already added.
Yes, true, I should reword it correctly. May something like update the
bindings to be more accurate.

Will do it in v2.



--srini>
>>
>> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
>> ---
>>  .../devicetree/bindings/sound/qcom,lpass-tx-macro.yaml       | 5 ++++-
>>  1 file changed, 4 insertions(+), 1 deletion(-)
>>
>> diff --git a/Documentation/devicetree/bindings/sound/qcom,lpass-tx-macro.yaml b/Documentation/devicetree/bindings/sound/qcom,lpass-tx-macro.yaml
>> index e5e65e226a02..8dd8005d73d6 100644
>> --- a/Documentation/devicetree/bindings/sound/qcom,lpass-tx-macro.yaml
>> +++ b/Documentation/devicetree/bindings/sound/qcom,lpass-tx-macro.yaml
>> @@ -14,7 +14,6 @@ properties:
>>      oneOf:
>>        - enum:
>>            - qcom,sc7280-lpass-tx-macro
>> -          - qcom,sm6115-lpass-tx-macro
>>            - qcom,sm8250-lpass-tx-macro
>>            - qcom,sm8450-lpass-tx-macro
>>            - qcom,sm8550-lpass-tx-macro
>> @@ -26,6 +25,10 @@ properties:
>>                - qcom,sm8750-lpass-tx-macro
>>                - qcom,x1e80100-lpass-tx-macro
>>            - const: qcom,sm8550-lpass-tx-macro
>> +      - items:
>> +          - enum:
>> +              - qcom,sm6115-lpass-tx-macro
>> +          - const: qcom,sm8450-lpass-tx-macro
>>  
>>    reg:
>>      maxItems: 1
>> -- 
>> 2.51.0
>>



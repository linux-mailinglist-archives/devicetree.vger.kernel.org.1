Return-Path: <devicetree+bounces-249344-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CD5BCDB31F
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 03:45:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A01F5302EA37
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 02:45:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64D11299AB3;
	Wed, 24 Dec 2025 02:45:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HVJLUPCe";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Bn7Mbe2W"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A8742459C6
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 02:45:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766544306; cv=none; b=TYamMldFDmKDEHrbgIW9738vx43U6V8VWTN08mTOPhRLvRD9Cs1vSlk7WARgXvZpEzyb39TPOCUVlzOLuSwBoPitRYnU2cPRO4fNPMgh36mydA2H5qyAPVa0be/0hOcmd0IlmCN8JvhvwPiw3vNwweWTlHbWDyrNfJEhmjKC42E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766544306; c=relaxed/simple;
	bh=bD1cb1E3J3z1i8ZcgFPIL9aVpMF8d2MjSlH32Zn5Aro=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GsyrWaH4zX2sag1ejaaCMRwAxnAVcdO+OZ3BiPOCVCSXcMdDbxp7LE3uprZgyfbS0dL74VPPbCzZrC3EQe6EL9YWvwGMQnGxT37UneJNRSnrCm1tsNTY7OVlq3yyRkwRwfT5z7Vn6IURhswQdfTQDoecs17Iq7utoIhG+0/r2Cs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HVJLUPCe; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Bn7Mbe2W; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNKXe121206443
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 02:45:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IfGjHhbYw5xNFTJJyktEctcbFF/Yp9ewzr5cQJX69Zc=; b=HVJLUPCeMAjP9Hn6
	EjFK+JpMgEUsNtg80sezMg+9Nohm8na+Fl5eKYLriPdgSMtHD9ldRjRYT0Bdxl81
	zFtd5doYHLJ/q5c8tiBzZHrdD3yCTPWe5LBvcnaxME4ykBylkoUkMXFQjvj++4T0
	470kOHhMndXvWGHrTI6ymfudPNK/aBME26PQusOkoZsjlMbW3wlDuij7zyKmbNPx
	ItTgjOHqPbQtf69aWb28olQS0XClUos5P0lNfOHwZiBiOwUhLyAwHYf9oz/zbG28
	aduhMemrSExHRECrpdOe6t6Rfywr6wmbaPYJMEfuP1gHRTxbhtfxbQ6R216mNE4W
	Gsz4Dg==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b827r0qkh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 02:45:02 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7f046e16d50so9179095b3a.3
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 18:45:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766544302; x=1767149102; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IfGjHhbYw5xNFTJJyktEctcbFF/Yp9ewzr5cQJX69Zc=;
        b=Bn7Mbe2WqiltGO34vsL0/nuGMVMyFuddojI38ynAwMWMqDPnMWlKdhUN9dY4J2sZa4
         g1Sq9WV02n8g92QkAxGBVJi+CS+nufiDjHYM5W14aAcPrdD8wB2XlXXW7pekVorCPNSM
         AdMYX2gUdF5hdLV/yJO1m1ljBRe4HS28YGzN8mq/BZPG/XwHc55cUDDOFeNPziUcOfiV
         vvU8OW+pstdrYrzEYAgbfAarXypoTrMLXlMD2PRuYN0kQ1AyXV1j6XlxGKs9E+U2Lvn5
         a8+Sp2ymrw0mvwJ7IyYV6JGNKgkQXmTSup3tb8DLNLsPK1kP+fdHI1fWe4ZFe8N8kc9G
         jPjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766544302; x=1767149102;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IfGjHhbYw5xNFTJJyktEctcbFF/Yp9ewzr5cQJX69Zc=;
        b=FkDfi2tncvoPphlEt3BJ4JVp75Se3bFF6UOEW1HJs05eUoQ9auEpYQK1hChm8Euawt
         EQILfikT95cimtRLkGBLfCeOVCOTaPdeIjAbcwp/U8S7lAtH1wl1xi9jCBnC+10ZW3XF
         cMsy3RYbSBgcUWPKPuKd+3BU0KdSF0FzCxwv/hkMTT4MnmkVEnLS+wnguVIXO3735E5O
         Zt243QMkTfuZeVRj5zxfx9Qy9c7OHYCq1PJSd23Y4uCN6aDUvkRE6vq+03+8QRLLE/Hw
         SjKGfMo9EJB7iVh/DuHALztV1WbCnVLJIASiLl0FNg5WBpfJo3rk0ESidrMElTTl3/yo
         1WJg==
X-Forwarded-Encrypted: i=1; AJvYcCUJT4Q/j5/Asnd2dwLd5wabv4g0Twlqx4hNqMLM5VC3FY4K+/k8+xWBcJPsjSd0z1m98JTS5SvtxI1W@vger.kernel.org
X-Gm-Message-State: AOJu0Yzgo5DTdWLfoW6HGB1LoxighdCZoyXfxjwFGuYF/gvvi+RjfO+q
	yR2mN62ZLmb88ce2g+rpf6A1M+QZr/wFBnQ3LjHTKLcRKA2Ou4E4JzwG+2yb8cPPKB+4aFrGRx3
	HE7wBpkEZZsT4K/TbfPAM4HIiGnINfm9rjKC3iwixf6AVTdboJ/SsPqQmoE+Izu1Z
X-Gm-Gg: AY/fxX7DmZtztpvZnxaXpmLntjvX535Tx4e9Tq4NlfRQsmCNEdTRUmLH1L2hckP8pG8
	9CoE9KrkWo/o3gPFizKlmh1bYpwRnNEfzuU8kMZ6VfeP9p07/rDCWA1Eh5vufPdvn68pPrsodTQ
	+aEtjWJlLXDjlCuDg6IyMrPB7U4UvkTI3OvjR2YfY6GlHdL1aHs+Le8o/+wZSxp9XxNOonW9ntZ
	2l4O7NTb2MM/6DHwmUfwARlnPoWuS98SDMSXcpUVoCyjJ3b3FEU0vOh8sKWMCfeAbG2AIMXBlIl
	kb7nhOl71jN/Bp8onF1sVJhiltXVqc7z1qrn9s3t5YkIVcXNKBGI1TUP/xFDMeJrZMSGtlSuZVh
	iqozehMLU7IyKt3eaqeQbgtdwjiG9NqEGm2UKboismOVJ3MeUrGY+To/WDaam7bxPg2kEebI+oz
	AoKWnT
X-Received: by 2002:a05:6a00:1bca:b0:7ad:1e4:bef0 with SMTP id d2e1a72fcca58-7ff64403ff2mr15613564b3a.4.1766544301869;
        Tue, 23 Dec 2025 18:45:01 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFWQuhrBW4esQyr58tJTAvLN4g0/+Ce1v8UPn55MvG0FsmylDmfWdjb4pgT3FzooaYOpOg01w==
X-Received: by 2002:a05:6a00:1bca:b0:7ad:1e4:bef0 with SMTP id d2e1a72fcca58-7ff64403ff2mr15613538b3a.4.1766544301400;
        Tue, 23 Dec 2025 18:45:01 -0800 (PST)
Received: from [10.133.33.224] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7af2ddf2sm14968649b3a.19.2025.12.23.18.44.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Dec 2025 18:45:01 -0800 (PST)
Message-ID: <bd5f3700-8c4c-420f-a3d7-5b2429c0cd56@oss.qualcomm.com>
Date: Wed, 24 Dec 2025 10:44:53 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/5] dt-bindings: remoteproc: qcom,sm8550-pas: Add
 Kaanapali CDSP
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251223-knp-remoteproc-v3-0-5b09885c55a5@oss.qualcomm.com>
 <20251223-knp-remoteproc-v3-2-5b09885c55a5@oss.qualcomm.com>
 <20251223-loud-pastoral-ant-f9e74a@quoll>
Content-Language: en-US
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
In-Reply-To: <20251223-loud-pastoral-ant-f9e74a@quoll>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 9teSwU2ywbktHnzxqECTuyMtmgXk6TaJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDAyMCBTYWx0ZWRfXwdpm5W8qagwr
 wPTmsyST515FSoPjC1Y58Dj4NbsaQBwsxVzaB0ukSeeRt4eK5N8+jyvURsrvI2S4e9t4j2hRCRQ
 md9Y8fRjRHPGNotpEC/w441Yk/1lF9VPiSWDWqHrRf5fMtXpomZl/HjcVGP6Cm0vMB00y1xIpRu
 t6iEhnKpbwKCKyVJGv8oVWui1xGzxIqIIxDijJmRdYCtPOY1W3NxdgT2YB0HObcazczGiaje/sh
 ltqGky9hQ4bWE7ugszGmjwonMu3l85130mds5D3upThPRCHGuRACPV3it7pBtMvBI6LjNP221A2
 ZISB2HWyPpMfZp9IH3+NWu9wYsqKv4gyhhgHbgtIXst29QmF58tC9Ie7eng6OP5ZhPcxyMqZ9rk
 6NmZvr19tlql2eJm1vjPFwM7zOKILDb1zjrsbO0iI1m6dEMFoTPaO5qRkQKHqGrgPZaaQIubgJG
 gAew3V5LnFVDJDvib0g==
X-Proofpoint-GUID: 9teSwU2ywbktHnzxqECTuyMtmgXk6TaJ
X-Authority-Analysis: v=2.4 cv=RbSdyltv c=1 sm=1 tr=0 ts=694b53ae cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=4G0_3PWqEY5C_guDPkQA:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_01,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 impostorscore=0 priorityscore=1501 clxscore=1015 phishscore=0
 adultscore=0 lowpriorityscore=0 bulkscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512240020



On 12/23/2025 9:07 PM, Krzysztof Kozlowski wrote:
> On Tue, Dec 23, 2025 at 01:13:48AM -0800, Jingyi Wang wrote:
>> Add remote processor PAS loader for Kaanapali CDSP processor, compatible
>> with earlier SM8550 with minor difference: one more sixth "shutdown-ack"
>> interrupt. It is not compatible with SM8650 because one memory region
>> "global_sync_mem" is not managed by kernel on Kaanapali so it is removed
>> in the remoteproc cdsp node.
>>
>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>> ---
>>  Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml | 5 +++++
>>  1 file changed, 5 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
>> index 31dffd02125a..3b66bd106737 100644
>> --- a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
>> +++ b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
>> @@ -35,6 +35,10 @@ properties:
>>        - items:
>>            - const: qcom,sm8750-cdsp-pas
>>            - const: qcom,sm8650-cdsp-pas
>> +      - items:
>> +          - enum:
>> +              - qcom,kaanapali-cdsp-pas
>> +          - const: qcom,sm8550-cdsp-pas
> 
> This should be placed before list with "qcom,sm8650-cdsp-pas", because
> we generally sort them by fallback.
> 

will fix this

Thanks,
Jingyi

> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> 
> Best regards,
> Krzysztof
> 



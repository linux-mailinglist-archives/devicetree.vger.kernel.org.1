Return-Path: <devicetree+bounces-251326-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 58E94CF1907
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 02:34:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DFB0A3000525
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 01:34:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 428F62C15B5;
	Mon,  5 Jan 2026 01:34:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WFTfOn3C";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SN5QNP3C"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E28C1917FB
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 01:34:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767576852; cv=none; b=C2y/wSqr0EQaotki7nGQqNQaG2DIuRghPczjQ8uCTsS4jn4iCP6/okWLehP+G2GBan69ixuya135kN6avqyvYpqWqcyaoj/G6m7XvM0OqVOBFv6FODlI8RnimhUw7HaL63UeCIXmfWBtI8zAzFGNc4bje4a6cJAGwyIMrfy4Iy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767576852; c=relaxed/simple;
	bh=IGm6aXWiZZ/XZSfn0JNKIZmBWFFh8AnQnq2fovA5sWQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rhgUJJUxvNdhvdBYwpt04s3vqL1xXn7+RNsD4UQespV5yVipl9/949rlxqskmADtLDhL6yR4tKBIv4Pna/u6KzZrEFcB+qO7r+BT6+yjNTZAKuylO+YzfSbAnGtYj/3eGEybB8rcEip2FbRUdhWUECa3/fCkRjJQnOjgjCbrSm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WFTfOn3C; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SN5QNP3C; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 604NDdCW3478453
	for <devicetree@vger.kernel.org>; Mon, 5 Jan 2026 01:34:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6tuYxtSJ3jgyVa+7fnJ/tPQ8W2cf3H4jb98mjZUZblY=; b=WFTfOn3CEGwP6HQE
	xnDcP1KOSdE2XN2QhyrueO4EbYCLH9QGapZW3qdqsgpIt2+HdDatnb1mF5ArMkt0
	unZ8xXV1DnsXUoSQXFMSCA5djZLmJtIPpHqoa5FeLM62DdIl7cDqcOSmgp4aP0r9
	pL3VYdR7TRkUGhU4byyx6RtveC/Y7nD8WC2rCwttP+BS9V1Srv0HsuLftC7aSdk5
	W496pbgcC+pzz46H22DcN6qPRlhoKaLHIQxxzlsWc6WQyotiF8EgAdeU03txQ1In
	JC4kfgFZu2L6A1FTpTw4ucXyqZDbq3v6/6HBdVHVjtcoBE397wfZ7jbW34VQE3xZ
	IJI4Cw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4beywdjf9a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 01:34:09 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2a0f0c7a06eso286843955ad.2
        for <devicetree@vger.kernel.org>; Sun, 04 Jan 2026 17:34:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767576849; x=1768181649; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6tuYxtSJ3jgyVa+7fnJ/tPQ8W2cf3H4jb98mjZUZblY=;
        b=SN5QNP3CBIss7xq9Cot+JLUdlONXMcTBJtd3oS4GHowpLUMnU6MfRQXvgybL+lZ2to
         D58kwUIEkIE1CacI928JPgEeqkGq2+0Fq+AzNdJnVFLZUAKKWhHMJQfBa6TLoE5uAtZh
         IicVDSm5htUh3xuHT31jn3BOqeEz+ah+5Gl1fuL8aS5m5ii6wlCn2n9IDDcp2/fRdnqz
         shLnt2w53Yf8jhMaTRGDFe7VnBPfYjv1W4r9l3t/b4853wayZFyJty9IKNRWaptW26yg
         JeAHqFFgZOXOz75kzR/Squ/ZFoloQUqkfgn9dpzp9Eg/CO5owGdjRXgiFxFunijDB4E5
         m5yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767576849; x=1768181649;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6tuYxtSJ3jgyVa+7fnJ/tPQ8W2cf3H4jb98mjZUZblY=;
        b=oiN0+fYksKEHs/HHnbq3Da2qh/4nf2s3MwyYaOQ/vPCTzuNV02VQlVBAFaMjYjlnyI
         reV1kxwC6w57tFsnpeOenj4/RHd8QKqFfxQGCwl0x8GI78poGuQwq/OA8Li8piCiKhM6
         lOkKikEVvtaTCR7nrg1oO0sXZMMH+Tf6xR2U69SqI6wN1kgzzR15wza+FaHeLJSUlj4o
         hrbMllafBUyWBT7j2O7+9nlE4f4rpnzzFBaa26ZHB3C9nl2Ov35PIQ8RKtj3Hu3nXFP5
         pequc7y9lG44fwgMk27v2HGm3dEbrcw18QF0mfoXup/yINKpAeGUVb+rzaxgzkT8RqVX
         HkSA==
X-Forwarded-Encrypted: i=1; AJvYcCUaD7YUqKWQwPixYoQweze5VfF+1vXsZAV6Gv4NxkVMl5B0+2Mo0c86/+pEAq4BkSaipkx7OV5l74ls@vger.kernel.org
X-Gm-Message-State: AOJu0YzxMSOtE50s5RRPNZ+RenDAp/encwdQO5kvAfE8FgwjqBtM4/30
	GCBDoExhUf5JbeYCDLVhbeOpfcBpFge1jwaGkcr+hBlfBm1BH4kCsHgBYiLINJUHUQ23PWUgVES
	6cnXub/9/cc0qsOopI9fAFRWq9yLMgrxLfuSVyaN2d1+tr0jjXUbPNu9E/NF13W43
X-Gm-Gg: AY/fxX6ueEgYpJFTTPwFswDRF31hhj2XsrNHfkv7MSf/iWdCbtZABE8erdNilqAJJFn
	PYKvhas5UPSVG0lqAAeE2pKfKlSNv4RAydciFloKsqDjGyrgGj+f4LlR6Ah1csTgUkXw7LhRrUy
	5jO8uys2gGwg0trd9DmmkpyWdnXt5M3pKpIt6EYbcf7pRmzn+Zq7IBQLnccCZaWtUJymu/1XXt7
	7+6DQ/kKeSEpQBmiMy0smu1qz6pPb5EGTyBxzWjMSBjNCnSd73C5H3PJNPU17fSdtFuD6xHLyJU
	JPQXhxMvhwH1HtYPkxZlLTimlBUAaxUWVztpuH919wixsTYYrMwNPWn4woTaIp06V2xIDj/0oeg
	3XvuMwdhXakU5CINi9MX3wePuPWp36hTueT8wtqYKTiUUTs6IEmh5iF59FgBKaidEbbJl8C1YEv
	4=
X-Received: by 2002:a05:6a20:394a:b0:35e:7605:56a4 with SMTP id adf61e73a8af0-376a9de58bfmr46505626637.51.1767576849039;
        Sun, 04 Jan 2026 17:34:09 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHB97Uz6BLRebEcWCQq6sn6vCRFtbpKIGtOpQyt/EzPp2umNX9MVpttk4y6nc1VCysgvb9pIg==
X-Received: by 2002:a05:6a20:394a:b0:35e:7605:56a4 with SMTP id adf61e73a8af0-376a9de58bfmr46505607637.51.1767576848553;
        Sun, 04 Jan 2026 17:34:08 -0800 (PST)
Received: from [10.133.33.149] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f4776df4esm4428132a91.13.2026.01.04.17.34.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Jan 2026 17:34:08 -0800 (PST)
Message-ID: <ba4f1e15-789e-4838-9d44-8cbf2cbbd38a@oss.qualcomm.com>
Date: Mon, 5 Jan 2026 09:34:00 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-binding: arm: add CTCU device for hamoa
To: Bjorn Andersson <andersson@kernel.org>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach
 <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Mao Jinlong <jinlong.mao@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251106-enable-etr-and-ctcu-for-hamoa-v2-0-cdb3a18753aa@oss.qualcomm.com>
 <20251106-enable-etr-and-ctcu-for-hamoa-v2-1-cdb3a18753aa@oss.qualcomm.com>
 <076f6aff-4f9a-4630-8e5d-c11f0272de70@oss.qualcomm.com>
 <kvvagn7badh2q2y5pmcp3m2pvazmax7xwuumr36twekagvdvs6@odqinwynfvjm>
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <kvvagn7badh2q2y5pmcp3m2pvazmax7xwuumr36twekagvdvs6@odqinwynfvjm>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Sc76t/Ru c=1 sm=1 tr=0 ts=695b1511 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=7CQSdrXTAAAA:8 a=EUspDBNiAAAA:8
 a=ye0mpR1ifiLF_JCK0RUA:9 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
 a=a-qgeE7W1pNrGK8U0ZQC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA1MDAxMiBTYWx0ZWRfX9HQli2B17t9F
 TLN66qm0PtjFUHdPGFzzOAip71UhOUOo4AM4jbDTxDpL6WWUrl6odhyTfwCB23NILPyub1X1GHf
 U94VpDk76Yah19DInnlFzMEG9D3obon43wyo2Tu1OTHF27lBlyEyOnNTMGp36p99+AkDl8VnAAf
 d+N6N07z56a4aI3y8VK5oWD5K5l7nHJrkjALpJovm5YkXbrJQgBW8g56NnI/7BzjmZ5qdKfHuqK
 yPZ9dCgwIjXdGDS8rzjhgzXP8tC1yqO+DLwC30BDz/yAGEmovGN86t4gpszRZ8sc5FjXolrkJuO
 l4JeigVbXWiwBcrRooFnjKR8TXDgKgiSmUgk0++dgj2OlmXjzv2cJhL/QXD0oCVI2e+41NcVbA0
 8F9WfDm3smDpOWo6EVG4y3L1ITjqqbBfudq5RXbHyfdEbct2mxQVCfUAieO4ICqhEUih/jaJctl
 Ok8gpL9cMjuFyjpzIQg==
X-Proofpoint-GUID: jExewApC_AX8Mq0Txk7QgFAoOAapejJK
X-Proofpoint-ORIG-GUID: jExewApC_AX8Mq0Txk7QgFAoOAapejJK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-04_07,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 spamscore=0 bulkscore=0 impostorscore=0
 adultscore=0 phishscore=0 suspectscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601050012



On 1/4/2026 1:33 AM, Bjorn Andersson wrote:
> On Tue, Dec 23, 2025 at 05:14:11PM +0800, Jie Gan wrote:
>>
>>
>> On 11/6/2025 9:57 AM, Jie Gan wrote:
>>> Document the CTCU compatible for Hamoa, enabling support for the
>>> CTCU device on the Hamoa platform.
>>>
>>
>> Gentle reminder.
>>
>> The dependency[1] has applied and I have tested this series on
>> next-20251219, no conflict and work well.
>>
> 
> In your previous reply, you're stating that you will update the patch?
> Are you saying that whatever concern Krzysztof had is now resolved?

Yes. Krzysztof mentioned that the patch should include the info of its 
dependency, as this makes the review process much easier.

Currently, the dependency of the patch has been applied, that's why I 
sent "gentle reminder".

Thanks,
Jie

> 
> Regards,
> Bjorn
> 
>> [1]https://lore.kernel.org/all/176615287813.688536.723538049922655005.b4-ty@arm.com/
>>
>> Thanks,
>> Jie
>>
>>> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
>>> ---
>>>    Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml | 1 +
>>>    1 file changed, 1 insertion(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml b/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
>>> index 460f38ddbd73..57dede7a90e9 100644
>>> --- a/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
>>> +++ b/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
>>> @@ -29,6 +29,7 @@ properties:
>>>        oneOf:
>>>          - items:
>>>              - enum:
>>> +              - qcom,hamoa-ctcu
>>>                  - qcom,qcs8300-ctcu
>>>              - const: qcom,sa8775p-ctcu
>>>          - enum:
>>>
>>



Return-Path: <devicetree+bounces-131398-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 10E389F30B7
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 13:42:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3EBE8166844
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 12:42:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28450204C23;
	Mon, 16 Dec 2024 12:42:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ez1YRvOt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7289204C08
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 12:41:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734352921; cv=none; b=X9OKvb2g4n68CQFgmyysY7c5vHIlT1pU9sOy2bUYlLdw9SdO4yPlurdnirgyFm4P53lUKZHHpkWmhFv40Lnmlcn921+VCgpAMUClQPHqc0z49NcJ1StuFHH0gJQTSlxWN1axL8z11sZUet2ic2s87zGidiZtvr3Hp4w9RBlRNCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734352921; c=relaxed/simple;
	bh=VAccwSQq4fCA/8MfBUF0MhQqTNbAugDW0Ufbw6z78GQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OxRp9ON+E+0itKxYRnQhMksGSjqG2F8i6EfO5SnrVT5+zjMQBCfYQl7TWON7cAa/m8Q7FqEgBXRDDRV+RkeGFwVO/WazyKhK3Vaox4sje+oXcubg1+DuROvLNkyGEASHxZm7AJWu+R8M00AamAE0MrDbUkiDqZobeXgxPTuwlMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ez1YRvOt; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BG86v40008751
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 12:41:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	D/L6HGdRQ8z7BAUo9cW4Zt4G50i3p3KgBlyrq4NsNIs=; b=ez1YRvOtHlcLli3+
	Hcp9x6abDRWdeSAxJkOu7Lk35HCFJvFAgPr0p7WyIGH/QPCy/MyCwcqBa9ktH+TG
	aBsEytjHitW4Qz/fcKbXQNSn6rFrGNwIrfvZRPAle//F+hXyXamsd4pdABQOlUzb
	Az2fvhNB6XnvWP9hZ1A24/2rkDv9qwzRpp0jcZ+rk6JCmG9ynSCreM4Qmz5TAurj
	iLrf/sUfqkV1UnngwsPESig+kV96KJir7VKcPgB1w/hh3QcLOHg7fY9s/akM5Rrn
	tZW0QZXWqaSA2K1Eg53BhvwXTaJ0E5Unca+6vqhWLTC7VFYeV+b70vBVkK8Gfqba
	BW8f3w==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43jgdj0s1v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 12:41:58 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6d8a3cb9dbfso9456466d6.1
        for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 04:41:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734352917; x=1734957717;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=D/L6HGdRQ8z7BAUo9cW4Zt4G50i3p3KgBlyrq4NsNIs=;
        b=lUmRYoaN12r4ewEF8K+ERfgEgo3sSTz4yW0Eyn0ZhR5gXON75/XpiVWCN7k58E12DP
         IH2tdd7mq0gisXPAnjR46BRsYEypIgCspMqRHAIo138uP8G7ZFkncNa682XcOjOnrTdl
         2XDvATJAlIuA28bh8oWxRQBOB0Kmmsq5gJxH3QyvgFggkcoHR/nrPbw94thSLuTxROC1
         Ay21u3lbVn+sCF3qmABTcr40meVbhapx2ngFW1/tJAaK/mIEmbWPxPaXr4A7Ef7OvVLX
         cwN2G2CQS9d1WUsKD753lIxBfkSdpw89Qt/MX7juoiuIUvXQNO2Eobk7K6o5XG37S2oC
         RG+g==
X-Forwarded-Encrypted: i=1; AJvYcCX13I4gjkTKdZ2ljTV4Qvb5/gYV99GbptqSNgpP+d5kxvFgF5x5xwHh4UWF7dWPaaER3gprk5r0XBSZ@vger.kernel.org
X-Gm-Message-State: AOJu0YyPNwa9OM42ioWIMUqJDs/bgPtP7kvvHA/HippxyJjHcsX8KUzw
	SxdkUW1DlPWS2P+0EEavgdxP4J1qy6sA8YOhqnAbUaXse1p41KhbQv9b1NxjTnfkhE4vHEWJML3
	LxvJx3md87mQZS7Wf5D99SYmXxAIOA0i3BvQugaPxv4In3jABR6q7xekY84cH
X-Gm-Gg: ASbGncsaS+1/UXG/KbgiwkmqIANvd85nHrm2iRDqvjPETGOZSFMJZlVs1vPBelJUK/0
	Bx29GFqPJPx50VbX+WN76/JdNE48hh/V9TviHHv9e332FcTUpggFtz/ksGDAVa5MSsLG7vDqCfp
	ISdu/d44KgHZWMvpENut3PUq2AMe/UetYpk0hRzv/OSXul1bGPTvM2gAbpsXHp9UhK7STe7NdHR
	H8zEn+V7IPxgNHU40t4622sWnsR6AsinR4LbiGJ+STwVd9RChD/9DLBMYROaUqksZQW7gFWdxBB
	8FIbpLPkSJx128kn3hGyR4pKbqTC2e2nKaY=
X-Received: by 2002:a05:6214:4014:b0:6d8:7d84:a514 with SMTP id 6a1803df08f44-6dc8ca88587mr74213816d6.5.1734352917575;
        Mon, 16 Dec 2024 04:41:57 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGWj/Dc/7a9GmowBrhb9GodXJ7OEKyuuWtEeMBro46otsgJAsgLqvKJTKDXcfAyhIOqIl9/zg==
X-Received: by 2002:a05:6214:4014:b0:6d8:7d84:a514 with SMTP id 6a1803df08f44-6dc8ca88587mr74213676d6.5.1734352917242;
        Mon, 16 Dec 2024 04:41:57 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aab9638ec3dsm326507466b.150.2024.12.16.04.41.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Dec 2024 04:41:56 -0800 (PST)
Message-ID: <2b866563-1328-484a-bfee-f41190ce856c@oss.qualcomm.com>
Date: Mon, 16 Dec 2024 13:41:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: Remove unused and undocumented
 properties
To: "Aiqun Yu (Maria)" <quic_aiquny@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        "Rob Herring (Arm)" <robh@kernel.org>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20241115193435.3618831-1-robh@kernel.org>
 <68c079b0-defe-4cb0-9f6f-ce9e3645e2ba@oss.qualcomm.com>
 <d3d9dd62-e0cb-4c12-91d1-17ae52688654@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <d3d9dd62-e0cb-4c12-91d1-17ae52688654@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: _l6nNRs7lSL7UfGLQwZg37KQHKYHqSV3
X-Proofpoint-ORIG-GUID: _l6nNRs7lSL7UfGLQwZg37KQHKYHqSV3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 mlxlogscore=999
 mlxscore=0 lowpriorityscore=0 suspectscore=0 spamscore=0 impostorscore=0
 bulkscore=0 malwarescore=0 priorityscore=1501 adultscore=0 clxscore=1015
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2412160107

On 16.12.2024 4:42 AM, Aiqun Yu (Maria) wrote:
> On 11/16/2024 3:36 AM, Konrad Dybcio wrote:
>> On 15.11.2024 8:34 PM, Rob Herring (Arm) wrote:
>>> Remove properties which are both unused in the kernel and undocumented.
>>> Most likely they are leftovers from downstream.
>>>
>>> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
>>> ---
>>
>> Funny, the sideinteraction compatible is undocumented and the touchscreen
>> driver is not upstream
> 
> Does the compatible also need to be fixed to "focaltech,ft8719"? Refer
> to the info from [1].

+Alexander, Caleb - would you like to look into this on axolotl?

> Confirmed, the compatible "focaltech,fts8719" is not even in any merged
> bindings or drivers. Instead, "focaltech,ft8719" is in the current
> driver and bindings.
> 
> By the way, I am curious about how Rob finds the unused properties.
> Could you share some steps?

make ARCH=arm64 LLVM=1 -j24 CHECK_DTBS=1 dtbs

returns all kinds of errors, including "undocumented property"

Konrad

> [1]https://lore.kernel.org/all/Zk4tLPn277Azd4XZ@google.com/
> 


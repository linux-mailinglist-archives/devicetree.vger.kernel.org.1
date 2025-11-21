Return-Path: <devicetree+bounces-240951-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B581CC77F75
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 09:42:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by tor.lore.kernel.org (Postfix) with ESMTPS id AEA582083D
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 08:42:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99CF13271F5;
	Fri, 21 Nov 2025 08:42:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OuvOABrM";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="L/MT6dwa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E241236D4E7
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 08:42:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763714563; cv=none; b=JmPZ9E4jTm4XNqVdr145q+n8L/EFyLT3R7AMWWBNFE8CkZwcr3dd8UbG8niJATbVV4ycv86rLUFsQj+QbMkwc8WXPB3ARGOqZLFFzQzJTTfjtBvoLYoUVSwKNxYcoPieDQDzoTKYFr/576vH1nA5I3Y/M0TVKKUB80Uapqp2Jy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763714563; c=relaxed/simple;
	bh=YTy5oyxd0JKvoSaprb8ie/MCS7BiZzqfk8s385OEXeI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=C6jf4xQmD+SsamYArhCf1+FHkw5q+KtdLhTGAE7o36Mcayb1wqu1RzLx+8wJe2VefGWmaynyMDtuP7R1Q7cadwGJ7ay+JeBBNNJY4gB/T+J6YQTkQK5By9LHajG2islOXyCHUxNZAvMWIz3ji2Stm7IOQIcdHk2QW4Ebcjk/8Vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OuvOABrM; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=L/MT6dwa; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AL6JolQ1338147
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 08:42:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YTy5oyxd0JKvoSaprb8ie/MCS7BiZzqfk8s385OEXeI=; b=OuvOABrMcbNX01Iw
	NqobG8nPWmTrYVWV+PXxmS67pO9kobA7d2NDuWXyqq1f7aMgAD8peWU3cWfnqDXz
	/QZcXLM/Bm07y6Hte2Vz8ixBAKTSgxYlOjEENnElKcRZiGPLbp63xvbLteZPFafK
	O29a9LcaXWWB87OijbOKVaXyejisOmAKzPjwwckpZjjgTmUrGN6wXgA5zu+st+xw
	x/16fqx6TxYa4YYXVIAq98DNi8zroA+SDkb9Ly5GbxWIvbETcekJTN5Mdaz90KDH
	ar/N72hzNVMRvwH3Yms/PaT3JSJ47z6jtd0FswHL74GlbquLnZTTT6t+ItOM3Zp3
	KfnEjA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aj5y7tq9d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 08:42:41 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-297dde580c8so70787675ad.1
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 00:42:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763714560; x=1764319360; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YTy5oyxd0JKvoSaprb8ie/MCS7BiZzqfk8s385OEXeI=;
        b=L/MT6dwaXUbjrIZ8DiJp56F+APVHaoTkUDEkPFmTsgtuABHZy/LmSQxNz7VXArWfNE
         Vbezg3Fp4pXtsvyugmEs9SQ4USbT+Gl4naKvHL3+1RITCndS+dhx0aaACEryK43nD3ZR
         DS1tFhqVTg2gpSb3/k++S/Z5IMb2enEAEIttcjNV3Evn45Ic1exUse+/vqqXlpZMLBFA
         7QB3yrjiy6daMStwnkxnsfhnEBgoCsHxgihozdT6alhuupPSXClBZS1MRlfvl0nGTQD1
         Tk3aTVu4LZT8FKik/k3DU7VPKljRSdwkIoowidfmOGaYNOO+vsu67Gda8XvmCjkW+5v4
         gY6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763714560; x=1764319360;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YTy5oyxd0JKvoSaprb8ie/MCS7BiZzqfk8s385OEXeI=;
        b=Mz7OMc7MIOnguEChKPM87U2lvRXrGMPklMyJ1V9TOno4Vh6aFlBqKrHDtOO3xS26hg
         lA2TNrB1dAdITT/96SxnjTWBZlTwVby3z1Wz2u+BC30aVTAqF/9n+k5jSdBXgWias8o7
         ArpbXDphfWuJddvv3hiZAY1zNGqWZI5ix7CUQZDMErd2aH6LXtZvoqrCLTdNXEwuFLW5
         r0aTkWkExrocMHPGhFsc2Odcw0WWJ17iHsNd5DaZKnW21yXYLhZnUTkAGen0RlZedhb8
         w81Kt0pnIvTY690pIG+TI5zYJhOGzElQ8UCnY8SbOWRow7Cr9ACqMi1FYJe9qIlrUZ+8
         l9zQ==
X-Forwarded-Encrypted: i=1; AJvYcCWw8v+djDBN4cE6yITIzv+3tM45aGUsAgxsVxRABQN3qT0mQbY2sFFzPP3IqZjQxo7Y+qOUNyhCdvml@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7t66GvO6J2gZbeBhv1fwD9hl8iBFChpojyUxbGVoGMA8+5RoT
	k/KZvVQbBdNJ/mj+jLuHQpmNjWdBmK68tySRFlvRZfZHVlpdGmjZ3neQQYcOwp3edsa/IFz0dN/
	y6uhJM81iHVsZWsI3o0v02WwHrNVH3OTpON2ymAt9jt3FBNlDCjQkrn9MkP1zpYwG
X-Gm-Gg: ASbGncvBb1I8U96uR/Ax0L5tSZOnXm9NRqMfJrVYxZH7ormDiWM8cUjkOhp5O8fuDAp
	Igo5mgKlX1dPbUl58ak+uZQtakYTu0yVU1fpuy/DCs2IuZ3MDL2boJOTTRtk4+6TCdJGz4B++wy
	9jnRYw2y9oa5d7f9Htt1Ki0Ie2e4GJobX5H9f1669hnb9LlcZBj4HhGqJ9aqrwQoj2Xg8LTeTYA
	7mKTSK2rkDrULl6uL9QjYBntmNZjXJ4DnnI+MpRgHqYMRxpi0R0E0WQBMTko4dwQoOyxQrtPLCe
	Tx8slu4IZG5RhoQ/sTol0xLOxAs9veF7ie7STNtnSo/5JQh8Z+YFc+D9DC9SRrcXiX4yQVbJ7cp
	CAy5t3KB1MRP7La0PXkN9JwzACIjWBKbFlnhtl9E=
X-Received: by 2002:a17:903:988:b0:297:d777:a2d4 with SMTP id d9443c01a7336-29b6bf3bfffmr22986925ad.46.1763714560405;
        Fri, 21 Nov 2025 00:42:40 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE8CpolEf1nxfKgvW81/ppQhgRAIqM5tOnSpTItw/kixNCfU8WzVCznKciWcUlcmuBKDLd61Q==
X-Received: by 2002:a17:903:988:b0:297:d777:a2d4 with SMTP id d9443c01a7336-29b6bf3bfffmr22986625ad.46.1763714559886;
        Fri, 21 Nov 2025 00:42:39 -0800 (PST)
Received: from [10.204.78.148] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29b5b13a870sm49987975ad.34.2025.11.21.00.42.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Nov 2025 00:42:38 -0800 (PST)
Message-ID: <d1d3c252-44e2-4e29-9aa2-7e789caf71b2@oss.qualcomm.com>
Date: Fri, 21 Nov 2025 14:12:33 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] arm64: dts: qcom: sdm630/660: Add CDSP-related
 nodes
To: Nickolay Goppen <setotau@mainlining.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        linux@mainlining.org, Chenna Kesava Raju <chennak@qti.qualcomm.com>,
        Bharath Kumar <bkumar@qti.qualcomm.com>
References: <20251023-qcom-sdm660-cdsp-adsp-dts-v2-0-895ffe50ab5f@mainlining.org>
 <20251023-qcom-sdm660-cdsp-adsp-dts-v2-1-895ffe50ab5f@mainlining.org>
 <07066c46-4121-48da-846a-3a180d245589@oss.qualcomm.com>
 <47b40a91-8365-4431-9fd9-1e48fad2a4e1@mainlining.org>
 <a3cb6633-1595-41e7-8e87-ca48a98f822c@mainlining.org>
 <83c3aea5-764e-4e60-8b16-67b474f19357@oss.qualcomm.com>
 <d17548bb-ddce-4d60-8dc4-2c0633989299@oss.qualcomm.com>
 <f5c7eb1c-28b1-4cf1-afb0-b993384b7712@oss.qualcomm.com>
 <80836b8f-16a8-4520-ad11-5ca0abb3403e@oss.qualcomm.com>
 <99c22e73-797c-4a30-92ba-bc3bd8cf70f0@oss.qualcomm.com>
 <eddc16cb-d951-401c-8fb8-fccfcf600143@mainlining.org>
 <0b06f744-b695-43d9-8da3-4424e2b53a5e@oss.qualcomm.com>
 <24221ce7-24e4-4eaa-8681-ed9b4b9f2d6e@oss.qualcomm.com>
 <be4e2715-882d-4358-8575-374187f7ee2f@oss.qualcomm.com>
 <975b468f-e5fc-40df-a9b6-2630f6ed99cc@mainlining.org>
Content-Language: en-US
From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
In-Reply-To: <975b468f-e5fc-40df-a9b6-2630f6ed99cc@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=QMxlhwLL c=1 sm=1 tr=0 ts=69202601 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=D19gQVrFAAAA:8 a=OuZLqq7tAAAA:8
 a=YgrMRu0H4HtzvDGEmBkA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22 a=W4TVW4IDbPiebHqcZpNg:22 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-GUID: J-Z_USzB5zIRaRUiJI8CS8d-t_AbwuZF
X-Proofpoint-ORIG-GUID: J-Z_USzB5zIRaRUiJI8CS8d-t_AbwuZF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIxMDA2NSBTYWx0ZWRfXzHfs6maP5OIY
 fpD3XmCIfpve3UBM8rJDkzbyzeLL2mr78KJwFIjyG7vLaVzPEPVDt0xncxT7zu+QJL4iyUXysiH
 IrgeHSU39BIBIKGVMjV1IoraWoO90vsZYgujXLK4dFb+SnvaC6C8wueLHyLo77g68zCFWnzjEGX
 KKHLDkMHCikCliiUZ7vYQZc5bOlncLlguZDRwfK/wVBMEIhMRIhNFJfZIgoO50a+6ZsjqNzNudK
 1o1U0tqvMdc4GKCk28wrcnxnlnTbwN48Nogd1qB5RbtHleBBpVi4yuVaGvS/qq0UH8rXf6i9ubD
 0K9Zq5yzKumHgb5yXPTLBSzPYb60B2yTEkjZKxnEVNJT9nIBmPbmHHBfWKjE1gRlwt0tJQB38fb
 97HoTObzUdLoy5NQP9zNLf9QbsmMoA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-21_02,2025-11-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 malwarescore=0 clxscore=1015 spamscore=0
 adultscore=0 impostorscore=0 phishscore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511210065



On 11/21/2025 1:48 PM, Nickolay Goppen wrote:
>
> 21.11.2025 11:11, Ekansh Gupta пишет:
>>
>> On 11/20/2025 5:17 PM, Konrad Dybcio wrote:
>>> On 11/20/25 11:54 AM, Ekansh Gupta wrote:
>>>> On 11/20/2025 1:27 PM, Nickolay Goppen wrote:
>>>>> 20.11.2025 07:55, Ekansh Gupta пишет:
>>>>>> On 11/20/2025 1:58 AM, Srinivas Kandagatla wrote:
>>>>>>> On 11/12/25 1:52 PM, Konrad Dybcio wrote:
>>>>>>>> On 11/10/25 6:41 PM, Srinivas Kandagatla wrote:
>>>>>>>>> On 11/3/25 12:52 PM, Konrad Dybcio wrote:
>>>>>>>>>> On 10/31/25 12:30 PM, Nickolay Goppen wrote:
>>>>>>>>>>> 24.10.2025 16:58, Nickolay Goppen пишет:
>>>>>>>>>>>> 24.10.2025 11:28, Konrad Dybcio пишет:
>>>>>>>>>>>>> On 10/23/25 9:51 PM, Nickolay Goppen wrote:
>>>>>>>>>>>>>> In order to enable CDSP support for SDM660 SoC:
>>>>>>>>>>>>>>     * add shared memory p2p nodes for CDSP
>>>>>>>>>>>>>>     * add CDSP-specific smmu node
>>>>>>>>>>>>>>     * add CDSP peripheral image loader node
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> Memory region for CDSP in SDM660 occupies the same spot as
>>>>>>>>>>>>>> TZ buffer mem defined in sdm630.dtsi (which does not have CDSP).
>>>>>>>>>>>>>> In sdm660.dtsi replace buffer_mem inherited from SDM630 with
>>>>>>>>>>>>>> cdsp_region, which is also larger in size.
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> SDM636 also doesn't have CDSP, so remove inherited from sdm660.dtsi
>>>>>>>>>>>>>> related nodes and add buffer_mem back.
>>>>>>>>>>>>>>
>>>>>>>>>>>>>> Signed-off-by: Nickolay Goppen <setotau@mainlining.org>
>>>>>>>>>>>>>> ---
>>>>>>>>>>>>> [...]
>>>>>>>>>>>>>
>>>>>>>>>>>>>> +            label = "turing";
>>>>>>>>>>>>> "cdsp"
>>>>>>>>>>>> Ok, I'll change this in the next revision.
>>>>>>>>>>>>>> +            mboxes = <&apcs_glb 29>;
>>>>>>>>>>>>>> +            qcom,remote-pid = <5>;
>>>>>>>>>>>>>> +
>>>>>>>>>>>>>> +            fastrpc {
>>>>>>>>>>>>>> +                compatible = "qcom,fastrpc";
>>>>>>>>>>>>>> +                qcom,glink-channels = "fastrpcglink-apps-dsp";
>>>>>>>>>>>>>> +                label = "cdsp";
>>>>>>>>>>>>>> +                qcom,non-secure-domain;
>>>>>>>>>>>>> This shouldn't matter, both a secure and a non-secure device is
>>>>>>>>>>>>> created for CDSP
>>>>>>>>>>>> I've added this property, because it is used in other SoC's, such as SDM845 and SM6115 for both ADSP and CDSP
>>>>>>>>>>> Is this property not neccessary anymore?
>>>>>>>>>> +Srini?
>>>>>>>>> That is true, we do not require this for CDSP, as CDSP allows both
>>>>>>>>> unsigned and signed loading, we create both secured and non-secure node
>>>>>>>>> by default. May be we can provide that clarity in yaml bindings so that
>>>>>>>>> it gets caught during dtb checks.
>>>>>>>>>
>>>>>>>>>
>>>>>>>>> However in ADSP case, we only support singed modules, due to historical
>>>>>>>>> reasons how this driver evolved over years, we have this flag to allow
>>>>>>>>> compatiblity for such users.
>>>>>>>> Does that mean that we can only load signed modules on the ADSP, but
>>>>>>>> the driver behavior was previously such that unsigned modules were
>>>>>>>> allowed (which was presumably fine on devboards, but not on fused
>>>>>>>> devices)?
>>>>>>> Yes, its true that we allowed full access to adsp device nodes when we
>>>>>>> first started upstreaming fastrpc driver.
>>>>>>>
>>>>>>> irrespective of the board only signed modules are supported on the ADSP.
>>>>>>> I think there was one version of SoC i think 8016 or some older one
>>>>>>> which had adsp with hvx which can load unsigned modules for compute
>>>>>>> usecase only.
>>>>>>>
>>>>>>> I have added @Ekansh for more clarity.
>>>>>>>
>>>>>>> --srini
>>>>>> For all the available platforms, ADSP supports only signed modules. Unsigned
>>>>>> modules(as well as signed) are supported by CDSP and GDSP subsystems.
>>>>>>
>>>>>> qcom,non-secure-domain property marks the corresponding DSP as non-secure DSP.
>>>>>> The implications of adding this property would be the following:
>>>>>> on ADSP, SDSP, MDSP:
>>>>>> - Only non-secure device node(/dev/fastrpc-Xdsp) is created.
>>>>>> - Non-secure device node can be used for signed DSP PD offload.
>>>>>>
>>>>>> on CDSP, GDSP:
>>>>>> - Both secure(/dev/fastrpc-Xdsp-secure) and non-secure(/dev/fastrpc-Xdsp) devices
>>>>>>     are created, regardless of this property.
>>>>>> - Both the nodes can be used for signed and unsigned DSP PD offload.
>>>>>>
>>>>>> Note: If the property is not added for CDSP/GDSP, only secure device node can
>>>>>> be used for signed PD offload, if non-secure device is used, the request gets
>>>>>> rejected[1].
>>>>>>
>>>>>> [1] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/drivers/misc/fastrpc.c#n1245
>>>>>>
>>>>>> //Ekansh
>>>>> Does this mean that the qcom,non-secure-domain property should be dropped from both nodes?
>>>> I checked again and found that unsigned module support for CDSP is
>>>> not available on this platform. Given this, the safest approach would
>>>> be to add the property for both ADSP and CDSP, ensuring that all
>>>> created device nodes can be used for signed PD offload. I can provide
>>> The property allows *unsigned* PD offload though
>> I don't think I can directly relate this property to unsigned PD offload. This is just
>> defining what type of device node will be created and whether the channel is secure
>> or not. There is a possibility of making unsigned PD request(on CDSP/GDSP) irrespective
>> of whether this property is added or not. If DSP does not support unsigned offload, it
>> should return failures for such requests.
>>>> a more definitive recommendation once I know the specific use cases
>>>> you plan to run.
>>> Why would the usecase affect this?
>> I'm saying this as per past discussions where some application was relying on non-secure
>> device node on some old platform(on postmarketOS)[1] and having this property in place.
>> So if similar usecase is being enabled here, the property might be required[1].
>
> I'm testing these changes on postmarketOS. However, sensors aren't working through FastRPC on sdm660.
>
> Is it better to leave this property for both nodes? 
Yes, I would suggest to have it for both nodes here due to the previously provided reason.
>
>> [1] https://lkml.org/lkml/2024/8/15/117
>>> Konrad
>



Return-Path: <devicetree+bounces-175211-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 033C5AB01B7
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 19:47:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 128813BA3B6
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 17:47:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B3DD2741AF;
	Thu,  8 May 2025 17:47:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mEL7x8tp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A86DF284B55
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 17:47:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746726440; cv=none; b=VSXoBRmajWtjwrViSJlPgEf4At8Egw4jvgaRk4EYM/NemJG/qRBSIBBi9ebBHj5n4+Bt7V93FpvfUQkcXTCNb3J9eHXX4M9YtAjIniGjCmuFi0RGLxGRi/pHhHeZXS7Iu/kCGDKxH0J6BxD+9lPUZf2rirhacXK8T/LU8XMfWXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746726440; c=relaxed/simple;
	bh=CnTmOWW0avGJ6C/4/XZnLnyUkGJhjTDMBIMrJHJr3F4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tSFfFAZ0DKQJQG3M18xgQPPd/3ZoUVXjz1ZXy1tgF9VBMT8w3YGuvCxc7NXiSfyVZ8+tmo7B8xCUKDrIfDlrGx3AmLyW+sUEvCwgDBtGbXFOVWH4+i1mNnJZpRbxZkkANriKzlEcndiXMLjvR0azGBJehqwd7Gd4F/njt+Y0+ZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mEL7x8tp; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 548Ck9VQ025053
	for <devicetree@vger.kernel.org>; Thu, 8 May 2025 17:47:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8xaLf4GClFtgPLfJkjDTotRAbPu1o0/zG7o/KB9SvqY=; b=mEL7x8tpiT4BDFp5
	N9N68JESPqJMOYiqDg7gP8tWwBCprdxxpw4ot+Cx5FKLRweiB7p7OL+16REj4qEe
	Iv5EQebFGHM3PGpbPcjGOzC0RXbGGx5P6RJbTRKu6bMDRjL4KVf20T6Q9IzeXpod
	YEEK3J31wBhHXFyZvgMqqVHQYENlVyX/Ui3/l+GsZwVWBEfp40N2MxisviQoSO+G
	G932TR7gTGFkf/9iWTZAXGSGo9DA70hibQkY75wuQ08+F1DdPzSQJYRiutajAAbA
	I5GsqnIZaDzVqAM+GpZg2gGQgH8flWyXu4T5+U0avVvdcanb0xJThau7cmthufxo
	krV+gw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46gnp12609-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 May 2025 17:47:11 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-476695e930bso2765301cf.2
        for <devicetree@vger.kernel.org>; Thu, 08 May 2025 10:47:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746726430; x=1747331230;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8xaLf4GClFtgPLfJkjDTotRAbPu1o0/zG7o/KB9SvqY=;
        b=KGOxKDbhZLrrl1naYRShFEVjMF0Nws3O1MNxshdKPVVymduTRDyVE4OvNjuPbU7oaQ
         Yhg/u4ia/bdqb3+uF0SYKC4pCfuKosbANyqHgPXzx/PQGSbelfcfrs2ScpWCFFQz24Ln
         DsLBxbNqIcxUt2bdc261Y3VMTXpDegfL9EAj6D3jUrKUu9mwtMcydOpiw2aFuDMT2v2V
         do71XLOu8vC5UoVS9zEgmMpSd+PoIkPPIh0tfmJ+exHo7piJ2deVEM7cWGOuED6w3/pE
         r21mXoA/UHHdSWPFAbFl/00KOvmWeNBQaj+GKj2z9gA8yn+30xdafm5dNkIw7DZHPyj6
         DvIA==
X-Forwarded-Encrypted: i=1; AJvYcCWuue+0wfifnItbZg6Xq11NQXTrICXnXt9CWhXNjwRiwTCsoPDR5W1ayTxC9fUw7tcHsK4xMX8wst3x@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6sMnYzAIgacuos5GJtJwyZ+MufWw/PiHR///BXioBqCh4Ho8w
	7yX/PIqpr/t23jpnzb+cBCCdzVBpN5Hbk4pFj7gvNxDx05mDK0gl/995o07XE7SJjIJr/3iYvIq
	vUg3iys4k4Yb56RGWVRm14wT2W36/gLcIx9mbyz8GyHP/X5Sp49OywaMZ1St7
X-Gm-Gg: ASbGncvUdao2dqF9JfyK1vdF1N5NTYabY00P2SZlfYIYJuc8qga+JimexEzQjsVtjpY
	z3vB8XK+jnFAe2cXXUlXIVq98UvnVMYL2Di+41lv3XZhyp8xL/24NIeOyCO/kivQ34CUhw2s8RK
	10T/Yisa8SW2JFQ0VUSsn5DguiRgC+DqOGeSZbYDKPT+G3ib+CRI4eE6KXCKfad03LPlvGYsqGA
	F+MeAXRVSMdZii2tP8ZgMRWmbX9tglK7wvnPD9IiENc0yEYpqD2O3Dn6PkT9yQqY0sQwdef5vls
	6VCdvx3RBE9awKD3uUY1tbPj8tBITzHyI8DuhTWiqi1PFK3qJQreXd6DgV++v4hhxk0=
X-Received: by 2002:a05:622a:650:b0:48a:4c52:bd5e with SMTP id d75a77b69052e-4945275b3f9mr1708611cf.7.1746726430459;
        Thu, 08 May 2025 10:47:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFvhGykg3X8x9Q0Y2p1gf5EMP1KF+odq0oA0O4J05qY7nf0M9TJMJFEshlbuvl4ZscKtgIAKQ==
X-Received: by 2002:a05:622a:650:b0:48a:4c52:bd5e with SMTP id d75a77b69052e-4945275b3f9mr1708421cf.7.1746726430099;
        Thu, 08 May 2025 10:47:10 -0700 (PDT)
Received: from [192.168.65.105] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad2197bd219sm17804466b.141.2025.05.08.10.47.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 May 2025 10:47:09 -0700 (PDT)
Message-ID: <703fc6bf-5816-4d11-96c3-487f9921f346@oss.qualcomm.com>
Date: Thu, 8 May 2025 19:47:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/7] arm64: dts: qcom: sc7280: Add WSA SoundWire and
 LPASS support
To: Prasad Kumpatla <quic_pkumpatl@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        kernel@oss.qualcomm.com, Mohammad Rafi Shaik <quic_mohs@quicinc.com>
References: <20250429092430.21477-1-quic_pkumpatl@quicinc.com>
 <20250429092430.21477-3-quic_pkumpatl@quicinc.com>
 <7bd9fd43-7159-48a2-bf0a-712de9cb2bc0@oss.qualcomm.com>
 <4d922876-d78c-47f0-a467-a01d9754fb2d@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <4d922876-d78c-47f0-a467-a01d9754fb2d@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA4MDE1NyBTYWx0ZWRfXx2xS6fUjwhTz
 vJUmFc+eb1RuNhrDFf1bbwardNwSgGclYTQFjiU8YWMGI03iGBS4GlLvtQVTVpxYKYUT8LB1lwc
 6qCIsXFlZIT8MLMS0flK8cr1wrefy+6Oy3u041aPdtyS0Y5QuoUbSDpnJIIHAtoOHTtCStfZ3cf
 c55furz4RHGFj7mamISWXxeop4k3YVbPbrLjWDtVmLAFrvIn/mNDbW2IaOERq8eOOoVD3P4y8HJ
 IxUmugKkUa56h8CF6Z66fhVmBJtP6iZoHrlI5uf+IDPVdFF6X3o+Yi4QtaHQyE9M2O2Nqsnb3YU
 jcEniZte+HeVetO1ENd1QEASGN5X6x9nsNNwdW2cnf3ABQJiTHivzjWIw1OLqZWGcHCesT78eoO
 u1mp7HstGb5L5l/fNLhYlJ/sJB6mtD9bBDJwseqrYk8n8u8msbdsoKt94HAUgxlQGVQUtstp
X-Proofpoint-GUID: YQszhPaHNE2LSDdKQMy2fkzyveSwszeZ
X-Proofpoint-ORIG-GUID: YQszhPaHNE2LSDdKQMy2fkzyveSwszeZ
X-Authority-Analysis: v=2.4 cv=W4o4VQWk c=1 sm=1 tr=0 ts=681cee1f cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8
 a=geHZUW-4pJ_eHiBijMgA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-08_05,2025-05-08_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=999 suspectscore=0 lowpriorityscore=0 phishscore=0
 priorityscore=1501 bulkscore=0 spamscore=0 mlxscore=0 adultscore=0
 clxscore=1015 malwarescore=0 impostorscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2504070000 definitions=main-2505080157

On 5/8/25 6:31 PM, Prasad Kumpatla wrote:
> 
> 
> On 4/29/2025 4:21 PM, Konrad Dybcio wrote:
>> On 4/29/25 11:24 AM, Prasad Kumpatla wrote:
>>> From: Mohammad Rafi Shaik <quic_mohs@quicinc.com>
>>>
>>> Add WSA LPASS macro Codec along with SoundWire controller.
>>>
>>> Signed-off-by: Mohammad Rafi Shaik <quic_mohs@quicinc.com>
>>> Co-developed-by: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
>>> Signed-off-by: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
>>> ---

[...]

>>> +        swr2: soundwire@3250000 {
>>> +            compatible = "qcom,soundwire-v1.6.0";
>>> +            reg = <0x0 0x03250000 0x0 0x2000>;
>>> +
>>> +            interrupts = <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>;
>>> +            clocks = <&lpass_wsa_macro>;
>>> +            clock-names = "iface";
>>> +
>>> +            resets = <&lpass_audiocc LPASS_AUDIO_SWR_WSA_CGCR>;
>>> +            reset-names = "swr_audio_cgcr";
>>> +
>>> +            qcom,din-ports = <2>;
>>
>> The computer tells me it should be 3
> For swr2 - soundwire version-V1.6.0 contains din-ports as 2 only. Please refer below link
> https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git/tree/arch/arm64/boot/dts/qcom/sc8280xp.dtsi#n2931

I'm referring to what I've seen in the internal data as parameters,
please doublecheck

Konrad


Return-Path: <devicetree+bounces-175209-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F655AB01B0
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 19:46:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 288633A73BA
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 17:45:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A79628688F;
	Thu,  8 May 2025 17:46:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WrpuVVZS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DED6628368E
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 17:46:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746726372; cv=none; b=HIMcbxgnZspkCCDkpzc5ZCW1ub24Ln9M+c/8EPDk3eF4FZh5Cw+bxaMtBQ88mo4Yrd3s9697nfirtfiHGAn97gH9rlnCk8fAcJJeYSu+ScysDZylUHnH+LKE1Nl5ksD0OHGhuHDV+nU6JK25+li5NlsaGjKpr/NoPo4HRVS8p4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746726372; c=relaxed/simple;
	bh=w003YU9xFDtX8th5FrprcQ+2OIPdbMDpi8dif0gJMOk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mOIMFFVW2X9wF/7JHJiowAfyMJ6ikVkF7pEJAYUXelyyoOOk5uo2bYchjsEovKZmzT2v+Y2OcUXa4BAflh5bWi96vJmRN77nfy2u9vko/g1c5zaIgFUaBFof0yFkb1MHLIdGm7oVC226p9HvwAJkKX6+JXnR8bb23Pt4J1qpBsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WrpuVVZS; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 548DFolo014286
	for <devicetree@vger.kernel.org>; Thu, 8 May 2025 17:46:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0PMVomh58vUZ5beFSkyMxPogvfIP3QzcyNzI+dTinH4=; b=WrpuVVZS4znDT/HF
	0IE1KdgVRWHVF3SmODomh1fmvopfOFuLf9/+ql4/1XzMFLwGDGEuWqw0qnuVWHBu
	P/4dbUh2slIyi+ZvJknW7pvLfTFEs2yNPDNL4Cr6uOAM9/RKDT4rdBRSGSUrr65G
	/yqDVE/b9nl0FEHojIPMXjHvK3dOz9LBqacfcHcn0AktiCnlC9VEg4/EpDA67aOo
	f5CfcgBmvw0rYOlfRkZEGedD1FDgrt+VtKI25iBMhAtxLwh4g4ekJJkeEgkyivBh
	dHBbrD52jquX1Z8Tms1AQAXUP35nJPBrnEJVT4B4ogsmGJ/F7loKbWJgzYgXJv2A
	t80x+w==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46gnp4j57n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 May 2025 17:46:03 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6f2c8929757so3193076d6.3
        for <devicetree@vger.kernel.org>; Thu, 08 May 2025 10:46:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746726363; x=1747331163;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0PMVomh58vUZ5beFSkyMxPogvfIP3QzcyNzI+dTinH4=;
        b=D/moqxXMCEFGkjHHD3hvJWxHXsLSK5aNXzx9/D0pj7neEkJjIVR5Lh+NqZBQ1yKgBI
         UwIwSFlqWqOELRM9HjtQFQh0ynZr25Y7D9F0ClnV3IIGaEq+c9we3qjdNuGg5t/qVR8V
         9QCzcPyzBsHcxpcGy+uI6RurfJVvwTuSldtNCTAL9YWYDMZuaOSrjDPYjoQX+oQH/njQ
         UOBf1sL/fvCBKrh3K3hAGhA2iwhodFtXDIEsN6hk4PMSFnxYa2cFQpWAlvrvpazbuGfS
         /JUyrmA1SVJx1hoksP99bfBP7SccLjxmB0/DvENlfAdT3DlI4kxKJsZGHsLVONYnNK1w
         ftJQ==
X-Forwarded-Encrypted: i=1; AJvYcCVQRkMKsHjUJ3EsLfBJG/HlOfwAkUhW4oinmfNnmLfFe/PGr1ktYR33qY9x7c/L5GfRYVGtYSyGwHce@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8clyb0Yt0ld9pWBctGS3G3lSQU53apJZmS9sIb+XUsXSdpHQO
	QPWsgsBPCRTpSRuE2pPg1COuk5UNBT6HslpV2DyRPAKQyBP928rQ45xwsV4+JWkXSrZ8qZuvCuL
	7QXGGfbaXx3zEphtNgBTE65mNjo6fBQZjYbr8WpU/9m8XLO7cVBl9S4Mt6djw
X-Gm-Gg: ASbGnct7qgbhEo7JKszr3xeXq84Enco7tC6qTw8aheGL3Uko6ApR0635snBZVFf7yxl
	KYHyh9TYZcgE6jUotvhfYn3lSU4ra7q5D7Ir2MvIAq0xJnBgSG6S8+fECw6ZaxE47dVnc0p2TbA
	YMtI+bA6F4BICPy8OPtoisI6L6XzWM6l26Cb3Zp0/hYaxioVoWP0IkV3dv9S+9Sxox+po1mcNd8
	7HMJ6Xanz9Go8tGNeushYs+1KIr3R2WpJF9JNysK4Xjdn2WJ+JwOnM2MBBFtYsqlOwpVoKC5xtJ
	vm08qZfZ22Kj3LgRB3+jqwJ5K8wLz+za+cARgF+XrH4ThItTDdipvdHPgZWT+oAgtb4=
X-Received: by 2002:a05:620a:bcb:b0:7c0:be0e:cb09 with SMTP id af79cd13be357-7cd01106a47mr24447185a.7.1746726363122;
        Thu, 08 May 2025 10:46:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE8clsXOD1uC7oNiNun3OmM+46gt3lHglvyTV8F+OOv+jUYM+ZbwoXUOp6M03Tw5z5hkuz1dA==
X-Received: by 2002:a05:620a:bcb:b0:7c0:be0e:cb09 with SMTP id af79cd13be357-7cd01106a47mr24444185a.7.1746726362501;
        Thu, 08 May 2025 10:46:02 -0700 (PDT)
Received: from [192.168.65.105] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad2198b68e6sm16736266b.184.2025.05.08.10.46.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 May 2025 10:46:01 -0700 (PDT)
Message-ID: <6e65aa95-cd75-432e-98bd-a8a03e38a35a@oss.qualcomm.com>
Date: Thu, 8 May 2025 19:46:00 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/7] arm64: dts: qcom: qcm6490-idp: Add WSA8830
 speakers and WCD9370 headset codec
To: Prasad Kumpatla <quic_pkumpatl@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        kernel@oss.qualcomm.com, Mohammad Rafi Shaik <quic_mohs@quicinc.com>
References: <20250429092430.21477-1-quic_pkumpatl@quicinc.com>
 <20250429092430.21477-7-quic_pkumpatl@quicinc.com>
 <7322bb2c-5778-48cd-8661-91308ea8cfc8@oss.qualcomm.com>
 <c8097899-42f6-4fa6-bee1-6af9208283d7@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <c8097899-42f6-4fa6-bee1-6af9208283d7@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: j1kYEkGuRl-qrv0I1xPywqxg6lUlBW4Y
X-Authority-Analysis: v=2.4 cv=E5XNpbdl c=1 sm=1 tr=0 ts=681ceddb cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=P-IC7800AAAA:8 a=COk6AnOGAAAA:8
 a=DPA8SXBlki6BQVjMWBcA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22 a=d3PnA9EDa4IxuAV0gXij:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA4MDE1NiBTYWx0ZWRfX1YWMQYq+xmOl
 X0HZWaTOmPzK1tKXuqqQKE2JMJgL6MzKgJuIvFikm7N6dP4EIg2GJCzYvmAGvtVBErNVH/Pi2Hk
 sC4hLgyTkIEnNiInlJtNJ/CcZKjAeQUl+VDTUBmI8oaOYKQH6mPaSOf/SyCDid2fhBHQZIwSPcV
 1Dhe97HnChYyhN1FftLOdgE4+JWrR0DY3qwPLrUsc2zrlUiFtiDsHcgioHxIv/RbQZlud2JKyTU
 sdkXcCxWyMJXilg4pkma5iXw0QR9F7PB/bdv6WVmi8HzL5CKx0do5dl88oA6P13UyZi3DtLP9HJ
 qGJfg+MVxXLnSjPCcWbPYLsW2mAARQgxZwaMux4LWfx1jRUJ3/RVIvvKq7LzqUSxIcAK9H2a5Mc
 MXdhjcl1A091WxjPbMxbY0a3EBpAZJozdoFrPQbNU4KT/bl98UOZrTpC1YbfsY0G/3ix89Vm
X-Proofpoint-ORIG-GUID: j1kYEkGuRl-qrv0I1xPywqxg6lUlBW4Y
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-08_05,2025-05-08_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 adultscore=0 mlxscore=0 malwarescore=0
 bulkscore=0 phishscore=0 spamscore=0 priorityscore=1501 mlxlogscore=999
 lowpriorityscore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2504070000 definitions=main-2505080156

On 5/8/25 7:01 PM, Prasad Kumpatla wrote:
> 
> 
> On 4/29/2025 4:31 PM, Konrad Dybcio wrote:
>> On 4/29/25 11:24 AM, Prasad Kumpatla wrote:
>>> From: Mohammad Rafi Shaik <quic_mohs@quicinc.com>
>>>
>>> Add nodes for WSA8830 speakers and WCD9370 headset codec
>>> on qcm6490-idp board.
>>>
>>> Enable lpass macros along with audio support pin controls.
>>>
>>> Signed-off-by: Mohammad Rafi Shaik <quic_mohs@quicinc.com>
>>> Co-developed-by: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
>>> Signed-off-by: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
>>> ---
>>>   arch/arm64/boot/dts/qcom/qcm6490-idp.dts | 162 +++++++++++++++++++++++
>>>   1 file changed, 162 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/qcm6490-idp.dts b/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
>>> index 7a155ef6492e..1a59080cbfaf 100644
>>> --- a/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
>>> +++ b/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
>>> @@ -18,6 +18,7 @@
>>>   #include "pm7325.dtsi"
>>>   #include "pm8350c.dtsi"
>>>   #include "pmk8350.dtsi"
>>> +#include "qcs6490-audioreach.dtsi"
>>>     /delete-node/ &ipa_fw_mem;
>>>   /delete-node/ &rmtfs_mem;
>>> @@ -169,6 +170,30 @@
>>>           regulator-min-microvolt = <3700000>;
>>>           regulator-max-microvolt = <3700000>;
>>>       };
>>> +
>>> +    wcd9370: audio-codec-0 {
>>> +        compatible = "qcom,wcd9370-codec";
>>> +
>>> +        pinctrl-0 = <&wcd_reset_n>;
>>> +        pinctrl-1 = <&wcd_reset_n_sleep>;
>>> +        pinctrl-names = "default", "sleep";
>>
>> Does audio work for you? For inexplicable reasons, it didn't for me
>> on rb2 when the sleep state was defined
>>
> For Qcm6490-IDP board Audio is working fine, Not sure about rb2, Could you please provide more details about rb2 ?

I just mentioned it as something to keep in mind. Someone else has taken
over that work since.


[...]

>>> +    wcd_reset_n: wcd-reset-n-state {
>>> +        pins = "gpio83";
>>> +        function = "gpio";
>>> +        drive-strength = <8>;
>>
>> Since the definition is otherwise identical to the sleep state,
>> you should define the (other) bias type that should be set when
>> active.
>>
> Taken the reference from sc7280, which is working fine.
> Link for reference : https://elixir.bootlin.com/linux/v6.15-rc5/source/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi#L841
> 
> Will cross check and modify if required.

sure it will work fine, but in the same spirit typing 147 as
1+1+1+... will work fine as well, please doublecheck :D

Konrad


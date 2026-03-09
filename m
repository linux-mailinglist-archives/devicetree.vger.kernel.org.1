Return-Path: <devicetree+bounces-272878-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8JLsEie0rmkSHwIAu9opvQ
	(envelope-from <devicetree+bounces-272878-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 12:51:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 49A34238322
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 12:51:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 58FC4300290E
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 11:50:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BBD53A6401;
	Mon,  9 Mar 2026 11:50:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KOkPXvm+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="j900N1OI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81A6839B4A1
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 11:50:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773057058; cv=none; b=aswHQ3FOvRD06uEXRqhTTfxzq20KGoxkiN2pMqZNjCDSCK0+rhtlSwdPegneRT3+4CqsOiEZ9Equo2w9kqKP5pJrntwdOnVBMgWvClW4DkwbSaisV8+z1ncksVzwg2c7cvHMrBm/qIY3+qALXUSGZ7OOCsEYeMiKVonn+6LblTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773057058; c=relaxed/simple;
	bh=gdS0gqGNiwWSo+4CeDh9fQXFy2YDnqC735xMDz3QJdc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tcu6uBu2hn/1JSL1Ta6OmbJ3klWDoALjPcn964gcsN9rIg5y+X80tc1wNygT7G0IUyyiVRlPfkFkA8ILhYtdYa639Ovu55apOEQSwwchqHVqAW38/3ZZQ3msWZHb5jjHL1Ewxn8iKfGYglbfIr2emfg297saS/wzT+1p+wqgLyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KOkPXvm+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=j900N1OI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6297Jo801733749
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 11:50:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nOL8Dcw9YEEUc45YVucYAxGOEglvK5BjjZVMuVDFBLc=; b=KOkPXvm+9fENc9ux
	Lqjho4ykhlFxV5EOayRevSRHgusNHMWnL8jskqrHHy5e539OnKYTlyTXH3q2b1nT
	6r1K1Q1OCxo5aqKD9dlA0bjld4EQoRFeaa5CZYC7t8cphygHGzcx4tNkpU3lOieq
	IgktGVFuLUmtBifkqrrxHlxY6ZfvWqp/Akw1Y87bDkuBNDYwVpB82WvkzLBsp7t4
	CYnR7lKfGBCbdrpnkNYxcFF1jNIKrZQrso8Od4B/ZTqRuhG44yF74IY27qn+Rc1w
	lfV8qwILMI/buPValigyXm+0Aa7H+OcOsyifo5WgLTCQrBhzLJoqly95KubLTCER
	biGyBQ==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4crda9d2eu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 11:50:55 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-c70dd30025fso43620217a12.2
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 04:50:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773057055; x=1773661855; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nOL8Dcw9YEEUc45YVucYAxGOEglvK5BjjZVMuVDFBLc=;
        b=j900N1OINRu6D34E5/+1jf9enTt0/fdkeaM14xNEFaDlStcKKYDuEuym+ZnBEl8Cjl
         LbBTAfUPO/VhOWtzAnEKBzsU97/W1zpIMvw2MgisnPqo/IAwb3nsKY+Pw3AaSHgksVkk
         OD/+uetRD6Q7oKO39Jssd2Frjfczh3jqhVSR4OTlSgR7JcHOMoakNTsawktcuovC4LY1
         z3JGxO+iFPsL9oPWvaGfbvJpQBUvBD0jGb4m+tuZF+u5e5q1ycnrMFTeZ5xjHLh6DMXM
         wylCSgk5wNaDMZMa5rjFLaOj9yil3lxpNN1u4MsD90BxFazblmFXlZCXLxZUNHwsyOK9
         TmFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773057055; x=1773661855;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nOL8Dcw9YEEUc45YVucYAxGOEglvK5BjjZVMuVDFBLc=;
        b=XT4Y8N0QVltZCJ/vKmzu6+6CXxXYByt3kLAVlOYA+Yj2othcWJz+nMZTPMr051F2hD
         QC1itG8rE+z3yhszH1QfdrQUdMlaGPhSwAHG2Wnk+Ag/QpzyXUoDGkVmgS0PSw0tFfl4
         iMwF37t/AZjQc1DtvED3JWoilPQOveK063Z+R5Drr2OVwVpI5p1Lh64R7QvmvsBD/Upx
         GA5P8E26WtdedQbOeZqbQTNTZNvbznSiyTQoYmm35qxQAdBvyU8F7virxrXVe/9za6mf
         CCpAq5EMh0vL1QL7bs886RM6274t2B3x9LcUgQXwem9+xIohncY+8Yj/XmbygPHBEygf
         yS/g==
X-Forwarded-Encrypted: i=1; AJvYcCULRtrDQ/miV/ozwwb3T+RwrBQyyqk5pOD5njtHhO52HeT9iltV244jUkzKH5E9v9bv6tVWTI9LH6Gv@vger.kernel.org
X-Gm-Message-State: AOJu0YxgjE9MzAdH+XL44oDFujZByvO0MC1nCQObm4Ua06LOpIyD8gK8
	4FdrX1F+wGJ7qzkoHp5ScUzBTYKqmfQG0HNEvB8sRjt425ixiDl78XmyXOtaA5bOU4WqFaoDrUm
	ODRiresZ5Vs8WoAX7ifD+techxioqWbZf/xJKLTOJixJuAcZjshPJO3bxf3RODWAa
X-Gm-Gg: ATEYQzz2oF9POAoZttaAQA+OjFXPcDjTJvzSbuZqj3QJh7clDPbkOzcBNLCwtjIG8WZ
	WiHhVh7VxPOV1xrWCF4b5uARhK6Kt4yS9l6WOkfxJ1IdDLhBSZRIiIQGBoJDMKVfU+74gbowd4d
	afWzO0oXniCLcFlHnyhZUzlZ+QZzxM8vJHLfoibXPsr/Gj445SQ0LYumfCTfx/kKRpzOYnZCL5J
	2sJDn0IkbbHrC6jkgp3/oDQm8BLo0+/ROQmK2ruAjObQMv4gNKd9OZdnCWzxuzxa8CcwvO2q9T4
	kutrwEbZD1QJ6zMXlvH6XDu9NWBhv2p1dILPcCzrXiOLL0cY2SOi6htfoi5fGTKMhImNpkH0WB6
	efnZ9eaGT3cqGLpBE14zlqr7/xH0rbHZZfSj/TQV3F7XnD+bdp36HLrzF2LFKkcIpDnYvM6Jq59
	4du7yx2GhEsg2RXBs7r/CUMSf5JsxBlpigAn3mszI=
X-Received: by 2002:a05:6a21:516:b0:398:9662:1114 with SMTP id adf61e73a8af0-39896623794mr2471002637.8.1773057054688;
        Mon, 09 Mar 2026 04:50:54 -0700 (PDT)
X-Received: by 2002:a05:6a21:516:b0:398:9662:1114 with SMTP id adf61e73a8af0-39896623794mr2470968637.8.1773057054068;
        Mon, 09 Mar 2026 04:50:54 -0700 (PDT)
Received: from [10.190.200.237] (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c739e0a70f9sm8981068a12.6.2026.03.09.04.50.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2026 04:50:53 -0700 (PDT)
Message-ID: <5f70f652-5ee5-4b58-8020-88e0d93295a7@oss.qualcomm.com>
Date: Mon, 9 Mar 2026 17:20:48 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 4/5] arm64: dts: qcom: x1-crd: Add Embedded controller
 node
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, bryan.odonoghue@linaro.org,
        ilpo.jarvinen@linux.intel.com, hansg@kernel.org, conor+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org
References: <20260308233646.2318676-1-sibi.sankar@oss.qualcomm.com>
 <20260308233646.2318676-5-sibi.sankar@oss.qualcomm.com>
 <20260309-festive-prudent-ibex-f8b601@quoll>
 <ff241b01-c7f4-433b-a822-c5cd14e3e696@oss.qualcomm.com>
 <3eaceb96-003b-47d2-9ae5-bb676dde0240@kernel.org>
 <ad3485df-5570-4631-9d6e-2f0b90a47235@oss.qualcomm.com>
 <441a72fc-b81b-4fb6-b032-867752b3c773@kernel.org>
Content-Language: en-US
From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
In-Reply-To: <441a72fc-b81b-4fb6-b032-867752b3c773@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDEwOCBTYWx0ZWRfXzxIPCgzqjOJ1
 UkZ0zuggtD/Q38bDuQQtO6B9RoDtYTzoUZjpKoUNpgBXeSJPC3nEa1BHH+ftmu3dz7H1irp6KjG
 Yc4a+L5JHv6+nf0bOo/MkApW8e9J4tZ7ji3TItJKOyUmOIDcn036UD2zMINLOHSIsGX0HDLjuwv
 EPOZjQ4USDhQw39TYTxqkZh44D4SpsJhmlDoOuKXn9pbkay4d6pF2WLoz31AXAAI8NGff6th+w4
 qOrl7mzyTzsYOnlEYd72AxTn7HPXXWd06QPYj8+bSUGcsl5uFd84D861+inxXzC6sDL7U55mx2h
 3Ix+bl+u5GvQZnmNXZHWyRmIrRsi6inx5Yd1ZXSMaKERVyohnB5y/NVxiF35XMRpnpsvKlI6Qr1
 dhiNixhehnQjVm8JSxLMmO5qlLTR7OiAJsq6lR9A905NPkpHylIi4IOmW5CGoY+YCJ2Qm5f2h7N
 PoqYWbazWSvybATc45g==
X-Proofpoint-ORIG-GUID: 4gUrMiyrC0KDj-Ke47qBGUAa-M4hOcen
X-Authority-Analysis: v=2.4 cv=QZtrf8bv c=1 sm=1 tr=0 ts=69aeb41f cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=JKISxpa1xdn5d-WQYaAA:9
 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 4gUrMiyrC0KDj-Ke47qBGUAa-M4hOcen
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_03,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 bulkscore=0 priorityscore=1501 impostorscore=0
 malwarescore=0 phishscore=0 spamscore=0 suspectscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090108
X-Rspamd-Queue-Id: 49A34238322
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272878-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.76:email,qualcomm.com:dkim,qualcomm.com:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sibi.sankar@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.977];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action


On 3/9/2026 4:23 PM, Krzysztof Kozlowski wrote:
> On 09/03/2026 11:51, Sibi Sankar wrote:
>> On 3/9/2026 2:39 PM, Krzysztof Kozlowski wrote:
>>> On 09/03/2026 10:03, Sibi Sankar wrote:
>>>> On 3/9/2026 12:55 PM, Krzysztof Kozlowski wrote:
>>>>> On Mon, Mar 09, 2026 at 05:06:45AM +0530, Sibi Sankar wrote:
>>>>>> Add embedded controller node for Hamoa/Purwa CRDs which adds fan control,
>>>>>> temperature sensors, access to EC internal state changes and suspend
>>>>>> entry/exit notifications to the EC.
>>>>>>
>>>>>> Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
>>>>>> ---
>>>>>>     arch/arm64/boot/dts/qcom/x1-crd.dtsi | 16 ++++++++++++++++
>>>>>>     1 file changed, 16 insertions(+)
>>>>>>
>>>>>> diff --git a/arch/arm64/boot/dts/qcom/x1-crd.dtsi b/arch/arm64/boot/dts/qcom/x1-crd.dtsi
>>>>>> index ded96fb43489..29a1aeb98353 100644
>>>>>> --- a/arch/arm64/boot/dts/qcom/x1-crd.dtsi
>>>>>> +++ b/arch/arm64/boot/dts/qcom/x1-crd.dtsi
>>>>>> @@ -1042,6 +1042,16 @@ eusb6_repeater: redriver@4f {
>>>>>>     
>>>>>>     		#phy-cells = <0>;
>>>>>>     	};
>>>>>> +
>>>>>> +	embedded-controller@76 {
>>>>>> +		compatible = "qcom,hamoa-it8987-ec", "qcom,hamoa-ec";
>>>>> I don't see updates to other x1e boards, thus my arguments from v2 stay
>>>>> valid. It's wrong to call it "hamoa-ec" since only one Hamoa board has
>>>>> it. All of other Hamoa boards apparently do not have it.
>>>> Hey Krzysztof,
>>>> Thanks for taking time to review the series :)
>>>>
>>>> What other Hamoa boards are you referring to? The series
>>>> mentions that the driver and bindings is meant for Qualcomm
>>>> Hamoa/Purwa/Glymur "reference" devices, so it only covers
>>>> CRD and IOT-EVK. It definitely does not cover all Hamoa boards
>>>> boards like you are assuming.
>>> hamoa-ec compatible implies that and that's something I raised in v2
>>> already. You need a specific compatible.
>>
>> Hamoa/Glymur reference devices can have different EC MCUs
>> depending on the SKU. This introduces the need to deal with
>> possibility of quirks and bugs introduced by these differences.
>> Hamoa/Purwa CRDs and IOT EVK runs on IT8987, while Glymur
>> reference devices run on NPCX498/488. This pretty much was
> None of these answer my comments from here and v2.
>
>> the rationale to make the MCU part of the compatible. Anyway
>> I can keep it as qcom,hamoa-ec and qcom,glymur-ec for now
> No. You cannot add a generic compatible when you claim it is not even
> correct - "different EC depending on the SKU".

https://lore.kernel.org/lkml/1336e1c3-6ee9-4a19-976b-0bfdc02fc8e6@quicinc.com/

The explanation mentioned ^^ was the motivation
to have a extremely generic compatible as a fallback
since the firmware basically implements the same
exact specification.

https://lore.kernel.org/lkml/def949f2-301d-4edc-b303-0fbe02a18c3c@kernel.org/

I'll stick to your suggestion mentioned ^^ and use the
following compatibles instead:

qcom,hamoa-crd-it8987-ec
qcom,hamoa-iot-evk-it8987-ec
qcom,glymur-crd-ncpx498s-ec

I'll continue to use the hamoa-crd based compatible
as the fallback since they implement the same firmware
on different MCUs.

+properties: + compatible: + items: + - enum: + - 
qcom,glymur-crd-npcx498s-ec + - qcom,hamoa-iot-evk-it8987-ec + - const: 
qcom,hamoa-crd-it8987-ec Thanks again!

>
> Best regards,
> Krzysztof


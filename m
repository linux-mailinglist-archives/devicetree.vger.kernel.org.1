Return-Path: <devicetree+bounces-253701-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BF2FDD10A74
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 06:51:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A73D8304B3CB
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 05:51:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12F0230F930;
	Mon, 12 Jan 2026 05:51:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jn7HWgH1";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QC4llxj7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AECE30DEAA
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 05:51:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768197084; cv=none; b=M82tHNz81Yp22DCYcnT05hUOLXijPnVsP7isLqdGWHISiaQc6BFq81Gqa1IPxS+hxQfsJe6Rp7rSLRw8JJIJ3CyZ5DARmAnPKp7ZcVQG4mWT3atNOJsGwy6qEoyMbLCmWogFEchou+gj99tFmuZ1aMlvJ+113iPdaFwy46lOxzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768197084; c=relaxed/simple;
	bh=JuaMFP0t1+E5fdrKVBX640bCvL/oF2Kp4wmZ+i3Fid8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JwS9GXBPDt+azm9jWPBjRKPPeyTzw6e8deKIFDcFeBrmknE7UpU7K7UEZytzE7fKRgsD6005hllnipbFjMXGXHM6eQn4My1yTrGSlxpdKfZvjc+lDSlLA/V/HE+GOqhvqPhWRFQyDAmhXfDQEWW9wkKfw/Skn9ysurxVJkPiOKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jn7HWgH1; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QC4llxj7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60BNb3iE3776159
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 05:51:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EDLrSzbzStLNHCm1lNuX2Pjdkq0e/yvGcbbfdbwkQ1Y=; b=jn7HWgH1sr7N0FVr
	AryT89Q/wxmVLbICdPeb8golJDV1pbBlJbrmMo9WcBz15v0UuuHHLlDBL6h+dc49
	fRCMEfClpskEY9aUR31AocFGnpOrDij/gBGBVFoUBNk++ggkkl66Im6sKvI+4AKE
	JBO84BUedYjNMtP6cgxCq15fstQdj7RnYVSJCyb9oFWQy9V6DBjkCj86AZaDgnJP
	vpu7+7tatCQ+wbRmf55GOn+t4ITfDhAJ4ds7lqIuVVKhPrhmzgoR6HciiZLNwcn0
	Jo1qsWXouFpW0GVJbv3S1/ZljdQ51mWe0U+iu5nHH4wIvewD2Qs3phZydlEzOtuE
	xNq1vw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bks25atsq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 05:51:20 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-29f25a008dbso43487925ad.1
        for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 21:51:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768197080; x=1768801880; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EDLrSzbzStLNHCm1lNuX2Pjdkq0e/yvGcbbfdbwkQ1Y=;
        b=QC4llxj7/Uqo34lJvlvh/JSbKiLnIKp2t0Pj2jnbNBVhYw3OIvqGMk+XIaaw2k0O3A
         GVHjjjDvn5V6GiAH3z8WoDhIoFc3AnWO2t1WZzSMUpa1OhOH0vASXPQAJYxF/8CNuBix
         hi55U62vEllq92H6F/NPX/yeg+Bif663tsyjvQZDsWxG4/Dgqb582+jI6DIxj3gA31V5
         fqbjpw6e0RUcMIw0pirWCq+u+G/GcoR0oSpkkvwkvNSpAZCR9ABXXgViwmMl7iV2vTBK
         vD6V6qBxSTPp1KzZnVJnxDdd7rruguZiVnuF/WWpT6ZOO1zWY0OmB4Ltg6VLB7ehZ/ds
         yCuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768197080; x=1768801880;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EDLrSzbzStLNHCm1lNuX2Pjdkq0e/yvGcbbfdbwkQ1Y=;
        b=ORmk0vWUjI7tWPtoti01AmV3JSP3Gv8NZv+OOzcbOZ5fIlwuSdN7A7aGG7YgCh6AAf
         eVbUeELKDdVdhV0VvVv19kPzxhNOd+Khsk14tHUB1wgz1zXJy39hHe2ddI2SarZy+xA6
         hV2nhAKW1lUlhI7lmVqYmj3l/tB4W2x+EupuAzOqwuujGttz4vXrzSRyq/s2vLlKG1ER
         1uypT03Zlq7OzhKjLWjhDOpf7VbJhdsmmwdm2mrlRdpXXgPPWTxwivd4SrgxVbHVf5Tx
         oL4RJIlA0F4dEbd85hdoCd9NwQCsR+fns2u+O28jEraMl5b3LTqUbIKxoUdgsKSVGGsr
         KeXw==
X-Forwarded-Encrypted: i=1; AJvYcCU0J3paCURe8tBJ/+AY1gdfjOO0o2RZpv9LGJFDWqY2aQ+FJGFK0Ia+f68c2QyCn8SabV1lHv3d6MJo@vger.kernel.org
X-Gm-Message-State: AOJu0YzmNUAe1LuAlJr7uvL9+YhKDh4npfDV21O77ujGlktIFjZNzlUi
	8kSWj3CVQQ6oR9N8NJcMPqs5sWRxA/2cOMdSa7N8sCfUnhhINfdDcbFr4UPOtZ4uz7MU+ed7y9d
	kRYsug3Ap4XZOuS1TLazV/61cX3wUWWNGOLN/faMLiRy6Meef7GwTNPAoBmQnu14d
X-Gm-Gg: AY/fxX7znABcnY0/fKOByBFX2LKxmmuoM6hQGiT5nunrKu7C7q9YpfY/b46VOV2gdZm
	hql+ze/0GF/1E/SJ0RXBgj3sti727W+JEIPA9W+xG5KXv5WB2FgsMbzChVH99L8hjWuXZ985C7J
	ayLUfmM9mv67SwdAu50aCweQtvyhKxoIbhdAStmvnDN0JdilIV97XEoEXziNS3DguSMwR8xA0jv
	yOWqq6Ww1n5BGFkKxRppBjnFMmsa/ywXOjR8G79XkDQpC9FPKCgsO1qwEnj/nPZ0+aJKLcQ9KSJ
	5BlmzpkSORZK6jOnXpkeGdx4hAGCCC1B7QbrFAuH5YS2PqSVdy2UsMiJHJVbRIwTpP1rbeWTYL8
	2O1W0al0aTWXyKkYUrLd4QsL8oJu+z7gQOmLSzt3hwu7WJBaTvX9br700aZgHn6C5T6g=
X-Received: by 2002:a17:903:2b05:b0:29f:1738:348e with SMTP id d9443c01a7336-2a3ee433c46mr166419835ad.15.1768197079710;
        Sun, 11 Jan 2026 21:51:19 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFVY/LvYrx+Ysi29SmgJpMwP0/Ujm07h5/DI+nYgBROfpmnnvAdJhyXkbp77WuBfId91vPgcQ==
X-Received: by 2002:a17:903:2b05:b0:29f:1738:348e with SMTP id d9443c01a7336-2a3ee433c46mr166419695ad.15.1768197079224;
        Sun, 11 Jan 2026 21:51:19 -0800 (PST)
Received: from [10.133.33.127] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3c47221sm161667605ad.23.2026.01.11.21.51.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Jan 2026 21:51:18 -0800 (PST)
Message-ID: <d5d1d6c0-87ab-42a8-9816-359a64b9112e@oss.qualcomm.com>
Date: Mon, 12 Jan 2026 13:51:14 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] arm64: dts: qcom: Add base PURWA-IOT-EVK board
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        krzysztof.kozlowski@oss.qualcomm.com
References: <20260109-purwa-v2-0-f39ee10684cb@oss.qualcomm.com>
 <20260109080000.606603-4-yijie.yang@oss.qualcomm.com>
 <6e8e6583-033f-439e-bd92-b24fe432fb96@oss.qualcomm.com>
 <3959a318-aca3-43e2-a431-4a9ae40f911f@oss.qualcomm.com>
 <ak6xsow3cobhe64y2koa4v7w5dkdc4v3zlmpokws4nxmu5c6rt@kdgm2oqxxvcl>
Content-Language: en-US
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
In-Reply-To: <ak6xsow3cobhe64y2koa4v7w5dkdc4v3zlmpokws4nxmu5c6rt@kdgm2oqxxvcl>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEyMDA0NCBTYWx0ZWRfXwb+d3kWntYBA
 pPq+AReM+2qDgQJfgWf4vJ1as6zGjHhHS/WeyX0tPRKkxUg4qnu94BT0Drp4ui20ET+u52iwD6B
 OOJZo/W3zzeWDXtMbB7gNpUBAhcqAkl9LOqu/uUX2/ptQHEfD9FXIUmssUGO+CTP0DlHOyBvP+d
 wzYi1PDKxzKLI7+6gowARHO5tFES2RJ0TfBhLtDrnPBgN7ANplhE1GjTOZac7t68Kd6wImaWfd+
 ftDRli69Hb1DbvXQ4asozidNbSFu1oQI06nzkcTlfcZjcqsYQtFAFVJNJ9fP5mWtl6FlQsFsYAB
 0ghZwmCqtV3szcGh0PwjjB0A/VEfNpGfT39Z+V4UrRpoM2kthFWEiPEPzz7V7di3NpMtUN496im
 OCLPIs2PGYzIg0Z6RvDKgiIr8ognEJNSTtaMf/GGdU+o6b2VhqnQUnByEE/EOd6uVox9kQnY1aC
 Fsc4Ke9F/mOcrvB6LzA==
X-Proofpoint-GUID: r0hdshdY7CI80k3Ur0Df7ncIwNTQPJgC
X-Proofpoint-ORIG-GUID: r0hdshdY7CI80k3Ur0Df7ncIwNTQPJgC
X-Authority-Analysis: v=2.4 cv=EMELElZC c=1 sm=1 tr=0 ts=69648bd8 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=OS0qKxNM1ntZJlTngmAA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-12_01,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 clxscore=1015 priorityscore=1501 bulkscore=0
 malwarescore=0 adultscore=0 phishscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601120044



On 1/12/2026 1:00 PM, Dmitry Baryshkov wrote:
> On Mon, Jan 12, 2026 at 11:12:09AM +0800, Yijie Yang wrote:
>>
>>
>> On 1/9/2026 7:29 PM, Konrad Dybcio wrote:
>>> On 1/9/26 8:59 AM, YijieYang wrote:
>>>> From: Yijie Yang <yijie.yang@oss.qualcomm.com>
>>>>
>>>> The PURWA-IOT-EVK is an evaluation platform for IoT products, composed of
>>>> the Purwa IoT SoM and a carrier board. Together, they form a complete
>>>> embedded system capable of booting to UART.
>>>
>>> [...]
>>>
>>>> -	backlight: backlight {
>>>> -		compatible = "pwm-backlight";
>>>> -		pwms = <&pmk8550_pwm 0 5000000>;
>>>> -		enable-gpios = <&pmc8380_3_gpios 4 GPIO_ACTIVE_HIGH>;
>>>> -		power-supply = <&vreg_edp_bl>;
>>>> -
>>>> -		pinctrl-0 = <&edp_bl_en>, <&edp_bl_pwm>;
>>>> -		pinctrl-names = "default";
>>>> -	};
>>>
>>> Is the backlight infra different on the Purwa IoT EVK?
>>
>> As you can see, this Purwa file was copied from the latest
>> hamoa-iot-evk.dts. However, not all nodes have been verified on Purwa.
>> Therefore, I need to retain only the functions that work correctly and keep
>> them aligned with the nodes from my initial version. The deleted nodes will
>> be updated later by the respective authors from different technical areas.
> 
> Please, only delete nodes which are not present on the Purwa IoT EVK.

This isn’t a deletion—it’s just not ready yet. Why do we need to include 
all the nodes like a mature Hamoa platform in the initial push?

> 
>>
>>>
>>>> -
>>>>    	wcd938x: audio-codec {
>>>>    		compatible = "qcom,wcd9385-codec";
>>>> @@ -60,32 +50,6 @@ chosen {
>>>>    		stdout-path = "serial0:115200n8";
>>>>    	};
>>>> -	connector3 {
>>>> -		compatible = "usb-a-connector";
>>>> -		label = "USB-3-Type-A";
>>>> -		power-role = "source";
>>>> -
>>>> -		vbus-supply = <&regulator_usb3_vbus>;
>>>> -
>>>> -		port {
>>>> -			connector_3_in: endpoint {
>>>> -			};
>>>> -		};
>>>> -	};
>>>> -
>>>> -	connector6 {
>>>> -		compatible = "usb-a-connector";
>>>> -		label = "USB-6-Type-A";
>>>> -		power-role = "source";
>>>> -
>>>> -		vbus-supply = <&regulator_usb6_vbus>;
>>>> -
>>>> -		port {
>>>> -			connector_4_in: endpoint {
>>>> -			};
>>>> -		};
>>>> -	};
>>>
>>> Are there no Type-A ports?
>>
>> ditto
> 
> ?
> 
>>
>>>> @@ -920,23 +886,6 @@ &mdss_dp3_phy {
>>>>    	status = "okay";
>>>>    };
>>>> -&pcie4_port0 {
>>>> -	wifi@0 {
>>>> -		compatible = "pci17cb,1107";
>>>> -		reg = <0x10000 0x0 0x0 0x0 0x0>;
>>>> -
>>>> -		vddaon-supply = <&vreg_pmu_aon_0p59>;
>>>> -		vddwlcx-supply = <&vreg_pmu_wlcx_0p8>;
>>>> -		vddwlmx-supply = <&vreg_pmu_wlmx_0p85>;
>>>> -		vddrfacmn-supply = <&vreg_pmu_rfa_cmn>;
>>>> -		vddrfa0p8-supply = <&vreg_pmu_rfa_0p8>;
>>>> -		vddrfa1p2-supply = <&vreg_pmu_rfa_1p2>;
>>>> -		vddrfa1p8-supply = <&vreg_pmu_rfa_1p8>;
>>>> -		vddpcie0p9-supply = <&vreg_pmu_pcie_0p9>;
>>>> -		vddpcie1p8-supply = <&vreg_pmu_pcie_1p8>;
>>>> -	};
>>>> -};
>>>
>>> Is the Wi-Fi solution different?
>>
>> ditto
> 
> NAK
> 

-- 
Best Regards,
Yijie



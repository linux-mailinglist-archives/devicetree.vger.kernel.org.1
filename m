Return-Path: <devicetree+bounces-201195-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 01CA4B17B01
	for <lists+devicetree@lfdr.de>; Fri,  1 Aug 2025 03:48:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5AC671C26DD1
	for <lists+devicetree@lfdr.de>; Fri,  1 Aug 2025 01:48:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C1887262A;
	Fri,  1 Aug 2025 01:48:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cvYg8V0e"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FCC915530C
	for <devicetree@vger.kernel.org>; Fri,  1 Aug 2025 01:48:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754012907; cv=none; b=jdLyPAmxr1OT1uiHwWDf4NUmBKW878slrKbol3PXml1doN2YKxYsRSt4K4A4fb1nfJeJAjrMRgoJPhrc5yBzWZr6e+sHWZXMA1yCc9FLqywJV8KFzUGC3F1ZRe2W9aDt/Iz6Y4lGsZCDTT1AynCWTlRL9PoIElR9jPDYqifYrn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754012907; c=relaxed/simple;
	bh=KRuekgrMrF6UAyFVyK3Cpo0WfdbUcU53SJ/g/6ry/lU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ED454hlS07d9NeP2V5ZwsyRYfCMJ/RqIEVoga0sLtumIEq+tVsGFBLxAZpaJFskCYZcAH3YKLgszwsXiCNS5QwjEQdq2ab9NAycfPC6EmVcJB+jvfuwMS9gz/eRtT+gl6VGWN3jtrmKD9Ku3Vf2JKXV98v0FX9lWg5M7GuJEPAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cvYg8V0e; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5710UcJk009138
	for <devicetree@vger.kernel.org>; Fri, 1 Aug 2025 01:48:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SNInZAfYSGZWtKe3J1Eh4Aj6vBV2EvRQhMkFQ1vljM8=; b=cvYg8V0eO73JLRQ5
	vmUt/rvb+BWB2PzmF7Lx5MxZ1Scy2Ew27avItgIJSSIol2X4VrGCrQcghGS8VqNR
	4tgfnBAUoB+YUx/tuM2r0EyoyuA0NHfP1hNHGqDDPJT7jbGyhQ80JVjCvOBd3zcN
	yE15NjIj/ii/9LKTaCCjk3jPUFXpf0OBtQw5gUqoH1BoLWdbunAmXdTHwm2j0lS8
	MiCUvNJ6LdzRO2jAkutYWu7+z5tDF68oM/wHbvxkZECwzBxb4SxsTFOeWqJZ4HuZ
	yf6FiStSCdMDd5cC3KsQ1aPj1MfpHh62AlPFD/kkb+UP7rVPIC/fRLL3MyZA4JnE
	Wjg0aw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4860ep7d2s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 01 Aug 2025 01:48:18 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-23fc5b1c983so30902895ad.0
        for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 18:48:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754012898; x=1754617698;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SNInZAfYSGZWtKe3J1Eh4Aj6vBV2EvRQhMkFQ1vljM8=;
        b=dKVWh8F7BkfbTEOb3fRUSw9pu4h89mCWGG5ZNRT2weKx+KMElwsO9LNW+A7cxkfBaF
         WzVJeYHLriScxYduiTlz+fpYBD0DtuP6upzYB8sUe+fDobtfTTRfgL+h98ED8hXAKcqZ
         UOiVHCvD7t/RAjQArQJqKEaXSYAYEYGHCUsDQweXI2LMfsLTLVonNfDB91LJ9s/t2meb
         25HyL8FseKsNFd58fSc2Yp11sGtijOR7f3f1bvfN5HqKxDph/JWM5wmWtAWB1JEwMwoh
         GJoucL5Wh84Q+HL8PjbyU7cnOLRnR8d7YEmRXXRGIJwa9g7PMkBRsWEM/jtNDonmBKgE
         JDyQ==
X-Forwarded-Encrypted: i=1; AJvYcCWHl0ypwEwe1vA3HBGA8VlLrnBn9rMsg1slfic6P0naVnLc36TN/vZaNyqjVp4U11mz9QSQp5aIcznX@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0TQ1c1qjaehjhmARqdogTwpu48LefJz1Ft4eFNLLjY5tw4+Pu
	e/1gohQN15T+ezIhl1NXESXb/hDrsok9NfTrHPRUuNMlHSApjd18LmzhehOUmiAcx2ElrpEPtpX
	stsc+KRj9Muk2jhJH0OidimQsH77PQY8j1KEU0fcryTFjNKV/zROLCBBpxug+MrPi
X-Gm-Gg: ASbGncuB/F4KoF80j7bw890A3YvSAB5ySxx2TZOrlWES0y6gpZDx8VtQdYD5wiXBk6q
	Xkj/6wRW1+gK3Ujt86SX8KUc8ejxg1rauS5CJWnSetU3OfFsae77C4Fdhpn+fmDqRKv6sXZeHjv
	u+fpye+qedEpZ+gzwdW8ZDybfp5IU5XwW5pYykZ01fYjZ6jkutrfDK7d+Mo+aSHmFKpMdS9P+jh
	XLOSXkTizHyZ1QBI8UVTLu+ULTHgW33pd9aqYus6X79ovMJFj0NqstF+DqFM7DP0uJoHzfLNYQw
	juui3rp88ugzMsfoKrQatxZJZBjUVBAvT3lt2ON7DtvmuhneonQUMgCE7H1n3DclKsr+E4UlHyJ
	M2OGzfwxtoE5JVGcpN/H0VwFfv6QM
X-Received: by 2002:a17:902:c40c:b0:236:71a5:4417 with SMTP id d9443c01a7336-24200a169edmr69233005ad.5.1754012897903;
        Thu, 31 Jul 2025 18:48:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHK6KSss2CH+ayYNqcDNgoqegrMLwfuGOYHThCBtyOsAD4mdcJRiG0GhFPdzUasJYVPtViyjA==
X-Received: by 2002:a17:902:c40c:b0:236:71a5:4417 with SMTP id d9443c01a7336-24200a169edmr69232625ad.5.1754012897451;
        Thu, 31 Jul 2025 18:48:17 -0700 (PDT)
Received: from [10.133.33.143] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-241e899d272sm28911325ad.135.2025.07.31.18.48.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Jul 2025 18:48:17 -0700 (PDT)
Message-ID: <31b03c1b-513a-4eae-9233-568aab12e0c8@oss.qualcomm.com>
Date: Fri, 1 Aug 2025 09:48:10 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/4] arm64: dts: qcom: Add base HAMOA-IOT-EVK board
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250729-hamoa_initial-v3-0-806e092789dc@oss.qualcomm.com>
 <20250729-hamoa_initial-v3-4-806e092789dc@oss.qualcomm.com>
 <pbvyog477v32s4lu72z52dhsond5yud5w3nxmcouvr6ljlndlh@ws46dncy35c6>
 <b4a3f568-f41f-4141-b421-8b158973f810@oss.qualcomm.com>
 <cawg456ucsvssm2ngbcjvpprxke7s3sfqf4fzoj5dtfj2flnzw@2e3h5ojgn4s5>
 <391b8214-37f2-460d-94d0-3bd0daa00066@oss.qualcomm.com>
 <mlbutlxudl5i32zrqegxiefaa2sbkntriwdftn7hxo4khidtf2@oiljtmtktovu>
Content-Language: en-US
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
In-Reply-To: <mlbutlxudl5i32zrqegxiefaa2sbkntriwdftn7hxo4khidtf2@oiljtmtktovu>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 2vt-03pfVSu6sM-6iMxBgSD6uX_xQVFh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODAxMDAxMSBTYWx0ZWRfX4k0BQ6o0ITSF
 BQFTFg6I0ne0z3q4+ynlJ171QcJKEFMwFtffOr+DgQKkvQpP/h9t/Ti1N/h5pUd61v/zHU1ouUJ
 9F7X9p6aICy5xhDi8Ml25Q0wM3IE3uSXuJqeDGPnh+sIVqkFfthP57zTZKkTk1MYJzclD05vgrV
 KUZAWR4LQICOYek0Er4jx3s+f1WeaJVfrfaeuBwi+K0zM2zjxYRcX1j9pROstxcUCxOFmOT+ZjY
 VsxVoABSbCFzAVSS74YiF/8TQauD3jVKOOfOZ5AyL7sN9T63F3xZq32sxy1Lh0pTC0u8w7RKDjA
 d5QnkyxTYpLoeAwJpIYH6+VDB+4EfYsOUxHYoKcPT8bcfPHr4AZ77oRTQQT0yB0o/qjKk+neERY
 ozdssZC4NJtQWiZMhtKRvuNWmnkZpGTmFK18PPa/WLZhGJQ5Guww1L5dSFnURwtnf5E2CGQK
X-Authority-Analysis: v=2.4 cv=DIWP4zNb c=1 sm=1 tr=0 ts=688c1ce2 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=oVAvm5E0DutlCjUowHsA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: 2vt-03pfVSu6sM-6iMxBgSD6uX_xQVFh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-31_04,2025-07-31_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 bulkscore=0 mlxscore=0 mlxlogscore=999
 spamscore=0 impostorscore=0 suspectscore=0 malwarescore=0 priorityscore=1501
 adultscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2508010011



On 2025-08-01 04:22, Dmitry Baryshkov wrote:
> On Thu, Jul 31, 2025 at 04:45:33PM +0800, Yijie Yang wrote:
>>
>>
>> On 2025-07-31 02:42, Dmitry Baryshkov wrote:
>>> On Wed, Jul 30, 2025 at 02:28:25PM +0800, Yijie Yang wrote:
>>>>
>>>>
>>>> On 2025-07-29 18:37, Dmitry Baryshkov wrote:
>>>>> On Tue, Jul 29, 2025 at 09:32:00AM +0800, Yijie Yang wrote:
>>>>>> The HAMOA-IOT-EVK is an evaluation platform for IoT products, composed of
>>>>>> the Hamoa IoT SoM and a carrier board. Together, they form a complete
>>>>>> embedded system capable of booting to UART.
>>>>>>
>>>>>> This change enables and overlays the following peripherals on the carrier
>>>>>> board:
>>>>>> - UART
>>>>>> - On-board regulators
>>>>>> - USB Type-C mux
>>>>>> - Pinctrl
>>>>>> - Embedded USB (EUSB) repeaters
>>>>>> - NVMe
>>>>>> - pmic-glink
>>>>>> - USB DisplayPorts
>>>>>>
>>>
>>>
>>>>>> +	vreg_rtmr0_1p15: regulator-rtmr0-1p15 {
>>>>>
>>>>> Hmm, so there are regulators for the retimer, but they are not used.
>>>>> Could you please point out, why?
>>>>
>>>> According to the schematic, there is a regulator and a retimer (PS8830).
>>>> However, as mentioned above, the retimer is not connected to USB 0 and is
>>>> therefore not used in the EVK. As a result, the regulator is left unused in
>>>> this context.
>>>
>>> What is connected to the retimer then?
>>
>> All data lines are broken, except for some power lines.
> 
> Ok. please add a comment. If the retimer is connected to I2C bus, please
> define it too.

It’s not connected to I2C. I will add a comment here.

> 
>>
>>>
>>>>
>>>>>
>>>>>> +		compatible = "regulator-fixed";
>>>>>> +
>>>
>>> [...]
>>>
>>>>>> +
>>>>>> +	usb_1_ss0_sbu_default: usb-1-ss0-sbu-state {
>>>>>> +		mode-pins {
>>>>>> +			pins = "gpio166";
>>>>>> +			function = "gpio";
>>>>>> +			bias-disable;
>>>>>> +			drive-strength = <2>;
>>>>>> +			output-high;
>>>>>
>>>>> What does this pin do? It's not recommended to set GPIO values through
>>>>> pinctrl.
>>>>
>>>> It is used to switch data lines between USB Type-C orientation detection and
>>>> DisplayPort AUX channels.
>>>
>>> I don't think I follow it here. Which data lines? Type-C orientation
>>> detection uses CC1 / CC2, DP AUX use SBU lines.
>>
>> I made a mistake here — this pin switches between two data sources: one is
>> DP AUX, and the other is a GPIO pair configured with the function
>> usb0_sbrx/usb0_sbtx. Both data sources originate from the SoC and are routed
>> to the USB0_SBU1 and USB0_SBU2 lines of the USB Type-C connector.
> 
> So, it's some USB4 stuff. Ideally it should be described via the
> gpio-sbu-mux, but I don't think we can do that for now. I'd let Bjorn,
> Konrad or Abel comment on this.

Sure.

> 
>>
>>>
>>>> When this GPIO is high, USB0 operates in
>>>> orientation detection mode.
>>>
>>> What does this mean?
>>
>> This means the switch will select the GPIO pair configured as
>> usb0_sbrx/usb0_sbtx.
>>
>>>
>>>>
>>>>>
>>>>>> +		};
>>>>>> +
>>>>>> +		oe-n-pins {
>>>>>> +			pins = "gpio168";
>>>>>> +			function = "gpio";
>>>>>> +			bias-disable;
>>>>>> +			drive-strength = <2>;
>>>>>> +		};
>>>>>> +
>>>>>> +		sel-pins {
>>>>>> +			pins = "gpio167";
>>>>>> +			function = "gpio";
>>>>>> +			bias-disable;
>>>>>> +			drive-strength = <2>;
>>>>>> +		};
>>>>>> +	};
>>>>>> +
>>>>>> +	wcn_bt_en: wcn-bt-en-state {
>>>>>> +		pins = "gpio116";
>>>>>> +		function = "gpio";
>>>>>> +		drive-strength = <2>;
>>>>>> +		bias-disable;
>>>>>> +	};
>>>>>> +
>>>>>> +	wwan_sw_en: wwan-sw-en-state {
>>>>>> +		pins = "gpio221";
>>>>>> +		function = "gpio";
>>>>>> +		drive-strength = <4>;
>>>>>> +		bias-disable;
>>>>>> +	};
>>>>>> +
>>>>>> +	wcn_sw_en: wcn-sw-en-state {
>>>>>> +		pins = "gpio214";
>>>>>> +		function = "gpio";
>>>>>> +		drive-strength = <2>;
>>>>>> +		bias-disable;
>>>>>> +	};
>>>>>> +
>>>>>> +	wcn_usb_sw_n: wcn-usb-sw-n-state {
>>>>>
>>>>> What does this pin do? Using pinctrl to set GPIO values is not
>>>>> recommended AFAIR.
>>>>
>>>> This pin functions similarly to usb-1-ss0-sbu-state; it controls the data
>>>> switch between signals from the USB connector and WLAN data.
>>>
>>> Could you please explain it? Does it toggle USB2 signals(you've added it
>>> to the USB2 PHY) being routed either to the USB connector or to the WiFi
>>> card? Or do you mean something else?
>>
>> Yes, that's right. It routes signals between the USB connector and the M.2
>> Wi-Fi card.
> 
> Ack. Please add a comment.

Sure, I will.

> 
>>
>>>
>>>>>> +&usb_2_hsphy {
>>>>>> +	phys = <&eusb5_repeater>;
>>>>>> +
>>>>>> +	pinctrl-0 = <&wcn_usb_sw_n>;
>>>>>> +	pinctrl-names = "default";
>>>>>> +};
>>>>>> +
>>>>>> +&usb_mp_hsphy0 {
>>>>>> +	phys = <&eusb6_repeater>;
>>>>>> +};
>>>>>> +
>>>>>> +&usb_mp_hsphy1 {
>>>>>> +	phys = <&eusb3_repeater>;
>>>>>> +};
>>>>>>
>>>>>> -- 
>>>>>> 2.34.1
>>>>>>
>>>>>
>>>>
>>>> -- 
>>>> Best Regards,
>>>> Yijie
>>>>
>>>
>>
>> -- 
>> Best Regards,
>> Yijie
>>
> 

-- 
Best Regards,
Yijie



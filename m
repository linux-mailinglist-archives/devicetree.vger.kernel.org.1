Return-Path: <devicetree+bounces-214816-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7276AB4A942
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 12:03:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9E3D816460A
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 10:02:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9BDC3148AB;
	Tue,  9 Sep 2025 10:02:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KnqQ6qAi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48CF73148B7
	for <devicetree@vger.kernel.org>; Tue,  9 Sep 2025 10:02:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757412147; cv=none; b=dNWlmJTvMf4hoIow+YIYTj/Xw1pENGQkL98W94j1Rnrp/itrvvOCon3gLBzaiWpNlTSq1+F+S827uBp4vrhaBeZ21ytf/tGni1c7Zj43g4ex2xZGqTiFk3ooOhINokF7bLzt/pFQpqN4o/+DKnbeleHzm9cpaI9t46TqcRLz0H4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757412147; c=relaxed/simple;
	bh=iQ5gERobvATb314ro5gdhE+DkIWkSDFz9Z8hAAya7KA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=k100DfsgMXmE+8Clh5muMLx7I5xILo35CctEnFy6b//8WyJlW2WQqhDQ++xhSO+iyFYiFJoK8Dq7Jf6s4U5hxNOwiMTi1TG7YFfgbStiQ9vbmneEysTd26GIko7pZvAIGWdh8KxeBI4O42LfWT99UuKhUtiBEFUvxSc85RRo+ac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KnqQ6qAi; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5899M04c004741
	for <devicetree@vger.kernel.org>; Tue, 9 Sep 2025 10:02:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4HaulBQ7AYoFu5zw4WFGYJoR+Ifng1FxEuEOGIbmKB8=; b=KnqQ6qAirfLwNjnQ
	FWYep/qK09brm/KftOca+OO1UjSL+rwsIoDXjs1SPz6Rw/AJx1GfiJ27yKV2Pyhg
	ucgkr2rcjVBp8NujvnglVswlEhl3VZUt1BpNrpguSPDsUUaXDpqwlXzhWDuR61PH
	d5l3ml2/gDCStL8Pw3Y6mINgtk+EjRCfQfC1/++LQUzML4OO5jxOjVtPIkJQWwR9
	9q8um6oKIt0+eFosstJxvdocSXztz+QDIK9z1BlgOv116NQmlJVJQrZ9SKaqqFun
	jwkU1sRlLXQeGDmAmATrhU1Tk30F/bp1F4mLmqLhj9mQkTGmtrl7kf3RjBun7bVk
	s1EGRQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490aapg3uf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 10:02:24 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-24ce3e62946so77598855ad.2
        for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 03:02:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757412144; x=1758016944;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4HaulBQ7AYoFu5zw4WFGYJoR+Ifng1FxEuEOGIbmKB8=;
        b=oz4vx7agH3TH4YtwodJvRNwZYTZCTtMTGokdiQZbKtrFsz8UJkhgTTn+QFqGk2aUOI
         5qK6YQqrtACZKaDw6AFtBrvh9NCsI3jjHi1Kx69K3Ic83zCnJ2c9qAYOstofC15xJzbJ
         WodGUSHw0IxevNRrr1g3xVpTVBWoyakNTCgd1mg/oqxrXHUPDn9GfUsxiAE+sbMMYkU1
         D+WhfpUc5nGwOYdsubQPZAJXT04MyhCDg4zOGYu+6MqCJc5DWw+vjnh5VBj4I1lLuxJD
         mw6rj+RLQmuzYua5xpstYpV+j4j7O84/Q3imjrCQX3cm1mpocJzqLTj+IVX6TobktZcV
         6hjA==
X-Forwarded-Encrypted: i=1; AJvYcCXv/EohcHPDPD4HVgcRlouewV+WjONRuKVOvJtdM44J2nzC+ISyFV4JHzi4bHGwgE4q503R3XCEvTHe@vger.kernel.org
X-Gm-Message-State: AOJu0YwX1oSG80tafTcNvnDCFPlmn0eWzZiLEjz38IPXW3iHR+EDFY0F
	f3CymWVaSRsOiOFDsVfjA9TGWJB/3KxIJuITP8ilWV2clpi7QrKWviEm0Cs0+CRKCIvndRSNAF6
	DDm8blRsEXnAYwKpTQcMsNO2JOTawU7wksMuxaTH98LsFWdKcQ3ySvHxEQR//ogKJ
X-Gm-Gg: ASbGncsA5ggRPo2OTVvM8CpB7P4XTyp7qRFrEDRU645s9tN0jbJAOfsnkOEggeus4BV
	AT64DoDZPCw6t9RsACLl+PW8vDuceAzVlKzUl6B023atAevh9kLJoXNA3l6Pzy04lizZuTf2IZf
	nalJhuCcqJe8bNmWCxy2mzWalZqqzcX7Q+Vixlk6ogYcyDsZ43vRmHqiqyCll4eqBXDBHkYVHUk
	YosLfc2e0J4oFiyYMqZ+cAt24hzCxq24hobDtvYt+q/l3rb21HbCnaNdmntz2sd9hCG/XhvuEaN
	Pp9EYZHgNtlCS0dvM6VA/+4Rlo7QtNhhHPBRHEvoReKx7/yxc9ZjonzYH7Zzyw8i4Dshms55am3
	c/lQGEsm6oz2hc+HEGWOalpdDqv7Rx3+TAw==
X-Received: by 2002:a17:902:f60b:b0:24c:9a51:9a4b with SMTP id d9443c01a7336-251703958bdmr150722565ad.21.1757412143548;
        Tue, 09 Sep 2025 03:02:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGetpndXROcKB2fp2rRqcvrm+wqc4vDETNgwz1xtv8hDlxdy1e7FS/7JbWqSHVAsyjPVhVOeg==
X-Received: by 2002:a17:902:f60b:b0:24c:9a51:9a4b with SMTP id d9443c01a7336-251703958bdmr150721735ad.21.1757412142865;
        Tue, 09 Sep 2025 03:02:22 -0700 (PDT)
Received: from [10.133.33.119] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-24cb28c3110sm151780825ad.120.2025.09.09.03.02.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Sep 2025 03:02:22 -0700 (PDT)
Message-ID: <483e3380-0e88-4a95-950b-0a533bf7ce17@oss.qualcomm.com>
Date: Tue, 9 Sep 2025 18:02:16 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 4/4] arm64: dts: qcom: Add base HAMOA-IOT-EVK board
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250909-hamoa_initial-v10-0-ec10057ffcd2@oss.qualcomm.com>
 <20250909-hamoa_initial-v10-4-ec10057ffcd2@oss.qualcomm.com>
 <c1dff274-4b71-4d18-be2d-eb5959111243@oss.qualcomm.com>
Content-Language: en-US
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
In-Reply-To: <c1dff274-4b71-4d18-be2d-eb5959111243@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=eMETjGp1 c=1 sm=1 tr=0 ts=68bffb30 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=sn0vIxX-2wHjl4zpZ4MA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22 a=cvBusfyB2V15izCimMoJ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 4vkyYl2sFkZcB5Mok8xE8YLAJk0xYeeU
X-Proofpoint-ORIG-GUID: 4vkyYl2sFkZcB5Mok8xE8YLAJk0xYeeU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAwMCBTYWx0ZWRfX/ReMVQWRrj9f
 t2KYklFfMISETRgcF/czmszAmlops2TmRyKiHV9dPl+BHCPvXj33SrVZ8tYcKy2YYoQ18GrXzEJ
 sqx9G7CvFapdmx7jnPXlnDR5PIsZHpg21tJTMX+m5gKiXMZu2+36b6K00nyj6kmgS1041yMawrL
 66GdHcOBUqId9k4UY8NX1Q7jxmaS5pkOJU085RVcmCHBzpgrsQ70ime76a4n0dAH2kJyZmpJyEP
 lk/LHkNyp9foVp8XYzx1THWTqq1akXLvC5eQZAb7DWpFmr+Z17tuTWOSN7kECPIIusKxS9xjBcH
 TdOvBZhjHcicch12rq1tFjKkQ+1kPI+HbGq2RxWhtmb0BRocpIKy6hfEfuPa1Gq8PJ77cWH8N+V
 VZPHpUlW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_06,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 malwarescore=0 clxscore=1015 adultscore=0
 bulkscore=0 phishscore=0 spamscore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509060000



On 2025-09-09 16:31, Konrad Dybcio wrote:
> On 9/9/25 5:56 AM, Yijie Yang wrote:
>> The HAMOA-IOT-EVK is an evaluation platform for IoT products, composed of
>> the Hamoa IoT SoM and a carrier board. Together, they form a complete
>> embedded system capable of booting to UART.
>>
>> Make the following peripherals on the carrier board enabled:
>> - UART
>> - On-board regulators
>> - USB Type-C mux
>> - Pinctrl
>> - Embedded USB (EUSB) repeaters
>> - NVMe
>> - pmic-glink
>> - USB DisplayPorts
>> - Bluetooth
>> - WLAN
>> - Audio
>>
>> Written in collaboration with Quill Qi (Audio) <le.qi@oss.qualcomm.com>,
>> Jie Zhang (Graphics) <quic_jiezh@quicinc.com>, Shuai Zhang (Bluetooth)
>> <quic_shuaz@quicinc.com>, Yingying Tang (WLAN) <quic_yintang@quicinc.com>,
>> and Yongxing Mou (USB DisplayPorts) <quic_yongmou@quicinc.com>.
>>
>> Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
>> ---
> 
> [...]
> 
>> +	sound {
>> +		compatible = "qcom,x1e80100-sndcard";
>> +		model = "X1E80100-EVK";
>> +		audio-routing = "WooferLeft IN",
>> +				"WSA WSA_SPK1 OUT",
>> +				"TweeterLeft IN",
>> +				"WSA WSA_SPK2 OUT",
>> +				"WooferRight IN",
>> +				"WSA2 WSA_SPK2 OUT",
>> +				"TweeterRight IN",
>> +				"WSA2 WSA_SPK2 OUT",
>> +				"IN1_HPHL",
>> +				"HPHL_OUT",
>> +				"IN2_HPHR",
>> +				"HPHR_OUT",
>> +				"AMIC2",
>> +				"MIC BIAS2",
>> +				"VA DMIC0",
>> +				"MIC BIAS3",
>> +				"VA DMIC1",
>> +				"MIC BIAS3",
>> +				"VA DMIC2",
>> +				"MIC BIAS1",
>> +				"VA DMIC3",
>> +				"MIC BIAS1",
>> +				"VA DMIC0",
>> +				"VA MIC BIAS3",
>> +				"VA DMIC1",
>> +				"VA MIC BIAS3",
>> +				"VA DMIC2",
>> +				"VA MIC BIAS1",
>> +				"VA DMIC3",
>> +				"VA MIC BIAS1",
>> +				"TX SWR_INPUT1",
>> +				"ADC2_OUTPUT";
> 
> It's good to write these entries in pairs, as that's what they
> correspond to.
> 
> Please also take a look at this commit:
> b49e37de8e70 ("arm64: dts: qcom: x1e80100-crd: Drop duplicate DMIC supplies")

Will update.

> 
> [...]
> 
>> +&i2c5 {
>> +	clock-frequency = <400000>;
>> +	status = "okay";
> 
> A '\n' before status is customary

Will update.

> 
> [...]
> 
>> +&usb_mp_hsphy0 {
>> +	phys = <&eusb6_repeater>;
>> +};
>> +
>> +&usb_mp_hsphy1 {
>> +	phys = <&eusb3_repeater>;
>> +};
> 
> See:
> 
> https://lore.kernel.org/linux-arm-msm/20250819-x1e80100-fix-usb-mp-repeaters-v1-4-0f8c186458d3@linaro.org/
> 

Great reminder! I'll take care of it.

> Konrad

-- 
Best Regards,
Yijie



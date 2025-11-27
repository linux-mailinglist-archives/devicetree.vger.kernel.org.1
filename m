Return-Path: <devicetree+bounces-242676-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CB6CC8DCB6
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 11:35:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 0F4864E4BCB
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 10:35:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FE1932ABEF;
	Thu, 27 Nov 2025 10:35:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SlN24uah";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gLJKlkuq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BDA2322C66
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 10:35:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764239732; cv=none; b=XVqrFFxZhBLt2hCI/XKNkbmFK8KAPjLxACK/c+NCN9FMgOeymXTmpzgRelJsW39VSC9XdRXS2kwW3ZnXIpfVCOQwlcYVFjy2ZOilAJA3H0QRr+ov6SCoWcpQAbrizbERgsJcW1x3DHgjzO4rua9sJkrL+OpmgjP/Wnxd/mMmKtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764239732; c=relaxed/simple;
	bh=IZmOkOUQbvF51UgDQA2iegvPseiOnRU6qrfwOaGYGDA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WXjIxeJTTJxLyY6rcrT5T7zudGPodlZFjZue7exPWbTvfL3z2/h7CwukP61buP9DF+xe7ZHFoiv8NyYCwvcYfzLdSgTni8BeykUQmUgdhKSVgwL7pnHenLA0UGWjGg0fubAJe7WiAmVS+fsOhyQxVT9XxGm8XEHUZQ/9qAU6nAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SlN24uah; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gLJKlkuq; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AR7Wprg2387849
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 10:35:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CQ5CZ5lkuQSkTy1eBTndhJ3KeWKax61oz52wB8xUhs8=; b=SlN24uahbwtlyyV4
	oaalvLUI4v/QdrgbpdAm38rwcIDbx2jPQRnVV2U5jULC0iGLSkfEWaaV6kMlaUT9
	BIRiif7RMNtXgTy8Y6AVR8sOnZ5xsdmSi7Hdk8Wt+oCJF2OsulYRQtboMZFyIh4S
	rXvuP19226cg5J7y1cJnyDPEe/LucFfehGob0qMAmAgKGh7nnT0lqLm2NMjBbYHN
	Eo3vATvAQIZ+MhELASQ1g11Jq3P9mVsiri+BfsZXkUynTpYGtGvYZhpmocH+Awu0
	rA8o09Pb51afzMywmDzCZz0cobFdNjNMdAbb5EijEnRtCwsFsTkzuQtIzv1rRAol
	kavICA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ap7n8j4ck-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 10:35:30 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4edaa289e0dso3181441cf.3
        for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 02:35:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764239729; x=1764844529; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CQ5CZ5lkuQSkTy1eBTndhJ3KeWKax61oz52wB8xUhs8=;
        b=gLJKlkuq+T6vNFtfHQiB8aIi0XbJxlUaS6bhGDd/TJfMGy0Opjo4WSEjF/3L9kYzXw
         WSduWapphgjNgIvGnc0pIQqsmJv0d11Dw0C30qBxkUdrYyB45reDvA1r1vk6vhBLK+Nd
         /TfusY+tb1Cm76sIuWApzPZ2Ym+pX2o3nj5dSR3LDJ2XoLFkMEmMbA/98CqVgksTW2hV
         1SQ08ss/HbDnyOF2pCAw2BSoVKCh0RxGwOJhMP5TrtLue4+A25kupPqBXSWyzWhsZ8Jx
         PykbVdwkB7mju4lRNUGLpJpfjXEZdOeb9XtdmK9dNlOGJJ8ugRDY0q8A+1YUevSX7olA
         awPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764239729; x=1764844529;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CQ5CZ5lkuQSkTy1eBTndhJ3KeWKax61oz52wB8xUhs8=;
        b=DKhj6qc9qyw+POkDTZma/+7xeVCLBSqSB230sx3z5MEX7g0rvf4D2kDdv4rnwhYxNS
         mA1lEM/J2Sdk5OvNJJpp+uB6FEpymK7NKN2fGfXLCjQJTpdQrwHFYvtWrt8OU9hSEMmO
         tHfRMGGxNLY5bHATa7Sph9N9GIb2mw4Yv7Ooy00wJWACnbITcjOwbNx9P17d7vJ5Jdnn
         +ma5xA+/rV4uCJQU3qUH+KUm535kX+C6WFySm42UsbgVVD+kRXFWY4J7z9BBfwJaEpLq
         0PwLKb0Rpdu9/t+FgW6cHuPMmJ71J0NTlV8b5QPqbAKfOLeZAiP2BbnYmLK4lig8MxSc
         GJJg==
X-Forwarded-Encrypted: i=1; AJvYcCWVUh1oNvBaJ9faSaz44N+KxS2tzJ1Uc5FGk1+EpH9KRFWS4s6/qyXmNR9/YdRLecGhMctkIdXNxgce@vger.kernel.org
X-Gm-Message-State: AOJu0YzbWlCGnkRdAyJ320I1DXUshQS+KTDQhjh+U0TugM1VfY2O+hHe
	ImX8tR06O6sLyJO8L2Xz1I+ffJmua4ppE1LhFtIapE3gDvG7Le98cEyhvzWoaVzKsana6SWXrm7
	lTMxkI8214bcUnc6ixO5iQbAGanfGI5RDheby7QS26xOdTqUdfLCuA5diWekJFSvA
X-Gm-Gg: ASbGncuwI6DP4jIXmZxRzdidJgJCDiUD2RB1BP0Qk1ak4MV3G/XYqmslpjcvS+3eO6v
	QhWkrUN8V1LVitfNXrx4f/4rMRCQ2OqmpaeprTdMLc/smqlXMUXwdi80qV57IlD4l1z8Pyi9Src
	K3VE22OdX+yrN3vLIWG8+mySDZyQ0rJl9dV9FNLP6zzk6WtHIzDG6wCwwbowsQnfwdcgAzWA4CX
	daU3ZRyNAjd/vR5mPrlXFBQTo3zM6+/gbb3tHrNXULdbdFsJhUP/U+VplaO0mEUlAdd8UMLTdN8
	41TaT1U+zCYkSwEOeM9kOtQqRGhKA2myrGQjhp7ydgJeqUuKf6RApRmSgL7SdUu8v85xA/BffsJ
	17p5nHvMSdWRY63h4Cu3kCafjm/BHtYjn6/lNMmWuJbtndzCXoeI0gh7CqkFNpDsCGUQ=
X-Received: by 2002:a05:622a:1349:b0:4ed:7f85:225c with SMTP id d75a77b69052e-4ee58941ff1mr231590861cf.10.1764239728936;
        Thu, 27 Nov 2025 02:35:28 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGlXaY7uUqM1LyPWltTG04p98f76EvrzQJwc+84Bz/HUgMBrU8eYzDS1q0IVPkNXaZGOdc38g==
X-Received: by 2002:a05:622a:1349:b0:4ed:7f85:225c with SMTP id d75a77b69052e-4ee58941ff1mr231590631cf.10.1764239728453;
        Thu, 27 Nov 2025 02:35:28 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64750a6ea36sm1204454a12.2.2025.11.27.02.35.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Nov 2025 02:35:27 -0800 (PST)
Message-ID: <1b6342be-bdd6-44da-a279-28b55f7167d9@oss.qualcomm.com>
Date: Thu, 27 Nov 2025 11:35:24 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 6/6] arm64: dts: qcom: qrb2210: add dts for Arduino
 unoq
To: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Riccardo Mereu Linux Kernel <r.mereu.kernel@arduino.cc>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, broonie@kernel.org,
        linux@roeck-us.net, Jonathan.Cameron@huawei.com, wenswang@yeah.net,
        naresh.solanki@9elements.com, michal.simek@amd.com, nuno.sa@analog.com,
        chou.cosmo@gmail.com, grantpeltier93@gmail.com, eajames@linux.ibm.com,
        farouk.bouabid@cherry.de, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-spi@vger.kernel.org, m.facchin@arduino.cc,
        Riccardo Mereu <r.mereu@arduino.cc>
References: <20251120155825.121483-1-r.mereu.kernel@arduino.cc>
 <20251120155825.121483-7-r.mereu.kernel@arduino.cc>
 <45329a9f-545b-4425-9667-26bceca67982@oss.qualcomm.com>
 <CAKA1Jha7HuEC-KgGktmuiG-U0ZVbKnmLU4bXTwLg+paoLpQ=kQ@mail.gmail.com>
 <CAFEp6-0kHtbXKQRtaLUB1bqRV5s_c_bcoAWPdTOH3JvV69rUqQ@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CAFEp6-0kHtbXKQRtaLUB1bqRV5s_c_bcoAWPdTOH3JvV69rUqQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: HRZEeKTjzA-uO2RNEarflXkcfBqxCEaL
X-Authority-Analysis: v=2.4 cv=AufjHe9P c=1 sm=1 tr=0 ts=69282972 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=6pAWIAOP_nUCoUPfe-IA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: HRZEeKTjzA-uO2RNEarflXkcfBqxCEaL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI3MDA3NyBTYWx0ZWRfXzLQ7fieTvtYo
 WlYXnKPoSUR84ZIX07HdtmLdIDXSQjaDfss9Vq0NusqdHv/qcKvEsHciXDPbvVJVKzUOowz4+WO
 LoDnisPif8XR3VHSNYAp9NZSeRV2/MI9cgZO/MpoG2wwNo0/KnJc5qS664san+NoLJFwylZMCxC
 3vuXgCuYTqGZigMN5OTAmdbn14zY0OiiOwkrvELTlqRPyNu44SSVzfXDbxEoNi6ufQehyDu9sSA
 CM0IppfuxndQAigdOMolVa6tmmZ072Fy4KYteEgM+nqltReS7xV3XsiHHgWtzg1adBeO8rkMMHE
 KasE0kjpQ1NMfxktbD3xSjN697Z8nHsXkKtQPt2tOYPVdqUBjlRqQuZyTx+OXNJLb4w2deGaHb3
 nkzPDgpt3MLEFxkMGJ9dbTE1YbpXnw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-25_02,2025-11-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 bulkscore=0 suspectscore=0 adultscore=0
 phishscore=0 spamscore=0 impostorscore=0 lowpriorityscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511270077

On 11/26/25 3:03 PM, Loic Poulain wrote:
> On Wed, Nov 26, 2025 at 10:28 AM Riccardo Mereu Linux Kernel
> <r.mereu.kernel@arduino.cc> wrote:
>>
>> On Mon, Nov 24, 2025 at 12:44 PM Konrad Dybcio
>> <konrad.dybcio@oss.qualcomm.com> wrote:
>>>
>>> On 11/20/25 4:58 PM, Riccardo Mereu wrote:
>>>> From: Riccardo Mereu <r.mereu@arduino.cc>
>>>>
>>>> Arduino UnoQ is a single-board computer combining Qualcomm
>>>> Dragonwing™ QRB2210 microprocessor with STMicroelectronics STM32U585
>>>> microcontroller.
>>>> Support to a simply boot to shell environment includes:
>>>> - UART, I2C, SPI
>>>> - onboard LEDS
>>>> - eMMC
>>>> - WLAN and BT
>>>>
>>>> Signed-off-by: Riccardo Mereu <r.mereu@arduino.cc>
>>>> ---
>>>
>>> [...]
>>>
>>>> +&wifi {
>>>> +     vdd-0.8-cx-mx-supply = <&pm4125_l7>;
>>>> +     vdd-1.8-xo-supply = <&pm4125_l13>;
>>>> +     vdd-1.3-rfa-supply = <&pm4125_l10>;
>>>> +     vdd-3.3-ch0-supply = <&pm4125_l22>;
>>>> +     qcom,ath10k-calibration-variant = "ArduinoImola";
>>>> +     firmware-name = "qcm2290";
>>>
>>> I'm not sure about this line but otherwise this lgtm
>>
>> This should be fine, I'll gently ask Loic (added in CC) to confirm that.
> 
> Yes we need to use the firmware APi file under WCN3990/hw1.0/qcm2290
> as it has the correct configuration for the QCM2290 platform.
> From log: The wlanmdsp for QCM2290 / QRB4210 platforms requires
> single-chan-info-per-channe feature bit to be set.

Thanks for confirming folks

Konrad


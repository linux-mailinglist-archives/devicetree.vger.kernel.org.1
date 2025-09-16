Return-Path: <devicetree+bounces-217812-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CC22BB59488
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 13:00:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C95F07AE90F
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 10:58:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D66D72C3271;
	Tue, 16 Sep 2025 11:00:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="a59Hb0H1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62D372C3258
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 11:00:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758020418; cv=none; b=PPm2cLkaEVqU1jYeQo9yAA+vX55afTIjvu8YAadT+tTIkByEamtiMxgvSHhdiwEgIRgKLTIXDtU5k/GScMQkFgiKl/MFGPlU5nPhVm7Q67tl6fogxpo6bvZzxxoIPUwUXd+8cEZUY1K5BaZXg4FY4op1kxFzJjwjSIfoAkJg0fE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758020418; c=relaxed/simple;
	bh=lSiaAwQtmu8l3KrCfNgexYAeTwY8RKqZxR3XprYn4lI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=J4HaTDqR9TlujbarFMci3DH8X7eOslIF0LQ1+J72ZJsHokj7w8EBMbSeuc+tdl4TxTEu03ZfEHCNuqBSjGI19Z8B2zrHHSnPZkSeDfqOe1qsASQaWZkgRDmiRQyvrO0DAoLf1HLljr0A6Yxm/gB4PNIW+yLbi4NKWNKuBik4lo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=a59Hb0H1; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58GAAHQM010542
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 11:00:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	V3Bwbj3qyGvIGNCNZf70GMV21ynU087f+ba7OBsqQnQ=; b=a59Hb0H1co0lARzZ
	iuZu0QYAoh9HLmrBnxToZMG3Dhwf105HrnqhoR+EBBBRYXRkYwkDLGIx7Du3Bx7P
	tEo8qrZmUVWZex6G1y3Uudu7xOiZG0mk8B6hrp5Ms6SVokXAfSdcgsXV4joAX5ju
	mR/8oIZ7U3DQRPQW1PaaNK0Ub6DmuyBbCRi/mNUSAQroyFHwMiBvbYnHA0MkEWEk
	7dtstpC8Wjexnwr03IWqlAx8x1ERzG4ZLR8MIcTRZwv7Q0tIRlFGRi44FDPf+SR5
	pBfGLaqJJCG3Y7w7plq4saiUt0ht1wz5fXYj8TYJLO88KPIVVxNuP1c94297O1g5
	0mYU2A==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4951snrdaw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 11:00:16 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-80e91c02c8cso132609985a.1
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 04:00:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758020415; x=1758625215;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=V3Bwbj3qyGvIGNCNZf70GMV21ynU087f+ba7OBsqQnQ=;
        b=KKdKQYmkIzD15J6p7s0gog4oDg/3p4QbMvA+iV5Ux7eg80PEuERbN5qlHkZt7Uu9oG
         24kEQWXECw46clYqc7K6Wji0dhIglNRFEaLWVKXOiADELbrnGKl2bQ0sFbzYVquHcHCa
         Hm+JNIs/rMqVZ0b0B2U8C0XtIgm/ozyrpxdrCxUfNjlTcvF9p+d6WrAFHFk+aAkpbSSn
         b6Sh5IGASZKVgmCGfCjtqtIIdkWDlYSw88rpYDhJbdKQNRtMx0j2/j/I10GeENaVZO+g
         BxFiu9gtDpO7O96SbyghLGIz9l/0mvL/IonZigJ+p9A1pOI/SISiuwHwssQm6I1J5/6B
         kEeg==
X-Forwarded-Encrypted: i=1; AJvYcCUXcZpHcAOML58r1z6sX4RY8/8/GUuKseolo3Eg8zHIbBOd595PYxGWQjm+NOJh/bHgqfIoSjgIb7zM@vger.kernel.org
X-Gm-Message-State: AOJu0YxzSln/ixB3p8+ourfl+T/7z1/pNtIaqQt2g5VdVUHyNniafRNA
	hAK4LShE/7O0k7N0Y1uax0MaMblghc6LKEDnwtML5FmEyfBCR+W+iXhOrtxP9OA2Zz0NBWcTzyK
	AHeca98iL/yS8WLguOVinKxV1Yu3VCnLViezuI7ZIW2Oy9Kw0H9lwt/DWKFDP8Rs2
X-Gm-Gg: ASbGncuz7K7NnB9K752Ljk6xcaOk1shIV3Bdrup7dy2MFwJJ22rpnK0UwSdt9RJ0IuH
	R6RvrEfSJBR8ydXA40qF1eItFJbFxikeA44qCnjawFEjPrmAajkh13aggrapQkV9iGV/TwrmqXe
	X4J2ukteO0aIPKXXWu+YuzifCFRL8ABqwu1axPmtgA1v51si1+KAcfAJLqjdzVPGN9ii65A61ep
	mj3C6lnrenDtkRNpIaJw6jQqCayfniSVsmeyVA1Ho7gJ+eQFjwBUjA+RhZJ2t6f9+VOsmV+JZxk
	K9No+lbjAURlqX0aebVORCbgNHk+buJQuqIxmEo+iRP2BRpBf3IlYLPJDEvUrwqzI0r0WaDhis9
	Wbu854G/ZD5+dT/5yxwzOqQ==
X-Received: by 2002:a05:622a:834d:b0:4b7:7dbf:9a8a with SMTP id d75a77b69052e-4b77dbf9f29mr110864711cf.6.1758020414215;
        Tue, 16 Sep 2025 04:00:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHKU9cobyOEfY+YQm5wRso/r5A+Y7Q8gplBHC/ZGUi55Jhqj/RSggEBomsnCmJzcZ8GLys+ig==
X-Received: by 2002:a05:622a:834d:b0:4b7:7dbf:9a8a with SMTP id d75a77b69052e-4b77dbf9f29mr110864251cf.6.1758020413354;
        Tue, 16 Sep 2025 04:00:13 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-62f638e576bsm1218127a12.23.2025.09.16.04.00.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Sep 2025 04:00:12 -0700 (PDT)
Message-ID: <03fe6810-fd37-4883-8fd3-f4919dec1b8d@oss.qualcomm.com>
Date: Tue, 16 Sep 2025 13:00:10 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 4/4] arm64: dts: qcom: Add base HAMOA-IOT-EVK board
To: Yingying Tang <quic_yintang@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Stephan Gerhold <stephan.gerhold@linaro.org>,
        Yijie Yang <yijie.yang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Yingying Tang <yingying.tang@oss.qualcomm.com>,
        Shuai Zhang <shuaz@qti.qualcomm.com>, zhichen@qti.qualcomm.com
References: <20250910-hamoa_initial-v11-0-38ed7f2015f7@oss.qualcomm.com>
 <20250910-hamoa_initial-v11-4-38ed7f2015f7@oss.qualcomm.com>
 <aMPhEm8PuhEofHP7@linaro.org>
 <317ffa87-060c-4f1b-a6bf-61bb27367477@quicinc.com>
 <jimz3qnjrcvemvgrqpwxq4zmywfo6psplsg4jefkvvpiwlffek@fwn3juynr4zx>
 <b3bf54a2-f33b-44d5-a9e4-65ba18ea267d@quicinc.com>
 <ee2d0d92-bff9-4593-a912-7e4b1d66913b@oss.qualcomm.com>
 <17d1e632-31c9-48b2-bf0f-5b57234de113@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <17d1e632-31c9-48b2-bf0f-5b57234de113@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=JO87s9Kb c=1 sm=1 tr=0 ts=68c94340 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=Ojoud9tNSuJXTGgBNUoA:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: xZAJRf1_FA4QhTzIQGcpdcW6qgMU92di
X-Proofpoint-GUID: xZAJRf1_FA4QhTzIQGcpdcW6qgMU92di
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDA0MCBTYWx0ZWRfX4SpBThlkgV0j
 DIJKFGvNo/0iOUHNGTrqwxR+uIRsj5lw7IQqISw42Ke1AWjFlL4vcevfdHpHspTFunPQWPYBjeY
 0ZQ24edsV5n9/6Hjc0pw4lN2QyCztnutWiFg7oqHrzruDbvPc2Ep0eMaSo3nTbQr4O6f2YkbkNl
 lgoh73+LXMCJsC55JqHQkVA8PpyhCz7nrUaEWiXLH5unkB3renWXm/dmBSrlIE+fLSa/0Px/soM
 s+YBK1Omg3mU74KvKFFuc2Qr5k7Dpl29obmNTkGaWFIqch9IyCxlygMdPoOlKd9o/3CrGMWTIdg
 auEgEaE3+arIYnIdok4+rQvtZmwa64Rr8sla9/NSDNlkem5ilpa9ezQt3/5jrX/cg1nH/qGHGfa
 7Mt20T9f
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_02,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 spamscore=0 clxscore=1015 adultscore=0
 malwarescore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509130040

On 9/16/25 12:39 PM, Yingying Tang wrote:
> 
> 
> On 9/16/2025 6:36 PM, Konrad Dybcio wrote:
>> On 9/16/25 12:29 PM, Yingying Tang wrote:
>>>
>>>
>>> On 9/16/2025 6:14 PM, Dmitry Baryshkov wrote:
>>>> On Tue, Sep 16, 2025 at 09:42:26AM +0800, Yingying Tang wrote:
>>>>>
>>>>>
>>>>> On 9/12/2025 5:00 PM, Stephan Gerhold wrote:
>>>>>> On Wed, Sep 10, 2025 at 05:02:12PM +0800, Yijie Yang wrote:
>>>>>>> The HAMOA-IOT-EVK is an evaluation platform for IoT products, composed of
>>>>>>> the Hamoa IoT SoM and a carrier board. Together, they form a complete
>>>>>>> embedded system capable of booting to UART.
>>>>>>>
>>>>>>> Make the following peripherals on the carrier board enabled:
>>>>>>> - UART
>>>>>>> - On-board regulators
>>>>>>> - USB Type-C mux
>>>>>>> - Pinctrl
>>>>>>> - Embedded USB (EUSB) repeaters
>>>>>>> - NVMe
>>>>>>> - pmic-glink
>>>>>>> - USB DisplayPorts
>>>>>>> - Bluetooth
>>>>>>> - WLAN
>>>>>>> - Audio
>>>>>>>
>>>>>>> Written in collaboration with Quill Qi (Audio) <le.qi@oss.qualcomm.com>,
>>>>>>> Jie Zhang (Graphics) <quic_jiezh@quicinc.com>, Shuai Zhang (Bluetooth)
>>>>>>> <quic_shuaz@quicinc.com>, Yingying Tang (WLAN) <quic_yintang@quicinc.com>,
>>>>>>> and Yongxing Mou (USB DisplayPorts) <quic_yongmou@quicinc.com>.
>>>>>>
>>>>>> This looks like you should have Co-developed-by: tags together with
>>>>>> their Signed-off-by: tags.
>>>>>>
>>>>>>>
>>>>>>> Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
>>>>>>> ---
>>>>>>>  arch/arm64/boot/dts/qcom/Makefile          |    1 +
>>>>>>>  arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 1221 ++++++++++++++++++++++++++++
>>>>>>>  2 files changed, 1222 insertions(+)
>>>>>>>
>>>>>>> +
>>>>>>> +	vreg_wcn_3p3: regulator-wcn-3p3 {
>>>>>>> +		compatible = "regulator-fixed";
>>>>>>> +
>>>>>>> +		regulator-name = "VREG_WCN_3P3";
>>>>>>> +		regulator-min-microvolt = <3300000>;
>>>>>>> +		regulator-max-microvolt = <3300000>;
>>>>>>> +
>>>>>>> +		gpio = <&tlmm 214 GPIO_ACTIVE_HIGH>;
>>>>>>> +		enable-active-high;
>>>>>>> +
>>>>>>> +		pinctrl-0 = <&wcn_sw_en>;
>>>>>>> +		pinctrl-names = "default";
>>>>>>> +
>>>>>>
>>>>>> regulator-boot-on?
>>>>>
>>>>> It shoulde be regulator-always-on
>>>>
>>>> Why it's not boot-on and always-on?
>>>>
>>> As I described before, connectivity power is voted by UEFI in boot phase.So PCIe link between connetivity card and RC4 is established once RC4 is on.
>>> If we set this node as "regulator-boot-on", connectivity power will be down first then up. That cause PCIe link down and the link can't be trained again unless you reboot board.
>>> So we can't set it to "regulator-boot-on"
>>
>> Surely gpio-regulator.c implements .get_voltage which reads the pin
>> state though? Did you test this, or are you theorycrafting?
>>
> Yes we tested this case many times, "regulator-boot-on" causes PCIe link down. No any issue with "regulator-always-on"

We didn't ask you to remove 'always-on'. That makes sense because
it avoids an extra call to (re-)assert the GPIO if both are
specified

Konrad


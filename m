Return-Path: <devicetree+bounces-187459-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A4D1CADFF66
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 10:05:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 23589188CD82
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 08:05:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6719E25B2E8;
	Thu, 19 Jun 2025 08:04:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="i+1PGMhf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B551D2472A4
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 08:04:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750320299; cv=none; b=eS8V5WvHWaECCl/ZD1GnbQIJkZfbpxfRkM8Xz/89VHPlzDbBIisRACpOE71wHM0WUSLYvIgKAsjzZ0pIYt/8DwxANkLB66Ia+CZhJpBlhbgKQQWonebvAZyrGwWKj/5gx0XY5Y2s5rbgnWN4O+zvwuf7i+7SKUs2ywRY5lW7DN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750320299; c=relaxed/simple;
	bh=PbpTuz4WTa28cFpAxtpOHQNwNhJ0jkygBok3OeWvnoA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=i6HaWtRDYAyQZm9c5K6iCeRkoxfkiEY2wW/qCxe4VTia5fS1793MKdi4o0g3+Z5pLx5///JDLZkAM8lA/7hM/BU+rO5Wkd/jyR6HbXxApcF6kAXy6JWpH+ibGx+QxIj12DPKJwrPMye3WGytN6mbWAZVJAeGqZDbS5jh6WNFE9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=i+1PGMhf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55J6EPqo028015
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 08:04:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	l5CbaYk82IflDePG5vYT+cBebOeLvhXszPekPl5GZ2g=; b=i+1PGMhfpRspR4H3
	WDFJVrXsmTNkhW7gw6r4LfxvGRv3y/HmOeHN4FnQb/l7BgzaeMOZgGjLPhLPucZm
	hrEb02cLBHd9AG/uC5DUVjDjuttrWpTjLVCU5XpiJvei9oTDyhLbz/Bxy1M0VtMH
	sUNhfyVEJsuAJBUED3fYFI8wvqD4Onim1BhQd6bwuUIvBIQOfiswDqC1OGysjqCg
	/mFqedjpI12RLGlw8GSnD/KkRiSg893FKk199dG9bu/YwM4ankAVhHVnSLAQrYA7
	w5ytGDkBWHS9CT3SNAAqmVbogPy3udWxvPt9E1y2niP7hcPtLkYtSwQq7uPyeRgH
	+qfi0g==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4791f7f3gq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 08:04:56 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-234906c5e29so8475055ad.0
        for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 01:04:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750320295; x=1750925095;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=l5CbaYk82IflDePG5vYT+cBebOeLvhXszPekPl5GZ2g=;
        b=PiUp0z/hV0TlcRRNY6MTHHWh7D0Thy9tA9DIU5zpYhWcmYKVD0TUYiyVOVXuca3zxL
         v78QeGuVuPiGtBhuQ19Ulmg2/qrVI+TcbwDjtSOFc0bdjhAGQq1cwNaTyLHk0kmmHSVZ
         /9nPOzpaTvHk6RXDA7xwlkCGfOSlpS5FDQpCSdPtzuYIdIGbueRG8mIQxLhTfRuaACoJ
         22NPd5wxc9e5lUPLg7CvE/9C/13f5VyPsdRymuyG5Lc/s9EHNhC7l9DW/SP50u0kHxjg
         MxsQ+c/8Np9I8HshPpRglfD+5cnMYpCSoKGclnLMrUbqkEs/0oWrV45+C9bvfWfgt07V
         mVZg==
X-Forwarded-Encrypted: i=1; AJvYcCX9R/r3qWdNWd2PU/bPT3wHwHPCA67VPza0DM7A7bAxy8xRSBP6J16kf/EXF6+wxJ8hS1GtSVoIkp36@vger.kernel.org
X-Gm-Message-State: AOJu0YyahLJ0u45GO37TlKHgCIMbob8UMr4cVF6OLMfkvh6Kvgi7LcL1
	f/2Aa7CVqztE5wXsWDnWZbtHDY3u78PZgVczbf6m3Y37RAC9ZML8amyVBdWdCoPlFoHF+qRyosA
	PIn5Ob2xk6ay3CMF8C1JpcE/NUaG0ObLD7WZ933tfTb2Adh4VXEQk8vFEuOE14WsH
X-Gm-Gg: ASbGnctGlxWbdzujaTL6jLMkQ6+NbhSAXGtZ//m5hnW5VQ5b7mTb/fTwDSCAmt2ED9q
	kQnk2ChtAIsUfx7UxLr7gRzRoyvPWgYbH6wNYRcZc9ZKYAO1MOT3w7qSmk/vc6rDiyS+YwYv6NT
	nN7C4BgxNN29fcDudYTLGSw6m51+c/LO+jY/kFJoXfqUnhitf3+jBfNWeGSlLFPHX9/sLqG5MAZ
	sKgq/tPJQvrkZBy0ZEHk1lhyMnw8TBORwGmAWuSQoH+SY5IgFSZT53rkVacjPzVSYj7H7l9dKF+
	gr8CFvCmWXf5B1fewucGUSHDwKb+O7ZTXnFzoxm4/m1Dn8biDX0SnnE0e8HP
X-Received: by 2002:a17:902:e94c:b0:234:df51:d16c with SMTP id d9443c01a7336-2366b149ff4mr331118615ad.45.1750320295231;
        Thu, 19 Jun 2025 01:04:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGY1beQgQr3/xXUKU2HPw/CdQ0Sirtdrq7sSeNKyvBRqo0slYfZrHuVzsUs/ENA+cfekMDTEQ==
X-Received: by 2002:a17:902:e94c:b0:234:df51:d16c with SMTP id d9443c01a7336-2366b149ff4mr331118135ad.45.1750320294704;
        Thu, 19 Jun 2025 01:04:54 -0700 (PDT)
Received: from [10.218.21.68] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2365deb2ce2sm114714615ad.161.2025.06.19.01.04.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Jun 2025 01:04:54 -0700 (PDT)
Message-ID: <073c293c-325c-484e-b843-80e254716d7c@oss.qualcomm.com>
Date: Thu, 19 Jun 2025 13:34:48 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: qcs9075-evk: Add sound card
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_pkumpatl@quicinc.com,
        kernel@oss.qualcomm.com
References: <20250616070405.4113564-1-mohammad.rafi.shaik@oss.qualcomm.com>
 <20250616070405.4113564-3-mohammad.rafi.shaik@oss.qualcomm.com>
 <6463f18d-b258-4773-aa12-d3ae3af60715@oss.qualcomm.com>
Content-Language: en-US
From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
In-Reply-To: <6463f18d-b258-4773-aa12-d3ae3af60715@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE5MDA2NyBTYWx0ZWRfX4MTv0+ANTjkz
 94dbC1511OQwnPc1SOGt5dEvGdAk0OkyPiDlzxU5A6dyL2WoADGezvCE/yElqKUqZQzc5kdZzd/
 LqH9C0Dnf+o0ZT5sqLq6hnZHAl7Ux6b6NeiwhhyCkL1eGG/DZk5TkEt0QzN5iBrXiKYJqIHsCj0
 xR8mjQkgPZrY2F0zqGRCl6Kbz5N7R/UXvb4ff1CdOq3T/xiJAlYSUxVpKvinsOEg0R0tLFq64Nn
 UVLarLuPTroFw1ZHUTNz5YTf+rmrOLLbb3c3sPMcOhR0r86WkppJc7ixXO+bnPkoxGHUg0oqHgo
 qrbeIluu0NyS5bSOqgNHXeKo75/qKwiUL4+bofw6LgeR2pr1ATLuMsWjSWXYV1LHNILcqNj3Nve
 UyapFMkwDGcjBx2QHwy2eMeJF4DsNPbXxFauPRGj+cvLqv7FU2iPkaWo48nkaPudkdnT5NA9
X-Proofpoint-GUID: 0r9E-tMHJ6q_OHYV_JdyFyRRXK_Zru_z
X-Proofpoint-ORIG-GUID: 0r9E-tMHJ6q_OHYV_JdyFyRRXK_Zru_z
X-Authority-Analysis: v=2.4 cv=FrIF/3rq c=1 sm=1 tr=0 ts=6853c4a8 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=yNxIl_n-nE1iyR5tU-sA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-19_03,2025-06-18_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 spamscore=0 priorityscore=1501
 lowpriorityscore=0 adultscore=0 mlxlogscore=970 bulkscore=0 impostorscore=0
 malwarescore=0 phishscore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506190067



On 6/16/2025 4:54 PM, Dmitry Baryshkov wrote:
> On 16/06/2025 10:04, Mohammad Rafi Shaik wrote:
>> Add the sound card node with tested playback over max98357a
>> I2S speakers amplifier and I2S mic.
>>
>> Introduce HS (High-Speed) MI2S pin control support.
>> The I2S max98357a speaker amplifier is connected via HS0 and I2S
>> microphones utilize the HS2 interface.
>>
>> Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
>> ---
>>   .../boot/dts/qcom/qcs9075-iq-9075-evk.dts     | 52 +++++++++++++++++++
>>   arch/arm64/boot/dts/qcom/sa8775p.dtsi         | 14 +++++
>>   2 files changed, 66 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/qcs9075-iq-9075-evk.dts b/arch/ 
>> arm64/boot/dts/qcom/qcs9075-iq-9075-evk.dts
>> index ab161180d1d5..d073c6f95d4c 100644
>> --- a/arch/arm64/boot/dts/qcom/qcs9075-iq-9075-evk.dts
>> +++ b/arch/arm64/boot/dts/qcom/qcs9075-iq-9075-evk.dts
>> @@ -5,6 +5,7 @@
>>   /dts-v1/;
>>   #include <dt-bindings/gpio/gpio.h>
>> +#include <dt-bindings/sound/qcom,q6afe.h>
>>   #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
>>   #include "qcs9075.dtsi"
>> @@ -21,6 +22,57 @@ aliases {
>>       chosen {
>>           stdout-path = "serial0:115200n8";
>>       };
>> +
>> +    max98357a: audio-codec-0 {
> 
> This wasn't sorted out properly.
>

Ack, will take care in next version.

>> +        compatible = "maxim,max98357a";
> 
> No SD_MODE pin?
> 
Yes, SD_MODE pin is always on in this specific qcs9075-iq-evk board hw.

No need to handle.

>> +        #sound-dai-cells = <0>;
>> +    };
>> +
>> +    dmic: audio-codec-1 {
>> +        compatible = "dmic-codec";
>> +        #sound-dai-cells = <0>;
>> +        num-channels = <1>;
> 
> no enable GPIO, no vref-supply?

On qcs9075-iq-evk boards the enable gpios and vref-spply is always on.
Not configurable from DT.

Thanks & best regards,
Rafi.
> 
>> +    };
>> +
>> +    sound {
>> +        compatible = "qcom,qcs9075-sndcard";
>> +        model = "qcs9075-iq-evk-snd-card";
>> +
>> +        pinctrl-0 = <&hs0_mi2s_active>, <&hs2_mi2s_active>;
>> +        pinctrl-names = "default";
>> +
>> +        hs0-mi2s-playback-dai-link {
>> +            link-name = "HS0 mi2s playback";
>> +
>> +            codec {
>> +                sound-dai = <&max98357a>;
>> +            };
>> +
>> +            cpu {
>> +                sound-dai = <&q6apmbedai PRIMARY_MI2S_RX>;
>> +            };
>> +
>> +            platform {
>> +                sound-dai = <&q6apm>;
>> +            };
>> +        };
>> +
>> +        hs2-mi2s-capture-dai-link {
>> +            link-name = "HS2 mi2s capture";
>> +
>> +            codec {
>> +                sound-dai = <&dmic>;
>> +            };
>> +
>> +            cpu {
>> +                sound-dai = <&q6apmbedai TERTIARY_MI2S_TX>;
>> +            };
>> +
>> +            platform {
>> +                sound-dai = <&q6apm>;
>> +            };
>> +        };
>> +    };
>>   };
>>   &apps_rsc {
>> diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/ 
>> dts/qcom/sa8775p.dtsi
>> index 07ca6dd4f759..968730da180d 100644
>> --- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
>> @@ -4711,6 +4711,20 @@ tlmm: pinctrl@f000000 {
>>               gpio-ranges = <&tlmm 0 0 149>;
>>               wakeup-parent = <&pdc>;
>> +            hs0_mi2s_active: hs0-mi2s-active-state {
>> +                pins = "gpio114", "gpio115", "gpio116", "gpio117";
>> +                function = "hs0_mi2s";
>> +                drive-strength = <8>;
>> +                bias-disable;
>> +            };
>> +
>> +            hs2_mi2s_active: hs2-mi2s-active-state {
>> +                pins = "gpio122", "gpio123", "gpio124", "gpio125";
>> +                function = "hs2_mi2s";
>> +                drive-strength = <8>;
>> +                bias-disable;
>> +            };
>> +
>>               qup_i2c0_default: qup-i2c0-state {
>>                   pins = "gpio20", "gpio21";
>>                   function = "qup0_se0";
> 
> 



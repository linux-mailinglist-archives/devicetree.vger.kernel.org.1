Return-Path: <devicetree+bounces-180712-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CD65AC49B2
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 09:55:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2E46C3A3F82
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 07:55:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A990E248F48;
	Tue, 27 May 2025 07:55:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nmfN5Zls"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7C631E2307
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 07:55:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748332548; cv=none; b=dR9DyE8l8ESuFEFSyoZAYbc73FNm5tY+JVtZlYE3ZGvms4jcFVd1R1o/AblQOZMVP44+v+8VflJIu/s1mOk6qd+eZjDpXj69fAUcljejqPvzbX/Mgavx5NxEaXxDrEJnho7taeuTWo45sYUWwpZt+T+zk9HzZ4979vsF5TpQkMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748332548; c=relaxed/simple;
	bh=YkQQddHb8jlPo3SKLo59UpwD65Y7ZPEUTHo35ozEy+g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XBmHh8e5c+S8XXY8x1HqjjE7tOhOblrrpzlG3YkapmWVC8Y1E/TOkWIEQKAY58BgoQpxbJazX4GFzwi8CayjesXTwohmA3szxhTb8sB9ruos9oxvR/hzbytxGBG0SvTXf+sgg7AqxSQn4o6Hin+Zc9mVSRiapOxNJ0iy/pL4cH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nmfN5Zls; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54R4K3YU012741
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 07:55:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sSQWEBsBEF9PnfN+71Hx0sgWBcdAij9SMJAFGtN0t2E=; b=nmfN5ZlsYQ54EIHM
	Oj8+vRsULwUXZ8hmAVEjFTWJqg3oaemHWt+g/JKEP88oDLn6hVrdVcf6fqGo46JQ
	3QbDR/IWqQa2SJS/FfK6iS+MzHGz5fuOpAPqdtkcMnm9lYrkF9jEJvsnrPeQqNef
	HzohpjcG4t6S7O7rVKfK77q7IxxOX7ZexW++VoeFDF5w6LCeY+2ED/uUVZFTXTDW
	c7gQwEuti+Gguwl8ohhA7dB6uAwdF02GH6F27JDpfbK1+PLs57W67i75yL1+rDaQ
	C/tBPuOmlia4h+Tn+9jWwBQk6/VuQ5L6naJys9FwLGtAxgQ5t4kr1/91C7Y0d7kP
	4lWIGA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46w6918fpa-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 07:55:45 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2326a6d667eso27514725ad.1
        for <devicetree@vger.kernel.org>; Tue, 27 May 2025 00:55:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748332545; x=1748937345;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sSQWEBsBEF9PnfN+71Hx0sgWBcdAij9SMJAFGtN0t2E=;
        b=DXzqM+/U6GqhC6IHD+Ft50TUUs8lugbYTnLJltgFOtfO+j0Om9QKTRp9GHj5cHNmEp
         TbCTEpat4aHBURnJsnALJQDWMmGZVUoM566Aj5Wem4f4WaMnm+AXRAjqHy6z5IW/kFXZ
         wYG8Kp/jIcESHr2Mtpognx+U92L/4xbGTcEx2jPOAgB78T79yIWldyhI0u2PqAhrOoLI
         dADVGWwBoU03t8RItuxbCphHOcwWdz3/7QNuCpzlD2ITIZKxxxGJoJSjTV8cn3ryJssC
         9QmStoiuxziiCECBHPyzwv9xDZLWtA7IhhJQ5ckl0gQCvv5TXYnJQTwftiL5/Y2/YV4C
         io6A==
X-Forwarded-Encrypted: i=1; AJvYcCWFIslflcf68RecJedTGT0YqDR0IkUQkfHGDnJvsXF362t1ZqPsOygpzl2MtRfHoQwAnGYmQDA7edRM@vger.kernel.org
X-Gm-Message-State: AOJu0YylEjnEavvYME2pZBp5+HrmHcjOST4kcEN+aUkDPB50UUg0jFAd
	0IKi9ICkplWOMyYQRbIlMOp/QjwFHi49M24/YFcwFknO6bipQDvlBRgRqoa85b+XsMZZIhJz1+9
	MBv9dNA7p9TToBkrVj+eP9Zd8hmYXe6U+SNeM1sGZpjyKySGX1j2mKCoLuc8JVN36
X-Gm-Gg: ASbGncvFF/crfnfUkkYtQq/fc+dsf942q3KRlh+B1SEEFNaLLH9WnPuolUIv8QdhEDp
	huTtFiL7+PboBshdBTrltojeopgNmc7ehzz0j/u88h2XXhxoVH3FcbfBglipI/x8dbRnoFhmyvo
	0Wv+8qMi5YURD1P2mdEh8KaB6X4QAYZEwq0pwcmyG8x1LABVP2553TjHgwbuPdxjk9qPHt6T+z1
	MUZ9h/a+VSfzQZ12HOK9y8PfC931ykZG3Ro+0L80Fh0F8dLoRo38syyQ4pGj34w5xADdMrwKxOe
	yX2/9mU6NlEiIc2GyFPjknBXEIblcXEcreESxlrjo38WGvivbQ==
X-Received: by 2002:a17:902:fc84:b0:22e:566f:bca7 with SMTP id d9443c01a7336-23414f6e2a2mr178065385ad.17.1748332544961;
        Tue, 27 May 2025 00:55:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGqcJUwDQW18Rp+AmlPMd2GnC8aI6d9TNf36XirBj5sKw3tRyXu3GPUgfP+hb+ogtTPpdBA1A==
X-Received: by 2002:a17:902:fc84:b0:22e:566f:bca7 with SMTP id d9443c01a7336-23414f6e2a2mr178065165ad.17.1748332544573;
        Tue, 27 May 2025 00:55:44 -0700 (PDT)
Received: from [10.218.21.68] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23452e810basm33558115ad.40.2025.05.27.00.55.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 May 2025 00:55:44 -0700 (PDT)
Message-ID: <04a93057-c67b-4042-9ff9-fec4183a85ab@oss.qualcomm.com>
Date: Tue, 27 May 2025 13:25:38 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/2] arm64: dts: qcom: qcs9075-evk: Add sound card
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_pkumpatl@quicinc.com,
        kernel@oss.qualcomm.com
References: <20250525155356.2081362-1-mohammad.rafi.shaik@oss.qualcomm.com>
 <20250525155356.2081362-3-mohammad.rafi.shaik@oss.qualcomm.com>
 <cfd4f557-7f97-4da9-8eff-fe3749e336db@oss.qualcomm.com>
Content-Language: en-US
From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
In-Reply-To: <cfd4f557-7f97-4da9-8eff-fe3749e336db@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=WfoMa1hX c=1 sm=1 tr=0 ts=68357001 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=YJSMDzQey5MvNt0fXBwA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: GqOuHEp3Y0zaaOWTNQiwgUSi_Mo0Ed9o
X-Proofpoint-ORIG-GUID: GqOuHEp3Y0zaaOWTNQiwgUSi_Mo0Ed9o
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI3MDA2MyBTYWx0ZWRfX2Rmplk7Ll4+u
 z+MsRv25UcT86oi2fAPO6omLogloZ1GZ8EFlZZbR+K1ZQt9QA4V8EhCewND8NkorjPevSrhD+/c
 JnAxf3VH5FDTRSypRYl5F1UfswbMoUuEkQ7Sbd75EfQojc3FRd36sif+EF068wN8n6KJiG1YIf2
 arDZWEkN/dFgaJRiaYDfq7tLHjJf3tG0TEA+bKCGiGRy+ZIQDrofXn/QQeYg7MXruXeXl2XYDBN
 E0n0S8VAhW4z/T13IoJ0nesv0Z9PIJM885LK2tnHkNc4BTiT5P0APr9576GSK9uR413c22AqwRw
 aR1Q+sixfaBYQlLDOBZHH3IfcyxqRD0l2idxuiEfqvkiyvO0blbIbGGFvUDuawWX08NaX1dOewK
 gEgB5r+E0eTKkl8ubXuCDq+biwoIWcG2kgqw2Xk+x5NFQ8Gyh9b1ocuGpIUavq5tr+wZwquI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-27_04,2025-05-26_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 mlxlogscore=999 priorityscore=1501 mlxscore=0
 bulkscore=0 adultscore=0 spamscore=0 suspectscore=0 malwarescore=0
 clxscore=1015 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505270063



On 5/25/2025 10:43 PM, Dmitry Baryshkov wrote:
> On 25/05/2025 18:53, Mohammad Rafi Shaik wrote:
>> Add the sound card node with tested playback over max98357a
>> i2s speakers and i2s mic.
> 
> I2S
> 
> speaker amplifier

Ack, will update in next patch version
> 
>>
>> Introduce HS (High-Speed) MI2S pin control support.
>> The I2S max98357a speaker is connected via HS0 and I2S
> 
> speaker amplifier

Ack

> 
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
>> index 0e44e0e6dbd4..1ebf42b0b10e 100644
>> --- a/arch/arm64/boot/dts/qcom/qcs9075-iq-9075-evk.dts
>> +++ b/arch/arm64/boot/dts/qcom/qcs9075-iq-9075-evk.dts
>> @@ -6,6 +6,7 @@
>>   #include <dt-bindings/gpio/gpio.h>
>>   #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
>> +#include <dt-bindings/sound/qcom,q6afe.h>
>>   #include "qcs9075-som.dtsi"
>> @@ -20,6 +21,57 @@ aliases {
>>       chosen {
>>           stdout-path = "serial0:115200n8";
>>       };
>> +
>> +    max98357a: audio-codec-0 {
>> +        compatible = "maxim,max98357a";
>> +        #sound-dai-cells = <0>;
>> +    };
>> +
>> +    dmic_codec: dmic-codec {
> 
> Just dmic or audio-codec-1

Ack,

Yes right, should be audio-codec-1

will update in next version.
> 
>> +        compatible = "dmic-codec";
>> +        #sound-dai-cells = <0>;
>> +        num-channels = <1>;
>> +    };
>> +
>> +    sound {
>> +        compatible = "qcom,qcs9075-sndcard";
>> +        model = "qcs9075-rb8-snd-card";
> 
> Were the bindings and the driver sent? Cover letter doesn't mention 
> them. It is better to send them as a single patch series (this is the 
> case for all subsys except net-next and trees maintained by Greg, e.g. 
> USB).
>

https://lore.kernel.org/linux-sound/174773911882.44858.10139663344496764867.b4-ty@kernel.org/

The Bindings and driver compatible change is already merged, Will add 
patch link in next version cover-letter.

Thanks & Regards,
Mohammad Rafi Shaik

> +
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
>> +                sound-dai = <&dmic_codec>;
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
> 



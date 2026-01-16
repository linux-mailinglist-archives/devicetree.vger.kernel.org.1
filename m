Return-Path: <devicetree+bounces-255956-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 19D8CD2ECA8
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 10:33:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 85ABD300A78F
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 09:33:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BC90350A19;
	Fri, 16 Jan 2026 09:33:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fhMJDEgo";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="V/puADIc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B4ED324707
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 09:32:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768555980; cv=none; b=mFCSorDGOIQ/bbxygGCT/XvN49azG3/XdrOKUGtm7Y+j97LgbEN2CtX8cQ+PuScOf8kXc97uHVheK2KiAGpgr35Kl8uoXVtMzcML3pDH970g73wORtsFACncL9ItJukZQpMyK/CrdC6X65oi0YrpCxi8rtyixrCG/lFTrbmedMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768555980; c=relaxed/simple;
	bh=4DK30zwrdkHkSbuIWBaRqIzhR+GfaeYi+4giTk1kn0o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YltBpDswk0Np0vtfF4kmGceQr76sAwhWp2H3oBl/zcJh3m65vUiiCsIR9KtGC+5ls7P+KdQlnnTbitSAg2ezGCWIuhimuc5ig/BvKteaRJ8SupaCgUSGDBJ6/rwKQAq+FTBiPeoPy0fG3+9DbL0Ii2dcUD9TTBVRpMoTZBE+Fmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fhMJDEgo; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=V/puADIc; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60G7pLTi2819530
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 09:32:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FzV/ocZOiQZRoHc+CgIt6IXIRkQY6672hlSeIuwn+AM=; b=fhMJDEgoNHMyq9oY
	W1rEXEsbFons1+UH1kZ8oyHfbxIXEFV8DzBubq16FLbeytjOV0b4HEbJx/8FHnTz
	6qP7a5TjXaZ4xm2uM0r/vet2FDVznVQ9AuoiBGcg9fz209FYZdZJ4oa3/1MbB8WG
	RjmnoLRCVd31ih0Ya9CABi2vjndlzCQQElmOaCoMoFXjFbDFNh8QvYTm18b6/VnL
	oXstbRDXUrcFKswPQ+p06yVWFkgm8/3yUQEJJsuefT0PKUGjZiFXEB00xxs3N1Z5
	EjXz7i8Mjk5Oe2eKE0j+6IXH9G4muJW1Cp9L14VNmf7dzaU+x+VKJfX25B6+9NOq
	haA5Wg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bq99ahmps-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 09:32:56 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c6a5bc8c43so262274185a.2
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 01:32:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768555976; x=1769160776; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FzV/ocZOiQZRoHc+CgIt6IXIRkQY6672hlSeIuwn+AM=;
        b=V/puADIcRQm86dleOD2Pyg7RgzYFc3Y1ur8qX8ZxO7StH+g6DexzUI0OUA0vRFoAj5
         R48REYYGvhmPzkLNf/lFYtv03ersbxOuXauVWT43pXvtC8cIHJNaVEACJT+xO50Pyqj6
         WKjNmF1nbD0iipjL3V7STnzmd0dh5VPP6yARZKfFkcRSScsCSiHTMulq1YBezRFgokmX
         MT+MGh2DIkmrYfc6rtUigbBblbRAGqgZ6n/KvFSrnypXn+cUYMTDNqFdI5q4FNQaY7Tv
         99KYjbt9RZQ59GVK0iQ7zDiykvOC5O0azwjDjLdZH49W42jVr7I3GqrGhq9r17wXXz0l
         rBww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768555976; x=1769160776;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FzV/ocZOiQZRoHc+CgIt6IXIRkQY6672hlSeIuwn+AM=;
        b=koy85TWTKb6tSXfoYjbhFD2C4J+QH8r4PHygGO01xqbHETRJOznndALurrGw9pyjpM
         9YG8oU+iT4wFY0NMc2LANIhdcf07yhikQC7fE/2nK0sZfIBaC4faL8nR/g9VCdXNqzFJ
         E/DojX0aRSvKs/Vws0DZHhuKJ1yr3XJrIE4bwYkyj3fiWhIEjocTZ7D6hhcTRMe2x+qd
         TpysAa7Z55kqwhpGTUnlzYBrZon/eFJXgXvc7zUP3zmlAjX3RcbqdRGMNcOWLvkVzfsH
         phomF4MNPBGiACzAuDajikjohabIXxcTbtZhkWv84lXdfXRRGxMUtY1MUXSgm8v+6TYj
         Ur+g==
X-Forwarded-Encrypted: i=1; AJvYcCXkMg5tJd4OWRK5JFPB+zsoz35x/FaxEHKrgaC4pzCOVH2Fzxb3q61dvOWKvZGCnjhz5lm8ANZCdyYw@vger.kernel.org
X-Gm-Message-State: AOJu0YxYvVFyMd4xOKYrJPlprTwL+34Cr/6I4uf/QLncMS4SoeQmNCcR
	vrtUligWTuyXHBzn12dufvq940DuBLB4UzAz2LsRrlYjbXqohI15eFkYf5VFZQxxnGz7GLYYdwk
	b7GIkgYBSsIFUL+bJn7yr01x6nkGKZlU23gh0C/cJRdP4+6y3gIUUrE/VH4PHJDmB
X-Gm-Gg: AY/fxX5QuQ4lA0+QxuvDfQ+JpwZwDUXM1yhvOPYdkkA+U+k+ZvjIU4ObPrvYELKbosn
	AJNu1vQzUTOfAXZJ50HOnxm7/AnpPJTQoQfAt0p3yqx2lKFIW7mlmhCCXs9lmJsOSTEBR5S6i51
	071ZXUmxPOJWSMENGhpxKL+Om36XIwMv6kybWLXm7losb3iAUUzFYK4mak58kfxJwgUkmJyqxH6
	v0hujP3nCbFszi5KTEY4etHYe+aMzob/biv5fnmwZxz53qWab+bmuJSRPzGBtCJ7zrpSScNYBWL
	Emx/bBkNtNFkdy+3K7nhYppVTzOc5QMkB27YZzO0/r/CQJEzBjKdiyjn94ijFca5SlPCQcP5Vtz
	UEGkWLb222+FbahHk2+mFH2arfHoBpwWj4keUBXqyY0gzjQbsbhxxADgFBgfc72aShZdbixDYCg
	==
X-Received: by 2002:a05:620a:3942:b0:8b2:dafb:9089 with SMTP id af79cd13be357-8c6a67899b0mr306191885a.67.1768555975736;
        Fri, 16 Jan 2026 01:32:55 -0800 (PST)
X-Received: by 2002:a05:620a:3942:b0:8b2:dafb:9089 with SMTP id af79cd13be357-8c6a67899b0mr306188385a.67.1768555975194;
        Fri, 16 Jan 2026 01:32:55 -0800 (PST)
Received: from [10.111.171.115] (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c6a72602f3sm186480285a.40.2026.01.16.01.32.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Jan 2026 01:32:54 -0800 (PST)
Message-ID: <e27deffc-bbcc-48bc-9e4e-ce52698d98f3@oss.qualcomm.com>
Date: Fri, 16 Jan 2026 17:32:45 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/5] arm64: dts: qcom: talos-evk-camera: Add DT overlay
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, imx@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org
References: <20260115-sm6150_evk-v3-0-81526dd15543@oss.qualcomm.com>
 <20260115-sm6150_evk-v3-5-81526dd15543@oss.qualcomm.com>
 <3b16ffa2-1580-426c-aa9c-f377d913d49c@linaro.org>
Content-Language: en-US
From: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
In-Reply-To: <3b16ffa2-1580-426c-aa9c-f377d913d49c@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: ZT4QSWiHVlSu6v6Yu_FUuyZTj0FvqCXU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDA3MCBTYWx0ZWRfXxCCENkixsKjn
 cVBKcBfSxl2+yOwUs4YSXgqZ6i7OyrJuX+uX5ZrocXuPaDf0Wpd52EyfMOFw//VJE/XLfoDc3yb
 4PIkFUhb+IJxKX37cP94bumLfK1jFMdVJ/8Gs4NCQAF19hD7IG6LdsJrmjPx7YDS4r+jp0X6VXZ
 xU+1gpPQInclySiuX011IRSj0F4FtLYaTqiWW0U5fW7alMDuNDmhRi0AsoAM/nqBsupT2Ps1dii
 ilsy+ONqeiQtFDbQOZ7RwhCslwyp4+CGRGIovMD60EP4MOH/MtWTuTFaQb+FkJXm6vtQCwybX8W
 p7osdc2Ts1zSXc9Hk0vTV4012E6plfcSbQI1VnCsCt5QuBY6U4IkFPwVIiByqNEYVPqm3oY3HM1
 uKOB+zGX++kw8fzYwHhTQOqFPRu0WtVTL0b6hbmDZgLlIKoRFey3drzQf682EQ6TL6D0hmYNdUz
 xRtMei4ICd4mSv1NAqg==
X-Proofpoint-GUID: ZT4QSWiHVlSu6v6Yu_FUuyZTj0FvqCXU
X-Authority-Analysis: v=2.4 cv=f5ZFxeyM c=1 sm=1 tr=0 ts=696a05c8 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=tQJASglR_GpgkQO9bp8A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_03,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 bulkscore=0 adultscore=0 lowpriorityscore=0
 suspectscore=0 spamscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601160070



On 1/16/2026 5:12 PM, Vladimir Zapolskiy wrote:
> On 1/15/26 12:12, Wenmeng Liu wrote:
>> Enable IMX577 via CCI on Taloss EVK Core Kit.
>>
>> The Talos EVK board does not include a camera sensor
>> by default, this DTSO has enabled the Arducam 12.3MP
>> IMX577 Mini Camera Module on the CSI-1 interface.
>>
>> Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
>> ---
>>   arch/arm64/boot/dts/qcom/Makefile                  |  3 ++
>>   .../boot/dts/qcom/talos-evk-camera-imx577.dtso     | 63 ++++++++++++ 
>> ++++++++++
>>   2 files changed, 66 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/ 
>> qcom/Makefile
>> index 
>> 00652614e73582fa9bd5fbeff4836b9496721d2d..be9aeff2cd1555bc436e1b8eb78d8e1c9b84f9c4 100644
>> --- a/arch/arm64/boot/dts/qcom/Makefile
>> +++ b/arch/arm64/boot/dts/qcom/Makefile
>> @@ -339,8 +339,11 @@ dtb-$(CONFIG_ARCH_QCOM)    += sm8650-qrd.dtb
>>   dtb-$(CONFIG_ARCH_QCOM)    += sm8750-mtp.dtb
>>   dtb-$(CONFIG_ARCH_QCOM)    += sm8750-qrd.dtb
>>   dtb-$(CONFIG_ARCH_QCOM)    += talos-evk.dtb
>> +dtbo-$(CONFIG_ARCH_QCOM)    += talos-evk-camera-imx577.dtbo
> 
> Please remind me, what does dtbo-y Makefile target serve for?
Rob mentioned:
https://lore.kernel.org/all/20260106192609.GA2581379-robh@kernel.org/

I checked, dtbo- is not an upstream usage, it will be updated form 
dtbo-$(CONFIG_ARCH_QCOM) to dtb-$(CONFIG_ARCH_QCOM) in the next version.

Thanks,
Wenmeng>
>> +talos-evk-camera-imx577-dtbs    := talos-evk.dtb talos-evk-camera- 
>> imx577.dtbo
>>   talos-evk-lvds-auo,g133han01-dtbs    := \
>>       talos-evk.dtb talos-evk-lvds-auo,g133han01.dtbo
>> +dtb-$(CONFIG_ARCH_QCOM)    += talos-evk-camera-imx577.dtb
>>   dtb-$(CONFIG_ARCH_QCOM)    += talos-evk-lvds-auo,g133han01.dtb
>>   x1e001de-devkit-el2-dtbs    := x1e001de-devkit.dtb x1-el2.dtbo
>>   dtb-$(CONFIG_ARCH_QCOM)    += x1e001de-devkit.dtb x1e001de-devkit- 
>> el2.dtb
>> diff --git a/arch/arm64/boot/dts/qcom/talos-evk-camera-imx577.dtso b/ 
>> arch/arm64/boot/dts/qcom/talos-evk-camera-imx577.dtso
>> new file mode 100644
>> index 
>> 0000000000000000000000000000000000000000..53006a861878f9112673b9a0ad954bed7a5fdca5
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/qcom/talos-evk-camera-imx577.dtso
>> @@ -0,0 +1,63 @@
>> +// SPDX-License-Identifier: BSD-3-Clause
>> +/*
>> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
>> + */
>> +
>> +/dts-v1/;
>> +/plugin/;
>> +
>> +#include <dt-bindings/clock/qcom,qcs615-camcc.h>
>> +#include <dt-bindings/gpio/gpio.h>
>> +
>> +&camss {
>> +    vdd-csiphy-1p2-supply = <&vreg_l11a>;
>> +    vdd-csiphy-1p8-supply = <&vreg_l12a>;
>> +
>> +    status = "okay";
>> +
>> +    ports {
>> +        #address-cells = <1>;
>> +        #size-cells = <0>;
>> +
>> +        port@1 {
>> +            reg = <1>;
>> +
>> +            csiphy1_ep: endpoint {
>> +                data-lanes = <0 1 2 3>;
>> +                remote-endpoint = <&imx577_ep1>;
>> +            };
>> +        };
>> +    };
>> +};
>> +
>> +&cci {
>> +    status = "okay";
>> +};
>> +
>> +&cci_i2c1 {
>> +    #address-cells = <1>;
>> +    #size-cells = <0>;
>> +
>> +    camera@1a {
>> +        compatible = "sony,imx577";
>> +        reg = <0x1a>;
>> +
>> +        reset-gpios = <&tlmm 29 GPIO_ACTIVE_LOW>;
>> +        pinctrl-0 = <&cam2_default>;
>> +        pinctrl-names = "default";
>> +
>> +        clocks = <&camcc CAM_CC_MCLK2_CLK>;
>> +        assigned-clocks = <&camcc CAM_CC_MCLK2_CLK>;
>> +        assigned-clock-rates = <24000000>;
>> +
>> +        avdd-supply = <&vreg_s4a>;
>> +
>> +        port {
>> +            imx577_ep1: endpoint {
>> +                link-frequencies = /bits/ 64 <600000000>;
>> +                data-lanes = <1 2 3 4>;
>> +                remote-endpoint = <&csiphy1_ep>;
>> +            };
>> +        };
>> +    };
>> +};
>>
> 
> Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> 





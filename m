Return-Path: <devicetree+bounces-245081-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 571CCCAC1A1
	for <lists+devicetree@lfdr.de>; Mon, 08 Dec 2025 06:54:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3BBA33011AB0
	for <lists+devicetree@lfdr.de>; Mon,  8 Dec 2025 05:54:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB53C26B2CE;
	Mon,  8 Dec 2025 05:54:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Cq55h9an";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="J6bapX6x"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C17219F121
	for <devicetree@vger.kernel.org>; Mon,  8 Dec 2025 05:54:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765173286; cv=none; b=YMuMCXgUekBmdi+5DEeCVnb/OKqxpO/DRFJIxfLTqzO2+2ACGqwGeM+ecFAZTJyQ3nFlUc5U4Q4EgWNnepqy7fE6ZmA3xQwNLy6BIg+KsXzhZbLMrcuI+LYgbj1v9camdyENP0YDyb/6ZYPHwgrZ0YzpA7AZXtMCx0KC4TV6pcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765173286; c=relaxed/simple;
	bh=/WWMpezjV5Pgz7E3uVx20lE736UJAlNqJQnCoSVvM9o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=T4kA+limP7uCer4y39R+WaWwou049110B+tCOf3Y19nsAkYcovPEytbwoLuWrn/zB8QbuhYf2q5W2S/xDgWIcZcsz+q/cvVb1scX+pq2enUYw5/eLkPyN5523pMw42qX5YsWXZ24hJppfGAxsdUJVWJvcLfmvd3v/V6rHgfTBmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Cq55h9an; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=J6bapX6x; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B7NJJc52593785
	for <devicetree@vger.kernel.org>; Mon, 8 Dec 2025 05:54:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3wD/BJFgxMe+BkwnDetf26Pp1/8Rqa78VQzELU8Kbog=; b=Cq55h9anVNkkE+dJ
	xSskG0/86S9KkzSXoy5yo+M/25Ukk5wLLS1TpQ+W7RPm+5VQdogubYAMnaNa0QKt
	vyLaO+8Z9zkP6a1slT6nlSCOs9rwDpIFEy3TH2ATfprVjz4zkUXX+9XLhX/eYK2Z
	6yd1Fov647gkC0AftOHGlJK2bi7s4QjlbvYIgOaIpNrR9io4aeSyJ1GPfA/T8pMJ
	tI8YE7m7N6R77OLFCG/Wzzb/dsx1rUUM2A6GBGvP6O5YBXCUzmjB/MLNd97wjgRq
	pHQBoD1VblNf5jI7PZxUR/yA/FbH2hx4U1V4kudzugbi2HZQqAp0t46uZ/ZydrKX
	ghIscA==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4awha1gsqq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 08 Dec 2025 05:54:43 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-3436d81a532so7501927a91.3
        for <devicetree@vger.kernel.org>; Sun, 07 Dec 2025 21:54:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765173282; x=1765778082; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3wD/BJFgxMe+BkwnDetf26Pp1/8Rqa78VQzELU8Kbog=;
        b=J6bapX6xBSwAJQjD3OGhE37lWuayKEEU5Oh3r+zQZbPNrE+S6mNOOkyRutTjlFAuBz
         EmeMMiyW+jrQTGDoEwEieTwPOVc7doZVn0qccAZvmwzDEU/v2kLhZFdlVm1KXGnWIhpf
         cU4b8YlwWt5A5rEzByojs480Q6PT5rIXbt8VkIGaKw5HGp9HzBjr7W0bIpK/KWUY24QT
         D0t9mI8Lvew25MqB/rblCFseU7RFRoV90dBq5NLlYZwFzn3uBwFS97IiKGq0KUQjxx3o
         3Jb3X6MLKWT5NmlOsQvhPy2Z/VlCbucHYp+W8shTtwhigiIE1/QEUEWAVgKXIbFM36ft
         +dNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765173282; x=1765778082;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3wD/BJFgxMe+BkwnDetf26Pp1/8Rqa78VQzELU8Kbog=;
        b=KBLM1T+a4GMxEoZY+DsSQz0diH+xA69N2NVshrRLpmkfEc36MVQCSTeoz0HZNjw8cD
         mJ6ckYoGfEWrzHGNpN5Li8roXltIUJY3GyocZJbcikHPLJHqfMYtW7XRL6g/9NH50Foe
         GHFMfwFIjvl9kjKLgMy6AH5ERTeRNCBLBdS4ZXfzpqR4l1wXg4rMWfARRyxRRWzAIYVT
         YaytlVjwJPif7QDDiLOV5UraBYp5ngeI1jCXGjqYMs5sKlLG1xyrycOLKVYeFzLxTxQz
         SyLqHmZ01c2muUb2xOtgUIJC+FFdg+BUcu4GfR/OIH1eGcLW3P4IP5m75A6Pz74jxkHC
         q1Hw==
X-Forwarded-Encrypted: i=1; AJvYcCWq9AcEEe3f5CDCXEgYfbb/O8BPB5vGRDnNZrkPPYl66Up28oeXLvNeelBl7JXg/J3tFshhl7m8pS3R@vger.kernel.org
X-Gm-Message-State: AOJu0YyB0MRrU/GKaPGNcSdeYPqCCsiCjKVzSAq1DSna3RDWu9wyLusu
	NJtyHOu2plWWhygRSuXu1jY06SYlM1wjtZak0z8o3RNoWuwi7NBpjh40xbM/LMFpmrUKKC0oVsd
	oaBGfQwu+Ly+O1+FrAaU1gYbAqCnp6H8DMIzND6hWjf9Qv4+TKuKiW+OcgmQ9+L6l
X-Gm-Gg: ASbGncv4FgCkSY8ltuFyP0odB48/LPBboaUOr72QFrZOrs182f+g9/wQ0sSXXl2/TKh
	MJusIfoQTbk1G6vmo2IcCn2b2br1IacHsTVhldQtoX7K5BcUBDp3IE10BWZ4Acn/GltqE8hE6J2
	2xj8tw5Db1QCFFe816M1laxbNMKPtcVd8pHKe/gdre759UZdOh/QjeisNPOIvukCZbXRslExEPv
	SwJ3fqj9oFhh+9DOdsaqITxHAevFjkADjsDZ2JjDmrRRlvelPs1+pppVvFibs2RALpmuiSDDStO
	rTgO8yGHUVKZG8cGpmc4D5Hfsf5jVqN0/IQgWq9nhr2B+wtNLUb670S5aCIiQ4f7E7iG+AIeTNr
	CoR5VDy+1VYRcKehTHW3tNz+Ltl3ulQndNpv/9nptoZBzjZgDXPBpoeH04lROAbGzzFrzHpufFK
	NiSt75
X-Received: by 2002:a05:6a21:6daa:b0:351:118a:62b0 with SMTP id adf61e73a8af0-36617e8324bmr6655608637.17.1765173282531;
        Sun, 07 Dec 2025 21:54:42 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG/pTf+vF9S+v114mdfDcgTZFB5uGyJc2+8RBnjY+XXWLcd3wvj1h3eLAn5alGD+kpoMS6r5Q==
X-Received: by 2002:a05:6a21:6daa:b0:351:118a:62b0 with SMTP id adf61e73a8af0-36617e8324bmr6655587637.17.1765173282067;
        Sun, 07 Dec 2025 21:54:42 -0800 (PST)
Received: from [10.133.33.182] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-bf817c3e6c3sm10165705a12.17.2025.12.07.21.54.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 07 Dec 2025 21:54:41 -0800 (PST)
Message-ID: <88f1b733-ffb6-4381-bef5-37f2c89c2db4@oss.qualcomm.com>
Date: Mon, 8 Dec 2025 13:54:37 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/5] arm64: dts: qcom: kaanapali: Add base MTP board
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        phone-devel@vger.kernel.org
References: <20251204-knp-dts-v2-0-596d8398c6d3@oss.qualcomm.com>
 <20251204-knp-dts-v2-4-596d8398c6d3@oss.qualcomm.com>
 <dzi353lv54eusahl5wyjlvinuzhn4eujxilksnz63urooskgrs@fxo4ancdzcmd>
Content-Language: en-US
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
In-Reply-To: <dzi353lv54eusahl5wyjlvinuzhn4eujxilksnz63urooskgrs@fxo4ancdzcmd>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=b6q/I9Gx c=1 sm=1 tr=0 ts=69366823 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=AOF791r3BhuZRYR_rnUA:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-GUID: b2zADMdbHfPDCzcgV1jTU2LDs6Y2WUzE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA4MDA0OCBTYWx0ZWRfX8JaNrBhPYPUb
 7W1JHYQ79AERWGGuLTq9Cyu0jb/msQDb/xYHz7rF/ekGjCVHRKidCJUvlBcbmSMnx3Szv7GGLBo
 bHSPm8/YF/AlVWQRN21BxqC8X3GaFYbTaqiWM0pnuxvXy5X1Tas3ANNCEJH6S4TJ092ApVcFKKz
 GgF6hqd8+KmbAuhcksvQBIQanQ0lm3D4PZNFXIMjnlaxCHVRoRCU5B1DphHkI76vAMiTIp51+us
 o008bSNEnbV/dUgT1CGeAND4leBdzr4HSqPKwC0b3iab/FGDnjejUZ3qdYbQ3SQ/21uyB5YjSRf
 TgySCSfIGPmk5hBcM9p8WEIRsgKzFez5rOhDxs/ZYvkj8j+XytwNVqCLzPTveKFVYsDUj03yNxH
 A2Lto6R9tIkIeXWIFyhn30zQey9rXw==
X-Proofpoint-ORIG-GUID: b2zADMdbHfPDCzcgV1jTU2LDs6Y2WUzE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-06_02,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 lowpriorityscore=0 impostorscore=0 phishscore=0
 spamscore=0 priorityscore=1501 suspectscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512080048



On 12/6/2025 10:42 AM, Dmitry Baryshkov wrote:
> On Thu, Dec 04, 2025 at 10:31:22PM -0800, Jingyi Wang wrote:
>> Add initial support for Qualcomm Kaanapali MTP board which enables PCIe,
>> SD Card, UFS and booting to shell with UART console.
>>
>> Written with help from Jishnu Prakash (added RPMhPD nodes), Nitin Rawat
>> (added UFS), Manish Pandey (added SD Card) and Qiang Yu (added PCIe).
>>
>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>> ---
>>  arch/arm64/boot/dts/qcom/Makefile          |   1 +
>>  arch/arm64/boot/dts/qcom/kaanapali-mtp.dts | 754 +++++++++++++++++++++++++++++
>>  2 files changed, 755 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
>> index 6f34d5ed331c..ac6c0178aae4 100644
>> --- a/arch/arm64/boot/dts/qcom/Makefile
>> +++ b/arch/arm64/boot/dts/qcom/Makefile
>> @@ -30,6 +30,7 @@ dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp433.dtb
>>  dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp449.dtb
>>  dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp453.dtb
>>  dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp454.dtb
>> +dtb-$(CONFIG_ARCH_QCOM)	+= kaanapali-mtp.dtb
>>  dtb-$(CONFIG_ARCH_QCOM)	+= lemans-evk.dtb
>>  
>>  lemans-evk-camera-csi1-imx577-dtbs	:= lemans-evk.dtb lemans-evk-camera-csi1-imx577.dtbo
>> diff --git a/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts b/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts
>> new file mode 100644
>> index 000000000000..32a082598434
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts
>> @@ -0,0 +1,754 @@
>> +// SPDX-License-Identifier: BSD-3-Clause
>> +/*
>> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
>> + */
>> +
>> +/dts-v1/;
>> +
>> +#include <dt-bindings/regulator/qcom,rpmh-regulator.h>
>> +#include "kaanapali.dtsi"
>> +
>> +/ {
>> +	model = "Qualcomm Technologies, Inc. Kaanapali MTP";
>> +	compatible = "qcom,kaanapali-mtp", "qcom,kaanapali";
>> +	chassis-type = "handset";
>> +
>> +	aliases {
>> +		serial0 = &uart7;
>> +	};
>> +
>> +	chosen {
>> +		stdout-path = "serial0:115200n8";
>> +	};
>> +
>> +	clocks {
>> +		xo_board: xo-board {
>> +			compatible = "fixed-clock";
>> +			clock-frequency = <76800000>;
>> +			#clock-cells = <0>;
>> +		};
>> +
>> +		sleep_clk: sleep-clk {
>> +			compatible = "fixed-clock";
>> +			clock-frequency = <32764>;
>> +			#clock-cells = <0>;
>> +		};
>> +
>> +		bi_tcxo_div2: bi-tcxo-div2-clk {
>> +			compatible = "fixed-factor-clock";
>> +			#clock-cells = <0>;
>> +
>> +			clocks = <&rpmhcc RPMH_CXO_CLK>;
>> +			clock-mult = <1>;
>> +			clock-div = <2>;
>> +		};
>> +
>> +		bi_tcxo_ao_div2: bi-tcxo-ao-div2-clk {
> 
> If you are defining the AO clk, why is it not linked to gcc (in the
> previous patch)?
> 

Have checked with Taniya, we will add it to gcc in next version.

Thanks,
Jingyi

> For this one:
> 
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> 
> 
> 
>> +			compatible = "fixed-factor-clock";
>> +			#clock-cells = <0>;
>> +
>> +			clocks = <&rpmhcc RPMH_CXO_CLK_A>;
>> +			clock-mult = <1>;
>> +			clock-div = <2>;
>> +		};
>> +	};
>> +};
>> +
> 



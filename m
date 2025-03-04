Return-Path: <devicetree+bounces-154025-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 557CFA4E87F
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 18:24:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6770C18849A7
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 17:18:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 828D52BD5A1;
	Tue,  4 Mar 2025 16:56:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="niOmmo7I"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 170562512C9
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 16:55:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741107360; cv=none; b=Zzuw4Dxi4FI/fhL5Rs/4QsHJraWqLUNvbOe5oXiagW/YHDsJ1avZSLBO0JYdDfMLmlqsR+IYQUzTSETE3z9qN0GTLmKMJmpUHpi+GdB3acf4MsWvoo8RSO9rhNY2i5lSE+IEAJY9AfZoWXSDX6MeLTOUc31H2r9FvBF7VLY982I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741107360; c=relaxed/simple;
	bh=r/DvbsjnuXtNkca7ayYBCnbQtj/RQP12nt2K/ZapVpo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OIcILqqgHXxD9DIw8ycqyleGPBiElpNNn8/fZKyDIrYEQtDf9Vjq/gLo+LTZtfkBY3KOdJjqimZ4Li7aW/xx528brDVEQiXV0UkAaef+VYVfY1NUPZgm1FUVrJavI4KctMvzL3dU16SS2GUU+8o3kwknbGrO3twuwi5lcbhjvIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=niOmmo7I; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 524ACQu7005995
	for <devicetree@vger.kernel.org>; Tue, 4 Mar 2025 16:55:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rwpnOoisIGJ3BRBv2r/rXIZnOMVlOWndF4eZ4cwFlp8=; b=niOmmo7IpsxGmaTv
	+qgeN1IlxDnHG/w3Bs9rW9bIZL50H+O4YmfvbKKEQq1HkF/d3XFJOyZEyoxrjkn6
	MalRhXS3ThQcOxqOUZGdSrgJrIRMJ567daBAWCWbc5t/1y9zDVU1/w6lVmGF8zCw
	GXPnCm+huWVaVJnk9mXibdR/yQj5WW70+ypZ4buQCEJXQj/h/ha7PUhVUfmWJu0+
	Bs5F/vhOz2svWbwytKxOL/DiiFxQ41Y4ye+CuHtNy02hvf6okOtfbJ2VaFv0Nc3e
	6mfHHSWI5uzeQS2WEbAUyX8Ej9p6AaKGUAClP8bK8kPTATVGWve2v6WTD3neZ4UU
	z/zoiA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 455p6tjhfu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 04 Mar 2025 16:55:56 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c3cdff1f3bso15461385a.2
        for <devicetree@vger.kernel.org>; Tue, 04 Mar 2025 08:55:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741107356; x=1741712156;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rwpnOoisIGJ3BRBv2r/rXIZnOMVlOWndF4eZ4cwFlp8=;
        b=ScT/GAl2NKQaaoW2l4gRxGkQDGe2ge/rr6ev+X6G5vFvR6+d2bJiMEAa0IAxPM+M1o
         RuTyeRMp632FwvMhiemfX1F6RFOToELh8EYMBOjhCg+qWLF3oA/QasYhNttlSVtX6zXp
         o3Sz47EhMhFqOW1akt4efzMS6dUdWQkuEeAGizsU8ByZ7cTzSCY3fUDnmnsYrUBTFsZZ
         eOprOQ3I39MoEPsAORkHsZnru3EUNRpX/FyI8M1XCO+B1RKFyp8hmUsxe/TSDD8K6gPi
         taqBTy/EaWSE97f+7scaUSCx8SGZneJ8eYwvjQvJcZhDTIyOFBrX/Ka15PZnexA4XrEK
         cLmg==
X-Forwarded-Encrypted: i=1; AJvYcCU5PoIDVeG1o1XL9MbKIWlIRQKCd67xcpkNIjTqn619LCv2V+/DCXh3F8ynTc/AHl0z8C4KapehMOUG@vger.kernel.org
X-Gm-Message-State: AOJu0YwmRPXz7/hTWIbM8Sme/WGGD/v8pXPAunnctAhRKCxe5jkynCbZ
	uCEfrWbuvP4xsLds5z9A79SVcf7hZsiS/CoMxYm+qbH8T8MXSR2KnT57yN/SFdmaah1zONAp2x8
	P64lfSytmufZKt0ihryxArtpzXUao6HUQasXkLVG0TINaf9opCN2loBAc4UkR
X-Gm-Gg: ASbGncv0XR6lCVJdVMwYRM8yJPCAeoIP710vgcjfkLP68LFJMfb3B4UnhM+uxM9JPUu
	9/krKjByjTspa+W5Mk977VW+nymnrsD7o8VQuw2P9+PBpufqF70vXPcqeuBi4hCf2s8fEPSTv9k
	asNM6VyCt5n2Z2L8vDvbBJDRO87mu1wtexaXnsb3Y8j5c7Epddvzt6d7ZI5zili5kZf1HP2OCmJ
	JLn1lU8BX0J5dfKqWo07IutrvrrYV/yL4dAAzDL2MKd8FdD1yI3cJuk+GrTWnFAkAQsI7nJYCqM
	R5MUuB8YOUHQIoXO1RBUfZfXGhO3siCeslMi+8Awm8+jTIAgRtGwRrfUNqduOcrHuM7kJA==
X-Received: by 2002:a05:6214:2aad:b0:6e4:2e03:c54c with SMTP id 6a1803df08f44-6e8a0d9dac7mr95886816d6.10.1741107356076;
        Tue, 04 Mar 2025 08:55:56 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFq7ahIUoFMNjamlq8ir9GJJn9WalD116NggZ7aKriJAYx3f0Ea4t1Gl6p2rtknS5Dwsag77w==
X-Received: by 2002:a05:6214:2aad:b0:6e4:2e03:c54c with SMTP id 6a1803df08f44-6e8a0d9dac7mr95886526d6.10.1741107355648;
        Tue, 04 Mar 2025 08:55:55 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abf795ba15esm366330566b.131.2025.03.04.08.55.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Mar 2025 08:55:55 -0800 (PST)
Message-ID: <f9ce1585-d3d5-460a-8374-4a5f1733bdd6@oss.qualcomm.com>
Date: Tue, 4 Mar 2025 17:55:52 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] arm64: dts: qcom: qcm2290: add LPASS LPI pin
 controller
To: Alexey Klimov <alexey.klimov@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org
References: <20250302-rb1_hdmi_sound_first-v1-0-81a87ae1503c@linaro.org>
 <20250302-rb1_hdmi_sound_first-v1-4-81a87ae1503c@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250302-rb1_hdmi_sound_first-v1-4-81a87ae1503c@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=HZbuTjE8 c=1 sm=1 tr=0 ts=67c7309c cx=c_pps a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=KKAkSRfTAAAA:8 a=3rbz0kGMDrCPfV1SW24A:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: SC0ngE0OYJ-ipuPZkEUPupmmEhpl2wzl
X-Proofpoint-ORIG-GUID: SC0ngE0OYJ-ipuPZkEUPupmmEhpl2wzl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-04_07,2025-03-03_04,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 adultscore=0 mlxscore=0 spamscore=0 clxscore=1015 phishscore=0 bulkscore=0
 priorityscore=1501 impostorscore=0 suspectscore=0 malwarescore=0
 mlxlogscore=959 classifier=spam authscore=0 adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2502100000 definitions=main-2503040135

On 2.03.2025 3:49 AM, Alexey Klimov wrote:
> Add the Low Power Audio SubSystem Low Power Island (LPASS LPI) pin
> controller device node required for audio subsystem on Qualcomm
> QRB2210 RB1. QRB2210 is based on qcm2290 which is based on sm6115.
> 
> While at this, also add description of lpi_i2s2 pins (active state)
> required for audio playback via HDMI/I2S.
> 
> Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/qcm2290.dtsi | 41 +++++++++++++++++++++++++++++++++++
>  1 file changed, 41 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcm2290.dtsi b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
> index 2c90047f7dd867580836284721c60ed5983f3f34..623046ba833b6da284ffa4e30e65ea4ae5fb77a2 100644
> --- a/arch/arm64/boot/dts/qcom/qcm2290.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
> @@ -18,6 +18,7 @@
>  #include <dt-bindings/power/qcom-rpmpd.h>
>  #include <dt-bindings/soc/qcom,apr.h>
>  #include <dt-bindings/sound/qcom,q6asm.h>
> +#include <dt-bindings/sound/qcom,q6dsp-lpass-ports.h>
>  
>  / {
>  	interrupt-parent = <&intc>;
> @@ -650,6 +651,46 @@ data-pins {
>  			};
>  		};
>  
> +		lpass_tlmm: pinctrl@a7c0000 {
> +			compatible = "qcom,qcm2290-lpass-lpi-pinctrl",
> +				     "qcom,sm6115-lpass-lpi-pinctrl";
> +			reg = <0x0 0x0a7c0000 0x0 0x20000>,
> +			      <0x0 0x0a950000 0x0 0x10000>;

The nodes look good, but this addition isn't correctly sorted

Konrad


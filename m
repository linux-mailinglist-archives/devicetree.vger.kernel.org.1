Return-Path: <devicetree+bounces-242977-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 77DA5C91C8F
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 12:23:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1CACD4E35E5
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 11:23:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE69B30DECE;
	Fri, 28 Nov 2025 11:23:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Pb8mmnUY";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Qkcu0Bb1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 695CD30C354
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 11:23:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764328991; cv=none; b=i6hobocLbkHggYmiLxHCIAgVVYOzE0H1zxTrdAxuwVpKH8hRVpt9aqYMH8SBPwh1j29QgOqOJJPfp7G6ZyHwSRlTffdwu+kASX8fiOP9uhOQfmk9VhO9zRFfi1v1UDmKCKU7XWa7RjoVX9uakVDuYt6lqySqJ3zKoU55EkOsylw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764328991; c=relaxed/simple;
	bh=GnQc9kHU1tzVo9FIjgt9fU/S71UfR6ou8I7/3B/fuIg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iBieYcb70qhJj8H4CphdyzvrprbslLf0Edrsj+IT6DghaU7NeyninM1KJDtnEX+QjCtne29duBR/MbYoBelMKGAIK9e0JqSKHhvi/QDo3H767p7lzZ+U3GgXipfVjA6ulfhRaLBt1G94r+JfBvv8qhEWMVDhQsnuoj5mIWDLVuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Pb8mmnUY; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Qkcu0Bb1; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AS8Opbh3621173
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 11:23:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IJ0U8hOCpCHNCDYXg3tuisXN6zY0/nSXIeinPDkH7uA=; b=Pb8mmnUYTtvF5V4s
	25NI1AW0szd6qz0PVo3VoFcuAms3jpzIS59WS7bSQQ1gj5PSiJd6O2jjfpDUEeYc
	kzEY61ocwGf3ldA+Vb0P/49XC1Mp+wHK/3X7fKZhtmQQjeApO4JQwRH1G3C6sFol
	ULetq94fIAOK9l3pJsV90Xj+7avzRYa3J0w5KFHRKlJWdSsejf9r8YT3SyExFN77
	952n+KwzJE/gDxiko8oEsGl3LRoYisOXUslQc0qWt8MI/jHLGtQulwFMrA0HYt6b
	fI626VdwE5zfx1UIElsk9cnesb8Fh89WzjkJaeWVwjX1aqybHAAOcWzNE3J9I9OA
	WlHMXA==
Received: from mail-ot1-f71.google.com (mail-ot1-f71.google.com [209.85.210.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4apmjdb6p8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 11:23:09 +0000 (GMT)
Received: by mail-ot1-f71.google.com with SMTP id 46e09a7af769-7c75d7b90e8so666276a34.1
        for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 03:23:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764328989; x=1764933789; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IJ0U8hOCpCHNCDYXg3tuisXN6zY0/nSXIeinPDkH7uA=;
        b=Qkcu0Bb1hCpT0mekJdHHewX5HuJ3Dq6dscFInaOor1smBnwd2R3uMfdkaDvk/zCg3u
         RMPCSxp7r/cu9iwUEwCSb4Y//86K0ErSEUdvXKsJnN587+E+msrsZE4TdPZ1f0+xK+VT
         mR2HBqHSd5828if0JZruYDsaVDliPDdr6a5A9WPj/lQ0bRm7HbD7rPk7HMttRDvcGVDS
         Lx2zo5caw+69Kndx/Y5kpIE5sozsIW3mgfqUGdyxwdkh5BmW3QOiiFTP3qL9LirJOWBB
         nKyvk1nsHgGDF/gqvswiiKVPSqUPRG/x5DHTNiFZ/HEj5AApP+k2MH+7wTtUGO7+UERb
         TP8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764328989; x=1764933789;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IJ0U8hOCpCHNCDYXg3tuisXN6zY0/nSXIeinPDkH7uA=;
        b=ahauooCtPa6ffousW2bXml1RvLvs6qmcrvTsTetLH5oFKqzIwNqkpdwGRV0NAFnzVq
         n7M042J9Px6DA94XdHFtvAaw1wGDzIvWCnbRBMukXRkMLZ5GRuCldKOKbLNzyvsG1aZ8
         vWhpHAF6URApNdmGYR/Vd4vsFO7gD0U5Ern5J7WIehymIsAd2J86rzvT31LQHucmCfXu
         kaha3eQsxxgoNj63CKtpKhzc5e6CippCZerkGAbAZzF50nRSKj/Mz91wBRUi/PrX2ZFR
         fvBS/9BsbcyXj9j5Pf8ddGpQkonpWV5ESCAr8/Cv3wA1hgzCVgN5mtFdJpemdc3HOkix
         Noow==
X-Forwarded-Encrypted: i=1; AJvYcCX7UKXB+OxtIGxDCJsGC4J4QQLEbFI+z/WSfIjMNnS37Mbjr/stdU+KXUJuzGac0YWjzwsvXvslgWcX@vger.kernel.org
X-Gm-Message-State: AOJu0YyDhoWgkX33i3HlO3b3MBAwcD9intuhBfA0NG61eEKj9+g1JBap
	Tc9hG4YmMCOqgg3vv7Z/U646XU9vHvE6t46VKXh/qkEnuemB1bLyG7imlrKSmLmmkrZopafsRyO
	jm+wC10RxVB3z99aDd/7FS4e8K3mWHA3Mf8eHx7TiX0AtZPhYRMneHmTOlbHudU9TN4PUOMHo
X-Gm-Gg: ASbGncvNHIqF65YpxkS5MYCJpxj8Jco2Ec++/zOw+e99Fy1M0eeG7X+5JFsepUan2Dm
	NjwVHQu+IqVggs9sFPn6QhHKOF/+l67pAS3EI3Hm7SvaxjGL6huhnZaCNt5EBtvnY68IFaM/XUT
	Ie4Ctc5ec0Xh2raKejYlglZ4+0o6/X7splcO5su75M4iRDde+zyi1QAT3VIb9IU7vI5I697d9Rf
	xt1XqPJ72I8Ea6QRVfMu0sNO5eWK5Xe+By3DtozxAkD2AA8aIZIAi4HEJSxXbFQiVABwtJeXgeT
	2aYPjwXREwpcThNLKCyDigelLP/MyHXnOW6JKWnG0NR0N4UNRzCDAVD4MddcJCJXuc/C1P5wvU1
	crVJL5bgGb1zrpQSXQGC2qOORnWNdRfvLxZ8Q1zKZxE6uZl9X2hUfiz4rH6odDQcP+1U=
X-Received: by 2002:a05:6871:7c03:b0:3e1:739d:4540 with SMTP id 586e51a60fabf-3ecc3d62291mr7002820fac.6.1764328988669;
        Fri, 28 Nov 2025 03:23:08 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHICtfMqIVz8gic6+QAMtvrZh+Wk/DV9Z5cigOpcZ7i1kIAapMi6HKUerT9ia0iWyUgSyahqQ==
X-Received: by 2002:a05:6871:7c03:b0:3e1:739d:4540 with SMTP id 586e51a60fabf-3ecc3d62291mr7002808fac.6.1764328988271;
        Fri, 28 Nov 2025 03:23:08 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-647510615c0sm4152731a12.30.2025.11.28.03.23.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Nov 2025 03:23:07 -0800 (PST)
Message-ID: <c0578f17-b9ce-4c37-85ae-feb3798c4e59@oss.qualcomm.com>
Date: Fri, 28 Nov 2025 12:23:05 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: talos-evk: Add sound card
 support with DA7212 codec
To: Le Qi <le.qi@oss.qualcomm.com>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@oss.qualcomm.com
References: <20251125033311.254869-1-le.qi@oss.qualcomm.com>
 <20251125033311.254869-3-le.qi@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251125033311.254869-3-le.qi@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 9s0peCsNJw1u3zEeRpf8rwwX_IEv-r5s
X-Proofpoint-ORIG-GUID: 9s0peCsNJw1u3zEeRpf8rwwX_IEv-r5s
X-Authority-Analysis: v=2.4 cv=OPcqHCaB c=1 sm=1 tr=0 ts=6929861d cx=c_pps
 a=OI0sxtj7PyCX9F1bxD/puw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=QZMLozYrrxf4bsumXaYA:9
 a=QEXdDO2ut3YA:10 a=Z1Yy7GAxqfX1iEi80vsk:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI4MDA4MyBTYWx0ZWRfXxH4AKDVnXGuw
 NcmwXdyltFwW2HvzHqmuYH34Vujg/Mccan3CrCl8C2VoXDYB4Iyb4HuyGoMYvu+tjRnaDwGQmVD
 D3C3fsNANxhd5GmZeqdrhNnkg+TtrKYOJdoQlPBZdX90bftr2WDs9HYaCmW51zybjRk84dEoEgH
 jeGOQodqohG20G/aj/fz9lSQv7FVqIRfofn8fbyljFKGvgYCApM+7mXg4BRzkadVNQ+fpQiplQn
 A3oGw1lfeUyWmNq0fAC6hOqRCDWIEW386EaYIlVnqTZ4RYlEiIMPv6j8kBqRnMCSXcSYCAQ23L8
 Dr6TdYmXffJMfVkruVw31Y5nTI8l87iQ0ERPnmifCAE5EQb6MSJb1c7NGlWM+JOJs7M9BMgfeqF
 uy7qKHjcmBDyBb6W9JZW8j5BqCKBaw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_03,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 lowpriorityscore=0 impostorscore=0 clxscore=1015
 spamscore=0 malwarescore=0 phishscore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511280083

On 11/25/25 4:33 AM, Le Qi wrote:
> Add the sound card node for QCS615 Talos EVK with DA7212 codec
> connected over the Primary MI2S interface. The configuration enables
> headphone playback and headset microphone capture, both of which have
> been tested to work.
> 
> Signed-off-by: Le Qi <le.qi@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/talos-evk.dts | 54 ++++++++++++++++++++++++++
>  1 file changed, 54 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/talos-evk.dts b/arch/arm64/boot/dts/qcom/talos-evk.dts
> index 8ca0699e3c40..3f382fb6d1f5 100644
> --- a/arch/arm64/boot/dts/qcom/talos-evk.dts
> +++ b/arch/arm64/boot/dts/qcom/talos-evk.dts
> @@ -5,6 +5,7 @@
>  /dts-v1/;
>  
>  #include "talos-evk-cb.dtsi"
> +#include <dt-bindings/sound/qcom,q6afe.h>
>  
>  / {
>  	hdmi-out {
> @@ -18,6 +19,46 @@ hdmi_con_out: endpoint {
>  		};
>  	};
>  
> +	sound {
> +		compatible = "qcom,qcs615-sndcard";
> +		model = "qcs615-snd-card";

Also +Dmitry does this get your stamp of approval?

Konrad


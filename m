Return-Path: <devicetree+bounces-242971-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C7F9C91C39
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 12:13:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 7345234791F
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 11:13:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 371A3306D54;
	Fri, 28 Nov 2025 11:13:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NIm+vgss";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZW9EQZKv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4502430AACF
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 11:13:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764328431; cv=none; b=FcVQxBI9yxl1rQk3jd4DR4EOaN3tH9Mu+RSS5AXaXN/87aVNFx6oYLrANzhnKNCG32p+9YdOjWdEssyEGzCe118M+fSDlOhEJYpgnXgqEuPTAhelkQ+k7o29FA06J1OFSmOmLtictSallY0tbGQKvs5gJxN4oXi+qXnpOXRtYdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764328431; c=relaxed/simple;
	bh=PNOIvAH/nIvu37rKCxJMFHQp6pdkSPDqM+g7vkFyYkA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Mx5PuaJrWyOdi5kVoXHnIotJQwGNVbG0tZcwNW8OfgzyJCAIV5zqcBhPOSykiADOE3xcJ9Cher2uf2QEulV8gHmWSRYMAAq1dJKYh+rNeOyY8VLQKAnkk16zK7KZHiCj9biVAsQfhGGXb12oxh2Wags2qcVCeKX9amMhfdTDmDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NIm+vgss; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZW9EQZKv; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AS8rgpc3989693
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 11:13:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aHvthnTGvIoZn2skSE+tLO04FjFG7xHzT8T8vghfPcQ=; b=NIm+vgssOeewW/NR
	PTJ+yi0Uir7+fE/ONBj080S6nR5ZoWWvB3qjMppUlOd6f2x5qYnkoNChJxpF5ja1
	HSAfk4nHHLTGlUcY+PbANSsH4xv4k7J64rLNpK3TWQ3h6i9QhQn7Lm7rcdunJkQr
	g70VH0hA1a8/5aWk5h54uj/vueHqUaPgr0/Prcq0t3saREvekdXDbUViCkjqiEWZ
	XhYq/azZQqSPgblMv9pF3wJHRnNofkt9UCxRI6jXERk/2UcGEXYORhaBTAABZ5No
	2yHrVLviALJv5FNpaFVUL8q0L3f1N/oFof7FY6euaNynl2+sHRGS3cvZgE3tFleo
	cfZXCw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aq8mm8d8t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 11:13:46 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b222111167so30992285a.1
        for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 03:13:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764328426; x=1764933226; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aHvthnTGvIoZn2skSE+tLO04FjFG7xHzT8T8vghfPcQ=;
        b=ZW9EQZKvv16TyvLdVYDuVbpBwj0LNLh78hWSnT8Wq5CBw7kyjJdLOIKsIMGMw67LOn
         4vFLTuacRG4m65NOD+XGf5vnt9VfUUZNQ+ua+5mYFAQ73bbKOQv0L0HdcumHIZB0qfGA
         c94jHJ5ZC06IXp7wTCihXD2HQyvVJW031QVh3X1IC2eE/8dGLoaob+12Imq7Ck4IhoJc
         /x9qqxlyMWxlEcFu72/XhKECIwpp3fTUI7ajBGHJy9zj4eypuu8O69J7lWXeuX10P9lx
         0fGCH0KbtFnZwyW8jE7TwZxqc0mVuQFahlvg1/8Y3F4C0LGVcFoOhmnrH8YCdpU/DqzS
         DyHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764328426; x=1764933226;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aHvthnTGvIoZn2skSE+tLO04FjFG7xHzT8T8vghfPcQ=;
        b=aY/dZAlimkWG77Lu7JaucQ2R5qf85X2eQ5IFsTEWT4oF9cYi4u6Axm7j7fA0tbtG26
         MDyq7oeer9TU36Ob7yPbYa+frjEjmSWgHHLf7xmzNgRr3qjU5k9ubYiVYlsO7tGO+14F
         pid4q/rEIZobEZKLwpDxlrxEkX1N7mKX2TwHOTTDWs43P/boSqbiPU5ufZdO2G/4nA8Q
         1AEltAVksL0vkaVJsVsfDYv6n1xAihWx/yf8tBOUk62yx4h3RFMofwjR52i7+hshlO3n
         6wA5Srl9N8gN2b8zSnB42lHyu/DJbGGswYbfEM74IbCZQZ4gRLoAIgWr3MKV2YEWdPoB
         GF3w==
X-Forwarded-Encrypted: i=1; AJvYcCVWf5EFCUtGqGUCaUQq+HnmUo0MjwvDEUPsyR7gmQOugv0PrYPVx8QUz3uSYIgrFv7YNso+npzRJl5y@vger.kernel.org
X-Gm-Message-State: AOJu0YznwocEx9kVuBCrMB02VRif7P/7MrJk75FwT3fweKNydQSDB8p3
	geiggwW2DzCxOlIvQ1hbDdGfki/kIicFXZguUXKR1hdoMMeiHdUNcd8yVGjdAdN+cNWPwbGj+ia
	EcduWT4OXrfHoQ1C9tegehDksniaDGICFr5+q2QId2vg5sjEpgw2zwAkqgXn31mnP
X-Gm-Gg: ASbGncvbF2DZH4Wz5U3faJfCBwFBx57wvFDQDO9cnPmK8qCK6P7QCKjYuqWrOKi7OVn
	HEM51IxCe0F2VtFtTvBT2NfHiFJlCO6mLW7Cj5nVWLGXgvXBlTjBF1S5AKzH5hxN0HF0r7WKE9l
	IuFfwaeqZbt8avW87sKcPjKqq2QmxEJjb200Wcz8lldydDhPgi5g6e60y8X125QzlnqXrvPaxc7
	JTCAUyefSN9Fmuq4xAKF4/MJqRBzIILzDb/9pY6h5tBAr5YJV60cjYCAVGYRz67OOR3hx76gqM2
	z2ktmhGoxswNVPxdfqNaC0pKU4lOCU0Q8THnM6t6LqEuxTXJK8nAFShn9ssbZgwd6UaMUcoQa56
	jHLy4bXRQ+L7TS0yDgef31Q3g2x13KOqrPa2Q4hdi8sC2SY2GnDJTWXjjCpns3t5dJ9o=
X-Received: by 2002:ac8:5dd0:0:b0:4ee:1f0c:c1aa with SMTP id d75a77b69052e-4ee5b74c2b0mr261631371cf.7.1764328425776;
        Fri, 28 Nov 2025 03:13:45 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE/nC+eNvFIHiFHeI7cM9UEjICNrOYXC4eUs6buDAfMAWxvV4zcNSlfXw4LjIh81lXsmnbnoA==
X-Received: by 2002:ac8:5dd0:0:b0:4ee:1f0c:c1aa with SMTP id d75a77b69052e-4ee5b74c2b0mr261631061cf.7.1764328425374;
        Fri, 28 Nov 2025 03:13:45 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64751035d4csm3927982a12.21.2025.11.28.03.13.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Nov 2025 03:13:44 -0800 (PST)
Message-ID: <dca3bd12-1267-42a5-abeb-14cc42970134@oss.qualcomm.com>
Date: Fri, 28 Nov 2025 12:13:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 03/12] arm64: dts: qcom: sdm845-lg-judyln: Add battery
 and charger
To: Paul Sajna <sajattack@postmarketos.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        Amir Dahan <system64fumo@protonmail.com>,
        Christopher Brown <crispybrown@gmail.com>
References: <20251125-judyln-dts-v4-0-a5a60500b267@postmarketos.org>
 <20251125-judyln-dts-v4-3-a5a60500b267@postmarketos.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251125-judyln-dts-v4-3-a5a60500b267@postmarketos.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: WnA19vZk6TeSJkhhZ7R93H7mSAMHSCLC
X-Proofpoint-GUID: WnA19vZk6TeSJkhhZ7R93H7mSAMHSCLC
X-Authority-Analysis: v=2.4 cv=Cvqys34D c=1 sm=1 tr=0 ts=692983ea cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=OQN141zOAAAA:20 a=pGLkceISAAAA:8 a=Gbw9aFdXAAAA:8
 a=EUspDBNiAAAA:8 a=PAAiZjNMvmahcd2zdhMA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=9vIz8raoGPyDa4jBFAYH:22 a=bA3UWDv6hWIuX7UZL3qL:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI4MDA4MSBTYWx0ZWRfXydHxAOJfgAPk
 EfctCbPSRvLil7tR2kR/WxYpS40MDUcCDqWBByEOJg4efLaz+KP4YePAUs2ICezI6LVBfsdEgvk
 2dHCnNU+O8t4X3rEqnAvRmE40LBU46nAgSwbaKp6yT4Rf8xJFp0vlsQ8T+8by5jbMtF4hlrysvt
 RGtnLhmhnJ0rUz5rt5zd1DpzyLJzCg4G7U4/c68Qyn7mgXjSQl7Z6nTWmoFVSU5Ijq8yRMBpwhd
 mWDDTwUIycgK3faAN0V5K9ugt8fpX0MTopEXbFL3qroyJQ9uGHNHkgkTDvUzFgbuMnvLSStZ2NQ
 yp5Qzsk/+hx4DuYzJNaVpZeGKR3OAZYKLqhtToL7cWzO1GnhsM6vHOZPClMx5bvdSNstYwpWFpL
 eJoJtpa8XIzHy1GtiLrat0MidYy8cw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_03,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 priorityscore=1501 malwarescore=0 impostorscore=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511280081

On 11/25/25 9:12 AM, Paul Sajna wrote:
> From: Christopher Brown <crispybrown@gmail.com>
> 
> Values based on lineageos kernel
> 
> https://github.com/LineageOS/android_kernel_lge_sdm845/blob/lineage-22.2/arch/arm64/boot/dts/lge/sdm845-battery/LGE_BLT39_LGC_3000mAh.dtsi
> 
> Signed-off-by: Christopher Brown <crispybrown@gmail.com>
> Signed-off-by: Paul Sajna <sajattack@postmarketos.org>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts b/arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts
> index e530a08f5e27..fa048937e396 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts
> +++ b/arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts
> @@ -37,6 +37,14 @@ key-thinq {
>  			interrupts = <89 IRQ_TYPE_LEVEL_LOW>;
>  		};
>  	};
> +
> +	battery: battery {
> +		compatible = "simple-battery";
> +
> +		charge-full-design-microamp-hours = <3000000>;
> +		voltage-min-design-microvolt = <3200000>;
> +		voltage-max-design-microvolt = <4400000>;
> +	};
>  };
>  
>  &adsp_pas {
> @@ -63,6 +71,12 @@ &mss_pil {
>  	firmware-name = "qcom/sdm845/judyln/mba.mbn", "qcom/sdm845/judyln/modem.mbn";
>  };
>  
> +&pmi8998_charger {
> +	status = "okay";
> +
> +	monitored-battery = <&battery>;

status should go last

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


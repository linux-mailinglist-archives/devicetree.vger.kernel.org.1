Return-Path: <devicetree+bounces-221419-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CD245B9F6B7
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 15:07:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5BE1F32809F
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 13:07:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8730C20E6E1;
	Thu, 25 Sep 2025 13:07:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HRed1ArJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AF7638DEC
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 13:07:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758805657; cv=none; b=V2rm1neisNTzxHNjFSa/c2DuBHsVuLPoUupH1osPElFBMyGIdrQPPOI1QWTGRKhhUC4f3eEM8Fz2ck9bQWWOa3g5OOtJHcE3MnbP0rYtMf1T/w4grRsU5m4bNjsa1eIpcewRczWzlI0qbtKMzmLWHTW1+8JwzYsGsiKl0iqf2nM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758805657; c=relaxed/simple;
	bh=jvM4Y/vSWLOo/8nu3p9xhzhDJkuYRocYakloDKrO26M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hfne75uM6t5XF+TNFvkdPYqwhK6hZ5QPip51j4X5kmYpTq9tlUctf1tVg9790+wdPZ4uwvMcMhFk6+9zx85BBnxPWx14UPIBpylnX0U82bxsIi47J+55VfAbdlLyV/IJoHBSUDjjlBl9SJcCY9Unfk1yvWFkAW0/pkpng2TLyak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HRed1ArJ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P9D3SX027304
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 13:07:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	R2ug5vCmu4WsfGi1U6sbqHkqRHEzdXssT8nz/lt+jpw=; b=HRed1ArJhNkRJsbL
	VxOFnbOJ9YF7U6JMyKcVxwd/zLBGGhxL09Sj9mO4s6J4yRDy+dKxiP8Jv/gjvvNR
	NxRaARHHRZiU/dK5QeDDpXg7DYJR56qcAdMgwf1breqxhk6u/qsJ5WTYN9sjQ8VX
	jdw9TZfXuBOAL3DvNRrskzrbO0TDR9YQarXl2T6JS178Tq4feWbg1ClxCjpXPro0
	YCq82tkrnmBgAw35E8UfqC0dqQNTcrzngVh6oP6PeUlj3heZ8QfHznHQjCdU8nl0
	xiwvjsZ3J6p7l7phSkb25cJb02fCS0OT1BvX4wtM1Tc88M4D0slmqsLAIY3Qr11o
	t4yd6w==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499kv18665-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 13:07:35 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-85e23ce41bdso12205685a.3
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:07:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758805654; x=1759410454;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=R2ug5vCmu4WsfGi1U6sbqHkqRHEzdXssT8nz/lt+jpw=;
        b=M+Ff4f2HkBpoIDdne6yB106GoS7xJ6QTG1qQaMJEUfIsWJVMJsMzAYKl1MolkED19U
         mWzgjSV7QMgeDishL3YynpJviexnqadp3GQ/74S0QYP3GfQ+SOk0JaRyKFZ5bvrQrayp
         v7pJ0Dbsv2u94V+cmrAgFH6AEqo5ROXMty1d4qNHU3Qd0FhUSr0oti/G0ci6KDQNEGfU
         byg1YOe8LyCzXnRtmXhhivBV5bDM16a5cOUCOMIp307+QpTpM52HI8czCnibThGQaeLg
         lJQo3ozXXzBNk1e/geMmV3pmjHBlYr16qhUkKZfVbVy5PhZ7qTtgh3asSqU8IdvVbTTT
         yTCA==
X-Gm-Message-State: AOJu0YxhBGH3tS6K6NpVEhQTTwTIkukGAJu5lmPSZlQvDLrkI09fvjC4
	puqtB5uD5RFEuXLtlVTWwm5RFWDtNEfhMDDvUyJzd65XjOr74kuuUBXu3QY7YSAQXgASz7y+Hun
	rFZqfSOOywUn96wWAMGQC9ioEO4HSFwt90XCLzkxqvoZcpTcsrGdFLl0gaQWx5IGp
X-Gm-Gg: ASbGncumO/LMsUt/YaF8Xbn2pVFtn097G2I5f0laxURB6jm7IdEpePt008epVJE/RE8
	EpMtSg2okJxOuAhDJ10OIZ/kaWvuKVctz0jjk54+cVsXzDHVrqJilLtmkJjyGSY8oovJzerbSpP
	mCQXrKc79rY9vnsYaJ0R5udaai6IXeLCjI1Zgmh50Oq4cIMxCbMED/WLIkxDtqERDfvzB88cc8v
	cNnpK1GQZGnOL2BzgcpGDTj5rtSiE+whBF2BINVEzhG09ja0gg8Cf/n1OLPjjbIMc/MXStrkIIz
	CAdsoHOZOZen2prdYWq1NmAiCl5aj34qoF+aUdw2KDdevzd2kC5JzncBTgx76QyYs4KyXaKthqV
	2TQNT7OgiePG5IlC0CqH6xQ==
X-Received: by 2002:a05:622a:1493:b0:4b5:e9b6:c96 with SMTP id d75a77b69052e-4da4962b8c5mr28928131cf.7.1758805654051;
        Thu, 25 Sep 2025 06:07:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFM/vHHsLiUN5+SkGsloYe2vX3oyOnlbGp28c4efv0ng3OalcK4Chwb/k5D3p9QMYk86mlSnA==
X-Received: by 2002:a05:622a:1493:b0:4b5:e9b6:c96 with SMTP id d75a77b69052e-4da4962b8c5mr28927661cf.7.1758805653358;
        Thu, 25 Sep 2025 06:07:33 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-634a3650969sm1186569a12.19.2025.09.25.06.07.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 06:07:32 -0700 (PDT)
Message-ID: <f032db60-d625-4814-a5c9-0610618b7351@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 15:07:31 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/5] arm64: dts: qcom: r0q: enable ufs storage
To: =?UTF-8?Q?Eric_Gon=C3=A7alves?= <ghatto404@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250920014637.38175-1-ghatto404@gmail.com>
 <20250920014637.38175-6-ghatto404@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250920014637.38175-6-ghatto404@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 55fAsCRffFoC1yt-YwQfFs_9XPRdaOEU
X-Authority-Analysis: v=2.4 cv=RO2zH5i+ c=1 sm=1 tr=0 ts=68d53e97 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=pGLkceISAAAA:8 a=7eSFts1GM3vNJhxzD_4A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAyNSBTYWx0ZWRfX6QUkRYPAAj3e
 +/KrCJ+0lMOuvyYBYhrpejiKdjevFxySZwfetmqPnRF1fmHTBAJa0HnmvGIH9whJcPsMv+QzqxG
 hUdisQoVq/vl2GCkvly5/qA4TtldCJdPQr5JBPpEiaHkOh4gfmgseDOJ4p8bIvY56vEIOHeXkEr
 oUjwIvJR+TwmHlHTA91b0DhbTt1ynlu8NMhrxSD0pEYpsHyLxV5d9eKU6dxmMERJd19rH6a4ZhO
 7cZSgyPbcYKaN4MZKZY0AuGhfQA8Xi8nHzYGCap9IHDCFgnXHhASA1SZq7uydr/qLuesKQacbbB
 Tbt0v6RZ7CNugFRyRBNZwlB4PHZzO/7kT/9xQ/50FeJMu2tCweF9O795UkYVduVkHfOU0lORpX+
 5Ep6a52p
X-Proofpoint-ORIG-GUID: 55fAsCRffFoC1yt-YwQfFs_9XPRdaOEU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-25_01,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 suspectscore=0 priorityscore=1501
 impostorscore=0 spamscore=0 adultscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200025

On 9/20/25 3:46 AM, Eric Gonçalves wrote:
> Enable UFS internal storage of the Samsung Galaxy S22.
> 
> Signed-off-by: Eric Gonçalves <ghatto404@gmail.com>
> ---
>  .../boot/dts/qcom/sm8450-samsung-r0q.dts      | 39 +++++++++++++++++++
>  1 file changed, 39 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts b/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts
> index c088f1acf6ea..0a55ce952f93 100644
> --- a/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts
> @@ -146,6 +146,24 @@ vreg_l5b_0p88: ldo5 {
>  			regulator-max-microvolt = <888000>;
>  			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>  		};
> +
> +		vreg_l6b_1p2: ldo6 {
> +			regulator-min-microvolt = <1200000>;
> +			regulator-max-microvolt = <1200000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l7b_2p5: ldo7 {
> +			regulator-min-microvolt = <2504000>;
> +			regulator-max-microvolt = <2504000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l9b_1p2: ldo9 {
> +			regulator-min-microvolt = <1200000>;
> +			regulator-max-microvolt = <1200000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
>  	};
>  
>  	regulators-1 {
> @@ -370,6 +388,27 @@ tsp_int_sleep: tsp_int_sleep_state {
>  	};
>  };
>  
> +&ufs_mem_hc {
> +	reset-gpios = <&tlmm 210 GPIO_ACTIVE_LOW>;
> +
> +	vcc-supply = <&vreg_l7b_2p5>;
> +	vcc-max-microamp = <1100000>;

because you set this, you should also set regulator-allow-set-mode and
regulator-allowed-modes

Konrad


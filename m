Return-Path: <devicetree+bounces-242773-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 92FB9C8E890
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 14:43:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 1718034E1B6
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 13:43:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E2172868A9;
	Thu, 27 Nov 2025 13:43:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QVvlTcwN";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="StNt87Xo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1C975695
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 13:43:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764250983; cv=none; b=LRszEaEYnqkDT04tY+p7QgeALde6KyJRwC0WJnbhXnzv+D2LRZHWMcSVSVNC9IoQhLqqVD9PkcCIog2nwLm9pLpgJnBrniLNXooP8TpLkDSg9SWEYrrNyKSrC+XKYxOikSYwP7vONfqC62IfJ3Oao90nK19vD/woCqd9kUOHMn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764250983; c=relaxed/simple;
	bh=G3/ueoFpy6tEWTPmqc5WyzbcDlILQSMXOfzz19bi5Js=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=or0bFbUEqbHscuVgXt9waQmXsR3mbIKZlQ3as1j5wU3xFED707Y+6yk8ZUBIUZS9d2zI7ldnOa19yK+MhLlQY/etb9B0/QRa5im5E5UNHKOm0qU4Q9KdxN+c7YxCnxFxAEgEqhorg99B3h4D9IJyNSL78aVEE8AVAsfgYw1DJo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QVvlTcwN; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=StNt87Xo; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ARD2VsF1022756
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 13:43:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	v/GmevaQW/u7X64IiztPTzkryhZT8iuRB+4VKN+xiQU=; b=QVvlTcwNu8AB7Be8
	q5HOPbavqN7bVgJLglOH/yIk2aOKms9r7KrO1hvFbhxGVS/U1mUbv1SnyXBUclcU
	y8ddctT6qTVmYYwycS2P1lkZLwGurShwbTAwXlTQJ7FJsDiWz3suBUqlHiDla/ib
	lHCNTEF3rym4xUyiAQlOPGvEL7IUOBhdBbkUxfg974CUwZFKseiDF+7pgsyCOKSV
	x0YN9Gf22NOqoQt/te7ICJVAJwq30vd4mVNHoQnayU7L0OVyEYcn7xnSEEucDFo9
	HFct6yH0d+dvC8BeQUOtv26Xhhgkt3VqFRfD+1ccDShd0+AWgmpRy4THd5/PZiiD
	HUeq0g==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4apq66g2vh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 13:43:00 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ee05927208so2452731cf.1
        for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 05:43:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764250980; x=1764855780; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=v/GmevaQW/u7X64IiztPTzkryhZT8iuRB+4VKN+xiQU=;
        b=StNt87Xo3w/SqpPFpgzRiu35+NE9tHX09O4CpmISiA224xoJBAgOcLAGmef3gHqgI9
         M/Hf/wdLWtiIgIRQyfMQbVpb1yQ0b6yVSQEjdg4DQwdpk836E5YWVTmfHElLYbdUatwP
         6wmxeqH/wfLmmedU2paHS7FSr7ggBdE6DuacWx5XbPd0SkcAj5JcYjSyb4zlQ6gP1rnu
         8pJOjcJC6qZO3eYvI/7sdtTP8CH5eskkEeTF91DaGERWgyDcBPuFe1azib29KYKn8BWu
         cCOnQUuV22aWTO9UUNsyKPTI1KhEMR953ont37EB1oT11vhhKdibaO008LqqzKpzJdLZ
         ApjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764250980; x=1764855780;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=v/GmevaQW/u7X64IiztPTzkryhZT8iuRB+4VKN+xiQU=;
        b=KeE1fwPSyk2mlGI5RLv1w2NeYNnX8vs72xs3ZNGU+J+R7kAt1G0crPElWF+Vc1V+Nk
         6i+DHyH0VaiWXcoxKau3WDWDxoq0s6pIzW2kqrQK6yUs9V/oXkqc7xrDEp1oPC9YxyBg
         5BtGpY/mPTWWy0sX+ti+j6bIUdqn/INKKPNYs/GtSAFaP0yTZFy2wSvyLedy6HA+GG+/
         zp6zI5z5i/6vyvA1np6nXOjuGCxYPku64SnnqmSaZ/8z2iM7/hatwqIPnCaw8PntrIMF
         muYb8YSvVw2SjWzej5jrRg+c0iuoaCBVu4KMAPRyt8RG3zqbk1R8tjWkNlw8WhYSfFyi
         zk0g==
X-Forwarded-Encrypted: i=1; AJvYcCXZntY4Yx1ily8HIKLifN4gjJDYq2K+2uaLzRJkMgyOmb1qasasVPeUFJiRPzy6ksLc3tviLVlUrdoR@vger.kernel.org
X-Gm-Message-State: AOJu0Yxh8izh4gJDPMe04j0o1jNq19pIAHQf6+Rpk3iyYwlLIkqfOsZw
	IRqqH/4WPXda0s1bCPoaGKOKrrvEvni5fMHn4wYqO7cDakpdyTpXyI/KxvyBUcJ2Y3e368TaGHV
	/4zh7ut7VdUnrxlgr8z2Cnldp9AIYy+lGLpY6QTfcd9WSf5GswUAWTD533mFnzciW
X-Gm-Gg: ASbGncuS85cT8yA5guiM1CMdKdPeneGaT5t0xUKRO9E1OViZdKDzsU7UzHS5z9cAsVT
	3YOPb/CHrVTglFGmaotHVcAV6P/x0gcpLUSAMtn7gyjw4MUGsfz+ju+dXEsoI+dbixV1n0gNpVe
	BPGE7nypm1mkJXH4R3BY2O6s2dZt5u4qSlLSPlX72RS54opqRrAHZAhxNXqCeyhpoW9EZ38JYMm
	zDDsao4/4uCR/5xw943k0ONhjcm0/RoEs7fLz3e66FtKJO9r1da05lGEikldN6kemM18i2HjaZV
	OUEQYCgb3cTs9MnVCs9k4CJyc6KYzyelO3xcqCBgkG42vKG/y0BWlUaLgr+0zvUi/x7HLVjKBDy
	Cf2ZAnh6Q7BjweC9gE9xhZMSd7dQg1K7GANhsXBbpt+ArADMqPx8TEvwQ4vlqVS5+U7I=
X-Received: by 2002:a05:622a:211:b0:4ee:1588:6186 with SMTP id d75a77b69052e-4ee5b7badc4mr223990901cf.11.1764250980437;
        Thu, 27 Nov 2025 05:43:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE/4FzF1qUKli1GHPu+PHgGnMvgm5v/gDvzDTdWbQLolUaVfcmwL64j4Op2P5zNYAraqDzckw==
X-Received: by 2002:a05:622a:211:b0:4ee:1588:6186 with SMTP id d75a77b69052e-4ee5b7badc4mr223990531cf.11.1764250980007;
        Thu, 27 Nov 2025 05:43:00 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b76f5a4b757sm162424666b.66.2025.11.27.05.42.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Nov 2025 05:42:59 -0800 (PST)
Message-ID: <31210bda-c01c-473c-ba6d-e5e98e8c2030@oss.qualcomm.com>
Date: Thu, 27 Nov 2025 14:42:57 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sm8650: Enable UHS-I SDR50 and
 SDR104 SD card modes
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring
 <robh@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20251126012043.3764567-1-vladimir.zapolskiy@linaro.org>
 <20251126012043.3764567-4-vladimir.zapolskiy@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251126012043.3764567-4-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: Zcpc24qZ3BivkaQJuUsLn4U70lWOxNYZ
X-Proofpoint-ORIG-GUID: Zcpc24qZ3BivkaQJuUsLn4U70lWOxNYZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI3MDEwMSBTYWx0ZWRfX+s42hgRzVEsK
 E/puVfsjd3GcK/Y36FTrznHEjIHA5+xxHNBcD/2WQnoAHUGUV9H9duw/6J91I8kEhdlcC/wIwIH
 RTi8rhkB4S1rca8olPpgisvmW6ThIW5NKgpV15LaS0bYdVzj25d9nDN9Fx0VJ2M2dIWKV+b5lEl
 cXC++mrIUyTFpAj2bvyx0TtODewfHi599dCo40SVLz/XH/5gnBh/1JJmRrqORVFZbPHboR6kq31
 6Ypzb9fDG/EXBrIrxFi5xooObDVJarl6YpTn9exrpt/CDU2FnzluGwCvcWaa/cr33X+OwCdelXU
 5M7mc6M8etzJ8QTzFaQBav6Sz6GU3qBF3KCLgjA3Z9ECTr+nL0Pi41IdGLg6GR5mNPAe6ZBdIID
 Knj+8Z3IXCdV1NymGE1yEDeuvLLLKw==
X-Authority-Analysis: v=2.4 cv=BYHVE7t2 c=1 sm=1 tr=0 ts=69285564 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=gPOEjk8u3OyNFTPunpYA:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-25_02,2025-11-27_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 bulkscore=0 priorityscore=1501 spamscore=0
 clxscore=1015 suspectscore=0 malwarescore=0 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511270101

On 11/26/25 2:20 AM, Vladimir Zapolskiy wrote:
> The restriction on UHS-I speed modes was added to all SM8650 platforms
> by copying it from SM8450 and SM8550 dtsi files, and it was an actually
> reproducible problem due to the overclocking of SD cards. Since the latter
> issue has been fixed in the SM8650 GCC driver, UHS-I speed modes are
> working fine on SM8650 boards, below is the test performed on SM8650-HDK:
> 
> SDR50 speed mode:
> 
>     mmc0: new UHS-I speed SDR50 SDHC card at address 0001
>     mmcblk0: mmc0:0001 00000 14.6 GiB
>      mmcblk0: p1
> 
>     % dd if=/dev/mmcblk0p1 of=/dev/null bs=1M count=1024
>     1024+0 records in
>     1024+0 records out
>     1073741824 bytes (1.1 GB, 1.0 GiB) copied, 24.8086 s, 43.3 MB/s
> 
>     SDR104 speed mode:
> 
>     mmc0: new UHS-I speed SDR104 SDHC card at address 59b4
>     mmcblk0: mmc0:59b4 USDU1 28.3 GiB
>      mmcblk0: p1
> 
>     % dd if=/dev/mmcblk0p1 of=/dev/null bs=1M count=1024
>     1024+0 records in
>     1024+0 records out
>     1073741824 bytes (1.1 GB, 1.0 GiB) copied, 12.9448 s, 82.9 MB/s
> 
> Unset the UHS-I speed mode restrictions from the SM8550 platform dtsi
> file, there is no indication that the SDHC controller is broken.
> 
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8650.dtsi | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> index ebf1971b1bfb..1be709204cae 100644
> --- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> @@ -4939,9 +4939,6 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
>  
>  			bus-width = <4>;
>  
> -			/* Forbid SDR104/SDR50 - broken hw! */

This comment wasn't even right.. it did forbid MMC_CAP_4_BIT_DATA
which seems to have knocked off UHS-I for good, but also MMC_CAP_MMC_HIGHSPEED
which isn't applicable to SD cards

in any case

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


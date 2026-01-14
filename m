Return-Path: <devicetree+bounces-255036-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C82AD1EF4C
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 14:05:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 57CDC30038F3
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 13:04:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1DD8394492;
	Wed, 14 Jan 2026 13:04:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="H3WQsVUy";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="W3FVvWDq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3886837C0FA
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 13:04:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768395846; cv=none; b=XaBnB+L5O6056uItGSbvrdwPjYC1wiaX2Tsmk8gHKUC2rxI9P1/nC1SHd02LVUhWC5MrlMLI8ilzgRRyuVtO/gtXeVLBp1C4BB5sWKtA2Zqr59Ru94O34U8TTHTQTF827L6atMF4SxFmSU36bOlSq+s+XPjPkQwRSEsqrg0Vt/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768395846; c=relaxed/simple;
	bh=IjYN9iNwDTv1AS+jAYkWswbm93j92j4WmZMLvSN8DCA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IRCoDPVWetW3/KaZtjyHeKADpVN4ClE1u+g78QwxjuDlQZUp/IklKnkvWyHcIbbc8FZOVVyOpxtd0cP7x2sN6hwwSTZ75EBH/1ZVTKX+NoNamGLYEAJqaOn/Xdf0/DRjSyUU5nyQc138j7f8ecX+qULMhVJCWtUWYv+Vp55Pws8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=H3WQsVUy; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=W3FVvWDq; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60EB34VE3280080
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 13:04:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KJ4ZKrU5wUjm+QcszxQKwHaTpu9hrE5/hQwJ2CGyoKI=; b=H3WQsVUyvLwTPk/Z
	QhLVPVus9LYyP3qSGryrlg7Kdo4dVL3/fTb3iy1gCsZ6+YG6FkYqJ3SXPNkrMxpP
	C7lZNnUk9mOU1I+q1LpgZG60ChLWbolAO6LSVGVQYPS/XxJYtYQaq+YX9vh4deR4
	/zgMLBm03NTaIvcW93UGoPxVNhzha51vtVl9K+H8Apgg2EbSX/FWgFVW1nyYfLok
	EIV8jQr3ATF4GS2nHimqrHD8snHO4IZHtOE1nFp5o4Q8zg7cXAKQO63G754zqEon
	7bShjYxJxN+9yBx8Fjbmz23LYsyFYODAjxEmDrHwJqbqg2J6eUb7mtaypZZzQ6Dj
	DT+Hpg==
Received: from mail-vk1-f199.google.com (mail-vk1-f199.google.com [209.85.221.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bp9x8rd7d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 13:04:04 +0000 (GMT)
Received: by mail-vk1-f199.google.com with SMTP id 71dfb90a1353d-5635d2bec8bso13234114e0c.0
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 05:04:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768395843; x=1769000643; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KJ4ZKrU5wUjm+QcszxQKwHaTpu9hrE5/hQwJ2CGyoKI=;
        b=W3FVvWDqILy7LVpOIpZd1HfyqSbUjCUI6PhAsHaCfUMNnrLthv1H+tGT1c2qccg/WI
         4ALWR5S5N32rEQjRMY8EVvGn/htcZi0RW5a0zwEbqwBTMCuFS1JbBsh+oMoslMigVfVd
         ArPXK6mKDsTE0ItPPg7L6SVvYH3bT4ift36FVOqLGM3mtl5wlpaBQz9KP43w4LnI99G8
         sE8oHAS+AwRNRLjISWM56041w8F8Y2v678gphNZwmheYO+XFlJsig3lszSHa+SnuOuPi
         zNQCEBQHWTKqAaxRUn1AQZkVU4D5z78Z7JbGJEclVd1IOSLIafnDmp2TS6wOQyE6pbCR
         s7ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768395843; x=1769000643;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KJ4ZKrU5wUjm+QcszxQKwHaTpu9hrE5/hQwJ2CGyoKI=;
        b=AFhAo+lAvxinorEWSteInt+qB4V0FK1PkzNs6sIv4uOWMzKEECPOq3pxy8av23RgE3
         yqin7q2FjKHbrqCbu5gNdWsbv8zUbywOJRwO637fOzPo1LD6tHioEfqaYRuweFEM8L82
         DVcTlIuExEBFcGFHEVRMmR/bhfYS0yngAZbYaEf8z4XaTQBwm8JsXTCPhHltTigZEvZp
         GOdN4MPborxjeprmDjhnGhgXytkNQKXgoyTkR+El21i1AhS1I6zHwcrbHdgQny8vM6Kh
         WRQGA6f8NRqxGtcJoLpjGmotrcSvIuWB2wAKiwPR2tTHKG3cNimxmq6caxCO/0gkJIGx
         09Gg==
X-Forwarded-Encrypted: i=1; AJvYcCXlWCi1wAyF3QiXytLpJMiJulvhnO0MW1JKMy0JidGEYp5EjiArR1/202C/WE4dfi6rKBUUDqrghSQH@vger.kernel.org
X-Gm-Message-State: AOJu0YzfdICaYVO+omT1KFFnfYWttX8Py4JBf7TSEpUDhkrI9zzybr8K
	JOlZku6I0Qmip2j7sEtCvP0iVbyH2woBmZYjMa8N6tHUCpwtKCRH48VlB37agadR9Q1ip6G2r5X
	8VAbCUYC/bYT208aaKcq+1qSt5+AZsiHm9vwNAPdi5id+Kl9lGf3dtdbBXAgf+LdB
X-Gm-Gg: AY/fxX4MAMYM/PF7X06NvmqMieWVaDmlrnJWNGRDFTyTzFeyM24232JSTKHqKK1vcne
	imQk9o4g1wS/k7HwrZhv9WEVmCIOAzldyKmiT6K+k9ZNQOO2w4gKaOEL+ri8Sfm4a4YlgCsryP7
	5G6WOe81C3X+POZlHrg8T5s2MjiMNWl0agBR2tGNmhaaNOMFDGhX/sgHVPcg5xmGCP/H5X9OdCV
	2npbDgl/2txol5iymSxf78oEJy/AhcQSqxV3TsnGu46IUGW2n6ok5+q0kKUQIKPog1WWxZ28qtT
	gAsjgzyCESAtzxX+rC1SfdgvbE41Z7tk8IVhQTsUM0+wiAMQVDBJmh6WV/s/XEjNiRPN7Z23QYR
	xU6Q51do/J0cZaHpzEliwcxBoquOZf3bCjJVbbA6KLHfwI4b00H78ILRn933o8f9IOdQA3IbjBu
	ePETep7E8odttAYr2m+l/hYNg=
X-Received: by 2002:a05:6122:80a7:b0:563:6d01:a514 with SMTP id 71dfb90a1353d-563a0a13139mr844067e0c.17.1768395843543;
        Wed, 14 Jan 2026 05:04:03 -0800 (PST)
X-Received: by 2002:a05:6122:80a7:b0:563:6d01:a514 with SMTP id 71dfb90a1353d-563a0a13139mr844040e0c.17.1768395843125;
        Wed, 14 Jan 2026 05:04:03 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59ba104a29dsm663104e87.89.2026.01.14.05.04.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 05:04:02 -0800 (PST)
Date: Wed, 14 Jan 2026 15:04:00 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: yedaya.ka@gmail.com
Cc: SzczurekYT <szczurek@szczurek.yt>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-input@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org,
        Kamil =?utf-8?B?R2/FgmRh?= <kamil.golda@protonmail.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: sm6125-xiaomi-laurel-sprout:
 Add Focaltech FT3518 touchscreen
Message-ID: <qd4nu66ph23gtcfybxilpmphsih3e5hkfzpvsmjyxcnep5f5za@rhxwi3rmlx67>
References: <20260114-touchscreen-patches-v2-0-4215f94c8aba@gmail.com>
 <20260114-touchscreen-patches-v2-3-4215f94c8aba@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260114-touchscreen-patches-v2-3-4215f94c8aba@gmail.com>
X-Proofpoint-GUID: C-oF7WqtKPQDrHuPmhCkh1g3VaWfPqPo
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE0MDEwOCBTYWx0ZWRfX1Ck2Qf1/lgI3
 Fu5jlq/YHrP0woCEMHmupxeS/FBXtLLrMx3rXu4SZLpQhunye/nILDuPgAhFWahmYGK5FxCTysV
 OZPmXh0cupZZcy0urvURCzhBAsXRYiqfb3k+QTuu12RXG7GYt1RQccWemqSAUdpwFntAae4S8Qw
 /qfJDsKB6JiIL9TCh18aIBVQVZSMHqMKujROSFZKa2j4g7U+tihu6cvEUJSsbojp0O5q+fEG0w6
 CrXSblSNypF6aX798n2/dox9b8HLiOo9ygmSl022AJJPklosDjVMDLDjZWocctiq1VI2Y9e3lrd
 5AwMMBiDY9/BnhQrF158lqSqBHew3jEb+j9xSfqPXoA7r9NfQQJSxHZISkqmrASH1eAnC7anPSO
 NtLoA8+ODU8guIxV+meqq/bFTGIJTgXJu7IRhmPesEM3+MtyAU6n6N2S1DPqZhxdYXrMS7EHXaC
 crkgpyIJZPbzro+YT6A==
X-Authority-Analysis: v=2.4 cv=HY4ZjyE8 c=1 sm=1 tr=0 ts=69679444 cx=c_pps
 a=+D9SDfe9YZWTjADjLiQY5g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=pGLkceISAAAA:8 a=sfOm8-O8AAAA:8 a=265TD53DL4np_nqDF4EA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=vmgOmaN-Xu0dpDh8OwbV:22 a=TvTJqdcANYtsRzA46cdi:22
X-Proofpoint-ORIG-GUID: C-oF7WqtKPQDrHuPmhCkh1g3VaWfPqPo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-14_04,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 adultscore=0 priorityscore=1501
 lowpriorityscore=0 spamscore=0 suspectscore=0 clxscore=1015 impostorscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601140108

On Wed, Jan 14, 2026 at 11:31:08AM +0200, Yedaya Katsman via B4 Relay wrote:
> From: Yedaya Katsman <yedaya.ka@gmail.com>
> 
> Add device tree node for the Focaltech FT3518 touchscreen on
> Xiaomi Mi A3 (laurel-sprout).
> 
> Enable qupv3_id_0 and i2c2 bus that the touchscreen is on.
> 
> Co-developed-by: Kamil Gołda <kamil.golda@protonmail.com>
> Signed-off-by: Kamil Gołda <kamil.golda@protonmail.com>
> Signed-off-by: Yedaya Katsman <yedaya.ka@gmail.com>
> ---
>  .../boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts  | 34 ++++++++++++++++++++++
>  1 file changed, 34 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts b/arch/arm64/boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts
> index 994fb0412fcbdf5466f87a325c48b697a37b514b..97feed708d3b6483eab72cfb0ae39be6f5ae3a11 100644
> --- a/arch/arm64/boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts
> +++ b/arch/arm64/boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts
> @@ -119,6 +119,18 @@ active-config0 {
>  			};
>  		};
>  	};
> +
> +	ts_vdd_supply: ts-vdd-supply {

ts_vdd_supply: vreg-ts-vdd

OR

ts_vdd_supply: regulator-ts-vdd

(It migth require to be moved up in the file according to the sorting
rules).


> +		compatible = "regulator-fixed";
> +		regulator-name = "ts_vdd_supply";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +
> +		gpio = <&tlmm 83 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +
> +		startup-delay-us = <70000>;
> +	};
>  };
>  

-- 
With best wishes
Dmitry


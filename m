Return-Path: <devicetree+bounces-185945-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 84C08AD9EFF
	for <lists+devicetree@lfdr.de>; Sat, 14 Jun 2025 20:30:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6138518989FB
	for <lists+devicetree@lfdr.de>; Sat, 14 Jun 2025 18:31:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E87AD2D8799;
	Sat, 14 Jun 2025 18:30:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gySbz4hr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 988F51DB958
	for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 18:30:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749925853; cv=none; b=RT15gaBi/llcqdUpdmJmegZRE9pdDaBECwSPBw+UcW+HlMDQS0X7A8Fr8j4fD9n7mg/mYzzkhgKwtGDLX0gZQddUoQciosuTAFdEAQb/caGIQI8Q/VNOQccXZJ69NKcGBBZdCU+EZQX5g+bZ1S02tzUZUDVupGcNDO9IlnauH+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749925853; c=relaxed/simple;
	bh=DwhzSolpHnQGsu7k0rCbg3BfE3JcSr2XRBcVKat7fLE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KTR1nsbGNc7SASl2JgFX1B9ypyifCKx+aX8wwTmBfc3ckg7DJke00fYQPKBdm7D0FtAoKe6w90rqYhiXpnHLp+F9pEdLXG6uoefAukrom9pnyy/9tyExyuSsY/zUzVH7EXOHcONk3i7aWR5IXqG+J8k+oV8B0Es+L/GzcT9pKjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gySbz4hr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55EI2eWA023227
	for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 18:30:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7jjhG81loWz4RuioBU1R+FIllgioIfWaqlYvlaoEHAU=; b=gySbz4hrdkqdCepZ
	9l12RES/JwyxMLOrOy9YhSjAcXvRWqdeNkaOX+g4NdD+eUI/HTu+SLx6uony7Ssw
	fYhA13rg/0QzEFz9usYXLWWtQJa/rTqwA2lJfYjGY/cFP5BNt2worMN/+JQPBT0X
	uNN1Aii5hnrhiaIyFFULo3Bo3uD5O2AmCqR2BnV0auCW03owhFc1r7ARzsyPDhIR
	7jFa6ObeFbtYeUVZAIXQBzYFwg6gw/l3YxI2WLktOxIZ1UaQ54QdYNn9+2HaGFrl
	1hksYgGTF7vWd/ZO+JpeJ2LjyUet98tdh0wKrEcdvV6Odko/Iq9Tj6spcDO1VViz
	ZzLitw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4792c9rthe-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 18:30:50 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7d0976a24ceso98184485a.2
        for <devicetree@vger.kernel.org>; Sat, 14 Jun 2025 11:30:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749925849; x=1750530649;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7jjhG81loWz4RuioBU1R+FIllgioIfWaqlYvlaoEHAU=;
        b=U31FJeAtHKoGmmZFn7F7kaxZS70nJWXYhPmALPKETBol/ix/Mnn4fkOZuupzOIRCZG
         Np5Ecai0iXBC313aV1qj3jE1pd3alP9QuNdEXyZ/0uJw8h8gjwwFEIIqAyswee2naI8r
         em0trRecfbuIm3H1vIqmlers2Qaq99GEdIVwhsOa62qcFMKF80QzRYvkrv1e/SsQsoM3
         COEoZ1PEjovkqwncmBtOKyWLTaq4pqlZdje5kL9ZnyV0p1ppjPodl2BJBrtH190z5iK3
         AK2mg8S4QI1Ja85gGJb0Iz97qyuN17Ef/EeUnegg3LutMaw5/BsIYigRPsEb5QG43+aJ
         DCXw==
X-Forwarded-Encrypted: i=1; AJvYcCXoI/ytz/EuW3/rwCmEw8l4NT/SnqeyrwJ4XlmI+tr99RojPjpv4y/f6bSAHd79LdKbN7hmw1fLpbBq@vger.kernel.org
X-Gm-Message-State: AOJu0YzGVycCJNb5QaUlnp4KpOXzBn5MV7oI5LYg3cE+b8WKu2pvY2aK
	03jju9FHzOa5IirEsbyJDr+y3yVSlg9nGnu5kDYyJG+1BjbQErHzSjgpZZ0ldMPG18vZ60DLTLK
	u2d2fEgIyAsPPPYUUmp/PqEuNjDNH0qqRE+FHfW2FFXZWdwwhdt7aiimhTO1xi5Qj
X-Gm-Gg: ASbGncty3m5Qa99hTcn6zOoQTQthJyygpCRLBgdiEOJAUtp1L/e8RJ8I0+tnNLIECjC
	yD6lBAdFEzlylR7BQEyFGtvzqh4HMMDFV88FRmiT1XrXPkl7O+ORDAezgb7Re30pADjNRDPwked
	/Mnj1m5ORhjFN4OEs+VQzEkLs9fRBuMU2TJi1gPJd80GoJ/20pfbaAr/uCOJHGmyVLQ7Lvumwes
	lEjnpfkpn9kCT3AmLqiBNlqZ7NBIi5Y9ZnQpRDZeydkAWza77fV+TUjKsNKs/6vubRNAggp+0qu
	zh7zIL+r9f3w7EDOdq/k1sMJ/Pzy+8NKMvYZEp8pUXC27AFGQpnWpl0quTtSrB4Nuoj4nXDp2zb
	iOyY=
X-Received: by 2002:a05:620a:d89:b0:7c3:d3a0:578d with SMTP id af79cd13be357-7d3c6cec2ddmr231098285a.14.1749925849417;
        Sat, 14 Jun 2025 11:30:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHvFTUPPrRoF6zayeHhnBj8mBhdSWc9gdeNtd3F+nan7ZgX3nBmd83xrz/enT2N6VHXwJAaPQ==
X-Received: by 2002:a05:620a:d89:b0:7c3:d3a0:578d with SMTP id af79cd13be357-7d3c6cec2ddmr231096985a.14.1749925848982;
        Sat, 14 Jun 2025 11:30:48 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553ac1db714sm906822e87.178.2025.06.14.11.30.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Jun 2025 11:30:47 -0700 (PDT)
Message-ID: <dce016bb-b12e-4ffe-8042-4e39c29b0e77@oss.qualcomm.com>
Date: Sat, 14 Jun 2025 20:30:44 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] ARM: dts: qcom: msm8960: add sdcc3 pinctrl states
To: Antony Kurniawan Soemardi <linux@smankusors.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Max Shevchenko <wctrl@proton.me>,
        Rudraksha Gupta <guptarud@gmail.com>
References: <20250614-msm8960-sdcard-v1-0-ccce629428b6@smankusors.com>
 <20250614-msm8960-sdcard-v1-1-ccce629428b6@smankusors.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250614-msm8960-sdcard-v1-1-ccce629428b6@smankusors.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: smYneCV2080hDdJh-tr5fr8bXS8aqjK7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE0MDE1NSBTYWx0ZWRfXxx3EPIKtLh4m
 dYGF0rniMI2/fmTWeDBUEOE4WqeSKMHxsBACqZMdsi1fV+s7kDNEk8zKb5csOZFxcH1c3JARI1D
 daJpH/KErBylXpdTzbBvit0SULo130kXJfOys+D+SdGzeD9wDsrrjTz+TcWjqDUazb1MQI+sIjr
 TP+iNigpVqjTbUoOzB6gE8+JnxsvcJUvb07ehG3w2t+nuw4YWTMTz9kft0kQMytKDsjUs65OKXA
 +QVOU5vnUyJ0r+fthTnHhBhTNjh0Tiv3usJDfnTs/3xPGkRd1YIH1g42Cq1OtyyNgseS7IeO5gu
 oHC5mwKXyIDbteHUehoy7Sbo4g6821Bqoe8LGkwQ+O1OjNtcbr9hd2mBBq6sIlGWt4HjDTI3go2
 4Wom+JPQMdMeSybBC6ZaketKUqsarmyZ1bKdU5MB6In1Gj1xEJnbiVgBgUOS86VewXoA5Ymr
X-Proofpoint-ORIG-GUID: smYneCV2080hDdJh-tr5fr8bXS8aqjK7
X-Authority-Analysis: v=2.4 cv=etffzppX c=1 sm=1 tr=0 ts=684dbfda cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=pGLkceISAAAA:8 a=wxLWbCv9AAAA:8
 a=eEByw65rTXB7yy4hQzQA:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
 a=QJY96suAAestDpCc5Gi9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-14_07,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 adultscore=0 spamscore=0 malwarescore=0
 priorityscore=1501 suspectscore=0 phishscore=0 mlxlogscore=999
 lowpriorityscore=0 bulkscore=0 mlxscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506140155

On 6/13/25 7:50 PM, Antony Kurniawan Soemardi wrote:
> Adds sdcc3-default-state and sdcc3-sleep-state pinctrl states for
> MSM8960. These are required for devices like Sony Xperia SP to ensure
> micro SD card functionality, though they are a no-op on the Samsung
> Galaxy Express.
> 
> Tested-by: Rudraksha Gupta <guptarud@gmail.com>
> Signed-off-by: Antony Kurniawan Soemardi <linux@smankusors.com>
> ---
>  arch/arm/boot/dts/qcom/qcom-msm8960-pins.dtsi      | 38 ++++++++++++++++++++++
>  .../dts/qcom/qcom-msm8960-samsung-expressatt.dts   |  5 +++
>  2 files changed, 43 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/qcom/qcom-msm8960-pins.dtsi b/arch/arm/boot/dts/qcom/qcom-msm8960-pins.dtsi
> index 4fa98277128897a531c54296576a6f15cd6d2a28..77fe5be24b36fbda83ba73034939db10db6ef4c8 100644
> --- a/arch/arm/boot/dts/qcom/qcom-msm8960-pins.dtsi
> +++ b/arch/arm/boot/dts/qcom/qcom-msm8960-pins.dtsi
> @@ -18,4 +18,42 @@ i2c3-pins {
>  			bias-bus-hold;
>  		};
>  	};
> +
> +	sdcc3_default_state: sdcc3-default-state {
> +		clk-pins {
> +			pins = "sdc3_clk";
> +			drive-strength = <8>;
> +			bias-disable;
> +		};
> +
> +		cmd-pins {
> +			pins = "sdc3_cmd";
> +			drive-strength = <8>;
> +			bias-pull-up;
> +		};
> +
> +		data-pins {
> +			pins = "sdc3_data";
> +			drive-strength = <8>;
> +			bias-pull-up;
> +		};
> +	};
> +
> +	sdcc3_sleep_state: sdcc3-sleep-state {
> +		clk-pins {
> +			pins = "sdc3_clk";
> +			drive-strength = <2>;
> +			bias-disable;
> +		};
> +
> +		cmd-pins {
> +			pins = "sdc3_cmd";
> +			drive-strength = <2>;
> +		};
> +
> +		data-pins {
> +			pins = "sdc3_data";
> +			drive-strength = <2>;

Please add bias-pull-up to these two as well, just to be explicit

Konrad


Return-Path: <devicetree+bounces-212780-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D5B9CB43BA1
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 14:30:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A02E81B24F1F
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 12:30:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1CE82F28EE;
	Thu,  4 Sep 2025 12:29:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KAocQBHd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66D082EB871
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 12:29:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756988984; cv=none; b=kA8fgQvezg3JvPEJ+0Rv2TOnALMZyQqgC0HPrNj+q3/pyPSN401IxM1HtMRresi9EtILLuPrAO+GQuweAZjO19D5gEU9YI0MCLxj0F0aTGEWinWVK/y3rfjBcUbkHpnCkjCKaKhXdG2JTA9qXjW/DwcNziW0aUx/owFqcZDrb+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756988984; c=relaxed/simple;
	bh=prRAN2SiSAb/u9+OvVy7joIO67ql8BGArockTzY/cnM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AG5xEabLmMKQOLk++Dm4o4hYUZpxHcG/yip0jIFNyQmq3ZU64SBIA8mGKMGTw42jdygmKi1PNOoNvR+5xg9bWhNKzSYo5f010c/gXr3fH3BbCCUg17bYqU3b4hhuCsQMLv8gUKJvMZYVJ/L8ZUSJExTEDFeSlsS+1PclJAzcL6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KAocQBHd; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5849X9Dk007610
	for <devicetree@vger.kernel.org>; Thu, 4 Sep 2025 12:29:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8MmD4u7VxkulDeDKbSghx2SZtMVKQSBEQjy2GAas2Xk=; b=KAocQBHdKoC0bMjx
	3LePPTQ6ynVfireF0lNP0G0tG8lCfhmYf8BYPJg4dViUSJcCAFS8bBudYXn69Tog
	pLl2Fjxuy3qXrRwWnnnSKR475Bs4w6c8lyGOAt8W8gxLedwAYBiic7/z3x/ntQs8
	OLVJgOoeb4ArqfSDKrFaDs9m8gLq5mwMXwsre45hJlb1w0Grc58HQuRTXgqqWUrQ
	zn1+ebex5KLaA/FFfeSGMLg5I2NxLNTruJf2syTc90AP+0uVlV7FsiD3SiJqMkka
	YOodrxh99zFwflk7Zw/QNCmDauegOOS0r9H/nFlRjxAi5cAHMxwwwv8+tiqcV7cU
	iRpu8A==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ura8ybgk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 12:29:41 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b32216a52cso2504901cf.2
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 05:29:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756988980; x=1757593780;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8MmD4u7VxkulDeDKbSghx2SZtMVKQSBEQjy2GAas2Xk=;
        b=Q177Jkpn5tFmb1B5Unm4uiwM+pM+se4ZwddHKrrA+cG/1pFUgYs7y/O81h/SwGk9XJ
         rOJDyaSCl6tvyqSmAw8g9OyEs2w5h1KW5vad2XlS2bGZOnO/96oygTTfGW6nYXNcKy7m
         Y3GwyKpnraLY7RTWETDyj3h2Ec29IMsdtRkpohx6cVd3IKlT/hKnNpsBxSi67naS6kgg
         kt8Bjc/r+S1hoNTWYiLiDJezyzA09tBZ7NADV8o+v0YKoFOCS3ds+5ZXi30ma5zOGdst
         xlVD9LNTf8lSGtJXFNf0RYENR4+vv95LNbun55LfLKu7TgseUBzMLL5w1a1N9C2qv5HS
         T52w==
X-Forwarded-Encrypted: i=1; AJvYcCXcNyxHPNB4xXLQhBkajDYPrISctiXFx0gVN+ZaS9jF7enAQTQEOKE5X7XcveV8To9hDXAbw/QkKSPs@vger.kernel.org
X-Gm-Message-State: AOJu0YxuAxmNk9EDgysR1L1COe9O4NpqrBePMNJe5F2ceey3dYvNPbKH
	/s3sYF3M0sN96MMK/82ASQ1SkYijrQ5295stj7491D8pJiugd3eEVJJyosVqJb9sM+P5UOBB7Am
	64Tu9GzXqDetBXxboCVEY544FTGKNH9G8oUox0guMHn3w6I5E/RRQokbYtgq8C30x
X-Gm-Gg: ASbGnctbQdW6rIxJaNFjKlwBxb+dA3sBJKr2uX2TBlJb4QS4LAz1RzHa+nxcbQXNX1R
	w+/a4cZYVcgvDXxl7VRWTu1YJCJ9NoAp/bqlV53kO5xa6HJlZuo9U7xuH2ps/uh1lWAtvpbJ6Sl
	nOnaJY+7bB6bec8i3GkCQqBsGhnPB7RHa87CDJbxbg1SzC+NRZRB1a5YwbLa6nmWdgmRSdIbvQg
	Y3KOA4pfwVGJkA7WxTp+WsnSL2nr4ZzSeOv+by41DfV4EYJdMeBT/w4wyLHJKH7m9DHWcIGfAyO
	guq0riptq1CgIT6Vy1h7N1PXQy9KrGMyM6kzHYaEJqcbOjOD0nWq6VS+h8NxLE+nDPsV1mfZSO9
	3SNRPnTl6j2SCjVDitLAzQg==
X-Received: by 2002:ac8:7c55:0:b0:4b2:d981:9d4a with SMTP id d75a77b69052e-4b30e932ab7mr175134551cf.6.1756988980342;
        Thu, 04 Sep 2025 05:29:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGTfxzsYnZYb0m5gz1tPNelxJIih7NJHAZeds3PRFC3JhLe9jDQapqBbetmcr0xmuOXgNFQcw==
X-Received: by 2002:ac8:7c55:0:b0:4b2:d981:9d4a with SMTP id d75a77b69052e-4b30e932ab7mr175134161cf.6.1756988979595;
        Thu, 04 Sep 2025 05:29:39 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b045e576edbsm537149666b.75.2025.09.04.05.29.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Sep 2025 05:29:39 -0700 (PDT)
Message-ID: <cf6b7766-0c67-42fd-a67e-ce349688d9a1@oss.qualcomm.com>
Date: Thu, 4 Sep 2025 14:29:36 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 7/8] arm64: dts: qcom: qcm6490-idp: Add WSA8830
 speakers and WCD9370 headset codec
To: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@oss.qualcomm.com,
        prasad.kumpatla@oss.qualcomm.com,
        Prasad Kumpatla <quic_pkumpatl@quicinc.com>
References: <20250903151337.1037246-1-mohammad.rafi.shaik@oss.qualcomm.com>
 <20250903151337.1037246-8-mohammad.rafi.shaik@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250903151337.1037246-8-mohammad.rafi.shaik@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: vNLJGUR-vuNzXNYKWM5pyh_zmJiVC_ZR
X-Proofpoint-GUID: vNLJGUR-vuNzXNYKWM5pyh_zmJiVC_ZR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyMCBTYWx0ZWRfX5cs1exezURZL
 0M/KcoZUETHpzvUFUJ0oxpfrK7o1ut3/iDlXl9HmAqTCnEEm2H5POAdLs6n4BDs5jT9rdQPFu7J
 KnhOhUBt8zg6n99LwwWQFLoWHJw2czIz6M1mVnDDEC+WBFnnrfc5d/jooSCwvdI/QTrWOAzf3G6
 STYZEKd5U2zGwyv7fBleOwx4tyNxlOqVyPdAF6nhzDAK9WmrZ3KnD/MnwG5+eIc/9y5FkI5MHS3
 z0bU0oVzjffgddKBBtDK1kbejJOPWcO7eCIlAASIE3dCjpq5ec3BefrlvShbR/uzRarTGFT10BI
 2n404rqa3msSDq+Ydz7XEksQhp7fJIpt5i1m6liQvJcMvRmrOg8l1Qc17yOsF3qDS9VA5sU0M5z
 Nb0TT/lS
X-Authority-Analysis: v=2.4 cv=VNndn8PX c=1 sm=1 tr=0 ts=68b98635 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=q1CUbaEDzoJ2oNbkCL4A:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_04,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 impostorscore=0 malwarescore=0 bulkscore=0
 clxscore=1015 adultscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300020

On 9/3/25 5:13 PM, Mohammad Rafi Shaik wrote:
> Add nodes for WSA8830 speakers and WCD9370 headset codec
> on qcm6490-idp board and enable lpass macros along with
> audio support pin controls.
> 
> Co-developed-by: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
> Signed-off-by: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
> Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

>  arch/arm64/boot/dts/qcom/qcm6490-idp.dts | 123 +++++++++++++++++++++++
>  arch/arm64/boot/dts/qcom/sc7280.dtsi     |  12 +++
>  2 files changed, 135 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcm6490-idp.dts b/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
> index 8ed6e28b0c29..379ee346a33a 100644
> --- a/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
> +++ b/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
> @@ -18,6 +18,7 @@
>  #include "pm7325.dtsi"
>  #include "pm8350c.dtsi"
>  #include "pmk8350.dtsi"
> +#include "qcs6490-audioreach.dtsi"
>  
>  /delete-node/ &ipa_fw_mem;
>  /delete-node/ &rmtfs_mem;
> @@ -169,6 +170,30 @@ vph_pwr: vph-pwr-regulator {
>  		regulator-min-microvolt = <3700000>;
>  		regulator-max-microvolt = <3700000>;
>  	};
> +
> +	wcd9370: audio-codec-0 {

nit: the trailing -0 is unnecessary, as there's only one codec

Konrad


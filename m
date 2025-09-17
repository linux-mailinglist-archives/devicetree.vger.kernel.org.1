Return-Path: <devicetree+bounces-218414-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AA6E0B7FA69
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 16:00:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5B49C18879AE
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 13:56:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67A4D31A7E9;
	Wed, 17 Sep 2025 13:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nJo4ThQW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0A3C2EC572
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 13:51:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758117114; cv=none; b=B//N5dRXDnQ6rWG86I8pbb66AJ33gTc7J7sg39ZTlFdHncv5uc3wbX9lqpXiMWpmPn+1zWPNoMuRy37/qo7DuT7jGxW5Jm+kj78Xe97aPP3YsBAXcaE9Ct7GHCUudMthHq4VgNlsuGt/IwaQwGMSiaAHWRIfQX6B/cdzhOPPskk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758117114; c=relaxed/simple;
	bh=wR1KKrdrNFpxEZ4xLE2CusGSA0Y1uaWQR4YSujvUvJU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LdmS6Prd43Ykjz6oIYtHOsAsZJ2Pk6FTn68dFw3BwxcASHFMALhc6SbJjqEjHDjPvRYNEbg4FiWbxoqTaKvdtBIXYS91ftcy01g7wjZN36wrFSG8tUTBq8OPMmaP9KcC2l7Ni2HzUJlCmfw64rlzWZAIuXm3dWFSc/zovAFDK58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nJo4ThQW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58H8XYQ2019523
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 13:51:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9UiNZluozOEiEosmrVsvrTLkx+n+8c5m7jOfXnNrm9g=; b=nJo4ThQWWrPRlGNB
	AZONy7xqHJUy7oyVy3kQsfrPrHoOTND18WuR99jDhcc5hE5pYj8tP9wVDdZtO/Wi
	RJCue49eQApAsUcFNEhb7g38VcsSPicU592AMa7v+/feIm6/NdKm4P1g6X0BcwLo
	jcklEvP2IJ1MU0gIkwJhV14U+4Ua0aXnofrNOEH5Ptd8iTqwRixqHLh4qNqBodmE
	Mn+tZQbKC9rbwZQYSmXb0USrmaBRgqUYivcBLK96tvylebSlHH/w6t+ABwCCDYnf
	YmHAWifmHnVJgGyM4IwAzWWodHhjPE/x/Fp3ZR487eQqxLapSLoFFSy5tm55c7qN
	wJAbqg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fy1tjvb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 13:51:51 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b77ed74e90so4736681cf.0
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 06:51:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758117111; x=1758721911;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9UiNZluozOEiEosmrVsvrTLkx+n+8c5m7jOfXnNrm9g=;
        b=vTW3i/UglJzaGp2Z0hGpdZIMbYNpo+J265rEdH+5I9BKF9PKJQlMvgU4yYxnGrYnzy
         Jej5c00Vvv5qEszlj7DI20V4x7LkkLh4oBZwQq65MS1zEl+PsZ0fLaqx/aRoc+HRjR8i
         3Gcjn8I1/tL+6KOypQHT0hPnMUffRbOQMyzr0lvHt0H1a+lkc5MAgbqnAZOMyXsXy7ri
         dOLhaccZntUoLAjaYpTYUinG+Rmj4o7X+K/D3Y5fsa8YwU5rSBG0cVcjf/ub+Ln0LXEy
         RIqvyBznPLFdtso6it6qJaf2gOscCu84c4e+wlH4TBwokxX+8bUnItKkjztMQXwy+NDH
         EaAg==
X-Forwarded-Encrypted: i=1; AJvYcCVedRniumaQlJrvCewFRYbMqHTU0aZYQp1ok/FJ1+Pi6YVOmasgRn4JSnquI+kXb0DhbWQKuA9wTi/T@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1gUusf1XOvE6xCkNKUmrqX8mujSn4xe9LiHwW7kDpU/rjp9kn
	/UHJWaqJUzzLD7sJ6OKstuPaS2cmmL6Ime9FMQi9BwZ3medQo6GGherejZqLFoTBsin+FfE4ql8
	HU9VAIEDEdfjQlGyfrgg/lfNXPgup/PnKIGKZNgKv4oO7OMQRPfwWXoLi6MlDi6GC
X-Gm-Gg: ASbGncsQK8FmvGTAFe9+28so3rnu5QN/kli2vVct64bqnmNPTcL1mD+PA5ad6m7PNn+
	ybYCDQ6kJAGAqO08dP9qN+JxNa1hUTtJotAcOWEcKB2AF38Rb8qhQiKqgkLoiWz39e6EEbK0WTA
	irTQQW/ym8KP5YS40gXwTGzreYr8ef4R7t4cr97Cge9zSi5fwNL4BHc/wgXVMrX3fFqi5bKLk5S
	pvcPgmuwllzet6s2YFgMy0QTpsLlaWoiPf86xfxscipJHVvvSwNc2VUsyiHxQm6d5hYy9K+k5ZY
	jZ/SuZByaEb1miUON25mUwTFXD+oaFqqRgCO1fI4ZHPx24s1h7TvXDJSaJopLr7tqzG5dExhsTK
	2GIsLeaJwWCqkJ1AlV0MJxw==
X-Received: by 2002:a05:622a:14ca:b0:4b5:e9b6:c96 with SMTP id d75a77b69052e-4ba67d75f2dmr16425061cf.7.1758117110653;
        Wed, 17 Sep 2025 06:51:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF2G5c62XRIZqyHsIUg5OGdC5gKqoJEvaDX2GNTMYr+lfCFleDAA/kpmUx+1QVXmO+VMX0cOw==
X-Received: by 2002:a05:622a:14ca:b0:4b5:e9b6:c96 with SMTP id d75a77b69052e-4ba67d75f2dmr16424771cf.7.1758117110111;
        Wed, 17 Sep 2025 06:51:50 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07b32f2334sm1396605366b.78.2025.09.17.06.51.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Sep 2025 06:51:49 -0700 (PDT)
Message-ID: <003840ad-b5a7-40da-800f-1fd880b8f831@oss.qualcomm.com>
Date: Wed, 17 Sep 2025 15:51:47 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 06/13] arm64: dts: qcom: sdm845-lg-judyln: Add firmware
 nodes
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
References: <20250916-judyln-dts-v2-0-5e16e60263af@postmarketos.org>
 <20250916-judyln-dts-v2-6-5e16e60263af@postmarketos.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250916-judyln-dts-v2-6-5e16e60263af@postmarketos.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: jLdl9NPNMfQcKA3hy9DRDACmBCl5k3NB
X-Proofpoint-ORIG-GUID: jLdl9NPNMfQcKA3hy9DRDACmBCl5k3NB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfX+T8bR23VIzXz
 nT+GslV6QnJ6TymMmEsyLNTyWUyh0GN/FzaUtqATfhDDSSJosWrI4vON1kppLn5ckjhSpN7TEgf
 dbiNrndqIoM1Jv539wgpApcrK9Ebm/qFjO/ZOYY+qRQe0RXyAPJROIqXrUd2SwymnQIjqrk8yCL
 UHSTC9vrhfDTxl7dJdtT+GyldIZrpmNHJLzP4HiF5LY2nUwsfFQWx9tBoZLCHm3Q6FOgB/TI8FE
 QE/40I2kwY9mmoZACWxAcq1GtV8M/5MTOGjYYiP/rOCwoUIDTayNUEAJGiW2XMAMbaGGbiy6vTF
 OHRyhgAC/FD1B1YhrykRtfqDRFyIQfWIsijWRLy7Xz+DAFqBQYH51ca4rSav6vMvWhxPvzc2EB3
 9sqqWd06
X-Authority-Analysis: v=2.4 cv=cf7SrmDM c=1 sm=1 tr=0 ts=68cabcf7 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=03C2xpsRYuwQbuPiX2cA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-17_01,2025-09-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 adultscore=0 bulkscore=0 priorityscore=1501
 spamscore=0 phishscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509160202

On 9/17/25 3:09 AM, Paul Sajna wrote:
> Add paths for Qualcomm firmware, including:
> ipa, modem, bluetooth, venus, gpu
> 
> Enable adsp and cdsp nodes since their firmware is present

This commit message is a little out of sync with the patch content

[...]

>  &adsp_pas {
> -	firmware-name = "qcom/sdm845/judyln/adsp.mbn";
> +	firmware-name = "qcom/sdm845/LG/judyln/adsp.mbn";
>  };
>  
>  &cdsp_pas {
> -	firmware-name = "qcom/sdm845/judyln/cdsp.mbn";
> +	firmware-name = "qcom/sdm845/LG/judyln/cdsp.mbn";
>  };
>  
>  &gpu {
>  	zap-shader {
> -		firmware-name = "qcom/sdm845/judyln/a630_zap.mbn";
> +		firmware-name = "qcom/sdm845/LG/judyln/a630_zap.mbn";
>  	};
>  };
>  
> +&ipa {
> +	firmware-name = "qcom/sdm845/LG/judyln/ipa_fws.mbn";
> +};
> +
>  &mdss {
>  	status = "okay";
>  };
> @@ -101,7 +105,7 @@ &mdss_dsi0_out {
>  };
>  
>  &mss_pil {
> -	firmware-name = "qcom/sdm845/judyln/mba.mbn", "qcom/sdm845/judyln/modem.mbn";
> +	firmware-name = "qcom/sdm845/LG/judyln/mba.mbn", "qcom/sdm845/LG/judyln/modem.mbn";

You're changing all of these paths.. have the previous ones ever
been used, e.g. in pmOS, to the best of your knowledge?

Konrad


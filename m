Return-Path: <devicetree+bounces-172628-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FD71AA5C1C
	for <lists+devicetree@lfdr.de>; Thu,  1 May 2025 10:24:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9343E16B230
	for <lists+devicetree@lfdr.de>; Thu,  1 May 2025 08:24:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E01AA26A1C1;
	Thu,  1 May 2025 08:24:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jY2qu8m1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22377264FA4
	for <devicetree@vger.kernel.org>; Thu,  1 May 2025 08:24:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746087864; cv=none; b=bWuPq4cr9wrcbzTii64v+TwQGyXB3pbedsseB7KFRDiuUlexFq4N834XKBHyMJLWtR6O4gdHKr8U9x7/0K8ddX4SZPgww6Q9YYmP/YhxD4+nhJivHDim5gYmWxRK55kzizO02XNG8kVrvWGB7uzYVzJ4hyqf1ngiWmL0LcHIRik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746087864; c=relaxed/simple;
	bh=4SV0SWjjN6to74Ybm0U5EvYj7KZjdi/ydl2GGsa9zMs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QbalTdUgMY49dCZj5zJKyIFbIW8psXYtHd35kAHS3zLuAQIpf+zu0NwkWAGE9eH2HLk96YVnErdOwWR7AqBK58M0dBDHK36WZaRd7A30oyU++uijyPk9uVqyhiM505H82kNLn9Xjr9aDS8C4NbeGgnn6/owhSVVp26UdMLq0h+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jY2qu8m1; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54188JUk014946
	for <devicetree@vger.kernel.org>; Thu, 1 May 2025 08:24:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	iJ53eFcOacyOAm+jXnQpdZtxz9kOeIhYOC7j2kMJ+SY=; b=jY2qu8m1X6hSNi17
	CxNR0kONJEiMG3GE+/f20utQJaBfcdQ6dPTu4EIV5dGJb9dmyj0xR7TKJQ+cGoGH
	CUCiJxrzBOZvsqAPxq1namQ4s5YkG2oNh6PVJJmyTxO9YSD7tkbHrVGt+ijSXUn7
	NzXJfcTeHpmFG8IThOecK/i9YdXROO/8ke7hcNeQbBriutYHGldwnxgtQUHkXOrg
	lL2FVdt4waPQoBUsB0LRlg/rOd1KUPQm3Qzl3vCW2EhwRHwcY9C5wRO03bzBas++
	+teqycKSivS5McBZM/Lehbf0d6LM+QJAkYjti6YcPgs0c+pLyKmElQKlIN2bKmBt
	XEN5bA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46b6ubmtju-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 01 May 2025 08:24:20 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-476786e50d9so2155631cf.1
        for <devicetree@vger.kernel.org>; Thu, 01 May 2025 01:24:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746087860; x=1746692660;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iJ53eFcOacyOAm+jXnQpdZtxz9kOeIhYOC7j2kMJ+SY=;
        b=Y6/5uyDZaMpfNw4Vqax6CdJYzPJ77zBKzCiSKv4j+dzu7j4ptDAuf60HRxUM7ehht9
         TwmPpfDpgMAzvJJ0zwXsKKvMhe0NMgNxXHTgQIzlCA83x3URXF+kg9iZWw5vmr0SkMsh
         x10hqkniwoRUFskaIWh9IzuYvtye2vP9Z8xMitQHRiMTsQjG9NxriUt4ju6yi08gif8+
         AKnW19+xePw1GYSgamituLLWnN1MMTRQqw6VClgulvjwyZ7DumIH2LBW2CghIyoZiVk7
         yc4kYZKluL4/cFoVSXdJJYSLfAJf0SeQY1ijGQkEl1H4jjTdeBlGT8fN3Z+prJWyh9zK
         /wUQ==
X-Forwarded-Encrypted: i=1; AJvYcCV63G2VI+OH3tMNr6x7oqGuoMJqN3ELfxcCsCDMpAcEi/NH37JNdu/a0Dqj+I4F56Q2Q0LIaFuV9kUR@vger.kernel.org
X-Gm-Message-State: AOJu0YzirUtjM5MK6JmFhkxyv4dzv5oq4T1fqVf4Jndh3uOnPJTk3Ikq
	hVNCcnOCvqmAJVkE+ZO9tuVLsX1hae+129nwoOI3bjDKtMgCMStI2nawb/STi+qkX2u/vQ3DZK6
	CaUm+ucsGV5A05WuMQAhD9ZaheJtCCWsXoeFNxjLxryUq9c154aPgI0vJuMS0
X-Gm-Gg: ASbGncuT73XPVDXxLC0yQ1gcLWicmpxcOn6dlOve8PKaNrTt9hZ6z2Z5MJaoCVSJQEk
	JGzKsXTpnHN8RcOQHmjA+KXLAdI4xChw/o57KJd8p9ixdg0/NpRHBKi63iweFZi8Gs1nZz44mzt
	EVq5Yw7XFdOlPU2/gPJnZ2SBCoD+StXId0HW0tgMBSGR1iDJZLcXuWz/3dWcpk8K4oT3QUoznVF
	83Mypb6M/yrwKNi7/L7W8Hg7KEodhporn0QkErqxz5R4IYOGJTIaBEhTSKCjCulqUa9/46Wf47Q
	7RGxxX9QjLqNZCGUs8zMiiAXgCDGTwKfQgRyYPIwGfeSKfaucXkJ3GEOIKTJExMBqKI=
X-Received: by 2002:a05:622a:13:b0:472:4c8:64c6 with SMTP id d75a77b69052e-489e4e6d39fmr33056671cf.9.1746087860202;
        Thu, 01 May 2025 01:24:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFJ46MXi0EjwqtJAjYukm21R5nakopvue7J6cRNX84FO6gEnUuzCCno+YAn+6cIgvTftra0vA==
X-Received: by 2002:a05:622a:13:b0:472:4c8:64c6 with SMTP id d75a77b69052e-489e4e6d39fmr33056451cf.9.1746087859869;
        Thu, 01 May 2025 01:24:19 -0700 (PDT)
Received: from [192.168.65.219] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad0da55afa1sm7690566b.131.2025.05.01.01.24.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 May 2025 01:24:19 -0700 (PDT)
Message-ID: <f65228d7-fe5d-46ea-9331-2491cab778e6@oss.qualcomm.com>
Date: Thu, 1 May 2025 10:24:16 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/5] arm64: dts: qcom: sm7225-fairphone-fp4: Enable USB
 audio offload support
To: Luca Weiss <luca.weiss@fairphone.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Felipe Balbi <balbi@kernel.org>,
        Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20250501-fp4-usb-audio-offload-v2-0-30f4596281cd@fairphone.com>
 <20250501-fp4-usb-audio-offload-v2-5-30f4596281cd@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250501-fp4-usb-audio-offload-v2-5-30f4596281cd@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 0ewGCU1_yoHOy0xF7tBQTOvPpJHR0QPy
X-Authority-Analysis: v=2.4 cv=bsxMBFai c=1 sm=1 tr=0 ts=68132fb4 cx=c_pps a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=6H0WHjuAAAAA:8 a=HmAel4GXUpO_Sf_o3M4A:9 a=QEXdDO2ut3YA:10
 a=zgiPjhLxNE0A:10 a=a_PwQJl-kcHnX1M80qC6:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTAxMDA2MyBTYWx0ZWRfXztrYLjbaR5VB QxqghavF4bHR59Hs+K7aXxg+B0mZ3qbCVDv2IOhRK1lmTOUZIvfHOa14viEAPLXn5t3SCsKWe+7 VFHmajI9bQN8Ob3wc98PQOelBTl2pHfOQ69gtJSzfyi9gefcrJcC1QNGeAQKPNg6/kn1nFUnmya
 kMGft0OhhBcwYuS3RK+YUlOZ9p2AN+Oi3vfK8nSIP3wroeE+hWW1NXZRwK5I5LQzF5hnmptBYad oFWdfRIjqkpGS7m+MDDgtX3CsqQDs5dOvMh2eUDH5WX6WZi195lXu+gcqVTHl5Xublq7fxJ6TmR W+luaRFwmaQgSz5tNlEEqoanm1SKG+F+NHH2FdAD6fdKcksDE3MfmV6uMjm737KdOxf128tRCDc
 Cviyt4VDrZthAFyGcLWiaHz91E0r23AOCRsuN+92wfsdxPEzM+n6Oa60rOjhcMQkDaAFxEwc
X-Proofpoint-ORIG-GUID: 0ewGCU1_yoHOy0xF7tBQTOvPpJHR0QPy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-01_02,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 phishscore=0
 clxscore=1015 mlxscore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0
 adultscore=0 malwarescore=0 bulkscore=0 suspectscore=0 mlxlogscore=990
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505010063

On 5/1/25 8:48 AM, Luca Weiss wrote:
> Enable USB audio offloading which allows to play audio via a USB-C
> headset with lower power consumption and enabling some other features.
> 
> This can be used like the following:
> 
>   $ amixer -c0 cset name='USB_RX Audio Mixer MultiMedia1' On
>   $ aplay --device=plughw:0,0 test.wav
> 
> Compared to regular playback to the USB sound card no xhci-hcd
> interrupts appear during playback, instead the ADSP will be handling the
> USB transfers.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


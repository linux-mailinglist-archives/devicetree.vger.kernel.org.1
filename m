Return-Path: <devicetree+bounces-213488-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 946D0B45816
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 14:46:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 33E851C22556
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 12:47:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEF4F34DCFC;
	Fri,  5 Sep 2025 12:46:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YJrdYtEt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3CF1F61C
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 12:46:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757076413; cv=none; b=GtEtLDmBdgrr9q06MAp/rz+aTclmAkdOrJNQv+6XD480ASdz2ZoW6j3armojOOKceK0s6dIgbimtPfnOpVliwjJb/baUkCCBFblfWd77mcGDi+htUK2Yq7fvdguTxtAhPMZv75RV7WfIwScpEeAz1mu3zlQaKC567drJ2jXFqE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757076413; c=relaxed/simple;
	bh=WdzrylW6D5k/Tf3MlXm009pxRMhKTuh6CF95xa9C5lM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EHfigLz10TLhfx721glpV4TOQHOozwzT71BFTjXn+FMaBJ3XpO8+5diAtuwoogH89K7K3/aILidJpEcZaTLiT07T6LF09w5UPqfs4XlNXVNpKpVpSxfShSx5oKqw5U7YvWpqHKEGKQeKBatojX2xX0zTrpyYvrPqPIZAKuP8x6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YJrdYtEt; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5854oqoS018660
	for <devicetree@vger.kernel.org>; Fri, 5 Sep 2025 12:46:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1SB7U/jII62BtLsfK3kvMJLkTFF545hw+zs878TRZ3c=; b=YJrdYtEttXAITCPY
	4qYd8AMnHHfAG/l+5jjnZLO8fLK6foNRQnVcZp67dxmdhGF0v7r/eqgP3l46j1sl
	f5jXTVz8d87UBAyagvT9l4cMu2QYvBRN5g2ECHq9bD8vkEfaGxuIJUri/OKQ+q85
	QtWaRis+ADqBGL6KORlALm3UJHwlYbMylZ+hmz5XPCoCFfcEc49ZdUQm8mstRF2W
	4BSiMS/mdr8nHL41mM7cHXDtjDBjwK/G6kiB/rF21aGgz/90cbrKk82TNLYJFmgy
	/9BIYzY6vn1BDyOuw8brJPIbvKsudX6L/f4iZ9XbZtK1P++x1E5r1SlDlIxMhjM9
	5ZH+Rg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48yebuu1jc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 12:46:51 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7e87065670fso72122085a.2
        for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 05:46:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757076410; x=1757681210;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1SB7U/jII62BtLsfK3kvMJLkTFF545hw+zs878TRZ3c=;
        b=q0plVjerANFxpYwQZzgUG7grl8GZLS9zCVzlvngBw3N/xPdvsdRTCkURVcXyQi5lZu
         Z4ZdAR3jp0NQsPLS37E/L9GjaBgm5Ori+Hl7nFSAReCa5HYtLl85H+txlZ7E0vu1Yt5F
         U2xEkRtHN/FT6ejRFzYtCegdCiee682mAaUXV5+yvECfnf5mSHPFgYm9DJVXfqN0eotA
         GzRaxCPtcSLf2l5zE3lOU0xtiMLdiOIkyLfTwylufRlNM+HBsJwutawXi11k9wd32zlO
         4efiTk4ilfsktn6LZyvK1CPIKb5zMU65eus4cFSuXJY+jCpKsC1SyEJirhosQ1DdK1VU
         RhhQ==
X-Forwarded-Encrypted: i=1; AJvYcCUZAXfq2glh7smmYU3gfmT/ecqgApqnSjGY2UOvpjXMDFNJMUY8j/h27v4XKhj+1CpBrVI/dYZQOnnJ@vger.kernel.org
X-Gm-Message-State: AOJu0YycZFdwf9ugzqs255YtkHQlQIl1zcQt8CY9lW5KCA8WHTyrih4E
	Oi/qW62yFrfgRP6+mJQgBL0MmyrFpdTGxF5/dU1tyO+S1vbXqV6fCUEbup2FHpDB+1io6C7EyPN
	uBpPb4qAdOHYB5cGi6lDrhJieieatZoSPjR0/xvn3Z8GYr+0rWyrdqpn9rNWL5jwO
X-Gm-Gg: ASbGncuXvqeSFVrnSaGyLqOjEpHLbLuH7UX5S52lD0UvF7U8hIZEiOW6tg9IikYdGou
	UbNCF4+Q4OmXZXwbax4gndZO6FubK+aAJ0DF/gmgrEZUsBf5+/vajIymnrULW2QbtrwRRg+Eqb9
	UW6taQrsToo34AyW8F1Ok9DjrmXXO3vL/QDH8Q9pbgeWmq7yszajHtoAsopcbMWIVQGBRNFIw0g
	/JLybsFhinKhekA/yZbVnDXUQ0JmHeR2gVeDpBAM57sLlTsA5vgebmAEB7I1jTGedq/kEYG6JFR
	JF/MKxR+htB7nFpEscJZunXwZfXEpwJCO+MTM2bLm/tLf2Nt/n322aylB6VTWXtB1tJ4hmGXCr8
	EvrJSSfgA+WtqAzmquWRW7A==
X-Received: by 2002:a05:622a:50a:b0:4b5:e9b6:c96 with SMTP id d75a77b69052e-4b5e9b60fa0mr18609651cf.7.1757076410268;
        Fri, 05 Sep 2025 05:46:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IED88BDkAu3hHD2gZnrUFPzTysohw+/x37Lmb3zruLYrQfgSkQsU1HdrPUH85++Pzq/cKzFMg==
X-Received: by 2002:a05:622a:50a:b0:4b5:e9b6:c96 with SMTP id d75a77b69052e-4b5e9b60fa0mr18609281cf.7.1757076409449;
        Fri, 05 Sep 2025 05:46:49 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aff0cb2cb07sm1727752366b.16.2025.09.05.05.46.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Sep 2025 05:46:48 -0700 (PDT)
Message-ID: <055bb10a-21a6-4486-ab0f-07be25712aa5@oss.qualcomm.com>
Date: Fri, 5 Sep 2025 14:46:46 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 08/14] arm64: dts: qcom: lemans-evk: Enable remoteproc
 subsystems
To: Wasim Nazir <wasim.nazir@oss.qualcomm.com>,
        Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: kernel@oss.qualcomm.com, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, netdev@vger.kernel.org,
        linux-i2c@vger.kernel.org
References: <20250904-lemans-evk-bu-v3-0-8bbaac1f25e8@oss.qualcomm.com>
 <20250904-lemans-evk-bu-v3-8-8bbaac1f25e8@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250904-lemans-evk-bu-v3-8-8bbaac1f25e8@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: QuaPlXs93SWCLttov_wNlWVxMJnqMzi_
X-Authority-Analysis: v=2.4 cv=X+ZSKHTe c=1 sm=1 tr=0 ts=68badbbb cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=3WfgD9H-dY_QjJaUS7MA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA0MDE2MyBTYWx0ZWRfX3miNLTHbRuxw
 TRvJFG4rwZxYaAOzdAtDZx9apWm0zPWT+hEtCYCaK8z+PZ6uE07+Xyp9siKKSCXtFca0UMA77bN
 BykKm98PNVRrDaIK0ohvCN6jLNdW7dUl2hnNIBq2exeIbIpN03tWS7qVknHv26KL0JXg6UDwNJS
 CzM6yoP6x3bKfFi7LgiY1HGmMqo1nSQ2YhxXGx+h2xn+xXY4f4K16BqHvjf0vSNd0Uoae5n5PhJ
 V29c1nBlmTOTSPZEe/h5RvafMBI1KevE8O1ifz1Yx/6HxUowtTPvX0QeNJtUPR4OF8Qag34wyhg
 2f0YmfPUTZqIZBwtv/EHt43mf0tQXWgwAB/igRuDAyYrP4EmuBIiSbxkgPwBJQtKe4524yA111J
 dVWFFTYJ
X-Proofpoint-ORIG-GUID: QuaPlXs93SWCLttov_wNlWVxMJnqMzi_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-05_04,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 clxscore=1015 impostorscore=0 phishscore=0
 malwarescore=0 adultscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509040163

On 9/4/25 6:39 PM, Wasim Nazir wrote:
> Enable remoteproc subsystems for supported DSPs such as Audio DSP,
> Compute DSP-0/1 and Generic DSP-0/1, along with their corresponding
> firmware.
> 
> Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/lemans-evk.dts | 30 ++++++++++++++++++++++++++++++
>  1 file changed, 30 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
> index 17ba3ee99494..1ae3a2a0f6d9 100644
> --- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
> +++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
> @@ -425,6 +425,36 @@ &qupv3_id_2 {
>  	status = "okay";
>  };
>  
> +&remoteproc_adsp {
> +	firmware-name = "qcom/sa8775p/adsp.mbn";

Are the firmwares compatible? The current upload seems to have
been made with Ride boards in mind by +Dmitry

Konrad


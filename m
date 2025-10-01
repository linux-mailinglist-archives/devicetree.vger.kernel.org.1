Return-Path: <devicetree+bounces-222941-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0641DBAFA0F
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 10:30:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DAEE23A5B72
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 08:30:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A57B7283C87;
	Wed,  1 Oct 2025 08:30:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="k5HW5zA0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCEFD2820DA
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 08:30:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759307417; cv=none; b=qhuJuu8L7+fcCT3FUxITNLQawDpH1rArmr67pb8efRYsBh5/uv3a0UcQM0mBw3f5CcRXVzk6wysKoEyzdA49W/WV9DxWHX3kpVjZXmWosvYYSXzYxWevPnk28o6M9UC9Ve2Ls9eSg3O48fO2LMnoDraQ5cMDLQSzklwaDhUyWqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759307417; c=relaxed/simple;
	bh=UDw9fFof8/RcJ1kPbVY+sQqoq6I7U5xpbsVTYPMeEQM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GygOvtbRW21C3yPkSHmvjmcfC07zmQXeSJcFCc/qg1ZRCZT3ChF9y/HrmAji7+ErV98BxSUhR/7mofvATsM32+UhKTjNPWT4uTSO15f8TLB/5FHBlv2HbyQ7y/1Ke5ZGlTeSYPGprNrWotqCq/qoGPYExVMXSYRHYnAHfw5pzno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=k5HW5zA0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58UMFhtH015093
	for <devicetree@vger.kernel.org>; Wed, 1 Oct 2025 08:30:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2X6tqOnkZCqc9sQ2fgf+wm6GtNt0ebr+SQzxsxlSdHc=; b=k5HW5zA0ar0TIz7i
	XbxPZoCMmoZHXcXb/R7VIRbM/3YJQPqLm9jkIJCw+aJzX9XT5I2vLeDVvBdUWPiI
	uKjz8sQqo8qs1VW6e1MwbVkNhx9Qrm99z1PY0BQUO+bWMjgtKd52L8xVCssqEEY0
	rn30RiZiDx0zMFicf+4Ooj9HZ4x56hmvSG9tDj2Rf7mX6Hvxmudyt9m9H8CmWx+t
	eTNu6emQfnv9XJ3vHeQQAM88S/VEpdbBqEXVKfpH8rsJh//JQWzZ40OfrAS09+uf
	K1MqU8XME0eldagxHn43cuc18nCzEjHXRg4jrJJLDd8kzr9Tlt2X7WwheOz+CEUg
	31tSsQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e6vr3v75-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 08:30:15 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-798447d6dd6so15373086d6.1
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 01:30:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759307407; x=1759912207;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2X6tqOnkZCqc9sQ2fgf+wm6GtNt0ebr+SQzxsxlSdHc=;
        b=qavc3CUM/VjdQ2h6skIFjYlTZoHGFzYWCTkF9OYHQOorkayhxIynTn1NdptIOuBsGw
         DLTXpj9+3hA/1VNyALBMMs+w0Xy4BlFZTk3LbEq0s4S9pBhsujZzHaYJk8mdHhYngpH4
         drA/b+SOFFkx5uI+rNB/O9ayetYWx3/RUDQWco/WmzAR4GP9YiGAZb+cGEkeh2idmjn7
         wIDEoviNh6/W2+HEdxwimS/Nc2cRNkzsNERWPW4A5YPu90XXQ1Sj0Mwhch3YrrdCFDUK
         aeAVlSI/rBIoblxlI/Y8Zxi0hRf110hSV4fLQ1DoBK+8N/yswhq4dcHxPRZkf7lg4f6O
         jo2A==
X-Forwarded-Encrypted: i=1; AJvYcCUksRkY/XAUbE2cx+c3pm/GxwvjQnPDXqPq7xvEqF3dZ43rpISLHXRCwg2DnMR2VT+Lkkql6WBpW/a+@vger.kernel.org
X-Gm-Message-State: AOJu0Yzz7e5UARSATj983BbhAd9H+sALxk0FbW3M1r0hujCKhZKZUGKt
	7kX0TuQyny/k+SJo969RxmU0k0ufSAyycDuaV/c3m6UdKwtssvXbaL/IeHdGvUCPpWE6eA0VyNv
	qD9aYreEbIkLT+PQSva9KJFO5lV08gLNKIHs5CWqri8j4EwFAtflpNVsCwfmST8NA
X-Gm-Gg: ASbGnctfAK/RMC9TuFsYA3u6sBRt7xiHjJy61pLTlfcK2yumoVhgSif+LNWpoTG6rPW
	h9fx7uDySr8W5o3UVuF8rFIbOGHdpd/5ZE0d+zKHWkvaq15ofhKQBCCpJ34M+1g5v0E1fTXsAld
	AFrhRci/eBnoj3rlDBk9BgjhmwKkB0/dy5KafiJ7K9dnQ05v4iiKwqvxjfIfFSQF68MkzL5Gfog
	8XSKGkhmGxa101MCNPczf5+kTEfIpBFSAZzR0gh87rR7g3cXOI3lArCn8rOfczy40e1pPqgcAJz
	mBaHAN5dOq6ntQ0/gOjzspLJMn49f4d1iGn090j/KwDUjXxx/nyR3W5y7wMsmuI/JC9ZW4J6+qq
	yFqwTo1ZN8mqfh2q3PToQKFp1Qvg=
X-Received: by 2002:a05:6214:f6a:b0:806:d113:3f87 with SMTP id 6a1803df08f44-873abb0222emr22127516d6.8.1759307406451;
        Wed, 01 Oct 2025 01:30:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGC8KNsHxDoPXMUkX/fvgyVmTEiJDo+/TI3l8mHrrYISyzN5SbngHkWWEk4JHQhpymJZjMEYg==
X-Received: by 2002:a05:6214:f6a:b0:806:d113:3f87 with SMTP id 6a1803df08f44-873abb0222emr22127286d6.8.1759307405922;
        Wed, 01 Oct 2025 01:30:05 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-634a3629cb2sm11171448a12.11.2025.10.01.01.30.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Oct 2025 01:30:05 -0700 (PDT)
Message-ID: <3483a7ba-7248-4358-b65f-356743648c92@oss.qualcomm.com>
Date: Wed, 1 Oct 2025 10:30:02 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/6] arm64: dts: qcom: qcm6490-shift-otter: Enable flash
 LED
To: Luca Weiss <luca.weiss@fairphone.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Casey Connolly <casey.connolly@linaro.org>,
        Alexander Martinz <amartinz@shiftphones.com>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250930-otter-further-bringup-v1-0-7fe66f653900@fairphone.com>
 <20250930-otter-further-bringup-v1-4-7fe66f653900@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250930-otter-further-bringup-v1-4-7fe66f653900@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: JcfsBt8IpQntZzC_Cw5zKozA6uGTZHNG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAxNyBTYWx0ZWRfXytf+R8ybJrOa
 snXznlQAqXoXSCwwquRQQenBBZTIews9LqJQKVpkcGjf2sJekco3mLP/jXHP5DEMJoImgiVsWkq
 TlRKQuXjji92HeCJnTuQUNuNkSaBIhbypaS9ueLC6Nvgg6DnHPJHbmOOt9NJMehHrnZeDQSvg7I
 sBGK5d9hzAYmIm8WHR3uTKrWQKqZPmmxmLG8LQrUT58augn46Unp6EzDh6fbluEdVwzSCqQsKtw
 ofgA39DC0F2wtOoftVThvpe3M6DYHYi9EI7V+joYobJHyOyaDsxVeQlpEideHCrcszwgsNIR5f5
 vCaFpShxh+dhdKaVRpWwTv7sXa8s8qHpFN6Szq7u4OwxC1UbjT6jkz9LFi5JWBaSdIylfDSP44s
 TkfqdSq1Aeqv66/1aK5OSVa4TRlbrg==
X-Authority-Analysis: v=2.4 cv=IeiKmGqa c=1 sm=1 tr=0 ts=68dce697 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=KKAkSRfTAAAA:8 a=6H0WHjuAAAAA:8
 a=EUspDBNiAAAA:8 a=v7dz08i6nHTDO6dUxXgA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22 a=cvBusfyB2V15izCimMoJ:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-ORIG-GUID: JcfsBt8IpQntZzC_Cw5zKozA6uGTZHNG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-01_02,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 priorityscore=1501 bulkscore=0
 suspectscore=0 spamscore=0 adultscore=0 impostorscore=0 phishscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509270017

On 9/30/25 4:32 PM, Luca Weiss wrote:
> From: Casey Connolly <casey.connolly@linaro.org>
> 
> Describe the flash LED on this phone.
> 
> Signed-off-by: Casey Connolly <casey.connolly@linaro.org>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts b/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts
> index ce794ca724db6deb39f7fae47912c3fefe974573..36cc67469615974c193ea3a9db1b2362869d56bb 100644
> --- a/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts
> +++ b/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts
> @@ -619,6 +619,19 @@ volume_down_default: volume-down-default-state {
>  	};
>  };
>  
> +&pm8350c_flash {
> +	status = "okay";
> +
> +	led-0 {
> +		function = LED_FUNCTION_FLASH;
> +		color = <LED_COLOR_ID_WHITE>;
> +		led-sources = <1>, <2>;
> +		led-max-microamp = <500000>;
> +		flash-max-microamp = <1500000>;
> +		flash-max-timeout-us = <1280000>;
> +	};

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


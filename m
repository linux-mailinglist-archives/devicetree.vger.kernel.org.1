Return-Path: <devicetree+bounces-171040-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 36629A9D116
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 21:05:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4CEB6188F0D6
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 19:05:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23AC621ABBD;
	Fri, 25 Apr 2025 19:04:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JCHPGRR/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCC19214A9D
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 19:04:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745607891; cv=none; b=aY0CxFh4bXplXkpFDgU/dpazl/MbywjcWqY0d0UCQ4/r5e2P38+wS0KjvofzlXlJBkhnQzCcsO3AAVsaMqt924WllZ98pYTxvwMN5tTqvY+0uWtGQHdnkeReRABAp9Zy/wgmXiihkzAd5sCQnda/bdRb4Ls0o0EZtdpw8DGP73M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745607891; c=relaxed/simple;
	bh=E2hjGvLcucqnKXKjuuQ3CnCnwsMBcS9NdWsLIqt6V98=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=n6prNGWh69wdm/j0cJeO/7HXsSqNKRloWOw5uimyQLhsSD+ldsEl7pFKGgxSG+cnbbYAUGURTuKWWkMUBvuUzHqsOFvnvLH/9XaqiRJmErN4MiQfulEY1a96lkRYnJthZw9G+RKtUtSS1lMcPgW9krxkBcYrNmrYFrow3OowqXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JCHPGRR/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53PGJrGr004016
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 19:04:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=UTzHeXKj2eXf87DCvDjyBajj
	xp2tDmChSLk0o/h0qAs=; b=JCHPGRR/gTZ/Wbpy1Pb6ekIKGy49k3oWOTDpjlcz
	LLTDWFmK2hB2OlQgCIClXBBqylqPKgw8odjcbQgGvqZGmghUWSrEUMTuX/DjUulm
	iBhzM9SjJSih1Uba3Gk1a1FN0VXGz0xp8C73GY/lLEMm002lY4bwBIUHSXddSX1+
	G8ILPR2jdROKKx3oYKxDBOufXnahF6qjq0Fzj0P4yNaNNXSstekcncRoRw/YDHXX
	x8JOXVsN5fP/RGo27C078sbIrUZFWbizUXm8S6yeuA5trY2uQm1WDpdP1VL+ySrO
	j4bVpg4Zm4D1hp1mOU//L3Pz07JxTPcbimlJeuoo858xWg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh2a4kg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 19:04:48 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c5e2a31f75so797113385a.1
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 12:04:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745607887; x=1746212687;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UTzHeXKj2eXf87DCvDjyBajjxp2tDmChSLk0o/h0qAs=;
        b=TucdBhqy3McO8Xknk2j+03RUOOJVrhk8R1MTaAwNuTlR/55pqNJxHGn09wZJh+qr6k
         slhoW798Fln4aFozdf+/8xURVY0t3KQHnDJl1GQg0p+7CqFEJvgXqJjabAHhnUt908Ee
         veodJP0FwN2ETLCD4ATB4vewhhNsRj/MsOX42VPEe3EGaKYpoYJPE19oMlqJezbmm+mf
         LmC9mPuv0VAdUvFhZwJ1HOTCUmshZEWHck/DxkQnKYeNaGJ+mzFPBPBog2RmY0Rf6nUz
         6eXrx5vkqet0KthcMs5i2+AVxmZt6g8tgwrYR8584D05jnQ0jm22BUvamKjX7iAzzruN
         UBvg==
X-Forwarded-Encrypted: i=1; AJvYcCVXadSeQS9VBcJQGn6z7v8gvqkw2IusjXo39U4Iwh6sCCFmxFbDLw4Xg3xa3qynPyYqPjKssYJu/qvN@vger.kernel.org
X-Gm-Message-State: AOJu0YyvQxPDrypCYSFB6SYl2Uoe156z4JfjuEhiO65/lKNUx1qu+QEF
	EFsB6pdY6UCBGVmvPMKAUD5Vk+0nTBRC1cyKf9X8egpBLD/5EMOJtR13sVBjFp7Y3IWxYbKPaGp
	zAKBM7bdKMEHWQPdrAuChHRtzDcLmRH+vIL9Z04903dbVu2iKIGa1NTC3cPLx
X-Gm-Gg: ASbGncv8stkDLiTX2bAuAq7mI+w4S8150rWNm7E/NFjD23rvQm0ko0Q8e6+8ncTk9Tm
	cmiChNKQjQdgTDn0d9f+uepEqFLYx+kPwNCqVDpmYlMQROmQZHwuRnhGXzhv2V9z1XiDeuWRomP
	UZ7zlEsJlgj+/NLW3T6mjPmNAw7S6ZHhEoaSHawtz6nVnkLr3XRh7z6DUaQ25kiA4Vswx3rxTzv
	z5BJIyqTxivc64AHA6hRaY8TDf0Dfn5GoAvXrFyNmaNVVBbbNtbS3ImoRWfoEbiWrVfox8RpPUv
	OBF0uE3kOWTGl80X9lQbnUGM/ytgx/NzZIQ/E9IIy3cPJ6xh2GJbLMCl3j6peiqJVyZ6D1tjQmY
	=
X-Received: by 2002:a05:620a:4609:b0:7c5:6a66:5c1e with SMTP id af79cd13be357-7c9668cdc37mr114287385a.58.1745607886773;
        Fri, 25 Apr 2025 12:04:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHJuNtckHYkPs0zr/QJ4//NPzQGJTdxk1+Bm0d3d8S6mcxCa4hGs/NU9dIoIE3YcXQ7Drt/qQ==
X-Received: by 2002:a05:620a:4609:b0:7c5:6a66:5c1e with SMTP id af79cd13be357-7c9668cdc37mr114280585a.58.1745607886221;
        Fri, 25 Apr 2025 12:04:46 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54e7ccb7cdesm697699e87.210.2025.04.25.12.04.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 12:04:45 -0700 (PDT)
Date: Fri, 25 Apr 2025 22:04:43 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Felipe Balbi <balbi@kernel.org>,
        Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Stephan Gerhold <stephan.gerhold@linaro.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org
Subject: Re: [PATCH 6/6] arm64: dts: qcom: sm7225-fairphone-fp4: Enable USB
 audio offload support
Message-ID: <gbys5x5qefrep3igd6wwcxqycmvjzsceqt2d5p64znbtjj4iyd@up4fq2cib3tu>
References: <20250425-fp4-usb-audio-offload-v1-0-f90f571636e4@fairphone.com>
 <20250425-fp4-usb-audio-offload-v1-6-f90f571636e4@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250425-fp4-usb-audio-offload-v1-6-f90f571636e4@fairphone.com>
X-Authority-Analysis: v=2.4 cv=EtLSrTcA c=1 sm=1 tr=0 ts=680bdcd0 cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=-qJDoccVa5BqKm_QHDoA:9 a=CjuIK1q_8ugA:10 a=zgiPjhLxNE0A:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-GUID: LZyz-bVCKjMjjF_eGNk0Fo8a4IjlBurW
X-Proofpoint-ORIG-GUID: LZyz-bVCKjMjjF_eGNk0Fo8a4IjlBurW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI1MDEzNSBTYWx0ZWRfX/t7x0RhzF9EO mm9zZlgbMXr5GVJ4tytrlJgGu0nUmxNKr4ZnlbJJVNVrtkaeifYcwN9wxYZtFLzY30mp8tRkbk7 mV7OPF6Ka9O6srfYEiOji5QJBleI8lMXLq3E5xpRbvY48GGWc58AhmCNJxLD+eJfjLFZyq4CKzF
 KI+73+Z7edFwr4KwwIGtJ/YNGqrwEWebiNraI2MZ/kNp2HvjVP8PCmKVX9jig9Zttfm9XQQo/ky +RCpBvuTjN7tDMEpfb8wvya1u7govnwf5WktigqdsMOoVG3Xn/iDuoDOyBwwGkoAyaa2rk7nHvO SimOSxLbUKF7+nQBzmL04Lpn/bHOuBPoR5qzYHHEihLVwkqiKkEL2DO2hakGpqMIBj9wgpD3wfo
 P6LqdkLgK3672UuWlQ+HsGo/6oLfB1l9nrV+5uMNznDbQx5w7QCa+CAH3ikcfvYd2iFDtzUq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-25_06,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 phishscore=0
 suspectscore=0 mlxscore=0 clxscore=1015 spamscore=0 mlxlogscore=900
 lowpriorityscore=0 malwarescore=0 priorityscore=1501 impostorscore=0
 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504250135

On Fri, Apr 25, 2025 at 12:44:56PM +0200, Luca Weiss wrote:
> Enable USB audio offloading which allows to play audio via a USB-C
> headset with lower power consumption and enabling some other features.
> 
> This can be used like the following:
> 
>   $ amixer -c0 cset name='USB_RX Audio Mixer MultiMedia1' On
>   $ aplay --device=plughw:0,0 test.wav
> 
> Compared to regular playback to the USB sound card no interrupts should
> appear on the xhci-hcd interrupts during playback, instead the ADSP will
> be handling the playback.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/sm6350.dtsi              |  3 ++
>  arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts | 37 +++++++++++++++++++++++
>  2 files changed, 40 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry


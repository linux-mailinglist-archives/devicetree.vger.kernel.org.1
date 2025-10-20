Return-Path: <devicetree+bounces-228790-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A975BF0BA8
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 13:06:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 89E0A3A31FC
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 11:06:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11EE02D8390;
	Mon, 20 Oct 2025 11:06:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="E0PMpr0g"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F2DB248883
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 11:06:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760958378; cv=none; b=WwQu3uG+apmE7GR3zRMOGrti0xZEOxxDFVO4/OyLleYrfBIpDxGk5gmhDbzCiQOFawlkt2sqEQsxSpbpz2VqJ8rg1+Bw/eBnnebsYgkPa0qFMZItn3FMExc4Y3WfykJlFKuzHQbaTh4pI7UbFeLEr3wMe0rYBgT1hueXWSDFPFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760958378; c=relaxed/simple;
	bh=XD47O9TRxnWUCcBap4YFeLUUHeVW6Hw0uiOjDC7QDf0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RgHtAN9TibEJUO+Uj8BJVpGSZlW06ZG4nPfKpdG6PG788nc8O6Mqzm4T7sWi/H1oYi3+7A/7++tyLq2pfmlxO24Y1yHbkbdaA+l9YhmTV3OB4wK45+LkZJnF8osNymt40Z386ZrboLTanZtsEp8ce1nZYPlYg2F/C1hTPiX3+Y0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=E0PMpr0g; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59JLf7pg019393
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 11:06:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0BwZA/OA1ZRMqrTJrXUO28pcOEUZxmfCKbigqTbLybU=; b=E0PMpr0gLIIeh0CZ
	B4q4Qm8CUYNqdxQVLzNi+7F+Fmd0XaBLkUWsJdMTgq7oR3n7WcIYV49I/s3eJzPS
	M6ytRZ/5Gb48pV0qbcHFwxzN6bQ7iWi+iPkD877hoKMW4VUsx/TEHSUb8/yaDRrN
	PV3aeVtkQwfUEAj8P7qQsbj6h2O+TYWsl3UqkOJMzLJ212m8IqsQh344wDUFyLaF
	xS4TDquX4potZ59p7KhUY76j72ylI9uywRZ7Yg33dfBdMQTJyu4vwEo9sMc9snwp
	bkYMu3E93J4tlZpZAam+dnMhhomTC8rxPpS/Fx6ul3GSUeyhd+eX0Jd9YA793/kV
	TaAS1g==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v2gdvj73-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 11:06:15 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-87c2c9f3058so134826976d6.3
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 04:06:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760958374; x=1761563174;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0BwZA/OA1ZRMqrTJrXUO28pcOEUZxmfCKbigqTbLybU=;
        b=nw70+oupRLzLo2FFJs0Sh8x67C1eLPXeQLWlgLC5DcxYd+m93rsKssYPoRKlZ/mGdl
         wj+k/0yVanHrvMgIGFJojtUVK3mK4igLMo35myJclqe8AQK0+TbMerB1X+yZDM2Z6zjk
         BhvRtwUJZRmFNJxwmtJfwprqh8iy4M7BMucCPlVqQP5t6ABHQ4tQcC6yJjHgNoIRSg46
         ocy29DafwDAb7L3llCQtR9sHhbOEQjvggC86NFejBeWr36akHRjU/fZ4kDdgzr8+me0a
         oRL2NItqd3FBVmRnoakzbmJ/CnLSVyNQeEdzm0aobHXM+YLxZ9YtiargKElY1OCLdzxA
         QzxA==
X-Forwarded-Encrypted: i=1; AJvYcCVTRyAwZGNo3UFrT6tSGtXo996iT0G/CMfl/+VRnvd0gLjUYInHNHwJtCZ+i3j6KXkup35Xe0ssDqVc@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1OM8RW/EgQxQiZy/XC+BAWc2P8PEJ9E/tUoyqs1B70G3BwVQq
	jwfYrUPrTAyeuKc+oYAxnUyAJL99IQV4YuGpmH7DjVsPQn+VQl2tT8MQhxpjYuedxQYHnHt8/VQ
	+SKRPfyli+J6ReHAeE1q4gmOf0rKXl5pmXz9r0hiA6luDUQCjRAouSscbItPu2kZj
X-Gm-Gg: ASbGnctQyGjW56uWN7qHYNOxFgijmNxXLCkOm3hrVlMY8LEdMsjuV8WQfICJeXSwLFe
	RxEW9M8tfTKlPpkLu4Fv6lr0gloOQ6U1+8qj5RX3gbXq6z/xJK9Nn/qMNOalQa46dPfFoHRV6Rz
	1sb+lPidhYkrdlGgf+qbccEX1skyw17sx/cMIhBTThpsuDEtD3IS2hjRtwHImON0uY20XnM3+kC
	usQHcmRYHo24yyHJWyd6IvgLuEnXwSK6eoM3EQwTuf1u2m5t4s5c2jZrjzBDB2VzXVxTSf5Zl+1
	xUgRwiVCWoHOeBuTMHtW1NhRfDXo93JVUlqHYeRPALLEprpfDjIZXTjSZsiS9+vQWN6cIHE4Uey
	7fQZ4s+bdgN5X66MZXI12biyCFXQBTIYgNbI6c735U09HLt1TCCz5z7l/ddrly5afBTqAFyfZNh
	p10aBwsB6hDII=
X-Received: by 2002:ac8:7e94:0:b0:4e7:20d3:ca6a with SMTP id d75a77b69052e-4e89d1fe501mr164423991cf.1.1760958374528;
        Mon, 20 Oct 2025 04:06:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGqN48xKzVO8tsbOssT4BHqejlmeJeQVsIvc+vCF7ac+0u79yDBwEFK00zcEyTRO+XdmrgoVw==
X-Received: by 2002:ac8:7e94:0:b0:4e7:20d3:ca6a with SMTP id d75a77b69052e-4e89d1fe501mr164423621cf.1.1760958373998;
        Mon, 20 Oct 2025 04:06:13 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-591deec0b68sm2422752e87.42.2025.10.20.04.06.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Oct 2025 04:06:13 -0700 (PDT)
Date: Mon, 20 Oct 2025 14:06:11 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Guido =?utf-8?Q?G=C3=BCnther?= <agx@sigxcpu.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        phone-devel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: sdm845-shift-axolotl: Move address and
 size cells upwards
Message-ID: <i6uiemrttnnjfcc35xw3ux27g2wih5u4kvn3ore5a76ust6l4n@x7sfe34penlm>
References: <20251020-shift6mq-dt-v1-1-8714087118b8@sigxcpu.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251020-shift6mq-dt-v1-1-8714087118b8@sigxcpu.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAyMCBTYWx0ZWRfXyL/EnJHv4iqX
 6u/F2vGsQwwGv/aOSbiGxAyP6mXWgJ7VTd+bgkWJXmTiExUPaVbIKaEMJJvaDZBVWbza/CQWYiS
 GX6ToYETh0un7EFLZuNkNJu5QCjZ9F7mYxebMe78eTgThkTkET/zJ1JMdrEgqOb3FRb2ZJSth5V
 88VCkjhZMU28esPROy3Wk/8A/7Th40+mQrpMH3krCRUcv1ulDT36EHJ+nN71b4L8OMGRXKJ9yXo
 pzLhAwIcUrqKfq08uuWM5W3JKAAYfTTvceOlAUkfQL3bWAYT8bqjm3thzC3LcxxXBF2Dk/1jjtc
 0Q4ddb6YmiFM0G5xDDkKI9+cIdtAfMC7BKmOAYoPQyDmPjyDJxaRpZozqdpgBnTVta+m652j1mI
 0hj+WNpA5iypZ7b7fVCKe4zWFBB/iA==
X-Authority-Analysis: v=2.4 cv=KqFAGGWN c=1 sm=1 tr=0 ts=68f617a7 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=ze386MxoAAAA:8
 a=_PUjjehnJBWPTTrYcrMA:9 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10
 a=iYH6xdkBrDN1Jqds4HTS:22 a=iBZjaW-pnkserzjvUTHh:22
X-Proofpoint-GUID: yL_W5Pp883fi5FhgsgHuQjnKo_tw4u1Z
X-Proofpoint-ORIG-GUID: yL_W5Pp883fi5FhgsgHuQjnKo_tw4u1Z
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-20_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 phishscore=0 malwarescore=0 impostorscore=0
 lowpriorityscore=0 adultscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180020

On Mon, Oct 20, 2025 at 09:55:13AM +0200, Guido Günther wrote:
> They're used in the parent to describe the panel's reg property.
> 
> Fixes the
> 
> linux/arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dtb: panel@0 (visionox,rm69299-shift): '#address-cells', '#size-cells' do not match any of the regexes: '^pinctrl-[0-9]+$'
> 
> warning.
> 
> Signed-off-by: Guido Günther <agx@sigxcpu.org>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts b/arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts
> index 89260fce6513..44e7b5015d26 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts
> +++ b/arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts
> @@ -472,6 +472,9 @@ &mdss_dsi0 {
>  	status = "okay";
>  	vdda-supply = <&vdda_mipi_dsi0_1p2>;
>  
> +	#address-cells = <1>;
> +	#size-cells = <0>;

They are already a part of the device node.

> +
>  	panel@0 {
>  		compatible = "visionox,rm69299-shift";
>  		status = "okay";
> @@ -479,9 +482,6 @@ panel@0 {
>  		vdda-supply = <&vreg_l14a_1p88>;
>  		vdd3p3-supply = <&vreg_l28a_3p0>;
>  
> -		#address-cells = <1>;
> -		#size-cells = <0>;
> -
>  		reset-gpios = <&tlmm 6 GPIO_ACTIVE_HIGH>;
>  
>  		pinctrl-names = "default", "sleep";
> 
> ---
> base-commit: f406055cb18c6e299c4a783fc1effeb16be41803
> change-id: 20251019-shift6mq-dt-e4b9e7dc7169
> 
> Best regards,
> -- 
> Guido Günther <agx@sigxcpu.org>
> 

-- 
With best wishes
Dmitry


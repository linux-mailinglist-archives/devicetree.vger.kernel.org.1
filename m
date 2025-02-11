Return-Path: <devicetree+bounces-145279-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 42BFAA30CEA
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 14:31:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E4935166A66
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 13:31:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F00F11FAC4A;
	Tue, 11 Feb 2025 13:31:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ti7IvCwY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 699251F03E2
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 13:31:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739280681; cv=none; b=ZtfoicNaJ/QXfCLGpaWSCATu9XXAnGMetqRM3U9FZ8BhsolJqyB/anCDr2YdnWSp6eT6OW8G5BBhSIPMRFd0CzwQpQLwylJPcV8g0P1C2QtGC+aNtgMYBm/dPJoE/dxIOUUA9tx4RDFnvf2ZVi/o3scHnK/rfEflQq0dOUsLPDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739280681; c=relaxed/simple;
	bh=RwTJfBaMW2/pa9J/hvPQKduFjwLKJq8rtjLr+5PGP+g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ekVQqTrZ+nyCimZithtDUBDyvLYqMCHO4H8etgB3KeCemlNzyexSFV0nZo9KEvExxILoo+HLAfv4B7mqQiGFk4/LUhORWb2ZKU+weeFBYHMd7C7ksI3CSodgmO/n0i2uI6t0BkAU5m9bSo1f3+3KSslryMupX6jq8smCr048DmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ti7IvCwY; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51BAkQh0018103
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 13:31:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	V8gfsxl5wjBXJWzy9IZRbAg+/QZ7NlWDPkHV4SG/aR4=; b=Ti7IvCwYBE7joAfU
	J6wsCP1oRWJ77hUTaDlvc6KN+efAAh324fftecNig1lGEE1Uxx59ZNw6/WGILaJD
	Kc4mwBZpC44ijC5bpiUd0okiLfOMOBTwQZbzZ4hWMRri/jOtqLCtOaBiortGMzmW
	fYWA9wuLUqi7WKomIvyDHmsi+NBDwcKgEA3yNS/MIVrxfMHFDdB9xy4JVpL3i748
	ZQ1pLVpVb8J+JcSvXkGsUUGOAH8mT9FbA74O34+JxhsykezZBZw5RnuFxcZY0k6E
	WpSliveD4lJB/8vC4MOXynL4BrSe4jTrNVxtyGu5IejbjRmQoINk4pwkS3vPtojM
	2ocGiQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44qewh46d5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 13:31:19 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6e440e2ddfbso13729436d6.2
        for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 05:31:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739280678; x=1739885478;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=V8gfsxl5wjBXJWzy9IZRbAg+/QZ7NlWDPkHV4SG/aR4=;
        b=fkq9U/XF7KsR5RZnz03m7zhcjKmzedgRlp0/6NNu0vDVRrsoY4kPV9IE3LucAzscJv
         bb4QMQ3RgV96EDPwUt5kdFoF6BWGeWh9Mv77SA7iBbHuY4isVDehgTgcqZFsBJgKTOby
         RSVCW3e6aRFACl4JByjXcsC6SdhgCZMgT0wLV0LFQg7NfTfaoOVhWf035S/8Jg0MtF19
         Hg3TPrBwMuVG3//GhY9LSJ98+qMd5h3kaI+of96LKhnHMruzGiYdwDt+lYcjPLVgubXF
         Fy350QTjhkUt5V2xQ+5yfiywGEOOfRXKZlpTMfWmIUh9D9hB2F5ApdtS6Euceu5kZYx1
         2YHg==
X-Forwarded-Encrypted: i=1; AJvYcCUFl1TmDgnqbK4ZpZl3PO3tk/b+bXCa5Gvsu/drpBKjt6awy7sokwDsF6dJTha6tNINf86jxfBt2qDw@vger.kernel.org
X-Gm-Message-State: AOJu0Yww+f6uCoekZByIkxFaGWr24S2mmdL16RsiaBPAnu01jbxVbCYZ
	0kq/kW7pefLo3uIN6OxHFhSNekm0mB7yPJhRfRKNlhMDFizrcKaJs25tG/jz3c6JgdFOlJcxiac
	KpJs70ou4PfEPSL9+1DnU263ys6JbrOcUhTRJ96FOB24X65bbZJQBLGRgOtp/
X-Gm-Gg: ASbGncupFYXkXq7Tc4IvZMw4pGPU1QfI284aKRJr5Za3q2ejKpf/SgcHVemAsrlW39E
	kWE3tmCHUAOhjOhthBcBh6t/sZtSm3BxsM6S3kyHHBx+lvNr8DNolvC8LW5LYRrix5Idpadocql
	YzyLbTMOCtsCw24E9vUxHxczWr84+H3B3vWxf1GWGubyWn5KCJmIBut7HNvard3JqTN8OPJWmtg
	GM6lVuD9kbYvHB1x8DK2LkpEH14op8k/o4q4ReudC55eqe3HEjX3boNWd7O6UR6il1Y/+GzvcDB
	G5t2D0rzCx62vU2+/da2Y593JbIGjHyGOgbHzVzGMKrxcXsK53+r5FefctY=
X-Received: by 2002:a05:6214:c65:b0:6d8:b562:efcd with SMTP id 6a1803df08f44-6e468dacecamr11867036d6.7.1739280678098;
        Tue, 11 Feb 2025 05:31:18 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHZpgOADXexGty6sVFgmRdsYA39yzSbEDl4lVKreV5wAGJ5UPSGTJjaEwsdYbIYB6FhRH6giA==
X-Received: by 2002:a05:6214:c65:b0:6d8:b562:efcd with SMTP id 6a1803df08f44-6e468dacecamr11866796d6.7.1739280677621;
        Tue, 11 Feb 2025 05:31:17 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab7dae77599sm159225066b.30.2025.02.11.05.31.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Feb 2025 05:31:17 -0800 (PST)
Message-ID: <4a232b8e-f63e-4f89-aa4e-257165150549@oss.qualcomm.com>
Date: Tue, 11 Feb 2025 14:31:14 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] arm64: dts: qcom: sm7325-nothing-spacewar: Enable
 panel and GPU
To: Danila Tikhonov <danila@jiaxyga.com>, neil.armstrong@linaro.org,
        quic_jesszhan@quicinc.com, maarten.lankhorst@linux.intel.com,
        mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com,
        simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        robdclark@gmail.com, quic_abhinavk@quicinc.com,
        dmitry.baryshkov@linaro.org, sean@poorly.run,
        marijn.suijten@somainline.org, jonathan@marek.ca, jun.nie@linaro.org,
        fekz115@gmail.com
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        freedreno@lists.freedesktop.org, linux@mainlining.org,
        ~postmarketos/upstreaming@lists.sr.ht
References: <20250203181436.87785-1-danila@jiaxyga.com>
 <20250203181436.87785-5-danila@jiaxyga.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250203181436.87785-5-danila@jiaxyga.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: kjRhPeIrDI8ZKp6QOTEU8Pd--A4k3m-X
X-Proofpoint-GUID: kjRhPeIrDI8ZKp6QOTEU8Pd--A4k3m-X
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-11_06,2025-02-11_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 spamscore=0
 impostorscore=0 mlxlogscore=949 phishscore=0 clxscore=1015 adultscore=0
 lowpriorityscore=0 malwarescore=0 bulkscore=0 suspectscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2501170000 definitions=main-2502110089

On 3.02.2025 7:14 PM, Danila Tikhonov wrote:
> From: Eugene Lepshy <fekz115@gmail.com>
> 
> Enable the Adreno GPU and configure the Visionox RM692E5 panel.
> 
> Signed-off-by: Eugene Lepshy <fekz115@gmail.com>
> Co-developed-by: Danila Tikhonov <danila@jiaxyga.com>
> Signed-off-by: Danila Tikhonov <danila@jiaxyga.com>
> ---
> Note:
> Depends on https://lore.kernel.org/linux-arm-msm/20250122-dpu-111-topology-v2-1-505e95964af9@somainline.org/
> ---
>  .../boot/dts/qcom/sm7325-nothing-spacewar.dts | 53 ++++++++++++++++++-
>  1 file changed, 51 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm7325-nothing-spacewar.dts b/arch/arm64/boot/dts/qcom/sm7325-nothing-spacewar.dts
> index a5cda478bd78..cda317b49d5c 100644
> --- a/arch/arm64/boot/dts/qcom/sm7325-nothing-spacewar.dts
> +++ b/arch/arm64/boot/dts/qcom/sm7325-nothing-spacewar.dts
> @@ -52,6 +52,8 @@ framebuffer0: framebuffer@e1000000 {
>  			stride = <(1080 * 4)>;
>  			format = "a8r8g8b8";
>  
> +			display = <&panel0>;

This is allowed by bindings but doesn't seem to do anything

> +
>  			clocks = <&gcc GCC_DISP_HF_AXI_CLK>,
>  				 <&dispcc DISP_CC_MDSS_MDP_CLK>,
>  				 <&dispcc DISP_CC_MDSS_BYTE0_CLK>,
> @@ -757,6 +759,10 @@ &gpi_dma1 {
>  	status = "okay";
>  };
>  
> +&gpu {
> +	status = "okay";
> +};
> +
>  &gpu_zap_shader {
>  	firmware-name = "qcom/sm7325/nothing/spacewar/a660_zap.mbn";
>  };
> @@ -823,15 +829,44 @@ &ipa {
>  	status = "okay";
>  };
>  
> -/* MDSS remains disabled until the panel driver is present. */
> +&mdss {
> +	status = "okay";
> +};
> +
>  &mdss_dsi {
>  	vdda-supply = <&vdd_a_dsi_0_1p2>;
> +	status = "okay";
>  
> -	/* Visionox RM692E5 panel */
> +	panel0: panel@0 {

Is there going to be a panel1, too? ;)

Please drop the 0

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


Return-Path: <devicetree+bounces-146055-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 73A71A33255
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 23:19:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2D7B07A40A4
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 22:18:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24C092036FE;
	Wed, 12 Feb 2025 22:19:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gwn3f6J/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48C4C202C2E
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 22:19:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739398758; cv=none; b=enaHRadJfkbkC9l/INDoL/BMWzDnvQlmWIalzvKhLqvNAEphnRIfl4QsKeECzVPl0WGdPsCWABsvHk3MZlMGHEbAZ4p9IVgjwFK1c57qdD35mpaIn0nghbbNhhpvWs2QZEyL7hAEO9hAVGcZOf+kYA4+Go/JVObwrhFPNu3GlcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739398758; c=relaxed/simple;
	bh=yT1WThL1jBPrtugQr7EiuZsrp6TpMNWAICvvKnpVO3w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ajI9a1Vtsi8BxzSTLvZYLDMSdVCCCSbHz3esP1xg4/GNQlQj9+3rAPONobZxHsCbMeTxAKiPdV8cX1w78gVZC5mM8/dyWmNXmsye154OUJ9flDOUvAa2tAaOtjSfmIBbuFd6u0l1Me9YWHs4CXPxkc6o7ai1I5oODFJt7mTqA6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gwn3f6J/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51CL8NPm014045
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 22:19:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4HSI5ASZ9NS3VrXEUw0edbnKWJTKfnfNBpv34oiqKVg=; b=gwn3f6J/hc8jAOFb
	gOixYwhjRvLJ/C4/Zc6kF5j6KSueL184g6MVJoGbBo3u7YeZdnidQl4sh8jDM9Bl
	mTxSOkyh/HtvgD2nt67PJngnNIPlQgmmXr3+W2m5esTG5r1U9WaxZQjEHe8prDZk
	xDQdOAil7Z8ElJJNBT3VMl2Fpi1xB/TyBFd6qm/1pIa9KNhgbOj/pyqqsogiqf4+
	A7ykpd2USb6tQvPx4zoaDMzv8sP40OwPAqQ3pa7va1ZB6o2iFCDdEldC4V7lmwJC
	ZQZgA4wtARelaFPKKyeelyMWPOzPNlcCZY5TBsTHxOZHsRFoIzSWjwpVVoFxRsxh
	mxTsvA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44rsd7ss9q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 22:19:15 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6e44fc85ec9so587566d6.1
        for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 14:19:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739398754; x=1740003554;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4HSI5ASZ9NS3VrXEUw0edbnKWJTKfnfNBpv34oiqKVg=;
        b=pq1ZoTrf/d4Za0bjPKQzy6sSWVsxqrYBA6KakxArii933KI4Gbqf9jMpFmG1yvhK7z
         Lm/KnO5u4yVPRYQrw8DeqSNqFQavs9PhO/ZKUGztuXxIps7L8wvu0G9IpdwrX45Zbiad
         9UQoVluqSwaE/TPtrIPWBKqi3i21XEYPpluPGKiz0Vjv5GwECok7zoW46Cy+nO4a+GXt
         rxkZtAO2TGnVHT5ht9Kk2FzKb9rWvBEMd9vtXeh9bh7z4c2YOrCZOQNlIof56hit0ME8
         riPFS8ztQtsKVjHykgMBNb9ZuyDGpvjS7chSPO+MP8SiqsNclOWaN8sIneEWVReinq+2
         XE2w==
X-Forwarded-Encrypted: i=1; AJvYcCWgPqK/5yu7J+GGEiQcdXlMXQtI9YReJHisEFLUE/PvApr5L16TK4lxYz+/B1oFxa/oPwwtnRVR1LHw@vger.kernel.org
X-Gm-Message-State: AOJu0YwQpr7I9mDI+JuRNGQLHS1ZW8s6Aclh6mgJnjoTj9XWFijQo4OQ
	I7NLEG1/Nm4Ox/Snb3XTqr9V/tK1pM9CUZsDOGPE2RVVMtZWAUsfdlwinVTEUlfxMByH3c+CWMe
	xmtMsD6H2c4AVt31ZUccTCuvuvFw+TfKRs71tPAuElosUvy2XaRCR4/E3xxyO
X-Gm-Gg: ASbGncvRN0Mp62SZifUjdk41Gr4bQ4m9w12clLoTVdNNZEDkUhdONg/mkBpF8hnSM/W
	RPFMFbcEkt7sazRm5scTWlkwF9baRVcvcVPlCSWaleMnDlkD1j2lt68pCJxwVh9WP60EhE0OZha
	QZCOENi+d3kfpuJMmEX1wBZ02cvk7Z6F0hpoCD5jU5EqVrjnYut63L1cYPoPzWu4frwbe3OJd8a
	fVHveUrDf3wuWjHQ+j9XRw4soegVqXdj5CtdHCXe1ku3eXG+jDfjt3/79od84W1NESQbAdQvPn4
	90OHj/Rvv6Wd38EZ4cTuFmpgEQ2hWiecO3Kaum2FYy46DM0dAag9jf4Yt1k=
X-Received: by 2002:ac8:59ce:0:b0:467:6bbf:c1ab with SMTP id d75a77b69052e-471afdf1d29mr30713041cf.3.1739398753966;
        Wed, 12 Feb 2025 14:19:13 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGK6Ge4ebchMzt0HUQfcJ6HYI/Xh1Ud54kYJSjBnEpQ0vQMeGzVjf5lSNzNOHaDSn8ZJvY5bg==
X-Received: by 2002:ac8:59ce:0:b0:467:6bbf:c1ab with SMTP id d75a77b69052e-471afdf1d29mr30712721cf.3.1739398753478;
        Wed, 12 Feb 2025 14:19:13 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aba5337653fsm3419966b.102.2025.02.12.14.19.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Feb 2025 14:19:13 -0800 (PST)
Message-ID: <a967c354-cb33-402a-8be5-2a89a5108946@oss.qualcomm.com>
Date: Wed, 12 Feb 2025 23:19:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 8/8] dmaengine: qcom: bam_dma: Fix DT error handling for
 num-channels/ees
To: Stephan Gerhold <stephan.gerhold@linaro.org>,
        Vinod Koul <vkoul@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Andy Gross <agross@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Yuvaraj Ranganathan <quic_yrangana@quicinc.com>,
        Anusha Rao <quic_anusha@quicinc.com>,
        Md Sadre Alam
 <quic_mdalam@quicinc.com>,
        linux-arm-msm@vger.kernel.org, dmaengine@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Luca Weiss <luca.weiss@fairphone.com>
References: <20250212-bam-dma-fixes-v1-0-f560889e65d8@linaro.org>
 <20250212-bam-dma-fixes-v1-8-f560889e65d8@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250212-bam-dma-fixes-v1-8-f560889e65d8@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: ysBmN1CPFy3LaJNDuxrhhJe_BbHXcFue
X-Proofpoint-GUID: ysBmN1CPFy3LaJNDuxrhhJe_BbHXcFue
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-12_07,2025-02-11_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 clxscore=1015
 mlxlogscore=999 mlxscore=0 adultscore=0 spamscore=0 phishscore=0
 priorityscore=1501 impostorscore=0 lowpriorityscore=0 bulkscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2501170000 definitions=main-2502120158

On 12.02.2025 6:03 PM, Stephan Gerhold wrote:
> When we don't have a clock specified in the device tree, we have no way to
> ensure the BAM is on. This is often the case for remotely-controlled or
> remotely-powered BAM instances. In this case, we need to read num-channels
> from the DT to have all the necessary information to complete probing.
> 
> However, at the moment invalid device trees without clock and without
> num-channels still continue probing, because the error handling is missing
> return statements. The driver will then later try to read the number of
> channels from the registers. This is unsafe, because it relies on boot
> firmware and lucky timing to succeed. Unfortunately, the lack of proper
> error handling here has been abused for several Qualcomm SoCs upstream,
> causing early boot crashes in several situations [1, 2].
> 
> Avoid these early crashes by erroring out when any of the required DT
> properties are missing. Note that this will break some of the existing DTs
> upstream (mainly BAM instances related to the crypto engine). However,
> clearly these DTs have never been tested properly, since the error in the
> kernel log was just ignored. It's safer to disable the crypto engine for
> these broken DTBs.
> 
> [1]: https://lore.kernel.org/r/CY01EKQVWE36.B9X5TDXAREPF@fairphone.com/
> [2]: https://lore.kernel.org/r/20230626145959.646747-1-krzysztof.kozlowski@linaro.org/
> 
> Cc: stable@vger.kernel.org
> Fixes: 48d163b1aa6e ("dmaengine: qcom: bam_dma: get num-channels and num-ees from dt")
> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> ---
>  drivers/dma/qcom/bam_dma.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/dma/qcom/bam_dma.c b/drivers/dma/qcom/bam_dma.c
> index c14557efd577046adc74fa83fd45eb239977b5fa..a2f1f8902c7f88398a5412e8673e24b3c10bb86f 100644
> --- a/drivers/dma/qcom/bam_dma.c
> +++ b/drivers/dma/qcom/bam_dma.c
> @@ -1291,13 +1291,17 @@ static int bam_dma_probe(struct platform_device *pdev)
>  	if (!bdev->bamclk) {
>  		ret = of_property_read_u32(pdev->dev.of_node, "num-channels",
>  					   &bdev->num_channels);
> -		if (ret)
> +		if (ret) {
>  			dev_err(bdev->dev, "num-channels unspecified in dt\n");
> +			return ret;
> +		}
>  
>  		ret = of_property_read_u32(pdev->dev.of_node, "qcom,num-ees",
>  					   &bdev->num_ees);
> -		if (ret)
> +		if (ret) {
>  			dev_err(bdev->dev, "num-ees unspecified in dt\n");
> +			return ret;
> +		}

I like dev_err_probe, but this works too

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


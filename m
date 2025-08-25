Return-Path: <devicetree+bounces-208922-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B54A6B33B3B
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 11:37:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 950961B23E63
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 09:38:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C79412C3254;
	Mon, 25 Aug 2025 09:37:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cdKi27DV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 026D42BEC43
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 09:37:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756114666; cv=none; b=rFgZ8zkTGmLH96+AIyw12APscKOc6MDrIl0pIdrohFtcudFVyNNRtO2Icw6jjf6tWzbfDon3dVQN7bd3j9btMrLPbdK4piIvamCaMngo16D0a+TY9JuZ3tn6BXo5f5bdWZqEsVdkDFcY5htHiMvGhD2OiRS+WEsbxYEjVtVSrSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756114666; c=relaxed/simple;
	bh=7y1BO9AhXV8hr34u6FNmEbRZ/P4jQT/IKoxQ1jN2O6I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MwYUtrUv7PA3uVLCw0CxK6ZC3zFlfAK3474GbKLex0CDxe7gY335xHNmSf+n4K8bDg/VqYHjVB6M1LSYZWv0JFelhrrVbGjMngOPP1GksLyZ1VYqz3arVH59u/0jXnZ1tDlvT46bAlnwD278uVUgMlfmfjYp33vROn8F9ERmSG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cdKi27DV; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57P8iLNn008776
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 09:37:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=zIBbZjwc5/X8f7RRr9JDmD6i
	nraVHRNhohmmINHC3h0=; b=cdKi27DVw8bF7GwFVg0QatQDLLNbP6KuZ4cgsijN
	lZFNX5kJZ+/SQaLmzhsd2ikjkRMeyC6AqPFfKsr9bS/M5ffrrK3eBbbZ3iRzFD7N
	4L9fpQacbqKLUomgXm32XDN2mrg9z216xBJTMeVtD2h0v00Nfu30QGZEQ00dFX9c
	9RkjdJv+noV+uh3e3y8S8SpGbBxpmndYPsF408ZaMK5VLTs7+eyLUlGn6a5sFNnl
	C5KoTszn3oGDOx8UkXftQTdi5/UUPF1LpGLKF4VqZV+j6UKcmMTXJJ7QwQPOrbTU
	1YprJOSa8XnBpnieBR7zb2O0DZj+xe0OmOIU4L9o86l+Ww==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q5y5chq8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 09:37:42 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b109bf1f37so91889051cf.2
        for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 02:37:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756114662; x=1756719462;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zIBbZjwc5/X8f7RRr9JDmD6inraVHRNhohmmINHC3h0=;
        b=au0z7LRfbhJrIvhgZJj6NVDreMg/7QrkuJyJtkOMnfKHG1jMsypQ2y2X6ZOUh55r10
         Rnwg2rdDqrSPeWyPChJcT9+jltKFzf86pL4D1AsWjal6GZunlrfEsB7nbcTWrtkz7ccV
         jRjNKQP8nEM345wg4cXOTgP5aMXtwv+er8GWa7wT6/GYRTqKDagpE2wY8GSf4ve5BbX3
         RhWHUmCb+l1V6Yk5Bp9J4iXOAs/CaOlBu1IiXvTEfTUUesg9Y2chSqSRzVihheF6q4A3
         nd6HPWCeaY6AP0SCZUWkgtcU7fIHOg1PrV5zMw3FVQK+LYchzmxfHerTXsdzDhpWkpNg
         L/9g==
X-Forwarded-Encrypted: i=1; AJvYcCW4b+KMJGnQhakcH54cp5pyfPB/k7J3LnxBnPkXtTR5kZvNBinVfy/2DFvWSmyHTLtvEiLoA7myodY+@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/vFTFankuIvgP/gf3YCGOQZhiWsl/EekWYEp85acn2k98o9fG
	Uo3SajWJiXqD4DVqs5E/fcl5Irt252xZUZ4sAmXXmJCoBEz2LqKXnQOYtabzfBDvaRj+oDihOFr
	AE/5lkIO58Jc5SSGPbaS1p9VzFf9oiT3jRdV7AKn90zQ9M3xw7IwPnNXcdBeajbIw
X-Gm-Gg: ASbGnctV6NwbUNv3zorFCZXOjP5/KfO0yfEpeH9Fwjnih4ki/3KCMAJ6eWA5IwcrWJd
	9pO2uAI4/d4TUYRWgBz1MNrm+t/F3uyo1KEZxX5DJl4PN6tS3fj0W3p7SIV2lxUGZRAfkCw1T7C
	6G5b+W+f+MNhotK6vGflXTKeCPsAOXL8OZ6pvi3Z6RD6347dN7QV+wZIch9U4ZDPntDCld67Trx
	Fe8jD9Yz2ZKYtnaLT4tFfFL4mgRIydzPol0pzXG8Tzu/JqwNz0gfoBCBz7OzFjSbw1PADRYsL8A
	hI3DYIj8syHANg064rpNnLSPymfxBM9gFwtXho/mAYxHvbqx9mgM+ako0kjclZ7HGhIPz1DJdvb
	c+FcoEztdkofU0eDnzKhj7KJLZzOp9una/WcdIqh7XKk2F/6lR3Op
X-Received: by 2002:a05:622a:5c16:b0:4b0:61bf:c2b with SMTP id d75a77b69052e-4b2aaad078amr132004801cf.42.1756114661547;
        Mon, 25 Aug 2025 02:37:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGHdClOSUsKatBDRUINUwEqqsovj1AzaAsztG5CFwMzAvS+RycwCCcpWVqvant5tt3s/Jpqbg==
X-Received: by 2002:a05:622a:5c16:b0:4b0:61bf:c2b with SMTP id d75a77b69052e-4b2aaad078amr132004511cf.42.1756114660745;
        Mon, 25 Aug 2025 02:37:40 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55f35bfcb09sm1542036e87.23.2025.08.25.02.37.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Aug 2025 02:37:39 -0700 (PDT)
Date: Mon, 25 Aug 2025 12:37:38 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Nickolay Goppen <setotau@yandex.ru>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH 1/3] pinctrl: qcom: lpass-lpi: Introduce pin_offset
 callback
Message-ID: <dgqpxhbq4qvr6gk7ykbu4i4c75ujtxhybvwyib23tlkijbes24@4neoy7quosxr>
References: <20250824-sdm660-lpass-lpi-v1-0-003d5cc28234@yandex.ru>
 <20250824-sdm660-lpass-lpi-v1-1-003d5cc28234@yandex.ru>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250824-sdm660-lpass-lpi-v1-1-003d5cc28234@yandex.ru>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDAzMyBTYWx0ZWRfXwRDX411wmkfH
 Zvh7fVxj/d92iUNwLS/zQ4asqagCRYTw7e4XXjZZTpFCHUkgt86AOX1FxxVkFsz3j1Az/Vrzdmk
 mQRf9OpsTWOqI3bkJXoq8mZZlTwE6272nSERqJUOSngZ0n5aaTU6bTTbYYw1E3wzcuti338M/L/
 Q8djeUjbFbxb84XoeFFFAJqyKQCQ2qU2hpm5H40/8X2WFxd02BAlV9jJY6tjptj+tJbNwmhoWPj
 DMhLZ73XK9WMWGeLVZ5xWWkqDbW2VKFq42i97wzr7RGUiZRPY7Rg8rSD72c8zpEgj0YcPocFdoU
 v1teZftGh+AgZ8+FOJ4MU4KiPc/VBpPNl7H9E9406JHxCaTz5subTf3wO0fX36lgMm9iqcpXlpP
 wjE37pKi
X-Authority-Analysis: v=2.4 cv=Lco86ifi c=1 sm=1 tr=0 ts=68ac2ee6 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=qC_FGOx9AAAA:8 a=vaJtXVxTAAAA:8 a=pD-U3s6xA6z8GlFm_6oA:9
 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22 a=fsdK_YakeE02zTmptMdW:22
X-Proofpoint-GUID: _zrE-bOZOhYlx11bo6cF82tKaHdGgQgL
X-Proofpoint-ORIG-GUID: _zrE-bOZOhYlx11bo6cF82tKaHdGgQgL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-25_04,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 clxscore=1015 malwarescore=0 spamscore=0
 suspectscore=0 phishscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508230033

On Sun, Aug 24, 2025 at 11:42:23PM +0300, Nickolay Goppen wrote:
> By default pin_offset is calculated by formula:
> LPI_TLMM_REG_OFFSET * pin_id. However not all platforms are using this
> pin_offset formula (e.g. SDM660 LPASS LPI uses a predefined array of
> offsets [1]), so add a callback to the default pin_offset function to
> add an ability for some platforms to use their own quirky pin_offset
> functions and add callbacks to pin_offset_default function for other
> platforms.
> 
> [1] https://git.codelinaro.org/clo/la/kernel/msm-4.4/-/blob/LA.UM.7.2.c27-07400-sdm660.0/drivers/pinctrl/qcom/pinctrl-lpi.c#L107
> 
> Signed-off-by: Nickolay Goppen <setotau@yandex.ru>
> ---
>  drivers/pinctrl/qcom/pinctrl-lpass-lpi.c          | 13 +++++++++++--
>  drivers/pinctrl/qcom/pinctrl-lpass-lpi.h          |  2 ++
>  drivers/pinctrl/qcom/pinctrl-sc7280-lpass-lpi.c   |  1 +
>  drivers/pinctrl/qcom/pinctrl-sc8280xp-lpass-lpi.c |  1 +
>  drivers/pinctrl/qcom/pinctrl-sm4250-lpass-lpi.c   |  1 +
>  drivers/pinctrl/qcom/pinctrl-sm6115-lpass-lpi.c   |  1 +
>  drivers/pinctrl/qcom/pinctrl-sm8250-lpass-lpi.c   |  1 +
>  drivers/pinctrl/qcom/pinctrl-sm8350-lpass-lpi.c   |  1 +
>  drivers/pinctrl/qcom/pinctrl-sm8450-lpass-lpi.c   |  1 +
>  drivers/pinctrl/qcom/pinctrl-sm8550-lpass-lpi.c   |  1 +
>  drivers/pinctrl/qcom/pinctrl-sm8650-lpass-lpi.c   |  1 +
>  11 files changed, 22 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/pinctrl/qcom/pinctrl-lpass-lpi.c b/drivers/pinctrl/qcom/pinctrl-lpass-lpi.c
> index 57fefeb603f0e2502fccd14ba3982ae3cb591978..8ba0ebf12d8113cdc501e9fe97311ec0764fbef5 100644
> --- a/drivers/pinctrl/qcom/pinctrl-lpass-lpi.c
> +++ b/drivers/pinctrl/qcom/pinctrl-lpass-lpi.c
> @@ -38,16 +38,25 @@ struct lpi_pinctrl {
>  	const struct lpi_pinctrl_variant_data *data;
>  };
>  
> +u32 pin_offset_default(int pin_id)

Please use the prefix that matches the rest of the functions in the
file: lpi_pinctlr_.

> +{
> +	return LPI_TLMM_REG_OFFSET * pin_id;
> +}

Missing EXPORT_MODULE_GPL here. However it might be better to convert
this to a macro or static inline in the header and call it directly it
the driver doesn't define the callback.

> +
>  static int lpi_gpio_read(struct lpi_pinctrl *state, unsigned int pin,
>  			 unsigned int addr)
>  {
> -	return ioread32(state->tlmm_base + LPI_TLMM_REG_OFFSET * pin + addr);
> +	const u32 pin_offset = state->data->pin_offset(pin);
> +
> +	return ioread32(state->tlmm_base + pin_offset + addr);
>  }
>  
>  static int lpi_gpio_write(struct lpi_pinctrl *state, unsigned int pin,
>  			  unsigned int addr, unsigned int val)
>  {
> -	iowrite32(val, state->tlmm_base + LPI_TLMM_REG_OFFSET * pin + addr);
> +	const u32 pin_offset = state->data->pin_offset(pin);
> +
> +	iowrite32(val, state->tlmm_base + pin_offset + addr);
>  
>  	return 0;
>  }
> diff --git a/drivers/pinctrl/qcom/pinctrl-lpass-lpi.h b/drivers/pinctrl/qcom/pinctrl-lpass-lpi.h
> index a9b2f65c1ebe0f8fb5d7814f8ef8b723c617c85b..3a2969ac85410e9fb796ec792d1349822257b3a0 100644
> --- a/drivers/pinctrl/qcom/pinctrl-lpass-lpi.h
> +++ b/drivers/pinctrl/qcom/pinctrl-lpass-lpi.h
> @@ -85,9 +85,11 @@ struct lpi_pinctrl_variant_data {
>  	const struct lpi_function *functions;
>  	int nfunctions;
>  	unsigned int flags;
> +	u32 (*pin_offset)(int pin_id);
>  };
>  
>  int lpi_pinctrl_probe(struct platform_device *pdev);
>  void lpi_pinctrl_remove(struct platform_device *pdev);
> +u32 pin_offset_default(int pin_id);
>  
>  #endif /*__PINCTRL_LPASS_LPI_H__*/
> diff --git a/drivers/pinctrl/qcom/pinctrl-sc7280-lpass-lpi.c b/drivers/pinctrl/qcom/pinctrl-sc7280-lpass-lpi.c
> index 1161f0a91a002aaa9b1ba2f9ca13e94b2f145ec8..ed0c57fb1ed4770cce4afe7b1f3ec51aa3d44cf3 100644
> --- a/drivers/pinctrl/qcom/pinctrl-sc7280-lpass-lpi.c
> +++ b/drivers/pinctrl/qcom/pinctrl-sc7280-lpass-lpi.c
> @@ -125,6 +125,7 @@ static const struct lpi_pinctrl_variant_data sc7280_lpi_data = {
>  	.ngroups = ARRAY_SIZE(sc7280_groups),
>  	.functions = sc7280_functions,
>  	.nfunctions = ARRAY_SIZE(sc7280_functions),
> +	.pin_offset = pin_offset_default,
>  };
>  
>  static const struct of_device_id lpi_pinctrl_of_match[] = {
> diff --git a/drivers/pinctrl/qcom/pinctrl-sc8280xp-lpass-lpi.c b/drivers/pinctrl/qcom/pinctrl-sc8280xp-lpass-lpi.c
> index 0e839b6aaaf4bd88f078cf36091faa9c2c885518..40834242a7699352c63ad2ddc82ca3663a39275f 100644
> --- a/drivers/pinctrl/qcom/pinctrl-sc8280xp-lpass-lpi.c
> +++ b/drivers/pinctrl/qcom/pinctrl-sc8280xp-lpass-lpi.c
> @@ -162,6 +162,7 @@ static const struct lpi_pinctrl_variant_data sc8280xp_lpi_data = {
>  	.ngroups = ARRAY_SIZE(sc8280xp_groups),
>  	.functions = sc8280xp_functions,
>  	.nfunctions = ARRAY_SIZE(sc8280xp_functions),
> +	.pin_offset = pin_offset_default,
>  };
>  
>  static const struct of_device_id lpi_pinctrl_of_match[] = {
> diff --git a/drivers/pinctrl/qcom/pinctrl-sm4250-lpass-lpi.c b/drivers/pinctrl/qcom/pinctrl-sm4250-lpass-lpi.c
> index c0e178be9cfc3ea8578a39d8998033058f40dabf..69074c80744663268fc034019ca5523a18ce7f22 100644
> --- a/drivers/pinctrl/qcom/pinctrl-sm4250-lpass-lpi.c
> +++ b/drivers/pinctrl/qcom/pinctrl-sm4250-lpass-lpi.c
> @@ -213,6 +213,7 @@ static const struct lpi_pinctrl_variant_data sm4250_lpi_data = {
>  	.ngroups = ARRAY_SIZE(sm4250_groups),
>  	.functions = sm4250_functions,
>  	.nfunctions = ARRAY_SIZE(sm4250_functions),
> +	.pin_offset = pin_offset_default,
>  };
>  
>  static const struct of_device_id lpi_pinctrl_of_match[] = {
> diff --git a/drivers/pinctrl/qcom/pinctrl-sm6115-lpass-lpi.c b/drivers/pinctrl/qcom/pinctrl-sm6115-lpass-lpi.c
> index b7d9186861a2ffa9f3c00a660bde00858fff9462..651e52f4c886821ebb8207af3783da87758f1a30 100644
> --- a/drivers/pinctrl/qcom/pinctrl-sm6115-lpass-lpi.c
> +++ b/drivers/pinctrl/qcom/pinctrl-sm6115-lpass-lpi.c
> @@ -133,6 +133,7 @@ static const struct lpi_pinctrl_variant_data sm6115_lpi_data = {
>  	.ngroups = ARRAY_SIZE(sm6115_groups),
>  	.functions = sm6115_functions,
>  	.nfunctions = ARRAY_SIZE(sm6115_functions),
> +	.pin_offset = pin_offset_default,
>  };
>  
>  static const struct of_device_id lpi_pinctrl_of_match[] = {
> diff --git a/drivers/pinctrl/qcom/pinctrl-sm8250-lpass-lpi.c b/drivers/pinctrl/qcom/pinctrl-sm8250-lpass-lpi.c
> index 64494a86490e2f5d3e00184622f68097bbcdfff0..a693df05c4fdb40750f449a58817e2371e564dea 100644
> --- a/drivers/pinctrl/qcom/pinctrl-sm8250-lpass-lpi.c
> +++ b/drivers/pinctrl/qcom/pinctrl-sm8250-lpass-lpi.c
> @@ -123,6 +123,7 @@ static const struct lpi_pinctrl_variant_data sm8250_lpi_data = {
>  	.ngroups = ARRAY_SIZE(sm8250_groups),
>  	.functions = sm8250_functions,
>  	.nfunctions = ARRAY_SIZE(sm8250_functions),
> +	.pin_offset = pin_offset_default,
>  };
>  
>  static const struct of_device_id lpi_pinctrl_of_match[] = {
> diff --git a/drivers/pinctrl/qcom/pinctrl-sm8350-lpass-lpi.c b/drivers/pinctrl/qcom/pinctrl-sm8350-lpass-lpi.c
> index 7b146b4acfdf42e7dd69f1f022c0041b3e45b174..15d453482d68b8b9ae2d572f7538e05f83425a12 100644
> --- a/drivers/pinctrl/qcom/pinctrl-sm8350-lpass-lpi.c
> +++ b/drivers/pinctrl/qcom/pinctrl-sm8350-lpass-lpi.c
> @@ -125,6 +125,7 @@ static const struct lpi_pinctrl_variant_data sm8350_lpi_data = {
>  	.ngroups = ARRAY_SIZE(sm8350_groups),
>  	.functions = sm8350_functions,
>  	.nfunctions = ARRAY_SIZE(sm8350_functions),
> +	.pin_offset = pin_offset_default,
>  };
>  
>  static const struct of_device_id lpi_pinctrl_of_match[] = {
> diff --git a/drivers/pinctrl/qcom/pinctrl-sm8450-lpass-lpi.c b/drivers/pinctrl/qcom/pinctrl-sm8450-lpass-lpi.c
> index 439f6541622e924a2a77db7a8b15ccb709e7a53d..629a110963d610fe7b9667ea1abab66338711bf1 100644
> --- a/drivers/pinctrl/qcom/pinctrl-sm8450-lpass-lpi.c
> +++ b/drivers/pinctrl/qcom/pinctrl-sm8450-lpass-lpi.c
> @@ -191,6 +191,7 @@ static const struct lpi_pinctrl_variant_data sm8450_lpi_data = {
>  	.ngroups = ARRAY_SIZE(sm8450_groups),
>  	.functions = sm8450_functions,
>  	.nfunctions = ARRAY_SIZE(sm8450_functions),
> +	.pin_offset = pin_offset_default,
>  };
>  
>  static const struct of_device_id lpi_pinctrl_of_match[] = {
> diff --git a/drivers/pinctrl/qcom/pinctrl-sm8550-lpass-lpi.c b/drivers/pinctrl/qcom/pinctrl-sm8550-lpass-lpi.c
> index 73065919c8c2654670b07372bd2dd5839baf2979..1ebc93a61e965f8c0d29348586905cb0e38ae074 100644
> --- a/drivers/pinctrl/qcom/pinctrl-sm8550-lpass-lpi.c
> +++ b/drivers/pinctrl/qcom/pinctrl-sm8550-lpass-lpi.c
> @@ -199,6 +199,7 @@ static const struct lpi_pinctrl_variant_data sm8550_lpi_data = {
>  	.ngroups = ARRAY_SIZE(sm8550_groups),
>  	.functions = sm8550_functions,
>  	.nfunctions = ARRAY_SIZE(sm8550_functions),
> +	.pin_offset = pin_offset_default,
>  };
>  
>  static const struct of_device_id lpi_pinctrl_of_match[] = {
> diff --git a/drivers/pinctrl/qcom/pinctrl-sm8650-lpass-lpi.c b/drivers/pinctrl/qcom/pinctrl-sm8650-lpass-lpi.c
> index f9fcedf5a65d7115e605c54229ba0096b9081636..a6dfeef0f6fa0860f44808a4bb8e5db57d10d116 100644
> --- a/drivers/pinctrl/qcom/pinctrl-sm8650-lpass-lpi.c
> +++ b/drivers/pinctrl/qcom/pinctrl-sm8650-lpass-lpi.c
> @@ -206,6 +206,7 @@ static const struct lpi_pinctrl_variant_data sm8650_lpi_data = {
>  	.functions = sm8650_functions,
>  	.nfunctions = ARRAY_SIZE(sm8650_functions),
>  	.flags = LPI_FLAG_SLEW_RATE_SAME_REG,
> +	.pin_offset = pin_offset_default,
>  };
>  
>  static const struct of_device_id lpi_pinctrl_of_match[] = {
> 
> -- 
> 2.51.0
> 

-- 
With best wishes
Dmitry


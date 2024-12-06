Return-Path: <devicetree+bounces-127977-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E1CEE9E6DFA
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 13:21:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D1E771883737
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 12:20:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC3921D63DF;
	Fri,  6 Dec 2024 12:20:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eoHDjxEa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C5F1FCD02
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 12:20:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733487626; cv=none; b=i+Tx2WaSTaqK/zSxgyK2+9ApeQeXDyxoJ5aRpPU66kNOylwZO5J7cHISlDL0DKwmUXe0Ls539FuPaZBaqg2myg+UZAF9zieFbi9IXWEQBqLP6ayobzlpgFYtfYjL8qlBIvFXNo6g/E2TbvAd0n7eNaAyEiYY4Os5G9iRZUO2Mnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733487626; c=relaxed/simple;
	bh=1lDabRe7v8hzNNeM2BJUg19w6htUe29NSOeCwC/ydLM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NMAtfx8arOvMW2Fnd7zwdEJy1eQpR7lz+y4+tdZyPJ5AOMyZRamKQvBlJvxFZPrumfojPwvbS08ZV+bVqNWcIR6LOlEqaKdrHPdedsncSSyCiRQKf1agUj6PH6dczRTgkZFBuBRyc40l2Bg5WUq2ly52MeZsrQyGRrj6KWE3ClU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eoHDjxEa; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B68vic7018271
	for <devicetree@vger.kernel.org>; Fri, 6 Dec 2024 12:20:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9E3Q5V18pzVm0efIN2Z36r5MoCfL8CYX45xyLjaUZPo=; b=eoHDjxEay15UJjR6
	IwX7o44jEaiQbMhdt5dcw6lLE6+/89AUfsd8ka4uEkuIOkjIOe3BTWVxheOVCCSs
	yIZJc05bJ+Rm7FhKHG3sbiS90CAvrv2TNAlBs/LIuSdffIGx91XFAMZqxEQT5Uz0
	3QegG+MjAZyHHGXX9ys6M5CC+dZU3ct4BabykCfgej9n3b/5b+hIhOuZ0hY/qI/L
	X+p+7rVKrp/HkgTV123zb6rbunTRrn3l6yVbQHXXmTsc4DU9zEwkKf3S0aVO4fKB
	f1ZwqxV+oUPj+ECEsMsY/SLIt87EBwbInIVFu5ZZLJjof9+H78mdzzU4fTq2MRQ1
	v0tulA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43bjk8t9b8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 12:20:23 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-466cbd99b11so4800231cf.1
        for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 04:20:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733487623; x=1734092423;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9E3Q5V18pzVm0efIN2Z36r5MoCfL8CYX45xyLjaUZPo=;
        b=sfD92Qle3AdA1pbAj5/GHGOoz+rk3sYlr5Mg4g1CNeofOAapq2SqziNyUKlO5IYxwA
         +QkQV3yzq4ZUsd/IsLGGC1ImsNwCb9KwZw+iwS5pCzS+eI4Wcufc+bKv1ylwrm59oHE4
         pwU5IeZJstptt9F+Dvt39c7R5gzuQp2D5fyjgrkzuXsvS44l8HkEVSBJOu0sOdt5/j1r
         UkFmpo1rZMWZjBHFXQoIbXl5rLbSeobwRDCNhPeqUYqySxWkHYha/ybjgrJv+jHqV52T
         eq/QV8aQe0PLd7pdX3PB9iUB20+U9/AlQENaFjvbOv8f4aNIGSyCoDyM11ky5ge6iIXz
         69OA==
X-Forwarded-Encrypted: i=1; AJvYcCXt/je8ZeuJ420lnXV5giCMsjDUrBFI8yBAmcOBwLtTZ6S3ReoMBSr8AhpwdjnO13HHmVciyAkUoEna@vger.kernel.org
X-Gm-Message-State: AOJu0YxSq2LF+AOKzkWJN3cVkNXKQKUeJP44fIDjdzSurFhKRyS14IlW
	j++oDMVkpJ/dFnso/+foRw5WJfpZarTi9dZF6t/xyO88MeOP6IK/ThhSrBTRFOdLIYM8i/dzLPI
	QYvuxwqJSP+Jt2cMbIPaMYXfrfpCnJTisz2YkbfW+abm3eiElOb9JaSGs5fOQ
X-Gm-Gg: ASbGncvTRlXCoZEm+SPcceISazmcHKThBohlOAGF+FR7cgCmuGzKdfYheTCYjjSi47W
	/eC1glJfZXpWxa60xhrD1+aBpvRJiUkyw4QUHyG0AKEZTsBz50ujA2KmPzR54oM+3k73x+vPC+K
	62WupcFw3GkvWsEU2WbM4u8urIcbnq7z8zI1FZoBqGZ8tJM/qBbbx25SX6KGmvtkcK6bvZS70Nc
	iuD9NPHcOUUqZTMkNtZ5Typ7aMUkuMAS/0XqFSGK+nhMODbimrHqW84MiwwNSyeLw5Tyx7KZR2E
	BFlHbcceR3Rin3EdKG6j0Wp6Aq2//44=
X-Received: by 2002:a05:622a:606:b0:464:9faf:664b with SMTP id d75a77b69052e-46734c8f531mr18002441cf.2.1733487622914;
        Fri, 06 Dec 2024 04:20:22 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFaYjuLbGBmcbEVFGiae/eyDl8MSbUHvTvfg7816ggOQFX2Cej3+/3TS1KDf5HZCvflpH7buQ==
X-Received: by 2002:a05:622a:606:b0:464:9faf:664b with SMTP id d75a77b69052e-46734c8f531mr18002011cf.2.1733487622527;
        Fri, 06 Dec 2024 04:20:22 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d149a25924sm2113819a12.17.2024.12.06.04.20.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Dec 2024 04:20:22 -0800 (PST)
Message-ID: <d83ebaa2-1da8-4f85-9034-670e525b457b@oss.qualcomm.com>
Date: Fri, 6 Dec 2024 13:20:18 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 44/45] arm64: dts: qcom: add mst support for pixel stream
 clk for DP0
To: Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Clark
 <robdclark@gmail.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Stephen Boyd <swboyd@chromium.org>,
        Chandan Uddaraju <chandanu@codeaurora.org>,
        Guenter Roeck <groeck@chromium.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Vara Reddy <quic_varar@quicinc.com>, Rob Clark <robdclark@chromium.org>,
        Tanmay Shah <tanmay@codeaurora.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Jessica Zhang <quic_jesszhan@quicinc.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Yongxing Mou <quic_yongmou@quicinc.com>
References: <20241205-dp_mst-v1-0-f8618d42a99a@quicinc.com>
 <20241205-dp_mst-v1-44-f8618d42a99a@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241205-dp_mst-v1-44-f8618d42a99a@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: w0AzyLTDiQLFWG7bP5er06fXGWpYzrfH
X-Proofpoint-GUID: w0AzyLTDiQLFWG7bP5er06fXGWpYzrfH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 impostorscore=0 bulkscore=0 phishscore=0 suspectscore=0 spamscore=0
 lowpriorityscore=0 adultscore=0 mlxscore=0 mlxlogscore=853
 priorityscore=1501 clxscore=1015 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2411120000 definitions=main-2412060092

On 6.12.2024 5:32 AM, Abhinav Kumar wrote:
> From: Yongxing Mou <quic_yongmou@quicinc.com>
> 
> Populate the pixel clock for stream 1 for DP0 for sa8775p DP controller.
> 
> Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
> Signed-off-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> index 0dbaa17e5e3f06c61b2aa777e45b73a48e50e66b..0150ce27b98e9894fa9ee6cccd020528d716f543 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> @@ -3944,16 +3944,20 @@ mdss0_dp0: displayport-controller@af54000 {
>  					 <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_AUX_CLK>,
>  					 <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_LINK_CLK>,
>  					 <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_LINK_INTF_CLK>,
> -					 <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_PIXEL0_CLK>;
> +					 <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_PIXEL0_CLK>,
> +					 <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_PIXEL1_CLK>;

dispcc also defines PIXEL2/3 clocks.

>  				clock-names = "core_iface",
>  					      "core_aux",
>  					      "ctrl_link",
>  					      "ctrl_link_iface",
> -					      "stream_pixel";
> +					      "stream_pixel",
> +					      "stream_1_pixel";
>  				assigned-clocks = <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_LINK_CLK_SRC>,
> -						  <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_PIXEL0_CLK_SRC>;
> -				assigned-clock-parents = <&mdss0_dp0_phy 0>, <&mdss0_dp0_phy 1>;
> +						  <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_PIXEL0_CLK_SRC>,
> +						  <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_PIXEL1_CLK_SRC>;
> +				assigned-clock-parents = <&mdss0_dp0_phy 0>, <&mdss0_dp0_phy 1>, <&mdss0_dp0_phy 1>;

Please turn this into a vertical list

Konrad


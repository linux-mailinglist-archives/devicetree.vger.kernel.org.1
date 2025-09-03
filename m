Return-Path: <devicetree+bounces-212237-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 85EFAB4222C
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 15:42:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 4B3324E4FA5
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 13:42:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C96930BB94;
	Wed,  3 Sep 2025 13:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JLYIyPT4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D334D30148D
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 13:41:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756906914; cv=none; b=EJZYrgptUvwDvNdNi5Ee3ZHAv94gWnEfDmJY/uzRvfCgusx2bZKznyA7LGup4T8235nYnwx3f3e3LDQTpJl4zvf0f3EWVlpo0EsA7YE0bZsJAi2vROF+CehJWTCE40QwYCbNB0XHXJopeUH7KpnN12i9ZGliiDh/NQtVfsJpoPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756906914; c=relaxed/simple;
	bh=NFp8TcPhS5de2EGnbzYmg4peWf8FnC+LhNlv906c6JU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oYKiA5xdgwVaUDWZRSM8aqBPXJqZ8CF760QI1058lMjHObCATgqfgKJRHmq22tZQ7+Lx3Fl9UTOZ5CChXfl7tIDF0UB7JtyvSpxvcu9s1Hm2rlgvTEPHlguu+Ll2GkO06kGMTheKa6r1hio8YJHAAcPyHGO+2TfoDSihan9wODE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JLYIyPT4; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 583BEwEi022414
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 13:41:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1fYfnbja81zbttAC6psme4l73O+c9YkR4VUUb+N1Yzo=; b=JLYIyPT4p0HbU8Sr
	qiWeTOx9Ai4HHR440PdYhdI7ki4MiUXrPY+cf1jdKRlSnNsKT/3lkadOP2krWbSp
	Ne0xpBANyzwKwuvz4ZBDh/6c6BIPBNFIwxT7oK1F3U6u4pBSnc5dQFTYivMKbqI7
	BidKi0qcx7XDFvNH149Sax2Oral+KBDLt8HBBQvozW98X3H1yx+ChZMw9Xctr41o
	QvRqKlGrEF0Dlb9Z652RcoLqa0Bl+0H6V9ZCdn7L5ia9I88M/fF9y1O8OMsaUKgU
	uBttRTbEvWoHQ5cxZHsCoApc/6FmC6O7ZYiF7NZ1S65+jSxwdhwQ8CzGAik5erWK
	+XVPqg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ut2fkrbq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 13:41:51 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b32dfb5c6fso15879901cf.1
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 06:41:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756906910; x=1757511710;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1fYfnbja81zbttAC6psme4l73O+c9YkR4VUUb+N1Yzo=;
        b=h4vC8QDdYkWLyJs3j0jyfvPgJTAhCjs0iYjGTjsSBzAVxfsJyGNZdalruEf/NOmmdQ
         bnwUkXT3BgZg1fOgYBYHmTY9jhTVJPv39PfWD4Sl9O+j1OJLZ0oioR2oNeABuMPlIu3r
         zaSrDJOf0AYQvmwyn9melCCi1zbNRDYNl/+fqoZz6UvacUkBpYgAA3D6rX28pCXLEjct
         UcNd3Gu93k2pW4ync/WT0IBXE/XExrMLe1TTuBP9DeDGVzTo8EGJudoo9E3/HTH0kcZC
         BSaTYY+1kQarWH1/B65cD20pJt45JVZSDJWdjHpoL/UXMH/S4DerSsEZexFGwR23mQ4A
         P+0w==
X-Forwarded-Encrypted: i=1; AJvYcCXlCh9Iv+goK/Tpg0scBzfw0DCS5yFZJu1T9g8PxgMmWKcgrEOKh5ykiHyHqgVzz/kBvasv319iwChE@vger.kernel.org
X-Gm-Message-State: AOJu0YwrCbU1GImeHi3mCG8eESzXr9dxy6wdni6DC5w3gIRCbFmMliv9
	58Mp8aej4bUKO8gjKT7PCrZhxbfMoZjIvVnCAwFSm6z3Gtk20SaI9Eab6rEJZhtTzc5dTm6bhBd
	u6v/+x0QgKX9/wi0mywMTa+ZSrfVBxoVh+1aKNejUBV4R2L32n6OBV3TA/OcR5m6D
X-Gm-Gg: ASbGncvzZ2xwj+ckOd1+FNGpv/S5VM3OxKVrqTAXjrqDU4M1dBSyxL44f0bZ5hVOH7Q
	lijDWcDUFhhFSjbRcvpRv0aPBcVEJZvw9MJjZ92d4P++F4WSrML3PvZSlHt4AEySRXj2/G2v6uh
	WiWC0PTcExXr49KjNdzG1wu7u0tyiHV3epilgAWlai8AVuonx1oCHvEIj8K9dHuky30sutWo3Wd
	oibR0dHNzIxvonlKtTehDB+GGFcTQR7eWj0lw4eRhYkuGiJuV0k78z0RouG10NXlIRbqAeuv0RC
	R35YLUnkP/HjI1aq+z9zHWVuD5d8VLf2nC1feyMqRBaXaOZ2WFCx9F0t14JQLF4ajygC6uPJvaY
	xJRI1DH1RQFAJumG+lIuFOw==
X-Received: by 2002:ac8:5d12:0:b0:4b2:d0eb:1e7 with SMTP id d75a77b69052e-4b313f90e37mr141154921cf.11.1756906910361;
        Wed, 03 Sep 2025 06:41:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFJPdTWyFNZv0wrE6s7lYHY+t1NrlyBkHlYgUSBucbQO6LODUUme+aa57ScVuOXFRfZKPEXFg==
X-Received: by 2002:ac8:5d12:0:b0:4b2:d0eb:1e7 with SMTP id d75a77b69052e-4b313f90e37mr141154451cf.11.1756906909528;
        Wed, 03 Sep 2025 06:41:49 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b04110b94cbsm968406466b.93.2025.09.03.06.41.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Sep 2025 06:41:48 -0700 (PDT)
Message-ID: <964a58d4-ddb6-4c98-9283-1769c0f11204@oss.qualcomm.com>
Date: Wed, 3 Sep 2025 15:41:45 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 9/9] arm64: dts: qcom: Add MST pixel streams for
 displayport
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Abel Vesa <abel.vesa@linaro.org>, Mahadevan <quic_mahap@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20250903-dp_mst_bindings-v8-0-7526f0311eaa@oss.qualcomm.com>
 <20250903-dp_mst_bindings-v8-9-7526f0311eaa@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250903-dp_mst_bindings-v8-9-7526f0311eaa@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAzOCBTYWx0ZWRfXwz/rfd8PemMA
 2oU1SrrrsM6DEbndXash7t7ySQd1ut/Hn+CW1hRlXrnuFdJban+/z7aSBZqU79Kly++PvYRYz2P
 qJe05O8bAcENv97WXBTHEgHwJ1mHrMfuyX8GwwfkQbOUSwKJA3MnmM3OzHIlVgM/5FsXWNj4B1b
 STx1pEwtaO+AlEAK+7vj+Ngb8L96mxF41pXJeAy7c4C6RnCtU92qF4G7qnJuh3zrVWIUI0YCP7/
 Gy8nWIkdIWs3FTDHKNneANf3dUvoGsHPrAkQRjTISC6Ciy1fKVsrB4bF0BDxk/v+dNeMhSmy/52
 2yB4QaemijNOHWfc22YUrvYHxFTmmHxCEK1EPARR1S34keX31axxVYyvO4Q9TQI6slcfyRjPl0X
 GBNTRJ1/
X-Proofpoint-ORIG-GUID: z2nzB7_zox2ZCx8YDAjK6E0SsyC4tTYb
X-Proofpoint-GUID: z2nzB7_zox2ZCx8YDAjK6E0SsyC4tTYb
X-Authority-Analysis: v=2.4 cv=U7iSDfru c=1 sm=1 tr=0 ts=68b8459f cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=OhcfVZcqRUJJiLbfGB8A:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_07,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 clxscore=1015 impostorscore=0 suspectscore=0
 malwarescore=0 priorityscore=1501 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300038

On 9/3/25 1:58 PM, Dmitry Baryshkov wrote:
> From: Jessica Zhang <jessica.zhang@oss.qualcomm.com>
> 
> Update Qualcomm DT files in order to declare extra stream pixel clocks
> and extra register resources used on these platforms to support
> DisplayPort MST.
> 
> The driver will continue to work with the old DTS files as even after
> adding MST support the driver will have to support old DTS files which
> didn't have MST clocks.
> 
> Signed-off-by: Jessica Zhang <jessica.zhang@oss.qualcomm.com>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

[...]

> diff --git a/arch/arm64/boot/dts/qcom/sc8180x.dtsi b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
> index 70c87c79e1325f4ab4c81f34e99c0b52be4b3810..e6a7248040095077d6f98d632f4e8a1868432445 100644
> --- a/arch/arm64/boot/dts/qcom/sc8180x.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
> @@ -3241,16 +3241,20 @@ mdss_dp0: displayport-controller@ae90000 {
>  					 <&dispcc DISP_CC_MDSS_DP_AUX_CLK>,
>  					 <&dispcc DISP_CC_MDSS_DP_LINK_CLK>,
>  					 <&dispcc DISP_CC_MDSS_DP_LINK_INTF_CLK>,
> -					 <&dispcc DISP_CC_MDSS_DP_PIXEL_CLK>;
> +					 <&dispcc DISP_CC_MDSS_DP_PIXEL_CLK>,
> +					 <&dispcc DISP_CC_MDSS_DP_PIXEL1_CLK>;
>  				clock-names = "core_iface",
>  					      "core_aux",
>  					      "ctrl_link",
>  					      "ctrl_link_iface",
> -					      "stream_pixel";
> +					      "stream_pixel",
> +					      "stream_1_pixel";
>  
>  				assigned-clocks = <&dispcc DISP_CC_MDSS_DP_LINK_CLK_SRC>,
> -						  <&dispcc DISP_CC_MDSS_DP_PIXEL_CLK_SRC>;
> +						  <&dispcc DISP_CC_MDSS_DP_PIXEL_CLK_SRC>,
> +						  <&dispcc DISP_CC_MDSS_DP_PIXEL1_CLK_SRC>;
>  				assigned-clock-parents = <&usb_prim_qmpphy QMP_USB43DP_DP_LINK_CLK>,
> +							 <&usb_prim_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>,
>  							 <&usb_prim_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
>  
>  				phys = <&usb_prim_qmpphy QMP_USB43DP_DP_PHY>;
> @@ -3319,16 +3323,20 @@ mdss_dp1: displayport-controller@ae98000 {
>  					 <&dispcc DISP_CC_MDSS_DP_AUX1_CLK>,
>  					 <&dispcc DISP_CC_MDSS_DP_LINK1_CLK>,
>  					 <&dispcc DISP_CC_MDSS_DP_LINK1_INTF_CLK>,
> -					 <&dispcc DISP_CC_MDSS_DP_PIXEL2_CLK>;
> +					 <&dispcc DISP_CC_MDSS_DP_PIXEL2_CLK>,
> +					 <&dispcc DISP_CC_MDSS_DP_PIXEL1_CLK>;
>  				clock-names = "core_iface",
>  					      "core_aux",
>  					      "ctrl_link",
>  					      "ctrl_link_iface",
> -					      "stream_pixel";
> +					      "stream_pixel",
> +					      "stream_1_pixel";
>  
>  				assigned-clocks = <&dispcc DISP_CC_MDSS_DP_LINK1_CLK_SRC>,
> -						  <&dispcc DISP_CC_MDSS_DP_PIXEL2_CLK_SRC>;
> +						  <&dispcc DISP_CC_MDSS_DP_PIXEL2_CLK_SRC>,
> +						  <&dispcc DISP_CC_MDSS_DP_PIXEL1_CLK_SRC>;
>  				assigned-clock-parents = <&usb_sec_qmpphy QMP_USB43DP_DP_LINK_CLK>,
> +							 <&usb_sec_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>,
>  							 <&usb_sec_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;

Something's not right here

Konrad


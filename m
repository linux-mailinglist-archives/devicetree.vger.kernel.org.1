Return-Path: <devicetree+bounces-158548-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C6EA0A6737E
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 13:08:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 944DE7A32FC
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 12:07:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20B4B20A5D8;
	Tue, 18 Mar 2025 12:08:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fxSqCLRp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2EC823AD
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 12:08:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742299693; cv=none; b=EDWK41Ua3PGbi+GF/VFvTscDL9IokldMoTx8PyFtXUphoS5aMr9HZTTI7VBzKlgz3fLyjPd/sPx8FxG8kYxDS4Yw0WgA7hjsPAVHEUFoetn4lk0T25F14/8eBCuDwirVUASgpOyj4ZtFARENEWfpLgNNaKG+Kylmywpzeh+3kgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742299693; c=relaxed/simple;
	bh=XRcHCzhzMNqSF5Ho9cie/Bd/nqOUwp+fvuDzi/1lCAU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NP/GeP9zJzOV3DJieUVYqTW1Cw/ujEhE9WyoGPtT9d8v4FK+RybvbiNAKtnjsp4U3q5IH4tnNCov5dPjutd24lNokxXbGjMJCrAFD/T8hC775m80SKf/ns85P+zY9yYHzuDz9rFVyIWpP8mX0kOgRq3R1OTD63pzI1u6oTAfpQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fxSqCLRp; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52I8mILo004751
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 12:08:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FNIuGRzN7oMTa5VQLxij8hespiQpfRUjmkdfhRPhLQ0=; b=fxSqCLRpX+E1GTEf
	niV4b1OQbrqLRqw2esrIpK/iltMMGOhRAIEMoIEYGtJFn4eO+fdZBOdSoeHmAk5H
	p9JWEOHTO34c+R1fsVlpeeHi5CHI/GeN4Dkb/iqZZHxGj9Pq9fCzYpT9WNT4rmMk
	x4YL0G3ri/p+lmfrrcCD894PXmhtZkglThpU6RY46o9LtSFcI2/v6/AMZEB3ZUW5
	gl18Gr7AZvTak/USTHeaPjYuywzvgj4qsQIRGGY5Il81rnOiBABy9dIh3ZaIL+lM
	yy5x652nENIvaiB1wUpBl0F3XFh9Ps8Xl3pTG7LuCLKdrCI5GOBn35nqyWke8Ih2
	jD2Q6w==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45etmbt90k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 12:08:06 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4766654b0c3so9235801cf.0
        for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 05:08:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742299686; x=1742904486;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FNIuGRzN7oMTa5VQLxij8hespiQpfRUjmkdfhRPhLQ0=;
        b=vSQiSjOgmQPs4TwRliVZgjN/mYA8pOtqZJiPMf/GcH2gLQ70GAY8oz2UL+q5pH/XVU
         93toZsVC+wMRPkkJd/aHcBNyeE4znpGqypO3pwS1ZPQnqFxiDjsKA+RUgcacvtLK79IN
         QHOFyN/PMJqSVtY5aeV+nmOFBw29eTi14XPSReyiWUZtwVTNrGygAimCvgtAqvAa1K/I
         hpk3Ih5QBlGoE4LtWJ1Sq9R492kq2uhpcw9UtfmH+jvsZ7St6ueIreeZT8C73N9QIWHp
         vwzhe5cZn91UijpzMvE5T/epcNrMoStYgqXE0o/c/ruP2PHsyYXxziI4gbStRj49syQ7
         hlfw==
X-Forwarded-Encrypted: i=1; AJvYcCWZtK+Cxf00paUYyKlqQLmdk5kkB5Bo3bLDuH4fKTUbc+0DwQ58vPrwZXaMhaqqh/nO7Ykf0AvAg23W@vger.kernel.org
X-Gm-Message-State: AOJu0YxkEjkq0tUxnR0N45Z2S+1HApe+R8gEwTS4vIThart9emQk5Y22
	hJ4imoGlxvh9XB1cgC7P8dgbTPGuFyzFEYBAfVt6J06fM1l8Pxd3A4fYjcz2wvwD0JiNhwy5jDR
	WS8xomqMyQM1jxAaP7fGYqdHZt9PJ9ALTKnEeHmMRLYUOpPHR4sdHUqX9Yq6i
X-Gm-Gg: ASbGncuTfQDWn0p6yXKke8519k+Bo3EfMsFUps92O0H3A7sw09I/oWWKuw7gOULP3Ic
	vErhs2hxCkxclFNQQcW2dVBIF8WUkAXHL8snp+cBdXZl3oA0cA+i5UPD0TfRbCiIMSU50tUJADC
	AOzw84T41NwW5s5l+z1TOCU1ZN3pZNMl0E4p3Z26C48FIHaW6b8o3peFZA+5BjYKL1w0BBX7LbC
	Ni1G1eCj9ROOPQdVvTbo/QhZhjQn72db0cF42WzxyxVLPFtmjcNv749WYuaCrpHYr42sjaw68RH
	D8qgttnBYScu/RbPXIgqTy1AakeIV4WLjNys8dzZjgiJEc2/euzUpEWGwcs1tuo6R10rMA==
X-Received: by 2002:a05:622a:84:b0:474:f6db:967 with SMTP id d75a77b69052e-476c8143273mr91228311cf.8.1742299685600;
        Tue, 18 Mar 2025 05:08:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGsdWgRQeoFvvEZ9ml0+bILr2xQFZy9kdEiblsMarwSKcKomqtK3Q4ssrshicw1usxo192TDQ==
X-Received: by 2002:a05:622a:84:b0:474:f6db:967 with SMTP id d75a77b69052e-476c8143273mr91227901cf.8.1742299685124;
        Tue, 18 Mar 2025 05:08:05 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e816ad27ccsm7850681a12.62.2025.03.18.05.08.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Mar 2025 05:08:04 -0700 (PDT)
Message-ID: <579cd909-8a0f-4998-88a6-47073ecc0eae@oss.qualcomm.com>
Date: Tue, 18 Mar 2025 13:08:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/9] ARM: dts: qcom: apq8064 merge hw splinlock into
 corresponding syscon device
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach
 <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Leo Yan <leo.yan@linux.dev>, Kumar Gala <galak@codeaurora.org>,
        Andy Gross <agross@codeaurora.org>,
        "Ivan T. Ivanov" <ivan.ivanov@linaro.org>,
        Andy Gross
 <andy.gross@linaro.org>, Georgi Djakov <djakov@kernel.org>,
        David Heidelberg <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org
References: <20250317-fix-nexus-4-v1-0-655c52e2ad97@oss.qualcomm.com>
 <20250317-fix-nexus-4-v1-6-655c52e2ad97@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250317-fix-nexus-4-v1-6-655c52e2ad97@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: nXMYVYdkAMiYP27hC5CBWFA2WukDBHrp
X-Proofpoint-GUID: nXMYVYdkAMiYP27hC5CBWFA2WukDBHrp
X-Authority-Analysis: v=2.4 cv=aMLwqa9m c=1 sm=1 tr=0 ts=67d96226 cx=c_pps a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=N6CB5E4InGOdx4Ah7JoA:9 a=QEXdDO2ut3YA:10
 a=IFyWz7IVXAM99tgoijJH:22 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-18_05,2025-03-17_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 priorityscore=1501 spamscore=0 clxscore=1015 phishscore=0 mlxscore=0
 suspectscore=0 malwarescore=0 mlxlogscore=663 bulkscore=0 adultscore=0
 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503180090

On 3/17/25 6:44 PM, Dmitry Baryshkov wrote:
> Follow up the expected way of describing the SFPB hwspinlock and merge
> hwspinlock node into corresponding syscon node, fixing several dt-schema
> warnings.
> 
> Fixes: 24a9baf933dc ("ARM: dts: qcom: apq8064: Add hwmutex and SMEM nodes")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
>  arch/arm/boot/dts/qcom/qcom-apq8064.dtsi | 11 +++--------
>  1 file changed, 3 insertions(+), 8 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
> index ba99e794dcd2236f65f2f3d8c49213cfdaee5f6e..3728875a5506397b36a4c0d6a5ad12c067bbdd8c 100644
> --- a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
> +++ b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
> @@ -213,12 +213,6 @@ sleep_clk: sleep_clk {
>  		};
>  	};
>  
> -	sfpb_mutex: hwmutex {
> -		compatible = "qcom,sfpb-mutex";
> -		syscon = <&sfpb_wrapper_mutex 0x604 0x4>;
> -		#hwlock-cells = <1>;
> -	};
> -
>  	smem {
>  		compatible = "qcom,smem";
>  		memory-region = <&smem_region>;
> @@ -305,9 +299,10 @@ tlmm_pinmux: pinctrl@800000 {
>  			pinctrl-0 = <&ps_hold_default_state>;
>  		};
>  
> -		sfpb_wrapper_mutex: syscon@1200000 {
> -			compatible = "syscon";
> +		sfpb_mutex: hwmutex@1200000 {
> +			compatible = "qcom,sfpb-mutex";
>  			reg = <0x01200000 0x8000>;

The mutex is at +0x600

Konrad


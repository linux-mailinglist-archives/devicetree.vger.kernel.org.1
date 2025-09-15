Return-Path: <devicetree+bounces-217464-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 23366B57DB7
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 15:45:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7614116B4B7
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 13:43:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCFCC31E10D;
	Mon, 15 Sep 2025 13:42:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hMi6KRQw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB6731A549
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 13:42:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757943765; cv=none; b=No4K7a3ixmiUtg5Bw8/zLKzL628Qlc9XRV9LoPBidhbC8gYBnHkVpTzItlWZN4wXEUg9WOWTNfLlJQVmcVEi6lB0AK4HC2ufxhfx3Avh5K03D4PKYl5jXyprTYmsD9My54H9gnPtefhd41h1mERhg6Ek0sHtaIDs1trtb19HHfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757943765; c=relaxed/simple;
	bh=nY+B3iWxUdqO+53Ff8OTtL2gOC9tys4ywe9XnxPl3pM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=C2ZxKM9hgZkTxQrzPwICCLAGy2RLAXNv7hPLJKuMhFXXPAoo89U/RdK8kW4TkjybKHL6MH7bX+JgZX+cQdXEeLQe/7WcelXujJs2FRs/WWfGs4FSWH4OHPvNpXwTm10UyzcCcc4tkhlGj/8RGQj2QwyeKHcy+0WyB531iR46p+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hMi6KRQw; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58FAQ298016444
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 13:42:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	umjNBqAvrgVn/Uf+D/vu8WD+62B9lRTpRfb+uTwmRE0=; b=hMi6KRQwrE4cX7fA
	71Halunw8s+xG8Cj1s4Uci+WTEijX2/p9drAYaRP2Meg+MLw2ZtumbXtU+FPx/gs
	9gHbO/3WOsY74AVoEj8WEibVOlPgO9/FKYlGhLh/NXbx68D48+3pKv4MQPyZBG4X
	xQYesM6Lvm7uw4EfYOxj/IwwQg3tGyakQnRSwCkuO0s1X2GGHA0/DMeoWDONSK81
	w0C+cgcqcpIz1ttk7DLGjGPOvvOwWLEzwOnGL20UYhB9x5M8u5GaC18k3wP8mcpH
	rJvMPxDz59Al/THOuaT4IYqPECJS1yk/bLxhX1ZDzEdECPC2Yz2GG9P1cnDXZDpH
	inXQ6w==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 496h1sgke2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 13:42:42 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-70a9f5a43b6so9689916d6.2
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 06:42:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757943762; x=1758548562;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=umjNBqAvrgVn/Uf+D/vu8WD+62B9lRTpRfb+uTwmRE0=;
        b=NlN6J/lEoeUxdNj4WfI3JkPOthd37O+zxK9JCaoOb+WwXIs33RWJqnBuGNkC7J6/Cu
         Q6x4bP3G83hf/e4RijgcxC3/ZKaL4Cfn6aG8oyVL+rah7VBLf0p9rowvy42/DTjvOhkF
         WW/0dt8bMdMeRiKXD9GLFEGoC10VAGkZJYa/t+QJg3Sxxpsn6rBS4xtSuNAOyJqgXHC+
         C/VbjWzUQOajsCGvrN9v3Qsxb6l2HJc5VbwtYzKNUaSSKftEDd59qx5z+YpfCrweulWE
         4uDuVDRmnthASnZi0bVS+0vNBGq9t9UyzgFHPWvCqwsUiuH+CQSp7uOJZjncfemLwsKg
         9nzQ==
X-Forwarded-Encrypted: i=1; AJvYcCW8mMEOoEsS0Hx2T0z9hq4AR2RMrxbEHBmjF2pq/X5Ht9NCS3iN+o4h5tCpVtRL4aqdndBr8jgujHLc@vger.kernel.org
X-Gm-Message-State: AOJu0YzRKQ159mE9xRlDqtuPvwHKbq6EVMfESNs1nlikS8MKDiQZq65N
	w0buHZ3CtAaRga4dal7sKftEKq2P/puMIXlYHXCulzuTE4jxQvVghNfxIQR2bkQULivARqvSyJ6
	9s/YVak2hVPbGq8B93E+hOXs7WhMFHiONtaiDOTD+pokxeHEX4LKSNG97upwgpp3g
X-Gm-Gg: ASbGncuH7ETvUGc5cfrsztxkIAqvYNTVCKpqBhyqAKAB5/6vHqznuLjMt1ZP/d0rjuR
	IjV3ucjuCfSSdHLNWjaxoy8fV6mvY0N9s/k1ZQ4pww5e7eSlaPx6y51FZ0+uziso3D/4zt5cYLi
	dgGTwzPodgZ/fQx9HTCth0GQvI78hTFnUJlnsL1fI8FA2zfjQBYNesgNXZvwKWySfOfqzFLz5bb
	c53c7VNKXhfjRmSo8YGqbvmUCoWFZsE7HPP4uqkm0clwmieoDXSvGzX5mc7j48P/RPcIMbwBo2U
	ZanAYe7hsKomIPVgrEw0lXiwfCzgcSFc4j9822lTHsJSJJgEx/Dxi5fljkETfK1Si0RTHEZZJOt
	OxofeQi1nUzsKKzJqnovOoA==
X-Received: by 2002:ac8:5d50:0:b0:4b3:4d20:2f9 with SMTP id d75a77b69052e-4b77d06eb82mr107913111cf.4.1757943761887;
        Mon, 15 Sep 2025 06:42:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHMieom0duFgTQwQgXDdaD7dzvvL/ronB0yG2Mh0a+jgIpaG3E2ChM9WS6en3jM6N1/9TNSew==
X-Received: by 2002:ac8:5d50:0:b0:4b3:4d20:2f9 with SMTP id d75a77b69052e-4b77d06eb82mr107912781cf.4.1757943761171;
        Mon, 15 Sep 2025 06:42:41 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07b32ddf93sm940209866b.69.2025.09.15.06.42.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Sep 2025 06:42:40 -0700 (PDT)
Message-ID: <59f77780-b81e-4d09-b949-a62bf029e7c4@oss.qualcomm.com>
Date: Mon, 15 Sep 2025 15:42:37 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] arm64: dts: qcom: msm8916: Add missing MDSS reset
To: Stephan Gerhold <stephan.gerhold@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Vincent Knecht <vincent.knecht@mailoo.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Rob Herring
 <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250915-msm8916-resets-v1-0-a5c705df0c45@linaro.org>
 <20250915-msm8916-resets-v1-1-a5c705df0c45@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250915-msm8916-resets-v1-1-a5c705df0c45@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: GSIEjjd92WPpJSy12JHIoF2VCTU4vcNp
X-Authority-Analysis: v=2.4 cv=A/1sP7WG c=1 sm=1 tr=0 ts=68c817d2 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=DXmGxE4PG6Zmd65NNY8A:9 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: GSIEjjd92WPpJSy12JHIoF2VCTU4vcNp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE1MDA5OCBTYWx0ZWRfX0BVmNie65TdL
 SiGKq2k/2nydW/JEh6HYXJEiyP34GRFi9wAuipIvu/L8SlJaMqaJcxVN/7e6bVDjoGkT5khR2Pi
 ulyJ08L5qASOh7SBAvIHltFTrQcpjFaxrY++azQ+4Cu+o/pDahJAB4DqnYXv+n1lSKz6bPEG/A3
 K9FgX2nIfAlcLdoYI8rdRZ7VUlH4zBLLtmCAxQaEigHP72LzgGyz4mGlOduF5jHMr87Rc1Vpt2h
 T1zWyIBRGkN5GBNIiM89YP8K8j8sk/7ZeO33QQwDcK92BNxSuhwwnBuvrIqwx9qwjLmDCv9FmTW
 U3dOugC+FyyP2QK9n3/EarZRhvahDw3YJh5gL7Ky3tQQQtdQIqNSlmYg7ncqcF5id2cXU/L9uck
 b3rwDncn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-15_05,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 spamscore=0 suspectscore=0 bulkscore=0
 impostorscore=0 clxscore=1015 adultscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509150098

On 9/15/25 3:28 PM, Stephan Gerhold wrote:
> On most MSM8916 devices (aside from the DragonBoard 410c), the bootloader
> already initializes the display to show the boot splash screen. In this
> situation, MDSS is already configured and left running when starting Linux.
> To avoid side effects from the bootloader configuration, the MDSS reset can
> be specified in the device tree to start again with a clean hardware state.

This is really just Linux behavior and not necessarily the effect
of specifying the reset in the DT, but w/e
> 
> The reset for MDSS is currently missing in msm8916.dtsi, which causes
> errors when the MDSS driver tries to re-initialize the registers:
> 
>  dsi_err_worker: status=6
>  dsi_err_worker: status=6
>  dsi_err_worker: status=6
>  ...
> 
> It turns out that we have always indirectly worked around this by building
> the MDSS driver as a module. Before v6.17, the power domain was temporarily
> turned off until the module was loaded, long enough to clear the register
> contents. In v6.17, power domains are not turned off during boot until
> sync_state() happens, so this is no longer working. Even before v6.17 this
> resulted in broken behavior, but notably only when the MDSS driver was
> built-in instead of a module.
> 
> Cc: stable@vger.kernel.org
> Fixes: 305410ffd1b2 ("arm64: dts: msm8916: Add display support")
> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


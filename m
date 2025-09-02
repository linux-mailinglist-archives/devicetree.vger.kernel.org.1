Return-Path: <devicetree+bounces-211657-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 04CB1B3FF2F
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 14:08:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 187B74E78BC
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 12:04:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DE213009F0;
	Tue,  2 Sep 2025 11:57:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aFxpIqZY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCB712FC875
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 11:57:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756814279; cv=none; b=bm4DNDwTshY1rpCImE8x027njQCnBdXBqNsUm15YuAspXAUz8PDyQ6v9Iks2sINM2e3cBk15SwmdW2Y1O2XNs+Q64zbalgAjpBpBFZXehn7HbKaZ+LvCyvlNNqOfbQbj5hMOK/C1wmqp5CW0He1btuDxDWAyTPjJ4W+coPMIK0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756814279; c=relaxed/simple;
	bh=TzemwMGClTnkqT7pUTCqqSTRsqocfb+tRl/whEuV/pc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=d1b/kZhWRA2e23n4Ptv7t7/RwXBLxUX1yPZHhuJVeCXb8R5772ZEMVKxY3FpIecFyXGdj05vd+lN5tctjYil3Ku53nfKSw+5dF701vMJZ1TD+XmgQHoSLK77Snu/G02TBgc2S0DNoo81fm8aHvOmroDa7V4Lj12836vchYCT2xc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aFxpIqZY; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 582AbsXO024987
	for <devicetree@vger.kernel.org>; Tue, 2 Sep 2025 11:57:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MazPpVuDeJMNCKtDs4XLR9LyNM/u+un8EIv85mq9gjA=; b=aFxpIqZYns8dw0mY
	Bg0vH/Cvn2DW9068Uye4ozH+kmt/vDQYsux3Ao7TlcanvC6hiVVkHeUma97RH1z4
	qJSapKjmZCVUr7HHi29eVqj9olAZC7oG9CsDqkfegL5yO1XWzyobTyUnFSKNkJeg
	gfP1TaxVTCw9E4rvdqrpWY61ug4HoI/HA6y4QKgX8euSWL3uJiNGybny3CCfz2Cq
	2rUVAF1/POrCCoJfifnO3IKv92NMzQVUbkJIXU7g4wZ3X/K7QqtANEYALS/zfQ+w
	tr8sHZ2dh+E/F3OsVvlV0TlQD3z9eKyz8Kyz32h4Ke0ONFyIurf5bqO8NIUYCaoT
	fo6KOA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48uscuypyh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 11:57:56 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b3037bd983so28914901cf.1
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 04:57:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756814276; x=1757419076;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MazPpVuDeJMNCKtDs4XLR9LyNM/u+un8EIv85mq9gjA=;
        b=WymmYr2KioosyHh2kqbTiDOF8jVt0dYWhZ0koz7f4+AeVnYmKpujQD2beeRtmdO69d
         vSn5ykRe7lZS6Z98sEvTnAAMuywXFWxnPliXEzEtk1HY83rTFGr/faZOcYGjW0h+Fu7E
         wNadXjNQoStHV8hUPAeyb2GLGSA242Bjj/0oRMDmGbZeVojplgWtJRnSI3F6ND/0L/HH
         CwG/xe9AcN+yBjTs0US26U4zVpU5VIPIuAKP3IDB1Qzcv3ePEPB4UkHP+CG7ObApZyjU
         knu4s8SRLDwi2YUjZGjoh8G1rjd1hrPCLBuId5ZsRIFZQ1AskFTa5iWGgz3y8hWZatv9
         bATg==
X-Forwarded-Encrypted: i=1; AJvYcCUnmQtZUCaxP2yZNiWn/nyeewCTxF9sN2qgD2vva9UKKJhfpZ2KbvAYpu2sAY1aVVAtvJZ2RP2TqUvw@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4PE6xm0ArXvgk+Th637esGwWoGKUP9GIsUkMEdbh+j+D1renp
	JC1qY73zMf4H+5+bqEG4AotVE/x0/1ZDzMXyFBwXQYtLvH3FKMOWGgLm7OySGdlkspZKLEzzURf
	qwopnNdl2Pbw+viFe/L/iDZIQADd3eKylVxOBzVGBwjjjMPeH2SSkZ6zw74o1CT3G
X-Gm-Gg: ASbGncsDqa8mQn4C957mIpVk+jynNI/mPmJDGIqJtj0PiuwWATLeRCuBWQTq5GK+Jgz
	82BT8FVNt8b4212ouKrobq8zCvd1Zs9wpemPdsjbR7Pt3KZE5j4pW4ZCFqrjdC+Nf7yc0XWixyj
	B0KdZoaeprT5duGgt/zT2skBjcApWUy1jSDrocMK8kb2QS4/5kAk+DtK2FZfdBROSQhdCl2pK6Q
	u/YeWBjsosBWpMWvdQfpVjP3gPTkqybLx0ehfWz77Q6MsAja5Xa/XbRUntTD7hls7gx/eN31w4X
	LKIeyvdbBOybSUuvKEzGB/4pxTlYlnh+Ib5U7+ICrl3uDvFIj40uly2eSZkRXoz3ESJqDTWn5Da
	0MAtVdAYfxWIzk+OlbgB9sQ==
X-Received: by 2002:a05:622a:612:b0:4ab:80f9:f992 with SMTP id d75a77b69052e-4b313f9850bmr102404751cf.12.1756814275860;
        Tue, 02 Sep 2025 04:57:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFLJ+ddzSRzqFRRND4j25pKq0rRljPojUEf5sN7VqVHHPTlbG/zvZUEWarcEaPDNy+4ghfnrQ==
X-Received: by 2002:a05:622a:612:b0:4ab:80f9:f992 with SMTP id d75a77b69052e-4b313f9850bmr102404371cf.12.1756814275344;
        Tue, 02 Sep 2025 04:57:55 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b02d8812161sm813251266b.73.2025.09.02.04.57.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Sep 2025 04:57:54 -0700 (PDT)
Message-ID: <484eccde-bcab-42f8-bf6f-b370fc777626@oss.qualcomm.com>
Date: Tue, 2 Sep 2025 13:57:52 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] clk: qcom: branch: Extend invert logic for branch2
 mem clocks
To: Taniya Das <taniya.das@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20250829-sm8750-videocc-v2-v2-0-4517a5300e41@oss.qualcomm.com>
 <20250829-sm8750-videocc-v2-v2-1-4517a5300e41@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250829-sm8750-videocc-v2-v2-1-4517a5300e41@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAzMSBTYWx0ZWRfX4nWd838eZ0D6
 iMXuzTsXElykysApPTo+ASryCXlp4GtIBtw8tpXl1S8JPEc5qQkAsPnKc9lHIA0eapCY3HkFCGI
 25IvYODOUtLvMwqrrxc1uudsx4tYjiy46sOgGnJoLA2UlIa2kS4+zK72jm06zITBWc1CXbzvVcL
 6a6D5hiyAbW1QK8X3f7gyEDM9JhFrgziJBEIFummY0c8pdwnHdqv6tq/mRCbM8GWQvV4KaXgpqn
 PdqvxfcKd8Gw0MNqoSb+pffaNgK0Wi+L2hEoKjvh8+akBMiYrjxDoAhG3HE8yvEMU1yuBJLk0oK
 4l0Op3GR1pwUMDn0Bmopd5zTZDg0JqeDUOcTdE29eSLLG3pQKCn7Zp+h+/LKPuRgpzzPmSoLWZ6
 YO1QHnME
X-Authority-Analysis: v=2.4 cv=A8xsP7WG c=1 sm=1 tr=0 ts=68b6dbc4 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=Uv4cyzw5Fqc3vRoc6LAA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: PyLO3p4EBBMeHBDNCBtNRIViKUTnuyuv
X-Proofpoint-GUID: PyLO3p4EBBMeHBDNCBtNRIViKUTnuyuv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-02_04,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 impostorscore=0 bulkscore=0 clxscore=1015
 suspectscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300031

On 8/29/25 12:15 PM, Taniya Das wrote:
> Some clock branches require inverted logic for memory gating, where
> disabling the memory involves setting a bit and enabling it involves
> clearing the same bit. This behavior differs from the standard approach
> memory branch clocks ops where enabling typically sets the bit.
> 
> Introducing the mem_enable_invert to allow conditional handling of
> these sequences of the inverted control logic for memory operations
> required on those memory clock branches.
> 
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> ---
>  drivers/clk/qcom/clk-branch.c | 14 +++++++++++---
>  drivers/clk/qcom/clk-branch.h |  4 ++++
>  2 files changed, 15 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/clk/qcom/clk-branch.c b/drivers/clk/qcom/clk-branch.c
> index 0f10090d4ae681babbdbbb1b6c68ffe77af7a784..90da1c94b4736f65c87aec92303d511c4aa9a173 100644
> --- a/drivers/clk/qcom/clk-branch.c
> +++ b/drivers/clk/qcom/clk-branch.c
> @@ -142,8 +142,12 @@ static int clk_branch2_mem_enable(struct clk_hw *hw)
>  	u32 val;
>  	int ret;
>  
> -	regmap_update_bits(branch.clkr.regmap, mem_br->mem_enable_reg,
> -			   mem_br->mem_enable_ack_mask, mem_br->mem_enable_ack_mask);
> +	if (mem_br->mem_enable_invert)
> +		regmap_update_bits(branch.clkr.regmap, mem_br->mem_enable_reg,
> +				  mem_br->mem_enable_mask, 0);
> +	else
> +		regmap_update_bits(branch.clkr.regmap, mem_br->mem_enable_reg,
> +				  mem_br->mem_enable_ack_mask, mem_br->mem_enable_ack_mask);

regmap_assign_bits() is your friend

Konrad


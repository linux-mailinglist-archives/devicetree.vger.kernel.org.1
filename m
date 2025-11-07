Return-Path: <devicetree+bounces-236000-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C6CC3F0DC
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 10:01:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7F9A83AF882
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 09:01:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AA333164D7;
	Fri,  7 Nov 2025 09:01:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="I8q9+gFl";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gzQcOfd+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AD1129E0F8
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 09:01:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762506110; cv=none; b=tufjOSjmiQs7OURcETQ+KqvAT+vnmsZT5xLeS0ZfyzJhEv5I6D+zyNtXmtoF9KkvPAgWbMNisVRGS+eNv/qxHglq8Pxa844SfTjWWiu6qtCWhCFBKPaHEhQgDJzKG37oZVtqA/16WmAh4qiMNx1xU6oCKQrcA0OLl5gI6Tiqf2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762506110; c=relaxed/simple;
	bh=/aQfrcM2kQKCDTxDcauYRDs0xtHEaIg9neX4Pe6sBlU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=REytSU9ezpYys+23PGp1MICAUDGzCd2NRBlHxp7hcZPLRSf4IiIqnzz4Hc4rmQBelcUf9viP7o0JcGkSVGkaw20rF4Gf7kcmg0cTcmUwETKC/e1VD7fo0ek5/EulROqY16CIibh/iq4HAAv9p0RzbOHWrFfJ9CAKUOGElLdBmrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=I8q9+gFl; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gzQcOfd+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A75OZ9G566907
	for <devicetree@vger.kernel.org>; Fri, 7 Nov 2025 09:01:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7Xwdlres7UKZJumX+U/fUtnUAYm89N+blgEZuA7qA+U=; b=I8q9+gFlQqTjsN8F
	KhoD6sB3C3NlEz+F7BhoABfsklg1CZH2Ih0raJ8k5PnWjUq6B5sux54Ow67qkL61
	g0TtnetH8cxQjfldn+drdhMRKmZMDAIHWse9W+2793zrOLb6TTTOUTO4fRAZScnu
	Gtx82Ed2i1XtACO1P62nQ1fj64zrFNTEHLWoAIp5nmGmnEoacdSgUL5dmEbFEV1d
	guk+My7kHsJq2uxOSBv5nrxaGBgrTnCk6Q3X09/70+b3bsJpOYzP5chx8A3KBGTZ
	65FgVZ3KbdbL/MzBx/Vy8p0iJrT1ZsDgcUTx8j/Yyy5dinvabtkhizkL/hht7dj9
	8N1C0A==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a905qjbm7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 09:01:48 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-883618130f5so22883385a.1
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 01:01:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762506107; x=1763110907; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7Xwdlres7UKZJumX+U/fUtnUAYm89N+blgEZuA7qA+U=;
        b=gzQcOfd+zYDtLNs/ad/dSPw0hwAfHWF/PYtPwqkgDG/8LbTBkU3w0FVd8+cjWdtEbV
         HHneRQLqh2xmrWs8Mmq6E3z1Q2AFA4b4cAMhAyrAa+L1DcDtutwh8qeDxCMYfZ8+4vA3
         0GuA8FkdBZUaTIHFfUgHiA1VcEll2ujGmIwurH2j4YqBa9INOfEvXeuzJVNsDBSe5Wq8
         Cub5NaTNn9X399RhWgvRQVhkc80aHVnYOmSDPNANi2muGMEql0K2XVrlf4PBM9CSni9K
         stoac6Wzd6VLuTaXb57n+lSo3fUp08gK0elfA2a+4l8U2iNu1PKivrGQMU0Xt3FbcWaR
         D3Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762506107; x=1763110907;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7Xwdlres7UKZJumX+U/fUtnUAYm89N+blgEZuA7qA+U=;
        b=qaA3rdRqgBD2lFjTtyuuMdBU2udWaetGgPFdC5Td5YF3yVsM46Efma/A5P9UWjS3dm
         LGlzu+rbo2hSox9DMxSVSQ7ctjpaA1s9T4OsGKGJ/HdJ7/fRJeWgRlxDbQZnz9KAcR61
         VHq5des41zIrw7XRLTdnpxF/mcyxVxmR9ZWWAydhaI4Py9clVbyj2K6KL8BUScZB2ngw
         4z+d9+Eie1FOTtnXQMNurrdY7Fhh9OTynBpDEJ5854QL3ylDWXTP0mGgOR/l9+slnSVU
         tuNLw3sUOdQ7hZZtmx/P0kjYUUfR8QNuvHfOo+jj2XmwJABjHntlfFRtBil64Pck7QUF
         rq5Q==
X-Forwarded-Encrypted: i=1; AJvYcCW/7+kRepHQ70i8hS0mKVBaQKWQeVKUHafv0ode3WFaRNCKyJXe5bti+GbHC6uGxKwVYTM9upIFMHet@vger.kernel.org
X-Gm-Message-State: AOJu0YzMaVeX8QrWo6Jd0eK0PXDGN+yeqNnwM5f9xFHCAOcumUN//6dh
	Iiiwn3GJpe1WeFd1/fc6f3gr5cyKyuKHkW44jPr+Ho7Y9yRrRH8b0Qu/f+tfqg+48bjaEoOmWU6
	cJgxpiKC/Hq79D5e/cgvzkLe2b+CFfRupb1tFwLy67hMZ0nG/0KKtvcJx3LfKkYwQ
X-Gm-Gg: ASbGncvj5a/ph3v+j7qXfZ1yhspvekDL+atowa/5y0xi+e1eBoLXDJRfc2U8DbwBp/r
	V8MMClagXHIF+B+v/TpX0pkpdBnPJrBzV/owIa+APBpZS1W8WK8GcsH0+0NEaovCu9X7aDEw3lX
	0a2Tli7fGXqipH7NSnldelwgjwFyNDvZGq8oZzvmftxtXAsjXyuzvCoWYaaFCbU4MZGEO3jlMxx
	vz1/SzpRcrBQIVxLJmOmyJwhrjsWGmTomi9sUoNP/ZlMdfcXfObBYABk06P1yKTaHer/O4zOCSE
	Ftu5L2q6rmtHHE5yC0yqwNNUWwbKTmeypiDCP2AtnOj0zGjnd1wAwSX7W1PKzYvVQDzQZOOXeXu
	Wg1Wr8l1DJc+KFfHc+QbREgBQA99h7Sm/savD/Z4GU0Z+gs0/T1wPTWtD
X-Received: by 2002:a05:622a:181c:b0:4e0:b24a:6577 with SMTP id d75a77b69052e-4ed949225d6mr17918091cf.2.1762506107432;
        Fri, 07 Nov 2025 01:01:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFBs2ARbegNGfxVipaDHjwLs6J9evX5dbivnH5xxAvdhKWOJJB0eRECaR784rSXA0QDalhnCg==
X-Received: by 2002:a05:622a:181c:b0:4e0:b24a:6577 with SMTP id d75a77b69052e-4ed949225d6mr17917561cf.2.1762506106773;
        Fri, 07 Nov 2025 01:01:46 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b72bf97d43bsm191672866b.45.2025.11.07.01.01.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Nov 2025 01:01:46 -0800 (PST)
Message-ID: <defc450a-1699-4682-a41e-59035bafccbe@oss.qualcomm.com>
Date: Fri, 7 Nov 2025 10:01:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/6] arm64: dts: qcom: sm6150: Add gpu and rgmu nodes
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Jessica Zhang <jesszhan0024@gmail.com>
Cc: Dan Carpenter <dan.carpenter@linaro.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Jie Zhang <quic_jiezh@quicinc.com>
References: <20251107-qcs615-spin-2-v2-0-a2d7c4fbf6e6@oss.qualcomm.com>
 <20251107-qcs615-spin-2-v2-5-a2d7c4fbf6e6@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251107-qcs615-spin-2-v2-5-a2d7c4fbf6e6@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: uaDN5Gi_AfaNGwdzQ8Qf1tE4hxPgL3Hv
X-Proofpoint-GUID: uaDN5Gi_AfaNGwdzQ8Qf1tE4hxPgL3Hv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA3MDA3MSBTYWx0ZWRfX04KaYLUh4N82
 f7lADzCD5zPNLfli3+NESdLX3wXOHlrCZ9pcX3bRcdvqdrvDo/SrU26PWuQPrMqpf5vxyAG6YsF
 rnCacfaq2t8ZHct41Oe7FfbmbgIWMM/p5czJ8QDO04MVOKeDR0aLuWu7LHtchO6FOq8ydydD/me
 xDSVmvTu5S3Cy5Er4BShpNxEf0XJDjClzKYfWZtP7+mFvWdU8wYe6MgGJZjFEp1fdViKU1RH+Nb
 1byrCOGQSoCTaIYcxXWYWHzuCh8SJFPv+qWDUw3siaj89TQ+4lEQxESNntFipf0oKSL3kCdP/iR
 x7Q7oL4iRee7gLHOXPc0JpV8OHmbHKZar4y+dIGNQQjJ7DIWsd9siXkCgUa0EWl/MA6uzeyW7JR
 k64V2EBy9o9XAswXBNkKt9CfJ0V4QA==
X-Authority-Analysis: v=2.4 cv=D6lK6/Rj c=1 sm=1 tr=0 ts=690db57c cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=mufC2ag2MkhLk2B-SdYA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-07_02,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 suspectscore=0 spamscore=0 bulkscore=0
 phishscore=0 lowpriorityscore=0 impostorscore=0 priorityscore=1501
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511070071

On 11/6/25 9:50 PM, Akhil P Oommen wrote:
> From: Jie Zhang <quic_jiezh@quicinc.com>
> 
> Add gpu and rgmu nodes for qcs615 chipset.
> 
> Signed-off-by: Jie Zhang <quic_jiezh@quicinc.com>
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> ---

[...]

> +		rgmu: rgmu@506a000 {
> +			compatible = "qcom,adreno-rgmu-612.0", "qcom,adreno-rgmu";
> +			reg = <0x0 0x0506a000 0x0 0x34000>;
> +			reg-names = "gmu";
> +
> +			clocks = <&gpucc GPU_CC_CX_GMU_CLK>,
> +				 <&gpucc GPU_CC_CXO_CLK>,
> +				 <&gcc GCC_DDRSS_GPU_AXI_CLK>,
> +				 <&gcc GCC_GPU_MEMNOC_GFX_CLK>,
> +				 <&gpucc GPU_CC_HLOS1_VOTE_GPU_SMMU_CLK>;

Is this last clock really necessary?

Konrad



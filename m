Return-Path: <devicetree+bounces-252844-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E730FD03F07
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 16:41:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 50AD23081820
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 15:28:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 340B443C07D;
	Thu,  8 Jan 2026 13:44:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SSFZslUn";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SrqgV+9+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69C334A65DB
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 13:44:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767879847; cv=none; b=ZA3DkHhgE/Hi3c3WbLonLJAyW54e7EAVmWKrq2b1WcXyrEJy8gqC8Gh3SiTZzEHfqbCcEz6qd/H31QEV+A8h6eWgJpmJqDKxjuFQ5W/vm6+9SKyWiYEb2vHjPtd/YzjIiG/4Vqufbp4iRGbYTLghup4xOyDvdCXqtdUlfCXWvp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767879847; c=relaxed/simple;
	bh=yWe9963GIb8DbenHbM7k95bu0XJcIEtloJm8kZZjbZs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=icq90hhodqoEpngv9n4pQ/meM1nnGI6PKnjM1k2SY06nV5AkursOg2jFFZz30nn8GU3JrplLV3Fti/2WgYriUqHrOz8keHHRTkB/vCfZnnrTlP3ma7X3OJ9lzPILrF51y1w0QsRSNxGbafp6gDcf4HJJhYHGej/jqKd/P1/zIcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SSFZslUn; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SrqgV+9+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6088T6QL2239351
	for <devicetree@vger.kernel.org>; Thu, 8 Jan 2026 13:44:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=9IG5R1B/DNG4pTgEjrKT98zy
	+g5kbLjmMUpTgn0aHJI=; b=SSFZslUn8XqWiuDPXedoq8AO7SJPBQSvcaIZGoEk
	Um5cltnwmCW6xdIRb1SStvjsXCHXVT+nPS7ueec6mBoI25d1rAs8H8Po/BKjZ+cG
	t/6dpHk4Nemwbcr4662Er6kyhe/Gl1ilwhBuB5aG3ocigrvQIGW0NrTb0RkoQUYy
	UeiJo3f0PV+q4RYzc+Tdq3rnSjDJdR/WCXMUAVc4/rItZOYg8tmyUofykR3ICOw1
	ZWFoalngPyGwcKMamMEh2OlO7bQ8asuQmTFIccFu96HrrNt2SRt6Bbe1nd0JI4sF
	V1GAj0HLd/TfRsCUFpFfcs1vrfLl46njOhCU/OSEiMBR1g==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bhqwg465g-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 13:44:02 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b9fa6f808cso925336785a.1
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 05:44:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767879841; x=1768484641; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9IG5R1B/DNG4pTgEjrKT98zy+g5kbLjmMUpTgn0aHJI=;
        b=SrqgV+9+2pRD/TMD54YbDtvAFZxR6kkAIflIEbQUevR+JQZwocCn1lSQIKlyegoLOw
         ND9td7+X3kqHOB4M1IZQ1/LeMdc8AaHWGxJsz3x+srfQ/J/JJug+4mL2n7e0p8jVrYT/
         CNuDQPY7jLodJVOpJAA7L1MgIaXN0gc9GE3EPlyu5Hhe1346e0n5/CWP07pp5+Nir5+x
         rPoqfhgQ+xYoXfTEtVKAcfSMPukyrMIKSmi6z70fVA0BDcVWn0YNL8lv60T4Gs6V85dM
         CSFcDhvymbf8HNacil8wH1ad4dbVa8y5+aVt6cN3onDXM8fQzuRFPzVEc8lnASXqa4zf
         op3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767879841; x=1768484641;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9IG5R1B/DNG4pTgEjrKT98zy+g5kbLjmMUpTgn0aHJI=;
        b=oz/3uA4/i20r+ZfVQ65rNtjeWSwA+FgjOqefqcDyuuKJBz0EbdBKCHyS0OSV06qpkh
         WYMD012FFY4KsvAY+VklC6T0YpBxrtmSfukAuFljLIw/YJJc5WRO0ciHPY5xV3Zcsz++
         pEgPOp6pS4nhLC4kU5GofdAr+XJfxk0ZHFWSPGH9bTe96+9ywhqp+Nl7KxDGPe7DEpIn
         FW7UmzM3SiOKwvXYIgy3HoiJMUN4h4vaUPj+XyahMq+t57IdjzYvKQmMpptsxewoAnFw
         1TUXbrG+YDO5G30CUZRI1+IbJ8h96lJB4VlE/pwMJfTbj7tQB1wbdbxBfvdstskkAuZe
         r0Ww==
X-Forwarded-Encrypted: i=1; AJvYcCXfLUdzA9DIQeMuEpv4y9d5bKMBEI959w8fgrypPD2Eom1osKpxmXmGBDD3LeIE3ERS3pbkh16yc205@vger.kernel.org
X-Gm-Message-State: AOJu0Yxw9TDEXsAvFLmNPdBA/QD79/gH2QXv4JJqFyvU6c73f/Erz9+y
	h3tZjvvA9X7emo/EKMH6KuGW5b9tJzh5EOTIorqKPmDCWFhwgyiJd6a3MR43uJmMwySz0NvrsLk
	SlMovBQc2WFhLM/GwsBiWY/KJyt920v5umw+573DYgBCybXZGdnbdJLzpffkCNqMv
X-Gm-Gg: AY/fxX4Na0Is2FBWARw10ZeZONXFKntfutyRb7r1hU6T/ffQFpXU5vBYKrr9nyj1ikp
	swxwSo1/ZduIx7ZmJEBh0by42HpJHxPQy1+1A9HVgeUCq+MKiIon/zxGIlLkcED6GCvhEaiL/EG
	6HsHv+BppZ6SwP2Z7KZ9zm8K6EiiOaVAzq1FLICnErtVOD4C16UWxcDDBX1yhlc564sJpLm+oIi
	EF+3yYhkQ+cOYTRdoT/4hinzCnT5F8i7jSgWx8x8GMs74ng6Q3eURhJUl03Ul3WnbjT/F0yqlYi
	Dz3BTaYQja1AYynbJgga8EaKi2MyVfczytPlIuKbg6Xm3y/Gz8H2PwZ3pAX1vXeDrG9kIqUlaER
	umnkz7tqkohBTkPcLfVUYyiZHqbQd+kJrgqNj2oojoGXl4pUErPTkPECPE9nEyKXBJJPsmKG6Ez
	mzWUQDAiQso2vnEAlEYkRZNZE=
X-Received: by 2002:a05:620a:1726:b0:8b2:ea2b:923c with SMTP id af79cd13be357-8c3893688f5mr835605085a.14.1767879840671;
        Thu, 08 Jan 2026 05:44:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHw24bHW3oIFsvmb8e4lRriEpl5Nr6dkfNLKdXFFfpxh47NA7FTc8dVRffTR3vOBjsIlWDfRw==
X-Received: by 2002:a05:620a:1726:b0:8b2:ea2b:923c with SMTP id af79cd13be357-8c3893688f5mr835602285a.14.1767879840191;
        Thu, 08 Jan 2026 05:44:00 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b6ac0a769sm1706120e87.21.2026.01.08.05.43.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 05:43:59 -0800 (PST)
Date: Thu, 8 Jan 2026 15:43:57 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: yuanjie yang <yuanjie.yang@oss.qualcomm.com>
Cc: robin.clark@oss.qualcomm.com, lumag@kernel.org, jesszhan0024@gmail.com,
        sean@poorly.run, marijn.suijten@somainline.org, airlied@gmail.com,
        simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        tingwei.zhang@oss.qualcomm.com, aiqun.yu@oss.qualcomm.com,
        yongxing.mou@oss.qualcomm.com
Subject: Re: [PATCH v5 09/12] drm/msm/dpu: Refactor SSPP to compatible DPU
 13.0.0
Message-ID: <b7weoxyja6glxeqal3iz26mglyvknxa45btkcaipgdl7zmeahi@ab5qc7go5xex>
References: <20260108085659.790-1-yuanjie.yang@oss.qualcomm.com>
 <20260108085659.790-10-yuanjie.yang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260108085659.790-10-yuanjie.yang@oss.qualcomm.com>
X-Proofpoint-GUID: 59ObNeUcmg09-0-xd0uukPW2kibWeEC-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA4MDA5NiBTYWx0ZWRfX9ADM5KBiZdkz
 X+3ydOG/4J5uW1cZY/pvjaIJvQl15Ev84ZkKgDacWiX7ANeJmBjk9r7lSq+bsAmYmMOZD9hLd6k
 a9miBgCrx6woDBgh4lYxi59zqzufApzOrYqBWUAsBeQrVrc88ae0wGpBarHD4vwguFM/Wfuh+0p
 AQ1Zo2lReMWQekLIMuybaTaamtbOgu8l5usHOCsaQvz2HX55X8srgTUCvg5ixpArlw8vNGclY0i
 qgBxJWrS0hgvSeYi1zB6c4Fg5FQKOp9gSR879dmIG2acZ1qmwfx7eQH/fl2tLYsEQsOSBy9ZBcm
 NoWvJGX3ZBlFV16rM7hBoJHbxlOryZNKDTnyZwnkuNAkf0bteB+pAuDDyzaD3cGhYwlxyYy1YZI
 4J/U5Kyh2XgYLGA53fqpPj9NfElCklLU6IFt0C+vmiiR23Zv8SKup2fMDABgRwvHIjggp233PBE
 JcJi1b3RV9npjgAH2YQ==
X-Authority-Analysis: v=2.4 cv=Pa7yRyhd c=1 sm=1 tr=0 ts=695fb4a2 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=qJVVUtC8YRK5WH-1NpMA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: 59ObNeUcmg09-0-xd0uukPW2kibWeEC-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-08_02,2026-01-07_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 lowpriorityscore=0 priorityscore=1501 bulkscore=0
 impostorscore=0 spamscore=0 malwarescore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601080096

On Thu, Jan 08, 2026 at 04:56:56PM +0800, yuanjie yang wrote:
> From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> 
> DPU version 13.0.0 introduces structural changes including
> register additions, removals, and relocations.
> 
> Refactor SSPP-related code to be compatible with DPU 13.0.0
> modifications.
> 
> Co-developed-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> ---
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c | 110 ++++++++++++--------
>  drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.h |  52 +++++++++
>  2 files changed, 116 insertions(+), 46 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry


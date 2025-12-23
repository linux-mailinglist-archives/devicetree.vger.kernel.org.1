Return-Path: <devicetree+bounces-249281-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C6ECCDA733
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 21:16:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id AA46B3002FEF
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 20:16:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDEE632D443;
	Tue, 23 Dec 2025 20:16:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NNtS0qw9";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gbaQrhCy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F4E82DD60F
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 20:16:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766520985; cv=none; b=T6dpAilpU2WwHSDI3/TUwAXnaVKYKWoGhNRHPc2fGaLHYhvRX0WS3fjOX7/T41TnfnwYeLb91LmQiNf/fp8svDQPsxIn+PT3TXkwozq0jSjmMx5bPyLjNsXe0X8YTeN9yspVRBwENhRGfMZbyFmdPjG40gEdPSyaMQY9xfv1ilM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766520985; c=relaxed/simple;
	bh=bwvFWy0d/zJxjZnixmg7+ZG1rxxiZjDsn68fhnDRl6k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iv0J/AM52AWKVoKC2xuW7y+CkELvyrW/iGvCdr4eFM+QEyeVk79KjloGJsqHc0kNY8VDwQgdoC4ylpI84w3/FUb0zelUruO7MdcX3nngrLGWT997Lx9Om38IBgOU5qH4EC5rcFNEffn5krlCndbHaqXN/pYolCLyrBpahJyWFWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NNtS0qw9; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gbaQrhCy; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNGof9F2747198
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 20:16:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=9ECGpupRfaLiqIYIdw7qviZp
	4NwEym2EMqQh7VcytA8=; b=NNtS0qw9k6wsMjff7yFf/M7E1nc7YQZiCBgnfIq0
	H9w3nf5XPRyv1l1/5M8yyf2ujQXSC828Iu4OsvpwHkcOXTxijvh7OGFVlPv5R4ZS
	IdgsRvGQjcHEvLWrNVdxbC0KVaLr6n4XTPNjVTJKdH49F2YT6ac+tn7jzdL5Tdt1
	nXfejP+wslBCgCSfPkyhDu5lc59j131xPEnQdwiDjZz4tBi1M3+QclZ+zEUrrmYk
	ktKuZH9zuX8Z7c5T3fahtE75o7989bajAm2HzhJmPfC45WObrQP+m93SvoGJJJ1J
	CY/NlpmZCnAiDnC+f0UyQzWOsVumcZx/mkJwYqT3l44s6A==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7h5cueqh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 20:16:23 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4f4d60d1fbdso63857021cf.3
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 12:16:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766520983; x=1767125783; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9ECGpupRfaLiqIYIdw7qviZp4NwEym2EMqQh7VcytA8=;
        b=gbaQrhCy6GV5YrqTQ/x+CXejfJaCM3ZsuB5U0YT+A4Hd4R4cF5n1JVZ5TV16GmfP43
         qVOjt+tSkmjWjB/pGVYjciM3lCGiHOH4kxyZLTy7TcE8n2iXsS8lGPKONPHa6cvm0T1Q
         llnvE61OLPX60Lz1T5141tGt0w24tuFfh99bMNqxAV4J6TJoFk2nYlmc+bLl5ia1/Mgc
         JtrmIicLqB2pA8RCJlf8ZL1AIGsS4qG9WwkEIIaIJTW47/YlpU3VMn/8gdC1HnKKHV4K
         oHmR5MFeP6tZm9G5oJTMDyMHva/zD2VWzaDpBVRO1qhraSXcMYkAblADjTcoJeavp1nf
         Bu0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766520983; x=1767125783;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9ECGpupRfaLiqIYIdw7qviZp4NwEym2EMqQh7VcytA8=;
        b=eKW3uhYZs+t8Xa3d1iP4M81BnyRIu4Vo4Eg1qhdv1hlSTG6dB+F98B46rHFYEXU82R
         bFrS+7LpN6/uf7/M15GywKWNkB8I2PDCy9t7vi5FNkJBciUXSILKEAcxm2EJb0btZtJd
         L+oV10Hifze1JNQGc+J0QXpDU6wcQryaraF9lQedHm4YASI1X4SpY9gG/Li27lP9jCAD
         XbP8n5k2ITsMS425gXZW3zZucwoTuWCdHGH5qz+c8NyQkS4DhvX9HexdnuYm/F2lNuDk
         kNzoTxTb3g5S+IH5XxYnqxtOVDW7Fr5GXTLOBWnP9J2v9KLj/icvgw/ovw/rhL4mHHGY
         scBw==
X-Forwarded-Encrypted: i=1; AJvYcCXUQnNkP/YfxUOXqG+bfpfCqKpc5pXo5I06K4J2m8w6ITmIBjR11Ne1MNqDgvPyirqMVyepHrnjWex+@vger.kernel.org
X-Gm-Message-State: AOJu0YweYwttHnXpJyoWWq+jXVcQOpT7m0wt30CcPvKaOniuY0HP+1xA
	ProfJy3d11dPEmxOQfZk6GfwbdWkurncRg33nQmAE10+TtHZ1Ykh5eTsoLUPmbNxoIUAtoykmBT
	bP+iz/OkQ0xUeg06YHOPQEjJbHjo08qzLmm9K4T9hEH+3FuJgFGxvDhE5IGMj5juR
X-Gm-Gg: AY/fxX6C3dyiJr7BOmUOXK9RmNNayQ3Ug5n9V5bjPUgh13eRRDDMcngOOvGmQyj95PV
	PpTSQGHNq701lNVpfB4HaXRAawg16bqaN9WgN+CqE+XiVFc11QJHO4BKJms8P4kj+J6UCfAdcZH
	AH8tkAungMCc7RLwXDkMU1srPrAOw24z0ZSErIZ+lnN0BfOWoZ1+aWUXmJhOuOsl1MAgKjSMbV8
	Lbwh8vJP1qyZwvOAsXqJxnEzVdHYXExgUY3CvvBLqRHY0dfereT4XygeAz9f9VzImw39Cxhjjfh
	/kLGbNVHBtZMB77TN6osx5JpLvdM3P8thndQUHmKFjIWYBUqKd7f755fD2CcI2RfMWGFE0ToVwi
	SprhfjBGX+2W8ZqxlBu7jNXd7Q+3BKHYRDe6t9Sx51z6S7XIhSgFbAVQN0aqyR67H6lEhXfOyN2
	Bfp5T4jGzN8y7/LLRFIyL+nJg=
X-Received: by 2002:a05:622a:750b:b0:4f4:d29a:40e7 with SMTP id d75a77b69052e-4f4d29a4257mr72537801cf.74.1766520982618;
        Tue, 23 Dec 2025 12:16:22 -0800 (PST)
X-Google-Smtp-Source: AGHT+IECdFvKD+ipW92Bxiw1izJumGMy02FzKvHafNctwOeaTbO9ebvYzBzKblpzJ81MiNQlAN1lpQ==
X-Received: by 2002:a05:622a:750b:b0:4f4:d29a:40e7 with SMTP id d75a77b69052e-4f4d29a4257mr72537581cf.74.1766520982243;
        Tue, 23 Dec 2025 12:16:22 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a185ea2d8sm4308298e87.45.2025.12.23.12.16.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 12:16:21 -0800 (PST)
Date: Tue, 23 Dec 2025 22:16:19 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: remoteproc: qcom,sm8550-pas: Drop SM8750
 ADSP from if-branch
Message-ID: <3pnmjqtxiq7vcgoimgfywuxohujlyhw5zci3vx7wbsswqunawc@2qjpsdrjw3mo>
References: <20251223130533.58468-2-krzysztof.kozlowski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251223130533.58468-2-krzysztof.kozlowski@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDE2OSBTYWx0ZWRfX6jbzBBQwcIoA
 GDytoawCQ/l97uedmWSOI2Ad/xQL2YdKoKQ0fi1pII/YQMbj5hlRZxtMr4+SrRjSQLwJITsDW29
 Xgg73Gze2535AGEVEUGmn+yikDupEmfaeybY3QiMEEI2bU9VeJX4NwK4OHnbDAW9wlfAheuyqYN
 jyOcY6lc3eh94JuYB2oih243wapUF2V6hhn301/NfuIUhT7R3RMMzTdqLnurUFla8TQ9NF3fz3X
 YVMP/1ul+hWoFIUdLuSQltys9UIYt9nDRWVlj8xw/cyGQ7Q4kHLMOxnRRjDgXvmYlIXpDT5j1mh
 +5UUhO63bU/MGd/LeahJfEp/bOotjloqVxWlov+VmEjykhtqf0Z9HYIewoWNin4bNK5IZxQgO00
 GsPW1zbMss2s414tfXfsURC27jslJX/gEEJoqqP+qkWi3bUuT2IaGoNKxKyigoNo3cOjyWXT5Nz
 mayFsOAyhf4bbQ4MI5A==
X-Proofpoint-ORIG-GUID: jYl7X743oR4gP1dl-srZNwDSZ_RGNBmS
X-Authority-Analysis: v=2.4 cv=LeUxKzfi c=1 sm=1 tr=0 ts=694af897 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=_foDIjl0ucieEotE9C8A:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: jYl7X743oR4gP1dl-srZNwDSZ_RGNBmS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_04,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 phishscore=0 priorityscore=1501 lowpriorityscore=0
 clxscore=1015 impostorscore=0 adultscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512230169

On Tue, Dec 23, 2025 at 02:05:34PM +0100, Krzysztof Kozlowski wrote:
> The binding for SM8750 ADSP PAS uses SM8550 ADSP as fallback, thus
> "if:then:" block with "contains:" and the fallback does not need to
> mention qcom,sm8750-adsp-pas.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---
>  .../devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml          | 1 -
>  1 file changed, 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry


Return-Path: <devicetree+bounces-228515-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E8772BEE8C1
	for <lists+devicetree@lfdr.de>; Sun, 19 Oct 2025 17:37:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9DC734001F0
	for <lists+devicetree@lfdr.de>; Sun, 19 Oct 2025 15:37:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AC5E2EB857;
	Sun, 19 Oct 2025 15:37:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JcntXBQu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4677522128B
	for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 15:37:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760888231; cv=none; b=V+xzlRKQnUS2J9c8V7Nq5HsIGDotrcU5+YIP9hptqv6+JcruFjIOs8KvByy039R8RcjKCP6onwerRJww53TBD/y6WD8VRK1fEqwnmgqKizSekL/rBepGdA1KcMWhOno6AyD61Dg71Anu4GVXMqk9/JxWjaw5DImAv/MSWJrUNEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760888231; c=relaxed/simple;
	bh=hEg0Yf5DlxazGnnjSpW/iDt6B0Pv1nMwGAFG4Zj4n4k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HtmtEbrplXUmcMtb8HCw9EHaE76DE6YMXZIeZ5/Y5+R2k9JphNJNTcpRjJOPeZ6RdlObpGcNPimIsJnu79H3Uz7mbZigIuuE2a4p7JNgOdnXP2vgqkIL6G63IBLD9bs5V8sFggKLfu+mxr4+F0fP3f5DDM4uKJdWgEfArrGK+tM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JcntXBQu; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59JFTQ0D004312
	for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 15:37:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=RL1Dojucgmcs5IbhdQTmfeBq
	uHEdKHvcZ4h5XAH9v8U=; b=JcntXBQuK98J117bXuEzc0MMlkGUc+okL818sRX+
	vh4EwV6K30es2tqhm1w7GEpBxPstcAfnqsfZ40cPCHTYrCWpzLPWs/Kc8VgZtmpr
	ovt6s9UslnAxBUsLkU5iLs+DEfVKZTOS+z6htFrbIyO7JHuN6/k91BI7uhFV/T+r
	FfRRljLwdsLn/q5ik8O6rOLDJ5ToDX7MGpQtmQaB69FsvRE1mYaR/5XAiYald9Kz
	QlonOnuJShCQGHcmOnWW5Q+4BqSygTrKL2pW1y10Pmh3pFTWY07utaG6wSVPzWSA
	YwuljvRJ8kc66/HXcrDMvmpH0MwiAf+xGuYg8Qgv3mbawg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v1w7tnce-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 15:37:09 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-88e91599ee5so707284485a.1
        for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 08:37:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760888228; x=1761493028;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RL1Dojucgmcs5IbhdQTmfeBquHEdKHvcZ4h5XAH9v8U=;
        b=tZtyIULwOpdC+ILw3UkMP6nyYxhxIXa6RIroU58FfCEzYMLtWvLq9hRcNz+aaqq2xu
         qEOsV7R9NnN6HX7MH8KvGs1wuLGel4uSKMRH/0gjiUDyEGGc17a6/LuS6JcqdFTyKZ9u
         mnXjApIeB9stuLfAhWxMt5w/i6oSIGoif9FiSZDWSBaSR3CiqTUuK75/GxWwk9Ax1zzZ
         5SaQdVvT4Tha08v1wfs82PfJQpnxlFrGJIRLlRwY9R7FU4YbQT8gnpqoZZK4B1O0sVBL
         4T6MD3GhMeZGqO1xkgiU7kkYm8FMoJO6VOiLkNDFNLV8O1N+sw3k7pNK3aqfgcYvoC5O
         2dww==
X-Forwarded-Encrypted: i=1; AJvYcCXhMO/zv4qbWZZS+2zEtv3846alFfR4lEMeMlpk4pobfqgyhJI8uuaIz4FiRmcH9zOIAnmJ7Z2lXwgt@vger.kernel.org
X-Gm-Message-State: AOJu0YzittN6yrTtPcj44uvvpksSTtlvsNs7SOhJytJDxUxVAwTdnmCE
	wLyDM6K1JMBQa7bGnI6F+33jICaRgj3wIO6ImTR+ly/yItJJdmRwL35P+XYJY7spkipPCIpENDh
	Ap8yc/S3a9Wor4+iYChn0vvIXXi0i5tCA4McF1GwaCUnOmpjWImlrU1tQXE8uzdf0
X-Gm-Gg: ASbGncvSQfDvShpjVW1teAyeqQw9udBjzKHiShRflsUUU/HGOqmzGFRZny+EGg80NNm
	OaboLxL31fZAkscNrZdWDNYB1TESEeUJl6r7zzaKuQNYXpmY1XqLG7GM462arMQNyvmNPQpAg1t
	d0GktjRwkZcGffPalunzqAd6hph2hwkZ82Gs2UWzc/FLZ6s+5nlA96YPeGga8WNVlK3cQU5OHO3
	lFiPOV5Bi1851IvxICmektpg/5AgPYwahjIBKL4tWvgYCtt/H6fUgQM54zZEU1XpVtfzkIVe5KJ
	pEJjYs2HhjUvs1k6cPOKBmm8lFmvjEnhfnf4k9UMPeRZHbJl0j0duSLkxKGkYcLeLFbdCRKLSc4
	3vWfWs90r6t7k18NznbRUGdzZkXhbkGGFVGe6xO3sX0ahRkGH5MjxNn9kDGA2wX9Snfi3H1DL76
	JwlJDw7N5OAh8=
X-Received: by 2002:a05:622a:1351:b0:4cf:a3fa:47a0 with SMTP id d75a77b69052e-4e89d263e40mr127009031cf.15.1760888228262;
        Sun, 19 Oct 2025 08:37:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGSXAeyNtiUxZMmTENJ6PxpIf0/vFPNuiwpyiUppu7120CbuRClJJ/SHmE9tFl+nmG6N6HwKA==
X-Received: by 2002:a05:622a:1351:b0:4cf:a3fa:47a0 with SMTP id d75a77b69052e-4e89d263e40mr127008631cf.15.1760888227802;
        Sun, 19 Oct 2025 08:37:07 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-591deea8765sm1671336e87.7.2025.10.19.08.37.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Oct 2025 08:37:07 -0700 (PDT)
Date: Sun, 19 Oct 2025 18:37:04 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Nickolay Goppen <setotau@mainlining.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        linux@mainlining.org
Subject: Re: [PATCH v2 3/3] remoteproc: qcom: pas: Add support for SDM660 CDSP
Message-ID: <sasjgm6pua77syu5qjbr5zxl37jorvhs4dx75lbiqlisr5aq4h@zjxu4k2wcfye>
References: <20251019-qcom-sdm660-cdsp-v2-0-0d3bcb468de0@mainlining.org>
 <20251019-qcom-sdm660-cdsp-v2-3-0d3bcb468de0@mainlining.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251019-qcom-sdm660-cdsp-v2-3-0d3bcb468de0@mainlining.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAxNSBTYWx0ZWRfX9224Ds5D+kvv
 SgoEv3JRZAVWZL6e2WzWh3opu5Fyr0leeWg/n3LqcQCGnpHMrmzMeDXVKEIu13xL+7ioPh5igzq
 15MlYZmsVScJg8p5bWjqH1q+zVYTkLGE7SYLQiock9utHSDD0wFjSZaH8CI81c/p5kibRmtUP2n
 WygIAy3pzhNx9O1J9G0w3Z2MtYzlyAof/n6RXpmllG7kmW44pc8U/Wkjm79pLlggy1qpV4/4pjG
 MQEHHlTxJ5C3LEQMsfIF0FLR0qM/DPE2naj7YS6ZAT7xfWgnKYjA9/NCKtODkPLSExrKjLBep4j
 x59Mpy4rHiTsKxV7l5c/8eRiFNt1Roy37sOXFreYhCbS218fd89OIlEElplS9HXEWYQrCL509j3
 7B0p7FOAiyBwSx6V25ElNo5U6XGfyg==
X-Authority-Analysis: v=2.4 cv=bNUb4f+Z c=1 sm=1 tr=0 ts=68f505a5 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=OuZLqq7tAAAA:8 a=EUspDBNiAAAA:8
 a=X1EvOAfQj5F5E2kYnQAA:9 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-GUID: 9s-P9JwfKkzLqcYx5T5n8xvYdlSSFfjX
X-Proofpoint-ORIG-GUID: 9s-P9JwfKkzLqcYx5T5n8xvYdlSSFfjX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-19_05,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 suspectscore=0 adultscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180015

On Sun, Oct 19, 2025 at 05:20:21PM +0300, Nickolay Goppen wrote:
> Compute DSP in SDM660 is compatible with generic cdsp_resource_init
> descriptor.
> 
> Signed-off-by: Nickolay Goppen <setotau@mainlining.org>
> ---
>  drivers/remoteproc/qcom_q6v5_pas.c | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

Tested-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com> # ifc6560

Please send DT patches too.

-- 
With best wishes
Dmitry


Return-Path: <devicetree+bounces-159223-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 71E6BA6A0CA
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 08:51:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0F26A178CEF
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 07:51:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 124E91FC7D9;
	Thu, 20 Mar 2025 07:50:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="k0MLyUZJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D0E71EF38D
	for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 07:50:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742457059; cv=none; b=Tyi2ZIJQRIOMtrLbaL63nr0sR/zaZTqRP6saeeucoWh4W/ObXTKowh1NgRGGraHui1XLFVKk/zU8yVe+pvEPNGq1C10sChAwWIYmyDBPbG5O+JXvMbJ2fdWaWjfyo9RI2al6J3k5jPPCZAeBhq+hFBoNOeVXDsExC/SANzjIvEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742457059; c=relaxed/simple;
	bh=BhpxnLkgH5xW6HlR7gOQbb754sAx11yyQrk3U7WpiIM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mx72n1UbrD110sZ63mfadUO1adxK803HqlZBia9ylyydDP+99GZAwci6he7Uo42u8kj1LseM8MrpuI+DdIw7n8/ZzIugKiDxQ5c3GXFaIIltnkwIIePyNZo+Jpr5KfOGI3vCHvuSJV/XsrULKVipzNheqmem0WPzQjpJ7FjHLxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=k0MLyUZJ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52K6Z1LC014462
	for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 07:50:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Gu2816Jt4ReGPaLriIq4oPFm
	MPGW55e3kLoSVqwZcBs=; b=k0MLyUZJOv822aTPq2xgg2OwhZrRJxCw3+XAyPRr
	3Kt98IUrQ2FxbiTyCmhllWt/KtY33dRc1fwPQGdvswN3Crth3uQ7LQ6CJGYZspwi
	/Ha118fR6BJdL1h/uWzEMsO7PXQXdhvYEc7SFr0D9pcB18q27BKwPzCdBwcZp2Xf
	Yl/wwfb0Jh9RvD+EqIMkqOuY/l/RxypOpLT0VsvwVLjYUwRJE0Wf1S4jI7ddkp/t
	DCsfTqmQQ7bVbDoF3m4dstKw5GhqRIZmC169U5w8fxmPba6G1SWZvgP0Gq5VCo7x
	vJXlkC2t40fiohwngP8zs7x/N++ZauDcSuwgpjLC98M/aQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45exwtr7b8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 07:50:56 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c54e8ad9b3so253998185a.1
        for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 00:50:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742457055; x=1743061855;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Gu2816Jt4ReGPaLriIq4oPFmMPGW55e3kLoSVqwZcBs=;
        b=eRcRU6vXlEBureSlu62qagOlINLQwGxokmL/JQjJYtHQI1cL3skZc/6WHkPptqWyu/
         +V0nVAvwb4J1Pe/wseQuUtJ5WQ38SwyZnrC8TFxDRkgtsyNUhRJ1gytkEsrhLkAzYDpi
         kObhO4GDdq6xlz5bUlMZNeOMZcDsjTfjhs16r2bQeTI0u2hxGunhXLgFvIaIw2s/dF6/
         Nj2Unv5z1FDlapb4dsLHfdwvrPg86QymTwqdPToWdjscbwkZsmdB9UbSlhAxHoZbjQIU
         NgQQmbAYwLD8WWj4Lzz3jNbtzEOUW4x+HzLFxlrXgqYYRWxWAxHjy6+rJmnTu2ozOZ/R
         /Kzw==
X-Forwarded-Encrypted: i=1; AJvYcCUsOpIWe6K5ad3/73nY3Iql0wcI1RPg8kuS93RqIB8I7cAuCUq5DCqqs6Oz0b63LJeH2RTG3Juc915n@vger.kernel.org
X-Gm-Message-State: AOJu0Yzur1DxT5pH5KZKFQmnRjVsC0pmSY1XZTHtFpkxfdDOjEveOE6m
	hjxyn1qBAKiu4RZ532invQjE8dUuUVBFrObqmkbNRJOVThHPmH9A+UTxHVs5yuY1JT7Iqzhos+i
	98WYVriQQsKnLxmhzgSttewmyHdjme/vc2Lhjq+Q8u4sJCBUB6UUewsv+2WUT
X-Gm-Gg: ASbGncscdEvVZCmaaxOqHMaUYMPojvf3mRI7gCzWbVHHXnf9Mk+o43SjKSvoXWS5W9z
	KLzb4K2HU6rylVtF37Hf+5Rigr+FwfJqLlUlx47QMVsCUGQC9xVRsumuudmhE1QJWAAbqBZ83Wl
	Ku+FIbGqeNaSxPcvKwX4JrGvDYMhyYgvNBPChHPjVXtcAigjx0q4pss4XVwKZBRWcxxeBCwqlEK
	+6GeHKz/gRgHdMwQbjScOWgVQAD6jO8DVIDV7D0Jopj4mZJfiM2l1Hz0E9OU85yjor/jt5M0tFG
	TUylDm/y7fjA1n6IVCgUxka8879QZpo0ZgS1Aw7U1yWtemTJGYRan8QB1/i/HkRadYFy/SDqREV
	PKx8=
X-Received: by 2002:a05:620a:15b:b0:7c5:afc9:5144 with SMTP id af79cd13be357-7c5b055171cmr269772285a.23.1742457055541;
        Thu, 20 Mar 2025 00:50:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEu1vRPJVn5WHYsHx8Ll03Rl/WJrMi//xMYy3u3Rawd1CXYt0rpjvKqQwuOC6NKpUeYzg1IlQ==
X-Received: by 2002:a05:620a:15b:b0:7c5:afc9:5144 with SMTP id af79cd13be357-7c5b055171cmr269770485a.23.1742457055241;
        Thu, 20 Mar 2025 00:50:55 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549ba8a8d7dsm2128708e87.234.2025.03.20.00.50.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Mar 2025 00:50:53 -0700 (PDT)
Date: Thu, 20 Mar 2025 09:50:51 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ling Xu <quic_lxu5@quicinc.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org,
        srinivas.kandagatla@linaro.org, amahesh@qti.qualcomm.com,
        arnd@arndb.de, gregkh@linuxfoundation.org, quic_kuiw@quicinc.com,
        quic_ekangupt@quicinc.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sa8775p: add GPDSP
 fastrpc-compute-cb nodes
Message-ID: <uyjmsdhlqiuosmkrdmgltpimj5gfhrlp3an3glzh7gvmphjztn@5et56n4wfrnt>
References: <20250320051645.2254904-1-quic_lxu5@quicinc.com>
 <20250320051645.2254904-2-quic_lxu5@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250320051645.2254904-2-quic_lxu5@quicinc.com>
X-Proofpoint-GUID: ODyOYyKkD-vKwoL9q4umIdxRUqpwi-9P
X-Proofpoint-ORIG-GUID: ODyOYyKkD-vKwoL9q4umIdxRUqpwi-9P
X-Authority-Analysis: v=2.4 cv=UoJjN/wB c=1 sm=1 tr=0 ts=67dbc8e0 cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=EE3GnvNe1S1ur2Q-TqUA:9 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-20_02,2025-03-19_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 malwarescore=0
 impostorscore=0 bulkscore=0 priorityscore=1501 mlxlogscore=704
 phishscore=0 adultscore=0 clxscore=1015 spamscore=0 suspectscore=0
 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503200045

On Thu, Mar 20, 2025 at 10:46:44AM +0530, Ling Xu wrote:
> Add GPDSP0 and GPDSP1 fastrpc compute-cb nodes for sa8775p SoC.
> 
> Signed-off-by: Ling Xu <quic_lxu5@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi | 58 +++++++++++++++++++++++++++
>  1 file changed, 58 insertions(+)

It doesn't look like this patch has been tested for DT schema validity.

-- 
With best wishes
Dmitry


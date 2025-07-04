Return-Path: <devicetree+bounces-193066-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C5577AF91DE
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 13:52:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6749E546736
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 11:52:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41FD32D46B6;
	Fri,  4 Jul 2025 11:52:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SSIuxwf8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5A7724A066
	for <devicetree@vger.kernel.org>; Fri,  4 Jul 2025 11:52:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751629964; cv=none; b=jJ8N91TB9elADxMQ5Hw6JCjr2T6kGI+sTVflno/6UnXitI3rt0IGF9Q7XYim2RTyj0gV6ZEhFvm660izhfgb84n1qow91+TuCbg6JuE74E2/WkOtU41ZtQu7rd2tJdymedP4gUNTeuhOmelMg+5VDco6CN55HyV5py/XCVfkGXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751629964; c=relaxed/simple;
	bh=Jxr0xdYuj2907vXx/1ixI7Q7uwKRLMkvjPjpU4giaJw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=h7yrTwUY93ej97TVm2btxf5Wr7155KNjILAThlOWcTc4qaO7psvsRz2I04oFxjWqBD0Hujv8E56vyGOhZ8O2vSm3IUDZu3xGYkjCAJNAWNWK6aLnk0NCqVLqofCw/lbvTpBJZ8Fqp1yJW9iudVZAIEvOBAmrd4wiAIw02ue4F4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SSIuxwf8; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5644hrTA018581
	for <devicetree@vger.kernel.org>; Fri, 4 Jul 2025 11:52:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BsXV7drYMwvyEcS2Cgw5YwM718MexIAF6Q1pCCfKGWA=; b=SSIuxwf8cuP8xhT+
	l0vtAkYBHkf3n7wGfnXOBiaKJSpq4JUoyl0S4JDcFbQij/q7xoZO6NiLliDHOOkS
	sg/KeH6Nh12N0w2jLbfDPooI0DITSAGd1ozxtlVEkS3j3NSaHB/recD4Rqz7T4dN
	FZkgsE+nq3t4A+jp5X5kzVnFGjPDEtqscj6gan5pHJrBNIAt7fzcMo1KVRHdIrNe
	Z4uHJQHeyVjvH0u/PnDsnf4fLsxOBG+DEcoA8QXWnMEJ4i2cb5I20otkGodNyXIw
	m6cZKG33XiP6eMZzILpa2BgpsK+8wwYsOLIaJnfHd//1YtkCEBDyXExzaRsYhQ2+
	Wk182w==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47j8fxuww7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 04 Jul 2025 11:52:41 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6fabe7822e3so1758416d6.2
        for <devicetree@vger.kernel.org>; Fri, 04 Jul 2025 04:52:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751629960; x=1752234760;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BsXV7drYMwvyEcS2Cgw5YwM718MexIAF6Q1pCCfKGWA=;
        b=bNHULX6GRwMOxUBihhgv+A9VxioXIJUQmUJipS4daJPX0wOJUWW/L+djrRgpz+H0Eb
         tyoKnDmQZs7jksQBYuXKgf4L3IMqFiJAFKmA0FHs+FWWluAT1kgpWpj8uGqBta6L5QWx
         NTuB4y3OfdfoPaIk7l26FOSF91wJBP/2g1XjQYH5c2HnBdG8ne3NZwzocXnJS9UPHkFm
         rYA7pmlk8jx5jA87AJaWxifzm03ZCvS+5nnq3y6jxGMJCcMgL0ScZpRzjcGOcrIzzkDf
         4LGE6cM0EU8t8I5JdJm6soip2MHA6DTdCyx4c5PP1bD/gBSCQrBZwsMMneR4IeDIKhs3
         mNMg==
X-Forwarded-Encrypted: i=1; AJvYcCW/BHD4joQcIJFzP6AHDkLkyw29iTC5x0tcmFaKFc+RfLVSZaZf1HLW33zOoYWxgV6XVfmQzz3J9rSe@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+EhQUC9LRZY68I5CWOx62voNvMsrD8z8iaGbecHDhhev+P4ol
	DlOur52MINE/Ud0wEHNzbgRgDtjmO8sB/gDK2PcE6oCoGSln8PtzfrvPpQAE0EH1aTpZ4xSQRuh
	8Shc1Ejt5/ndINXXIgrtgBBHo6OvCgDT7zP/6FSAQDjLbUDQ7jbIy6aB7THDyp6BW
X-Gm-Gg: ASbGncsIBsv6/GwK9q4ZHoPNokAWgKVXlpG3EHJhEGX379nObNAdPqnmDu/Z1Pyik/6
	L+HGE5uCef//lSCX+ux+3tzzAH250LG6qRR1K2+UNMuGhI284eORGSo2HUs8/sAPmS3R5YQMqYF
	XBIVoImZwyaSDIw3pYMMxjemkx21gRUIQNuTp2/tVfWZv4pfjG6FaGn9xnOx0vra9f6aFym/F0g
	DEhDvgFz0rXytRy8+C2YGetkTb7gPtPXFxJcVSjIOrzB6ReWWxC0Ieqn0CleOwI15Ql73jvgRw0
	YFw6MI2bwpyH11hVlvJ7EYX4smm9ZFNGayESdkPBNHeq1+MfhjuSJ9+WJJJ6kBMKGTxV7OUbenI
	D7KqDDA==
X-Received: by 2002:a05:620a:278d:b0:7c3:c814:591d with SMTP id af79cd13be357-7d5ddb5ef03mr114076085a.1.1751629960610;
        Fri, 04 Jul 2025 04:52:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFCSLKywpPAh98geWs3TsZPTeVlJ36KXynK/cQGjD+OqSD4iTSBmU5d4Bk30MBe3jGsdImkDg==
X-Received: by 2002:a05:620a:278d:b0:7c3:c814:591d with SMTP id af79cd13be357-7d5ddb5ef03mr114074685a.1.1751629960186;
        Fri, 04 Jul 2025 04:52:40 -0700 (PDT)
Received: from [192.168.1.106] (83.9.29.45.neoplus.adsl.tpnet.pl. [83.9.29.45])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f6b04d30sm158014266b.133.2025.07.04.04.52.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Jul 2025 04:52:39 -0700 (PDT)
Message-ID: <cfa9cd1a-2a5e-4191-b27f-172ba202175f@oss.qualcomm.com>
Date: Fri, 4 Jul 2025 13:52:37 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 05/11] clk: qcom: Add Camera Clock controller (CAMCC)
 driver for Milos
To: Luca Weiss <luca.weiss@fairphone.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250704-sm7635-clocks-v2-0-9e47a7c0d47f@fairphone.com>
 <20250704-sm7635-clocks-v2-5-9e47a7c0d47f@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250704-sm7635-clocks-v2-5-9e47a7c0d47f@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA0MDA5MCBTYWx0ZWRfX8aIWS7GnGMte
 xUkB78YFc7CLLtFgRnwEgkpuT3A7aYHWCjzjLJJKpfcHc80hHzng23PI2TDL6Q8uMLfvXkjZxXq
 gzGOY5QtrICx3U5LVQrVdPDIrx9efQMn3v7POzxjrYB5eV8USeIJO4/tnMSUDplzDn/ewgUpQ+y
 cF/+6TZZXODlJ7Xdblwq6bH01y7N+rGK2VsVCO6vkmo8rwQ9wazH5M+T+z467SLsmmloRK2PUU9
 np9CW3Nj0zbThI3LMx1/wQftis4+DG3E79mbWGKoqOzksU2vm/dZSJNLgTY5Nkv6/w0Wp+kLTG4
 lN+E2xs1EtqAz6Qqy8dJ6b9lefywHJoBT7YA4vEn4RN62MrrW63aZNZMgif0qg2mx3TJaL19nHx
 KEhcc5YAE4IN3QDVkxBRtSwmDC5ED+UDDy5IQ687en9cnc2g+8p3xdD3Xj+GtTdI4ThNatoP
X-Proofpoint-GUID: KQFWSdrgabOZph2o1Pr_GWCB7wda5Wdw
X-Proofpoint-ORIG-GUID: KQFWSdrgabOZph2o1Pr_GWCB7wda5Wdw
X-Authority-Analysis: v=2.4 cv=TqPmhCXh c=1 sm=1 tr=0 ts=6867c089 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=qmfFy4ndMtQ753Zl/n/b/A==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8
 a=lahI4EVxXURej6Z-Ve8A:9 a=QEXdDO2ut3YA:10 a=AYr37p2UDEkA:10
 a=1HOtulTD9v-eNWfpl4qZ:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-04_04,2025-07-02_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 mlxlogscore=858 suspectscore=0 adultscore=0
 phishscore=0 malwarescore=0 clxscore=1015 lowpriorityscore=0 mlxscore=0
 impostorscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507040090



On 04-Jul-25 09:16, Luca Weiss wrote:
> Add support for the camera clock controller found on Milos (e.g. SM7635)
> based devices.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


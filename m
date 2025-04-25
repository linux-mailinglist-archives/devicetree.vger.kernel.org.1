Return-Path: <devicetree+bounces-171063-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 00728A9D21B
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 21:45:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 165A11B87620
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 19:46:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D97A021E0A8;
	Fri, 25 Apr 2025 19:45:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="chkxq0cH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3806D21E08D
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 19:45:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745610337; cv=none; b=BWomESE7sdOAN4lotdkQs0i9jjSeDq1sSunBhzOlqk/KLVg4IKayaSk3ltYXX63NvX5tvExZl+HafGpsrFaVG0rWBvxFnDfJf07ufEOyQZUlul5Tb+04yzp6rDpeEPlsu4VyrziEN8Bs77bINjYMw5KlDJ7qiyN/CuAcS+UMZrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745610337; c=relaxed/simple;
	bh=cswa6dW5aA9ue0GjESk6mDrCFdxgQa+QhzwAB+RgFxk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AmEVxNn0G/U0y11Etepsoxfj+FwWdEveQ0eJqB3Z/d53ybJSu8cswI9vLGZthBupfm4PrM4HG8Lvt/hbRNk8p2Yc/s49KaLZckHHSAa9xoNoSt5nJSFm6TtGrH6fSV2o8u5lwrkQnyKhYG/PMIy7CEmhTSvUl87cwOdU6TD2KN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=chkxq0cH; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53PGKldK001231
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 19:45:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Rxx5wfe6aG6Fa55yWqNPwUBU+glFaz9EsS80UceDj08=; b=chkxq0cHtsnBj8R4
	Xu1TqV3UbHWb96//HVSO6DWneslIkkm41CwsmW1lW4LLrOlmtpNyEGcJbZKex8gs
	qr4e+syqx4wly4qj/LQXQAT58cuipVOspbWxeWDv0c9dXcg3yEvwxxubNsrvAwrB
	5gGRiGyx9glz2cqTh1zv4mcL0evZH8ymbVkteqS96NSvnBJZOSLzBWiLQ+oQym9d
	6H3vvc9BBHEViFn+tNhD/JWDDlSbT2BZYXBoy428d8DCSvWK+VP20lBZhvpZk8lL
	ruixfTNBZtmFB2wdDbY8m5V2eT/mJvFyb/4tU6wnzWx47TWlmToYdZD5guWoKvVP
	s+lkzg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh1a0mm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 19:45:34 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-47ae537a9d6so2724321cf.3
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 12:45:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745610334; x=1746215134;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Rxx5wfe6aG6Fa55yWqNPwUBU+glFaz9EsS80UceDj08=;
        b=iMjqaKnEmXlDIjG1stY3oIxaZ3utaz4YGL5el5D5b8OXcHt8IxMH7m+mk9Al1/xMjA
         isrZirfXzOyfZm43NpPPjJeGrRxjysTRS7vY8pg4IMt0JdwVeM0zZMSUCtAlyHcculW/
         yY+9SkV2dkqXtVqLH5crtzmLd0KBJIHa2415sC6QtVXmji3wkBU1cAWkHe2ZvnWen9ow
         GC8n7Q8d1mxreIWoB3HEspJlIEiazVCnmecODnn15GGZLBxxwhiI4IqHOSWm1qJrVa2q
         xeDkRm9pNmCFVYHAEGzTA2XsatwnCImRuCGWXtcDcNjWL2mwsqpMxoyzsPlFzXDroIrq
         aLrA==
X-Forwarded-Encrypted: i=1; AJvYcCWbK9BMQPQXCAcM/SfK22NVPsCLTwhGfwWf975ZCx0KopZTGEHY8PhYeB+P5jzAgOWx93P0zWaB2dZv@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0vVlH6/HTRiOeJiQi/UhltQXxxgS8WUja1yDQ/T3eAXJ2XnKe
	prO+NEWF+xA9T1kiLidiziowrrJVVQJh2YzTQRDx376A+nkgiRL78x7at5akdTlHl4jCBh2uaS6
	fzwr8LsTl1p8ajc61M9G24VXcIAqkNlkCxYzH+HkNmbAFr1o6plWZUzTAIc5Z
X-Gm-Gg: ASbGncuvKlo6ASRso8sj2mwmiQpCF3tyFW1Yo6pd0RVfAOeCbMhoQhqRwvByTje2Q4+
	wmRZnzNcktDKD2VpuiWytrucjN4I7oQ/nfs8EauvLarU5KIcRHIsXTy0iSeOhn5pk6WdCPGSMGb
	TOfvrS4MFCdnOTJ7ZStUCOiho2nNUotdd1y6iBQynqECS0VxUQhufzqqDb5HCyuKDZCsWwmskPl
	R92bRgz8CAdguTaeVr5/ZPqDgEDyVUwPra64sXxn3rFdJJYNDDAqCmeRbF50ozAhlZFgoo3AdPx
	vt5JlIvOOfN/6mzduWQ9vNzAWmMfdZrLnJBLaH7Bzy+bmf3TjsI5sWSWfOn9aF1SCN8=
X-Received: by 2002:a05:622a:1452:b0:473:88e7:e434 with SMTP id d75a77b69052e-4801eadc57cmr21800371cf.14.1745610334229;
        Fri, 25 Apr 2025 12:45:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHBMn9Y+Q3/QKqsAdN0ymIzhA38kSGeTKsCOv88eKpG69zK6HEh4pdNVXq7aJI9uMOK+nDotg==
X-Received: by 2002:a05:622a:1452:b0:473:88e7:e434 with SMTP id d75a77b69052e-4801eadc57cmr21800111cf.14.1745610333853;
        Fri, 25 Apr 2025 12:45:33 -0700 (PDT)
Received: from [192.168.65.156] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6ecf8ca6sm178331566b.118.2025.04.25.12.45.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Apr 2025 12:45:33 -0700 (PDT)
Message-ID: <89f431c2-1b1c-4c83-b45f-68afc1a974ac@oss.qualcomm.com>
Date: Fri, 25 Apr 2025 21:45:31 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: x1e80100-lenovo-yoga-slim7x: add
 retimers, dp altmode support
To: jens.glathe@oldschoolsolutions.biz,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Rob Clark <robdclark@gmail.com>,
        Jos Dehaes <jos.dehaes@gmail.com>
References: <20250417-slim7x-retimer-v2-1-dbe2dd511137@oldschoolsolutions.biz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250417-slim7x-retimer-v2-1-dbe2dd511137@oldschoolsolutions.biz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 1-VpPVguBeQ2trcKg-c0c1PmROCyDWMm
X-Authority-Analysis: v=2.4 cv=OY6YDgTY c=1 sm=1 tr=0 ts=680be65f cx=c_pps a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=gxl3bz0cAAAA:8 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=70XoFFO73b3tUdKEuYYA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22 a=kiRiLd-pWN9FGgpmzFdl:22
X-Proofpoint-ORIG-GUID: 1-VpPVguBeQ2trcKg-c0c1PmROCyDWMm
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI1MDE0MSBTYWx0ZWRfXwUoNgV3+LH03 5VG2y+aF9WTmfxHJZbDy7cQ81+rQN2v+rdZwIPHwYFc1dGSNQi9ZRxF/afQ7pA8igCmzpxGwNiL pmdv5HBlBHoi+q7J/nJZECgJKr1dsrnlOZgE2TqaVDivhWqNT8NEV7qOzvTEY9zc1mTGcSOe7bd
 T8b3kjJ5rjS3E492Xz2WAEuC7Ew3J46opy4L6A/TvRozs1kvcNwgJXx2B9D0+On7YCkCgQwvVC7 GjrzZf80zgXQoFamfgO+S57O8wloYmveOprsfmMffJv158aGTttiqD5nJHzrkLoD0QtyqBRskP1 PBhwrp3gYBe+8qFnfYPcvcoZgdE1QVGhHeGjDc+2i0sJNlHKfC2yDJYgC09IbB0HAoxxvjVmYMP
 bSO/5KHxGnbSZDJ9ok9snfxa1wA+iU8AL8BnjSBvcOPYhKeyDzm/ufU293arA8YcEcOorywi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-25_06,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 lowpriorityscore=0 suspectscore=0 mlxscore=0 clxscore=1015 malwarescore=0
 mlxlogscore=999 phishscore=0 priorityscore=1501 spamscore=0 adultscore=0
 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504250141

On 4/17/25 6:35 PM, Jens Glathe via B4 Relay wrote:
> From: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> 
> comparing with CRD and other dts for a more complete support of the 7X
> only retimers, gpios, regulators, dp outputs
> 
> Tested-by: Rob Clark <robdclark@gmail.com>
> Tested-by: Jos Dehaes <jos.dehaes@gmail.com>
> Signed-off-by: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


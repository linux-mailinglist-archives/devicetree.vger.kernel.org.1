Return-Path: <devicetree+bounces-185407-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 61508AD78AA
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 19:08:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1E18817EE07
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 17:08:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E728298994;
	Thu, 12 Jun 2025 17:08:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LVY+zO5/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C421B2222A6
	for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 17:08:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749748082; cv=none; b=ou0Dy8loqtSGr8gnp44sj+n3cs1/fiN/Bo7UtmbLa1SnLdemFHm5ogHho3wJD7xmBHeS7mIWM6hRU1gmPFuQhb9GAIno4c1ufMjikcVCZk7d4oG2kilfE+7tD13uRs/m1E1FpTsvYPMkHr4IOQE6aqjVY8Hl3QOUzn+3hPd2rjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749748082; c=relaxed/simple;
	bh=Q7GXlm2e5RgBPG1dGi7/YTqBRYy7c5r++waPcXzg61I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DNM02T0T2Ik+9omxiiDe+K7xE6JK11DetcLlJgfKa8rNv/ecYb2elexpQ0BweRjPfCEIaBESgb/kgUeuIi3xBg/k9ZtbhspUvvea0qRnHkII/5lxo1c4BkvbjfZH6K2UOg06+1Rdz/JhmzP0akhy+kkxDZ09EcIvDMo5anOCaTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LVY+zO5/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55CE1itx028532
	for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 17:08:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oCUX6pLJ4eKKsw/Jg+nykN8d2JIazB3083QqZVfXDF0=; b=LVY+zO5/secelIHb
	cer/cuJ45Y8xJDHx1dnTtwsMKfXGVTwoZ2KoB5BwDtpAWIJiU5FH6Ny5R5XaxvfB
	CsAIVj33VSTIuCcMDB13C0O2nwTALvSkNjpWTG3jrQcnKXNGT8c2Fk++pVmZF1Dn
	BjGL05gEzDosd+HBbUBHNyFaDFAtUdH30c90em60vvj6X11kagxa1BqGk6Vc5vDy
	HR8D6SnmXoNQ95r8G96FIvhDHID5nGUceYB96ePp840jKkmo5k5128w5mns/ejMW
	e6qDp4a3vWXQ9TmTenmZOwfX3r00vgkcDomWoaXv1yfAboZ0fStLxVY6sx+PjRTn
	Z/evlg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 476fmngwpu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 17:08:00 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6f539358795so3045706d6.3
        for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 10:08:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749748079; x=1750352879;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oCUX6pLJ4eKKsw/Jg+nykN8d2JIazB3083QqZVfXDF0=;
        b=wdYlx6mLj+NTc69uPBodVuqUP4dQ4zZff/2mPfWm536kmkDxLLsAMtTCiiv1VezvF7
         3+5BAqOfSynscU3XDBe3vbAS71TyKWPnsu6c7vhpxhFEgZu3Z0Lv6UI7Ro26hgDGV1Vg
         mFz35UjXRXI6zOoIjZBrEd1UOV3V4qyHAz+hajkzlWRFOayYH3+fOlX7QyxPZMcvxxLT
         4YRoxDM71VZQp4PkO9B/7al7hfc3uFQT9nINskhErgcpYEzbv6iIjcV6WviK8cG+HKHE
         3ortdQUQTLfTs0mYBN7+ekuQraZNMdH/7lm8/4zZUrbcrBagjVZq/JcjRsXrauc4i6EC
         VOyA==
X-Forwarded-Encrypted: i=1; AJvYcCVSZarbg26tDJnHR6heeNQXV4PYHhTj9cpk+AKLFczQT7l6E53dtC4wdok5XLPVGRVW1bsrcGPu6/Wi@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6JbSmxIUhB7xtxBjXehEp4wRpSopADs1TXA1xhiw5EAvMg+zB
	8I8DJoOpn3214uqTwfayBmShzLvGiTwyG6WTklyeDl8LnlpzsTEzr78MVxVQYt+tJ3dkrxsycPL
	Eq4WHDzAjRAAiWsOgURRUWHP4H2ktj6k+RHjiNiZhzqA0ef0l8VLvHm9028g6Cg7f
X-Gm-Gg: ASbGncuY+egxETR2Xi7Qlwc6uGoE3aVwQ29RNwIeD/TpqJ78IkhJwe7uxwREizPfLfU
	t9WPs8gBFfbAVH4Xn4RmccG+cI2pYP8OQxm4xjYSSFpUad5rOPdM9XHmwFPPou1fjMoRKr1/HWe
	OImlEyN7yvC9Xu5HVChIUIjntx3jr4L1kSnM3IayGI5Iswbjb15+gAcvcwaKPBZFnd+yalT7Udf
	zPHmD7R1Fm13gqaCkCyarmZIrquikwsVUQY8/Us4y6j0bRabvq/r1oexgvmEParLTgIIT/4k/d1
	Yst1sE9b/JR3aTCpcFCuGkeJrEoj46y0NliVWN0XDgABnFGm7mvRrrdvWwXIOedKUqWdoKx7t7R
	g+/Q=
X-Received: by 2002:a05:6214:5017:b0:6fa:ba15:e86 with SMTP id 6a1803df08f44-6fb2c25783cmr50670966d6.0.1749748078759;
        Thu, 12 Jun 2025 10:07:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGUVxUe6jZC7/MV4tS+FVdBiQl+jx9Qa8OGDtsq1v0I0wDt4u6bV0IdkUSIiWHVGe4VFxRwVg==
X-Received: by 2002:a05:6214:5017:b0:6fa:ba15:e86 with SMTP id 6a1803df08f44-6fb2c25783cmr50670686d6.0.1749748078261;
        Thu, 12 Jun 2025 10:07:58 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6086a58eefdsm1474265a12.23.2025.06.12.10.07.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Jun 2025 10:07:57 -0700 (PDT)
Message-ID: <2d768e39-428a-42fd-8e31-a36fd11ea776@oss.qualcomm.com>
Date: Thu, 12 Jun 2025 19:07:54 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sa8775p: Correct the interrupt for
 remoteproc
To: Lijuan Gao <lijuan.gao@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Jassi Brar <jassisinghbrar@gmail.com>,
        Konrad Dybcio
 <konradybcio@kernel.org>,
        Ling Xu <quic_lxu5@quicinc.com>,
        Tengfei Fan <quic_tengfan@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: kernel@oss.qualcomm.com,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250612-correct_interrupt_for_remoteproc-v1-0-490ee6d92a1b@oss.qualcomm.com>
 <20250612-correct_interrupt_for_remoteproc-v1-2-490ee6d92a1b@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250612-correct_interrupt_for_remoteproc-v1-2-490ee6d92a1b@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 49YlfEMpLzK4hD4FqSjOallKAkKgJg4Q
X-Proofpoint-GUID: 49YlfEMpLzK4hD4FqSjOallKAkKgJg4Q
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjEyMDEzMCBTYWx0ZWRfXyw72cZOQj8c0
 gAPCrElvXB5GI2cH2wYTE+KjQfSq+bn+7Kn8YtToD2uDd0+TaUTSn99fUGFwB3QVKmjpdF8W9KL
 yLKo04DqZXWXYHu/n68kPxDFn1p7WK/Ve5t0soNzFy6nIW/gpEqIjpSjilmZ1PMqOnqiNwjdFEJ
 YQhLl58ZzbCQQpjeWnA0+CXA846EFvY2DiaAATQV9Q9T08gWJtbJra0RyA+ntvalC6vqm9D1Pg4
 cXgZRpNWPrANahWTqwcOUa1YsxIeaK526G0lWI7nkACGrpYw8OOFtQWYR9kiutxl6exE4t9D3eq
 4XDEKQTzaqNOf71xX/4CEYb1q25SfxgfWO/xnRYxZJCjPxcmPTjmEbwUu2nWYreHGeclQpSlYwh
 eL+IFMJoR+Fg8r+mm5xSnI0lzIBvBgxK3LwVpfzzcpQxH2yeqd73HFI5TutGhIYo4fxyvCT0
X-Authority-Analysis: v=2.4 cv=K8wiHzWI c=1 sm=1 tr=0 ts=684b0970 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=wrLjHZacoFgeWOAOTdYA:9
 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-12_09,2025-06-12_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 mlxscore=0 mlxlogscore=678 phishscore=0 lowpriorityscore=0
 malwarescore=0 adultscore=0 bulkscore=0 spamscore=0 impostorscore=0
 priorityscore=1501 suspectscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506120130

On 6/12/25 4:39 AM, Lijuan Gao wrote:
> Fix the incorrect IRQ numbers for ready and handover on sa8775p.
> The correct values are as follows:
> 
> Fatal interrupt - 0
> Ready interrupt - 1
> Handover interrupt - 2
> Stop acknowledge interrupt - 3
> 
> Fixes: df54dcb34ff2e ("arm64: dts: qcom: sa8775p: add ADSP, CDSP and GPDSP nodes")
> Signed-off-by: Lijuan Gao <lijuan.gao@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


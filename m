Return-Path: <devicetree+bounces-137234-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 14FF7A08412
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 01:36:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 417423A36B9
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2025 00:36:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0DC318027;
	Fri, 10 Jan 2025 00:36:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eFamolNZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 488B0A2D
	for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 00:36:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736469378; cv=none; b=EwsDWagIM33l+FmpOr3cpYf+atbMEpr0Eu3y5SQBQt9rOybr6ZTGIWbDPuRT45OxZ9kg/6M1OvEDT6022eUhLy9ykadcfR7Kpt/7QTbkgCBsBRAg2upxGdbjAmWS0/E8ysHOujuWFTHioh+XczUqqXGNFRXap0KkamTnvn0tA1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736469378; c=relaxed/simple;
	bh=6xICFHMpCxosi0gUwiynmplBiLRVEa83rAxJzP3S7RE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aZ+hGiSsxCo+eKx2o5adOIs1JW9pZB4HhrD616qPL7UlDt0jXNDHp387Hq6csev5j6PuyI/+cvZCqUYzQPrZj7BewyWsNfSGKb1kleNTS15ls0+jD18ilsqcFY7kdAUAU8/GlsRaRA/sFF9losO8otoc3QowW6BkO/FDdMMwzt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eFamolNZ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 509E7cQ3006695
	for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 00:36:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	P2UFCBivwhiM1gcHoI269zCVONI5NtEXRX7Kbx2/usY=; b=eFamolNZISTBR5Om
	n+q59gu25ENNPZiIXZtcB8ec21Y6MB7e1aNz7bO61H7Jar4Ge4JCMJydiAAjiLwM
	1+0voHH1TFCTfW729lmm+iM3Kauz/iXGNWCkA8py0FYA4j8Oz4fbxSnqLFPkKcyL
	K6diyagYq2dtPeaOYt0bCGkqK0qm7ZTh+Pu++zYQpd0EQkzP3/tdc6lk9dKrxeQ+
	4m5WGfJvBFVMKTIK/gZpX1qxlQsHxre71K99s7XIwAONq3cOyciUeKt8Eyp3EV6P
	A2Z/eOLOxKBzLBRqaiwSnyLw8UIhyCPiV6cd6O0ipp/sUJk3o1SdOUubbnM4Yd+h
	BWuh2w==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 442fxs1b51-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 10 Jan 2025 00:36:16 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6d8f8762a69so2778466d6.3
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 16:36:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736469375; x=1737074175;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=P2UFCBivwhiM1gcHoI269zCVONI5NtEXRX7Kbx2/usY=;
        b=VS9dIAb9o8y5U5P6wGs3rjvXPnJCwFAAkONDmlqnR2wsQ96ms2WRIwiQxZCNt3X5nL
         lOlUA4LkvBx9Z+pqUMQtL3cBwiXZcBVlvL9OOqOJuI7eFETsVF6/cicIgaUStAL1c2fI
         IT5iy7+QCDrqkvlKnjETELxw57+Y+bqWZBvn1Ai4Ctsah/2dljUKfZ1+eF1xnORSf1HV
         b7i2PqW8kcpWNhPWZJJAE7j9cqsVgfeF+xrss/Ib77yz4dC+ebcZZJIy4jmeafOWpd1Q
         e+6OyB4rvnR4tvuyu8QyDZxjqmiHqi5DvR36kXqKFnQ+cgO2zZznfvG83sSTPRYU6tTv
         Tfug==
X-Forwarded-Encrypted: i=1; AJvYcCUf2mLNFht9YJ2ePsPXLFcoVueKPY4dRJi9GdLfcoDSfBi+GVa7pJfJF2T2aJcTbwEkZvmPoyMDxEGe@vger.kernel.org
X-Gm-Message-State: AOJu0YyiUwgndUvnPnS147C21OxEc7teFgzlHZ5FnLMVgXOOx2vWwuAg
	eklI3mqeZ6KsL1+W/TXKIq7436I8DGS9FCZeXnCuTr/B+3lC26+hYh7iGm+sevRI+2ad1sbpWSy
	wPJm2dMe5C1J1MnotarxKCsfRBJQgaYJJkTfoYoZtCSov3J4iBYI+a83tMjR6
X-Gm-Gg: ASbGncuFJ74mJxbisAomKTnUZpc8j1dDHw+8gFyTWX4b0CshOmZhw2Lg+kAsM/0E7Ms
	vx8U4pX9hpdeZz5U3dvPwtXTJ0NyIc2MPIlvtyJmceQN5GLsC29dbmORlP6owJDOrGzZc+ic+OX
	a42OQGCLB8zYg3NAEV/4oxSGoFUrDiyv238FF0vEbnoui+GGWgPdS0+/GsYL3hxrrcGuqP5QYge
	t7XIYzT5EMDJGX4dwR+SiAqFufEO4x9b7nIkcPeW5W6c95jzgLgbOmfAOZfuIeSPipkIwDr1uE+
	id/SlT9IRK/aJOjDEU4slptP1j4KtOT7GRA=
X-Received: by 2002:ac8:5e4a:0:b0:467:95c2:d8a3 with SMTP id d75a77b69052e-46c7108eeafmr43191731cf.6.1736469375324;
        Thu, 09 Jan 2025 16:36:15 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGqzJDZC5DsrsgRLLer86gUYngDWm9d7wxVogvt+ECZYaejlq5jX6dZf6OMucVEMdVDHi+XJg==
X-Received: by 2002:ac8:5e4a:0:b0:467:95c2:d8a3 with SMTP id d75a77b69052e-46c7108eeafmr43191601cf.6.1736469374995;
        Thu, 09 Jan 2025 16:36:14 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d99008c3cdsm1086838a12.1.2025.01.09.16.36.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jan 2025 16:36:14 -0800 (PST)
Message-ID: <9127e720-aeda-4b7a-b9d2-406c7f0ebd03@oss.qualcomm.com>
Date: Fri, 10 Jan 2025 01:36:11 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: x1e80100: Mark usb_2 as dma-coherent
To: Mark Kettenis <kettenis@openbsd.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Abel Vesa <abel.vesa@linaro.org>, Sibi Sankar <quic_sibis@quicinc.com>
Cc: johan+linaro@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250109205232.92336-1-kettenis@openbsd.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250109205232.92336-1-kettenis@openbsd.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: Mje2NdzXH5CXSbXBXgbsP1Oe9Ql_qP4q
X-Proofpoint-ORIG-GUID: Mje2NdzXH5CXSbXBXgbsP1Oe9Ql_qP4q
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 bulkscore=0
 mlxlogscore=664 malwarescore=0 clxscore=1015 lowpriorityscore=0
 priorityscore=1501 phishscore=0 mlxscore=0 impostorscore=0 spamscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501100002

On 9.01.2025 9:52 PM, Mark Kettenis wrote:
> Make this USB controller consistent with the others on this platform.
> 
> Fixes: 4af46b7bd66f ("arm64: dts: qcom: x1e80100: Add USB nodes")
> Signed-off-by: Mark Kettenis <kettenis@openbsd.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


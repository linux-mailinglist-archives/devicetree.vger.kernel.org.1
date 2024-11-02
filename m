Return-Path: <devicetree+bounces-118343-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 128279B9E11
	for <lists+devicetree@lfdr.de>; Sat,  2 Nov 2024 10:03:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C9E8F282F14
	for <lists+devicetree@lfdr.de>; Sat,  2 Nov 2024 09:03:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A66051553B7;
	Sat,  2 Nov 2024 09:03:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kOrVB6+f"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D53E180034
	for <devicetree@vger.kernel.org>; Sat,  2 Nov 2024 09:03:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730538182; cv=none; b=bguybRee6UVrYSZDEQ8LOOGkJuAU6bzvG1/5RYad82BZVzMDopwCgGGmQAkx4xLsWDPNZLaqiVezC833yTD6o090jTM/HyYCWxBUUSMEeEy2C93G63vkqQss35gayVfZ9/roS8HMHGXZXOiTks3NHun8yxSauOEDWgrWx89xE+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730538182; c=relaxed/simple;
	bh=HzU1DeUPcUvBvjQi4CV2MnkDKLQA/sBx5H9IkMcRzLU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RDqJojzWkuDKN2558YeZMz0dacmNvmgc4s89MBn/yn8IzIJ8jAkh5du2D+0SVOg7G4vKPHnU99wMk4FKgUIx69+KCB5f3IpaNQqIkGLZ8MfYGj2AoVrilk0+JbCW/FAFRZ0TIQFfV/CM567G3qlUbDjOTfTxl59Rjnz6p778/7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kOrVB6+f; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4A26aSFX021329
	for <devicetree@vger.kernel.org>; Sat, 2 Nov 2024 09:02:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IemT58dH8wYV0G/gipvzCwLzxZFpLkW+tH4BM+i0Npo=; b=kOrVB6+f6wTeYFNJ
	CBKxDbNWryYEUMZ8AVqdbh3RuCps6THKbZJyhWKY8A35cEB3O0aR4VuiE9Jc/cvi
	/uHwXD6AC7Dt3hPca67I+GPmVlCRLFDXEgXQW0dp7KuHML3VPyNvyJzZnzzIDD4f
	iDVwqvAF2cfzzhTCTUdiXomYjONMPqPCOAjLHV1mdZH9STOymAbSoOv0+P0KAHgq
	/FyVyyEudsGHImyeEyTjWBihZIcZsEGKM7jG3/HlCshYHrPuUDPmt1GuexemXeFO
	kVsVZ7LsMb9CkIIEfW0ECMJB/dXRTDOR3AYqpXoB5+ujYAQ2Y7RlFgDRy3VTUo1i
	08/Y4g==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42nd2s0cfj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 02 Nov 2024 09:02:59 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6cb9afcecb9so8379966d6.1
        for <devicetree@vger.kernel.org>; Sat, 02 Nov 2024 02:02:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730538179; x=1731142979;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IemT58dH8wYV0G/gipvzCwLzxZFpLkW+tH4BM+i0Npo=;
        b=Ne+4UwVm3aCTCdQ+y4BGL5fWKQsfqhcdqVJLRFTodkmouAim0OCpWSJn+llXVweDPK
         OE11PBeB2awwBidE1DfQP0eM5fbqbiWg6q/SJA5+y4urSxEze4VP4rtbe1CrQqVKlz7+
         TWJ/QfZ7u+tUmpZGNWPYENPWrRkobmtJ1Va2K/arMpDWsYl9agyaprEGPwINt0TMV8cW
         vimQA4lMaDHsBKE8WfBb8P+KUBAKIja+w4drWfXPGF7/+FFE0qqGJfoLg2A8Mx9+DnTf
         t3rBBYziDz4azbVCdlDp0rGp1bWvm6lzflCGt10E2sdnOLltNcyeQPnEExue5fG2lbdV
         HsLA==
X-Forwarded-Encrypted: i=1; AJvYcCUXq7isbymqhmRrYqx6OorGcT398hbQ+KyA5tXgOb+JDy8Iw5UWR1H52Oy+l4KgHr1Sueqoz9e2JZSj@vger.kernel.org
X-Gm-Message-State: AOJu0YxR50+9Bf84/TI1rjDFCzSP3Fp6D1EK8VaZNyx/pxNpJy/KUtMi
	a6HYEYoiT4A7lpxykADY1vRSmh/1ZN7WF8wKVS8Y8zDIPH90Xa0UhnUqc4ezwg98AkNHpYqBfqy
	UdCB7N78BJNC15e0yyW5cm0p9FjnHnle6M0JaUhCvoIo5Uk4U/jxaQjibwkd4
X-Received: by 2002:a05:620a:1aa0:b0:7b1:4371:8cec with SMTP id af79cd13be357-7b193f0a11emr1699720585a.7.1730538178734;
        Sat, 02 Nov 2024 02:02:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEBQjVeCl8DXjUgVPPr41pa+vh6gteOB9jie80zysVXdyLkPBey/WmVIOyJ8VIhOyTxQj6Qdg==
X-Received: by 2002:a05:620a:1aa0:b0:7b1:4371:8cec with SMTP id af79cd13be357-7b193f0a11emr1699718885a.7.1730538178266;
        Sat, 02 Nov 2024 02:02:58 -0700 (PDT)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9e56643823sm288208166b.167.2024.11.02.02.02.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 02 Nov 2024 02:02:57 -0700 (PDT)
Message-ID: <463f6a3d-c9a0-4525-8150-8491d6b60d24@oss.qualcomm.com>
Date: Sat, 2 Nov 2024 10:02:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/3] arm64: dts: qcom: sar2130p: add QAR2130P board
 file
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Krishna Kurapati <quic_kriskura@quicinc.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20241102-sar2130p-dt-v4-0-60b7220fd0dd@linaro.org>
 <20241102-sar2130p-dt-v4-3-60b7220fd0dd@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241102-sar2130p-dt-v4-3-60b7220fd0dd@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: cCkwwh-I2gJiMY9dZIIPhTFbwS4LgJZj
X-Proofpoint-GUID: cCkwwh-I2gJiMY9dZIIPhTFbwS4LgJZj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0
 lowpriorityscore=0 mlxlogscore=830 clxscore=1015 suspectscore=0
 adultscore=0 priorityscore=1501 bulkscore=0 mlxscore=0 malwarescore=0
 spamscore=0 impostorscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2409260000 definitions=main-2411020080

On 2.11.2024 4:03 AM, Dmitry Baryshkov wrote:
> Add board DT file for the Qualcomm Snapdragon AR2 Gen1 Smart Viewer
> Development Kit.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


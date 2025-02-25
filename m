Return-Path: <devicetree+bounces-150994-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AA11A44188
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 15:00:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 74A227A9F58
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 13:57:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6293826A1D7;
	Tue, 25 Feb 2025 13:56:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="B2eNZhub"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D30F126A0AB
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 13:56:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740491762; cv=none; b=mNx/cK1Kx4iPSX56JRSQbXZ033ZLQJrY/ZBJKB9Jp1/31JQo/+Ca0CvQVPfEbsWoaFZpClcR3GGkzWXhPeHLHr9f9ErOxm6OBS43xhqIY3Xo69WrPOARlP5BIU9dP6j5KGfMMfpLtk5/o1G+pYF/h+ofPXeZd83WO7dDxq/FcuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740491762; c=relaxed/simple;
	bh=x5xYuov2dPtx6AF6gGPO0PE7JLKs264+raAs4XbHo6s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sYB7qePQlTfi7tXVrA535KHqq+xq2cDarGoo8B/8h/ATgTguO27eB7SLLBLIMS3AlCcATWyqXQlCeAi9lqeRPcT6M2YqRaUZY9zr3cRukLBGcQZC87z8adEzRFuUfk0bP4a9LDZoQoOBeDpkRLdBf51VexsiPpB1tQ5g/e/jfSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=B2eNZhub; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51P8TAM2009903
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 13:55:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vBY5RYMViCND9aWHIb0vvyXsjgb0Fn3HBfOa7+4/rtg=; b=B2eNZhubz34/eSks
	cckq449GJPS7tEuL/u7iRFFjz99viuZvVhiJw5nduwcLqacLfu0CgkDWkNMIdyX/
	CAkiCkTazrlj2uaANecC9fYEZSY4EyxSU3wuHtIdY0Lmq9fzgDweoVgEecaQOntK
	fnQufaDLyXnw8Ga9uNN5TN1U+6lvq5GW8xBz4tXQqD9cn0kQdLcgBa+902ox41qc
	noqaKq4rZGlhKZ9fpQUoX0qvjeIwnvTHlVl7Ud0JphY/OlcOHoNGHwYFIY1XyiFO
	CpHb9c3g/9Wta/VRqy2RpQwvWhBw+B4sxhMN2QZHfz/lvnxHo2nbBVOu1i13U/qC
	6MPr5g==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44y3xnh9ry-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 13:55:59 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c098c6c0caso130735085a.1
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 05:55:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740491759; x=1741096559;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vBY5RYMViCND9aWHIb0vvyXsjgb0Fn3HBfOa7+4/rtg=;
        b=dWpoINtfLqxDhyTAbl+ZqqMcMYpLO5sOc6zGj/o01SJNs9udLXxPSSPnBorNT02tCi
         r3RRrGeJz8/78lvt+nor2FtxQG1NRE2T+rwisyDixKDzTIvM5yZQj8r2eCJh1f0V167u
         yZ5oS0O+E+qnVmGYDeQs2y0wZuG/HCy5mPnfM/SRNT0Qn95ozpMgqXpqlHzaCnZRCUty
         7lrOVSlTQYCcMJVFtKX0u0scd6/hNTu9tcXYtsbFjWJIN4+177Q4PsOLBTg3aCgZ3a7m
         Sm55ncbmW+VgJOuZsgczhBWC7XaMaLzp2aGFdaEWGrJtfvugbxSYZZmbN+SYod2D3Kxd
         3qUw==
X-Forwarded-Encrypted: i=1; AJvYcCUXYBCTzHYCTUTj1dBqC7qjfR/E7PI806yPT1nC3Q+4+GZZlgRMHgaQiNikAerBC/NIu0iiVbysiYfK@vger.kernel.org
X-Gm-Message-State: AOJu0Yxu5QOBWPbK5Sxrlfzyg7UYAoyIzJB2tUcnebHlXlc4JfwqzkqC
	PkYyntUPXjZJUi25tIf5HRkbTAylKWG5H51PDUjXIDlfaLJYPmWNuBb/hNU+FTbDj4jrbmGLC0K
	IEzwwlcjpkaEMPIKczdBErS/7Q1zot6lsoAmSRAXYNY+c9WfL860xh/o00JeC
X-Gm-Gg: ASbGncusCPq8jaMm9RApvVFeSWWARy4TXz5pjfL5WszpMRdTaTNWfRMdMdC25GBTS6a
	iTOYZXypx2z4Se35+uU88RyDjsdLZ+BpZfMMtPQzcg7QmHl5gHOlkwP8EkOoLn6N2OukX9QIhGy
	UrWGkfHT7dV3XjRI2VxSO6X8+D2qq6bmQvY2RWOxTu6I4fRjoxvrY8ommp9j87sOlmOBoqrIKN9
	MmR+wQxo2eoiC7CQPHCCmYm8PIyCUjNZksbFZmbnJdiE2vfyRABSOIyCCm+w0GnmhWIJ5zml4dZ
	ymyFJbyrBexJ2UEnFYK9Eaz10XCqgcpdx6Xiy5SBdhIk2BzcnJzDRA0YT+r19oJTYLxi5w==
X-Received: by 2002:a05:620a:2444:b0:7c0:a1b0:1ef3 with SMTP id af79cd13be357-7c0ceee99a3mr916338785a.3.1740491758833;
        Tue, 25 Feb 2025 05:55:58 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE/PjnVD66AJHeVDtIRjlMA2STxMYD46o5L45WU8s5YvllCmc0/7XQePe7pEpigxyn6R/Byng==
X-Received: by 2002:a05:620a:2444:b0:7c0:a1b0:1ef3 with SMTP id af79cd13be357-7c0ceee99a3mr916337085a.3.1740491758404;
        Tue, 25 Feb 2025 05:55:58 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e460ff863esm1239615a12.62.2025.02.25.05.55.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Feb 2025 05:55:57 -0800 (PST)
Message-ID: <b5ccdc2d-5f3b-4a61-8e14-697468dbd62a@oss.qualcomm.com>
Date: Tue, 25 Feb 2025 14:55:54 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/7] drm/msm/mdp4: register the LVDS PLL as a clock
 provider
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250220-fd-mdp4-lvds-v2-0-15afe5578a31@linaro.org>
 <20250220-fd-mdp4-lvds-v2-3-15afe5578a31@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250220-fd-mdp4-lvds-v2-3-15afe5578a31@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: rpjmoudhACg5tJeZtf1AQqnfqyNRiC7M
X-Proofpoint-GUID: rpjmoudhACg5tJeZtf1AQqnfqyNRiC7M
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-25_04,2025-02-25_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=738 bulkscore=0
 suspectscore=0 mlxscore=0 lowpriorityscore=0 adultscore=0 clxscore=1015
 priorityscore=1501 spamscore=0 malwarescore=0 phishscore=0 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2502250095

On 20.02.2025 12:14 PM, Dmitry Baryshkov wrote:
> The LVDS/LCDC controller uses pixel clock coming from the multimedia
> controller (mmcc) rather than using the PLL directly. Stop using LVDS
> PLL directly and register it as a clock provider. Use lcdc_clk as a
> pixel clock for the LCDC.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


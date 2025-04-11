Return-Path: <devicetree+bounces-166125-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 57B7BA86619
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 21:19:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 689BF8C20B8
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 19:19:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAF4727C14F;
	Fri, 11 Apr 2025 19:19:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="olZiSMTt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A01F2586FE
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 19:19:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744399181; cv=none; b=LbJmPd7XUrlU+iWItCpxGKIbJ/vaR0vLxElOAEFVDhWXLCw+BxfHifimw0/AwavRyVZAHLExvR39pwyWRB3meDeVsGxW6NrnZGc9Uf2y+Wlbk2Nxoezf4zYbcoouRjeQp8Y1HwAVFPB0bnu98+pPqcZBXkekuGONydUPbZzS8KI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744399181; c=relaxed/simple;
	bh=gPvEK8xbGtbsGJI5JrYM/W5LfB9Uq597mHZ/DTGW4w8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MyYM63pWQw7OV2IBE8Uz2bdT3s24iz5Q+FXm2KFoq8owIHD6Y6tIdlWrrvgkTgDy30g0NPQ2/sR5vM7uIjxYg0XyHr4z/rpxsG2tCoan2EuV5bGq6REvmN8DBPqRUS2ZrReOJ2GFqwhlA4vS0DKVvdRNO1yuANtp+rjkozjIU7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=olZiSMTt; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53BFUcK9000667
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 19:19:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Kxx7MOJy6K27Jw+iBYK9PLZCI4w0geAVFknwKXfOHyk=; b=olZiSMTtkwYI5/3c
	CSa10uNf+00+u0lk3xmoL5e57kvrJF/GqItF8pwNp9EPx9cmbTBmrN8BIHldtW7/
	Ii/6uv7wkslH3mNHYWWZlb/cdhTGCwLaFVo16gsLH10FFi4oMiGo4Mz7nEj4A7tv
	9xICJUOtRfRs2P9eR1DCkZ2seHTv68JQ+wKs1GCuQpbYhY0Y/ee4wIwLmiA4ukJy
	6DvIu4XCukxr6lvoRlpOTiT7zFAGwKtbnQPq+mpkC9852IbY5n0uLH78anmicwCv
	WBYhTlwO7FObrJEw+W2KXfIy6nljm4laY/C77DKZ2nDMj/RZBJXsfQPZAp01rWB0
	7aitNg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twd33emb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 19:19:39 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6e8ff8c9dcfso4737606d6.3
        for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 12:19:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744399178; x=1745003978;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Kxx7MOJy6K27Jw+iBYK9PLZCI4w0geAVFknwKXfOHyk=;
        b=Pgga2MEXcAwqQ818DRn0hzEMdOkGlm6OfGTTBw67aqj4gBB7cr4p16kt1DnKYOyZsa
         5UJYxa8ZGCoheh+4diFjvvCUHgoPNjxY5TADUMZ2w/7N9p13logy9UFNvUfscmdC8dq3
         ve8x2Y6j535qJtAJ2VOYtG6iJcHK38wKrGxmZTJdUEb+lsxEBmfT4l82S1v3BdTmGHNM
         lKJZL6OAkglv4g3RLEor1pc1khSQdjBTf9nVUuAGJMrT7Bk2AFCuVYZMN40J8NIXhawv
         8uqbD3Y83Qu38oioMau79T9sLFYyccShoqD+xnYnCc17BOuwJHKUPNOJRuURGHdPy3jH
         KPNw==
X-Forwarded-Encrypted: i=1; AJvYcCUMiUTnka7FcXJsuOLi6BmJIh1w2NWNH4f6MhDwA6WIHvWDjS8cHrw1bNIq/7pmTfqCpV4faL7Q3N7e@vger.kernel.org
X-Gm-Message-State: AOJu0YxReEeoVlnufj5/N8lqHtwpUp3ruhOyCMiagB1VTt/R3bFU63Ip
	JWZ1Vo7gEELA9yMaC3VRENlSuAz+tkGgPsOzsEwnKTOHD/2T7uwKZNjGyD3zodq9tiS1stEQGgK
	jomi5MkTmeFZrpgLRSqj3/D9h5bNYAtR2qjFccp0ZutOgqjxfMBSR0QRh12S3
X-Gm-Gg: ASbGnctY0pLFytW1IkWrnk/mxvKAvHFF6Mq3Xc0R6ejWL12u4HpZn+O4m4pf5QzQ2Id
	g+IJFz0RVF/wueW06GBPTm4BbURoWp5BVw3C+ML4YcB4IbyezCEBpUOJWHzZKHApxNiSZRvrXC3
	l4cD1/r47N0Iowcc3w6yvdjPUPlUSHBailA1qvabgQ0Ytou7SaJ9Gro/hP0HGd/w3NvK7e0w8Ql
	RiOCJPsOpLLj1jjdcZbuVLJFMeIrbuAEcaY5kjwjdpcqiKsY2cHd5RpIf9BbAA6kruqm8ylhZHj
	3mTfXEHZpQXFFS+av7HJAVnZEwOfm6NrqwVqiwCimbb3OunEe3Qali+vVkT4uJPX5A==
X-Received: by 2002:a05:622a:44a:b0:472:1d00:1fc3 with SMTP id d75a77b69052e-4797756280bmr22631391cf.8.1744399178044;
        Fri, 11 Apr 2025 12:19:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE1yQN8h4mg0s3FRgdn1nqenU2AlIRQvoi0Ohbf2iXKwAU3L6tgLpfZVGtHi+4IpHe+ZFIDYw==
X-Received: by 2002:a05:622a:44a:b0:472:1d00:1fc3 with SMTP id d75a77b69052e-4797756280bmr22631221cf.8.1744399177688;
        Fri, 11 Apr 2025 12:19:37 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f36ef56ec5sm1412167a12.22.2025.04.11.12.19.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Apr 2025 12:19:36 -0700 (PDT)
Message-ID: <09a2b79d-d4f5-4ac5-8e8d-c79212b716fa@oss.qualcomm.com>
Date: Fri, 11 Apr 2025 21:19:35 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: qcm2290: Add CCI node
To: Loic Poulain <loic.poulain@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        krzk+dt@kernel.org, robh@kernel.org
References: <20250403102256.101217-1-loic.poulain@oss.qualcomm.com>
 <20250403102256.101217-2-loic.poulain@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250403102256.101217-2-loic.poulain@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: AWlYQhBRaJ_5no6g1BkGvRcANeqbN984
X-Proofpoint-GUID: AWlYQhBRaJ_5no6g1BkGvRcANeqbN984
X-Authority-Analysis: v=2.4 cv=NaLm13D4 c=1 sm=1 tr=0 ts=67f96b4b cx=c_pps a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=vtxEUVkT7waMBiOsAPUA:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-11_07,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 impostorscore=0
 priorityscore=1501 adultscore=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 bulkscore=0 mlxlogscore=763 clxscore=1015 phishscore=0
 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504110122

On 4/3/25 12:22 PM, Loic Poulain wrote:
> Add Camera Control Interface (CCI), supporting two I2C masters.
> 
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


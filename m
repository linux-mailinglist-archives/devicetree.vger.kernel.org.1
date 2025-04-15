Return-Path: <devicetree+bounces-167248-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 60960A89B1A
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 12:52:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 63DA6170E9A
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 10:52:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A11AF297A7C;
	Tue, 15 Apr 2025 10:47:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VhRSWLqW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F46297A79
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:47:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744714068; cv=none; b=jaon0GJpcK5vXq3p4tHKKkNQmER7mmP03dRfBf4Kkm2nWNB9OJs81XaivCnjA5PFGWDlNE+DhVpJExJdlwvwGCV5Rei8EkG1U/VTikn2cKAB7cxlxAScAouD7Rmj/W8CK7EXP3UvwKL6PVWipa2wzpu4WUed+fk/RtuQMFlPqlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744714068; c=relaxed/simple;
	bh=0LEnKeuoJmhEiQP1Qg6HuMLQvWZg8sLSX2wfLEdLIDQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sznyI+5McIJd3ZGfqU5qzmZu8Jsr45M7FOohqnjYfHPbydBli94tcE4IlVLIaCPid77Wd7uiHjh0hXaJ9T2C8caF+ts2xnmmI3qoTRUvkWquuifwLgSzXDy+guS/meVr3bpEIivlLPDHKlSV72gZGjKLSdshyEwcEesS+CJ0ynI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VhRSWLqW; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53F8tMiJ005952
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:47:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NVoKFr3j9LUHGKgglF2+6o+zU2ehLL20G1TS01r2k6I=; b=VhRSWLqWLI4+8j+p
	RbBCYYUFZVzezFDhaDWIZ0E9x2P2eImR83kbIB74OKzT4vq66SNj+EGb8lvPaYhC
	wYaOHqJ7k5GF+AUAxVZhs7HLBvEPvawOHJfPlFHRPDSek/VfeMYNeREfOeAoUyLH
	O0UxyYxZ8J+9qY3uREfbwrJDnNF+Gi1fQxynDTFJsLfiIOFRI7hBN+bYUqdez8gG
	n4krgZfULGshF01FjYhfvWg+aAIRFh2FRTfztN2fX6djaSFKlxNDCXbEwnknjtg9
	wieBlaTm1VQsYr8l3AIE3x5jw4g3m/46E9/dvS9btQy0RTuHuFW/7EbFbgYF8u5D
	rgADVw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ydvj7x4x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:47:46 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c54788bdf7so41571585a.2
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 03:47:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744714065; x=1745318865;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NVoKFr3j9LUHGKgglF2+6o+zU2ehLL20G1TS01r2k6I=;
        b=SsiYCNIVU2nUkmep7fQ1cZ41MKcZKgoXojvhuxR/HHB0hBlpihJFPaxeOx3mlX8Plk
         YvMckCdRtNbnLBEYbV5A77Ehy3FTxcZBxxW1+tjGSfa2BSn+dSNXeioK9bpDkRbF3DU5
         kDHxNWYrKvHKltHioj7wDshrqoUjVC1rByglZs5U3MTY9m7h9Xl8GmrzngBc9qnE7NHG
         x2cIzg42KQsZ9YLXwgY/1kW+p5/CzB0L2Zr0cu6U/ES6O+HGc6SVJri7W7LwMG7gcAHe
         oYjsaHFu+jQ0PYXNEHBDTkrLFCWT+2BLuZC1WrmISs6tB2dlSrFox1NoRf/Ql39fxw+9
         ARhA==
X-Forwarded-Encrypted: i=1; AJvYcCX4f88mSfIK7hRYmdHAoSp09ycdaAnlJfqc8kw+c0uVe9u+0IShK8y9AhjuMamA9O15/1L9s0zzXM+/@vger.kernel.org
X-Gm-Message-State: AOJu0YyfBLHPVq/F0JdlCx85l1GGoH5eZEKa0/PmZ0GOjqgbz7EFZAQG
	CbdBjLBOYSxZJDZMxbWxpVJ2OOlcdfb/g6mlRGb4/fsAOCd57TKS+eXSBbKuOzArPzvx2MGtzGm
	JKKEpIlPc9vyWyTaNgLsgvSQXDgu5JrbpgZEubBNhfumH060GRWQ8NLzKN2Ng
X-Gm-Gg: ASbGncvAX7ydJ9M0/+10vOjFJso9ECWlJ0XBXw9coFE77NJwcAEi5YBpNUDQ/9GM1aC
	zEzlaUs2kjTUK+bGtI8p6kEjui5iNY0hI150X3BRQUbcXTu9qT0Mcv0K6x7VXaih5G7qacxB8Hd
	3Au9BIJQL0PAfNNu5LApaPvUTaj4xbSrjutnXZRixAyhu+FAue7031Tr1DdBa6S1Mzbl1+zu185
	S1FDPsgruRXilBZgV2MROBAWraBmO43ffGoHndXnHXlBwpZNYm/4vW72TixUb/5O9JeTDRLOOMF
	K8btITF+swQplGgNyVICfYxuiL+Yj1luTC/LXMNGqbO3ZGxCxZahsdhCLZha/hIPltc=
X-Received: by 2002:a05:620a:2806:b0:7c0:c42a:707d with SMTP id af79cd13be357-7c7af1d0604mr773125785a.15.1744714064916;
        Tue, 15 Apr 2025 03:47:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE4DxmKbyWtWQ/c0e5VpEfiZYpBlXbrFf7bGjvy3DgpKlGDGxJJDkKDIv2ua9Cf+gkOsSSNfg==
X-Received: by 2002:a05:620a:2806:b0:7c0:c42a:707d with SMTP id af79cd13be357-7c7af1d0604mr773124985a.15.1744714064590;
        Tue, 15 Apr 2025 03:47:44 -0700 (PDT)
Received: from [192.168.65.246] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1ccc001sm1058955266b.126.2025.04.15.03.47.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Apr 2025 03:47:44 -0700 (PDT)
Message-ID: <931366c2-ad47-4552-a4c9-cbe35011817c@oss.qualcomm.com>
Date: Tue, 15 Apr 2025 12:47:42 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 10/20] arm64: dts: qcom: sdm670: use correct size for VBIF
 regions
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20250415-drm-msm-dts-fixes-v1-0-90cd91bdd138@oss.qualcomm.com>
 <20250415-drm-msm-dts-fixes-v1-10-90cd91bdd138@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250415-drm-msm-dts-fixes-v1-10-90cd91bdd138@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=ZIrXmW7b c=1 sm=1 tr=0 ts=67fe3952 cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=da4WsfccAxvekxWPt1gA:9 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: j8R1_cnrPf7GZj6WQKbiQuffVOVSLMW8
X-Proofpoint-ORIG-GUID: j8R1_cnrPf7GZj6WQKbiQuffVOVSLMW8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-15_05,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 suspectscore=0
 clxscore=1015 priorityscore=1501 bulkscore=0 phishscore=0 mlxlogscore=619
 spamscore=0 impostorscore=0 malwarescore=0 mlxscore=0 lowpriorityscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504150075

On 4/15/25 12:26 PM, Dmitry Baryshkov wrote:
> Use allocated region size for VBIF regions as defined by the docs
> (0x3000) instead of just using the last register address.
> 
> Suggested-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Can't 100% confirm, but holds true on sister socs, so:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


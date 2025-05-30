Return-Path: <devicetree+bounces-181755-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D6F46AC8C75
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 12:53:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 904AB4A2DBE
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 10:53:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96F83223DF5;
	Fri, 30 May 2025 10:53:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Cg7+edd0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0846C22126C
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 10:53:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748602391; cv=none; b=mwPEfdkSclu/XwwuE89P+RfHanfVEXdbriB+gBRlOjtrrUHMtLrVJDKcrBdJItGenSwcsLLLcekIPwm1PxmqGp/JxX3IEWyHcOsaY/ze89vyacalYPy42VnHgk5Q9o5WB9CLb5P1hTyrMkLwcspRFQAZrpTZux3McWRo6ljeT08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748602391; c=relaxed/simple;
	bh=BNi0Dd7a3ZFPlrWRHPsWBMyWUo7j4A0e2Uy8Euw5WRI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sWTppZ/T/V1kNKpCrwmuVCOatqkbeO6X0MIvNTLIPSyG8+b4EEZTv84iVHKDpG080hgnLsTngSiPwSjAfca6/b4AeOzk8AqxjvSt2V7tja5uZB7+wyucOJx9hUz65L2nTHlhlhiLmsbsnr+BisBoUFCzFSePFRFPihyBYBlLQ7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Cg7+edd0; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54TN7I19003577
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 10:53:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gJVkXEX6v+g4dW/IugxFRNgld89BKF2lz5ziU7/jd94=; b=Cg7+edd0D++haUPz
	yKYCe2CmofYUebqtRccBKov60xcE10Zn3zxUZErfbuTsxCtXi4x+TDNaCmnWR6db
	hduWyepm//Ybez64ovFl6q4yE8nGudUfuVdQjOZntkMBlIUAk/TsmdoP7KfEt2i3
	HA9Oh107UCQRoX6KSfx/IZ21541DT9G5PrwJ7ePg5DD1dGHMrHZbwAvreqyDZ4kb
	Lv0h77qJTPrOXQeYRf/P/JsZ5VZOoeBqJDm74c6STrhUYou0sj2cQs+dZ3O/+mKw
	RqomKNqIFBl/xu00X1HjhH1R3XU/u1KE9wNrUtUwR4w8VTNrEk9RoB4jsg8HGpXi
	K7dU3Q==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u549rm8e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 10:53:08 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7d0976a24ceso43434785a.2
        for <devicetree@vger.kernel.org>; Fri, 30 May 2025 03:53:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748602388; x=1749207188;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gJVkXEX6v+g4dW/IugxFRNgld89BKF2lz5ziU7/jd94=;
        b=tFgs6xP/4Bn89Pnqr7IlsIrFvp63q7AbhzCtf/tuWYeasVh016tgheMFXx6xVci72p
         nXSvWVzWAvyvEh0cjeo1RDgcFpjIkA+Go0ATYXDUapt4ifenCL4z2rL54mlgcMeQ0fNC
         VzX/4z3pP2E0WMD7TrPk47PcnSEDQTSCDvZVjzeRAx1CehQLuozTkrh4ofykEPxkDsQ/
         fEO9VIU92QFzb3RhNoWaafBktE2kbRtFx/2yuN1yYotHAwo625iEVCK+NWOPj4sc8cGX
         4dyoJmbhwX29Rcfnh2Whw+aA+iF1CCJrp4ouA1TuL96McN+8fgZ93aMc7+ZcMlfZFBIj
         zKhA==
X-Forwarded-Encrypted: i=1; AJvYcCVXbHCsyjeeBNPRvU7KrQZ2Kve7ULrPbUm2O0xsGHw0PSqJNzEbGoOvY2B/MhuuekAQ1CGEn1vug2uP@vger.kernel.org
X-Gm-Message-State: AOJu0YyomByk147u0Wi9wrdwHN0mxIyUodQQbPJ0HROV8DcHDRhKPHcv
	l0XNir50BU/uOBSTU1E0EFl8y6J/Q6N6jSlZLGgRJMpmo7c3wDFfKwrnTGdT1hosZyub9RxPpV/
	uL9eOlhnKuDwLk6hg1Hb6d+zi2YaD7DvAJbfaWVrXiNLsUWmry/Tn3QSF96G0KBekhAXSj/Hc
X-Gm-Gg: ASbGncsnm9ye7GSJ6uGdCrp7AexbSq+Qu30vuSP95HCzxVPjs/pEsBhEt9J2xUAQ3lE
	/2JGkY5lPL8/d2TFiqeXPh1ZGfpEJS1AV8uFQmW1GchLRy/PfK1JsH3k/RlqH9lw4ox8jJZBwAu
	O7Tx1ciQbTNMwTnY1+lyxiGtjEb4e4SoqdhPjQAoDVKunBb33J5AmMeslMFX7RcXGL1BOXdmcVb
	HsjarMvZtTpm2ZCRWJSIcGP8AqYaoeXKFmP1bF5rwPsMZmwUiPVCWehXc16/1HVwKAB9POPINDu
	jGXs7YL3dS8vbvlY1Sr53EFfnOoyqEO7UZIFoPPy53fPIb7TEcp3BaMcEfGMAnLS9g==
X-Received: by 2002:a05:620a:4110:b0:7d0:a0bd:d7ae with SMTP id af79cd13be357-7d0a3d7b291mr118256985a.5.1748602387871;
        Fri, 30 May 2025 03:53:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEX+kHXUt2C/VW9tIjiRdPMxcEe2FZaJPTqu5+DoHzPVF0zM8rFm0up4eW5BqNb+FKxTf0v4A==
X-Received: by 2002:a05:620a:4110:b0:7d0:a0bd:d7ae with SMTP id af79cd13be357-7d0a3d7b291mr118255585a.5.1748602387501;
        Fri, 30 May 2025 03:53:07 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ada5d82e870sm306935466b.53.2025.05.30.03.53.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 May 2025 03:53:06 -0700 (PDT)
Message-ID: <bbc8522b-b261-44aa-9b8d-bb8127a71dc7@oss.qualcomm.com>
Date: Fri, 30 May 2025 12:53:05 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/3] soc: qcom: qcom_stats: Add support to read DDR
 statistic
To: Maulik Shah <maulik.shah@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Doug Anderson <dianders@chromium.org>
References: <20250528-ddr_stats_-v4-0-b4b7dae072dc@oss.qualcomm.com>
 <20250528-ddr_stats_-v4-1-b4b7dae072dc@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250528-ddr_stats_-v4-1-b4b7dae072dc@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: T9Xp4y-PJJ1O072xsQS3y7R_CKk8rSI9
X-Authority-Analysis: v=2.4 cv=E9nNpbdl c=1 sm=1 tr=0 ts=68398e14 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=qHbP_aXdX6d-WoeHiv0A:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTMwMDA5MyBTYWx0ZWRfX5wdAW88PcIGz
 wZZlrTLmzXedQaIV+OgEDVykfoqcsGVO/r8Ou6J3B1kA+97ZTgNoV/A3FyUtkYBBKJJFSJiRdNP
 77csWwORDceSj+jZ7A3biQ8Eu1cHxoE8nznCuVRWTTLfPiNx48L32VohASgMnMZ643KMVbYZO+A
 KOTFdagIs9RwKkoohA93b5yD4x54y87Ou828wgUqLwhPDDkT0uaa6/yRuq8vRfLtSO8fDx3RqKp
 M0nD+JKI2jUWCAqClJmzlV1NejLtJj8OqLbmOAAwMpDEn9oVb4Ly+Yu+l9rAm1vuBmj7ZinXl78
 UETPMhZI1h50aImVmKCkwOnzU8vHpQl1y2AkveSDA+A6mwYDvCv/KchjIdO1gtFQ71qciCuK8dc
 HHoD7QfksqS7zLq5hHBERNf/A8nkZEjuVpFVB+lBJaUNvvNGkLBLXNjqmVHKLHGGzNYybuVv
X-Proofpoint-ORIG-GUID: T9Xp4y-PJJ1O072xsQS3y7R_CKk8rSI9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-30_04,2025-05-29_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 mlxlogscore=779 spamscore=0 malwarescore=0 priorityscore=1501
 adultscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0 suspectscore=0
 clxscore=1015 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505300093

On 5/28/25 11:21 AM, Maulik Shah wrote:
> DDR statistic provide different DDR LPM and DDR frequency statistic.
> Add support to read from MSGRAM and display via debugfs.
> 
> Signed-off-by: Maulik Shah <maulik.shah@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


Return-Path: <devicetree+bounces-130427-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 64B159EFB64
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 19:47:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 20FEB28BCF3
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 18:47:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17065188917;
	Thu, 12 Dec 2024 18:47:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MytoWnSo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7113417E016
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 18:47:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734029252; cv=none; b=KYHNahnBzjNH1hefL42QCmjLqVidcUndPEcl+pItJIxLzhqHsWhdalT/FisuHc4OjHofcAuqPP4EiJSHudT2YL++QGLSz8eRaV8SoOEDMe8IqvEKOszYVXApRv6nLwBV2PFyh9eYrGS6SEsk42EA1/j2wSFwdoo0+HZa+laz1lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734029252; c=relaxed/simple;
	bh=dRBwDdqVsCCEYLwA11HwOnnwTyk4wl1aEnHQ556Jb08=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XAuvtK5g40aJnpWkQ40jAAAnEcYRJPyqQrTrNPbG53s6BLOIqtceu4Vz0VTxv5eKoADT78t3pmor2SgDTJcv+YlHj3rLr2lyimJIsG6AmKnBEY4s6MnYsgFWQEEhn89s8q5L7p4FytLCSlxeSLqa94xuW1fORyaa+snyAZugcJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MytoWnSo; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BCGYIM7003174
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 18:47:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mVNJWdu24OyWB2jkcJ8N7wb3euEWMH8XguJzsbaIJ/s=; b=MytoWnSoV1jWWrpz
	QZ5FYuzg9pwFWurCI3HZM5hybr/E2viiamMoJciRVHUy2HHBdP9xJTQXQCUWfcda
	s56uEOeHsJ5hWTngjVSEbSzBZ18CvWsIJnQv/46Caruz+Pi/0erro15pIztyWF15
	IOoHuU+AEjeZDNBpGNsTqNbb79Jpn32vsE2f3f7rXg+XlKWyJLlOBFamKpCnhkhD
	I9gJ45PJng5px8KeT6yJjlPM8OdVBjrZ6xZozY2Hr+XZOpc0c5knAIXShm+yo1Dt
	C8/qVnt4UnBqCh9d0h1gbw3Q6FKKPDVoXIUZC0hkiWTKrNso69uYZcRuRnTO0qRI
	ZIlDuQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43f0r9xctq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 18:47:29 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-467a0d7fb9fso909081cf.2
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 10:47:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734029248; x=1734634048;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mVNJWdu24OyWB2jkcJ8N7wb3euEWMH8XguJzsbaIJ/s=;
        b=Q8DUOv1Dl7ZsVGlLNZ4eqx1lQ28vnPxLVGDiUF3dpUj244h9dXjuNFIsZzabFtPpXg
         2e+3Ao80kYsEftn03wo5hDqWl5yitxJDrepRLLZDkpRCK8KCB0aOa89TEyYLk+T1KhlR
         SSae4E+VmC0hLk+EIXIfO3yDdo6zTF/Y0Fw1iGTCUcr48Q1I0ZeiILjosrJRtwHxhKd5
         A3Mr/u4CkQRL4hyrU2TpeRTdzulhU9Ie74vNdSVoS1pvf+8UIOAgtdsV+YCJdcdVXbFR
         z02TbWSv5jyxyMptmJqq/rCWx6/dbsoavgvZfyCBe40EFvkrCh8ab1/GcsBFkVXwqZGa
         qf4g==
X-Forwarded-Encrypted: i=1; AJvYcCX3NeKND0zqSHD9J/7k9JJz8OTGXwqEnDsUJ6YS+KOT9icCYcKnLPUuRGwg6l1lC9XkRqe/M/fwcJNe@vger.kernel.org
X-Gm-Message-State: AOJu0YwUUVb/gpx9lVTX5SNJ+HiaQ8/+JxJNzfC3ybLG/UQl3x8DKzix
	cEN3NKqQksvuD8OYLHYH2oUxulz0OhjnvZcNBa5cSpGhfZiRzKcIDbBwwQwvkhahyWOrX5ZKs2b
	XXznFmUES0LzN+4nRplXx7aMUXxLOVGCiPeziVQMv9peukvBPMC+xxND5pfZ5
X-Gm-Gg: ASbGncuHguoKL6PmppjvJ2wvW5Ek4CMMkX7Y/6/FoRu1iSrqds09UwJqVczUPbYvRu4
	vhE/XSsas5AF6GmwKFDSeZSJ9Yja+HD+MDH1DoCObAeA1TyOJesB6rW4yrUlzz++mz4i69g3Dth
	XSqgfhykL9FH/jS/PV2dMekyb7j9X75I0q37AlPhVEftz023RkT2/CKEGvxdrNZKnCL1bsDF1fy
	WP3+T/rzlUvgf77ONcJlQcBc4GrRXrb0jMlKjRaxahLw98LP57rP4CYnhfh0zZkhqs5Oy8pcbB7
	/zWLnrr+CtfQ0+/e9Hj43UD4UTJBL5A0Z02uWg==
X-Received: by 2002:a05:622a:1a09:b0:467:79fc:b009 with SMTP id d75a77b69052e-467a16beaccmr8769581cf.11.1734029248366;
        Thu, 12 Dec 2024 10:47:28 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGvvMQ7lofip2DSWuv2YsHw8pxK/baG/hp3YQw+8Snci4cZdUkEXAtY399JRKgvY3WDHKaA7w==
X-Received: by 2002:a05:622a:1a09:b0:467:79fc:b009 with SMTP id d75a77b69052e-467a16beaccmr8769341cf.11.1734029247995;
        Thu, 12 Dec 2024 10:47:27 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa69c3512f4sm482187966b.2.2024.12.12.10.47.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Dec 2024 10:47:27 -0800 (PST)
Message-ID: <e91fff1f-31d4-46db-bc32-c26f2f8edf67@oss.qualcomm.com>
Date: Thu, 12 Dec 2024 19:47:24 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 02/19] arm64: dts: qcom: sm8350: Fix CDSP memory base
 and length
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Abel Vesa
 <abel.vesa@linaro.org>,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, stable@vger.kernel.org
References: <20241209-dts-qcom-cdsp-mpss-base-address-v2-0-d85a3bd5cced@linaro.org>
 <20241209-dts-qcom-cdsp-mpss-base-address-v2-2-d85a3bd5cced@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241209-dts-qcom-cdsp-mpss-base-address-v2-2-d85a3bd5cced@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: lzrHgRr5UXi6nt06zVggI1dnlQcLRD-k
X-Proofpoint-GUID: lzrHgRr5UXi6nt06zVggI1dnlQcLRD-k
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 impostorscore=0 phishscore=0 spamscore=0 clxscore=1015 mlxlogscore=936
 malwarescore=0 lowpriorityscore=0 mlxscore=0 bulkscore=0 suspectscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412120136

On 9.12.2024 12:02 PM, Krzysztof Kozlowski wrote:
> The address space in CDSP PAS (Peripheral Authentication Service)
> remoteproc node should point to the QDSP PUB address space
> (QDSP6...SS_PUB): 0x0a30_0000 with length of 0x10000.  0x9890_0000,
> value used so far, was copied from downstream DTS, is in the middle of
> RAM/DDR space and downstream DTS describes the PIL loader, which is a
> bit different interface.  Datasheet says that one of the main CDSP
> address spaces is 0x0980_0000, which is oddly similar to 0x9890_0000,
> but quite different.
> 
> Assume existing value (thus downstream DTS) is not really describing the
> intended CDSP PAS region.
> 
> Correct the base address and length, which also moves the node to
> different place to keep things sorted by unit address.  The diff looks
> big, but only the unit address and "reg" property were changed.  This
> should have no functional impact on Linux users, because PAS loader does
> not use this address space at all.
> 
> Fixes: 177fcf0aeda2 ("arm64: dts: qcom: sm8350: Add remoteprocs")
> Cc: <stable@vger.kernel.org>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


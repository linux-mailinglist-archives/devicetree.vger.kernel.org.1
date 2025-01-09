Return-Path: <devicetree+bounces-137135-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 758B9A0790D
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 15:21:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3522D188357B
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 14:22:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D88321A436;
	Thu,  9 Jan 2025 14:21:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ctvc3D3D"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E94F219EB6
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 14:21:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736432511; cv=none; b=RxYpqRDfHdU0FsYbjO8GcIU3iXtXo1gSIRw1Lx5UoVOmRZ+w9rY9HWLNYeR6fqsNAROy0Chaa/OfWyTSYZHuosTVtFs2NJTYSMZ9IUbK8Vt5d59Kld8nSWdSgYoirlD2xPVQpf5LQusgFpjqcgS3+yJLn1W+nGiIiw8LwvSEjUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736432511; c=relaxed/simple;
	bh=F+iWZvIytZWY+7ydCfJ+0znKYlIobZB2c/liUawL9e0=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=NIzoV7LKMn+RnP/nmTjyRP/SHeIurjIT6Sb5AWW1GuJ7PzqLRgygQ9puMelo7fS8pxHyORMoTuByx5CYfyvleEXHvJtUPkcBPZkKiyOEjnEoPZ6prWZNt+qKg4hnXljsr0jWZ20krbFevcLb8Zov6p7wpkDTX2RE29SCn3WfxVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ctvc3D3D; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 509D7pbs010235
	for <devicetree@vger.kernel.org>; Thu, 9 Jan 2025 14:21:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+4I9xtqtxI/6FFPPVHJmQwDgRmNMqfCZbFdmcO+iwCU=; b=Ctvc3D3DLcpCFTCl
	QhaVMBnssUGg2z5BimL2vuqyL1o3fau+2H8nJB3MCl7/5TXZzJDkvcKcK2aLzk2i
	NktwIV4XbQ74W2/0b9iwLKUs95kCa6bt0HX+5JHbIljZcBpp8HcplLMJvCcMkjph
	fwwCv0BqJy+hv46Ycqxk0s5hIV5IDbWSdtR/jZvbcpMa7PQBdRbGO//Awd3dL15/
	GIKdmQiCC9+jUbdSvEH+7kFzdumT/gUeAmj5lytrtTtCohb4Eta3stKpiC2Icn4w
	gy4ZuQ5ADQId8fFAQ2SXobeczy8XAX+osFit702kgGCcIMeLIVV84d9f7xRqi/vA
	1zucXQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 442f2kr5pp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 14:21:49 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-467975f1b53so2336711cf.3
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 06:21:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736432508; x=1737037308;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+4I9xtqtxI/6FFPPVHJmQwDgRmNMqfCZbFdmcO+iwCU=;
        b=oRou022KJQyJPbmNtrmb42v1JTonIbSt+L03p9hbVS7CHpkTPPOj1dPfupCOCuVx0X
         OD4NqmxTT++6fPUIoqcRAjixhZ5QlgdyCwTPAPeRQ5gqoWNO57VumFC4qHULEApTIGgk
         1uO/5rWCsNUKdOUW1sAmOMwlSKlNS70zcJValjg4zKzI+aQYTRDE8egfyQM2UTzeYCn7
         yJVJ7dI77RkT1O3Iu4pZbL6Tdz3572HNITPfqPgp0nbqLfH3IrxRJUMNrSaaJPd9g98y
         K0AYVKuarQKD0pLwSDH7KRed/nqdmACrwOmESPFrSQAsKlTtpks54ORKKSbtMfCnY75y
         o4WA==
X-Forwarded-Encrypted: i=1; AJvYcCWDEFX7RaicuDr2sDq4HofBfzaQWZb3om9qg+Z9dmESBjb+dux9wnWer4NHFrTrP7Vp91MJhLz++dvG@vger.kernel.org
X-Gm-Message-State: AOJu0YzA8PtTXYukV1YvYMxoGIOYPNBt6T8bVNx3b+p2Qg9GHltsbmXL
	8Ne+0dVwLqdtk89jCDceFv7Q/8tU6K2UTaEoDxLr8LRrUiBA2tzBgvS4to0x7Q2nEOdLxphg4W7
	vcYKEDA9Ei1vHsnWUaoq7jQ3MT2X7M3RlqJyQohhhccDtsRRCd/GWZN70xL+lH0rl/qD3
X-Gm-Gg: ASbGncuhCfK8WBLpk1wltkIrfKXIJNUjqmPtpvdBzM5qcHaa8k3k8W0xz5ZX9HSc7+M
	VnBHVBHwhdM/i3vnX7ExjOvFx90sOCiHh5oMgUSYi9wp+MKsj/brfroP6GZXHYgmTroKjpKGCy/
	jZsdPEj7HVcnKmCsqyJhJO6bnc7qb25Xs1ki9++c50nOxWFU4bUmt7UqujC7z8haSZrC50ieUUI
	JhrfNuWoc8645o8EamO7YCIj5EpC4qOWpxatmk85UMxnNPD9jtYfd1kNvRvwPdWkcx26hGxqEeg
	k7a9t13UG2hExgxvS3rkK0CjHbl8KXkhesQ=
X-Received: by 2002:a05:622a:1210:b0:464:af83:ba34 with SMTP id d75a77b69052e-46c71078bf3mr38711791cf.10.1736432507942;
        Thu, 09 Jan 2025 06:21:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG7GewUd76dMLyLY+wEhtmmNRVdqFDKCmt9z6qHo0Z/rWk9fNLdViuUjG+bt3O7srVXBQBGmA==
X-Received: by 2002:a05:622a:1210:b0:464:af83:ba34 with SMTP id d75a77b69052e-46c71078bf3mr38711651cf.10.1736432507622;
        Thu, 09 Jan 2025 06:21:47 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d9900c440bsm633378a12.26.2025.01.09.06.21.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jan 2025 06:21:47 -0800 (PST)
Message-ID: <fb988217-cc2c-45e2-b102-6e85c5aa0238@oss.qualcomm.com>
Date: Thu, 9 Jan 2025 15:21:45 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: Use recommended MBN firmware format in
 DTS example
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250108120530.156928-1-krzysztof.kozlowski@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250108120530.156928-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: A8YgO_vryCeq5s4pdXjpd0krJngwgWxk
X-Proofpoint-ORIG-GUID: A8YgO_vryCeq5s4pdXjpd0krJngwgWxk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 adultscore=0 mlxlogscore=918 clxscore=1015 lowpriorityscore=0
 impostorscore=0 spamscore=0 phishscore=0 bulkscore=0 malwarescore=0
 suspectscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501090115

On 8.01.2025 1:05 PM, Krzysztof Kozlowski wrote:
> All Qualcomm firmwares uploaded to linux-firmware are in MBN format,
> instead of split MDT.  Firmware for boards here is not yet in
> linux-firmware, but if it gets accepted it will be MBN, not MDT.
> 
> Change might affect users of DTS which rely on manually placed firmware
> files, not coming from linux-firmware package.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

As unlikely as it is for most of the boards, I do like this change

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


Return-Path: <devicetree+bounces-144108-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F0252A2CE15
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 21:24:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5710C3A9D6B
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 20:23:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17D2E1A3149;
	Fri,  7 Feb 2025 20:24:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mh1ZZVQp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6F1319A2A3
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 20:23:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738959841; cv=none; b=cFZ8qsdiO3WDmsh21CKr9XBd/s2MTO/N8bIcSM8kjGg2mhyJXgQIUFDteM5kJ2qxEPNrvqLHSVWJzMa1m7KfgkYAKxMRXwkVe5W+LPFZ17cqRBPREHM2YO98ZWw6X74mJPv0zsggFvJdtYGfu3pQmJ5OaRzqyQqm+iqacUZvArM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738959841; c=relaxed/simple;
	bh=egjQMllB3+k3lOaECmT4kWE4WQJMawVgWsZwDrLBuOY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jSEThflGPTfGQeSeWQ0cj4IulSwmGQ98A/z264WCTDuXZ4h5lthBemXQOPNRzRPq72ywnlAJ1TJsT4UMZy/vNxxYmzr+7Y7qlB6gY0kNsanF/VRMH6zZT0DLELXOXOsXmThwrQvmcsvzVV7w9fK0Y7ZcVGVTZX9mHc5/nTcLotU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mh1ZZVQp; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 517B6qB2017351
	for <devicetree@vger.kernel.org>; Fri, 7 Feb 2025 20:23:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lFMK36cFjt7AxMSjvYc/ux9LOfI5AxxB9bO9exg5uBU=; b=mh1ZZVQpfLQawCWo
	0W0/kSZLgXyZXhWCjofe6iQRdZxiC3wMigL8rI7qWgvwkXXUKHq6qxkZR6lr/x0h
	yKKZdLzLdU/TakklVjQEZXIW0fvdrQyOHfBRz1ZBv9psxDQVP7xmsniKxpbA2dxX
	eAlkuL3qbcKuMvbHy/fqapaJVSnIwc1Yr+NyKlkRPFoaPRLO7yaYMNvOocbF/OAS
	wnJWYUsI3EBXJO+9BijhbiOcwWhDH7d0yqrQ3SYyTbwDVJLFLPwe2NBOTMPIJ+Hf
	gDX+WwNE+GJQPzvoTFzBtVeYNkjZMjSGO32F5Ai0M7WBvujTjGxRXXWAll4nZtZw
	DpNW7w==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44nh0w1ace-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 20:23:58 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6e448963aafso2183456d6.3
        for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 12:23:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738959837; x=1739564637;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lFMK36cFjt7AxMSjvYc/ux9LOfI5AxxB9bO9exg5uBU=;
        b=Uzirg+jbCwpSpKHiCDwtzPLP+Lol2HbNSHM3UAofvz0cNKCxz42ZhhsrLMEbXc8KPV
         Jp8d0RIjlt+LF3vY8hR05DmGVSM29UKqWroRl9vlk/SWiQMlXvN1yuuCCEyD1d15aADq
         Ls9tzL/DGIpPlsNk9pvnAgQbJcEMlwL8tjzpXKiMFt1lTNmUpqiI1KTafCE3bAc6wJbH
         5X0f1sP3yPXWPVI0LGu+c9OSwpDcmzBY6GktwuPHZ8klcdlDjFJFzsxD1kwZU84DWA2D
         JWhcl+Bp7obO7/sMrDXHfTtR+7Nim4ElDYeTbI3i0Pe3FPevoKCLKhOuFje++Am/C5Oo
         MHLw==
X-Forwarded-Encrypted: i=1; AJvYcCXS/iuGGmmoAE6J10YMN3YTLLV3Lwwod56IkHdk3pD32hpiId9TY3waOgyAjqWQRkA4CHGd+Vi1yVQ+@vger.kernel.org
X-Gm-Message-State: AOJu0YwsjxnoaEOK6QJb7re47aJmOXBJ4gz27R9ayRUZbndZmluUI9QG
	pthUkF3LN77CWUZ3IOzV8XOvBQnTL5/39dT5v3yjk3Q6yacWvGt0T3BsYJa5HkPinEP7dl11pjb
	minqn+VU0FI1LOHZUea6Kd8qkzl5xMVnB9Dao1Fhwqpom9bW8LSkCR8+UKt8lZXAR8tra
X-Gm-Gg: ASbGncuQnrJNTsCrb0WTYgVfAWmBrB7FbD16/WEVenLyapfYyquH/G0adhkU99bJ+EF
	Y5LSGkqUCOmXPZHOk+9rWbXERZRgoOiuVTlA6xt/XqEHW6Abznh+8KO5NX3mPB1s2CDTTDeQ16a
	moSjYi1nrM9ceT5Dw2b89VDt4N8Jsuku3YthwTMDjO9lgzSXjMoD9udVS++inMRx16tqWh1CiAy
	zINb4QvFujcth/DJlWL5nWDBdmpe1wRkKRwG/4kTV1hn4aP8ETRTXxd0YXb6SLJ6eAo14h/RLSq
	kFegeFzCHDuDXn5oMlEOduJ1XzohdX7KElkDlNoPoIt4UwwBhvV3L9vGIHM=
X-Received: by 2002:a05:622a:64c:b0:461:3cd2:390 with SMTP id d75a77b69052e-47167acb69fmr25559781cf.12.1738959837126;
        Fri, 07 Feb 2025 12:23:57 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHfOKXoFApMhJ6QtE2PUWZAh1oiPCmRbIWwSd3IcovCPv/+UAtw2bYxLPW51FpPfoCUUAk0GQ==
X-Received: by 2002:a05:622a:64c:b0:461:3cd2:390 with SMTP id d75a77b69052e-47167acb69fmr25559581cf.12.1738959836679;
        Fri, 07 Feb 2025 12:23:56 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab78b9b09b3sm175323866b.99.2025.02.07.12.23.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Feb 2025 12:23:56 -0800 (PST)
Message-ID: <efcc2cee-1d8b-45d1-aa9a-4e7afc19d857@oss.qualcomm.com>
Date: Fri, 7 Feb 2025 21:23:54 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sm8650: switch to interrupt-cells 4
 to add PPI partitions
To: Neil Armstrong <neil.armstrong@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250207-topic-sm8650-pmu-ppi-partition-v1-0-dd3ba17b3eea@linaro.org>
 <20250207-topic-sm8650-pmu-ppi-partition-v1-1-dd3ba17b3eea@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250207-topic-sm8650-pmu-ppi-partition-v1-1-dd3ba17b3eea@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 0M_bMnoTjZelqrwZB2nnqBZhBBdq7QRz
X-Proofpoint-ORIG-GUID: 0M_bMnoTjZelqrwZB2nnqBZhBBdq7QRz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-07_09,2025-02-07_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 clxscore=1015 bulkscore=0 suspectscore=0 spamscore=0 priorityscore=1501
 impostorscore=0 mlxlogscore=738 adultscore=0 malwarescore=0 phishscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2501170000 definitions=main-2502070152

On 7.02.2025 11:31 AM, Neil Armstrong wrote:
> The ARM PMUs shares the same per-cpu (PPI) interrupt, so we need to switch
> to interrupt-cells = <4> in the GIC node to allow adding an interrupt
> partition map phandle as the 4th cell value for GIC_PPI interrupts.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---

If I'm reading the core right, we can leave the fourth cell
uninitialized where it makes no sense

Konrad


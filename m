Return-Path: <devicetree+bounces-241567-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 57251C7FE7A
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 11:32:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4897C3A1A08
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 10:32:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DF4B1B86C7;
	Mon, 24 Nov 2025 10:32:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KG2wlsIf";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="O2rxUjab"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B624F241139
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 10:31:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763980320; cv=none; b=U5ol5Lb4pKVzHhxES81vRdo8v7MpOrrJejehkg7AHEb1dJ4jWVH2KH5YjZDo5neShmpiQZVWutEpu7TFpZvwVL1Wt6wFJ8nj1cZuXO8V33K7oxsuNFHT2dv7mivC5voJvhYuPb6G5fd92RKmPRvCgs3UupUvc2I9XG1Bl6820B8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763980320; c=relaxed/simple;
	bh=vF+99ebNgbodzyWUGZQt78adMK8x96CiS/kZhTPfUfk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EtT6GNo0/TH0+qHqPmv5uBQNpvd/O89H5MZPMEctaSDOF/Gt/kLS4EUi/sle8it+Y1SbuFUdlQjijDb1vVlASClAPGTbmAuHjn7v4Ht43GWoJR/Plz9iO4SNWIx+pY3XUZoyeY9t7d4BZy/8uk+Wx8bm4a4kBrVI7x8+JKeD5nQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KG2wlsIf; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=O2rxUjab; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AO8kmbc2689189
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 10:31:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HG5j5Tg5pCke+Ka76jB3SOcWFfLSRkLz/WeVhtLnibo=; b=KG2wlsIf0QT9nS8t
	h3IATuh5XmnEWxe1vGOxh/J9Sg9XXj/gB8n6UXLY5MhnA4JMLqeM0+W0GoZLx0tu
	P+kefFopR9qVrttDsan3TjK3QC88gZ+LPvgqZid6ACAHoS+/GHIFfFLZqPadVsDk
	GtRwZHury5zKwLnKxgWcx/qX4Eon4YWOqo0WxhPr26b4sOCDJuhcyz3o7WlpXqGk
	UI23Us1KDZcKcshCEJss/U9x4K23cBJRRBe7mGGSP8DAnhZ7SRc2AC6na4yEZ9xq
	06AOvCzX4l8sUos9x8b8pLcRNs/kHXa6/NJKn9uwXXoak/mWW8HIQXmFL0+5Fmxj
	bUBX3Q==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ak6ffcn5a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 10:31:57 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4edaa289e0dso21168451cf.3
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 02:31:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763980317; x=1764585117; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HG5j5Tg5pCke+Ka76jB3SOcWFfLSRkLz/WeVhtLnibo=;
        b=O2rxUjabVnjCAGngMVTH+ee0Uc6puyUApcwQWYqJffkiFSY97JxLKg4wwb+0ETLP0S
         nEgRdbtOiQXgbgTVZZ37QsrkiahvLy5Jd3UlxOGJNZrEgFs7yxEm2YCzf/U2TJRsx9Ly
         fdQ/l2r8jfYVajkDYDOpI9PoSSx7V7orMyg2BeRPWLHOBw+JjgF/3QzxYoiqU6fUQn+5
         RvpP63RApr71riUUFciUYBdZTDnbLHcPq0nrEsuZs6u/aD5R7XlxaWKDn+WRypyxhi3O
         GQa5VRUKqLrnnoUEgBWSBwkn6Q20UWWiEloQIOiuWnmbEDuxDykXpnLSfCZ0fJcxDnQ+
         /NjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763980317; x=1764585117;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HG5j5Tg5pCke+Ka76jB3SOcWFfLSRkLz/WeVhtLnibo=;
        b=ToyltiY6l2eyUVRS9YYwkAhkih3prvzA2qd9hGM1ISXPUOsS5I19rnN3iqudfcFG5D
         M8fsMNiG9mQlcl1ohKZ3mlZJQSxDYQ/vuA8MWOeFxcWcXJxiXA+ByYrHE5TZsJSuLHb8
         zw1P1EKYu9i+8ok68fPQdWkbJJjvMbCpuAMODVyTU+3JlF1Hs5yLNqAEj9D4NJm6Toi1
         l8fqnB/THyVI7vfPn4nV+SEdIbyxSrjRJ7KYy4HsURDmmpoXILZIIq+APMSTu4J5VRlP
         4gip4CqTpmh49QD5XwdQr+XAabSECjakTG6hEbnUO3GzeEroXlvhZqVjioHkjLwJfWmQ
         1OZg==
X-Forwarded-Encrypted: i=1; AJvYcCV2ogBfN28F/YKbMnT3H0zEIt66vbU4tFYzsKy/wdgTqfkxQGCIrIxBS5UbGeJFeDdFbAOpW1OBqELk@vger.kernel.org
X-Gm-Message-State: AOJu0YzaqGm0HwUFdv9BDWVzLcQCj3MxpGV10BaIhpNJ9sysPHyyancH
	QvOYwOCYnVWS2z8ulWJO+D9iNgn6DU3VK6nEZs1vFNsXa7TJTCjtP6El/jp24l8bEwnA+dwpqhl
	ShL9JpDVNHfzN8QySAJUDj1BXroNqGnSHprbGWB2uGLzfzfn1VJtGTEuQW+dGJK/h
X-Gm-Gg: ASbGnctDUELeyRPDUlvyaH5e8ATFfmu15mzEu4F9EH24rXYlWzkjEYT0paIeU2ebqum
	V70l/SO2vAgyJX37toTnuhnTVehZs3eg+lM9kaz18xGIRl3Y682Q6eKxWqA3lrHHeuyVCYDF2a3
	2XM/bDGfnh2Clzb/BOUFrJ7PO0Y89AsRyDD88u/bh7RkMKcchp4BbdH6TiQyUccndyPh2jgv+mo
	sgGHwXEj+fadM2QwBSUussBJljAKmkPZaV+41dtV3JvOd8u9tmfFx+58XGfNGEtyrWtcita5W0o
	PPLwveSRk+ZeCZzG394fUfonTRYqh9QaFkrqR8Zkb/sWQa9nbM5KEy4kNzw255l0HUwHL39rJjt
	jQiWKvDUVsEKJu6FPYCztja9M576rzqCjTdpgMA96zeTdVVqv3K6ei6A68aqI/m8K5jc=
X-Received: by 2002:a05:622a:c3:b0:4ee:2580:9bc5 with SMTP id d75a77b69052e-4ee5883ae04mr115382831cf.2.1763980317002;
        Mon, 24 Nov 2025 02:31:57 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGtt5neVVY+2Mtpc3Qp6jDILzNrh/ytlyxhMEtz/t4TIiH7ApPEzOABpUVHFBh6gdGC615ltA==
X-Received: by 2002:a05:622a:c3:b0:4ee:2580:9bc5 with SMTP id d75a77b69052e-4ee5883ae04mr115382641cf.2.1763980316523;
        Mon, 24 Nov 2025 02:31:56 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-645364437b2sm11498837a12.25.2025.11.24.02.31.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Nov 2025 02:31:55 -0800 (PST)
Message-ID: <a6b824d8-9299-475f-bedf-c75d0912e538@oss.qualcomm.com>
Date: Mon, 24 Nov 2025 11:31:53 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/5] ARM: dts: qcom: msm8960: expressatt: Add
 Accelerometer
To: guptarud@gmail.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251122-expressatt_nfc_accel_magn_light-v3-0-78d198632360@gmail.com>
 <20251122-expressatt_nfc_accel_magn_light-v3-5-78d198632360@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251122-expressatt_nfc_accel_magn_light-v3-5-78d198632360@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: UDR_adUx9ZfqJuu0u5IaNIpQ2tLjdA4W
X-Proofpoint-ORIG-GUID: UDR_adUx9ZfqJuu0u5IaNIpQ2tLjdA4W
X-Authority-Analysis: v=2.4 cv=OsxCCi/t c=1 sm=1 tr=0 ts=6924341d cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8
 a=HeSRM4ZExxmZ1UROd4UA:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI0MDA5MyBTYWx0ZWRfXxSIyHjDeYZge
 LdlAxq9rAiMYlMa08o9auJSrcYcxC7YXkPQB5MOlgMHRAiiGwnSvKKuEY7/b94h5Ra5i90q13DN
 ku1yjqdU+Nvp7zswHyMwAGdxgJuYD9itXzcLTchngR/LMMGO+myH3LSQsgLNCgndCG8CEn+a3QA
 dLBdn2xHIRKB7oPayd/YcV5VMiNqHTvqzpt04F4iQ59vO4j9lDzj2AYh+jckLvj8aS7S/BrMGpV
 ZecEfeavJ58+DrmCofFmHuKFIPkouzd3nORBe+kc7Q4Rt2699dHacegB5Olr0i/lin4YpmJhuA7
 wHjhxQWvLg9nsrlu9a6YErUM4GSf6KAtDfcL7Jku8pUY2AFV1WIAfJCprJrBHpUYrXkDMA2p5Lv
 Ev1TpaomhRGz27SC4IQnOKp2AA0kMA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-24_04,2025-11-21_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 suspectscore=0 adultscore=0 bulkscore=0
 malwarescore=0 phishscore=0 lowpriorityscore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511240093

On 11/23/25 7:44 AM, Rudraksha Gupta via B4 Relay wrote:
> From: Rudraksha Gupta <guptarud@gmail.com>
> 
> Add the Bosch Accelerometer.
> 
> Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
> ---

I'm assuming this essentially means "the default settings (no
mount matrix) work out fine"

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


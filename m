Return-Path: <devicetree+bounces-135358-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AE40A00ABB
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 15:43:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 538747A046C
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 14:43:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC7C91FA170;
	Fri,  3 Jan 2025 14:43:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mq5qUyCF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11E8FA47
	for <devicetree@vger.kernel.org>; Fri,  3 Jan 2025 14:43:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735915390; cv=none; b=AF0OUvdAr/UA8Jg3wB7SyWfihBrHDku19ReO+FwlP0IIPfYRmDwT/0QlCt/TCKJiynegCegH8d1WnM9PYSi21Ve+VuAVuu4r2Jgz8+fO9nja33X9GPC8zhaOHqyVLs6dsLCXx9RGN/CvvCySzgHE0zTP/wGwZiBP7PpGOVHk+4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735915390; c=relaxed/simple;
	bh=uxWumylEPjV620S5G0ofjEcWugxp8H6fCTNOr6Nc+pU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ey+fkeihVoAg75E8VcjiXPsLWNiv/+yCv/2nDSNqq/j4ZPbR7ZIu2KvXuRJdYObFORp5UnLz4wL7HIethN0sc7iGwgQ4WOa3pEG2gWpWbNzZlIaIIMsv0978KESWyzB/BjjDsWDvV8nC2K/5CMSBia60pnIEWEwb40nJ9TCyby0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mq5qUyCF; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 503E6rta006584
	for <devicetree@vger.kernel.org>; Fri, 3 Jan 2025 14:43:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0eNM2fmxXFEoTttdl+RKcxEetksK3//yAOZC2Zriq2U=; b=mq5qUyCFEEHS2xuH
	9swj+tHcERJwpMCR/Q0PpjAurTZS9CTORWH2cZY18k7R5M7fsCPqW1YAIccURmY6
	DJQLPhupdSune7P1mLsoMjTdA0UZT0xw+BuVfM0wSNKsfBtGsZR6uHBBMEmyoce2
	vxwtSN+qHl1CBjQzd8wU30CJrsZOHnH6cC38NpKJIhcBvS9MdQTStdveBZBY6v0d
	s5jIKZyGk2aRtQD6wxaiWp5Tv0IVuwWnhcHUOlme4d0XTbjCLQjwy1DnT2n0R0v4
	ANVnh+gQ920aCEee2Yuke6smmlCfyIo9q/zSlaMfB5w/41OVLsuH8TMl0gI5K9MN
	xlpBHg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43xhcb027m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 03 Jan 2025 14:43:07 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-467a437e5feso33476521cf.0
        for <devicetree@vger.kernel.org>; Fri, 03 Jan 2025 06:43:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735915387; x=1736520187;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0eNM2fmxXFEoTttdl+RKcxEetksK3//yAOZC2Zriq2U=;
        b=WLeI6Qidgg8XhHHRcnzgLR1bvFl83L3n8Ms5XJGIPW9HiLRY3GLMEs64rDWjCehZuq
         pAzhKO8bdY8uBWK+I/jN0fSHUMMV5WGmfyK78SjIoZZ8Dvrb+rxXATJCMGHEw5hBcsIY
         RRxz+8DCrlsteNTXOMUPqKIhUtdcW5TDd5Cg9ed7iWx/ClNuMPnXaG0Na4VB5eJfBb4j
         T5nfMBVrAdnaH7JkH2uFyfDL6kj/+48hQUMyTME4Qc4C65FqodAW5fzkFfLx31FmGfXa
         7wD6a/aANoHYhmUQcRv5sW+qRo4bMlMkXMV1r1lUl8pQAa2F9GJhxBj02QaVcTzytwMl
         NarA==
X-Forwarded-Encrypted: i=1; AJvYcCUWGzwf9n/h9Hp4cek6sYiKujX68E487wBjUwy5hrNf+Gq4KwEcP6xN9ROJkGYp+QrzOaM7XXIk3iyR@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4LbGQeXafG60uFHy07TzKGxfdoKQYtUMgmWOr4ArQ+E0I/20R
	QNVgwHmVdhQKydOu2akMmkHH5gYcNFUU69bn9XW5HnznyMB2KDHHGUcYsOFApgBV8iTSsmXwNM3
	yyJMC6QlwkJK0UihtjuVeE+v1pFsLW1mx4MGdp9PkS51mH7OdpQ4YbwZdCJnh
X-Gm-Gg: ASbGncveETewgk28n+xC46FTwxUyaOVCEyGQgZZD9pWgDcBPHCZDSmigsLKoyOU4Ruq
	02oMqDjMPOzxRTEM9Tqf6ejkH00rWKMoRqHQip7fA3TdViVPPhJscnxL4/9qXn0I/p3lHPQM8GM
	O0IvmGPpcSKYz+xzwBkb5X7za94zDzmywLZW3sptcaWQzwCYeuonjM+UGmAC4okh6iFj04/h8eK
	8e1nXNU7twxOU9KJaosTP9jD0afKqozYRWlMDY5A1sMRKzzG96UpTt+ecsDjJhIGTYhNEc4cGGj
	0D2Au5wHWKPQDenfCcKGafFY0D6pB4n+9D4=
X-Received: by 2002:a05:620a:40d2:b0:7b6:d23a:be3e with SMTP id af79cd13be357-7b9ba771993mr2577618285a.5.1735915387015;
        Fri, 03 Jan 2025 06:43:07 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEHrrgeUYSGMyk/6pjGZU75UXfzHamiIOIFUnPhws8QEaEfODUU4xTeXfVjl77J329+7fr7Fg==
X-Received: by 2002:a05:620a:40d2:b0:7b6:d23a:be3e with SMTP id af79cd13be357-7b9ba771993mr2577617285a.5.1735915386671;
        Fri, 03 Jan 2025 06:43:06 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d80678c8dbsm19486058a12.40.2025.01.03.06.43.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Jan 2025 06:43:06 -0800 (PST)
Message-ID: <b305ec90-26b6-4dfa-830a-4ff3acd9caf5@oss.qualcomm.com>
Date: Fri, 3 Jan 2025 15:43:04 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] arm64: dts: qcom: sm8650: rework CPU & GPU thermal
 zones
To: Neil Armstrong <neil.armstrong@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250103-topic-sm8650-thermal-cpu-idle-v1-0-faa1f011ecd9@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250103-topic-sm8650-thermal-cpu-idle-v1-0-faa1f011ecd9@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: mT3u3eVXcB53_j6aQQt9q-1WkVlNzJyb
X-Proofpoint-GUID: mT3u3eVXcB53_j6aQQt9q-1WkVlNzJyb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 mlxlogscore=688
 mlxscore=0 suspectscore=0 adultscore=0 priorityscore=1501 impostorscore=0
 spamscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2501030130

On 3.01.2025 3:38 PM, Neil Armstrong wrote:
> On the SM8650 platform, the dynamic clock and voltage scaling (DCVS) for
> the CPUs and GPU is handled by hardware & firmware using factory and
> form-factor determined parameters in order to maximize frequency while
> keeping the temperature way below the junction temperature where the SoC
> would experience a thermal shutdown if not permanent damages.
> 
> On the other side, the High Level Ooperating System (HLOS), like Linux,
> is able to adjust the CPU and GPU frequency using the internal SoC
> temperature sensors (here tsens) and it's UP/LOW interrupts, but it
> effectly does the same work twice in an less effective manner.
> 
> Let's take the Hardware & Firmware action in account and design the
> thermal zones trip points and cooling devices mapping to use the HLOS
> as a safety warant in case the platform experiences a temperature surge
> to helpfully avoid a thermal shutdown and handle the scenario gracefully.
> 
> On the CPU side, the LMh hardware does the DCVS control loop, so
> let's set higher trip points temperatures closer to the junction
> and thermal shutdown temperatures and add some idle injection cooling
> device with 100% duty cycle for each CPU that would act as emergency
> action to avoid the thermal shutdown.
> 
> On the GPU side, the GPU Management Unit (GMU) acts as the DCVS
> control loop, but since we can't perform idle injection, let's
> also set higher trip points temperatures closer to the junction
> and thermal shutdown temperatures to reduce the GPU frequency only
> as an emergency action before the thermal shutdown.
> 
> Those 2 changes optimizes the thermal management design by avoiding
> concurrent thermal management, calculations & avoidable interrupts
> by moving the HLOS management to a last resort emergency if the
> Hardware & Firmwares fails to avoid a thermal shutdown.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---

Got any numbers to back this?

Konrad


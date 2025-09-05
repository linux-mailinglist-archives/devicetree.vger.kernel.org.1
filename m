Return-Path: <devicetree+bounces-213473-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 27502B4574C
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 14:10:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8E693178B34
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 12:09:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 578AE34AAF1;
	Fri,  5 Sep 2025 12:09:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IGexhjM5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD10A3451DC
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 12:09:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757074185; cv=none; b=dBUnjzz16PMEFCnfJhqJ2U9xloN4PDKdgP7R0QYeQu2Tq15fWo6IO6qKrKBTiS1Doo/U75Hv0InCdrE2Fj9ne4RFBGuVV41aDMi7b6ietrm0fiaQErSJ1JAchUktUX5h5E9tca6rvC9+tszcx8vJJdWlGe7QFm2jRWIXfH/HL+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757074185; c=relaxed/simple;
	bh=YHBkz0h0Rvf+QBxHBQvEoOTPIUgICyaTi8a6q5BhBOs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tWprGsmdKdefzwAhfFZTVUTqmyA4OBU3sHsUAr5vrSHy+v/A0/e01vk2o5xD1R/807ngW7SwizN9w9Iwf8k5/p1DCjr13XIBsD/w3o2zhaD45wgRxMxItTioGNuPS7G8VsRXLwJsc8ismSL0nNq4++quSdLj/bBlFUGavSNQPFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IGexhjM5; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5858ofQH012061
	for <devicetree@vger.kernel.org>; Fri, 5 Sep 2025 12:09:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	V7ghSLZ7heKhs650IbAjk8nclyw1JeB2lIG1BpFKJVs=; b=IGexhjM5a/NcGRFU
	RYU2LhDskGj2CGBjAOpoBE0WjJRvqGwcGd2HzwHJbT7lk/0b5e8IGJrStHqnXJJn
	Kj6KfdUhKsTXhjQPJh9XmCSMIMoA12C0IzKMBzYZOHgkqjxvCwVz+3v4U7rbH34J
	8JMl34fntONWURRhf8MNHMJamDzuyllkoZLkxqyO+VMTLasqm+ni005ReUrcXCen
	PA/V25XUuD3HXfZcgNK41y8SR611oZfu7dQfjk3L1S4e9j3gO7kypAWy7GuJI2hp
	izI+QLtxPgP1DHkK/TP3F0OKajz65ckUuGYaDNOQbTuB388QUE7FSdzwgm5G5JCV
	UX3hQw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48utk9awy5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 12:09:43 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b5eb710c8eso1928771cf.3
        for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 05:09:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757074182; x=1757678982;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=V7ghSLZ7heKhs650IbAjk8nclyw1JeB2lIG1BpFKJVs=;
        b=K27fZLnzkqGhHHqAekMDR6GFI0/O5i+XgHUigAhS5myxASgkja/eMLylms3hcVOCcp
         JVw7XNHVpBKtQ7GXQ8wfn/rICVNr0HNVgVMQbl8iW70+Ak+e6zURQIJihVVRQSUFKmpA
         evpq69xS6axc8iKOiGJhC64JI2ToYSKwt3DTIpmy6aijatfqyl+66xCRiuyLZscSEPpA
         fyFZ3dflMSI+xYlM1xDSdmTEBcSExKDjZ4fD+xjvFEtZ8h62P/kY8Vp0sBP9chN0yVF/
         Jl+OGKEIuzFvvMLrGIf6aaInS9KzvyxDwLBg9ydDauIfrJQxBVxWgQ7XBsE3gq7iIbRo
         SiLw==
X-Forwarded-Encrypted: i=1; AJvYcCXC13TvQebHiSd8bjVIcL2LiMq823ALSP6euMfzteLRoT7tT6Sp2TjuWBnnaZct2EKxEFAnxJXdvrSE@vger.kernel.org
X-Gm-Message-State: AOJu0YxHRO7cNAokotF8K177pgKw+DgMhvpkLTTmRpLGoLuFH8tZiA+u
	NtgftIqSxr3tWu3Bh+Udfv63AzrbdPRnPohmfEIMsWoJ0bV8CtQ8wE7FaE/WywKL4jN64H8EEsY
	vOdX9b05Hx8dI7FsgXCcdBOW4B2jHEuagma0TKkgwhT2jbcipthtjebcotHcEIDiC
X-Gm-Gg: ASbGnctki9q3azDyLap435iVP7CYr23Jkasy7XnnGmAweISauQcew1x9gJP0F/nFM7+
	j1ZW8aB1dAZSLKtFJl8btJu+DgSEFX7x/7vKibhcLEyj2XM2QXSxse4YXmBR2SS3EmSZc9YTE6Z
	x4bsXivMHnHfH6bIjCY1zFG+S+k/i4o5UsvuR9DsT5GCL7syF4nrYnBBC2sSMFbKgZ3Fh0XVM21
	0cKiApu/oWUfdTkFgWCbvNqO3ve3VNs+EDIAa4aTH+aFpK9mRTEgEAgEwTK2K+YGgX0C4FVfsaf
	dCgeSQCoilm5+DOqEJTec11nK6lGsStIoHOfIuQvXk8XG8v3UnVrbohfnF0FbbTsXgaPvEr9WP3
	8ycE28ZUod1fvN5zDBpM5gA==
X-Received: by 2002:a05:622a:295:b0:4b5:a0fb:599e with SMTP id d75a77b69052e-4b5a0fb5d27mr60014601cf.2.1757074181552;
        Fri, 05 Sep 2025 05:09:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF/PGqXh2InjZaarOb7O9uqOEso5Jemelf0KIpqlrqz5P8qaKxyNGfd6p3aVvjCmjCOCb3Hsw==
X-Received: by 2002:a05:622a:295:b0:4b5:a0fb:599e with SMTP id d75a77b69052e-4b5a0fb5d27mr60014111cf.2.1757074180997;
        Fri, 05 Sep 2025 05:09:40 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b040a410817sm1487836266b.101.2025.09.05.05.09.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Sep 2025 05:09:40 -0700 (PDT)
Message-ID: <9694f896-e1f8-427f-bdbf-225706338b7a@oss.qualcomm.com>
Date: Fri, 5 Sep 2025 14:09:37 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 11/14] arm64: dts: qcom: lemans-evk: Enable SDHCI for
 SD Card
To: Wasim Nazir <wasim.nazir@oss.qualcomm.com>,
        Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>
Cc: kernel@oss.qualcomm.com, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, netdev@vger.kernel.org,
        linux-i2c@vger.kernel.org, Monish Chunara <quic_mchunara@quicinc.com>
References: <20250904-lemans-evk-bu-v3-0-8bbaac1f25e8@oss.qualcomm.com>
 <20250904-lemans-evk-bu-v3-11-8bbaac1f25e8@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250904-lemans-evk-bu-v3-11-8bbaac1f25e8@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: PqD3rcFetHbACbcm1osyqQls1c9AaplE
X-Proofpoint-ORIG-GUID: PqD3rcFetHbACbcm1osyqQls1c9AaplE
X-Authority-Analysis: v=2.4 cv=ccnSrmDM c=1 sm=1 tr=0 ts=68bad307 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=3hZAb_iNorm4NPqi49MA:9 a=QEXdDO2ut3YA:10 a=zgiPjhLxNE0A:10
 a=dawVfQjAaf238kedN5IG:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDA0MiBTYWx0ZWRfX60N/FcDsGnYH
 z+Ac2uqMqhjLxa+b6dImJM1FlhVKfquZK4YqItsB4dKVDnYlkf5nZPGS1s7lebtQU2eAQHojMqq
 ac43Vv9JTFcowaHKkS9EWm+TE3eHnrtVLXq9xUrV66KsK9yam3jaQyhe9GQYiaT6IJhnBKBp/km
 hd9ojnXTkUnDg6NAIs6gDOeAMqkN7LyLWS68vaCtoQtLzbTaziU1NuX8iNsXKIC+xaZCQhVJ/K7
 82xtw0y5S1On9Z769Pl478t6zQE9qQrlhBg19KsKft3aQNQbO09j66jorSw6G4Dz6mamIDfHA1f
 ZItHoALp9tQc1yQ6pcmCcyZb1anXfuctTGkk6NyVksrcbxXgDiN4QpWXUfuzMYlVY28O2Zus10t
 +Ut2yi+k
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-05_03,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 priorityscore=1501 impostorscore=0 malwarescore=0
 clxscore=1015 suspectscore=0 spamscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300042

On 9/4/25 6:39 PM, Wasim Nazir wrote:
> From: Monish Chunara <quic_mchunara@quicinc.com>
> 
> Enable the SD Host Controller Interface (SDHCI) on the lemans EVK board
> to support SD card for storage. Also add the corresponding regulators.
> 
> Signed-off-by: Monish Chunara <quic_mchunara@quicinc.com>
> Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


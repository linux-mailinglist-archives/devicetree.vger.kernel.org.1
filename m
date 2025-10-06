Return-Path: <devicetree+bounces-223749-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C1A5BBD4C9
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 10:05:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B3B033A3FF9
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 08:05:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07CE325A357;
	Mon,  6 Oct 2025 08:05:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="S8hZO2eW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 489494A06
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 08:05:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759737931; cv=none; b=abXiNwqxcHh9ZcVOKioNpM9yyZZWIFnGuFRQdxn9XOm73b0+sKRdtHDFCpeDfgToMo0lPf4RvdYk6oK2hw2iNGZmWuTIjHQI/yblM8AqnF98iijnHzMEqR943J/wZxhkb6YTfBxGD1jLy8q/FHPa0BmKCK+1B+29ltrNCzrcwyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759737931; c=relaxed/simple;
	bh=QA5XuDVb2r3T1rUhSUw2wU4hB4uJTsCr6nvMKYFQzzU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Syh+rDyz/U/lOl11ZKQ9bq6R3/CykQliN9D9gNHDTi/gHlfjw4bFbLXCG1VTKXL6o6sutJxvLoKDx6MlsJG5P9/swqhBFYv7M0mLlOMTm+WRRhxHBlLI56JkLRaJaN3Ni0QuCHRtHSO11TQukpMu1LaWzp+Otus1TnViPf97ZZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=S8hZO2eW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5962hBkt026598
	for <devicetree@vger.kernel.org>; Mon, 6 Oct 2025 08:05:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YHQSGZR9GO7rC/pjCE3xxsdC8DURJ2+fIVFYs/vXeMQ=; b=S8hZO2eWAYjlF7yS
	9sM+q5XzvCTMir+y2JSYydRu8Pb/Mus6Bnp9KV8wLl4RB20m203amqSyyA/7OsPH
	X0BJTb8ZIPcWzK7u/Ro/UX6ABEGJTk0YCa0vh1DGIN9Pi8F5dr7DWCIwjiFHxxqx
	PvTB7DwfR3isd9RAXoEcAT/UM1OYzq6lPrd3q+PAuTwZfiYyIZzlcYlbKM3W1hUD
	pHQhZIAPDQGkXggZM60q0a1Yr4efU0Ppev8cYpI+7O7yNqK6P2o2O3n+cc3THgI6
	uHdYMZHkPe6s53hXHcCRQ0HgMl3bPln5OLWRHHIaEo3lEccgYgJy9m/2l8TSR6Nf
	ujuz7Q==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49ju5xb9tw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 08:05:29 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8703ba5a635so143970285a.2
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 01:05:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759737928; x=1760342728;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YHQSGZR9GO7rC/pjCE3xxsdC8DURJ2+fIVFYs/vXeMQ=;
        b=uZRaqyPORWjST/WdFF+qHkso1Y+V6fWIXsN9M8EprchrCKbqmL+dAe/dzORo/SehU+
         vMSCFsDCeRoSKN+UkvTJS7KTbX9O0NucyHyL5WBT2w8+EQI9LRYHiODBUKFJ4wWDHkt5
         5hWiRDm8bGtUyZ1bDd+PefuFACKNdFEptYY5IpHV0qAqIUwBayFjo5/ToOcQfXjWFNgK
         7A6adJmQhaZMEu7VIyGDDnZgifrAcec2dJxpONBKxWcrLkf98EKVFtzKmZX6U3rfoLuP
         HhSro393vo4mHAw9ogeU59zM07NLOROjwnUUvcQLzL9SSK8H0Edmln50YfDrLMVIABTd
         IvPA==
X-Forwarded-Encrypted: i=1; AJvYcCWneuqaeKiEGkOUwzy2P4SipmFwsumxMxVuE3j4d3SJ4giLDcka09jUE+rQau6acxfPcZfg0eCmNWVf@vger.kernel.org
X-Gm-Message-State: AOJu0YwYKg0WTRXTOx2/fAwGAOdFWptDr/xm3GLOWXEvOe7LgGfbPzMK
	CiXFFYZBMHr3NL4xoedQ5HWFBYCc8XbYSYnuqtLqKOR+DVW3oHEAFFB5duhEtF4idRCY/cW5hYB
	D/RdF+6YgYjW94kj45o4iCsHNtQRpduVjrwE4ZaEZcCcOkMd+RGWoItnR16wX46Id
X-Gm-Gg: ASbGncv64+MQ892nVVUnRt0v4r0au5mILQ9JijadxHRwhOd5BZW+FFHmQV+siMK3A+K
	9xQeUcaDQQe2IXzq4SLRYsBF0OllfyWq9ptn5yKKf1fvGvwzaSNNf6NIaogQ460Yuw2ei09/fL3
	Grd87kBOwPSPy12kzmqnUvT/vXdAbrqzie+JRGVtdn1tzso2PJeNouND5oGZz9Bt5RKmKJ1nX2/
	TSRbqSH7gm6LkZiF6duBQ1jjjfQnUdtPSptlKd6r6lMCNOMtuWQUvmgl1oawv++HMO2BbKFUY2t
	C3M6CP7Hi9yZX9DorGF8Otd1qLi7Z5P962aEVcLaa9sOXKbOaO2wJ+sGdqeluijxKTB2eHJSQoN
	KTvwGPfo3goj9j00fxxhgnCoL0ls=
X-Received: by 2002:a05:620a:1a1a:b0:864:1d18:499b with SMTP id af79cd13be357-87a36779e3emr986276485a.5.1759737928246;
        Mon, 06 Oct 2025 01:05:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFiHABiaY7kNoovBaU7TywNPovpCiqTpnopBNDWVEUf2OLmzGt7ShaBnEXJHsNVZXcDkLZ+FA==
X-Received: by 2002:a05:620a:1a1a:b0:864:1d18:499b with SMTP id af79cd13be357-87a36779e3emr986274285a.5.1759737927723;
        Mon, 06 Oct 2025 01:05:27 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b486970b2ffsm1099083366b.47.2025.10.06.01.05.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 01:05:27 -0700 (PDT)
Message-ID: <b85df7d5-01a1-490b-b223-e968a862e9de@oss.qualcomm.com>
Date: Mon, 6 Oct 2025 10:05:25 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sdm630: fix gpu_speed_bin size
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Konrad Dybcio <konradybcio@gmail.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251006-sdm630-fix-gpu-v1-1-44d69bdea59a@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251006-sdm630-fix-gpu-v1-1-44d69bdea59a@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=FooIPmrq c=1 sm=1 tr=0 ts=68e37849 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=19hG_fmFdy9UMJMDlhIA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: y9-YM-UzVmw5_5LXHaNk0OBt6Y0OzgVd
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAyMiBTYWx0ZWRfXxA/R5QiNjazR
 8wUbrYzG+wyJaYiEBv2fiIdBBxxp0oXGPp0rKAtfrjt1H0bJOBclclkHoxIh4iFhyhULg0IUXu9
 M97Z0zxKpbOFDLzrvm2+alZKqHTGP5e3IV4TBZCuiRjJ2RQdn1VT4/LQk/k8qEwPYEJhwtsmGPs
 o6rFrlZX3YSOH5ZQEkyAhRq3fIX9zQBILE0eWLfffJIk0dujsSjWgTe/MXiC5hvWcNEEpMehV8j
 YRQHZxiVyvcaaEEBLt9S1DHGMryyX8bRBhDo2Yo6si1leS7JdVtMY3wGnDtWr5Nw9GstoabopV6
 vSseCFLhUia8HlJBYzxfj7SdCixSSZPRNUl10xqrfLLVbY8rc2Xq0wBBrJZOCIQGGBswjZFrssb
 5qTxvrZzsLT4Y8/8OPgFaT29Nu/KZA==
X-Proofpoint-GUID: y9-YM-UzVmw5_5LXHaNk0OBt6Y0OzgVd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_02,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 suspectscore=0 impostorscore=0 bulkscore=0
 phishscore=0 priorityscore=1501 adultscore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040022

On 10/6/25 12:16 AM, Dmitry Baryshkov wrote:
> Historically sdm630.dtsi has used 1 byte length for the gpu_speed_bin
> cell, although it spans two bytes (offset 5, size 7 bits). It was being
> accepted by the kernel because before the commit 7a06ef751077 ("nvmem:
> core: fix bit offsets of more than one byte") the kernel didn't have
> length check. After this commit nvmem core rejects QFPROM on sdm630 /
> sdm660, making GPU and USB unusable on those platforms.
> 
> Set the size of the gpu_speed_bin cell to 2 bytes, fixing the parsing
> error.
> 
> Fixes: b190fb010664 ("arm64: dts: qcom: sdm630: Add sdm630 dts file")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


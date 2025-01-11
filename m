Return-Path: <devicetree+bounces-137634-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AFEBEA0A29E
	for <lists+devicetree@lfdr.de>; Sat, 11 Jan 2025 11:10:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BE5BC167BEA
	for <lists+devicetree@lfdr.de>; Sat, 11 Jan 2025 10:10:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74F1C18C907;
	Sat, 11 Jan 2025 10:10:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cfjDSllm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1C151632DF
	for <devicetree@vger.kernel.org>; Sat, 11 Jan 2025 10:10:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736590240; cv=none; b=EymxFKLiDS+tGhqlq8F9GMK0CpRmzPsKJccPBu/Jq100wYGhGFZGpNKjJ9Vtr23kzxJzG44ROibLlrVInhLsPpFj1SdYHkRCk+j3i1zMqer9hIvfOhV8kpX1M17mlvHH3vG+immRvBswvAQRFQDRADyPI53qNrY74MzdFk/DrKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736590240; c=relaxed/simple;
	bh=DYzIpi1FWSZxqOT+AYt7RbuggU4pbUUYliGCU5/t3Kc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZzLZI/7vVRZBuvaxU4ZKL9z/TbQxRlRDW78CLHw0804aOYMKnSi2pEKjyQOr2TKkPWlExDs0K0M79AOT7jxB56N1a/zBZLuRgZgpnSa49XFa42Ky49UTPcBg78Q37XkJwDg8idlnQ77pvSqWQUANWTlXMdma2PIs0Bqzv2FDsKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cfjDSllm; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50B9Vjd7020936
	for <devicetree@vger.kernel.org>; Sat, 11 Jan 2025 10:10:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UnuxgClvjFozbsOT8sqLKWU8TGvu4hTXJy0x3/m7Hho=; b=cfjDSllmuVFRGGqZ
	XiAV1LPcn34HsONZgLFmiXRjEvnfMiVLkmc6UJYKHQ+1jS0vFZ0rnN/YcV52VHG1
	s5rBbqXhbnNxGG+TzU07ZtbAT+K25X6gM3vRjf+FgWFRwehZyDz0nKb+XiB90lqR
	F/F/ZXanzt0iMwtWbPM3UvwEaVS0rWlHEkRzCwrnrIpUM1p4q4mhQcU/u6O+9cfN
	3ueaZd+4byjfhsj/idPsxxJG9C3a9oIe7vdwDoItNUP0kcZtiK0VQwDuH5f29Hnj
	xkYBAtw9IJ3HKCUixNACB0Yc29q/M2j0P/K9AAsLmE30fHud8dqVcbcR839A2tAR
	sxhQXA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 443hn1rccv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 11 Jan 2025 10:10:37 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6d880eea0a1so8152926d6.3
        for <devicetree@vger.kernel.org>; Sat, 11 Jan 2025 02:10:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736590237; x=1737195037;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UnuxgClvjFozbsOT8sqLKWU8TGvu4hTXJy0x3/m7Hho=;
        b=SRhgLXwXmNra3jm7wxyeiMx8O1pAYkeCYB6yIgvAx67xQxbneU40ygvczurD7flmJ1
         D5biZPdGTDhgPw+u+ZSi+1ajxJ5nfUl/6reBBlS2fXEedYF89IYY2gOAC12cYBhnCA8d
         jd41VcZ0GvezUWe50gwE3ndtj0Yj9lwLYoqK9xFPdm/HvMZJsPNtNByUwPXgcKTzv5fD
         jsH0z0ZESTOVTlPw4YG2h8HiEg8qOpkGWEQLpsdZGkhOm7Q4xic/WQHRgKgRi41V4z+v
         Ob0QqkLFyQHQT54JUoOgVChTnhFZ2xseEvukVeLZXTn8r3fjdxv/Bow16itb8UkmIj4Y
         wnLA==
X-Forwarded-Encrypted: i=1; AJvYcCU/XYzYk5dpB9U59aKeyZp0eHLmvN8c5ph8QmXSifBNACnbuDHBnsSKwtI5DylMT82MRAjMqHuLHPKt@vger.kernel.org
X-Gm-Message-State: AOJu0YzKwm0doVw6XzkeQLS0EIUaOexIBxg3i11uXC28JKEdwDX8kodz
	Tb3Y7lFcsEJlf8AMjawNLIym2XEvCL6wEHk2WLN2EecqOV9InCLBbYQ2bKtcFI/Bgsea3XtQ8+n
	J/KIZqK/lThuvJhh68UOaHw3StZ3tYYaJ2j8Yc2Ke0HFtVjWSFAsNpeL1i34j
X-Gm-Gg: ASbGnctBU41lZrhREuGIELI1YKDQciPQ4Kf7sYH0KdYET2pHLcpE227vJbdScl8ApJQ
	+ZmszaxEDLFKma/2IqAxV71MkfHFckvpFkQQNB1L+GJSyKhUSgy8dqa369V9M0uF0PZ0bBsgyRj
	dSJQOYPUrWNJ+1NtVXILm6INrmcf+Q1hU/xmwqmuwlo0BiA9dtgb+xaH3P6/rROPTVQSdrEO41j
	6ndMv3lx8+xFBgT6VgwgyRNTfyZNs/2y4a4HoyPnYeh6wNcwf2mhnNAyYhX2u4zw5INczg4qVvQ
	gJzAWN508mVbFE7o/bLnIDpkOHkS7LVWIYs=
X-Received: by 2002:a05:622a:1182:b0:467:692b:754f with SMTP id d75a77b69052e-46c711051c3mr84288061cf.13.1736590236842;
        Sat, 11 Jan 2025 02:10:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHWNijq2qxmRNwN9ql3ZkxBrVgNr63OfXmOG8JAG7lEy/29NQAfBFoNCZY6LEzRTJKWyLoeLA==
X-Received: by 2002:a05:622a:1182:b0:467:692b:754f with SMTP id d75a77b69052e-46c711051c3mr84287931cf.13.1736590236458;
        Sat, 11 Jan 2025 02:10:36 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d99008c371sm2566118a12.11.2025.01.11.02.10.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 11 Jan 2025 02:10:35 -0800 (PST)
Message-ID: <bbcd9275-02ef-4c40-98b9-c85de9c19d86@oss.qualcomm.com>
Date: Sat, 11 Jan 2025 11:10:32 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sc8280xp-pmics: Fix slave ID in
 interrupts configuration
To: Pengyu Luo <mitltlatltl@gmail.com>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250111083209.262269-1-mitltlatltl@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250111083209.262269-1-mitltlatltl@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: katgEyGf5hRYauOedfcErFx02U7VWm3L
X-Proofpoint-ORIG-GUID: katgEyGf5hRYauOedfcErFx02U7VWm3L
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 malwarescore=0 spamscore=0 bulkscore=0 mlxscore=0 suspectscore=0
 impostorscore=0 lowpriorityscore=0 phishscore=0 mlxlogscore=999
 clxscore=1015 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501110087

On 11.01.2025 9:32 AM, Pengyu Luo wrote:
> According to the binding for qcom,spmi-pmic-arb, the cell 1 should be
> slave id, the slave id of pmc8280_2 is 3.
> 
> Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


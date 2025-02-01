Return-Path: <devicetree+bounces-142250-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CA749A249F5
	for <lists+devicetree@lfdr.de>; Sat,  1 Feb 2025 16:37:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 76B5F1884BDB
	for <lists+devicetree@lfdr.de>; Sat,  1 Feb 2025 15:38:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 701A41C2324;
	Sat,  1 Feb 2025 15:37:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mqhd8mWZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16898156861
	for <devicetree@vger.kernel.org>; Sat,  1 Feb 2025 15:37:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738424272; cv=none; b=mQMYt3xPf/P592knDxPsKta/Bf9Be1EPxazXVqKrmlbqyKi1QjJ5lWmmDM1DrUx1Gf6+nQGCWQVFLIjPzuLxlSPpJk4B9+wi6ULn+QzSavo13hgfJRAVBKgprPKfjjBwmMkc/73OgdxSgGEbADFmIG1Xk7J/k7UZmgGc49B8OjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738424272; c=relaxed/simple;
	bh=xnLeFbWG/yCkdqdZVmBco38NhGAlhcasha6YNz/qVnQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KtPM2mZpTRiEW3dP72NWZRvI43RZzC5BomeRnRiPHRuBxxsZuPfC2+Z6O7TB+iz66DLxOWchu3iKRDXCnuim8pYwWoXgjrOafy62VTmsev4l+tjB+ohtOA8vSvvJhor95gqvzifTP1/C1Q7hqTy00c5Tg/kDLdSB3H24DRYt47E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mqhd8mWZ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5115APfi012230
	for <devicetree@vger.kernel.org>; Sat, 1 Feb 2025 15:37:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HUssVuOCocpd98IFz6cyAFLQQdDDcuxYqc1fgyaOkws=; b=mqhd8mWZf7yLJsER
	98f8XmCRZX19khnD45eOEH1zxU28bNlBDRmzy/DR/wfAXoK3/Sb5L5vIpRCYmpKZ
	/E6+EEqe3btYUbJvDJ1NPwNxRTbXdGchvdQcoKHo02L8n6XWiz87fNO4+XJID+pQ
	2CL3kJuY6BjPc7LK3GHAmWJHpc1J/v4BnGGq5X31efn8wqRRGYOStx5B2X5m4+7K
	ibkL6RQr+XjRngqAwNr6bv+svdmTnLl2ekts/iBdONSyZZrZz9gybQ1e9b1tsnin
	FhUBVwmGphz8h/aGEdfNGo3Y2v3YU+DhgFq91nxsu3Xf35NcauSX6YU6iXc7jO5O
	R23WEg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44hd7xh2ry-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 01 Feb 2025 15:37:50 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6dfba8de3cdso8681646d6.0
        for <devicetree@vger.kernel.org>; Sat, 01 Feb 2025 07:37:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738424269; x=1739029069;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HUssVuOCocpd98IFz6cyAFLQQdDDcuxYqc1fgyaOkws=;
        b=OcLVCJUtY8dRKEfYnI5S52SSVEfcxrvc8ew42cH6Da9aTm1tBcKQ5hyZp/9Sq0TatJ
         3CLMaPSduE1agAyLdviZQHqYjvhHj1xMz0nviehZDciHI6g8BJGayW7scKk/dJ7M09og
         moziNBI+GpVGJechzntNEI/x0MNE+jIxVPFXp6jEs5PMG3/ZyvK6CSS9sOLxAg9S0HV+
         eeIQzT0R83hV2Adc13+EK0nzAXQr6Pud1yks2jMHDaUa1zvUgY1VQmXsrqP009FfkUQ2
         vwbNBdI19nRQClgbC0PnCALPirbXq6y4QVucY7ylIYm1fDOMtrwOZJyNkYa+UXVqyGSA
         qbjQ==
X-Forwarded-Encrypted: i=1; AJvYcCV4/GvSZVZWXKB/eTvMoYmau/s20EkJPzOuEQRFpwjXAc0utEvghIP2iacwZXtLk66BO17jF+1h8FY3@vger.kernel.org
X-Gm-Message-State: AOJu0YyKvypRPP4VUXdA9uPrTws5ziEtz9KK5aQ7K2ro7PGtbEDKvHqW
	LymxmyljvEJ8s8Z0ImDMS/lyf7Ret0p/S1BmsJJopxiPVtOzyJRiXV7bGT/mWgWjQgo9E+le75C
	RadhNUl9FJvPXvq7HUwWwsVvcmh6yfPif3+h2L7VLGxn5cr29c8a5Rw6jPRk5
X-Gm-Gg: ASbGncswhQF3ToiReJadHbbJaLEkOObdOWgYrKS2E8vNoYpbOHxuSG2XBD3Zdu4MIvv
	s4LsFbAffCu10c50Tcx+qQoHGgHVh4LttoEgXogu2s/gsRVIDWhOZtCQgC9XQHe8Ig3VKuTLEpy
	m0K0Fczk8NtBHjq7fT26z2PX/xrTmn1yiDaoSiISYJ1KasPwtwJi86uMU8sLt8rL0LVONmTJCAa
	brWvVCFz2c1qNAi7H11yx+q1ZIDER0UWibe91l83eahXod8c28nhx8zvvq2PKwhQphYxtQij44i
	/kg4ZERe2N6YbUw5gaJJCJGSeLtLJmMt/Qww1RDSpvsvPFDIe+dsRbIJVpE=
X-Received: by 2002:a05:620a:d94:b0:7b6:cf60:396e with SMTP id af79cd13be357-7c009b82f8dmr509083785a.12.1738424268829;
        Sat, 01 Feb 2025 07:37:48 -0800 (PST)
X-Google-Smtp-Source: AGHT+IExOjPIWohTIZDAXpfykbxiFOmbm3DOV+kHsTZ/8fDGc6dIin3imNFEhIomc1myYkiCKi/MJQ==
X-Received: by 2002:a05:620a:d94:b0:7b6:cf60:396e with SMTP id af79cd13be357-7c009b82f8dmr509081585a.12.1738424268413;
        Sat, 01 Feb 2025 07:37:48 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab6e4a31f41sm460167866b.144.2025.02.01.07.37.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Feb 2025 07:37:47 -0800 (PST)
Message-ID: <292ed7db-aa9a-4dd3-a887-70e0ccf346c2@oss.qualcomm.com>
Date: Sat, 1 Feb 2025 16:37:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: sm8650: setup gpu thermal with
 higher temperatures
To: neil.armstrong@linaro.org, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250129-topic-sm8650-thermal-cpu-idle-v3-0-62ab1a64098d@linaro.org>
 <20250129-topic-sm8650-thermal-cpu-idle-v3-2-62ab1a64098d@linaro.org>
 <3db4b41c-0d29-468a-875b-eec3cced5aa5@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <3db4b41c-0d29-468a-875b-eec3cced5aa5@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: G98rbXRNOCRTtCUgPksD1vLL1dbaple4
X-Proofpoint-GUID: G98rbXRNOCRTtCUgPksD1vLL1dbaple4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-01_07,2025-01-31_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 mlxscore=0
 clxscore=1015 bulkscore=0 phishscore=0 adultscore=0 priorityscore=1501
 malwarescore=0 mlxlogscore=999 lowpriorityscore=0 impostorscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2501170000 definitions=main-2502010135

On 29.01.2025 3:41 PM, Neil Armstrong wrote:
> On 29/01/2025 10:43, Neil Armstrong wrote:
>> On the SM8650, the dynamic clock and voltage scaling (DCVS) for the GPU
>> is done from the HLOS, but the GPU can achieve a much higher temperature
>> before failing according the the reference downstream implementation.
>>
>> Set higher temperatures in the GPU trip points corresponding to
>> the temperatures provided by Qualcomm in the dowstream source, much
>> closer to the junction temperature and with a higher critical
>> temperature trip in the case the HLOS DCVS cannot handle the
>> temperature surge.
> 
> Since the tsens MAX_THRESHOLD which leads to a system
> monitor thermal shutdown is set at 120C, I need to lower
> the critical and hot trip point, so please ignore this patchset.

Should we make the "critical" trip point something like 110 or so? If
LMH triggers a hard shutdown at 120, the OS will not have any time to
take action. And 120 sounds like we're pushing it quite hard anyway.

Konrad


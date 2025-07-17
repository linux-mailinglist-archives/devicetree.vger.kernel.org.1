Return-Path: <devicetree+bounces-197457-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 52480B095A1
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 22:20:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6CE3B583622
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 20:20:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B8B12253FB;
	Thu, 17 Jul 2025 20:19:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gB0BQhVr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A27B520FAB6
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 20:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752783597; cv=none; b=ovFVviiAx6wc9Nbakb5Au8mR2pUVc6KG9F8JWR3ZlWflpOM4KbAImh5LzoBQsAs+QZaDyIWjr2IVUNQe+Czex4OIMXb05uFHTALKDp3Ij39lt7OK1dNoT3UwnpvWNIY66XPKW8va2dIHSwtQBX/1Wd69BQ76YbJTHbFve+cIhxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752783597; c=relaxed/simple;
	bh=uGvCYrukNZZwoSmrot74EXpAei0dSrGbyqHHO4K6ryk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AUjtiHhgWgEVQMAvpbmvCmVzIzpTWXzzVqO+F+GhRRRVbfemFHfB5bFkgMF2wEUbhgFZQsD2F42uusWY+ZcV3LXGONl9r0oj0wqVbpMYy1c2Xio2NSUOZy5YQN1h1rk5leyVf61QwNRaGXVX1wKUqnAbEmIdizNmewTrfZLe1c8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gB0BQhVr; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56HBw9GA009576
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 20:19:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LCO+Uhw1043gLOruw0DQM2a9wT6gHy7vro34jpT9ZAE=; b=gB0BQhVr53dVptpG
	c5ZEn9wfjTI7bMofr2Uf8QxK9+RhKZzbkxDTFICNDy8yxKhghlWf+qgIiPec94lc
	PMncieHe+1InknedaUo3N37fTUUStJuFhuIQS+G/p6rHlYAjpSxCUnwGXiT9UBeN
	URpNpkXM82HUvkaJEpherRh26SSDKLmDlc0V2rnDp7cUfDwfNRbzX7qB+shsaKw6
	80Vn5C1b6DgkDKlVuRVrI6KVoosNWGkrLlH9cgtlsY4mmhQod9qjqSTVQuCzxQ0y
	6sKxghRgEj6JX+Ttk5crGNd5I/MHHnXuNfSfF3vyOwmBhnAVbvaWqw+CEgjHA7+I
	R7JMzA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ufxb92t1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 20:19:53 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7df5870c8b1so27856485a.0
        for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 13:19:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752783592; x=1753388392;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LCO+Uhw1043gLOruw0DQM2a9wT6gHy7vro34jpT9ZAE=;
        b=nPgPdqt8Cn0+WN5hl6BuqhW3JVnbUFVcXUoq3C10zGnr+BLNPBIynJfVqPMVtDImMq
         8XtIgRp2UMuphGHAYBQXTFJpDT3eWYHa31o8w1yjnQea3m7MX8ff2E5umV7aSXUBKyEd
         sLHt3QUAej02//3f0tmMGU/eRru68HgCfiPmKJbUqhmNtyQSTEf7UAl9HOiubHKxVZip
         78sIdpGMnbLVZOCnFRRrnETMtPfkT22wr/wUtnYo6MJ9UHluLZRm9WuTqsnMu0vA8bUp
         oNKlCgpmdCaAKDkzGwvJXczGFdqvcad0OfFnWG+ImPbtALLwJqnFngeC1U6RAPhMbb+c
         iRyQ==
X-Forwarded-Encrypted: i=1; AJvYcCWga+8mFa3zeKlG3ivt0GbE8ej9lKwYgJnTaYmfZtjDjxJYvRM1feMNpwqMBRGqwouThS2bTKf475sO@vger.kernel.org
X-Gm-Message-State: AOJu0YyCOnkxlx1xD+JU7vMvtPyEgmaMcN8F++KJNGW9WjYXvDYwvvkn
	JBp3BotHTN58y0E2zC0WyLjq+PooX0sXJY3QqCMeHVh7UmowspdtMcS/K6U73EeFZqludonOsDl
	mm6rkgoa6s36lYazZO0NWRL5IhyxviRA/y67pePuCnuNWt6yUNDG5yZD+F/paszyL
X-Gm-Gg: ASbGncskaW3TtlQCFDSOThj017rviRD9diXrbXby/BGuj/bA2ekQA7rqrkl+asproHi
	iIs5H4xZ8hijsOyVUf7eb3UMe8eHydWdhYZxrBV5G8QR8POfuGAaJMD/jxsDF0/GDzHv/DrdJoh
	rEt5BQ+Vos71QJvuRdl+chno0E13KWmOKHUEZPpnFx80JHikHF6hanret7XP/CjkzYlWzPUrqAz
	uI0XYnzq5Cq0omY9vhuKM16f0T0C4orGA8D/1W6YAs2J6uOFlsq+aJJNEMn8ApBoAaVwOxKyISS
	8LRRmeofpjmBUIIZ+Gsnwzzfm0JY0PK0gUGwhfOP2CSFLvmjmcmdZxn0/9AJTAA8Sp3Y9/mS+J9
	FMp6kgPuFiCi4V7VYAw1z
X-Received: by 2002:a05:620a:7001:b0:7e3:3996:f491 with SMTP id af79cd13be357-7e342a5f37emr494234785a.1.1752783592651;
        Thu, 17 Jul 2025 13:19:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHNmxt5o2S/+vAadYSwZx0yX5RUb51pFNWBZpzZIibY18kUapm01ygu3TXq/XZeIrZu1uZPPQ==
X-Received: by 2002:a05:620a:7001:b0:7e3:3996:f491 with SMTP id af79cd13be357-7e342a5f37emr494232585a.1.1752783592100;
        Thu, 17 Jul 2025 13:19:52 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e8266992sm1405498466b.82.2025.07.17.13.19.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Jul 2025 13:19:51 -0700 (PDT)
Message-ID: <1ca25402-8f57-468c-b4d5-7b52f526ab28@oss.qualcomm.com>
Date: Thu, 17 Jul 2025 22:19:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/2] arm64: dts: qcom: add initial support for Samsung
 Galaxy S22
To: Violet <violet@atl.tools>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250716231710.99983-1-violet@atl.tools>
 <20250716231710.99983-3-violet@atl.tools>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250716231710.99983-3-violet@atl.tools>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: FlwWbF7r0-LVeYZ1909xKxpKGJpHTJNv
X-Proofpoint-ORIG-GUID: FlwWbF7r0-LVeYZ1909xKxpKGJpHTJNv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE3MDE3OSBTYWx0ZWRfX3X8g+fT5F/Mp
 g6AmC6oWe135qRV4+KRejrUH0GKjOWlQalf791lCPSvTwVL1W0K5grXPZES8roeFvLp6IshQevr
 NTbi1bvUBQlTjquuElHVJbYhn8WKAgmBRITDwPqzD7jy8B7W2FMxZGvB0NqbYi+YbGEyPtuNoCP
 RSe3aXl8f8vzy1qkTO1M1HXJPSOlfFM5BdMkcE8tQXiCFDrx7dAkdj0+8enPLW2+CxRCjq1uCO7
 ItiW84fxpALhcKWZLpNMXkZLWft8YjAc5+XdZvcs79bwZT2IQrRF1JT+5nbkm94Vj7ubrEjajFu
 aT3H9UvcESfQoVKjcgi/otYCXMRsCTvFebDCniEqxSsM8BIVeDS3vxtZKypO00x8ghPdGpgyEEq
 ReilxQUM+f4VifgA4MOLQf5gWpv2GWZOgE32/4iHuhWRvtssWu7ZCwYaew5OqB7Dh63m5pfg
X-Authority-Analysis: v=2.4 cv=Xc2JzJ55 c=1 sm=1 tr=0 ts=68795ae9 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=Pfut3a2_zQbZhcqyhhUA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-17_03,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 mlxscore=0 priorityscore=1501 adultscore=0 mlxlogscore=999
 phishscore=0 suspectscore=0 spamscore=0 lowpriorityscore=0 impostorscore=0
 clxscore=1015 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507170179

On 7/17/25 1:17 AM, Violet wrote:
> Add new device support for the Samsung Galaxy S22 (SM-S901E) phone
> 
> What works:
> - SimpleFB
> - USB
> 
> Signed-off-by: Violet <violet@atl.tools>
> ---

[...]

> +&tlmm {
> +	gpio-reserved-ranges = <36 4>, <50 1>;

Do you know what these are connected to?

We tend to document it, see e.g. x1-crd.dtsi

> +};
> +
> +&usb_1 {
> +	/* USB 2.0 only */
> +	qcom,select-utmi-as-pipe-clk;

Is that a hardware limitation? I thought these phones had the necessary
pins connected (for DeX)..

> +	status = "okay";

A newline before 'status' is good practice, file-wide

Konrad


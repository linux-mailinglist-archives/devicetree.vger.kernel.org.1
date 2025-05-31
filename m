Return-Path: <devicetree+bounces-181985-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BF7EAC9AA1
	for <lists+devicetree@lfdr.de>; Sat, 31 May 2025 13:01:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 39C2A3A4E01
	for <lists+devicetree@lfdr.de>; Sat, 31 May 2025 11:01:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F0CB238C36;
	Sat, 31 May 2025 11:01:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="H0Wy1B28"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C78821531E3
	for <devicetree@vger.kernel.org>; Sat, 31 May 2025 11:01:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748689295; cv=none; b=QdVaQCX+4P99oONTJvcpiSPQKbuLL3VjH4DmWnYLPDvlhkW3DEN5IbEUaBdB/nM7Aad91GqXa4XUYkjJh9LdQqHszg/fd8v6Y+1MP2JTMt3bYqBYmqz6myRPSiEG+enEpWvRxGSPH98pQg9FYCvGt5cR5WBE2yqor3wYBuHgxmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748689295; c=relaxed/simple;
	bh=9jUhyhtYh/WjEsg9JLIeVwHyR1TB8Sf2degZczTD/RI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=c6GVLACAROfD+71k+qtnNuQ03W7ZDX8tOROhIAAEGMZidFbraoQ1uF3Vcn1S25lwO3Ou7cSIJQOrfpUkMoUBWLH0DCB69cIMRo2Q1cEorvMInv00EJb3WobVdzlf43YZrynhQQlQT8R/cgvnLBR+foKcU9UnTM1iMDsobe28tGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=H0Wy1B28; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54V4HNd9014237
	for <devicetree@vger.kernel.org>; Sat, 31 May 2025 11:01:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aeCiqHx1yrJeitABKFiq1doyQJ7MQ/DROi2v0A5OQEI=; b=H0Wy1B284eB/s2xw
	c+so37/X8FLl+d3vwwquG+v9bcjW5Zu9RWRlLyhhsKKp2ycgECXcRHcpk97//H9y
	qnVoCka/767PcbW2hP/X6xGLX1xqVLwwzHf4A1KhP00Yq0el9THas4gm1KdkQv7p
	dgzsqpgiXw2YMnpB7HBRictwXTLBRM9o6G5PiPG77VgaQjBxgOQ5gwSP6Z9F6fSt
	sLTSncd5RRFmCVK68P1SzuF8E3txzzDnidy6EOetycO4v76r3q8q2hjm3kAvF+kv
	W8+P200zSxjXOxI3Lhu82z0jePcpqnZ+PhefNjHrw2BwT4u9HYC5wIbfFDQIClQZ
	Gcz4Jw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46ytkw8g0g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 31 May 2025 11:01:26 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7d09b74dc4bso62639985a.2
        for <devicetree@vger.kernel.org>; Sat, 31 May 2025 04:01:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748689285; x=1749294085;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aeCiqHx1yrJeitABKFiq1doyQJ7MQ/DROi2v0A5OQEI=;
        b=sT0Rjbk2DcGKMZtT5Amc+BrWGfCbTXmPwE50dn4GdrNjHgwS6PRdHIL/wFjxxmfJdS
         3ldExYoa+LCEXDa9v3hshHI3IxZc8ZkwO2RFKSinlt2xLb1ILTyAkzIiRM1m1tVIb0M/
         zzT55ltDMl7LkpfE5pLxrpIHv1PBlggcyjusk9UP81xl6pMGHihZxYTP693H5T+NsGn6
         aJ6fdmA0+WP/KoEI9lZ+n60hu1zfYKCAHVoLIz72ddKTKywdJjbED+nO6XAnsQZAaOYm
         4hkcP0jUkofL7Xb7MwGqj0hwBo0I2nrwn2umL7wIN32tf59g0GE2wRsEd6g1N6e//jSF
         SP3w==
X-Forwarded-Encrypted: i=1; AJvYcCX3eKtnUbJ5iF5/XyZUlLJOx/31OTxptHaXN0v88NNsrdVc7SLhfQZrDhO1GAZP01S8SVzjl927z7nQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7Hcv9WiMMbRxykA/eOEOAoR2j33FnJ5gBq1Epr39nBCfazE3u
	prCgtM8b1WKx3gSiiBJXAOOqgjLECPJPjc7f6xO39t2H/p8slCHztY6mhTZZ5a4zlVpJIuuATdi
	caAVVK9F2ib+xcExhClCJ+WibHOrtecOmtXRrLKUGMvTRqjNxW03kONXg+Es6qLC5
X-Gm-Gg: ASbGnctdI2tYMYQVeX4rSxxf8VtncR9sWCJWKJ7sLYNBDxt87kM9cMsqaLpFK8MCxxS
	+LBzEqRIincvDFHl7Wjn852unrwy3QhMFUuTvKSFBCogrx4E1d3AZcnBWBLKyj30+mUMrter4Ij
	tqfuB0aC/32UQH/13y5CAy1TQY/qvnLo9jRGFdiBedfFN5VEk/gbMz6kL85wiANHMqPX/Mpr7lT
	xgQHPnV71aD6KaHYnzEn2UnnA1chQWk+EjSTwIhVbT4nrDsmx4p8itJ4g13KPMvFLvjZv0FkQ0T
	fSGuN5SKI7dSMaAar0SzGtJiqAe4DDTxTGKfXV5ZujyrpVc0Hp0GjCUPOGtfjuWrIw==
X-Received: by 2002:a05:620a:600b:b0:7c0:b106:94ba with SMTP id af79cd13be357-7d0a3d9e14amr283128285a.7.1748689285469;
        Sat, 31 May 2025 04:01:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFPhz34bJwNdP2FlxXdeGr04uffjVcOkUPbyMNe8pUCP22/47kesOrRkNv+OJ5Cac778GzJ5Q==
X-Received: by 2002:a05:620a:600b:b0:7c0:b106:94ba with SMTP id af79cd13be357-7d0a3d9e14amr283126085a.7.1748689285050;
        Sat, 31 May 2025 04:01:25 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60566c2abb4sm3098010a12.13.2025.05.31.04.01.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 May 2025 04:01:24 -0700 (PDT)
Message-ID: <171f207c-85dc-4610-aa1f-9c986f7004f6@oss.qualcomm.com>
Date: Sat, 31 May 2025 13:01:21 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/5] arm64: dts: qcom: ipq5018: Add MDIO buses
To: george.moussalem@outlook.com, Andrew Lunn <andrew@lunn.ch>,
        Heiner Kallweit <hkallweit1@gmail.com>,
        Russell King
 <linux@armlinux.org.uk>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org
References: <20250528-ipq5018-ge-phy-v2-0-dd063674c71c@outlook.com>
 <20250528-ipq5018-ge-phy-v2-4-dd063674c71c@outlook.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250528-ipq5018-ge-phy-v2-4-dd063674c71c@outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=JIE7s9Kb c=1 sm=1 tr=0 ts=683ae186 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=UqCG9HQmAAAA:8 a=EUspDBNiAAAA:8
 a=WGRY1n-6GeFXo4cNehYA:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: uLNYUuXSR7nMCqa15Mm_qBIHVBSJVq0J
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTMxMDA5OCBTYWx0ZWRfX/ZbbVaNrrK/t
 NJDnwhSk8MBgSTyQCiAB+9a4bk7pCXIGIq+NtonQ2uMZu3QOkjLyrAd30bmaXhtopG97FDP4JFG
 AYbnTGxuMIWFEZfMJ+niSz3mLCXGSxdzqBaBXGakpHq7GMn8V1n7vgK/mwRW/uskVzwKHmqvaDZ
 RkO/TnfCN23bLI0x9VWc5P5XfLvZkcGuOt+8Q8JP27blOUpRDawHCkgibcEwG0/Mq9pDFeX+MXu
 OS/0vn8XsqIcH6DP4g/AMPa/IGI1RHDy/fQWcjv0VrXwiCr0Y9yagf6j/9snkB4ysK1+jvFxNHu
 qAbJSMstiamAq7HToWl80gg9cdTy69lZa8QaTeF0AI2JbIcNfY5azlOTbrqTgWCTNtixDi568Y8
 STFFw/ZuXuG/mhzPt3wsdSHD4oC1CfhXuqFiyr2wcLOIiQUukW6pH2UZK2X3Xjt5S7C0P6tu
X-Proofpoint-ORIG-GUID: uLNYUuXSR7nMCqa15Mm_qBIHVBSJVq0J
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-31_05,2025-05-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=705 priorityscore=1501 suspectscore=0 adultscore=0 phishscore=0
 spamscore=0 impostorscore=0 clxscore=1015 malwarescore=0 lowpriorityscore=0
 mlxscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505310098

On 5/28/25 4:45 PM, George Moussalem via B4 Relay wrote:
> From: George Moussalem <george.moussalem@outlook.com>
> 
> IPQ5018 contains two mdio buses of which one bus is used to control the
> SoC's internal GE PHY, while the other bus is connected to external PHYs
> or switches.
> 
> There's already support for IPQ5018 in the mdio-ipq4019 driver, so let's
> simply add the mdio nodes for them.
> 
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


Return-Path: <devicetree+bounces-139145-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F8F2A143F0
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 22:20:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 52686188DCAF
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 21:20:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CA471D6DD4;
	Thu, 16 Jan 2025 21:20:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QfFbxePr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C036A19F40A
	for <devicetree@vger.kernel.org>; Thu, 16 Jan 2025 21:20:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737062445; cv=none; b=jQVyZgxK9UqTm7kyJa2H9TLwAyuN3a3LCbUWXx9ta2Hkqp7ZkiLHXv6wYvyFN4fmaOJiKcjL7dDxYG0Yn44VgOEsAi4Q7sWDBeAXdGDolWJZuCLAB9FPnoGYyzjVGHtnwyl8Pf+pl6RuozPcVBlreW4L1HyGE5GHfpYw+826qBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737062445; c=relaxed/simple;
	bh=qK+wncxm31mD/maGitMUBvjxrpy3bHgWE5lfS4yYLPo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RSqLbmRTRWVP/ef9ZtiZTR0x0UM2zkaNHRCbD6Jv4q5iREjHe2CvOYknN37307e4NyRFSFQuG3dcreuqV0mFsLpEPgh1x4O9y9x8kHOrd0X1InSTjbS9190vucugQat6qeAtaAlDTRPIAdzQjgpQFbSuRKXA4DAa5Ik08m6sJBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QfFbxePr; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50GKLgkX001372
	for <devicetree@vger.kernel.org>; Thu, 16 Jan 2025 21:20:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	p4+iURHMJ/3P1OKcHzNKlW7F2BB92q0ebLi8TSRBwYg=; b=QfFbxePrw4Ly0M4+
	kkor1BtKMiIpRR7fUfT7RsKXa4W8UKG+OAMf5IVO/oCkzvtSSMSnaXO3T6JYGU0a
	8p+MWvDDxW201y/S2nscmUZi5o11sp47ZQi7dqdFepkq+/WL86A8CrTa5HMyOv69
	HydHcuSHgHPMyeayCjhEfTmSoCs8wqZDDraK6qXyWL8E6uiDGUvVnLrLGEqViaKT
	SgB/G5GJ5Ix+8FNBlGJJem/2q5E/GZ0AOsAscUtXD3yyzGsTR0t6u+y7p/WPTByl
	7jQ8E50LnOrRHLfdrPllqb+1sz/zKgpzgsyf3Rk5Zs2vj7gz6nnpUgk8KM80Ickt
	ynBC7w==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 447933036q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 16 Jan 2025 21:20:42 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-467a0d7fb9fso3317131cf.2
        for <devicetree@vger.kernel.org>; Thu, 16 Jan 2025 13:20:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737062442; x=1737667242;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=p4+iURHMJ/3P1OKcHzNKlW7F2BB92q0ebLi8TSRBwYg=;
        b=omInCF7CyOOE1EUKrA07wXNmCmX3OPg/2RGTZDHlpiGAWvQKifZVKWQckhhANUWDlp
         32kttIJruXV7kNn+mHGQu52i/imZ8+eG4xcA+CsYraIb2WpHMMYlUzHM4yA/nqQfo9cz
         54e2HsN4WYuklRDCavo5vImNA6F5qIHhQKYBe2GwhTCtgFoi3lHE+xLhSORzW8TJ8RzG
         A5PhsA7vHRJZM/lJT/F2ilVNg6leIxCgb8lE2d9+r990ugR8by5TrNQ6BJx3GWSAiiO3
         uFkODmS1AIQ9LhfkbyFT1FMsDkMJx6EFxAmIm1rnhMCuYkWG5tCpNZnkMhMMuPAKekQw
         GGag==
X-Forwarded-Encrypted: i=1; AJvYcCWut51ShKA+LU0+rxkfOB/7J/uGjfmMxWPnYo2IbNexC+B6wwSXO46Vx0qnuITiMvMfFycTNWjPUoPh@vger.kernel.org
X-Gm-Message-State: AOJu0YyBqoOn/x3fI97AOa9DJV5RGZnRln31gFFh8T+n7aLnt5DDYgNW
	btrJzKV26J/OTxao0TOi+kjEWSLoN88Jvzmd7AGiMn3UpJXH/pkH/TMy8MhYMFXhg3nRBTPcqXu
	D7BblyvtKCaSWJtBpxAQTKEgQsh5WPIreGSz5tp2OzHRnst42SCgV12dzK+Y3Wrf5pSIJ
X-Gm-Gg: ASbGnctEnSJDOTCIH/oKX6kT1IxPXIfK5iL8THemDFBTtjKRQMUSCeWKmg0KbONkdFf
	CdyW+/jId3VXc7Mc6XXZNGt7JiVgsOCeaiMnhrRXGvXvZC6YXPJnCANNTCQM7gWVM4RKC28SVXI
	ZpA7a3pj4Kxv4muuIxP9Mti/ba5EloPJezV5lI0RXZ06BSMAmR3MU0mvMzox4BTsjENGycYScKy
	OgEkSynjaxwFkoBeihtDFIVK5zpkFX/koFSa49Mn3/PHQjfq1CxUgP116wlHZOY4rrQP01PWEdT
	olpDPdgI49+p6F9yCAon52WN1M4/sJGxrN0=
X-Received: by 2002:ac8:5f48:0:b0:458:2619:457e with SMTP id d75a77b69052e-46e12b68001mr1052871cf.10.1737062441600;
        Thu, 16 Jan 2025 13:20:41 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHbidw2dOxBfe5x4dYMaMTXs5soDblBvwSuwcOzlFRsReaxuKsdNKV7dMYo6uwrDlzwvTdB7g==
X-Received: by 2002:ac8:5f48:0:b0:458:2619:457e with SMTP id d75a77b69052e-46e12b68001mr1052671cf.10.1737062441252;
        Thu, 16 Jan 2025 13:20:41 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab384c636b4sm53182266b.15.2025.01.16.13.20.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Jan 2025 13:20:40 -0800 (PST)
Message-ID: <56023e4f-d60b-41c3-a3c9-ba768613e9b2@oss.qualcomm.com>
Date: Thu, 16 Jan 2025 22:20:38 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: sm8650: setup gpu thermal with
 higher temperatures
To: Akhil P Oommen <quic_akhilpo@quicinc.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250110-topic-sm8650-thermal-cpu-idle-v2-0-5787ad79abbb@linaro.org>
 <20250110-topic-sm8650-thermal-cpu-idle-v2-2-5787ad79abbb@linaro.org>
 <8fc3b958-5c2f-4c79-8dc0-d1eec9f5e47d@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <8fc3b958-5c2f-4c79-8dc0-d1eec9f5e47d@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: fSYz9jFRIuugIk3GMfJNCdS4FlDECGec
X-Proofpoint-GUID: fSYz9jFRIuugIk3GMfJNCdS4FlDECGec
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-16_09,2025-01-16_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 mlxscore=0
 phishscore=0 clxscore=1015 bulkscore=0 suspectscore=0 malwarescore=0
 mlxlogscore=999 spamscore=0 impostorscore=0 priorityscore=1501
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501160157

On 13.01.2025 11:28 AM, Akhil P Oommen wrote:
> On 1/10/2025 4:06 PM, Neil Armstrong wrote:
>> On the SM8650, the dynamic clock and voltage scaling (DCVS) for the GPU
>> is done in an hardware controlled loop by the GPU Management Unit (GMU).
>>
>> Since the GMU does a better job at maintaining the GPUs temperature in an
>> acceptable range by taking in account more parameters like the die
>> characteristics or other internal sensors, it makes no sense to try
>> and reproduce a similar set of constraints with the Linux devfreq thermal
>> core.
> 
> Just FYI, this description is incorrect. SM8650's GMU doesn't do any
> sort of thermal management.

What's this for then? Just reacting to thermal pressure?

https://git.codelinaro.org/clo/le/platform/vendor/qcom/opensource/graphics-kernel/-/commit/e4387d101d14965c8f2c67e10a6a9499c1a88af4

Konrad


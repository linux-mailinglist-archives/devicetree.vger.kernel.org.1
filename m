Return-Path: <devicetree+bounces-143714-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 164FEA2B272
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 20:41:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 51CE33A30CA
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 19:40:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 266DE1A9B3D;
	Thu,  6 Feb 2025 19:40:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JEiWV6ZM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E27E1A9B24
	for <devicetree@vger.kernel.org>; Thu,  6 Feb 2025 19:40:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738870855; cv=none; b=CeRXoCpdypDCJmN1hx+sFVWF3uUv+/tTkdSF/K10jg+PULFsAfMsEMAefk9s05PVn8EmS7D7coV/skA/SnOtg2dNXrB9cU4apbe7fN3RJw5aG0OkT3E6z/Z9W58mZAzuBz+4xXF/IiVZctgErDeTFCqnBjhm6Bnf1tANMcU9lBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738870855; c=relaxed/simple;
	bh=kzFOt+hUFf2hH0dfSHzEMgZGBx5oqybElRnsgUP9O+I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IWyQcrV3rwSQQeAG8iUT520Dmzxf7LbbazQ/zOtA8vJLqqoGNvLo/xHaMLaVDP+g7+2pOY/5F7lZlg5wZO4aUxAVda+6t2Svpv+tYKDfKkgcUNj2Uah7lv3QtTLZnE1QwFHSEaBjLltqy4BVrPgvr8KRZwXfGphjpDSl/wpMX8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JEiWV6ZM; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 516E4uZX014580
	for <devicetree@vger.kernel.org>; Thu, 6 Feb 2025 19:40:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kzFOt+hUFf2hH0dfSHzEMgZGBx5oqybElRnsgUP9O+I=; b=JEiWV6ZMs6Rcgd6m
	Rk5pSE6UsQbQ/v6Uoj16oVvB23CD8gYVux7FGaIrFWWCPTwm7FqtlWfGJypfJaKt
	/cYCSImgiP6PQ+b9UscfGuuL/Pty1N6DafI5ypBRjxcW0gBYHDoH/oRunhFw2Ynr
	LQQdf8cJXJ7SAkCPFc6mi1l+CPlaBUzKQ3xGMlnLVNQkP2DO/Zsx217gzeD8JiPf
	pizf24t7hCX9KvMUxjn6QEXbphRS2umZR1E/E+Yx1Dqeg10UHc9NgzRokhCVjYvu
	Zor2Dwow+V8FNBFuceikJQbbejD0k7mbtCUrpgdPmEomAiuSXP7NIA0rq5QWG7ur
	YmdOpQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44mxhbru6b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 06 Feb 2025 19:40:52 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6e4287d04e4so3540666d6.3
        for <devicetree@vger.kernel.org>; Thu, 06 Feb 2025 11:40:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738870851; x=1739475651;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kzFOt+hUFf2hH0dfSHzEMgZGBx5oqybElRnsgUP9O+I=;
        b=t0hqZ6ezIjOnW/5G0yE4nvRB3SdFo4dAoRKOHB+eqEPCq8FTYKtf9xBew1Wi4yDQoF
         vlzkRnWpmqf7tdhapWrQ4NBlgNVYu3+GqNaqpS3FNsGbV70pUm8zvw/R952LD15gB1wg
         TKUmf2k3FFzKRS56GKIJza3nKLsTGdgcmgz2AngAsSfJmezxTSgehy/hIPXR4ca2E1AG
         N+0OolTkEsHC9CAwpO8dgr+QcOko5elTWGaT8CyUEuAauKi9RIcILmwQaKwPtqpgGvvd
         v3sQBMNuKGicUOGGQ19R7/u/QL8twdbH2v2Rp6ZfovenZVJFAMidGJs6V+G70+F4ycyP
         k8cA==
X-Forwarded-Encrypted: i=1; AJvYcCWiyhS8dHciB0zBKOOSrFpW03bG06jYSWVjO8CVsPiB1tvu8dxh/zy2ElXroe0CiEy585rgnemvRJi7@vger.kernel.org
X-Gm-Message-State: AOJu0Yye+0v0vpJDNFCHAamhdk3/jEb3QOrUBAd8/jy7RsD9bWfGMevz
	u91z3t+sQqAAYj+0+erOGhTaN3GVntAtBZULLxsci2/VuObH4/jF1rk9PXeYJmNOM5bBHmnqtg/
	y5wCfSsTpgrQP7G7h9l0TutNKDSc91sYuyy02tpRydnVwPHijfPSsVV0bWnAa
X-Gm-Gg: ASbGnctFc56Mc0OY0Ft06M1/AQmhHWyLySNz5E+I+6uqWV6HKEVd6QOGDk/e6OK3mcc
	BI/2GopFNxVqKrv++/+APMcxewtJbdepf1au+oMhYQCHTmKhIB8Pb4JDMrXx059AxllEwgDcVIV
	ZXvbT45d3hyKZUOziMOSptEtE798wmM37zhet8/farqklU+gHTf2akxgsCiTa+8U4zAqAirCWho
	wLWGkRNnJDEgHWxCZsNb8qXqR6N1mM/ReSGO3vzLsWBdlmlyW3XLN4DlwOJVzs1u2Q8dHolNdCG
	KKALRRS21burkp5p5YNb4g==
X-Received: by 2002:a05:622a:3cc:b0:46c:86d8:fbc with SMTP id d75a77b69052e-47167ad1375mr2774321cf.11.1738870851163;
        Thu, 06 Feb 2025 11:40:51 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGK2GFCexxJpENqKGcHNEyCUS9NksWXDELz9dkEmRkjk/gHfsgg3nLmQnccU+pMc4HP4PrA1g==
X-Received: by 2002:a05:622a:3cc:b0:46c:86d8:fbc with SMTP id d75a77b69052e-47167ad1375mr2774141cf.11.1738870850809;
        Thu, 06 Feb 2025 11:40:50 -0800 (PST)
Received: from [192.168.65.90] ([78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab772f8460csm145266866b.62.2025.02.06.11.40.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Feb 2025 11:40:50 -0800 (PST)
Message-ID: <1ded2597-d5a1-44be-b5d2-30b70657730e@oss.qualcomm.com>
Date: Thu, 6 Feb 2025 20:40:43 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/2] arm64: dts: qcom: ipq9574: Fix USB vdd info
To: Varadarajan Narayanan <quic_varada@quicinc.com>, lgirdwood@gmail.com,
        broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        agross@kernel.org, dmitry.baryshkov@linaro.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Cc: stable@vger.kernel.org
References: <20250205074657.4142365-1-quic_varada@quicinc.com>
 <20250205074657.4142365-3-quic_varada@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250205074657.4142365-3-quic_varada@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: nLA250LtE38Jzh79BPCLwsOJMWmo80Uj
X-Proofpoint-GUID: nLA250LtE38Jzh79BPCLwsOJMWmo80Uj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-06_06,2025-02-05_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 impostorscore=0
 malwarescore=0 adultscore=0 lowpriorityscore=0 suspectscore=0 phishscore=0
 mlxlogscore=598 priorityscore=1501 mlxscore=0 clxscore=1015 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2501170000
 definitions=main-2502060156

On 5.02.2025 8:46 AM, Varadarajan Narayanan wrote:
> USB phys in ipq9574 use the 'L5' regulator. The commit
> ec4f047679d5 ("arm64: dts: qcom: ipq9574: Enable USB")
> incorrectly specified it as 'L2'. Because of this when the phy
> module turns off/on its regulators, 'L2' is turned off/on
> resulting in 2 issues, namely 'L5' is not turned off/on and the
> network module powered by the 'L2' is turned off/on.

Please wrap your lines at ~72 chars

You use "'L5'" and "'L2'" a lot, making it hard to read. Try focusing
on the effect.

Konrad


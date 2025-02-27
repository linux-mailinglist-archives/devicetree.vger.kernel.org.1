Return-Path: <devicetree+bounces-151935-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DD538A47899
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 10:04:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 397F3188ADCE
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 09:04:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79DB2227E82;
	Thu, 27 Feb 2025 09:04:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Mpsib+GG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1B3322618F
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 09:04:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740647054; cv=none; b=WqOnwTDQHvnstM2XncioqTGED4w7iXRfW34xDpIz4A1q6OTE9MV+c5GxuAEFEA8F4PNFhuWPypDNZmCQi6jcS33V7hayJ0tedt94TkHx3oTb+kdABDg63lno5F4oZ7kJ9XIk6MKQ1lcAEBrFkGMdmg2yrTs25klLyNLbW7FD40o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740647054; c=relaxed/simple;
	bh=u42Ak1Pq8Y1bErL2ZVfxQnVap2YnXcFLZGDObYLYRiA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lP/BIcven3z9Q5WHnFpwSbUw/NqkMBiJhSoTe+HQINr6wkGcKIk8V3gFO+dp8+sJTRyDVhFg4Zk4qnHWLZHrq0IoH/0VxW2Ta63Hk7N3RwqUw2cDfBS3I7xM7lSar+YflofKvvpmtNYbFTArz/9U2fnqe2hx6N2S8g6b3soISnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Mpsib+GG; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51R8IWMw015480
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 09:04:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ISIpvDLr4nm46G4XgdEgTIb0RhLt9O3O1FoP7hEvHq4=; b=Mpsib+GGht62Gc7s
	n4NuZ3WOyVpgMdj6M+UTLJDKu880SS3jOBz0EIFOmxEOlE8qAfgfHWxYhkf3yd58
	u9kCWOJqEOfcnNcV7Qh+Yluv1LVg58aIPocqsZBGL04NdLumH81bDwM+LGfIBBg+
	DGdailFSJ1IctjUA54FPRsJEU9o+C6xpXl56PcSjJ8iTc5SMGAYNbwQOmRW//iU6
	bFBsEioWiFJfWe+IPtGSA/kBxPtS7rITJhYHcw5lBfk/d7/svqT9jeIr3TAsUfMf
	WkucAuUflQEe3ghGcyg8SO+W/sEAdKkdFlhTuTGVcY0bFYct4yN+8w9+vKGR1Axp
	FGhu/A==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 451prnn17w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 09:04:11 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c0b3f276edso14253785a.3
        for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 01:04:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740647051; x=1741251851;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ISIpvDLr4nm46G4XgdEgTIb0RhLt9O3O1FoP7hEvHq4=;
        b=tbmjTiFo/sM6JnuEYvyAgzEWN/wIesxD+kYbfYTwOzYUiUgpdoRBr8mcbWXZdl2lDp
         sK+E/8qvrMQjbmabCDcirWkJvEjdNz/NJx3NM3JtjkUfc+AG0aLXbZ/4NVaeinbngh0C
         xEjyDPiecfCtZuTO/rvlnce5awiEfp8Yb7ptudzlnbyEWhnu1m6e2zMJVWbhnkmoNU9e
         fGG9fKHZ3cFdsDQvrrKEKqwfBRggk1IdBN+j1pTAKQaHlS5MJqTSDf0JyYwMMcXZ97Im
         AKjVaO7kw1UeXyXFmWhB/Akmj4hg0hwh1AmvmBdTNvkPp26UNPQOQ/qfNOkO0meCT52u
         lAYQ==
X-Forwarded-Encrypted: i=1; AJvYcCWaT1LP3hcVSYSMtgWnmkgp1UlPnIDo1V9PzsMvQK9TKV4d2Fvi+Nko/Hfznubo6IeXjnczHqODrEiL@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6fJiJ1GpPs2FBuy+iPeyjxUhcoRzqvznT5lYUBif9rz6FEPHG
	03kmDzcCbT6mw9jOB4hQOsNhzPfEzKJTN9eFmh+WL9kImdM5cPWRl2Jy+8k+iaXhLbd/b9ffBJx
	KVod+mBHAKedM2j1c9mCqwKx33039c14BsZTBIu2AL8G2x39aaMjLQBb7Ifv8
X-Gm-Gg: ASbGncu0FqCMaJpvGhIqoNUIrAnhTL+TiBdnf3J2PdCDVfLykGfhmMIpbH1VtNmOIjB
	53u9LSnLWBNv7SGnisaJ1PowY1Yc7tS6GuzCURuKGO1QifyMlPmswyexBhMX5C6K2lcCBWABfX9
	9h7VWLmiPHTWJYaHZtnJcadCohQgbLEoCyEcx/cYfDEMby/24n/1Kzy6+j1fi7wZ1dPF5QpwV3X
	PNAGI5BfECTVaKcm81VtLJk6QYkMWK1O7o2VQRI8a8i9HqPn/9STwdJXFS605K15qNpul66DnKU
	3o0gFnNlMN3k8CyEYzsnM+Rla4QeZP8d2mAccDxtyrOszQX6Q+hqB28UspRoupVnkfo1Yg==
X-Received: by 2002:a05:622a:1a96:b0:472:147f:1dba with SMTP id d75a77b69052e-472228d5fdemr128421551cf.4.1740647050851;
        Thu, 27 Feb 2025 01:04:10 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFR+YpAMmMQyxSjZPXR+O/quj/d9e8NAkyiIF0cnW6DFrG6HqpBefPVaVbaehbYTKv4y3sMnw==
X-Received: by 2002:a05:622a:1a96:b0:472:147f:1dba with SMTP id d75a77b69052e-472228d5fdemr128421341cf.4.1740647050539;
        Thu, 27 Feb 2025 01:04:10 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abf0c755c98sm89714266b.142.2025.02.27.01.04.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Feb 2025 01:04:10 -0800 (PST)
Message-ID: <1687d1fe-a9d2-436f-b219-6e7cb3d2414b@oss.qualcomm.com>
Date: Thu, 27 Feb 2025 10:04:08 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] ARM: dts: qcom: msm8960: Add tsens
To: Rudraksha Gupta <guptarud@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, wctrl@proton.me
References: <20250226-expressatt-tsens-v3-0-bbf898dbec52@gmail.com>
 <20250226-expressatt-tsens-v3-2-bbf898dbec52@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250226-expressatt-tsens-v3-2-bbf898dbec52@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: -KTgRAfg1IHU2cy10-_FcqxLOSZF21Lz
X-Proofpoint-ORIG-GUID: -KTgRAfg1IHU2cy10-_FcqxLOSZF21Lz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-27_04,2025-02-26_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 spamscore=0
 mlxscore=0 mlxlogscore=905 bulkscore=0 adultscore=0 phishscore=0
 priorityscore=1501 lowpriorityscore=0 malwarescore=0 clxscore=1015
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2502270068

On 27.02.2025 4:50 AM, Rudraksha Gupta wrote:
> Copy tsens node from apq8064 and adjust these values:
> - thermal-zones
>   - adjust thermal-sensors
>   - delete coefficients
>   - trips
>     - copy temperature and hystersis from downstream
>     - delete cpu_crit

Oh you most certainly want a critical trip point so that your device
doesn't become an oven.. I can't unfortunately find anything that would
definitely state what the max temperature is, but I guess that you
wouldn't want this thing heating up above 95C anyways, so we can take
a conservative (likely undervalued) guess like that.

> - qfprom
>   - adjust compatible
> - gcc
>   - add syscon to compatible
>   - tsens
>     - change qcom,sensors to 5
> 
> Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
> ---

In your commit message, focus on what you're adding. The fact that you
copy it from somewhere else is secondary. Describe what (and why) you're
doing in this patch, and only briefly mention that it's based on another
piece.

Konrad


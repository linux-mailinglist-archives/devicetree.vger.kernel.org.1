Return-Path: <devicetree+bounces-212109-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 16529B41D12
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 13:29:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 91B8E1BA52F9
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 11:30:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D639A2FA0FB;
	Wed,  3 Sep 2025 11:29:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nmyr8uJx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70E001E5724
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 11:29:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756898976; cv=none; b=NFGSFtVwTeDT6AyqacqfFCFirRxM9LxLlRXZpY1l2U9rHCMWIulztnV3nINuPZRxl9uOs2COzYVlQTLP/RSc8d8905PEB6QuHZlWHZpbi/y659vEhTYk24R8wPyUiwjEiWvnPGhP3xtNoRd1CWeGx6eS7OuitmUl0WvedsiCfRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756898976; c=relaxed/simple;
	bh=+ii5ePXVtRuyPwTD5x9Lo4Y2oQsXTwdTUVmZ0nXZC5w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=q/H7farCU5Aqo5ihVoTG0kcfX87/kETPa782AlcgoPg5WRwPc7JqOLMuDFGRXQ4+24jGFLTwWB8OcsCLGUEFA1lGMmXUFN5/3l5b4ARZ672M8EmLMHRJEdqFIoQAaKufmaP7AOy/iUrM+MHWTwGw43aEKfPZ2yWQ956wqKJg7xQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nmyr8uJx; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 583BEtc4004887
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 11:29:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0DlARa6c+cT5Kx7CXdcj/rxubZTPaG6M02eCca75WUc=; b=nmyr8uJxJ6etqPP0
	b1kmFIR4J1vwBabmRS39wXQngdBbYQL9ssENpoYw71UdRLYJ/tDruDKHMPwKfKwe
	RUbkIBlPRXXcBGAdX6oIkDXLbaCbudFuzHf3EKyFrZ6bvwneOfbWCyRF8iGFbbar
	SVBx/tS9is24GRc2GsDkQyHCJ07evboGykmbwnfaQU8cye3qXatbiGxzXDVORmrw
	78zJTmYocEplG4rMs33Y4WWe6pLl72vGPL7UAggWb/ADOqpnoHTstC303x4HeQhk
	HqU6YrTlmlEe9kJNrQi2cdhPAlOpiam1O9rMgO+/ODHUCpmV0z3HqcI9DWK3ZTHQ
	ckBYVA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ur8s3h57-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 11:29:34 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b3ca5e94d3so3422111cf.3
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 04:29:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756898973; x=1757503773;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0DlARa6c+cT5Kx7CXdcj/rxubZTPaG6M02eCca75WUc=;
        b=cLePKan57cUgcdqUGPys2dk9f7bZrcUhglxGq1Q5yHSCyAhLvf8VnWwfVS+rIX2it6
         7aPgdoCypSw8Rtn1KWl0l0lkuTelgWtkWlm1nMIQ1GR9C6J6nr/z/pEqm+wEzSQXj6c4
         CtrcGqXQzC99jWfFopzuAzKlYg+5ApiAC7vRGRE91yecwnQMXhQjW5UdkWrETKczjRE2
         9BrjZR4xUYlZZC6j6pIAHhNsXisQmiWHyozGKBZ5NatS9PKqM6GVVD1XMSpLotBCE1HT
         RDFUlSdNuEjXSoZEqHhT2gWIyTt/eEkMgBb1dlUem6buWQKw/r39Misr2tXjsr3M81Rd
         WLIg==
X-Forwarded-Encrypted: i=1; AJvYcCWWXJlmNoxmysKgpkolhC9LADHP8exgazxX1JTr1Z7dApZlBFZppYZdeHFDkVovf+EaVpy7CSFMKZHi@vger.kernel.org
X-Gm-Message-State: AOJu0YyX7kmecdplhHhW6gXfgFM8NwDxJDJqs6pByXzeQDnpBwCVTI7o
	gbp/xX/CO2iizfO6zCa5vOQHVp6LbVsESNu0d/70iQoPVO/joUTrk3LuBgK7W91nu5kYWMPa9LC
	UYzyWT0d/0K3GIXTosMxcmkVgzAtBBExX5cHUQaS4H6QbJSiw2GWv7iJI+fm3n2md
X-Gm-Gg: ASbGncvnqMeVichWeiaeZEByYo4wRqGfauruRnoaqAKKHxLQcYKRNFgK/3a54TLBk9e
	3qJDrfbumNOowpR1u02OqV8Ds4uVJb5WsQJM1h4tNQW/Tr/3ZHIAjENMVuMxYIwHhbTv9d+vtrI
	vt+UpjEm0fH8q2EAx2iaXU2x68jwky9CKuASQ0lWWL2e5jzXIJ1Zsu2Lq/tkeCn2AQLsSV7/jwx
	WiEijuT+ow5Mm/f8AGcLa7BZ6d2dRw5LsbB8UzTSeTKobwjt9rXuUdQop0Lg6QcyfGh3KeJpJni
	sFlnKSeQDfmspQkc/p+rVuuDH9YrohRhPfJg2VgZCprh5Vw9rU5WNzfecRlwq9sqHCnQU49+ImZ
	NQg27Li1qzyio09MZC29k9Q==
X-Received: by 2002:a05:622a:3ce:b0:4b4:9175:fd48 with SMTP id d75a77b69052e-4b49175fe5emr12198281cf.0.1756898972983;
        Wed, 03 Sep 2025 04:29:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHhha7kDI06WR5/PTkK4mODNgVoKoKqWlu2qkXEihO/vwGB+8ZKEGtbIdhREN8PsqTm32pSlA==
X-Received: by 2002:a05:622a:3ce:b0:4b4:9175:fd48 with SMTP id d75a77b69052e-4b49175fe5emr12197861cf.0.1756898972219;
        Wed, 03 Sep 2025 04:29:32 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61cfc5319afsm11824675a12.48.2025.09.03.04.29.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Sep 2025 04:29:31 -0700 (PDT)
Message-ID: <d74e6c4f-6be5-48bb-bd67-c9b5e42dfbec@oss.qualcomm.com>
Date: Wed, 3 Sep 2025 13:29:29 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 1/2] arm64: dts: qcom: Add display support for QCS615
To: Fange Zhang <fange.zhang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        xiangxu.yin@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Li Liu <li.liu@oss.qualcomm.com>, Dmitry Baryshkov <lumag@kernel.org>
References: <20250903-add-display-support-for-qcs615-platform-v8-0-7971c05d1262@oss.qualcomm.com>
 <20250903-add-display-support-for-qcs615-platform-v8-1-7971c05d1262@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250903-add-display-support-for-qcs615-platform-v8-1-7971c05d1262@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAxOSBTYWx0ZWRfXyKsZ5j2ki3KH
 0wanlgqxAXZNbESyV12ZWe6cq3AERfI8KqGHFPqWxyaYj/zg0DQGQ0UyBHU1CopDJ/fIAWTdgOd
 duYiBun4HjxMF3aXGljstqdG//NiXtch1A7tlmh3twm8zQarL6Mn5AEZU85GBH8POLYI+32DSyn
 9vsrdPdGN/3FrUPbnAEFMBj/rOXccsEBP5tt0yRVNXIw9RhBmIFuiNWaHrszaPAg+bq6bkb1bnO
 In2MPeF+c6qnNZ+3feNO9WN8W3OTj0wt4CUf1HfRrYMuo94B/j1Q+v3dUNjuKcxMbbz5r6jj/Pq
 VxNmVh1rC8Y7PNqNHJC2Ez92gBND2kdDwnTVHzN8x7NhZghh0Wj1mh1Yi0NvIPlM4iGHlZRHgxU
 G6K66HDb
X-Proofpoint-GUID: w43tKxEqbpuQMQfJjacWl1twDjS_hdTc
X-Proofpoint-ORIG-GUID: w43tKxEqbpuQMQfJjacWl1twDjS_hdTc
X-Authority-Analysis: v=2.4 cv=PNkP+eqC c=1 sm=1 tr=0 ts=68b8269e cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=7cbv3X7aQ-hLW3yDF-EA:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_06,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 priorityscore=1501 impostorscore=0 clxscore=1015
 suspectscore=0 adultscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300019

On 9/3/25 12:49 PM, Fange Zhang wrote:
> From: Li Liu <li.liu@oss.qualcomm.com>
> 
> Add display MDSS and DSI configuration for QCS615 platform.
> QCS615 has a DP port, and DP support will be added in a later patch.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Li Liu <li.liu@oss.qualcomm.com>
> Signed-off-by: Fange Zhang <fange.zhang@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


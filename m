Return-Path: <devicetree+bounces-157795-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 79960A62D8D
	for <lists+devicetree@lfdr.de>; Sat, 15 Mar 2025 14:37:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 487A93B015D
	for <lists+devicetree@lfdr.de>; Sat, 15 Mar 2025 13:37:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 216701FC0F9;
	Sat, 15 Mar 2025 13:37:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fBkd3Wnk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0D788F5E
	for <devicetree@vger.kernel.org>; Sat, 15 Mar 2025 13:37:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742045858; cv=none; b=mxIQwwqGOzaNrsREMr6jWeWPcJ6h7gp47VLkFMpFV/VbcTW5MgNm8WtewMotbOLBmuw7/VqFqxgVKh3f74RYJXeza/ppKKJzskmhvgX7X5ggFHKAfNBVisnjf5iBASStjv9XuioTRsNJpA1wlwXcpn0vNJp4zGkUkONPCk6cbnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742045858; c=relaxed/simple;
	bh=M7HCNxc6+ULLaGJ60tqlxMwe2/03GnpwEGTUEfOUeSU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XYebjE2KrHdBYsmephnec9m8US7a0Mxq8SAf5Zk2vTG0tCbwnEBNFhAcLUOcivSuQe+KwuJ0CD+OFUGVtbL5FXFzYQy6h0iH+FSzeuy69zQWio6z/BNaydRD7CbFiDTkxGis9Gk2sOawnSDtCz84NakHmhSg70EMnQo0dCLwOlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fBkd3Wnk; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52FCaEtV017019
	for <devicetree@vger.kernel.org>; Sat, 15 Mar 2025 13:37:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6DWUpv1hI6Be51QFuZOBU9rLiz5KUxl0EDZoZvkV/0s=; b=fBkd3Wnk4IOKpolZ
	HKDSZDkKWvr95ITEgJQ9hmEUVDtop/Y6bkNzvEI7QBYOxbXv4TitOncMlMuUo2If
	fhTn5Tl4YrwN/fbhacLcbP400HpuanLuxsySf59GcbK0ck0RIvievfbRYMkWlZx5
	dw7sRhNQtjJJ9CFtq+lelQce70XMJK03va0getE8PVz4cnYsL+tlG6w1aAeX/aRc
	UgIoDk5lGTGACo8/BlLOOgJjUs8P4oe8VVkZIXvs5mNeFcAxYGN+R72sMddcxdqb
	towvq80/Hwx6+/H1F7JU+DwcOZyOyF41pp2yhcQLKjzEvKEOdt3B7LkzGZuBaxDk
	h9D5Ig==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45d1u88re4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 15 Mar 2025 13:37:35 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c55ac3a1d9so24751785a.3
        for <devicetree@vger.kernel.org>; Sat, 15 Mar 2025 06:37:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742045840; x=1742650640;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6DWUpv1hI6Be51QFuZOBU9rLiz5KUxl0EDZoZvkV/0s=;
        b=QjpOhBA/tqxdwLKB7C+Xl3zfdp7IL/Cfj0AbiL1cSwRLp4it/tk0PbSL7EE5vwUxT/
         x/GqdFklxEBmvVdZNWuNWhqFE8kDutGDoILLKHqTLmB2NxuO74hGyBKt0ljExUj4bOxd
         30xTmlQw/NJChQZFkQKRzaw+fFWz6v1rYb8pgRHx81QF0EZbjyz742TyVA4UNwCvX8yL
         L4TQ59ezlxA+kNrblgNrTIsxGFgQrbo6Dk/u7mVaifTKIun/+3Iz7yl/1tltpqHKFm9t
         Z6a+Hrm5JNGboXS2A1wKokrh+2nu9J0iSMJHG9zCLBtnnsQgVxCwMUk3+3IfrQ194UTw
         k8Fg==
X-Forwarded-Encrypted: i=1; AJvYcCU+B2piskeidLcJp43Z9brWlirgqlLZl4vZrkTs0Fh0m7+cRzMDIYmgPqXvvQhOTEDGiuXBYV4R+ywp@vger.kernel.org
X-Gm-Message-State: AOJu0YzP5uZLtVrv1gjyP3AiPDdoDhyG5Q157iO3ryXcEVBPiB0nvvh+
	goekWcHeCz4MFdor1wtQfY2L7335L/gZtvhfeTA7VcHQypTKPBaDnCoV0+7BQsZRphLZnr+hs6o
	SgkIljkAO9BDJyA6nv57cJtuOq3I7Al3iPRTX3y1MYzarQEv1Mi1LgHMGQEI2
X-Gm-Gg: ASbGncv4udctZGcmzS4yyxyXd2sqCbrJeWLUe0M5dz3LV7rXqnS3D9M7PD6h0d9w65W
	9rqxFPlbE5vDCcKDY7YBFfHxXA5aGNSFpzn4wyG6gKAivcE2yeJ9Ux/GW49p8YW4B/72k6xNtXh
	39kiWt97n8pBvzEVGafAPAzKa36Wm1tvtHJ4/8RumU5jPAIna4ogSECF5sEPoMkqHmU+Ipij5on
	lTMApUoUj4xln7GNDhpe9FWPHBIXOY5OG+sGOTAH7OTkr2x4TVh/nvblN1RbuGEY6jfdhqmxohc
	obHoSOPMhu8VDN5wwbxTQoEmSJvhN9RwANxsdOGX00ZClQC0lUoSyMsou4tNVEDZHEX/Eg==
X-Received: by 2002:a05:620a:a10c:b0:7c5:18b7:4f25 with SMTP id af79cd13be357-7c57c80efbfmr243595485a.9.1742045840320;
        Sat, 15 Mar 2025 06:37:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG5IYQOLUaJk0sMyhujqGoj6BeptOau5msBzGVpujPDlMP4SRkuy4eNYMV6ySVlRgZ01YD6SQ==
X-Received: by 2002:a05:620a:a10c:b0:7c5:18b7:4f25 with SMTP id af79cd13be357-7c57c80efbfmr243594185a.9.1742045839950;
        Sat, 15 Mar 2025 06:37:19 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e816afe25fsm3217460a12.78.2025.03.15.06.37.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 15 Mar 2025 06:37:19 -0700 (PDT)
Message-ID: <a6779d4b-d4b5-41c8-932a-62cd17c9d021@oss.qualcomm.com>
Date: Sat, 15 Mar 2025 14:37:16 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sm8650: Fix domain-idle-state for CPU2
To: Luca Weiss <luca.weiss@fairphone.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250314-sm8650-cpu2-sleep-v1-1-31d5c7c87a5d@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250314-sm8650-cpu2-sleep-v1-1-31d5c7c87a5d@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: _7LvwreV6GimfrePRDwA0MZ7DedbBuRM
X-Authority-Analysis: v=2.4 cv=c42rQQ9l c=1 sm=1 tr=0 ts=67d5829f cx=c_pps a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=pUt0LEAnZhKoKCINpSsA:9
 a=NqO74GWdXPXpGKcKHaDJD/ajO6k=:19 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-ORIG-GUID: _7LvwreV6GimfrePRDwA0MZ7DedbBuRM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-15_05,2025-03-14_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 spamscore=0
 bulkscore=0 lowpriorityscore=0 mlxscore=0 adultscore=0 malwarescore=0
 impostorscore=0 mlxlogscore=992 priorityscore=1501 suspectscore=0
 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503150097

On 3/14/25 9:21 AM, Luca Weiss wrote:
> On SM8650 the CPUs 0-1 are "silver" (Cortex-A520), CPU 2-6 are "gold"
> (Cortex-A720) and CPU 7 is "gold-plus" (Cortex-X4).
> 
> So reference the correct "gold" idle-state for CPU core 2.
> 
> Fixes: d2350377997f ("arm64: dts: qcom: add initial SM8650 dtsi")
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


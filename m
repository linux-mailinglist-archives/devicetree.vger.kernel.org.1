Return-Path: <devicetree+bounces-178929-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 809CEABE0AE
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 18:29:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A76471636F6
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 16:28:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6718258CC0;
	Tue, 20 May 2025 16:28:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RqROJ4AD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78A7F1B6CE3
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 16:28:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747758482; cv=none; b=Ti03AIbX4x940kBP3uijNSd2EKIYXwfLNh7aJAJHZDMvLPTW9AE3fN3drvgVvBldchrt4H4Pyth35hXxou8HyDPl8wVGuQvppVBh6xwJrMhcBZ9RXGluwU40loxUR6ZDuYe6+ANvLgY7VjPlbS4Xnl++wlgF+x9n5YnJ9TRjJQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747758482; c=relaxed/simple;
	bh=zpwGDhz9rNuqBod4PWnCiwUX3N0nb1RnjAyBe0DAPYc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=D32e0Xzitj562DtWpHn7RD8QVXBFDnqAaodw2+aWw3PfjZB5Ge6Bp6MORmrHsmXEwM2Grisix3LhYr/JBE1T1oIZzXR5GfsnGPcAC7sUE2fKW99WLf+aeiASyPemFWPSzq3C2FeFMb9Wkt7HOHLeHZqHZnYwzm+skIRt0/iYY+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RqROJ4AD; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54K91Ehs030732
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 16:28:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oWkE6wrfAiys8X9HQrhID/AOg4udR5WQhCtdwknEz8w=; b=RqROJ4ADMDc/egCr
	IWrOEx5RYW4X9XZum8bGzVp0XFdWIMAJrqrEhS4wuCS7wtiV+Ywu9ORD77wPNHjw
	WctM/m+clvQJmLdVjQh715QeiSltWIY22qxmn6WnVNYBD07f2Y1f8qMiqWxGCb/X
	neT9mT+6b27O9fBydUwz8KffzOfNc4lpdDmUD9fdQYwYvy7cJ0fpUs6z/nzg0mlQ
	jJ/L2Aq+rPO72/0Wye5YWvjU+XtEWDFVBT0PL78mrYOcf3KBNo8ky4+H13RbNI2x
	2lxz55GxzLNFkngYlsex/CXMFfHuDBXsYm3mhLZAVWfj6D/x7JZGzjWyZ1RBMk1R
	jJj7Ow==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46pkra0d8a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 16:28:00 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-231e8ec895bso30605515ad.1
        for <devicetree@vger.kernel.org>; Tue, 20 May 2025 09:28:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747758480; x=1748363280;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oWkE6wrfAiys8X9HQrhID/AOg4udR5WQhCtdwknEz8w=;
        b=QbJDpCW28aw/UBuftGtLC4h+5EunCJD1T6keR6iRldfCeAdwivz/faP8WZk1sFLUC6
         rVPFacr59c1ZoCh2jPa8p3zbvoriuGjHkloYvydKuakKmgn8Msd6m6M/jvGd3Y9zLmzN
         ZxFibhAF2mSQu26lf40qsiLY6lXnl8aos0Mn6IM8IGPH6kPeouXiYF6I1WhU1QI7+Wsl
         OASt587MSNxu/PFWZ4L0bX5rI5XCpmdVl37cTuzh7IQMxJEuZCfL81ETxyD3tMzk+CYI
         gjnjJ7/dPIiHjLf+/8MMme0u4sSZrPpfXE7La6cFzl2Kgavwq7SAarXnK55rYrI1/RmB
         lTiA==
X-Forwarded-Encrypted: i=1; AJvYcCUxIT4xE4nARbdRT+TRLxtI4Ymk7P7ijrq0amO78ctAGVPJOkyr2eyiKuiWgJ2F5zs6vsX3+IPZqbZZ@vger.kernel.org
X-Gm-Message-State: AOJu0YysBWDG7shy7uqt3SZ0oB0GgvtKIssQeUT8lwayGd2bvI7o92Ov
	cU4/jp2IbJvgciNIF7Xa+EOzBNbglSyRXKIFpCFN6zdCT8JS4oo/Rji0MjPzWC9oJt6E47mqUCo
	8IjtwWgrQYQSHg6anEzYtZVHYCoUYzjup3QYZUS02UnpEkCsI62tnFepR5Xjjsj/m
X-Gm-Gg: ASbGncvcgJBNbMZv5g1+3bXEen8GC0s8l1WQjpWHXzZqGPJVq7z6rl01BVlLW45qDDR
	MqaWSxIOtBQyt4ZZEHa3mk/SntYp+4gL2YsD0NJ8qnMKj0orT2OyB7y/vmSxEv4bhxhUGV/PcoC
	41gYU1JReHsCLH5ZK//AnNfbY16NtRQAuGdjRZFNRqXPjDlDRlB9EYMEvFnY+ycGeVFKKntD/m2
	V9nIlI1iLq4Zj7J4AzCnCXGc7oESPE/JC1KRoTTfQu5lBbPoxfaosbRElwBN2PoR0E8dMdutJGr
	69l07hd/WLWlCcKWoNAbhLLxwZtChhglU3VW0CTtvUKP8UGlWoJRhceY0t3p3iUVR4o=
X-Received: by 2002:a17:903:22c8:b0:233:b397:1a38 with SMTP id d9443c01a7336-233b3971a69mr1035215ad.2.1747758479744;
        Tue, 20 May 2025 09:27:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE5eCXMwctL6VYRhnYTfMJUpfPRTT3rczhB1NUrHqOcjFwE3PZOtwEroBxliG5kQjGn1ipa4A==
X-Received: by 2002:a17:903:22c8:b0:233:b397:1a38 with SMTP id d9443c01a7336-233b3971a69mr1034885ad.2.1747758479312;
        Tue, 20 May 2025 09:27:59 -0700 (PDT)
Received: from [10.227.110.203] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-233abb99a06sm3393195ad.254.2025.05.20.09.27.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 May 2025 09:27:59 -0700 (PDT)
Message-ID: <748f0908-75e8-4712-86ad-220174c1672a@oss.qualcomm.com>
Date: Tue, 20 May 2025 09:27:57 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH ath-next v2 5/5] wifi: ath12k: Enable IPQ5424 WiFi device
 support
To: Raj Kumar Bhagat <quic_rajkbhag@quicinc.com>,
        Johannes Berg <johannes@sipsolutions.net>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Jeff Johnson <jjohnson@kernel.org>
Cc: linux-wireless@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, ath12k@lists.infradead.org,
        Sowmiya Sree Elavalagan <quic_ssreeela@quicinc.com>,
        Saravanakumar Duraisamy <quic_saradura@quicinc.com>
References: <20250518-ath12k-ipq5424-v2-0-ef81b833dc97@quicinc.com>
 <20250518-ath12k-ipq5424-v2-5-ef81b833dc97@quicinc.com>
From: Jeff Johnson <jeff.johnson@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <20250518-ath12k-ipq5424-v2-5-ef81b833dc97@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: sz3j5jp97N0kqOHq4JcBiT2gUXfEFZDi
X-Proofpoint-ORIG-GUID: sz3j5jp97N0kqOHq4JcBiT2gUXfEFZDi
X-Authority-Analysis: v=2.4 cv=DdAXqutW c=1 sm=1 tr=0 ts=682cad90 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=b1i3P6Qac5NO7_78IJgA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIwMDEzNSBTYWx0ZWRfX8HeDHQnyQ/fj
 v8nfBkmhE3rxgOO4V+ADX4U/vjL6Bw+ugcnjFc+8sVR/GNRdh0/kVHPc3DE5Io9lfS6TlRDLjW6
 Sm1hyCnau5FstggRVHalv/7mrm6m6NaD269L7bas5FHA8GVpNPBznTpNSoLjPpqgwmymQGMe6/l
 TtWTvgqfEF/HYqakBkLBuQyVsQoW8w3EOuWktjMkDtkmJiEQq7IC+RngiAUt4ZX2q/SlLson+Go
 /y2I4Av/0/v7ifvqBg9VDQnHvDfqBjw5Ovolg0EaCFRRtb7TbLytaAs9H0cNVtreXNLDg6cb/h2
 XrswhbDPOEjIlkhM4WNIKWUhZM6Xt5IggpgAqutqCwI1oa8qxPxx9HoQF6uBsw16KVE+DIysuHW
 NRd3HrgUlufZK+dILMogCu+Yer7UmqRN+sk60YKH1XiaGrpnBx9a68geVKg4By9iEwuaFj/O
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-20_06,2025-05-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=999 clxscore=1015 phishscore=0 adultscore=0 mlxscore=0
 spamscore=0 malwarescore=0 suspectscore=0 priorityscore=1501 bulkscore=0
 impostorscore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505070000 definitions=main-2505200135

On 5/18/2025 11:22 AM, Raj Kumar Bhagat wrote:
> @@ -1008,24 +1011,19 @@ static int ath12k_ahb_probe(struct platform_device *pdev)
>  	if (!ab)
>  		return -ENOMEM;
>  
> -	hw_rev = (enum ath12k_hw_rev)(kernel_ulong_t)of_device_get_match_data(&pdev->dev);
> -	switch (hw_rev) {
> -	case ATH12K_HW_IPQ5332_HW10:
> -		hif_ops = &ath12k_ahb_hif_ops_ipq5332;
> -		userpd_id = ATH12K_IPQ5332_USERPD_ID;
> -		break;
> -	default:
> +	ab_ahb = ath12k_ab_to_ahb(ab);
> +	ab_ahb->ab = ab;
> +	ab_ahb->ahb_data =
> +		(struct ath12k_ahb_probe_data *)of_device_get_match_data(&pdev->dev);

seems like an unnecessary (and incorrect?) typecast
ahb_data is const struct ath12k_ahb_probe_data *
of_device_get_match_data() returns const void *
so the const void * => const struct ath12k_ahb_probe_data *
promotion should happen automatically, without typecasting away the const
qualifier



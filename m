Return-Path: <devicetree+bounces-229592-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 24750BFA1C3
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 07:47:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1809A560A80
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 05:47:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E96BA2EC0BB;
	Wed, 22 Oct 2025 05:46:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="itPyFBoZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 093C7EAC7
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 05:46:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761111980; cv=none; b=dsrA7WcKQWZmLjmB0KthJPrLjdLyDKxqw5CRBE+0J3FVoo2UY2zCx/0jzUySZ+/FIeq0ArwwtWg+DZDTmo0scxcUIhb1FCem4MRn6luP4aQ7v7elddmYJWstCceGhoMFda6pNm5viJZZqhFi3WgDFPNRBWyXTlynlwlNb+xAh7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761111980; c=relaxed/simple;
	bh=GPbtRPqIECeP0yclKwXqY9pSqHQ2lvzxM9YJWlNlbnQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qRi+GmQBNiNHx27DNXwPYgjDaJ5Iqie2W3qd3qVWyVXp/wSL1iqyoiqt3WdH+3pyFs+/R6yRAciGX3Srl3qm5Kz2TB3U0ptHsl/rSk3s5hfG4VBreF8OE93e+2puhAXgKbRONAmeUFz+U6gPpjxnPIzerpICFLlcqRsbLEHs0do=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=itPyFBoZ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59M3Y5Pp024360
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 05:46:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CainteRZ8Zd8o7nDkOh94ekQdPJKyfGA6FMGoE2UxGE=; b=itPyFBoZ7vZullgn
	Lbeb/ol/nIwiqcLEAHc2JyyC+bS5ma8gFXGt6j/WWcN3iYJdkV4P36mr9iwtV8nS
	GPFshO7E8mZVVKnKSMPlx8prY1iQeW7w1YJA+kByRsJ/xVoYRzJsnTZy6sa2jHEt
	D0sogVEKIuLQnjx25lkmkJEEhJpbVsnPWtZudFpCLL8MHrkh723JqjWJz41pl8+R
	Z2ygefy2h12LYzMNjr6dt1uFOrxZoQnkc1HaXjLt0cVczJBcUGeHrC6Riwle7Mlg
	/V2pNaW6PqKFQJrfDS9gNDq/D6YAB8I6hV8KDLcsCbva7kHMn18d5ok3neVX9y3b
	/kxv+Q==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v1w83e51-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 05:46:17 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-33bdd0479a9so5316348a91.2
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 22:46:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761111976; x=1761716776;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CainteRZ8Zd8o7nDkOh94ekQdPJKyfGA6FMGoE2UxGE=;
        b=SqPMMHRD/ukymSfnl90S2IHRRuDoa2mqPTvaoV+KXp+yuhCrczCPi4/weTibJbQkME
         cisnxwkljL8A7pWdgghUHwNQpDN7HsV0V82/auAyYz7bBFzZcQat/7wbGk3xmhx7wyAB
         V2nxAyGeyQiqBdReqM2IZR5SYuWRHQ7QlXzMWl1ZvWE8AoelkX30/rUCT/BATYqcgkvP
         mOuTnBkelZ5A2DsY1x0kQzD3tydm99tz/TxiNcVC00tj91f8zo+IU/HdSBi3dcdvIpyO
         Hnr0ZEjp+8sWSc+qFbIYeL5Jh89GYQE+/dzaF1QgxkTGpETFH3ugbHUcNgE3Rq4zTz8y
         CPGg==
X-Forwarded-Encrypted: i=1; AJvYcCUipnqFnoQNOvExuTQt++FLmKZkTBanqpDpcNO2KwTdq9K2g+CAAWLadkeA/+Wm2rxNEE3VX6U0y18j@vger.kernel.org
X-Gm-Message-State: AOJu0YyjcRg+Njf9Suci20AU9BfbzbfWCOtLmlTvJmhILKBxWSiLep/Z
	qCKF87l/4Cf2S+B5SNSTApDHSpz16qEATQoUvfHkmcKL6dxc+Pe9ABoj5Jcu6nvLgd161Bt6dKZ
	qarcw255ezdtzx8wzYqgANke3sJnlH3jMFlFY74SVa0IbPixX0hF+QY75+a8YI/zK
X-Gm-Gg: ASbGncv7kh8b/EV1TtjatNuh15ka1fAqnLLM55059C2pYFTBaUw4lcyY0iUnw2anH/K
	H8kcLwhpMeyHOabWY1eOnJEpLYrqVoC2ZWDPnF9Mkd4W5EffQSmtAUvD7qZYeN50QLbUr/8cxI0
	ENFDE55Q+x4+BopHaSMjFa2VMF48bDBSCV7iytUt/dVtccGZeai1pMyuLuz9HmougKtWR1KdfwA
	pARYrpGao2JbT/wEnRYzbLLFgjGZwUlsFOsXUV8E39y0CH94PrVtfpSJaIddigjPs4PQLTZcg2r
	qKhD9/hiQGQIokbEPq/zEiPixiz/vcT8a7wFt6VprUA3NWIDV6vbGo9jf6oQIuWlsjf3XCfHaZF
	h2ILtb/j13BgrSExAgAdVjVXmxrjBSqYbBA==
X-Received: by 2002:a17:90b:3f8c:b0:339:a323:30fe with SMTP id 98e67ed59e1d1-33bcf87acdcmr21722171a91.14.1761111976597;
        Tue, 21 Oct 2025 22:46:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG7gmWeAdo/ledsoYbIw1NxsAbbcauz1W825kuXhtPHAlp3ip6vJYAzoO9Gi57NsoB2yrPBQg==
X-Received: by 2002:a17:90b:3f8c:b0:339:a323:30fe with SMTP id 98e67ed59e1d1-33bcf87acdcmr21722145a91.14.1761111976164;
        Tue, 21 Oct 2025 22:46:16 -0700 (PDT)
Received: from [192.168.0.166] ([49.205.252.226])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33e223f11f0sm1409058a91.13.2025.10.21.22.46.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Oct 2025 22:46:15 -0700 (PDT)
Message-ID: <9b9dbab2-7dd2-1ec6-4dec-50063171dd15@oss.qualcomm.com>
Date: Wed, 22 Oct 2025 11:16:10 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v2 8/8] media: iris: Add platform data for kaanapali
Content-Language: en-US
To: Bryan O'Donoghue <bod@kernel.org>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Vishnu Reddy <quic_bvisredd@quicinc.com>
References: <20251017-knp_video-v2-0-f568ce1a4be3@oss.qualcomm.com>
 <bRFGFB-aXU67uJWfk8UwBE0tOCTXpquadL2rGHbdcoY0nEdQ17cATN_K1Khk6RWZ8cGONLIs9N6XLd_pe9CHOw==@protonmail.internalid>
 <20251017-knp_video-v2-8-f568ce1a4be3@oss.qualcomm.com>
 <9d39841e-d2c1-46e9-8745-1d4d8d073739@kernel.org>
From: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
In-Reply-To: <9d39841e-d2c1-46e9-8745-1d4d8d073739@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAxNSBTYWx0ZWRfX5RIyZgZZNC4R
 uH4qQR3LWDHO25zW+Hkranjit8aRS41b7KV7EnEJMSfxGkUbu3wpqVyhu1oXlrgEMJmHEZl4GN8
 wEw4ua2LilYCU/90RLvJBj3C/XnXtHKkWm1WqXeNSnlxE8XFGAX2zoRNywiI9HtjVy+JUpU4PoQ
 trVSi8yujPzYFGCRPFdCs6ZIRiJMLMU0veiuWxc1bWQC/3L2UnW9jaPPD8AlHJJt87vXIvkLuTc
 eFIn2abLhb4FEW5Z05PwYgiVddAsYwxwK+fa7kOrFhMo0BFshUusZW7YZMvBMQY1K8y1uMzf0Z+
 aJ5/3lEZmjA3a2duRDmaQtDaeFNT6hSidZXW0WrIwV5EVGxSJHXAbGDtAR35bHjN0wNyA+mle1P
 JUJ3iKvI4SbWg4OCrK7Rl5DhbrBTsg==
X-Authority-Analysis: v=2.4 cv=bNUb4f+Z c=1 sm=1 tr=0 ts=68f86fa9 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=FoPg1IWog9mqHsjG+aRTFA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=aMGEy1ZA8zrtvtRU1IMA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-GUID: kT5uxKelFmAcyBO3PNhRExSfQKEVX9_K
X-Proofpoint-ORIG-GUID: kT5uxKelFmAcyBO3PNhRExSfQKEVX9_K
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 suspectscore=0 adultscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180015


On 10/22/2025 5:09 AM, Bryan O'Donoghue wrote:
> On 17/10/2025 15:16, Vikash Garodia wrote:
>> +    .fwname = "qcom/vpu/vpu40_p2_s7.mbn",
> 
> Dmitry pays more attention to this stuff than I have but, is this a released
> firmware ?
> 
> If not, are we sure this _will_ be the correct name that hits linux-firmware
> upstream ?

Yes, the naming was discussed and the bins are accepted in linux-firmware

Regards,
Vikash


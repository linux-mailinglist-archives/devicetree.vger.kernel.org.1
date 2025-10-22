Return-Path: <devicetree+bounces-229877-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AC0C1BFD44C
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 18:37:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B7B3619A2741
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 16:34:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A61429D270;
	Wed, 22 Oct 2025 16:17:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RU6FnU3d"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DC7329B224
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 16:17:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761149849; cv=none; b=guCBrASvn25+kzK6/Vqb3b1fbchOAfcu16pG9SD4jtUnbbDC+6+Jgqw51CzuNAs3XKwn6+lY44CjDDEHYFL40CV8juHTOOfPXtxMt49oDdZUKEAfZJmObUriKwjfqoXLsJ3m+JoDkrIBMxzpFgmGWUEif0m87bLcv06lWfDaDF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761149849; c=relaxed/simple;
	bh=7909EFCZVzxjPNQLeS9dieFc1IzT7p+ZR9mSr68+ju8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=V3XwSUY8q2av10D4Ag792pLtWHTjcIB6nTPBOIJiIErfBTqPr83zb1KNFPRNu7nCWppIcwLQGkQpJ2Dh+sqZfJJAoupdZ+kNrIeAH1I/QqhARtrsk26kwPa76x9OqxgI9wsbuTNRVhyHHHPPy8A46OgppnhDNKp6LFPro1gCz18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RU6FnU3d; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59MARjSS001141
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 16:17:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CwhMpbCUhSUmGYknZGW4l46K5hlan/s+wby4exYafxA=; b=RU6FnU3d59ZvzKpY
	4DWnKXkh60vGriy933P5bbDd3t5oawKxsINkKmYu1sGtQNbnW0PYqEHtST31r0fK
	gUM7LyrhC6GvzM6wLzysjviDIUZlMgVe9yfjfzDiPSQpuYuhpIPpKRwG9tSanioJ
	oGQ0QA3LLVrtM6Gq+xmRAW3i1sZyhH1IAt4H0esXqGeA5bOlQoeyHotT6a1o/JRm
	jdZ9K/xVyUq7Bmpf5nwyuuXJN1aGi/oqNLW/rnJ/g5noDpGw4LDhPBZxDoqqz3dc
	liTXYzRAXOHbjIGiVP1UifLkHk6a0+N7pP+2XT7Kj1gjxakM0reQocmXPcUfBwp9
	L9DiFw==
Received: from mail-vs1-f69.google.com (mail-vs1-f69.google.com [209.85.217.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49w08waxhu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 16:17:24 +0000 (GMT)
Received: by mail-vs1-f69.google.com with SMTP id ada2fe7eead31-5d7dce38a79so613122137.2
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 09:17:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761149843; x=1761754643;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CwhMpbCUhSUmGYknZGW4l46K5hlan/s+wby4exYafxA=;
        b=RIv/RolLIiNZNt+zVDOBb7YxjzlEAp5jive0WPrI1eWtHFk4XeufGz9Vy+eGHktHSl
         zd6YmnbfvUaCsSr+LAAkvu/RXSIdcCKvgU0oXcntLruV8WmQl26l5kSARlzUO8ntXmWf
         wB0uepnZrLL9TuLXHCWe3gBKXCMSM2G0bpwMV44fQm4/1P+mCOujrFgqOfn267ItYRGQ
         YkM5osCo0rJRTATmfalgsmo8YSmbzIaR9X8iCz5mkjPp2X8dkPyzEnKGN/eLp1d2wdpb
         mQsnjDQPQxTmX5AJlmDB6388zfeizx4BeJgPO/44U+Azln8gDdSUacJI1tGqoCnGSlJ+
         1S4A==
X-Forwarded-Encrypted: i=1; AJvYcCXAJqUlr2yfFPXuxw9rlAn4lZW3h2pj90dTrqS/1+fouMHDDKEmoSciB1L+ltMY9eAnwhZFV045gfcu@vger.kernel.org
X-Gm-Message-State: AOJu0YyvaliVIyIhqmVVram+/OPbnZF34e4ANU946QwiljEv1Z95k/X8
	Mlc2evYCbJbHaIUZeiRrFa1CvxtTBTVRRLwznXn0uFCDblEjQCDayZFIYsVji5XkBOzQA/1ZCtg
	VpvAt2fcHJWQRILPX/IjzO+DHiwfrqXY0ruCHb6wpQYMgIxaudNQz4Z4o2peFNSln
X-Gm-Gg: ASbGnctqnCgSOjikHhWDEvi7P6CBIP608CGlzhLZIQTWvwv5xd6M2aVw56auXf7zPYu
	cl2V0F+C+FuG3hcEvutGxcPpuymetwrF10oBFW5oNa+kyXwWheYHgt7P2pKyRTNhzdGJpdEvu31
	XrFJh7On55a7Z1tIEzMs0FU+WhNi+wMZfbtgc8m6psAY1JRsL6pjBtXODX0VhWMjBVc+uh6GeE3
	/GKxAjN9YkPoRWByPIM2S2p2UOY7En5z5HAbZRxHMtPlbj4Nuk4cv8e+6Aku7V9yMrkvPedbrCG
	32t9d8xR/hTk/epCVALY6jdZ61Lq5U1XBJaAFl5n9bynPw5g7jxGzEM1uC+inLsoA7QuWnd970W
	QqtnSmNdXshmmpwqnSLcnCEOA4ctqiE3lZk0QlpGEWNH7B+6Ka7AbVl2y
X-Received: by 2002:a05:6122:5215:b0:556:9d50:7ea5 with SMTP id 71dfb90a1353d-5569d508084mr349220e0c.2.1761149843295;
        Wed, 22 Oct 2025 09:17:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGXH8CkUOfdOZ/99j8RNVUBwBPGkhStJMi1yxgoQoY7YZCYd2Y1gb89wBcUB1rlBjWLIa0mGg==
X-Received: by 2002:a05:6122:5215:b0:556:9d50:7ea5 with SMTP id 71dfb90a1353d-5569d508084mr349212e0c.2.1761149842804;
        Wed, 22 Oct 2025 09:17:22 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d40790b88sm33202866b.25.2025.10.22.09.17.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Oct 2025 09:17:21 -0700 (PDT)
Message-ID: <13b8651d-c59f-4d3c-bdc6-9ce2b088cf48@oss.qualcomm.com>
Date: Wed, 22 Oct 2025 18:17:19 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sc8280xp: Fix shifted GPI DMA channels
To: Pengyu Luo <mitltlatltl@gmail.com>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251013115506.103649-1-mitltlatltl@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251013115506.103649-1-mitltlatltl@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: PR01T3UkjFqRm3MaxE86iczI-8-XxCzH
X-Proofpoint-GUID: PR01T3UkjFqRm3MaxE86iczI-8-XxCzH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE5MDA5MCBTYWx0ZWRfX7MnHHLWCS8ID
 wvWbl20E4VUKYjxa9vSCOe3WdKV7OCPtL0OygTw34foEAqsHF1k447cMDvyXgmT78FM9Qv9mhlD
 qQ6UMP6vJgV8zcSibJBBWBMzn9tWyQd9zKNCXSD9KrM3XJyT18Wi1M6rohTWkqrQx4xuXws0M6V
 shKvH9XzeohT3xhlnEBSl7FxYSp9J9P4R5ck6aaLiA0sPC3ICoqR5IMr3ujzPyItr+0clemlyia
 m17dShsusU+SpSm42BlF6PlEvJr6kxdrP7wugPVcqedUzOKiJXxIteTtWFW7Xze0+tMMqpDtaeV
 ODKcO+jKY/DqyM9DRwAaRBoXyLNT8ixOk9KGCJLnKuy1vQfaGVk3qG1gg3PGmfWkjaYqWRWmdt3
 YlzeCN/hMHwoMuaL7Z9HEl3nPLek6w==
X-Authority-Analysis: v=2.4 cv=V5NwEOni c=1 sm=1 tr=0 ts=68f90394 cx=c_pps
 a=5HAIKLe1ejAbszaTRHs9Ug==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=inrnm_oqOa-xIY2ww0YA:9 a=QEXdDO2ut3YA:10
 a=gYDTvv6II1OnSo0itH1n:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_07,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 adultscore=0 priorityscore=1501 lowpriorityscore=0
 spamscore=0 suspectscore=0 clxscore=1015 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510190090

On 10/13/25 1:55 PM, Pengyu Luo wrote:
> The GPI DMA channels in sc8280xp.dtsi are wrong. Let's fix it.
> 
> Origianl patch was rebased to the linux-next and formated to a new
> patch again later, then it got the GPI DMA channels in the new patch
> shifted.
> 
> Fixes: 71b12166a2be ("arm64: dts: qcom: sc8280xp: Describe GPI DMA controller nodes")
> Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
> ---

Thanks for fixing it up

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


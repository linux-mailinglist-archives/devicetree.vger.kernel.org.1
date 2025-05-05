Return-Path: <devicetree+bounces-173714-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D2B35AA9534
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 16:15:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3929B1646A7
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 14:15:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CEBF25A2D2;
	Mon,  5 May 2025 14:14:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ND390zxj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9013259C9C
	for <devicetree@vger.kernel.org>; Mon,  5 May 2025 14:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746454495; cv=none; b=RRGSWighWGiXugIKU/fjZrTdD+T7/RdtBcsLfkBiuo1RdyTWlTf6CkAK+eXS/k7YQgHWzj/aa4eaLeOPdpo0vfp4FazzsinKZ2WkxXVzm/aAzxgPPhXqTnd2C5ErGv9l+iy6pEFBjILvai+sBIwXysLNRm3MvT+tqnQNgrWkWc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746454495; c=relaxed/simple;
	bh=g0rIMfPYox6tTNqVeb0ZnxMcXS3eJl9r0KihR8f0GYs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HCrFAEj/n01vkJvpPx5XHE6HMMx7wUMOUoLt0fO6N6wXi6YK8bWAMRD1QPfYlK9OcGv/zPnJ1ck8noWr5Cu6tMOYBAtDInTFwsbdjPdAS4ok5QmI3buL1y/XRxTKivyLXDS0C3PbtinwjjLki4fH5Q5+Zf0UlDhyKvMieJFL9Q8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ND390zxj; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 545Bm3f7005337
	for <devicetree@vger.kernel.org>; Mon, 5 May 2025 14:14:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	N4sMPDgul+5aEBpACagOkB2ejQOvDaMfk9F++ofP/og=; b=ND390zxjLditdSh9
	kiFSZFnTqnxOxxGjuzKTkdXrBLm7fTfzneNq/E3ltm5M6SYwWueTLPTMBKFhtATE
	dKwrB0vksp4iEuvR7wG+pQ1Z+hT5ZFw/bAsy36tAIad2JLVUPSaj52ElDhKq88G8
	8JvwImFXBm+Ex2hGLjcyNvStD5SFg0qzBYn9X8i3V/id0XYcH+LBgFIE/ebVsPI8
	d7JL5hVjMt+Gg/7gxfV/v3CLfnnhJCo2+pQWobOYtDAwMxqw4OzTWN4MTine0DcA
	nBEVRWI9fOldTEbcyPEYwDlm3rQOvNiISPfvdXviaT/id2xQgdwFaD10wOOSkGiZ
	L9du1w==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46dbc5c9kp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 05 May 2025 14:14:52 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c790dc38b4so790437685a.0
        for <devicetree@vger.kernel.org>; Mon, 05 May 2025 07:14:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746454491; x=1747059291;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=N4sMPDgul+5aEBpACagOkB2ejQOvDaMfk9F++ofP/og=;
        b=fPS/CVzO47ERAWoYDg9MrRrYZQdiKNemlamXRkEe/+u82wt2QjkomFXT24A75/wvh9
         KcKxWrWT2a25zP5Blc9w6LMZs8M5zGgyPz7ZgZnJDPJCkY3FgyU6x8aKiKTln7lv8r/w
         M3Hn9aXc1mIrwoi7rDWPCTeyGbIL20OUVg+1Fyy9AsfvF3Suh3SsU0WhGl+WaCB5smBd
         Y9+M5qJ26IAa1P8Tnpb7F9KE6aBWMIyN6CS1LyFK9rk7GJeYoxxXcFY9S2kuwVOFdeYl
         +eQsTH+kLMYhj9ew6tEEBVXg51iSQyqxRzhHKSfiSNfGLB/fo4fDSq4kGxZa2hvUoWlQ
         G2gg==
X-Forwarded-Encrypted: i=1; AJvYcCWWV+ic1a5tqxh1XyordjnZ11LngZ7+SG/IiXL+6ulBKI//3F9UF/glaSacFX9P+6WwYcSokIQYISIQ@vger.kernel.org
X-Gm-Message-State: AOJu0YxYTsQ+qb1ORgicbm+mbd1u0jxNQL3O6nn+rCuKNTEhU3TNt6RF
	PtjVApVi6gjMug5ZKdtPPqE0eVT9hvFChjGNM0BCD9Nfa5vjExG5GUzb3oCBfysoYzl6RpuYUI9
	pyihiXW8axO2/FwqCM99rqp4q8Lu2ePPvrD9mMXqvgUCu5YE2K6RBxqToKydg
X-Gm-Gg: ASbGnct1no0My1f5cZn5mzxH0g1kWxRBOn2ZtN3/4CL9uWExkLhIlQM3JdWOQEkjeMO
	/GGV0b3TocoxvCSm10YJLHbYwVz9onNjFidAGGHkRdMR0WM3YUeVNjNnvE0TJneybbwih3FUCK0
	eZAEZencUfYVZq5YKEI+43zDRumHnMTlJIbZpub6pjH5f8vpyp4c7QY7hkSrlpJfjLQCYbGi0lM
	1UN2w2f+HfRKchIibEnfPBWiXRP2mNsJXXQX+PcOa0lOeZcNFd9wUogpStnf2n9sxV+5xEHnheS
	7MQNsuSGxIkkxcwO5iyIglAyqjVIunRcgcQ7PcPCrdTpMwQbo+NGUr1ObVMjFt3hPZej/Wu13yl
	PVB9Yz9j3t5HuxI1jjJTTmnI5l9XPyI8uk54cpVI9tBdJhTjYN37e7EdZiH0IqwYmKeh9
X-Received: by 2002:a05:620a:2697:b0:7c3:ca29:c87e with SMTP id af79cd13be357-7cacea24688mr2331708885a.21.1746454491517;
        Mon, 05 May 2025 07:14:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH/vBvLz2xsMDmp49gK5gm96O/Tw7T3JFctVTVSeo6t9VZN8IC+KDCL2/JJC8O+HXJyk28oEw==
X-Received: by 2002:a05:620a:2697:b0:7c3:ca29:c87e with SMTP id af79cd13be357-7cacea24688mr2331704185a.21.1746454491141;
        Mon, 05 May 2025 07:14:51 -0700 (PDT)
Received: from ?IPV6:2001:14bb:671:42db:147e:6740:cd7c:7688? (2001-14bb-671-42db-147e-6740-cd7c-7688.rev.dnainternet.fi. [2001:14bb:671:42db:147e:6740:cd7c:7688])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ea94f6613sm1721233e87.217.2025.05.05.07.14.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 May 2025 07:14:50 -0700 (PDT)
Message-ID: <f56c19a0-18d7-438d-8d05-98ae7a842959@oss.qualcomm.com>
Date: Mon, 5 May 2025 17:14:48 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 15/24] drm/msm/dsi/phy: Define PHY_CMN_CTRL_0 bitfields
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Jonathan Marek <jonathan@marek.ca>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Dmitry Baryshkov <lumag@kernel.org>, Rob Clark <robdclark@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Rob Clark <robdclark@chromium.org>, linux-clk@vger.kernel.org,
        Srinivas Kandagatla <srini@kernel.org>
References: <20250430-b4-sm8750-display-v5-0-8cab30c3e4df@linaro.org>
 <20250430-b4-sm8750-display-v5-15-8cab30c3e4df@linaro.org>
 <j47udhqq3ldsza3cr6a6rd5dq7uxjgpolbmdhmpzvzt7glpuva@v5tgkydlywag>
 <97e49dc5-9cca-4c85-b0b0-18c472d0ec0d@linaro.org>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <97e49dc5-9cca-4c85-b0b0-18c472d0ec0d@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 1UhDLpOKVgF6ez7x_OLrGWYVTx2ro1Zu
X-Authority-Analysis: v=2.4 cv=O7Y5vA9W c=1 sm=1 tr=0 ts=6818c7dc cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=dt9VzEwgFbYA:10 a=KKAkSRfTAAAA:8 a=F9VSnBJ7OdIsbtMwzSAA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: 1UhDLpOKVgF6ez7x_OLrGWYVTx2ro1Zu
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA1MDEzNyBTYWx0ZWRfXyFpp/V81CWt5
 U5ScPwGA5NpD/uhsbSIgY1GRaiPZgiAsFksnpDuhXM6lTpccwRQlECPZyBwmgumD94dFdEqQhz1
 exe/Az+pVxvBabPoKKWwMakkVAqGKjizEfpUzPlp94nY+dndX1yfZA/ql9bsmMiObeV0bGlS+GE
 LRVyG4Gmdn2ACwQXzHtk7m9Cv4dDDCB5fr/6baOJw+bEkl7Cp2I3DHyAb77Y5BtBw+tCGhRAKGh
 a8pMXaHlbhI1KiG4MO0GveKdb4/M8s+tuIpR4sN/rU/I7BHSbIeIbaFPkIyoze5DKTe9t3/UY3A
 h9rMOhi5pKPxSUm4mCexKJVSk0vVC4azo7kBD5DfnEm3DvPx7uP1YKAt04+kCpvXrZcDiU0kRCC
 KPvOiIwyWem9Dg8Q3F+V4vEkWWhJld/Q/i3t6UHvQ5N1epRyg5dhEm+vSAyHqOemoIkdv4pl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-05_06,2025-05-05_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 malwarescore=0 mlxlogscore=959 mlxscore=0
 clxscore=1015 priorityscore=1501 adultscore=0 phishscore=0 bulkscore=0
 impostorscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505050137

On 05/05/2025 09:17, Krzysztof Kozlowski wrote:
> On 03/05/2025 00:44, Dmitry Baryshkov wrote:
>> On Wed, Apr 30, 2025 at 03:00:45PM +0200, Krzysztof Kozlowski wrote:
>>> Add bitfields for PHY_CMN_CTRL_0 registers to avoid hard-coding bit
>>> masks and shifts and make the code a bit more readable.
>>>
>>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>>
>>> ---
>>>
>>> Changes in v5:
>>> 1. New patch
>>> ---
>>>   drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c             |  9 ++++++---
>>>   drivers/gpu/drm/msm/registers/display/dsi_phy_7nm.xml | 11 ++++++++++-
>>>   2 files changed, 16 insertions(+), 4 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c b/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c
>>> index ca1a120f630a3650bf6d9f9d426cccea88c22e7f..7ef0aa7ff41b7d10d2630405c3d2f541957f19ea 100644
>>> --- a/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c
>>> +++ b/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c
>>> @@ -362,17 +362,19 @@ static int dsi_pll_7nm_lock_status(struct dsi_pll_7nm *pll)
>>>   static void dsi_pll_disable_pll_bias(struct dsi_pll_7nm *pll)
>>>   {
>>>   	u32 data = readl(pll->phy->base + REG_DSI_7nm_PHY_CMN_CTRL_0);
>>
>> This (and several following functions) should be triggering a warning
>> regarding empty line after variable declaration block.
> 
> You mean --strict or what? It is common to have the &= immediately after
> assignment, so that's why I chosen that syntax. It is just more
> readable, but I understand your comment that you want --strict
> compliancen even if it hurts readability, so I'll change it.

I'd probably prefer to split variable declaration and readl invocation. 
Then the code will be logical with &= comining on the line adjacent to 
readl().

> 
> 
> 
> Best regards,
> Krzysztof


-- 
With best wishes
Dmitry


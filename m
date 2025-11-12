Return-Path: <devicetree+bounces-237471-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 73D8AC514FE
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 10:21:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3A260189B063
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 09:21:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EED32FD667;
	Wed, 12 Nov 2025 09:21:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NcehQdir";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="eAsbqoQn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C1BF28CF52
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 09:21:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762939278; cv=none; b=ntnWZyN2UtCt6vb/HD4kaX/NEGwHSOx23E1A3iZi6+X1ACNAMwXvD+yybCNprAoMc0sKtTcWl4eos9HF54PupZZ5tAQ09RQ1LBaM9sQpJ+NkcoieoShhTM6o0HZXQez+TgSe76CCrkOXVugvCQA1gJp0Um7rYtAGo6kxn6GPLPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762939278; c=relaxed/simple;
	bh=p/3gdJ0mEWz4X0Zw7w1a/Dom8p0nO9b3dR4aFzb7OLI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=btCnBEUTmX+MJIp1dgq6IYS2VjDQF0a8P9Y1cTGDg6sYtXnhStfxFIL0bsF1/3KKzjRCHmwAHMSOReg7k1EIay2kOQkAulWUXuOv+tgKaTxQ1RyEwHZ6ROZG5YEgQPoVghTHs0/Lc2dPnfQHn9rmTqL96xqOHkF9zEiTf81aB18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NcehQdir; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=eAsbqoQn; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AC9D9jd511165
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 09:21:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TkA+4SpVmmeTiao6KIqZ4pvqPqOwV4VDAKwhI/CEjf8=; b=NcehQdirr5n3hmeP
	/7bwgJEhQ8aKIJRmaHh8K2vVoGAmx4KtGdfqx6ljdaU7SRykOpSnHG2obj4nHFGK
	tR8HDnad7YTQLNppdAr0pyIyMV2DHBHB/MJEAvGXkWCg+rAInGaU3L2U627axl19
	A9iF/8LnT9ssi6onQSUoojLAxoNoY2REqs4F/rci/KEvMnFI+WVBviSSucgoHkOQ
	yUuu+4J4kGEzDVp+1s4BOBPBrCbRANzK7vo//v7U1jP/IQnfY4hthv8HkKqzNqKw
	pzu6k202MFLzIctSlsgagq5CzjwQ46i1Fe5vHFEd1AwlYtr1oTzRVFca2JaoDDmw
	i0048A==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4acqdgg116-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 09:21:16 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-8823787b5c9so487016d6.2
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 01:21:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762939275; x=1763544075; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TkA+4SpVmmeTiao6KIqZ4pvqPqOwV4VDAKwhI/CEjf8=;
        b=eAsbqoQncV/P62M+dFyrxBIGR7TPymNEA6h46e6rAiyEakPWKX/tNVKRgq7fbJALwT
         wh0mw19GnTchBESfU6AFMo0FaUpQbGLn9vmk/T1fAV9uMOFW65iW6ibS9hm6SNZn14cI
         ueHi37tQBVI0H0/4O2hgIQmiNliKjIyG4OiPvx6yVUljwdv/QGpmr9WGBiO1nzi/XW+s
         7kQsfHuspdWoWQ0lkMdffejsQsqAS5972dbrT8cCNrngrOSQwOpBfZOf+4BdOKR3iYHr
         lWBFobb2LgwawRvUWzm5kfXEVGKwRZUZvUmog7K3cy3NW3ByNd/fuhSGEnC3GPcY/aO3
         CPyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762939275; x=1763544075;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TkA+4SpVmmeTiao6KIqZ4pvqPqOwV4VDAKwhI/CEjf8=;
        b=uyIS4QkP/SaeHW2pYV4SpbSdJnKKgjaATYiDPAwGmn7hwLgHxOZd0bgqjYXVwh+q9w
         7cKN5ao++YKtBb0n8ZXdydYgtzqdSwerRrOXaormhDdK14TKqampXHnU2DfyOKkQq0Em
         HXyg25LoMjph+/bF6a+kgKIF09EETiWJ2asgH+HAIU0k2h0IpewB9cr5RQSq+G9uT1Yd
         X4+7zrx70nIsPzXqz4PK/+JKqefIPR3fJFS8EI/if6UipGAddqjQNF8/xKu5O3EDLCK8
         9VpvGOH+ow2oYdzuQcbT6BphaftDeVvGwJ4wkgWseXd0Rrg0+PuzP3efpT0Ubmpsr8zp
         DKiQ==
X-Forwarded-Encrypted: i=1; AJvYcCU7se8nVqdn6ezmp3TeMp3jtIoDSfLePe3r0tuMKsfxg7z41MGIy0k5GuQ/IZoNbnMux0ZH3h3bRZvD@vger.kernel.org
X-Gm-Message-State: AOJu0YzOsL3EkTsIohwmyF55fXpSXsR/hcWzSlsZcFRMMKa+3grj3uSF
	9vMTLrMEKr+UcDA5uZP3BHqZHhjFqmuoUlTv9DmWM8erT6NVwftwAUdm7C1SyVb61Dm9XajcT5V
	iGC0yNeO5QIoLE+IO6hrmuqFQPv0LRhLv7w9FBaImS94urSzTlvcBQAcW8fsbdT+/
X-Gm-Gg: ASbGnct49ltcFctbCX1qAbQJUnQBO4bkmjtMzk1doXqTS9pMSRJbbZSqrgeq9uur1jI
	xCvXuNHxtYZfyft2IglVA4rucrkBN1B+N0M36QDEXmIbQljER4UNH2f5Fhesg4N8iMRRas9KFLK
	tBSECC2wnI3NLw7y7690DkQearHZB6tH5aSQoTQeAxz6MCqExiVqJKuBCU8aFmyw+g+N/q16YwP
	zuNUG+ErxEQrpv65vgDpTaBSmwQfRrkg/FU1PMH+IF9ljsbfpZ1sso/LC1oU5rTpgdPlVsHbhXA
	aMov92r1O29PN3MfIhc+gtbV5R4yzRixiSBGI2IowLlKp0lb1cVNEqqD1N0VkPQT5j+3gyvZsvA
	90dEBx4ma0qBQ6RSq3nOY4dEpUshzcHCqe76xEsoVx7LqHWyOi5NvjTzN
X-Received: by 2002:a05:622a:1808:b0:4ed:3cfa:638a with SMTP id d75a77b69052e-4eddbd6f1bdmr17859301cf.8.1762939275327;
        Wed, 12 Nov 2025 01:21:15 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG1gI36KuIEWI4rn/hNy3hzO7bxb+zuycrzvicz8tGoIOMN6OA9SGPB+GEKzLD3Tiqg9VPG8Q==
X-Received: by 2002:a05:622a:1808:b0:4ed:3cfa:638a with SMTP id d75a77b69052e-4eddbd6f1bdmr17859171cf.8.1762939274937;
        Wed, 12 Nov 2025 01:21:14 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b72bf407a22sm1557621166b.29.2025.11.12.01.21.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Nov 2025 01:21:14 -0800 (PST)
Message-ID: <ec38f267-2d44-446d-b538-78f849ffec9a@oss.qualcomm.com>
Date: Wed, 12 Nov 2025 10:21:11 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/6] clk: qcom: rpmh: Add support for Kaanapali rpmh
 clocks
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        "Aiqun(Maria) Yu" <aiqun.yu@oss.qualcomm.com>
Cc: Taniya Das <taniya.das@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, jingyi.wang@oss.qualcomm.com,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251030-gcc_kaanapali-v2-v2-0-a774a587af6f@oss.qualcomm.com>
 <20251030-gcc_kaanapali-v2-v2-4-a774a587af6f@oss.qualcomm.com>
 <swma6lyjfmyhl5ookdzvpjn5qresgsze5wptg45jfgj7ub6a4t@bdgfstw6gzoq>
 <507b121b-98c0-4632-8a61-e9d7a6a13a3e@oss.qualcomm.com>
 <42xj5qgoh3m26y4hmdck5hfyqaxncfaeugymrmrxb7tusxjvm2@wsjztnhbp5jf>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <42xj5qgoh3m26y4hmdck5hfyqaxncfaeugymrmrxb7tusxjvm2@wsjztnhbp5jf>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=dtrWylg4 c=1 sm=1 tr=0 ts=6914518c cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=k9nrLfKtrhbSy2XMf4sA:9
 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-GUID: WpXvWzI4bh8WedelIoTAVBYCDGZobZE7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEyMDA3MyBTYWx0ZWRfXxQLMVralcpbk
 m7GfianEuSA968/z6d7qImZbdPDBF1To1tZReZMsuQlc96aU6yRxuxCu+0UQyLmvjKcXNlxWLHO
 2uVi/pRdSL4Jnblo/WZ2aoxIH2ALoTGoCqC+ieWNRoF7kQfUTBR3qFJhFDCVistVqE0smBwpfPl
 svmOxuPKujJi0Kjp2WuR+MNMkijvPnb5Md9+6gMzTa3ZlWSZTMw71kxiBFWRwgx6r4j4stNpXu6
 M62MVbj/IIAto92otQPTb9E18qKaRVdzgMZjccBidxJar3xjzFlmSp41P8udLwEym5buv6ULQcC
 dbjvrFFFOLUqM6pY+uwc/SyAQoA2TzM4GktRGFjnuRRiNzvDq8HY2fCstwsJPNfs4AtD00WGLP2
 k3gTxnM1ElG0WFQPWvBA0d6U+veBhg==
X-Proofpoint-ORIG-GUID: WpXvWzI4bh8WedelIoTAVBYCDGZobZE7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-12_03,2025-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 phishscore=0 clxscore=1015 adultscore=0
 impostorscore=0 spamscore=0 suspectscore=0 malwarescore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511120073

On 11/11/25 1:16 PM, Dmitry Baryshkov wrote:
> On Tue, Nov 11, 2025 at 07:44:36PM +0800, Aiqun(Maria) Yu wrote:
>> On 11/11/2025 6:46 PM, Dmitry Baryshkov wrote:
>>> On Thu, Oct 30, 2025 at 04:39:07PM +0530, Taniya Das wrote:
>>>> Add the RPMH clocks present in Kaanapali SoC.
>>>>
>>>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>>>> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
>>>> ---
>>>>  drivers/clk/qcom/clk-rpmh.c | 42 ++++++++++++++++++++++++++++++++++++++++++
>>>>  1 file changed, 42 insertions(+)
>>>>
>>>> diff --git a/drivers/clk/qcom/clk-rpmh.c b/drivers/clk/qcom/clk-rpmh.c
>>>> index 1a98b3a0c528c24b600326e6b951b2edb6dcadd7..fd0fe312a7f2830a27e6effc0c0bd905d9d5ebed 100644
>>>> --- a/drivers/clk/qcom/clk-rpmh.c
>>>> +++ b/drivers/clk/qcom/clk-rpmh.c
>>>> @@ -395,6 +395,19 @@ DEFINE_CLK_RPMH_VRM(clk4, _a, "C4A_E0", 1);
>>>>  DEFINE_CLK_RPMH_VRM(clk5, _a, "C5A_E0", 1);
>>>>  DEFINE_CLK_RPMH_VRM(clk8, _a, "C8A_E0", 1);
>>>>  
>>>> +DEFINE_CLK_RPMH_VRM(ln_bb_clk1, _a2_e0, "C6A_E0", 2);
>>>> +DEFINE_CLK_RPMH_VRM(ln_bb_clk2, _a2_e0, "C7A_E0", 2);
>>>> +DEFINE_CLK_RPMH_VRM(ln_bb_clk3, _a2_e0, "C8A_E0", 2);
>>
>>
>> Shall this suffix necessary to have e0?
> 
> Can there be C6A_E1 at some point?

Yes

Konrad


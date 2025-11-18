Return-Path: <devicetree+bounces-239608-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B2BDC67459
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 05:34:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id A371534450A
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 04:34:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 208AB29E115;
	Tue, 18 Nov 2025 04:34:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pgypgRjX";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kJvd4CAj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11DE328030E
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 04:34:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763440489; cv=none; b=ZIYWvMiJ/65W5cEKXpP1Bs1W90BxIjQKHZfrvxviDC6cnnTewTj/TvO05uko67BIMkzMc69C6SvCNyoDIZExMcyNh+2DuQ/5bMPuXkq8CUPKDyIl9k92yBFS7zupvalJ51goYpWDDUMkeP0skE8SXa8Z7gMvYXW/2H0njszppkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763440489; c=relaxed/simple;
	bh=eFPmGiNcQ+eKpI3pIVJZQEIPer6AtMRNpKmkQqg1LpY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Xh0heJtWTy+JWa0I+ZrtCGPRrIffvj6A2nrWH82pGd7cbVUdORPlDPg6odQ0JpVsPssy77DdTh7P92KgN3GZurONymJn6t0xeI5s6EDwLfRpkkXYorDn4rZKtWeXhOdPSEtmzxE3KLCJcTeC8B5L5qHoRO5kP0+VpxtyphuqFg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pgypgRjX; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kJvd4CAj; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AI3NTdi375655
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 04:34:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	96sL93DbfW75iRtuX3LpfQmBg7hrqKggau4HYAGX3mU=; b=pgypgRjXry5mXmY7
	5MVNibDYj3m4BrQLGxkOPBO6eZS7VItsFhexohNW/ua0U/aabmmZ6P4HjSOpzlZj
	Wlg+T+A9tLyDXUuwdBhoQFBKQF3PKy+XPYaeet580IT4kO9IekrHSnxejO0PQPzA
	HfB182To5jOaEozE+WmK4HLDx9tf2WqjBnCMzXHtrEffLbfjo1ugh5ak4yqmuxIv
	4QZsNaENV69ogsemYAG7rSkaaEChG4pZIi16F7YR1KSy/rg+lcdrzB9QrrNMNX/r
	KbdTaPSzxLVVZr6OQDrdO7mHWekf4h/aV3AHlVTScBo5IzRerhzzPQtmIyzDk6pg
	v2KUZw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ag76nhsd7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 04:34:46 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-8823a371984so41112446d6.1
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 20:34:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763440486; x=1764045286; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=96sL93DbfW75iRtuX3LpfQmBg7hrqKggau4HYAGX3mU=;
        b=kJvd4CAjm3Y1/x58S4xNtoEEfN8Z+GMyZZydEg5qFK4Hhx9MmWq2JJ0QU1Hjq13i3S
         JdfrOj8nXUhJBqhQnd28xvE0tcxAl89Ni4M6m2LkZ50B3TXlUp/ebduJTUVji30/MMWt
         PiDR+UTtRluo813eURCZJPVbcaWANKKuUpWB94ZypNyecJnGu/HryAz1V4sJKsCDMokR
         YONWr0ssacF/MfQue8u8Mqng+mJlWXqgsSCIEplFJguUlPQp+rN4LO9ngRcFuHZNbVsc
         fUo2BRg5MMq5/RlxZnXFC+GjzOex31K62ikggQdANI2t21Q5f+5Ty8O/DdjDQ/dxN9tZ
         zgLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763440486; x=1764045286;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=96sL93DbfW75iRtuX3LpfQmBg7hrqKggau4HYAGX3mU=;
        b=bSe7UD43icq+xuFASXUQuNVkSyTfR5vg8El6P8ng8kKxxA6uSJDCGTczHfOW4zgc7n
         w8ZwAdzkHyL6G/cn/dLP5J6E8t1sz7zPutxOW+cQ1QyskkQWHKLWj5K0kXd3pj/42/7j
         ERV+cPv4QWa6WM5SDqFi1c92F/WdbGsnorxBu90lLnnk5S13B+qzgwHxo5GOpFJqKqGI
         ojTqtYyGXzJn/Pcz9h+yCWDYKk+eAl3Nnmwe2hts5nf5JCaWtaIfsBao0ACKyW7cqqCI
         qhkRJC0PgCkk7pQUJAZJY5HUAPE6YtS/YfaxTfBv3vvoEfG0QJSrUlRnxOtkRKQyN/1j
         JJlw==
X-Forwarded-Encrypted: i=1; AJvYcCVyk7ITw+Vmkdy8txBvs69Nq/kMwdAE9o9RdPHYA2LytdB5I+mvugya5Jt1qpVTTIM0ec7gYh/mZwJ7@vger.kernel.org
X-Gm-Message-State: AOJu0YydVh5czQK5a6qHk3oj+IrAjhvRccXUD71V0kc++XfvdUZIYGuq
	3DJQ8vugBQ5pUCKvuAfdHjUjvo4zZvmL/ta7WYRezLkUg2qMXaEUvkfb2qPrG7t9s2J+YG0ecIy
	aB16aGfenqYKQChue36GC/v5Ovq6Ng8Fn0LlQkP36NgYoRocmEAAmn3Uwg/isssm8
X-Gm-Gg: ASbGncvgCF7Xt/I3MQmJVrYfKVTXoycAmAnSKO5ACEtBHhSpUMML/3Og4GWYB1rBt6C
	wvKs7QqfihU0L8AciaohlvTP3LC7qSxgt0QYlXr9gHIVwkdmgrUoSHNOwdk6Bv0paIBaUjsmc3w
	VY1T6M2Topnap9YI7IY9n7H9PoolhIYu9f2eny3zZ11hvBsxNHSV+DxLRe4PlIxywLMCFLXV2pN
	mVD+QQUOmaJCtfL49kr8C1NTc6AhKjfM5SBslbR8mul6a6zBeZyaDSfMSosBsU+kV/7LWpnOVuA
	LfLRmiZaryqkty/FfMouj4GGJ269oZlRHaYNNRqmj0IF7ySfMfAo6/26HyLTVmZZXYHtRzwmcjq
	bS56SYFWEVGRYVP8LYYt5heqKf+cIAl4UO4GN3Stn5lSZqM67xlznyHKFvE+g5ny2kMsrPUphmR
	i48AO4uvk3EqPF
X-Received: by 2002:ad4:4eed:0:b0:882:3f45:c828 with SMTP id 6a1803df08f44-8829267b3f0mr236988156d6.36.1763440485962;
        Mon, 17 Nov 2025 20:34:45 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHCf3qbFNFO5bHbuNUf8/Vtg4In8NKMDI2VdMnoM8rjfEpd0ZJkeFt972jCERyiubWFLdo2Xg==
X-Received: by 2002:ad4:4eed:0:b0:882:3f45:c828 with SMTP id 6a1803df08f44-8829267b3f0mr236987786d6.36.1763440485531;
        Mon, 17 Nov 2025 20:34:45 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5958040595csm3649383e87.94.2025.11.17.20.34.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Nov 2025 20:34:44 -0800 (PST)
Date: Tue, 18 Nov 2025 06:34:43 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Taniya Das <taniya.das@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, jingyi.wang@oss.qualcomm.com,
        aiqun.yu@oss.qualcomm.com, Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 4/6] clk: qcom: rpmh: Add support for Kaanapali rpmh
 clocks
Message-ID: <j2fwz5vgzydi4dvtzegmwz25rukazf2clk5ga7ikvv5umm2jcw@edgrznbv24hq>
References: <20251030-gcc_kaanapali-v2-v2-0-a774a587af6f@oss.qualcomm.com>
 <20251030-gcc_kaanapali-v2-v2-4-a774a587af6f@oss.qualcomm.com>
 <swma6lyjfmyhl5ookdzvpjn5qresgsze5wptg45jfgj7ub6a4t@bdgfstw6gzoq>
 <380aa79f-f334-44db-9527-85247f9735af@oss.qualcomm.com>
 <2jfvrt4r7ddagh2ztbad7qnjpcvulcrtr3ekul6i26qg6zcd44@dxfhl3265okx>
 <cdbfe200-314b-4185-bb58-d528ed317610@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cdbfe200-314b-4185-bb58-d528ed317610@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE4MDAzMyBTYWx0ZWRfX9oiunQecPxa+
 /e17ve/4fMwbZRNhvbkAA1B/Jkmv9ItQQEBUk9S+CkORvYKGdeOtMIh+qpBCd6YSeokyDNU9bfD
 49RbftzuYOZ6DDFIdKR5efPDhNZ+Mbpi4OOXPAFciMu3fJoF4Ue+q4/PNvlwXVb61XZQTo+iWik
 l2FAWHnbEC8hCfwXarCd/PygV2fvcwvl8o26fHUfVO5iGDXFYbwcox1l/kP6e34YOYtj76umP1f
 Ygi5tUZz4VxNVsvSOXYF+FAGlqqe/wbxVlLbNGkzCheh/uYNhg8WckK4CPBi2URyUc5+4K1ROuD
 Pfelv/+LpehbpikvylImyMWyTqADb6e0i92rBuufjHCQdasKzTRMv4KVr8Or/OzW6kM/YaCBZQO
 eWHw/FhkfODIJymdFBDBg9r9sfWhGg==
X-Proofpoint-GUID: usxW5FbhPGJZWBWEcdxz-FdzrdXcnbZA
X-Proofpoint-ORIG-GUID: usxW5FbhPGJZWBWEcdxz-FdzrdXcnbZA
X-Authority-Analysis: v=2.4 cv=a4I9NESF c=1 sm=1 tr=0 ts=691bf766 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=R_MjEz8UllVMvTsHhMkA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 spamscore=0 clxscore=1015 bulkscore=0
 adultscore=0 malwarescore=0 priorityscore=1501 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511180033

On Mon, Nov 17, 2025 at 01:28:46PM +0530, Taniya Das wrote:
> 
> 
> On 11/14/2025 4:38 PM, Dmitry Baryshkov wrote:
> > On Fri, Nov 14, 2025 at 02:13:49PM +0530, Taniya Das wrote:
> >>
> >>
> >> On 11/11/2025 4:16 PM, Dmitry Baryshkov wrote:
> >>> On Thu, Oct 30, 2025 at 04:39:07PM +0530, Taniya Das wrote:
> >>>> Add the RPMH clocks present in Kaanapali SoC.
> >>>>
> >>>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> >>>> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> >>>> ---
> >>>>  drivers/clk/qcom/clk-rpmh.c | 42 ++++++++++++++++++++++++++++++++++++++++++
> >>>>  1 file changed, 42 insertions(+)
> >>>>
> >>>> diff --git a/drivers/clk/qcom/clk-rpmh.c b/drivers/clk/qcom/clk-rpmh.c
> >>>> index 1a98b3a0c528c24b600326e6b951b2edb6dcadd7..fd0fe312a7f2830a27e6effc0c0bd905d9d5ebed 100644
> >>>> --- a/drivers/clk/qcom/clk-rpmh.c
> >>>> +++ b/drivers/clk/qcom/clk-rpmh.c
> >>>> @@ -395,6 +395,19 @@ DEFINE_CLK_RPMH_VRM(clk4, _a, "C4A_E0", 1);
> >>>>  DEFINE_CLK_RPMH_VRM(clk5, _a, "C5A_E0", 1);
> >>>>  DEFINE_CLK_RPMH_VRM(clk8, _a, "C8A_E0", 1);
> >>>>  
> >>>> +DEFINE_CLK_RPMH_VRM(ln_bb_clk1, _a2_e0, "C6A_E0", 2);
> >>>> +DEFINE_CLK_RPMH_VRM(ln_bb_clk2, _a2_e0, "C7A_E0", 2);
> >>>> +DEFINE_CLK_RPMH_VRM(ln_bb_clk3, _a2_e0, "C8A_E0", 2);
> >>>> +
> >>>> +DEFINE_CLK_RPMH_VRM(rf_clk1, _a_e0, "C1A_E0", 1);
> >>>> +DEFINE_CLK_RPMH_VRM(rf_clk2, _a_e0, "C2A_E0", 1);
> >>>
> >>> What is the difference between these clocks and clk[3458] defined few
> >>> lines above? Why are they named differently? If the other name is
> >>> incorrect, please fix it.
> >>>
> >>
> >> Dmitry, my intention was to make a clear distinction between the ‘rf’
> >> clocks and the ‘ln’ clocks. Since there could be overlap in the
> >> numbering, I added prefixes for clarity. I should have applied the same
> >> approach to clk[3458] as well. I will add the fix-up for the same.
> > 
> > Why do we need to distinguish between them here? The resources in CMD-DB
> > don't have such a difference. You'll select whether the clock is RF or
> > LN when describing the platform data.
> > 
> 
> It is more for readibility and maintain a direct mapping with the PMIC
> clock grid. This way we can immediately identify the clock type without
> cross-referencing desc as the clock mapping here would indicate the type
> of clock. Yes, the CMD-DB name does not reflect anything with the names
> here. Please do let me know your suggestion.

I'd prefer if variables reflect CMD-DB resource names rather than the
actual clock usage. In the end, platform data does exactly that - it
maps usage to CMD-DB resources.

Also, if we follow your proposal, we will end up with ln_bb_clk and
rf_clk referencing exactly the same resource, causing possible
confusion.


-- 
With best wishes
Dmitry


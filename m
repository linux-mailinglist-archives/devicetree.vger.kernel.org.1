Return-Path: <devicetree+bounces-211932-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C5C72B41588
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 08:50:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7C6003B6D72
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 06:50:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD1282D7DC6;
	Wed,  3 Sep 2025 06:50:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DGbLRnAf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F8E42A80
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 06:50:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756882240; cv=none; b=qWr2Wqu/h1Uie+x8oQyf+XogwOpAZFoPmgp9seebc0MijRcP1hg8G9Qw5pvOA2GbWiKw2SskrZzyv9pDPu76EkLsm8Gsa8I7+aBQauL4DqNDgutk5zeuPOCnq4S7Xy6ymoXdnej/rUHVMkawajaZ/u1HEoxHu51g3Ya0s5FKvHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756882240; c=relaxed/simple;
	bh=OZYvAJLqb8zNZnB+JiPiyr5fYxUP3/2uA4CPj714OP0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PGHGN5QjPbUyDEllF/uuM6UdXuEhSXXuK0adFwUXN9AC8L3tUDnJ4l3snrEQvFwkwpDWwe1pXhbvNrzy/gA1/JTakIbELpm7LH2uJWzg7mEeSZqeIzQ1fIGnjaLuFNgQt/KwB33V7K5uP3PdIlvBYiWxw7z1IYu6bySdKs1wgRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DGbLRnAf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58321bqv019583
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 06:50:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	d9hHMK6M77PZdvE0eh4C0zvscADxksQZEgHG4rBgto8=; b=DGbLRnAfsMgDDMb7
	cqSsjfPGazPKIOo9K5tINfJGUMJvgbnopVApApJMkdJ80koFpDpIlH84DWjmc4+r
	vInlObQABHp3Nr2u9g/oBoElHnMDIRXX+SnEk/WBbPb9ewlUBAJNeKsE19WTThkp
	l3HwmJRzwscl/f5Rnk4m5Z/GtsCXCCtqAEjt93FrIMk5WdfHl6/9vj1CY2AzSvNB
	ucoz+KCPdizVzeaSy7adUGBrBKRrqMPD60AAOBjL+4p2GwpCFK2T7S0L1xwLM3LB
	KvS3A4K1y0r/+uqnfCtuy32RhkRxZpn5BAHRbF3Jxmz73GfOtSuNnnd3cdYaqSyr
	xAq5JQ==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48urw02j1v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 06:50:37 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-329b750757aso2573333a91.1
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 23:50:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756882237; x=1757487037;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=d9hHMK6M77PZdvE0eh4C0zvscADxksQZEgHG4rBgto8=;
        b=xMSWpvydZhs7d7Nyn/WXyRJDadfkeM8+9LC0M12jxTbr8c+9CYX70nB4/dZsCJLDRu
         NJSwZddUkdIRJTYnhCZxUWVrtXjtfGquarS6zXd8R8qjlxpUsUn9kYkt5mKdqRmcvkun
         P1Myox3bj+xIsTjQ19S/9N4XNDZo+Jk+3ohEj67qo+7sPfrk03lPSD7hfYusYM0euD1i
         CZlHodL9pOzIuSe2iIIUuM1H67lKDXxcIm9M6rfHUwcoSzNziVYBJbErk4Tt5i7AfkOf
         ANxXyjk91q9bn7ATTj4U483J4KwvTNp6qL1dFgkYAYW/URb69Znfbip+JgNFHv9JG1Zk
         Jnmg==
X-Forwarded-Encrypted: i=1; AJvYcCWyZ4YuD53fH6DIceXbTy+Kq4EEpx7JI30iWgU0/RK7FsWaZGfdmKEJk1cvNognxmG1r08b4TIvqGtZ@vger.kernel.org
X-Gm-Message-State: AOJu0YyA6Fa9clzq7yjLkwi0vx4nnfp82ScvLdmiT8x/T/YOIn3Ry3kv
	WbEyyGBTMJVdcXUEH0LVTOwejpAQmcea6V46lqNGmNaNw4mGPs1/+NupBUx1GdU6P8lTLA582JE
	dpCGl1S6MauNM+Bfu5/n9KyvSEpejdsN3CmANAxupMIud2Vq+YYmptxo/caCAZtpT
X-Gm-Gg: ASbGncszZFr/L1EF9+lwdhbfH4JhV+DMr8Kz4OZRzUdC/s9v8vpri0e4ndi3LahVSVI
	x7eqgLBFaxpnkobBhjt5svZjjrN77i1IsN/gSyRf1YsHIQVB9dm6aJjdmC9WZ7vJmovPGvT1wex
	GADb2ADk1gIg78rSiu9cWdFUb7VzXq4jKEcefyx9wRFNDfgPb19/nBquDJNyOH2vIv3MymttB+F
	wjdmBas27eF5bpodp+Ddj5jRVcEFVASjXVrB+jhQrEs2oC7p+XQChRVH2svK5KLuEVJswBNW4zN
	5SULyMAtQfcksvV/5hdUWW6drclo5VLKE/VRDBVCgyT/jXz6flNgUfxJRCeG49KS75OK
X-Received: by 2002:a17:903:2302:b0:24a:aca0:7cfd with SMTP id d9443c01a7336-24aaca081f9mr170262605ad.18.1756882236687;
        Tue, 02 Sep 2025 23:50:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGyFdo9cEWjCOC0ZpT9gc5RWF3uY6Cc1QxsgEsFMAs1ei1aEnR+j4ANyXrofAMXnY7o6hOvdg==
X-Received: by 2002:a17:903:2302:b0:24a:aca0:7cfd with SMTP id d9443c01a7336-24aaca081f9mr170262325ad.18.1756882236220;
        Tue, 02 Sep 2025 23:50:36 -0700 (PDT)
Received: from [192.168.0.195] ([49.204.24.116])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-24c8e94b34esm10185985ad.94.2025.09.02.23.50.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Sep 2025 23:50:35 -0700 (PDT)
Message-ID: <6b8d52f7-8c97-4aa1-9674-02aa13fba18c@oss.qualcomm.com>
Date: Wed, 3 Sep 2025 12:20:31 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] clk: qcom: branch: Extend invert logic for branch2
 mem clocks
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20250829-sm8750-videocc-v2-v2-0-4517a5300e41@oss.qualcomm.com>
 <20250829-sm8750-videocc-v2-v2-1-4517a5300e41@oss.qualcomm.com>
 <484eccde-bcab-42f8-bf6f-b370fc777626@oss.qualcomm.com>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <484eccde-bcab-42f8-bf6f-b370fc777626@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: lzVV6pmRrUMRR55t-iL_6EPgstUYDuKU
X-Proofpoint-ORIG-GUID: lzVV6pmRrUMRR55t-iL_6EPgstUYDuKU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyNyBTYWx0ZWRfXwG0hnBSqEY4Z
 9NpkcJ6FmV/pofqa9l0ZGcGn2QN8xpKXX/cJN4VnqdsBKLeRlE7+bx82JxnlzHuD8z+3BwSEwn2
 6s9gMLyQZzVlVmej8vwRY/mZSRAucF13NLt8sYiSbbn6ycCapnDKpBjXJ6nuy2J3rFx0MkFBnNR
 /E+XBLdhU5vwP0RGSLb/YBwOjIiwKJk9oeRKd1GKLrhMvt5bMm+bwZ+MQ9/E/XW3MRMdWf00O+H
 Wo8R65LnlW1V6uCHqitPHt/TwNUr+HMwgjWDtMWvzFVAK6jchYN0VKV8EdWFvy3fHRidjtlznLl
 EtzQtondiiurfgEj4a5L+5Usf7ScH+FQ4qywiuSf27b6WkNZU0jSq7ItrAshykiFaxg0YtfDW5s
 uoEx/YUm
X-Authority-Analysis: v=2.4 cv=NrDRc9dJ c=1 sm=1 tr=0 ts=68b7e53e cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=PZ7RaY4/qyhr7oYTfvPPhg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=W923pDGaHg0UEdA9CysA:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_02,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 impostorscore=0 spamscore=0 bulkscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300027



On 9/2/2025 5:27 PM, Konrad Dybcio wrote:
> On 8/29/25 12:15 PM, Taniya Das wrote:
>> Some clock branches require inverted logic for memory gating, where
>> disabling the memory involves setting a bit and enabling it involves
>> clearing the same bit. This behavior differs from the standard approach
>> memory branch clocks ops where enabling typically sets the bit.
>>
>> Introducing the mem_enable_invert to allow conditional handling of
>> these sequences of the inverted control logic for memory operations
>> required on those memory clock branches.
>>
>> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
>> ---
>>  drivers/clk/qcom/clk-branch.c | 14 +++++++++++---
>>  drivers/clk/qcom/clk-branch.h |  4 ++++
>>  2 files changed, 15 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/clk/qcom/clk-branch.c b/drivers/clk/qcom/clk-branch.c
>> index 0f10090d4ae681babbdbbb1b6c68ffe77af7a784..90da1c94b4736f65c87aec92303d511c4aa9a173 100644
>> --- a/drivers/clk/qcom/clk-branch.c
>> +++ b/drivers/clk/qcom/clk-branch.c
>> @@ -142,8 +142,12 @@ static int clk_branch2_mem_enable(struct clk_hw *hw)
>>  	u32 val;
>>  	int ret;
>>  
>> -	regmap_update_bits(branch.clkr.regmap, mem_br->mem_enable_reg,
>> -			   mem_br->mem_enable_ack_mask, mem_br->mem_enable_ack_mask);
>> +	if (mem_br->mem_enable_invert)
>> +		regmap_update_bits(branch.clkr.regmap, mem_br->mem_enable_reg,
>> +				  mem_br->mem_enable_mask, 0);
>> +	else
>> +		regmap_update_bits(branch.clkr.regmap, mem_br->mem_enable_reg,
>> +				  mem_br->mem_enable_ack_mask, mem_br->mem_enable_ack_mask);
> 
> regmap_assign_bits() is your friend
> 

Thanks, Konrad, will use this API.

> Konrad

-- 
Thanks,
Taniya Das



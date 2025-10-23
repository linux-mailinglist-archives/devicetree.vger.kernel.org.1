Return-Path: <devicetree+bounces-230060-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 09DD7BFF5C2
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 08:35:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B7F513A8434
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 06:35:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1698296BB3;
	Thu, 23 Oct 2025 06:35:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kmw5L+rR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8698F35B135
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 06:35:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761201340; cv=none; b=eAmewHKe8nLBJG+168ZzK8rNRP0oGKiIYYpOFCTKitvCJIQBuDMRErumZseNae323hIToP5XJbWOrPH0TbDHy5T7utPC15t3wS4NkLUD88o9OmKGOzeu1zhkyeptYHOJEZWpUhYKtCcykqiUIP9i1uWlomzVQH/9UGXZ7gDj68Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761201340; c=relaxed/simple;
	bh=ff4ytZ3X3G+eW835i4qVj2PVGW3Z/piDZN+yFg/tVwg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jowqWIACVjqcX+hmvppqCFQwHi20fY6DIdnJ7Z4WBjJOatyHReMmSqmIQVt+CrC5L01+X8UdWhXbZbAYTYKFq8J3bTCWPTmu3hrPCRuasqVROn19xj6yGlqkRykgWMrbDSNGJ4iQkTlQt8aONFl9i5EGF91FE5B8X7NgB+CtOi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kmw5L+rR; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59MIeq1F023034
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 06:35:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JpAujb8k3aqNqpv+Pdjy+NX3D0D5Tr6/yV3o0vk301E=; b=kmw5L+rRYQQgUwq4
	gW3dBiDZNjrt4YvNppAIrk1i4msaa5nvXYyFm7iGx3dN1usWswcwng7BEHhBAmdM
	DDkAa8JUmQVIl1g+2I/cmZNTgH1JZNoPtI8nQ8NFrwTaAYZLiSEwISHICK5rJKAG
	lFtkd/GzvNygxcewjChWG9K+stVM6zcE6qdv8I2I1pPXvKFp5ceLWlOM1+Z9cJP8
	mx27W3vBGlAZiZgEcaXj10/LFa50htamnZmL5Fsz9VXWrOXvEg6CJBspbzOg/Gw8
	RCgGNrHDU80RSBUGOnrs7C6mp5bG/CYEZNg6vcvyn2JZzhRAMh2e1YVcs2rLBvz9
	3rksdw==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v1w879e3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 06:35:37 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7a27ade1e73so69294b3a.2
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 23:35:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761201336; x=1761806136;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JpAujb8k3aqNqpv+Pdjy+NX3D0D5Tr6/yV3o0vk301E=;
        b=mkrmgXOdp3tHIfqDKPasSS0rwRPwBS4U2AMnPw/TDitr5T2mvCfBDLHHJmPlOWe7vX
         K+bAA6fyzgfKsyHGXs+2s4/jgbRpOPjTg86WIz/A/Ih5N5R7pOjfIJ1T6yNsRLtSK2ZX
         epzmnAh2QZWwdMOe3CXOLS4QSXJ0vEiwGL3JMGOUgi+CQaH02rXrgg5cHYYgRtXXNZ0I
         RwI+fBjPIlVCfr0kLMYvOzifu0xncV9yQ7yj3QXU69XW3XbD6tDrDl5V5EzieA8a73t1
         3aKwW0RPt0M4VkD5van7PvEtJw90lgdzvEI/0Frd7IX+NEGNnkzvgtIGwCJjMtULhVqX
         tRdg==
X-Forwarded-Encrypted: i=1; AJvYcCXRh8O1wQ2mX16FVpH2Cuj8bm5Ev6tkrg3EKl2JBdvld3izarZOB4QJGwUeKRDy5sWCkovzpxtEdx70@vger.kernel.org
X-Gm-Message-State: AOJu0YwumxJ5Kq/mx688CaO1Ohmmk4qqUqEtFZJ7MvJXfSb+uCBsAU11
	FmIatITKLo9RLx2T77ITsgnG4iSJituolf1mhJEX/LJRvAmbNeyx77aq03vTv0ZkQ4ALkCY1nqd
	zBErLAQS961hsAE8XSi8GfOP3OfnPiyCGxU/H2iMsR4yeW1f6TT7lYDrrgDQIDj4N
X-Gm-Gg: ASbGncvvLnwqDrNYFh8dHhknSGw/rdSBY2mDrtHr8Uf2rK+/qymlxiJtJ1JvQFqWiIH
	y6HAuh+OSx5lnBfVBXGOhiWxOeba0qNJflOjYJKlb92MsTpmDWXfIOcBj1zIInJ78/I53I8LIXM
	jc0HohKCi1MIsQAXOzXn8oQO4/Os0uA9t62mwNXbkPvp3LBFNS5QKLEIeHqeFI8uL8k1ofoivCy
	fZd44zZHMDjTn/fFElqgPoWn0yjAAw0eOierdOWamg69r/tZNoc4l4mJ8tX+iSCpSieMIvJQOmE
	psV29AsEhAl5R2jN+j67clxoULD8Ke5xs7OnZi8+7X7HqLUKjUqJgFBHkx0b+wGLUPz1z1Wz+XL
	6UAG481k6q6sXnsSTRtxzu9xbwoU=
X-Received: by 2002:a05:6a00:4099:b0:7a2:23cd:418c with SMTP id d2e1a72fcca58-7a223cd42b2mr24458055b3a.3.1761201336152;
        Wed, 22 Oct 2025 23:35:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFqgjoOyq6fjU6mL6BfXgOkMCX6FeequRl8KVaAdKGfOEZukeMq3sizCU9wMfGDVahdPfUBNQ==
X-Received: by 2002:a05:6a00:4099:b0:7a2:23cd:418c with SMTP id d2e1a72fcca58-7a223cd42b2mr24458024b3a.3.1761201335575;
        Wed, 22 Oct 2025 23:35:35 -0700 (PDT)
Received: from [10.217.217.147] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a274dba7c7sm1367091b3a.69.2025.10.22.23.35.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Oct 2025 23:35:35 -0700 (PDT)
Message-ID: <09e0b94c-2bf6-4147-a831-d3b0724fc418@oss.qualcomm.com>
Date: Thu, 23 Oct 2025 12:05:29 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/9] clk: qcom: rpmh: Add support for Kaanapali rpmh
 clocks
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Taniya Das <quic_tdas@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com
References: <20250924-knp-clk-v1-0-29b02b818782@oss.qualcomm.com>
 <20250924-knp-clk-v1-4-29b02b818782@oss.qualcomm.com>
 <thy7r7my2i3gfuy723rrq36k7hjobzqcnlzbggpagg4fgfvvzg@g5wzzxoppja5>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <thy7r7my2i3gfuy723rrq36k7hjobzqcnlzbggpagg4fgfvvzg@g5wzzxoppja5>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAxNSBTYWx0ZWRfX7dSuROjuFehJ
 vY/LbtHTCfdOrmexLNXlgO74IrC9DwT3d8WyXQk4TCWxJldpv1R6IILa5RHs9kqcysKIMrglfAL
 TXvw0mksAtunSqOhY5IhEgLOhSPYo+t40vZnfWtg1nmfV1aXoSRbTUyoJ249jgOxj+XcniIAvVF
 HalaDdJc1y+UhcM7GSuMPQjLrTIUwsHTMT0X3R793gOHWGtnAvghQvlg0UVVlOxL8037jJPV6gd
 B83BjT0cOG0BVXRodZAkzwC0ddf7yMETNwsVGaIErhBVulvfw4swXopxv3KmxemEnA27V5cFETg
 K82PHPEv3P8YnlT/zAERQX74txYWhrLj7CdvWWXFA7pKMHnxMFpB1Cxj5OsuuGWLTIL44eCuHCj
 6OSNYRHtraCbiINn3I8qK2Nycs/Waw==
X-Authority-Analysis: v=2.4 cv=bNUb4f+Z c=1 sm=1 tr=0 ts=68f9ccb9 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=QqeVPp7IqxZMZk5Gz7sA:9 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-GUID: uRvcObqoYN6FCy3VZKU90lBErUqBO17z
X-Proofpoint-ORIG-GUID: uRvcObqoYN6FCy3VZKU90lBErUqBO17z
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 suspectscore=0 adultscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180015



On 10/20/2025 4:29 PM, Dmitry Baryshkov wrote:
> On Wed, Sep 24, 2025 at 03:58:56PM -0700, Jingyi Wang wrote:
>> From: Taniya Das <taniya.das@oss.qualcomm.com>
>>
>> Add the RPMH clocks present in Kaanapali SoC.
>>
>> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>> ---
>>  drivers/clk/qcom/clk-rpmh.c | 39 +++++++++++++++++++++++++++++++++++++++
>>  1 file changed, 39 insertions(+)
>>
>> diff --git a/drivers/clk/qcom/clk-rpmh.c b/drivers/clk/qcom/clk-rpmh.c
>> index 63c38cb47bc4..6b1f24ee66d5 100644
>> --- a/drivers/clk/qcom/clk-rpmh.c
>> +++ b/drivers/clk/qcom/clk-rpmh.c
>> @@ -395,6 +395,16 @@ DEFINE_CLK_RPMH_VRM(clk4, _a, "C4A_E0", 1);
>>  DEFINE_CLK_RPMH_VRM(clk5, _a, "C5A_E0", 1);
>>  DEFINE_CLK_RPMH_VRM(clk8, _a, "C8A_E0", 1);
>>  
>> +DEFINE_CLK_RPMH_VRM(c1a_e0, _a, "C1A_E0", 1);
>> +DEFINE_CLK_RPMH_VRM(c2a_e0, _a, "C2A_E0", 1);
> 
> No. Please make sure that you follow what others have done.
> 
> Why are these clocks named differently from clkN defined above?

Sure, I will go back and reuse the clkN definitions.

> 
>> +DEFINE_CLK_RPMH_VRM(c3a_e0, _a2, "C3A_E0", 2);
>> +DEFINE_CLK_RPMH_VRM(c4a_e0, _a2, "C4A_E0", 2);
>> +DEFINE_CLK_RPMH_VRM(c5a_e0, _a2, "C5A_E0", 2);
>> +DEFINE_CLK_RPMH_VRM(c6a_e0, _a2, "C6A_E0", 2);
>> +DEFINE_CLK_RPMH_VRM(c7a_e0, _a2, "C7A_E0", 2);
>> +DEFINE_CLK_RPMH_VRM(c8a_e0, _a2, "C8A_E0", 2);
> 
> And these should use the same pattern. If the old names are unsuitable
> because of the clash between clock names, you can rename them. But
> please, be consistent.
> 


Sure, Dmitry, will make the changes.

>> +DEFINE_CLK_RPMH_VRM(c11a_e0, _a4, "C11A_E0", 4);
> 
>> +
>>  DEFINE_CLK_RPMH_BCM(ce, "CE0");
>>  DEFINE_CLK_RPMH_BCM(hwkm, "HK0");
>>  DEFINE_CLK_RPMH_BCM(ipa, "IP0");
>> @@ -900,6 +910,34 @@ static const struct clk_rpmh_desc clk_rpmh_glymur = {
>>  	.num_clks = ARRAY_SIZE(glymur_rpmh_clocks),
>>  };
>>  
>> +static struct clk_hw *kaanapali_rpmh_clocks[] = {
>> +	[RPMH_CXO_CLK]		= &clk_rpmh_bi_tcxo_div2.hw,
>> +	[RPMH_CXO_CLK_A]	= &clk_rpmh_bi_tcxo_div2_ao.hw,
>> +	[RPMH_DIV_CLK1]		= &clk_rpmh_c11a_e0_a4.hw,
>> +	[RPMH_LN_BB_CLK1]	= &clk_rpmh_c6a_e0_a2.hw,
>> +	[RPMH_LN_BB_CLK1_A]	= &clk_rpmh_c6a_e0_a2_ao.hw,
>> +	[RPMH_LN_BB_CLK2]	= &clk_rpmh_c7a_e0_a2.hw,
>> +	[RPMH_LN_BB_CLK2_A]	= &clk_rpmh_c7a_e0_a2_ao.hw,
>> +	[RPMH_LN_BB_CLK3]	= &clk_rpmh_c8a_e0_a2.hw,
>     -I$(KERNEL_ROOT)                            \
>> +	[RPMH_LN_BB_CLK3_A]	= &clk_rpmh_c8a_e0_a2_ao.hw,
>> +	[RPMH_RF_CLK1]		= &clk_rpmh_c1a_e0_a.hw,
>> +	[RPMH_RF_CLK1_A]	= &clk_rpmh_c1a_e0_a_ao.hw,
>> +	[RPMH_RF_CLK2]		= &clk_rpmh_c2a_e0_a.hw,
>> +	[RPMH_RF_CLK2_A]	= &clk_rpmh_c2a_e0_a_ao.hw,
>> +	[RPMH_RF_CLK3]		= &clk_rpmh_c3a_e0_a2.hw,
>> +	[RPMH_RF_CLK3_A]	= &clk_rpmh_c3a_e0_a2_ao.hw,
>> +	[RPMH_RF_CLK4]		= &clk_rpmh_c4a_e0_a2.hw,
>> +	[RPMH_RF_CLK4]		= &clk_rpmh_c4a_e0_a2.hw,
>> +	[RPMH_RF_CLK5_A]	= &clk_rpmh_c5a_e0_a2_ao.hw,
>> +	[RPMH_RF_CLK5_A]	= &clk_rpmh_c5a_e0_a2_ao.hw,
>> +	[RPMH_IPA_CLK]		= &clk_rpmh_ipa.hw,
>> +};
>> +
>> +static const struct clk_rpmh_desc clk_rpmh_kaanapali = {
>> +	.clks = kaanapali_rpmh_clocks,
>> +	.num_clks = ARRAY_SIZE(kaanapali_rpmh_clocks),
>> +};
>> +
>>  static struct clk_hw *of_clk_rpmh_hw_get(struct of_phandle_args *clkspec,
>>  					 void *data)
>>  {
>> @@ -990,6 +1028,7 @@ static int clk_rpmh_probe(struct platform_device *pdev)
>>  
>>  static const struct of_device_id clk_rpmh_match_table[] = {
>>  	{ .compatible = "qcom,glymur-rpmh-clk", .data = &clk_rpmh_glymur},
>> +	{ .compatible = "qcom,kaanapali-rpmh-clk", .data = &clk_rpmh_kaanapali},
>>  	{ .compatible = "qcom,milos-rpmh-clk", .data = &clk_rpmh_milos},
>>  	{ .compatible = "qcom,qcs615-rpmh-clk", .data = &clk_rpmh_qcs615},
>>  	{ .compatible = "qcom,qdu1000-rpmh-clk", .data = &clk_rpmh_qdu1000},
>>
>> -- 
>> 2.25.1
>>
> 

-- 
Thanks,
Taniya Das



Return-Path: <devicetree+bounces-237157-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C9B1EC4D7ED
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 12:50:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6B3BF18C128F
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 11:46:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBE8F35773B;
	Tue, 11 Nov 2025 11:44:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Lm5HOzGd";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="iRi46if7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A85DD2FE56C
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 11:44:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762861490; cv=none; b=iG/eFAdgiMCWWzTcrGZWrqWTpRlvOW02enoaK0eV0XOwR+ksGN/8wUznIZFTbWuK0ARF2Ai88cTrY3AEUJ+fjEUD6Z5h6egX+kyVJtKDFRJJAHcZDb/UetqfOVlcmdYBeBO2+B/xmBv3c7ND8tIBnQ1JKVc9wKTP1wia2x2qt1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762861490; c=relaxed/simple;
	bh=2jdR9UZN8vrYGOyw9mgAGC34N9X/4WjexBYalBj+GOk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jQmcglno6Mj4zZOMS0UIJ1p/rQvDNpa038HEBUJtenqVnwhwqYYsfHZ+c95PJmNe6GKh/DzKJGDRA8yLE7H+HiAXJuxCGzOZdsDcHvYI3JbFwIkUTU/ktUrBozSN7l9p2Qfv0ytMTKsLghX4AS4ecGfcH5ER3JV7am4toFBZuzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Lm5HOzGd; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iRi46if7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ABBGBEI2165250
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 11:44:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3FiluKets0muxwM6OjhgoIhZXgLD1JIGYw3ipakbsjE=; b=Lm5HOzGdnbTyTCPV
	iFCxv12StfNk2DsH92eRpah86wMg3rd5K1npkB8BUGb95nJ3XmR5JfYSgF3TqUNi
	Rkb7fR6KSL9NYqbZqYYHA/BUMuZtf+IsxelzHCNCVHM/HyK8B1umreJSlRrA7fEW
	pRjxA7hh5VAwkxL2xRN08kClpGWx3sfjuvzDNQZDiDN2NwHxhLNN+gH1mq0hs1tD
	BmghwZT4tHACBBaJxHbotom8DTSl8VSnHGn6rxPnOj9+iRidnsZQx3WQD8e1Ru3P
	oizENnv8BEWGcQQeE72jgkhl5KmpZYhdxr3AimhRJkIZgN2eww2JP6+C49I0u2Uq
	FbkJLA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4abxhhh54v-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 11:44:46 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-297ea27c814so6540225ad.3
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 03:44:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762861486; x=1763466286; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3FiluKets0muxwM6OjhgoIhZXgLD1JIGYw3ipakbsjE=;
        b=iRi46if7w8nOQD0/NiFGJxNQrB2s2dVvhiU0DEbvHsyLFUReSiHT2VxsEg12FIGTSe
         Dcz8/xjtorRWFqfTb9AcBEyb2QVVuQ/peipvT+RL9ixkU3tw6Q8p3Ua4hvJnb+OKTU5R
         mzmKKmrzQAV1Y1OBjUYfmcbLWaGBv4C9cwNdoKCaqHShC9UZQad7AIR8MlIHwdhZycRk
         7CHMOaHhDrnQjRMNSXBn7FE7LvSHbzRwIjO1mKW8W1YDLQyERhnCMUrUdP0NuuFTkWiD
         n+KgKRoOWxFIKf+SWbDTA2wQpLN3W+bMDt9Xo07m+trU4xqvevOxF128X80Qm4nVHm7v
         lNgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762861486; x=1763466286;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3FiluKets0muxwM6OjhgoIhZXgLD1JIGYw3ipakbsjE=;
        b=vyS+9ADhuJ7Q3VYw7eMYBUHMBh2TOfWeabvkcCMy22wT/DMmGaXMO1waXQEi4LH/SL
         ozWIEvc8ZAj9JM2rK/IiaMymZE+whsiM82Zooasz5XeFLvGZKJFVTpenWxEoYnxsMw7j
         fUyMcfvmv00qAfFa9V6NiRgDSSaPmJBUXvhOT7D7rZXz6WFcmHMA5P9BMNo1W9LDRp0B
         ++iV747k6scj7zVeq4IXk81NwpJ/+s1l2TqB07nV4+eVFk8Sn3yA74rW0y4u9ZHDLCwv
         cJ3YKEsZ1Rr//6jVPPo4EsPUgkbQ82e16wVF3jlrYYTk1rqmdKycS3E65SfGy2jw/g8G
         oqug==
X-Forwarded-Encrypted: i=1; AJvYcCU9geCiaCIg2PJ/S+BnnZkmk2g/VrXBhSNcEWchzdibeWz+Fvp9QNKhGxdS8BhWQ652+CmwNLEJKTe+@vger.kernel.org
X-Gm-Message-State: AOJu0YwYp/L8VXa6ZkM3ANOGjoX4uBGpiB03sZRVr+sX+tZ6FC8a//1n
	yo8vtL4QgvKLo+0sQRiy8hl/4e2c5emCHhHMwZ0rv6zLIOILscuy2YtaHMkmzmInihu3+VSnvKd
	R7eQshdegnjOaCN2lEZPTTeCeL+P8ZWbXzOwr9mra2ctBjJ80N3Z5mjdHPchZ3qjC
X-Gm-Gg: ASbGncsKvcdEcnc6JSgzU2XOfjXeoahLy0opKCPf2k/lkTOPrBM0A9198Y76FjvqcZQ
	4ax4rwOlYY6f8SPxq3fExTZAcQs0UfpKdQU2WY+vap8r3lyMKnpI1qemC9taIy2uM6U7SWnid0Q
	OxGMHriwgO6a9lKJ3QKoIIzbpDkXWuLcTBBV++xxIqaxUJrJrD0YEK2OrTJ1sA+1YAo7n1zsZXI
	tTsek4wsXD9ZVe+o7xtI0/lMWecxv6BYK7PMCv0uBjvrPwKbvrTKfUiZRurMLqgfXxIZyJl0qPG
	V7l81RnzencUS1TzDUuuernCevjmFHYxtSGj5yvwgTswdLcwcLD/fJ0xBen5L6S/8ga2cRswgbm
	fOnXW3QnVMKyrk4EeMH553aLIrBifFCN1zkvgYJH+QVROLl8L1mk+nJs5jCTFHJbV6g==
X-Received: by 2002:a17:902:e5cf:b0:297:f88a:c15d with SMTP id d9443c01a7336-29841097556mr20085085ad.10.1762861486133;
        Tue, 11 Nov 2025 03:44:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFSpcUVI0Oxi4dBF1jiNdiLhSc8OBazrJzvb/OcOGmMaHiDiWNsCym4f/nDxoriQsjRvlF/MA==
X-Received: by 2002:a17:902:e5cf:b0:297:f88a:c15d with SMTP id d9443c01a7336-29841097556mr20084915ad.10.1762861485497;
        Tue, 11 Nov 2025 03:44:45 -0800 (PST)
Received: from [10.133.33.249] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29651c7409esm177939655ad.64.2025.11.11.03.44.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Nov 2025 03:44:45 -0800 (PST)
Message-ID: <507b121b-98c0-4632-8a61-e9d7a6a13a3e@oss.qualcomm.com>
Date: Tue, 11 Nov 2025 19:44:36 +0800
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
        Taniya Das <taniya.das@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
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
Content-Language: en-US
From: "Aiqun(Maria) Yu" <aiqun.yu@oss.qualcomm.com>
In-Reply-To: <swma6lyjfmyhl5ookdzvpjn5qresgsze5wptg45jfgj7ub6a4t@bdgfstw6gzoq>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Pc3yRyhd c=1 sm=1 tr=0 ts=691321ae cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=lvgvr5Ydm3pkVxXdM2UA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: zgLG_dkHpUu2r8wwi7eEl7zEqaBnBp6T
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTExMDA5MiBTYWx0ZWRfX61PBk4LoxFnn
 UG4PopsO3gpjwS/drjPT7ineO8In/zfQSD2JY+w7vqmuoAp9e1QmoguQXhbZGppLHAZS/M/m9wZ
 9p/rg7bl16BIE4qtXMAPxHjSnY5UJV5TWhivoRMCtiM9NI1HJ2709OJywSed69sQ2eLC7keMKjp
 m4MrYKBd5+CxZb+4e8NI8seOhhPG075NuloBEIWEijjnnB43nc06R05vaLcYVqDX+WmJEJ3c0NM
 u7/ThyKmQlhiIbZoor810aDtfAl2gpH7/gN3f7CJmvr1hLunxhBfFkiOIGRopsikjVWitngQo5W
 QdlB5lsBK74I1XopiIbRoUzjvXEwljsJh9LkZ1S7VwbU+vF/3rgT0LGL+OE6SrViOhbO0cCfaR1
 ZfH5oli5OYk9FJCUk1XvNaTACZVlfg==
X-Proofpoint-GUID: zgLG_dkHpUu2r8wwi7eEl7zEqaBnBp6T
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-11_02,2025-11-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 malwarescore=0 spamscore=0 clxscore=1015
 suspectscore=0 priorityscore=1501 bulkscore=0 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511110092

On 11/11/2025 6:46 PM, Dmitry Baryshkov wrote:
> On Thu, Oct 30, 2025 at 04:39:07PM +0530, Taniya Das wrote:
>> Add the RPMH clocks present in Kaanapali SoC.
>>
>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
>> ---
>>  drivers/clk/qcom/clk-rpmh.c | 42 ++++++++++++++++++++++++++++++++++++++++++
>>  1 file changed, 42 insertions(+)
>>
>> diff --git a/drivers/clk/qcom/clk-rpmh.c b/drivers/clk/qcom/clk-rpmh.c
>> index 1a98b3a0c528c24b600326e6b951b2edb6dcadd7..fd0fe312a7f2830a27e6effc0c0bd905d9d5ebed 100644
>> --- a/drivers/clk/qcom/clk-rpmh.c
>> +++ b/drivers/clk/qcom/clk-rpmh.c
>> @@ -395,6 +395,19 @@ DEFINE_CLK_RPMH_VRM(clk4, _a, "C4A_E0", 1);
>>  DEFINE_CLK_RPMH_VRM(clk5, _a, "C5A_E0", 1);
>>  DEFINE_CLK_RPMH_VRM(clk8, _a, "C8A_E0", 1);
>>  
>> +DEFINE_CLK_RPMH_VRM(ln_bb_clk1, _a2_e0, "C6A_E0", 2);
>> +DEFINE_CLK_RPMH_VRM(ln_bb_clk2, _a2_e0, "C7A_E0", 2);
>> +DEFINE_CLK_RPMH_VRM(ln_bb_clk3, _a2_e0, "C8A_E0", 2);


Shall this suffix necessary to have e0?

>> +
>> +DEFINE_CLK_RPMH_VRM(rf_clk1, _a_e0, "C1A_E0", 1);
>> +DEFINE_CLK_RPMH_VRM(rf_clk2, _a_e0, "C2A_E0", 1);
> 
> What is the difference between these clocks and clk[3458] defined few
> lines above? Why are they named differently? If the other name is
> incorrect, please fix it.

Good shot. Only now I can understand the previous comments.
IMO for kaanapali Taniya was addressed to have the right rf_clkN naming
here.

I think the point is glymur is not using "rf_clkN" for rf_clk, sm8750 is
not using "ln_bb_clkN" instead it is using clkN:

static struct clk_hw *sm8750_rpmh_clocks[] = {
	[RPMH_CXO_CLK]		= &clk_rpmh_bi_tcxo_div2.hw,
	[RPMH_CXO_CLK_A]	= &clk_rpmh_bi_tcxo_div2_ao.hw,
	[RPMH_LN_BB_CLK1]	= &clk_rpmh_clk6_a2.hw,
	[RPMH_LN_BB_CLK1_A]	= &clk_rpmh_clk6_a2_ao.hw,
	[RPMH_LN_BB_CLK3]	= &clk_rpmh_clk8_a2.hw,
	[RPMH_LN_BB_CLK3_A]	= &clk_rpmh_clk8_a2_ao.hw,
	[RPMH_RF_CLK1]		= &clk_rpmh_rf_clk1_a.hw,
	[RPMH_RF_CLK1_A]	= &clk_rpmh_rf_clk1_a_ao.hw,
	[RPMH_RF_CLK2]		= &clk_rpmh_rf_clk2_a.hw,
	[RPMH_RF_CLK2_A]	= &clk_rpmh_rf_clk2_a_ao.hw,
	[RPMH_RF_CLK3]		= &clk_rpmh_rf_clk3_a2.hw,
	[RPMH_RF_CLK3_A]	= &clk_rpmh_rf_clk3_a2_ao.hw,
	[RPMH_IPA_CLK]		= &clk_rpmh_ipa.hw,
};
static struct clk_hw *glymur_rpmh_clocks[] = {
	[RPMH_CXO_CLK]		= &clk_rpmh_bi_tcxo_div2.hw,
	[RPMH_CXO_CLK_A]	= &clk_rpmh_bi_tcxo_div2_ao.hw,
	[RPMH_RF_CLK3]		= &clk_rpmh_clk3_a.hw,
	[RPMH_RF_CLK3_A]	= &clk_rpmh_clk3_a_ao.hw,
	[RPMH_RF_CLK4]		= &clk_rpmh_clk4_a.hw,
	[RPMH_RF_CLK4_A]	= &clk_rpmh_clk4_a_ao.hw,
	[RPMH_RF_CLK5]		= &clk_rpmh_clk5_a.hw,
	[RPMH_RF_CLK5_A]	= &clk_rpmh_clk5_a_ao.hw,
};

> 
>> +
>> +DEFINE_CLK_RPMH_VRM(rf_clk3, _a2_e0, "C3A_E0", 2);
>> +DEFINE_CLK_RPMH_VRM(rf_clk4, _a2_e0, "C4A_E0", 2);
>> +DEFINE_CLK_RPMH_VRM(rf_clk5, _a2_e0, "C5A_E0", 2);
>> +
>> +DEFINE_CLK_RPMH_VRM(div_clk1, _a4_e0, "C11A_E0", 4);
>> +
>>  DEFINE_CLK_RPMH_BCM(ce, "CE0");
>>  DEFINE_CLK_RPMH_BCM(hwkm, "HK0");
>>  DEFINE_CLK_RPMH_BCM(ipa, "IP0");
>> @@ -901,6 +914,34 @@ static const struct clk_rpmh_desc clk_rpmh_glymur = {
>>  	.num_clks = ARRAY_SIZE(glymur_rpmh_clocks),
>>  };
>>  
>> +static struct clk_hw *kaanapali_rpmh_clocks[] = {
>> +	[RPMH_CXO_CLK]		= &clk_rpmh_bi_tcxo_div2.hw,
>> +	[RPMH_CXO_CLK_A]	= &clk_rpmh_bi_tcxo_div2_ao.hw,
>> +	[RPMH_DIV_CLK1]		= &clk_rpmh_div_clk1_a4_e0.hw,
>> +	[RPMH_LN_BB_CLK1]	= &clk_rpmh_ln_bb_clk1_a2_e0.hw,
>> +	[RPMH_LN_BB_CLK1_A]	= &clk_rpmh_ln_bb_clk1_a2_e0_ao.hw,
>> +	[RPMH_LN_BB_CLK2]	= &clk_rpmh_ln_bb_clk2_a2_e0.hw,
>> +	[RPMH_LN_BB_CLK2_A]	= &clk_rpmh_ln_bb_clk2_a2_e0_ao.hw,
>> +	[RPMH_LN_BB_CLK3]	= &clk_rpmh_ln_bb_clk3_a2_e0.hw,
>> +	[RPMH_LN_BB_CLK3_A]	= &clk_rpmh_ln_bb_clk3_a2_e0_ao.hw,
>> +	[RPMH_RF_CLK1]		= &clk_rpmh_rf_clk1_a_e0.hw,
>> +	[RPMH_RF_CLK1_A]	= &clk_rpmh_rf_clk1_a_e0_ao.hw,
>> +	[RPMH_RF_CLK2]		= &clk_rpmh_rf_clk2_a_e0.hw,
>> +	[RPMH_RF_CLK2_A]	= &clk_rpmh_rf_clk2_a_e0_ao.hw,
>> +	[RPMH_RF_CLK3]		= &clk_rpmh_rf_clk3_a2_e0.hw,
>> +	[RPMH_RF_CLK3_A]	= &clk_rpmh_rf_clk3_a2_e0_ao.hw,
>> +	[RPMH_RF_CLK4]		= &clk_rpmh_rf_clk4_a2_e0.hw,
>> +	[RPMH_RF_CLK4]		= &clk_rpmh_rf_clk4_a2_e0_ao.hw,
>> +	[RPMH_RF_CLK5_A]	= &clk_rpmh_rf_clk5_a2_e0.hw,
>> +	[RPMH_RF_CLK5_A]	= &clk_rpmh_rf_clk5_a2_e0_ao.hw,
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
>> @@ -991,6 +1032,7 @@ static int clk_rpmh_probe(struct platform_device *pdev)
>>  
>>  static const struct of_device_id clk_rpmh_match_table[] = {
>>  	{ .compatible = "qcom,glymur-rpmh-clk", .data = &clk_rpmh_glymur},
>> +	{ .compatible = "qcom,kaanapali-rpmh-clk", .data = &clk_rpmh_kaanapali},
>>  	{ .compatible = "qcom,milos-rpmh-clk", .data = &clk_rpmh_milos},
>>  	{ .compatible = "qcom,qcs615-rpmh-clk", .data = &clk_rpmh_qcs615},
>>  	{ .compatible = "qcom,qdu1000-rpmh-clk", .data = &clk_rpmh_qdu1000},
>>
>> -- 
>> 2.34.1
>>
> 

-- 
Thx and BRs,
Aiqun(Maria) Yu


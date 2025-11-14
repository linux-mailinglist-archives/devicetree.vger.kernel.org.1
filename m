Return-Path: <devicetree+bounces-238531-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E5A8C5C11D
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 09:46:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 66E544F25A6
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 08:44:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 761C42FFF90;
	Fri, 14 Nov 2025 08:44:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ptHOZBfG";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OydssMI6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C2382FE075
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 08:43:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763109841; cv=none; b=ioW2mhd79U5QijChhdbAvR5rIYgr4DAtOmWb69n34VAYjMg/I4FeIXJneWAojmUm0gpH/N+Uylw+PvM4J1Ga+cOfuDZtiE9PzXj7rp3aWBv9VHF/Rez8vW27mDMzO5eONgokKGcsLwiolADTh7bkKqPF4/7+Pe55DIvlbU+AVyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763109841; c=relaxed/simple;
	bh=4W3PW+/8rvDXVUcpg4gcxwbdAJsW2vURL8IYXfhgkeg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=O9sdTCuW38IHVCzDDC8md+tOTYPvwknZWK667q/GhtzsQwfIHilvwHXABVACFY7UEpfCkJi/HeMCf62T7kDX5fQetvDDT4oQIvf8CTrP14XsyRl+40WMn53vxaRnq8S8cnSABY5tv1Rb1ZzFpO/IvPBcdoBhCI0spQc3rgTWWVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ptHOZBfG; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OydssMI6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AE8T9851610301
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 08:43:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4KysJawHwaaBhDk0PHT1s/DETKrJ3/17/2/MQdw+4wI=; b=ptHOZBfGV/Dbveh5
	YnEY2eL2HfYXeK9TCPcZwKemkuPGkXyrEfXfhgBUcD02kn5HSr1/RWk4b4CwB4WF
	nvwZAfDuhlP+KPo2RT6qPoNa3jROy3mw7xILUCAYIxveMnsV+gT3L/dNjYY3VMQg
	qo1CeMTwwhwRBcOu8OYxE23yGkwRA2hliUGk3Cp9JX8C4TCsRaN8Je/iB4zF8wae
	6GQ0fo4fwxtvD6/INwYuxFSdneRw8wtHI/CZBO0KsCf5o6VvY5yyMGJUctCAfkHq
	poY/5jsphB/xxtM04saLlaxJPjw9d97AEFFE0cBP/BIWfufhMOnpnHd4HAonjKdy
	6N3iOw==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4adr9h1ekk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 08:43:58 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-34377900dbcso2639226a91.2
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 00:43:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763109837; x=1763714637; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4KysJawHwaaBhDk0PHT1s/DETKrJ3/17/2/MQdw+4wI=;
        b=OydssMI6wTQd4kqi/DlNJ1NAA+LANkf5Vqhuq1zOtb+dh5MExcnmFvHrvXJMzVEkRJ
         sSYqAnvdFi+wKy9PqQ+M1nFdYISHciEeLP1GOcLbKqzv+NLGRE2SHAgiPinqYVedkSKR
         OrcNE5Gv2VKPpQueA8gDCCLUMYK7JbuYgOf1xYAK32ZsUjOxMODQ10sHjf22CyfCBHmA
         QKTJp8+OKQwUmyAAQk9avif8kcP/xniBgfjVAw3nJbiV0wZ3GpYkyxp0tWsIeLb4/yVw
         LV1v86uzrWV3eVSJZWfT76g6mzkBH+p/03fTN5K51X9zIcMhh8G4d52tGwt8/+8fdHqX
         +g2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763109837; x=1763714637;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4KysJawHwaaBhDk0PHT1s/DETKrJ3/17/2/MQdw+4wI=;
        b=Nqz9TpkOCmNzXNgqLsQFiPB9rfpUUdHC5KtLEIAZujRIVJytClpm9PqaWgnTjBRRXM
         BEwvNpqYek5eaxoefhmQOAGkTKbc6zVF83i2Giw2R+AKdGbimKCft1g00oq7b09ZcvmZ
         Vrr3X/tQga22eJTlTY++4F/v58oFKNI/vSykw1YHaq18aobdfx59DmAT5VZw0xXW1npM
         AWlgwp9yycLoJT6in0+XXAt42rP3I2eCLQBHUy2zRg1e4SS18Ycxq2x8AIkvL4PThlNM
         nGA55z+3IckbkxwemB7BLaHM37VE0s/OPMbQlzd7eTnC5/ISMfZhOL/nw17jsxfmU2Kj
         8hiQ==
X-Forwarded-Encrypted: i=1; AJvYcCUfP/EaGFfmxoKUwKJe1fMsJ717joyPzcTmVaaXnUXm34B5bC41Ao1ENMZjxyCttPFH3qnij0ZwUI+c@vger.kernel.org
X-Gm-Message-State: AOJu0Yybmi2W6sVRFf0XQo6YqQBbokXt5x2UbAVTeGPKu0XkxjzpUZyA
	iIicM55O1TfgovJzquoh3iEK29voJ/UNiaapF/FizYKo0JGo2OtBslKcCxg5kRERlLf60DH1+qk
	6//QdAcqWBA4v47QYRF6rBKVBMyuoZP4bqA5mw9+vkl2PvkURYNA2fQtTe2fIxvLg
X-Gm-Gg: ASbGncuhdNziQlLXsmY5uI75xWdP8doKzDMfrn0w6QyRtNIgW8dg+cB6YbBlo2xPBk2
	bkDrI5F+cPxuPmnUWTX8hzBF2+Y2lqm1hg+yDx7Zbj+Yw55AuIdfvSmH1a1fdx5ZxQ53pZ+bD+G
	jPmv8cFcqbpYvUjW9ESmfVpDoMziVFeuvZKlIqfXY6zGv+zR6om/YMS67CvsFbaURfFLVxmwAbA
	xwmM0nptnoDHD5VjI5OjFKRv8msTW0XrY078mv0ym78dMiozb54mEPQ1THZ1a6YMTVI2jPhwpTe
	T6g10S+PYyQVHeuDd8LuaojzWIdBE6O3Uvnzs9tYyAuZn1QgHfq2srcdBXoKvNcKQ23+yOc1Igw
	uY66X7ycJnhKCjwAEbOBFtymTGQ==
X-Received: by 2002:a05:6a20:4329:b0:358:dc7d:a2d0 with SMTP id adf61e73a8af0-35b9fc781cdmr3586488637.7.1763109837183;
        Fri, 14 Nov 2025 00:43:57 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEicXfiNpeEOekwoI5ToqdCDNv9WTuMtdcrC45s6cp7XCiKNqqnedzAju2s/J/GR6ByWsB/sg==
X-Received: by 2002:a05:6a20:4329:b0:358:dc7d:a2d0 with SMTP id adf61e73a8af0-35b9fc781cdmr3586455637.7.1763109836655;
        Fri, 14 Nov 2025 00:43:56 -0800 (PST)
Received: from [10.218.35.249] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-bc37517864asm4121968a12.17.2025.11.14.00.43.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Nov 2025 00:43:56 -0800 (PST)
Message-ID: <380aa79f-f334-44db-9527-85247f9735af@oss.qualcomm.com>
Date: Fri, 14 Nov 2025 14:13:49 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/6] clk: qcom: rpmh: Add support for Kaanapali rpmh
 clocks
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, jingyi.wang@oss.qualcomm.com,
        aiqun.yu@oss.qualcomm.com, Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251030-gcc_kaanapali-v2-v2-0-a774a587af6f@oss.qualcomm.com>
 <20251030-gcc_kaanapali-v2-v2-4-a774a587af6f@oss.qualcomm.com>
 <swma6lyjfmyhl5ookdzvpjn5qresgsze5wptg45jfgj7ub6a4t@bdgfstw6gzoq>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <swma6lyjfmyhl5ookdzvpjn5qresgsze5wptg45jfgj7ub6a4t@bdgfstw6gzoq>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: 9ecZ5UfPDld6KGGfLYQO_PPioaie4nrB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE0MDA2OCBTYWx0ZWRfX30PWcRO5K2Ey
 kY/bRvSW3BdMrODDlCh1XcNhw1BCNKrjgWetQ/Dt6JEgsc0QdXS2ew6WcCo2AGF38jb6iZ2lYUe
 Uzk7JMxbuETMlw6Xp7lE+BOHzptb0JPgEvQeNP8PGEBjWNZpRhUrT7jj+nnFoBBTRZtVAv5PFI3
 3jhwZVApeuyLGG9T1z3hNYeaaiXux8BZLUz8YSmURCR6qXMWx8V2WYCgvslWB8tKRPlvs0Xo0Xf
 1/gfV+5I+HExYtF4sYhkvZE5MjUndUwOwYdVJyBbYV7UqAWgRYEy59+5dpr9zpaxdrFINgncMHN
 slPZXSiT9fkNf9bsLPEviD1vfjZCTcRKLo5ACqh3A6+2W4iVJj36VY0+Uc0Nfad8Kj/cWOxoK2G
 BKXxiP3Dy9B2e5RTUcK3o5s1m1pLMA==
X-Proofpoint-GUID: 9ecZ5UfPDld6KGGfLYQO_PPioaie4nrB
X-Authority-Analysis: v=2.4 cv=V+1wEOni c=1 sm=1 tr=0 ts=6916ebce cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=HYvDxcvnGcN7GFw1JaQA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-14_02,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 suspectscore=0 phishscore=0 clxscore=1015
 spamscore=0 priorityscore=1501 impostorscore=0 adultscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511140068



On 11/11/2025 4:16 PM, Dmitry Baryshkov wrote:
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
>> +
>> +DEFINE_CLK_RPMH_VRM(rf_clk1, _a_e0, "C1A_E0", 1);
>> +DEFINE_CLK_RPMH_VRM(rf_clk2, _a_e0, "C2A_E0", 1);
> 
> What is the difference between these clocks and clk[3458] defined few
> lines above? Why are they named differently? If the other name is
> incorrect, please fix it.
> 

Dmitry, my intention was to make a clear distinction between the ‘rf’
clocks and the ‘ln’ clocks. Since there could be overlap in the
numbering, I added prefixes for clarity. I should have applied the same
approach to clk[3458] as well. I will add the fix-up for the same.

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
Thanks,
Taniya Das



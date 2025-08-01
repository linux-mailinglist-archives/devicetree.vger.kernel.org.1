Return-Path: <devicetree+bounces-201213-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7063CB17BD7
	for <lists+devicetree@lfdr.de>; Fri,  1 Aug 2025 06:32:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7D5577B2743
	for <lists+devicetree@lfdr.de>; Fri,  1 Aug 2025 04:31:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6114D1E3787;
	Fri,  1 Aug 2025 04:32:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XKX6tpEM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9A45347DD
	for <devicetree@vger.kernel.org>; Fri,  1 Aug 2025 04:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754022744; cv=none; b=Pa9kawIdGBmWJqSKnsXY0jko81mzOE3cFewCFfbYWul9HRdXqi5OmpNajLXJQO3bM8cR12ZOsXWpRHNJrR55laC8yZnX/kekpzZqnrAydmwUoQFOSxFK6Vb18TLzSQ7Q0Eb1SOAv1fMKkQMbMhkKi9aPe2jMlHd/FIL6BdB6cTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754022744; c=relaxed/simple;
	bh=PZsepC5GNtWag35e7sBw+U/csrG/NR/QT3fy/e+DqFY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QrUt2UG1JF0o74SA+xCwikPHYtGF2XT7syf5Rs9EQDCZUmw4s1kIat4gwCLZ7jdIVDXf1zgzYk3B3P7Lc2Ivd8XEFBZeVxWFVZj9z1GoZpbg+HtCOlPyY4NcafoeYYLiM/6WFKic3Qk2d+WvPGnwcJUt2FJdQvmVnXWo52XDd10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XKX6tpEM; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57114KVK002538
	for <devicetree@vger.kernel.org>; Fri, 1 Aug 2025 04:32:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yLNJqEgg1Sd977O4ZU1RM/AYukW1berh1aTC8vgdSTk=; b=XKX6tpEMGRmJEt+C
	Yb0ngEYWNu8aWh6UUdfsCiRY92x1HMtIWMWf7TFYLvEoApCqdQ8UDJ3z34PE144b
	8aiiXA27565LWgiSDCHVsCy7mh0+SQQFQj0V+rxk7v4hC065eu+nwjTmlYj/pf8D
	pWC+IsEmQhCvPj77urRTg1Erju7LBFb5fpmSsWGdYEjh445dhsFasrFqsvla8JQH
	jvsUi3d7UWGSAep8yBo7aAdBetI6x0RO9sd/PbqbQc6B7uOp/9EUlgWGpH49uzC7
	AJZT6kLd6tbtew96Td6X4XPegkqnV+88JVoL9WpxvlfmFPQ2ZHP0KzYq0l8MkLBT
	TTkEFg==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484pbma728-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 01 Aug 2025 04:32:21 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-764072aca31so1000124b3a.2
        for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 21:32:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754022740; x=1754627540;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yLNJqEgg1Sd977O4ZU1RM/AYukW1berh1aTC8vgdSTk=;
        b=Ljxsc/695N+XNGrkcgCcumdfdFfPURIJsq7/FlLB9YYZjbPQ4UaH5g5Ju7rnsPnbO7
         KeO7jf6W4QApsA2NHXXaTWJ7iVR25+pANWBLK+shxbfPztKwP/kCfB219WZz2MRLMqI3
         0lW1ekZB4XeeEmNt+9OakyTlEpDkPBboKRJNJ60/L6hXe16TEifsqbXFyCUTsnd6sHa+
         651T9mMM7yWLslP0Y241ztEbUyP5YpNR+lBeCDsx5yx0HyGqSk3vWn/RI2GnDfMFZ7d3
         fsQK4skoYNZJ5j6gqDUpmPdVfJL0VgfEIuztTifBB2aXC8ELawgb6Xudena8Zj9IDOoY
         rzag==
X-Forwarded-Encrypted: i=1; AJvYcCU4tTiDmHpDly0ofu6NLpJZraKCSG+oZN/cEsBrCxe5S4+JyitRp0bkDuKiuQ1Ye7uGu9UMqKq8Wcl4@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2qFjzvOMDoobn+NAmjADT734VtlNhsxHpIEYAlaKJBo7oMYnO
	97/zD8+29mRBmaRlw3p1sQMvlKLPCaQlJzFEHXbXRonLYR5MnagTkEXOf5cwO+gXcUgskRyvVgm
	8A2091aXqbiixyjZXpqs6liRIQzfEw8qfVfZxdC4iK0Wo+usphOjjbj3IxQJ/S8ih
X-Gm-Gg: ASbGncvEUKWq6m8aI53utFfHEhZ7739QcqqzSHfKH4U5bBmzSJi+cm2CdBtbfGU2vzz
	kjVBFXcQymuqd+BQoHYYuOYw9Ps/3ZqlMvB0fQMrQKeEebvuT8Mf+aLM3WrKNg+gxsJ4pLxBG0L
	PcmK3wMCKqs+tkCiet/IMhYHRvn/b8rctAxS4hU5rUC4d1Cxe51JjfebrQP1IIDF1C4lCn9TI4N
	9XejLA1kFxDOPDKbG26sPDe7wR5HfMvonMCWq7a/BtRkEqU2X2TkWxFs0jx24W+aWD/RDs1a8e3
	WDtLpeQJ6WejeuPkveb3DLkgkGn00kC+NvAnMtYZWnKFhGujxLzcGIJnCyM0lTlop2Q=
X-Received: by 2002:a05:6a21:998b:b0:21a:da01:e0cf with SMTP id adf61e73a8af0-23dc0e32c0dmr19142852637.22.1754022740374;
        Thu, 31 Jul 2025 21:32:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEyRx/Pl7BjdxFzVTQWc6hVw7LnXbmjumZvBjBAl4aA+8La5UD8cNfMne03gb7c1tgo+RC+vA==
X-Received: by 2002:a05:6a21:998b:b0:21a:da01:e0cf with SMTP id adf61e73a8af0-23dc0e32c0dmr19142810637.22.1754022739991;
        Thu, 31 Jul 2025 21:32:19 -0700 (PDT)
Received: from [10.217.216.26] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76bccfbcd00sm2994293b3a.60.2025.07.31.21.32.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Jul 2025 21:32:19 -0700 (PDT)
Message-ID: <784545d0-2173-4a8b-9d5d-bee11226351e@oss.qualcomm.com>
Date: Fri, 1 Aug 2025 10:02:15 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/7] clk: qcom: Add TCSR clock driver for Glymur
To: Abel Vesa <abel.vesa@linaro.org>
Cc: kernel@oss.qualcomm.com, Pankaj Patil <quic_pankpati@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Taniya Das <quic_tdas@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250729-glymur-gcc-tcsrcc-rpmhcc-v3-0-227cfe5c8ef4@oss.qualcomm.com>
 <20250729-glymur-gcc-tcsrcc-rpmhcc-v3-3-227cfe5c8ef4@oss.qualcomm.com>
 <aIoBFeo00PPZncCs@linaro.org>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <aIoBFeo00PPZncCs@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=LsaSymdc c=1 sm=1 tr=0 ts=688c4355 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=ai6KDVl1yJewkkMvyeoA:9
 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODAxMDAyNyBTYWx0ZWRfXwe3MQnoh7VHh
 0NqsKdq8c2DPxSIUhA7dqoRXrdwAIm1817ETeKeCG7/wgYun0SlK4UcYxTODq3vv+rPX5XRrGAM
 agVhDg+zNCL6lGQXxuLW230MvzWPlmZqfM9LsC9J/jRYqVRgRHrcm7SZTCj3z24r2h5wHE4eW6W
 ATxyNjpKqblJ/IHxzRuPoLNQQ/8UL5DMFz+upv6bsOjdFQqsruALBIu95IZrvIxqltdjOF6gsnU
 H/mUA6sWpexe30sTl/yDSTPD7kIWgvf4S7OODXOcP+Ln6TeLBmqVnnsr00ya+0AsHcxWF6ALTih
 NDPyVdnv7W1OcW+qYiK2EPHJtBwEszi0rLjoUY1kVv4p6cdvZxrFroHslEVXsjCVVfdlgNyHBQ2
 NtipnPj68k/9+vw/FYfrfCq3IMMLYSfJuRveZfqcMhQ5Jn33pQIYQy3dzkOeS4zdNHOErnN9
X-Proofpoint-ORIG-GUID: u-b0PaWQYHF_T-1ghtsdIBLcjL_bboQz
X-Proofpoint-GUID: u-b0PaWQYHF_T-1ghtsdIBLcjL_bboQz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-31_04,2025-07-31_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 mlxlogscore=999 spamscore=0 phishscore=0 suspectscore=0
 impostorscore=0 adultscore=0 lowpriorityscore=0 priorityscore=1501
 bulkscore=0 mlxscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2508010027



On 7/30/2025 4:55 PM, Abel Vesa wrote:
> On 25-07-29 11:12:37, Taniya Das wrote:
>> Add a clock driver for the TCSR clock controller found on Glymur, which
>> provides refclks for PCIE, USB, and UFS.
>>
>> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
>> ---
>>  drivers/clk/qcom/Kconfig         |   8 ++
>>  drivers/clk/qcom/Makefile        |   1 +
>>  drivers/clk/qcom/tcsrcc-glymur.c | 257 +++++++++++++++++++++++++++++++++++++++
>>  3 files changed, 266 insertions(+)
>>
> 
> [...]
> 
>> +
>> +static struct clk_branch tcsr_edp_clkref_en = {
>> +	.halt_reg = 0x1c,
>> +	.halt_check = BRANCH_HALT_DELAY,
>> +	.clkr = {
>> +		.enable_reg = 0x1c,
>> +		.enable_mask = BIT(0),
>> +		.hw.init = &(const struct clk_init_data) {
>> +			.name = "tcsr_edp_clkref_en",
>> +			.ops = &clk_branch2_ops,
> 
> As discussed off-list, these clocks need to have the bi_tcxo as parent.
> 
> Otherwise, as far as the CCF is concerned these clocks will have rate 0,
> which is obviously not the case.
> 
> Bringing this here since there is a disconnect between X Elite and
> Glymur w.r.t this now.


The ref clocks are not required to be have a parent of bi_tcxo as these
ideally can be left enabled(as a subsystem requirement) even if HLOS
(APSS) goes to suspend. With the bi_tcxo parent the ARC vote from
HLOS/APSS will not allow APSS to collapse.

If any consumers needs the clock rate, the driver should take the
BI_TCXO handle.


-- 
Thanks,
Taniya Das



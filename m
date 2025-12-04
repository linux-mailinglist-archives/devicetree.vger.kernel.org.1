Return-Path: <devicetree+bounces-244252-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F17ACA2C12
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 09:10:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 296EC301C881
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 08:10:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70938308F05;
	Thu,  4 Dec 2025 08:09:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="asi9q0hE";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gD4o2t7d"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BA062741B6
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 08:09:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764835799; cv=none; b=hDnbJaDe9E1jgVntZ5+R6fH8OCQj+MFfVpvsmiO3NE7e2pfs34Lcpc9LxETXJX4QVeCFl+Ql4qYZosaBPDSZU1mGnKGflPwu2aGziJFXKM4NTbMdTu1rJOf1bHh3Wjx284FHfz+udJetQdkQvzu5Locmy+Kt7PzoZg1KqktbvVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764835799; c=relaxed/simple;
	bh=29zaKRK8DZ/Y0cTah8noN4SaH64zRAhhdIyNHRC0chM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tNi15sBFOdUdRzrVXCgf4KPn54guHYxTuN/F6u9izVRrrTCI5bZ0WwpwWJMFQmlgZo0e8a4Apgk5KJdIHSSytj+pAIm26rhjVaGS3MvRnSfg8Zhe15kY2IRzsgCxZ2ouMV8ZvAtab+K5MMw54oVR5ekAP7dUELlVVRxw5keoWPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=asi9q0hE; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gD4o2t7d; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B468jS0625479
	for <devicetree@vger.kernel.org>; Thu, 4 Dec 2025 08:09:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bHP3kqTtgiL/DBdd4MoubS7RXA3zn+J4BPW6m/RUtiQ=; b=asi9q0hEH59sUEf/
	YfyQYCRXtP2pSUYWiw4ol++aXAj0ZSWgswhBkQNSLJDuOoS1tTVM3oIs2jrCia+5
	1YBcOhHZDsSo3NLvujGjYR+w30BIP/ChtThq7jXf3qDD/kfrPGW5hVarOniS6u5E
	zoOxMczWR5KuhE+ZmvLEl0HaNJq/eZ5u62Yk63W/I/MklSRQgm/M/xYf+gmgE5i3
	ABfwBxpWKH324heebf/Vyt599dqQpWns2lMfAp8ev81Prcn9/xGVGCZ+/839E5FR
	qZM3kodFLXKQJqVw0AUC3ABwGO+q9YRUIvpWpEi7m0Vd/CBci5ZZ7vT+7HsXgFYh
	np4HAg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4atu3h1xu6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 08:09:55 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-29846a9efa5so14744705ad.0
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 00:09:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764835795; x=1765440595; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bHP3kqTtgiL/DBdd4MoubS7RXA3zn+J4BPW6m/RUtiQ=;
        b=gD4o2t7dyogOppQorf2F/+zBNh+WZ4XGcotUFnALIb4YkNETEXydkq41zcIj8A8Z0h
         PM4j7HlexW//QQrMXvbvmOHXzr9EF8tPatanFqYuJuG4GR7bivpU9EaiR8xyz+0wbk3+
         WeY3nJutG1Ilwck3/PuiRf6RWub8vQZNEliNrkumxCNn7ryeW1VlqqEoVZV88+s7LO0O
         2TvPw0POaj32bzuc2mYNdgonOvwwooXG2EWtbenWHI9gKiHtuGRFQYB3hnt5M5DUIAOr
         8qEf8BIHhhtYXNYNDyYvCvXDbK970ueP0f1lmpem7OioSE5B67wZ2vwXNsBoRF0cqLIh
         bwNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764835795; x=1765440595;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bHP3kqTtgiL/DBdd4MoubS7RXA3zn+J4BPW6m/RUtiQ=;
        b=Ao0nB1IEpWSAsQrRATYm+rERSeO+ytGYWFmX6rIW/dr11oqZD91r2zromwFfJd+K98
         vBfQ4lP+K2mPu5oIzMouP+pL5kcRJKNCr0xLrjw/iHR3eV281Xw69C9zMyTTDc0q6ub+
         XqzrRHpc+vNV+qKBpFj3LRTx5szu7rkUH53wT71GCHGkOXxUjcpub0OgO12SINlAOaW0
         pl5iBYL5IFrPFhxsPICeNJ3NjDCPsthdxF9/rcotcSL+fiji61UzVaoyt90iS/GhQfns
         fYlkrMRTECsT4bbB4HL+0vz8q+g9WsJOerQPSjBnLB7yIFcJeMBRLTD48qJBtXVky6om
         hlOA==
X-Forwarded-Encrypted: i=1; AJvYcCX3Z7/nCF0rYhgZXHZ593nhvMBs7l4TaFOK4HlqkO87wS5FA0JGgJ74QDgGepEBeeGvLqki59rxs01M@vger.kernel.org
X-Gm-Message-State: AOJu0YzQaDb3SwC0AEUgmU6UoClxl82pkQLW/IDp9CkvwF1QDpcCqIb6
	zxZVwq8bRuHNchcmK5dR3fAS2bziLZ2Jzm8rCyvyq9l7we7wOa3Ii0hSHGAZhsHQTNLMMhE3nIt
	MIwwCm6uwLtSkikEW2j02Q88vJhiFGtF0KFe0EZ/UdFP6fMF/c775sHa9atrgCFbt
X-Gm-Gg: ASbGncvI17O3pkP9qIB9gXbq76juqBhFqCID71Im31gb8gNfEuPjxevdUuecwZfwXuq
	kkJ1m7PDj93xoBhLFIUJtjei/Ydd30DTK3nvV4mCDih7v8ZyhxpXtHiBoWdEGx1TGlJqBSgBPVV
	un70H+zr/5o36PunT/LtMvkjhDBGMDwd11NLPKoz5Nv+oSaMdJO86OsI3ei5vDrJMYGlkv2eQT0
	tvJwbLnS4kHnfso5p5y26Y6o+ZvrTNKJprCz1xVeGztyNLFybjcb2afw5R/swlWfXnfF8LpOOCg
	YfwwD1ZFZHOz2JcBs1cnBDIgpypn7V8DdjW5wjzl+p/AA/r3X+VJymm7RMMnW4pY6PmUUbdJMIe
	oT0B/LwNoEYivy1ijIdesWPNgSVhW5a4ZRiAJku2TcCfgaZXI7FfU4YanNuYBhcquTu+9EZRB3m
	A=
X-Received: by 2002:a17:903:b4c:b0:299:dc84:fd0 with SMTP id d9443c01a7336-29d683632e7mr70490895ad.17.1764835794849;
        Thu, 04 Dec 2025 00:09:54 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFDyOQ1vLVsU5V5EMsxwrhekjlP1A6NK3qfv4d4oxdKwY9CgbDHj0XxLOkRe6QdOid02VoGTQ==
X-Received: by 2002:a17:903:b4c:b0:299:dc84:fd0 with SMTP id d9443c01a7336-29d683632e7mr70490385ad.17.1764835794377;
        Thu, 04 Dec 2025 00:09:54 -0800 (PST)
Received: from [10.133.33.164] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-bf68155047asm1030207a12.7.2025.12.04.00.09.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Dec 2025 00:09:53 -0800 (PST)
Message-ID: <a3077c95-e6c3-420a-b65e-e4e584009c6c@oss.qualcomm.com>
Date: Thu, 4 Dec 2025 16:09:47 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] clk: qcom: cmnpll: Add IPQ5332 SoC support
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Luo Jie <quic_luoj@quicinc.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        quic_kkumarcs@quicinc.com, quic_linchen@quicinc.com,
        quic_leiwei@quicinc.com, quic_pavir@quicinc.com,
        quic_suruchia@quicinc.com
References: <20251128-qcom_ipq5332_cmnpll-v1-0-55127ba85613@oss.qualcomm.com>
 <20251128-qcom_ipq5332_cmnpll-v1-3-55127ba85613@oss.qualcomm.com>
 <6e12f446-7792-44da-9e06-99729c3b066d@oss.qualcomm.com>
Content-Language: en-US
From: Jie Luo <jie.luo@oss.qualcomm.com>
In-Reply-To: <6e12f446-7792-44da-9e06-99729c3b066d@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA0MDA2NSBTYWx0ZWRfXxTIgE7/BJyQG
 dMzjXHN1ck4k/0EJm5zMzmV8QGOmVm9M0Vmluzwa7GV2mV4K9iqzVY3XJ2GaqAH0mJJdM8DW5EA
 fWZv1kUG6g4+qDkxsmGKEPxnKfWMun7W7DPbs1lvcTmknv5o8AAZKY02GtBR+uqBrqIiszvhCxH
 058tH+nSGgmfxlwFhOnPsbJVAPhYqy2envVfGQHMNaCSKwC+u3tcUy3r3HCa4Ah8JKpJJF2eMUw
 miaoLaih+9KnaGSmgSYtQ9m/kE8/sN9Qgmk0iykbbKTqY21CreJ+ndhePEURTpT98AqD1CQPJYh
 eMn18bJrwTHMVp0+X2WeOduSH0F6S/dbRN9oRJBle71DOx6qelitshiepPTzDlzRk/7aEkTX7QS
 xoBoD9ivD5KXAvF0urnahCv6t63REg==
X-Proofpoint-GUID: CdoYeD1-XnASGRDS5uWxgyhdK1jWCDzd
X-Authority-Analysis: v=2.4 cv=KJxXzVFo c=1 sm=1 tr=0 ts=693141d3 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=7x-uUUuUDX1a27h2f7UA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: CdoYeD1-XnASGRDS5uWxgyhdK1jWCDzd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-04_02,2025-12-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 impostorscore=0 phishscore=0 priorityscore=1501
 suspectscore=0 lowpriorityscore=0 malwarescore=0 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512040065



On 12/1/2025 9:52 PM, Konrad Dybcio wrote:
> On 11/28/25 9:40 AM, Luo Jie wrote:
>> The CMN PLL in IPQ5332 SoC produces different output clocks when compared
>> to IPQ9574. While most clock outputs match IPQ9574, the ethernet PHY/switch
>> (50 Mhz) and PPE clocks (200 Mhz) in IPQ5332 are different.
>>
>> Add IPQ5332-specific clock definitions and of_device_id entry.
>>
>> Signed-off-by: Luo Jie <jie.luo@oss.qualcomm.com>
>> ---
> 
> [...]
> 
>> +static const struct cmn_pll_fixed_output_clk ipq5332_output_clks[] = {
>> +	CLK_PLL_OUTPUT(IPQ5332_XO_24MHZ_CLK, "xo-24mhz", 24000000UL),
>> +	CLK_PLL_OUTPUT(IPQ5332_SLEEP_32KHZ_CLK, "sleep-32khz", 32000UL),
>> +	CLK_PLL_OUTPUT(IPQ5332_PCS_31P25MHZ_CLK, "pcs-31p25mhz", 31250000UL),
>> +	CLK_PLL_OUTPUT(IPQ5332_NSS_300MHZ_CLK, "nss-300mhz", 300000000UL),
>> +	CLK_PLL_OUTPUT(IPQ5332_PPE_200MHZ_CLK, "ppe-200mhz", 200000000UL),
>> +	CLK_PLL_OUTPUT(IPQ5332_ETH_50MHZ_CLK, "eth-50mhz", 50000000UL),
> 
> I can't really find the source for most of these, but I see that there's both
> a 200 and a 300 MHz output to NSS
> 
> Konrad

Both IPQ5332_XO_24MHZ_CLK and IPQ5332_SLEEP_32KHZ_CLK are intended to be
used as the input clocks to the GCC block. IPQ5332_PCS_31P25MHZ_CLK
provides the reference clock for the Ethernet PCS, and
IPQ5332_ETH_50MHZ_CLK is the source clock for the PCS PLL on IPQ5332.
On this platform the Ethernet clocking path is:
CMN PLL ETH 50 MHz output → PCS PLL (divider + gate) → attached PHY or
switch.


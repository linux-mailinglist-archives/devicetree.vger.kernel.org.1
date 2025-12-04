Return-Path: <devicetree+bounces-244231-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 25DE2CA2927
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 07:52:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3AE173020350
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 06:51:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0664E306D26;
	Thu,  4 Dec 2025 06:51:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="F8kdsRl5";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fZj7Y/Ak"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 832762E7F0B
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 06:51:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764831116; cv=none; b=B0HLxnX+Kpywzjsls/OVctG7pwU/GmnoGpnJJWj+yc05kvOmn97aaKZVgCLO9W34cdqhmQrJpJ2vu7GFdCrlrwgLF7QHHDJOgKmVGNb6m2T8oYkYRPsf1ubzoE4ztusvplqzWZrKhG/kjUyIzmZePbsAb5NnDxJ1SmUWsachC9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764831116; c=relaxed/simple;
	bh=KT2QYR2wXHJ2g64QXkiAxDnQTrNBOsJcBtPqzT2t4EU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=s5WVShRUGQnpicRfIf5QkzwQQIt4s9mP0mQUelGwW0Qx7vlqobx1jmnhALjctiomgq4B/jFZwbHWg4/8dlXIUkXzp8UktGI+bnaWI6YDCjgFakHDa+Mtf2PXqcyHjkGTXWGGRhGuU6WNc5vj9agFWpINCDU8Yj518sa2WGe/gwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=F8kdsRl5; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fZj7Y/Ak; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B468m5J560177
	for <devicetree@vger.kernel.org>; Thu, 4 Dec 2025 06:51:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SwIvTqC0vtcEcT4pWezqNiZK3gnYXhecWCg8UTidylM=; b=F8kdsRl5LEWN6Tn1
	5FHZaLrLxQxo6Ra1PVUCwutZw95KlEYi7QFYpdKATUS2mFCN4XjCHExVsRsnEb44
	JC+qVhYS/ltNcipCo0tQwqtYXCRp6tmmJlX6IIQ8kuAUl9Sjfm58JFlcubu6EgzZ
	w9yovQTDhluuYULnJAkhHXIgwKct8Im6KmyCRfHS46zLONINXS+CCReEGa4tlz8u
	6vvdPDaWaFvOfBXArh7m2ZqQmqn4tHMjUmKgjDW0i7n1z+wpcnXkwRrYzCW5bixI
	b+i48exmM7ddaX3CnAPIldhqGYxsCD3Qesban++Vq9HMGzJcdgKfAJoFGk/IH7bL
	HNjuog==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4attmh9tf7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 06:51:54 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2956f09f382so4386015ad.1
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 22:51:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764831113; x=1765435913; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SwIvTqC0vtcEcT4pWezqNiZK3gnYXhecWCg8UTidylM=;
        b=fZj7Y/Ak96pqEEPk00NzlcMs6BSUJCryfLrb4BHhorAuZuzF0cBSHY57FqujQWSxRi
         hN8ifA1f/n+jgdiu27991I98jqP7bYknReUa9jC4G4y2NogA69R3GP35XJp6+GbAvcrT
         3Yuj7hNu6L0zIquZBcYLtD/BNoRZiGd1aOkrFo18GlTBdHqM5IaEtBCj2Sx9ykAdvFhg
         PKTw9JzJ3Wg+DndyWkovaC63AXvFTrRpZhf8i8Uh1C9RTMGkhf+Nfnebhcr8kYQfBDBG
         FwNhBWXBuwtYlqLKU04Bta06ZVFpoo0zm5RONhPTsZSysbVDaJggI7hDev8GD2zj859d
         EhPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764831113; x=1765435913;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SwIvTqC0vtcEcT4pWezqNiZK3gnYXhecWCg8UTidylM=;
        b=gE2TQxr6urlHujMwasnnRnXCpkq3TX/aYYPIsGQP+AdpL5OenxoPr+Gn/2HKA4zwQ3
         TdJ6kzuoOKKfVrnwFGVdQVaMbOFsRrlgVnaBllwljWgdCH/ZXCl4qnalmadX4oTtCLLg
         McI/SlwU1hyMWNBuZh/rNwrAbPw5d3EyLnRGqTrApfkFEg/WS4giW9VPJH/sSuh+dIYX
         7ELCFhot7D+wPvPCF4ZHubN7VmifbuH+q0wKRPQaeAGgVOUZtjkxaFSyPUX3KdQpKqh/
         rMvU2MSmoqPewhiXiz4FB+3eWaXgBoh63P1f4+BEVsu0r436cLzFYzDWHrpr1mB2Zoad
         9L9g==
X-Forwarded-Encrypted: i=1; AJvYcCWAs1C/+m+lD0vtYX4ZPuxLUyFtij1kwxL/OaTBONAYkOv/U7FAC6gaG5fi9UwsQ6z87VIzzYTBtfSj@vger.kernel.org
X-Gm-Message-State: AOJu0Yzk6wLkjQPV59S5SXVTGoG7NafPM1GOcytby53JVuqpl09HCDws
	F5FXyDw2pXSB9wxvlwQwZaSmiOhko8OV06lxce4rJWfNd7Mwyd7DDBTNxVIO6XU70HsH18metng
	jLC5i10RRP/Icmhaw2lBfiqQu9awEQttu6Bl0OzfwG0NTRDv/BOKJ32fhLO2ERUWO
X-Gm-Gg: ASbGncuegzt/nmpKUivE8dMW1iB3cHLdHk83DAKt/LVtYRBpIAbFl2sIADZzm2l/rNw
	S6R6Duh4LG1UZoSDwVYeuGRPbtorYGtsNtMIK/VXOOAGwfQ7Ivl5Tu3w7VevknHh+Md12Lhg1zq
	E2syau5pNS1Ci97qZz8Y7KhKjjKmOztd1u092No0xNUp7OZNEenlrrA7IvuE2jCVPGgtywOQZbN
	dKFHHMSIgkwJiDCDz9mxVPS0/xv7i05S1DTPKRH1qiZn0DHjz7zRJUvIl/AQtHpDs9pyXjekXw0
	Forhz3m1t3iPnSm+T414htz4nZ6sskJcFUGozqWNdS6d9Bl14sJq46HJk4EU881snko67tHjpLn
	rFPxNEdzNhAVUUgu1IfMrmfzB3JtDcG66VkVqyg==
X-Received: by 2002:a17:902:f544:b0:297:eb3c:51ed with SMTP id d9443c01a7336-29d9ed0b4fbmr26080525ad.16.1764831113133;
        Wed, 03 Dec 2025 22:51:53 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEK/6jD4CnU7c208zP0SLAeyIoeJRxRQ14N6apIAj0JxvDPjIPkL429Mbb2KAq5S0NdCutI0g==
X-Received: by 2002:a17:902:f544:b0:297:eb3c:51ed with SMTP id d9443c01a7336-29d9ed0b4fbmr26080225ad.16.1764831112660;
        Wed, 03 Dec 2025 22:51:52 -0800 (PST)
Received: from [10.217.217.147] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29dae4d3b5dsm9082855ad.40.2025.12.03.22.51.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Dec 2025 22:51:52 -0800 (PST)
Message-ID: <db8a9c71-8400-46f2-892a-a9a8adcd8dd0@oss.qualcomm.com>
Date: Thu, 4 Dec 2025 12:21:45 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 10/11] clk: qcom: Add support for VideoCC driver for
 Kaanapali
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org
References: <20251125-kaanapali-mmcc-v2-v2-0-fb44e78f300b@oss.qualcomm.com>
 <20251125-kaanapali-mmcc-v2-v2-10-fb44e78f300b@oss.qualcomm.com>
 <850c172d-66e0-4d28-903d-fbcef7ad7444@oss.qualcomm.com>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <850c172d-66e0-4d28-903d-fbcef7ad7444@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: L7R0fqG3x4ymliY-McpUYjFlG8Wg6nk7
X-Authority-Analysis: v=2.4 cv=NcTrFmD4 c=1 sm=1 tr=0 ts=69312f8a cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=6AvYVb4XUzzG-8MtstsA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA0MDA1NCBTYWx0ZWRfXywd3I+3kpg2T
 oKC86vZg77mqn4a3gMqI+KVMjNtF/7dVhwwwra2fXt/xADIOGAJD6PX68/NJ9/ZyBPKmG0P7ulo
 OGRQ5UddeJlPvfMDOzKYNNLinuG/rb9lxEJcrgdb6SV1rnBUq2k8ihuBGecvyaPO+zdtl7DAQX+
 SXzFyDgP/9sBMxIv8ucvX5/jsXP+O9qTDperMXdOjTWcsp2KIlcf+S15FURrwtovwm0nCXB15td
 sE1SWEy/l9xnWtC1Q0SAMFp3I22T4/C1HEZDy1YtasRCAmio6RP9VkH95SvnSNPZyhsblskrTG4
 oNkhxUDs9ozLYXANOC3NET/DHICG/boAavqeyA9NnpwooAN0tvrwNlS3XTKUvhpU4AP9FHE2xxh
 kUeImutrdxfa6zkA8LLWaOS6dUrOCw==
X-Proofpoint-ORIG-GUID: L7R0fqG3x4ymliY-McpUYjFlG8Wg6nk7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-04_02,2025-12-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 priorityscore=1501 impostorscore=0
 malwarescore=0 bulkscore=0 phishscore=0 adultscore=0 lowpriorityscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512040054



On 12/1/2025 6:45 PM, Konrad Dybcio wrote:
> On 11/25/25 6:45 PM, Taniya Das wrote:
>> Enable Kaanapali video clock driver for video SW to be able to control
>> the clocks from the Video SW driver.
>>
>> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
>> ---
> 
> [...]
> 
>> +static struct clk_mem_branch video_cc_mvs0_freerun_clk = {
>> +	.mem_enable_reg = 0x80E4,
>> +	.mem_ack_reg =  0x80E4,
> 
> hex must be lowercase
> 

Sure, will fix this.

>> +	.mem_enable_mask = BIT(3),
>> +	.mem_enable_ack_mask = 0xc00,
> 
> GENMASK(11, 10)
> 

will fix this as well.

>> +	.mem_enable_invert = true,
>> +	.branch = {
>> +		.halt_reg = 0x80e0,
>> +		.halt_check = BRANCH_HALT,
>> +		.clkr = {
>> +			.enable_reg = 0x80e0,
>> +			.enable_mask = BIT(0),
>> +			.hw.init = &(const struct clk_init_data) {
>> +				.name = "video_cc_mvs0_freerun_clk",
>> +				.parent_hws = (const struct clk_hw*[]) {
>> +					&video_cc_mvs0_clk_src.clkr.hw,
>> +				},
>> +			.num_parents = 1,
>> +			.flags = CLK_SET_RATE_PARENT,
>> +			.ops = &clk_branch2_ops,
>> +			},
> 
> The indentation is a little malformed 
> 

will check this and fix.

> 
>> +static void clk_kaanapali_regs_configure(struct device *dev, struct regmap *regmap)
>> +{
>> +	/*
>> +	 * Enable clk_on sync for MVS0 and VPP clocks via VIDEO_CC_SPARE1
>> +	 * during core reset by default.
>> +	 */
>> +	regmap_update_bits(regmap, 0x9f24, BIT(0), BIT(0));
> 
> regmap_set_bits()
> 

Will replace with the new API.

> lgtm otherwise
> 
> Konrad

-- 
Thanks,
Taniya Das



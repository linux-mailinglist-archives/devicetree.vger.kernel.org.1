Return-Path: <devicetree+bounces-276620-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SIUmBxkxuWn4uAEAu9opvQ
	(envelope-from <devicetree+bounces-276620-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 11:46:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DFDD2A8327
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 11:46:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D3FCC305D4C0
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 10:46:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 404B336403B;
	Tue, 17 Mar 2026 10:46:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZCe0TFF8";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VC+i/xcu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB3C235E94E
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 10:46:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773744381; cv=none; b=GIeGhb837vroxA98Tu35BcWzEeWoHAgVtpFu91znifRr3dVN+N3DsJTnO/m6y9Aqkpxf6PzuVR4ml9WzLkWTRUTj8tI+7n1ldujJPfOTuVXFNMZgQBNT6FgI8zEtl3qe7HJdwcnNZFIklSP3SC2cVfoyKIN8Izxp5y97dvDhOQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773744381; c=relaxed/simple;
	bh=A1mIIJEaqrCodQu92vygvb9wqCqBodsOpiZXKvehQ3U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oV47CtFisVUGRJQxela/5J8L0R/IcldnSiHdczl1+HxinUHTMhYexCN5+pSqMs7BLhtB5ql/psxzck81oYJIbQ/HD//kQv0bctWXwUf07t+FGmdIffoq1EpWduxO9utSVdAaFjqphvML2Lpjlw0JWqSKXvOxstYRahMU5KZ8Eo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZCe0TFF8; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VC+i/xcu; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62HAi7562263960
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 10:46:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	L2pCwTXBGRp2O/7xv+6yHE0kSyqIKsd5DC/D8aY8o9g=; b=ZCe0TFF8W/8oe+Ks
	O2JhkP7baPVZhXPtQFOgz4Zz5aKUNacLHpt7pXmRLGWyKVVppC+G8mA6E+ZX4nod
	ng8QAdg6yFY/qrKqBu1WEcO0tHobpHLIkrEClWpm+fqMED4MaIhjZu04RopxUr8E
	chrkWcyM9j/ff1dvvuozkbg+pbjpznk/8j9wankx+pdEeoU/KSUDaudaj3aNXEen
	BZLfBlLKBtoi78UmsG7Zp53zvAMVCENgndG3lmISTSEcNJ8wY8FmgjO8TwEf4GJ3
	7z/pcfRaJH8mKa+ZksKs+vGzSO45gd9m9G1oxOvj9/RQ84Hn3Ctwa2z+B8Mh77iB
	ierGyw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cxn3fkc3p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 10:46:13 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-35b991171deso1902029a91.3
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 03:46:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773744372; x=1774349172; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=L2pCwTXBGRp2O/7xv+6yHE0kSyqIKsd5DC/D8aY8o9g=;
        b=VC+i/xcuFWcKxNXSGnF9pfw7y5TBFGLI5rs0ptbKLmWZoJICUg475TVrL06A5+Ca6w
         E3YTn6GIf1IqQ3A4PsBUOERsxPeQCmoZ4IdZWJodejLFhNV2e3h3J8susQGMXyTuYjuF
         +sL9CZ6JXD2voNEzyI2toFsg4FdxnvZlt0tL+OQMjiL5CwAfjv4OUOe1dBnE9PzCsaz7
         90pnKJMQD9uqTXUR9EMCaMDvtPpWePS0kWI9wCR+KmH0E4C9p+aJ8J/uY14y0vYEylML
         AydfwOc+2y+U3X3P/+BF9INp8lat4VVyx98hugeh8F1iDZUpiY1sxt4zSSiwXI86vVV+
         JkDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773744372; x=1774349172;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=L2pCwTXBGRp2O/7xv+6yHE0kSyqIKsd5DC/D8aY8o9g=;
        b=npmLbt0iIPHbuXVmQHr1DEvdw/YgE03mDHWY3MOkjNQAq8AkJ25V4ylvS7eIlAA5e2
         PVdoHB0SIajtso6rH7jZNwrTBqAKB1/Bq6g6oB1oNZakUOpg19x1gssdu8k6FfNiUx+R
         HJx/bJEwGDk2JE0XwkgTCRxEnp88Oltu+fBQh6hxUTAERKO0rf7XbqWlFnygU0fk4Hl6
         rkC7g2tAzfsrtN/l3VBEAs0VacxBlwjNPHre1nH3CeBoCscxx9JjDDpiE5JmnTvmZo3g
         ShVHbfd/F/kSom2AqJ8ZGKmWL/yLDdxfuAaiufJeTNXzmIOCEFxSpyxy4FB9smSj2zJL
         AhOw==
X-Forwarded-Encrypted: i=1; AJvYcCUKiYgyQcvGvJabbTtSqSb7aghqXZRvyvVT4KHN91FWMBy5dnZFr3SOpPRBI2lWESyYD5hvTQ9YC7OF@vger.kernel.org
X-Gm-Message-State: AOJu0YwTkockl39m25pRpbgjqHbh2/5dJzjDYz5X6tC22JIVcdwKRouN
	nZ48UBCr2YsoQ4YZZZb/flZ9IzUvQADtOHXKJw2bzlKSK5JgxjU8Ox4cZ6ALeTV9W8Yw00MGO3i
	6Cf5D0+MCjQiX3IuFyM8JklTV/CVaKEqSTHd0rwJuZsCKo00K+Gcd04Df/naTtzFX
X-Gm-Gg: ATEYQzxlF/zZNv8G5gpRWZqDTTPJgUfuJTdWxcz8ON+gTPbllx4XPbtZfeH4uacPkWZ
	nxjbtHZE6+4QzDd6KE5DJY3nV6hSu+Gn11Tmuq+qLccnWr55MOFqq/q1CP1yk2hWMnHy3FtXY6b
	fSHqTTZ/lYivY3ORv3j5zMUtxZM5nYQrVWHtF+H2dPyFQx+1xY6PkrEoP/TTdcnIEF2BcOebL/F
	u/jvoGos7nyyOdkAt09mtNIvsnXzrJQEXtG/L5XRzcUaO69mqNUVU9AUU3wupBVHAcJsWX62Mx2
	l9YyBaeL5SRdl+/ITcWdINJ+oBJTGFHJ3gWleWwYwsQU9rqirYZCf/tKlAZHQ0AfWR04q9m1Ti0
	UXUnzMFqxkjUnBMcB0jVD5qI9tiZPUZ2qKI+lE5EKwLnE32vEVg==
X-Received: by 2002:a17:90b:4a84:b0:354:ad98:7d1c with SMTP id 98e67ed59e1d1-35a21e62c02mr16319844a91.11.1773744372236;
        Tue, 17 Mar 2026 03:46:12 -0700 (PDT)
X-Received: by 2002:a17:90b:4a84:b0:354:ad98:7d1c with SMTP id 98e67ed59e1d1-35a21e62c02mr16319818a91.11.1773744371767;
        Tue, 17 Mar 2026 03:46:11 -0700 (PDT)
Received: from [10.217.216.245] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35bada5c760sm2581103a91.5.2026.03.17.03.46.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2026 03:46:11 -0700 (PDT)
Message-ID: <0cad34b4-16fb-4820-a051-5e217d5a738b@oss.qualcomm.com>
Date: Tue, 17 Mar 2026 16:16:06 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] clk: qcom: dispcc-eliza: Add Eliza display clock
 controller support
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260317-clk-qcom-dispcc-eliza-v1-0-be4b0e4eb24a@oss.qualcomm.com>
 <20260317-clk-qcom-dispcc-eliza-v1-2-be4b0e4eb24a@oss.qualcomm.com>
 <bc90669a-652c-4a10-9755-f4c202506318@oss.qualcomm.com>
 <f67c126f-b5ea-43e1-9f68-c8246e641f17@kernel.org>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <f67c126f-b5ea-43e1-9f68-c8246e641f17@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=C5bkCAP+ c=1 sm=1 tr=0 ts=69b930f5 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=zVrBNZ6YtphMyaTvLrUA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-GUID: K8D2MaIRGFIfOBvRWGb5SH5FuTrbPV12
X-Proofpoint-ORIG-GUID: K8D2MaIRGFIfOBvRWGb5SH5FuTrbPV12
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE3MDA5NSBTYWx0ZWRfX0d1ipEcjfwg6
 gcYfqjxN9TETC1sJjdhk2NJnSY1eEYW+pdsh3Zmdvip+/U6a4KpulZThWLpZGxj7dsBZtTJrPml
 +ttrTt01ajwyO0JCCxStbPo3OgjUZwAeJe9l6OGE7jvdG4VsSt6KNpEbpEr3CdtscaiQUfkHQco
 +Ozehj/ODd8UurBbLT5v/9cP9KvSK2nSaR2C8HYGDPuV5jSoVX/KTBZOMAlMCTL9F8H+G3e3cnX
 XIqdbMIRMxTxdkkBv3vbdgWDnXU+1/1HC/1ujGi2jvCVwAf2ieYbwvVGHyt6uhadifigQPrAJ0G
 5qHdDZNaMRx4Hyhn5xqNXQVgZTPasslz9AO1qP0J6TWM96pYdWfuB+Z7IW4CIfd/uFNHTYNIIw7
 sL8FPG+NSGsgrQQT2sj1jPUhzG9anyF9x+b5pE5APEAg3nDPrUsoUyWvg5jdE6BZwN1bSBr6c8j
 hEfFFzIWKEvh+OL6MXA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_01,2026-03-16_06,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0
 clxscore=1015 malwarescore=0 impostorscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603170095
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-276620-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[taniya.das@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 8DFDD2A8327
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/17/2026 3:54 PM, Krzysztof Kozlowski wrote:
> On 17/03/2026 11:22, Konrad Dybcio wrote:
>> On 3/17/26 11:06 AM, Krzysztof Kozlowski wrote:
>>> Add a drvier for the display clock controller on Qualcomm Eliza SoC,
>>> which is copied from SM8750 driver plus changes:
>>>
>>> 1. Additional DT_HDMI_PHY_PLL_CLK clock input,
>>> 2. Eight new HDMI clocks,
>>> 3. Different PLLs (lucid and pongo).
>>>
>>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
>>> ---
>>
>> [...]


static struct qcom_cc_driver_data disp_cc_eliza_driver_data = {
        .alpha_plls = disp_cc_eliza_plls,
        .num_alpha_plls = ARRAY_SIZE(disp_cc_eliza_plls),
        .clk_cbcrs = disp_cc_eliza_critical_cbcrs,
        .num_clk_cbcrs = ARRAY_SIZE(disp_cc_eliza_critical_cbcrs),
        .clk_regs_configure = clk_eliza_regs_configure,
};

static const struct qcom_cc_desc disp_cc_eliza_desc = {
        .config = &disp_cc_eliza_regmap_config,
        .clks = disp_cc_eliza_clocks,
        .num_clks = ARRAY_SIZE(disp_cc_eliza_clocks),
        .resets = disp_cc_eliza_resets,
        .num_resets = ARRAY_SIZE(disp_cc_eliza_resets),
        .gdscs = disp_cc_eliza_gdscs,
        .num_gdscs = ARRAY_SIZE(disp_cc_eliza_gdscs),
        .use_rpm = true,
        .driver_data = &disp_cc_eliza_driver_data,
};


>>
>>> +static int disp_cc_eliza_probe(struct platform_device *pdev)
>>> +{
>>> +	struct regmap *regmap;
>>> +	int ret;
>>> +
>>> +	ret = devm_pm_runtime_enable(&pdev->dev);
>>
>> -> qcom_cc_desc.use_rpm
>>
>>> +	if (ret)
>>> +		return ret;
>>> +
>>> +	ret = pm_runtime_resume_and_get(&pdev->dev);
>>> +	if (ret)
>>> +		return ret;
>>> +
>>> +	regmap = qcom_cc_map(pdev, &disp_cc_eliza_desc);
>>> +	if (IS_ERR(regmap)) {
>>> +		ret = PTR_ERR(regmap);
>>> +		goto err_put_rpm;
>>> +	}
>>> +
>>> +	clk_lucid_ole_pll_configure(&disp_cc_pll0, regmap, &disp_cc_pll0_config);
>>> +	clk_lucid_ole_pll_configure(&disp_cc_pll1, regmap, &disp_cc_pll1_config);
>>> +	clk_pongo_elu_pll_configure(&disp_cc_pll2, regmap, &disp_cc_pll2_config);
>>
>> -> qcom_cc_driver_data.alpha_plls


static struct clk_alpha_pll *disp_cc_eliza_plls[] = {
        &disp_cc_pll0,
        &disp_cc_pll1,
        &disp_cc_pll2,
};


>>
>>> +
>>> +	/* Enable clock gating for MDP clocks */
>>> +	regmap_update_bits(regmap, DISP_CC_MISC_CMD, 0x10, 0x10);
>>> +

static void clk_eliza_regs_configure(struct device *dev, struct regmap
*regmap)
{
        /* Enable clock gating for MDP clocks */
        regmap_update_bits(regmap, DISP_CC_MISC_CMD, BIT(4), BIT(4));
}



>>> +	/* Keep some clocks always-on */
>>> +	qcom_branch_set_clk_en(regmap, 0xe07c); /* DISP_CC_SLEEP_CLK */
>>> +	qcom_branch_set_clk_en(regmap, 0xe05c); /* DISP_CC_XO_CLK */
>>> +	qcom_branch_set_clk_en(regmap, 0xc00c); /* DISP_CC_MDSS_RSCC_AHB_CLK */
>>> +	qcom_branch_set_clk_en(regmap, 0xc008); /* DISP_CC_MDSS_RSCC_VSYNC_CLK */
>>
>> -> qcom_cc_driver_data.clk_regs_configure
>>


static u32 disp_cc_eliza_critical_cbcrs[] = {
        0xc00c, /* DISP_CC_MDSS_RSCC_AHB_CLK */
        0xc008, /* DISP_CC_MDSS_RSCC_VSYNC_CLK */
        0xe07c, /* DISP_CC_SLEEP_CLK */
        0xe05c, /* DISP_CC_XO_CLK */
};

> 
> Ack, I took a bit older driver as starting point but should take Kaanapali.
> 
> Best regards,
> Krzysztof
> 

-- 
Thanks,
Taniya Das



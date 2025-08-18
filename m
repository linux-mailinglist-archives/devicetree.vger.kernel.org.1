Return-Path: <devicetree+bounces-205698-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D493B29D26
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 11:06:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A9AB3188439C
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 09:05:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BBCA30DD02;
	Mon, 18 Aug 2025 09:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BBXQsSOH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFC8D30C35D
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 09:04:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755507893; cv=none; b=jTIbOAhdXrH5V6urcZrYyWbn8D/LP96PLEU1bdMR6yHjW8jBDpYQemDq07pZUhoC7Nkgzzz/JiPiIjXddeeGwpYThQbdPVfNh+XQtxFfdtCTTqh4zaEt0DT4vdYcESCKcNmqj4YMsQBTDqlUghQ187FP03o+Ms00ItehHkE4HZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755507893; c=relaxed/simple;
	bh=7eHIPEpHmH++L8mgdGXYq73W+DK/YmDiZBX3MvshN+k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qA/+weopu5ApvS+Q6bSnhew3EKnKIa8SXIl2f0wiXnXWHV+Cvau4FQOK7z8ck9IozPFgOuVPxPWLQ5zL7W/oWyyu83ZUhFwst3xkkuZXH8QRHxTfFJaLtamMkzcovYc0o45R00lRVf3MxSG1s+gh2mb+tIiowlK188f5iuH+5Gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BBXQsSOH; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57I7eKqi010649
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 09:04:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Hx7GazS6KddK4CRvhI8Jo5HoBHvhj7rho2N3bAP0xhE=; b=BBXQsSOHU3PSvwE5
	uiIHg/p4zJqhnMmh4cRlqCScbU8dRhy0rS0Z8ghOpqF6zpIvCR5O2NAwOUdgCuFh
	Mgzp33WzxgCWICzxzFAavQcRuiVSuiPNWBN0ZfhQgAxK0RNe7DRWIXiIg78tT9vN
	nfHI54lhXikMwCNQS+g4vpAUyokmcJN/ZxLfLo0QOLVAi0P3BJ0brl4yteiw3FqY
	jme0gisUozr8yAWGVglJsitVQWJDBTTp1TfZLdifCypiTZJ+exO9CcpAXqqwz/43
	fEzEpQK5vkdgt51DCfdVZ4cG+quUC3eBgFkuYZsbBL22LD5jAHZxr6w2djbAU97X
	1vJR1A==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48jhjyc1pk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 09:04:50 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b4716fb7f2aso3159215a12.0
        for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 02:04:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755507889; x=1756112689;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Hx7GazS6KddK4CRvhI8Jo5HoBHvhj7rho2N3bAP0xhE=;
        b=U2f7oeja65eFFZ+aiPTpG828m6l5bm5Rh/a/sTRLM/8WvExXHOaXCo16og2PF+hKON
         f3sk3fpyzC8ApgzZ4trSaiuxdlFmMQVcSg2T4HZIb3ZkW5IL9J2wxqZHveatTOCIa7f/
         bwLrC4AuaN6EKbOR7uYSCm4pYVOWiqUYWcfH6QYK4b9xz9J3GLHD4wbwOvQjTlk+scIb
         47xkrLPL3g7EJW8TQHIBUJNCDnz1pGVpIlAY2mSDBWj2l0I7HkdGl34yf4lpD6tFLtvc
         At5rTjAGYEk01pMLQwA1DD6UGZDriIbZ0cp9169vtytDDm0L7qdmwao9KWZZqnpD8tYl
         oVkQ==
X-Forwarded-Encrypted: i=1; AJvYcCX8JbUEDEq9pvXVBjaqiopP9ZZ3AxSGnDnB4kRCoRq4VdDGSV1iJQ/Ntvk4YSZEWA0hx492nBiH3yQ8@vger.kernel.org
X-Gm-Message-State: AOJu0YzXWlsvUnxLV0WDanFeZuNXRpChx3VP7RU9AWSTYEB27INSxnXF
	vQUbwGDKdo8fDyKltKPo02MjuDSUplbyv++da3sD6oIf6GM8S0ZKKuAFn3mI4PJ/0QxLMq+qomM
	fkKDZcf8fbkiLpTVfU7zooLBKBkS1l56mrLSxoYwjJ7jvKpioKdjr2t3OvJvpPgTU
X-Gm-Gg: ASbGncsw1WsULRfiNbqn7ntspDH5WJd2UK4KJyH3XIAXZpG7sz0nxiIUVszDRPBEa4y
	wfyTFkS+3THwK6fUjJaJzZHbafUNz4DohIDULlOF4a4lexsf+Qvl7npRAJ3WrmqbU6PumkqmOEh
	H12lzJ9PRhIfWTDuRfIMpwEUZ6Z03qkVa6AikHwo+4a8i2U/omY9IbdwZAdt4FbWhpF0um3CXdS
	Uuu8j1bTc3kkKF9/8sMZMdb7ypA48qX/2zG3yLTCgUs94jx+p3M/h+sSS4RTBEfwo5uR6rn3+WE
	HOgIRhr4Ce9zBePBdJWKGAGP63uF6/pe9b4KScEdEXkk4i/Z7PICfEow+eNKH2Wf+iJgyHv0UQ=
	=
X-Received: by 2002:a17:902:ebca:b0:234:8e78:ce8a with SMTP id d9443c01a7336-2446d93a799mr162537835ad.48.1755507888983;
        Mon, 18 Aug 2025 02:04:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGJmiHRJLFufB9IO8hcgWH6q7B7pvAk/hvQzVpakplvV5KEBqQ7f56zxSxhND4Y0wxQpYb9DA==
X-Received: by 2002:a17:902:ebca:b0:234:8e78:ce8a with SMTP id d9443c01a7336-2446d93a799mr162536185ad.48.1755507888387;
        Mon, 18 Aug 2025 02:04:48 -0700 (PDT)
Received: from [10.218.42.132] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2446d54fe38sm73988355ad.135.2025.08.18.02.04.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Aug 2025 02:04:48 -0700 (PDT)
Message-ID: <1f9d1b45-9267-4633-94ef-33f6f1c51401@oss.qualcomm.com>
Date: Mon, 18 Aug 2025 14:34:42 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] PM/OPP: Support to match OPP based on both
 frequency and level.
To: Viresh Kumar <viresh.kumar@linaro.org>
Cc: Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20250818-opp_pcie-v2-0-071524d98967@oss.qualcomm.com>
 <20250818-opp_pcie-v2-1-071524d98967@oss.qualcomm.com>
 <20250818085517.dj2nk4jeex263hvj@vireshk-i7>
Content-Language: en-US
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <20250818085517.dj2nk4jeex263hvj@vireshk-i7>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: W29JTV1OuFrU4-GgMEUFG8SbQ56YsS5W
X-Authority-Analysis: v=2.4 cv=ZJHXmW7b c=1 sm=1 tr=0 ts=68a2ecb2 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=1nWJchpGOjdSI0JMKxwA:9
 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-GUID: W29JTV1OuFrU4-GgMEUFG8SbQ56YsS5W
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE2MDAyOCBTYWx0ZWRfX4YXS4pgoaTEL
 oTrAXHqRj0bH1yj314rNEDS0AcayBwM6YHJRnuNRpn3y/mtCJssBg3tYaLhiBR5RSxjXk0ns09b
 Gs4Dbm2oG91kwFC0pAESp1qAEPpaExYquMGr1zvN6mX8P4PBILww9yj1bhrQIOhgwmKsh0/orgB
 K+FO19J5imiKha12On24s1PfWRJBfn/D/AdPYh2yZ+TKFjMHYkeWLoQC4p6NTtcp3yI3FbVJ6je
 dxYLeDgwCoEk+CExflaCVchYkTIRL1Su38USiSLIbxPQOD82cvSwnYwDSuh89tPPWg34oRcV7Vg
 tzrbIQhwHOblWcVjCsDhrX9MzcsYAzdXuezPeOkSSBVMOvwZ3pcuY/GmvziJAp8fjuDfy1Yl482
 +bKCpu0d
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-18_04,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 phishscore=0 suspectscore=0 clxscore=1015
 bulkscore=0 spamscore=0 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508160028



On 8/18/2025 2:25 PM, Viresh Kumar wrote:
> On 18-08-25, 13:52, Krishna Chaitanya Chundru wrote:
>> +static bool _compare_opp_key_exact(struct dev_pm_opp **opp, struct dev_pm_opp *temp_opp,
>> +				   struct dev_pm_opp_key opp_key, struct dev_pm_opp_key key)
>> +{
>> +	bool freq_match = (opp_key.freq == 0 || key.freq == 0 || opp_key.freq == key.freq);
> 
> Why !opp_key.freq is okay ? If the user has provided a freq value,
> then it must match. Isn't it ?
> 
ok I will fix this in next patch.
>> +	bool level_match = (opp_key.level == OPP_LEVEL_UNSET ||
>> +			    key.level == OPP_LEVEL_UNSET || opp_key.level == key.level);
> 
> We should compare bw too I guess in the same routine.
ok I will add bw similar to level,
> 
>> +	if (freq_match && level_match) {
>> +		*opp = temp_opp;
>> +		return true;
>> +	}
>> +
>> +	return false;
>> +}
>> +/**
>> + * dev_pm_opp_find_freq_level_exact() - Search for an exact frequency and level
> 
> Instead dev_pm_opp_find_key_exact() and let the user pass the key
> struct itself.
> 
ack
>> +struct dev_pm_opp *dev_pm_opp_find_freq_level_exact(struct device *dev,
>> +						    unsigned long freq,
>> +						    unsigned int level,
>> +						    bool available)
>> +{
>> +	struct opp_table *opp_table __free(put_opp_table);
> 
> The constructor here must be real, i.e. initialize opp_table here
> itself. This is well documented in cleanup.h. Yes there are examples
> like this in the OPP core which are required to be fixed too.
ack.

- Krishna Chaitanya.
> 


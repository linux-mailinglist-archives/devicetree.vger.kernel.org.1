Return-Path: <devicetree+bounces-259507-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2GnjNCVwd2m8gAEAu9opvQ
	(envelope-from <devicetree+bounces-259507-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 14:46:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 37846890D7
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 14:46:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 37F93300DE14
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 13:40:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EDC433A6F7;
	Mon, 26 Jan 2026 13:40:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Fn/fd2v7";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="STVnBozX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C64733970F
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 13:40:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769434827; cv=none; b=LRsNvvxPv0BEXLoe+oupk75g4+u62Xf1LTN5plUDhN0LHgJzztZvfkAf1SUWz75Ee8DfMP4LY0ZgTu6d07CD6d4kaijCFhUVAa7XgAY7pFjkpzAcFxsiyyeDHaNTPb4qEOe8NFsl105eSpjbF53T96fb5PtavQc5W+/PkoRbpOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769434827; c=relaxed/simple;
	bh=hiV1mwptVE1X+TFGpR5nDlHhkXYVLOknuYGWaerv1DA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GvJcxCkYD2PL1yU2AGm6jhCxZSus/qklahgxtZ81dUmZM/hHPboDVXKEVT/ArKjrga1wOGLN5V4W/0IOSsY1eUGUC06XCS1bqGDlUlGc+5vVOnUkK0W9EnCWYLaBabCXvSJsqX8c+OnZBhUCH46prtVqDXxAwXM/MtROTC4rjUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Fn/fd2v7; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=STVnBozX; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60Q5UvLC1020378
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 13:40:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bZpoYSbwjt/zA/TbbfxQ54Cdd+ABBb+o46hdhiusmLk=; b=Fn/fd2v7fK0Ve8IR
	WYD7EY1KWXc6MYd2FeK2YRV52BNAqli2nZ1RoRSiUk8zPjLUPsmKjT3hXZUCjLkZ
	REVQj0ILe9T5COvrucrYE0YJKBnKEU1qPLJhzz7UlkCU5xc0YzFi2GcYLrogph8x
	nPmzYXS5LBkpOi5HyrY8uj4dlOGYA98DPI46dfLMwTDSLFRcrFW2jut2vOXIFNdM
	L/GH/1Qe+MLtrQ5w0BS+h3J5nnUToiHuTwLli2ggeQ6c94Btund7UVBzJSxFr/TX
	TDHCHWdizbIqy4Mr1TXgbJfBELt/eO+WZ9cxZPjrhbnAM6AzqMoYaYFy09Kh/Qvb
	2GTjvQ==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bx26815ad-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 13:40:25 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-81f53036ac9so3833085b3a.3
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 05:40:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769434825; x=1770039625; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bZpoYSbwjt/zA/TbbfxQ54Cdd+ABBb+o46hdhiusmLk=;
        b=STVnBozX1Jj0j1H9RTr0SVKI50OPHpSpq7g3zFTE016saquzP/b/DCkTZIBRLwDpiL
         XHVd//fhlwi0YIBas62WyDQV5eEXOhJWkA9+RdEHL4oVyznO5l7TeB6MEgitdgnXlz+q
         a8iZgVwYallhMxfTmXb1pIXezluJqSQ4ENtKdbRg0gYmdj5Cz9YqOi9m7xx95H+OAcOt
         W6YrjaUoinUmkw1tU87/tmpfqHDmpQKiBE8qAPy5RyBAJ6sqI2mMdS8odgD+gLXB5ZU7
         NIP37VQtk4vAVx3D8JmWT3Muo/BIZjysC7PAuXGJIdZtOj8br/zQm7WE2XXHSFMqA8fo
         7R3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769434825; x=1770039625;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bZpoYSbwjt/zA/TbbfxQ54Cdd+ABBb+o46hdhiusmLk=;
        b=WqJNWCuDO3gNo9TCRPg0rm0Fu+QlUhqCQWSbLmXqU8Bg7dxW6xSOz8I83rmTt9psqF
         A3V+BQSj70UxkIismjj91xobh3KQoDCF2SiFSf92DD8ZirjDALnB+7BHfQQKASPwMTRq
         rGF9HG1e42NE5aFfMY+lSNSLylTQqqVM3StwI+FnDYKzllPuHLp6vid1zW2Tr4iCI4Xy
         yXZEDRWshfSsUNRCVbmC1sRac9DQWBEt8SRoMkgGCDjV4NxJj+QXdZLseGrZTtNCKD/H
         8deonq2Ma0GOPlexKmWjaGkinG9NP1/xGC1imcBJwwpyjLo00GXcgakmE+wyoh7qda4a
         SV7A==
X-Forwarded-Encrypted: i=1; AJvYcCW+kphejX0XiGgAux/39zydXsqXPp5uC/TV9TYAjrLO8UvC1ofTgNovEEDwzXvzJGr+7uViNpg09YTQ@vger.kernel.org
X-Gm-Message-State: AOJu0YyOWZetbHKVSb7vC/CiJvLYkoXEYAp/KPo+u5I3fSO1lK9syiXY
	nFnLAR+iSw6DPe9ClJQYyseF7CrfvcnKJd3SrkxRqdY+A3nLvmXeBAfwYfcc4AMFH0OGBuozK6l
	0fxa3eyIYmcjeLE0xAd0z1+drkdWVoYXj8D/Ue4/P8E5NPgHs7uu/in5bdD2r5uBO
X-Gm-Gg: AZuq6aI5Iunb1CvTPdG294ZDZwy6VBONk0sbG7ebYI00cwHSdqkt7tGk0/n8ISJLmt2
	q3BCvu21o0EDZOdiFgj11fXTqcL6xNetsc7fE8EsYr5p9ouY5PfPsqvFdKdHmoFTkyZDldQ1dRI
	uNn8NUTznhg5G2ylIQ0hDG1GcE8eVB8bfmh3+zmBs0x9UlC7sy494WvIdNbQWkZaTyUKD5in9rA
	A4rikNPLwKCILjMKuMEFicI3EOqIfknLx3C6De1NyiA8dE3z7QQ6p0gFxMPK/t3Vep5/17k+ZZg
	539XKkyOlhGLhWmMMYsmg6Yt4haPdX+dlTptvh3lCO3HuUl6ILZ8Ag/QPhfrQtZjdVYUH19gHxR
	aQTAUf7hb5RV7HWIbheHSJ/CfcjGTAhZb5TQJ9cRRtYUFpHniREbA
X-Received: by 2002:a05:6a00:158e:b0:823:6d3:85d0 with SMTP id d2e1a72fcca58-82341317d38mr3196385b3a.67.1769434824788;
        Mon, 26 Jan 2026 05:40:24 -0800 (PST)
X-Received: by 2002:a05:6a00:158e:b0:823:6d3:85d0 with SMTP id d2e1a72fcca58-82341317d38mr3196369b3a.67.1769434824326;
        Mon, 26 Jan 2026 05:40:24 -0800 (PST)
Received: from [192.168.29.125] ([49.43.234.121])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82318666c16sm9429622b3a.24.2026.01.26.05.40.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jan 2026 05:40:23 -0800 (PST)
Message-ID: <d98f4778-38c6-412f-9b96-8e258cef0afd@oss.qualcomm.com>
Date: Mon, 26 Jan 2026 19:10:18 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] interconnect: qcom: glymur: Add Mahua SoC support
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
References: <20260123-mahua_icc-v1-0-bc82cb087f1e@oss.qualcomm.com>
 <20260123-mahua_icc-v1-2-bc82cb087f1e@oss.qualcomm.com>
 <vpaz7jhnuagfl24dow3ktyhjtzktmhiiwh2rnflub3jbc3pgu2@2ydlmugmqgbt>
 <d160aa9b-d22d-4c12-ab4f-42b5dff375b5@oss.qualcomm.com>
 <k54tulgkio5at744qcuhqijgb6hb6kjcahloyiiu3ujeoqoir4@vu3cuu7p4wvw>
Content-Language: en-US
From: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
In-Reply-To: <k54tulgkio5at744qcuhqijgb6hb6kjcahloyiiu3ujeoqoir4@vu3cuu7p4wvw>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=bIEb4f+Z c=1 sm=1 tr=0 ts=69776ec9 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=y/Pne2EoOvGgihOE/QD3VA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EanYLttqG9bUWcn10CcA:9 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI2MDExNiBTYWx0ZWRfX71ZO8G6HJM2Y
 3HUqwMyhOduBsB04IuFIM/H3xZqvobccbq7Bp7YHQ4MKuIFnXy81xJI//Sm95PHytYq+nCXg5gy
 3ylss6yTRL9ke13ojwJmxgFSehj6ZU361Pf8wEed/dQH69zucpokmeh5GXZsx4gsNe1CenERR2Q
 nBtpJOhIsnGdU3EnVC1IwIRZhfip23ftiBcaSrQe9bJUrIpDYE2YOY/0MoKcrQl6UVHuqad9wdi
 3h9OplFZeDsAmeWaF7gRhVjT+jbbTKu5lrXYLrUPEze4qgjQTyESRdT2Cko2jlXk5lWkon3LgS3
 IiVevSYbjExq+H8Eztl8CvoMHVnV2yc1d01MTbv1/7LX8eyWz00/EhRs8twYcz1E+O5jleyWURq
 ZDaWsZr/Cu3P3wkFgLKvReq1V/I/JRKdkUW4NvB1wOlUn7gLUV+bpLxoW4ziQ/KBS98jtGzKxUz
 IAtOtJw/rl7vr0TvOlg==
X-Proofpoint-ORIG-GUID: NqZLeOSif8_iryI2NjQtvn6wgXUPCcPo
X-Proofpoint-GUID: NqZLeOSif8_iryI2NjQtvn6wgXUPCcPo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-26_03,2026-01-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 lowpriorityscore=0 malwarescore=0 priorityscore=1501
 clxscore=1015 spamscore=0 impostorscore=0 suspectscore=0 adultscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601260116
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259507-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[raviteja.laggyshetty@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 37846890D7
X-Rspamd-Action: no action



On 1/26/2026 7:04 PM, Dmitry Baryshkov wrote:
> On Mon, Jan 26, 2026 at 06:40:13PM +0530, Raviteja Laggyshetty wrote:
>> On 1/23/2026 11:28 PM, Dmitry Baryshkov wrote:
>>> On Fri, Jan 23, 2026 at 05:12:36PM +0000, Raviteja Laggyshetty wrote:
>>>> +static int glymur_qnoc_probe(struct platform_device *pdev)
>>>> +{
>>>> +	if (device_is_compatible(&pdev->dev, "qcom,mahua-mc-virt")) {
>>>> +		llcc_mc.channels = 8;
>>>> +		ebi.channels = 8;
>>>> +	} else if (device_is_compatible(&pdev->dev, "qcom,mahua-hscnoc")) {
>>>> +		qns_llcc.channels = 8;
>>>> +		chm_apps.channels = 4;
>>>> +		qnm_pcie_west.buswidth = 32;
>>>> +	} else if (device_is_compatible(&pdev->dev, "qcom,mahua-pcie-west-anoc")) {
>>>> +		qns_pcie_west_mem_noc.buswidth = 32;
>>>> +	}
>>>
>>> Right here, set the node entries to NULL.
>>
>> cnoc_cfg_nodes is declared as an array of const pointers, so the pointer
>> values cannot be reassigned after initialization. To change the addresses,
>> the const qualifier would need to be dropped. To preserve const, the 
>> entire array has been duplicated instead by dropping the PCIE_3A related
>> nodes.
> 
> Why? Just drop the const instead of creating unnecessary (almost)
> duplication.
> 
ok, Thanks for the suggestion Dmitry, will post the next revision by 
addressing the comments.

>>>
>>>> +
> 



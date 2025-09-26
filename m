Return-Path: <devicetree+bounces-221814-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A0ADBA31D0
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 11:20:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4E8403B898C
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 09:20:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78A19271475;
	Fri, 26 Sep 2025 09:20:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YszUB8Ko"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 144B0248F48
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 09:20:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758878442; cv=none; b=r/IJl1Bq9LHdYxjZaHA5kK16SMAHBr0FBCg3I5Mxv0euqP9ufo0nPWqPCe0VZ9ivB/0paLevo7FxMzifFz93Nki5Y9SUu0xg1j/BqcM8PZAiOLk0Ver9NBB6bKIbMcDPJp+8R5CYtkr/L1ujRJ7nxgSmV01lbp0BC4NFmzsTBUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758878442; c=relaxed/simple;
	bh=FFLhJlGbweJau3CWZze0Dpw9OjhVRBCsdhDY0ijmLSQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FbG/PAT1dzk2BcaT+hV/ksI3rYYMhCkudMkZlGglCRQoLvtg2LufbdKoLLAOpn6uvhFKbUVFZTi5HNr7QTFYF7evo1kd9glRMonrCxFZQWbYqlEzhc+b4jjzO6ogZG/GXWu64Tq8lXSL+Ck6uFGDBIlRd+84EisWjDNunSUvanM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YszUB8Ko; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58Q8w4EA012993
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 09:20:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lFu/WjwzIa456FPHcfJQDUYZ+72FnaVpv0Jr0vDGqFA=; b=YszUB8KoVynIXOrV
	KQtjRSDsqYGCYWYsCLIP1VTCczDIVIjLmuGO0A+Uud/X/3BHAvMg5mOtUFhod7fa
	BygBv7bFIp/xwgfZyhmr9PWTf/yMTx06rbUYQYkRlw73f2/BdPLRXg+H4x3Xscuj
	psax0GLS+N1ejvavBRDqeL5YcVC15bT1y6mDhxuUbS8vLlOPdRF2YbyZo39PzL9/
	hhZO+DnnQSfF46R+bsrN7/NLWCEgVsDagR+aVTFaXLq7VnZSRfAEAchEUw+YgcU8
	+rB5ZWj2MBvdOK+nwx7PCIaVZ204lLWaXEWKmkFs0rgcsgNJMYAVLp1x3GGuY6CS
	9jokiw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0q297a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 09:20:40 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-25d21fddb85so33303825ad.1
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 02:20:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758878439; x=1759483239;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lFu/WjwzIa456FPHcfJQDUYZ+72FnaVpv0Jr0vDGqFA=;
        b=g0dCyw6oDBcaxdXCWjh8aSrgdDxLc7Z17kk7WYyDz6I9Yk8OBvGCB1LVNntnoymDOa
         VFqV+RxYGB9KYcaL27GmiMIT1BqHszWJPOtJu+INRu3YJzIbnebOwjyxy1l0UFS4Lpxf
         8bEBO4eUo2hUDV5zj+U4AtFBOlygrZmajQ2Geh0lCdL1tWqKVTSiK0PSBbvAS7U5dcV5
         IwTFmWI3QjBjKNsdcu/yYl/1f/OmaEE7ESG9/bQJXDDbqxBUQk2lH+EaH4turI9YLlqJ
         7eeK3tKTjDdAyj2irDFXjnT90FqjSQfvtLRV0ET0ct0HpKqqpM9oPGgSgQkKM2W0QHlD
         qhvg==
X-Forwarded-Encrypted: i=1; AJvYcCWLBa6SP0H2pC+/LnJkKrIdP82jDNGdvRdPJgt8cB/EGTPZh3Ikz1JDalg81ZHsC2kAsEmwIq9BqmQC@vger.kernel.org
X-Gm-Message-State: AOJu0YwRL79XfdJvETSnvl2x4UjfvshO3NWYH/7/B1wx45lJcEJiMTTY
	pjfn4JKVBNpx4QTSS2iTDc86IxwFs4lAWQJkvVBcMNJteZuOGYkngKgiLOwg7dgtUqPoo0KfD4c
	tc8Yip4ToWly1GNvqsO9Ue3tzCAYyrHf+D6qSyD7WrNKhZbX70Eh/nD3WVhQjLdXy
X-Gm-Gg: ASbGncuwhNjHeDYZ7341PjQi4CkBZ4qd68NPqylbgQ4uUGyQTqL0iATodAF8wWXPh3f
	rEKv8DH2i3Wkd5zifQitW3uWwNerDtFtcdWrSyb/b+4tl6prShMfE0d0BYQrgYb8DDykowtqYcY
	ttEY1rNorZpxFqVK6gMcW22F+agDDeV51s13kRW/X4LqwNeVtc1V9o/PT3IU7Cm6qBgPNdLI3eN
	gK2YCSyNcVKIM3zY2ly1MH+JmbNj6bRqku1SGX08okCCJigq5QSZjwg1nqYM137b4FFpP2qxtIn
	junePi+FTtRKR0wMbwewguwVwrFFWvSAzKJEC22xAZancvlb+CXZVNZBxHB960gFN710
X-Received: by 2002:a17:903:986:b0:26c:9b12:2b6f with SMTP id d9443c01a7336-27ed49b85camr71575735ad.3.1758878439224;
        Fri, 26 Sep 2025 02:20:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF7rrW7nDK+DSsZ1+iAO+YYBObXr6q47Vhq5ZpJ+PYNdGMhbv2C4q/3UQ6WknVUYLqfgBU/xA==
X-Received: by 2002:a17:903:986:b0:26c:9b12:2b6f with SMTP id d9443c01a7336-27ed49b85camr71575355ad.3.1758878438738;
        Fri, 26 Sep 2025 02:20:38 -0700 (PDT)
Received: from [10.217.216.188] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed672aa0asm49116955ad.62.2025.09.26.02.20.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Sep 2025 02:20:38 -0700 (PDT)
Message-ID: <2e862560-c422-427e-bace-4199b86d3e6d@oss.qualcomm.com>
Date: Fri, 26 Sep 2025 14:50:32 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] clk: qcom: videocc-sm8750: Add video clock
 controller driver for SM8750
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
 <20250829-sm8750-videocc-v2-v2-3-4517a5300e41@oss.qualcomm.com>
 <503e1fde-39ea-4107-947b-18b705f2bc51@oss.qualcomm.com>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <503e1fde-39ea-4107-947b-18b705f2bc51@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: n7JcM8eRSLD3DqxXEcYo6LlSneJOiiAU
X-Proofpoint-GUID: n7JcM8eRSLD3DqxXEcYo6LlSneJOiiAU
X-Authority-Analysis: v=2.4 cv=aZhsXBot c=1 sm=1 tr=0 ts=68d65ae8 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=TyDm9B-wxu7uxzFpS6AA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfX6E3PQ1YFBQIF
 ZZkZRIlXwujgZlvYwV1APc/P7eSv+D8E/m9kK3Xcdy0k/4zWmdjX/jx0beT/EXSa/Ohr5Z8RyxS
 EW1WyTVbvrdk5hVuoSHm7A1YgN2HQcuNMl/MkbV39YHcbnfvlIVPUHIsHBGSnC682UHLy033lX1
 JxsluKmbn26CMYDqcXskHoZTcXrEQP4ymwSbRIqUjy6vGfRLd6kBqG/07EJRmNqH5B/o7Dux6BK
 LYEr1ZPw96vxdio5lxBOPgUQMna2VCkGcILECrG1hVXoFOr+S8fn2ps3dzaERvnrcoXVEIKCRrp
 uYmo9kNWZLlVCNFCA1Qx/QdQtWB7UA3izkpB0/GJIu8ZGfomYNFgOZIxUrX3rggoGJmyjAWdBE/
 /SDQr+zdDO0wgzJoJQjr6ekJhhhlfw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_02,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 suspectscore=0 malwarescore=0 adultscore=0
 clxscore=1015 impostorscore=0 bulkscore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171



On 9/12/2025 4:38 PM, Konrad Dybcio wrote:
> On 8/29/25 12:15 PM, Taniya Das wrote:
>> Add support for the video clock controller for video clients to be able
>> to request for videocc clocks on SM8750 platform.
>>
>> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
>> ---
> 
> [...]
> 
>> +static int video_cc_sm8750_probe(struct platform_device *pdev)
>> +{
>> +	struct regmap *regmap;
>> +	int ret;
>> +
>> +	ret = devm_pm_runtime_enable(&pdev->dev);
>> +	if (ret)
>> +		return ret;
>> +
>> +	ret = pm_runtime_resume_and_get(&pdev->dev);
>> +	if (ret)
>> +		return ret;
>> +
>> +	regmap = qcom_cc_map(pdev, &video_cc_sm8750_desc);
>> +	if (IS_ERR(regmap)) {
>> +		pm_runtime_put(&pdev->dev);
>> +		return PTR_ERR(regmap);
>> +	}
>> +
>> +	clk_taycan_elu_pll_configure(&video_cc_pll0, regmap, &video_cc_pll0_config);
>> +
>> +	/* Update DLY_ACCU_RED_SHIFTER_DONE to 0xF for mvs0, mvs0c */
>> +	regmap_update_bits(regmap, 0x8074, 0x1e00000, 0x1e00000);
> 
> regmap_update_bits(..., GENMASK(x, y) /* full field width */, 0xf)

Sure, Konrad, will update the change.

> 
> would be easier for the next person to check against docs in case this
> needs to ever change or be validated
>> +	regmap_update_bits(regmap, 0x8040, 0x1e00000, 0x1e00000);
>> +
>> +	regmap_update_bits(regmap, 0x9f24, BIT(0), BIT(0));
> 
> The register description mentions a ticket which I believe says this
> is not necessary in production hardware
> 

It is required on production hardware as well.

>> +
>> +	/*
>> +	 * Keep clocks always enabled:
>> +	 *	video_cc_ahb_clk
>> +	 *	video_cc_sleep_clk
>> +	 *	video_cc_xo_clk
>> +	 */
>> +	regmap_update_bits(regmap, 0x80a4, BIT(0), BIT(0));
>> +	regmap_update_bits(regmap, 0x80f8, BIT(0), BIT(0));
>> +	regmap_update_bits(regmap, 0x80d4, BIT(0), BIT(0));
> 
> Please use the new _desc infra
> 
> Konrad

Yes, will migrate to use the _desc infra.

-- 
Thanks,
Taniya Das



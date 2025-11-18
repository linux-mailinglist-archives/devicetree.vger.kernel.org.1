Return-Path: <devicetree+bounces-239726-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B04FC68C2A
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 11:17:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 8F2F14EE3DF
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 10:16:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D2DA33D6E3;
	Tue, 18 Nov 2025 10:15:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UjgurkKY";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JM35XhEN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9324433C53B
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 10:15:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763460948; cv=none; b=IYLGL5kb+sEVmIUUhdbexfD7w/PkMO0UZuUlXXco1Q39XrFo9WdvnalAq5eys3uXpJuA/n2+sfiZVvtLM3VR+rnZgrui1MHqu6Hrae1l8rtQM5DOUlP2olTKcdrBRXDyM6ezKHiZlVul0vajL07e7bxBicpGJpr4hOnTduhBOIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763460948; c=relaxed/simple;
	bh=c923FaPe8OSR9sNjvZZtRMePKz/r/WGb/uwdhb0aNn4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=G/OReYo9/PgaKp0+OtuwcLX4PxpjvCYx+OUl5/s4ePeZdOmlecmdejybJzwI4nqgtBwc1RKuQcwEio0hqocnenGF3LCSZ7CiGvcAlgwo+R6N3FPJgybUhUH9fCy+lMSLlHQzvAh5XHq3QuNx2FBoXW1sLzjGL9ep0j8rmTNTArU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UjgurkKY; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JM35XhEN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AI6g2xw623728
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 10:15:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Xdt1fJlBHJiF6sNH22KsZAxFYSV7wS4ZjQvnqORWHpA=; b=UjgurkKY7OjlI1XZ
	JT2QbRrUtHlag4HYupzSDHT5HYNKmHnMBOlz7Fn6AMbNdUvK5o44gy0q1kCpOE1l
	K4xMaYJvhy/ItHv8j5joEjxuswOsSMpMEbG7b9KJBt03/9PbBBDQjI/dCF9ADAlg
	k7WgO6kWTW8/7OwAStX93bPwQMZ5H59tStlqvAVrvLSPFIcjvQyoVqSLroYsSQr/
	Iccca/zSI4jZCk961dX1LUHFZuN0u2IQFgme6A7/WfgNQY/RBfPhkC9LR6bulb28
	YIoFBzgdtEdxx5V36kiRsMSwsiT6MQUQORGChUceDKAXD5HAIC1XD5qLKlBOaKyq
	/pJ30g==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4agahfa2sv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 10:15:42 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-297e1cf9aedso131660485ad.2
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 02:15:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763460942; x=1764065742; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Xdt1fJlBHJiF6sNH22KsZAxFYSV7wS4ZjQvnqORWHpA=;
        b=JM35XhENh3ds2+l79NC94AmhOjI3aA6fKPLe834sHQEaRcVDrww8UNWF9cueKO3y+V
         0rsvNVD5Cr0/BXykv8k5L6+PL1+j/sdTaFMeLq3Davil6yAUydpwEFIW/bDqQgrBNslm
         UuNAH79vsXrWiiUKVIk74+foJ50afolaFI6/gneu8I9PJ1C50z5fsc0DmB8lEwWUSbwz
         j1rDUv+EzRHS8Wab5uMlAEqcdtHh8kPcZYKarJ9BT4zppkGRh8KYYOjnFYMFzsKId1ie
         joLZhvocbZMbTjUi0zpUXdHfDTGnldwAbRxHJga5NeE3oApQy5oCZu8hQn7NkV0ts4J2
         LRsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763460942; x=1764065742;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Xdt1fJlBHJiF6sNH22KsZAxFYSV7wS4ZjQvnqORWHpA=;
        b=CMcyQFBapnz5u9GOiO10UGxWn2aERYqOBa4LwPDSq5gaFu1yMnQgf+EoBK3XRHj8Km
         Lpzj6DVDsVkLJcbZ9YbC7aMAUFynG78FTmpbgykkXhSo3h9OiU8PvzgE07Qj3hyOs6vT
         yuxhrZcC6PFoJJ22y0QfDFY1YLMwHVdO9fwfsAMHx7oYs9f1Giu12lmH6f/BgaBhvNow
         SUxryZMpeoICw5z5KrrhBVdq7YtFIWj3xKy2KyJdhKZFwDsRtnrXO9o1WPt131xRmgfR
         yY7UDb8yPVBy6cvWrHFqNGND2eq9YGlqQeEI8CMvN2sKnr+zg9DO1SOiGaruir0/uI9V
         dvaw==
X-Forwarded-Encrypted: i=1; AJvYcCVz+xGMoxQcFDZ15c2HkDp9p7aZ9krpQsdAvYBxo/oFAF4nmMuN5fXwmqwfMeNvh1XUYOoHBuLp+Oio@vger.kernel.org
X-Gm-Message-State: AOJu0YzfPRYotMTUYJ+5+jtWYRfCnIkz4YqAfdLXidr6IkUnKjyftzTy
	Upur/E3XQCLxh9gq6ZaPOPgaToGP+S9XDBq3pZ0fTX4kv9K99iG/0hOO07i16vMDvaoIXoX8atS
	mK2qRv2RO+uR2mjJ98uCq+r0laITSRj6rhkdVqEo3CigK8+qCNGOvm1aJ04mfIvQr
X-Gm-Gg: ASbGncsS6MOXpioup9pqDXZvSNIPKC0QmHyWTJA1Gugjh06ED7n+BOIh7OKKi2VyAWy
	dOYlTQ2L1PO1bYEyd8k8ObeAaRsqA6PjwP+N/WBrYpw2q2ndtOs2rBez/hZldgh5RN4ET23n07l
	9xc8qTtGU1WyIXNH4STzSVPG5WaBmKV8wDnIQmmfEqKXlOsehB6Yl1nN/vqOZ6VCVJDFpOGDtNt
	oM8z8PmSquc9Ur5NAcqEbqXQe3a/DN6tY70DihJq2xoLXs4nKoFs08G1iX35R7Rgn4znF/polGN
	09ildr+Gf1AfUXlThxEtUFGpjePry19Qd8WCiTJuZY/jFHVr1PpWS3PFxi9T7gJdvKlI6r11qNz
	5IXaY6BviGbBossWAp5suDzSLxQ==
X-Received: by 2002:a17:903:3503:b0:295:195:23b6 with SMTP id d9443c01a7336-2986a758e70mr174608565ad.55.1763460941903;
        Tue, 18 Nov 2025 02:15:41 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFTfcp3k2UslNU1yGdZvu5PH3mN8YLFFD8nj0ilfWjunS5RIxeZb7YRknx/hk5woyr2UzNREg==
X-Received: by 2002:a17:903:3503:b0:295:195:23b6 with SMTP id d9443c01a7336-2986a758e70mr174608205ad.55.1763460941430;
        Tue, 18 Nov 2025 02:15:41 -0800 (PST)
Received: from [10.218.33.29] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-345b0384abfsm962647a91.4.2025.11.18.02.15.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 02:15:41 -0800 (PST)
Message-ID: <0090f38c-b2c5-4f8e-8382-ea6fae29757e@oss.qualcomm.com>
Date: Tue, 18 Nov 2025 15:45:17 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/5] clk: qcom: ecpricc-qdu100: Add mem_enable_mask to
 the clock memory branch
To: Taniya Das <taniya.das@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
References: <20251118-sm8750-videocc-v2-v4-0-049882a70c9f@oss.qualcomm.com>
 <20251118-sm8750-videocc-v2-v4-2-049882a70c9f@oss.qualcomm.com>
Content-Language: en-US
From: Imran Shaik <imran.shaik@oss.qualcomm.com>
In-Reply-To: <20251118-sm8750-videocc-v2-v4-2-049882a70c9f@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE4MDA4MSBTYWx0ZWRfX1QNM1MeKgUCk
 v3Pvb9TCXpCfELSifdaadoNprTkOpqyK9KwOtHIUzjwgut6NkSp++D7csBIjEPUpMbwLKdIkrir
 MflIkPSJ4ZPlWhfgZYR3A6FclK5x453CYOtot8lKM8S/AM4f9cNHnx/IDitDNTkRAsMeVDbqsaj
 xQCgPaeJhRPTrkKY5IBqHsQaHiCLzB6jYzNyTaAnpwgXbray9XW2/FgDUgfgiCHQtzKD3k9AAzx
 8/1Irb497RUY0jBy9sr4Qx5Yc9sbf6ZjdsO7TQdG2n3FNLR+hJ7aez/3W600x2frLI6MsJ29Z4q
 LQ9KOXCrOmLLM3NCpeKaieY/nKD/hZd87KPUo8+APY1GeqYbS0Usvvb4wlN9552OxcW2U5pvLlm
 eORJ3u45y/GB2OqUbZ2TjRdZCW4bMg==
X-Authority-Analysis: v=2.4 cv=RpTI7SmK c=1 sm=1 tr=0 ts=691c474e cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=dIrJftJwEK3lONcwLLMA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: imXZyxjSTqy2EnDiOilYudZS6IUiLZTu
X-Proofpoint-GUID: imXZyxjSTqy2EnDiOilYudZS6IUiLZTu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 adultscore=0 bulkscore=0 suspectscore=0
 impostorscore=0 malwarescore=0 lowpriorityscore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511180081



On 11/18/2025 12:47 PM, Taniya Das wrote:
> The ECPRI clock controller’s mem_ops clocks used the mem_enable_ack_mask
> directly for both setting and polling.
> Add the newly introduced 'mem_enable_mask' to the memory control branch
> clocks of ECPRI clock controller to align to the new mem_ops handling.
> 
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> ---
>  drivers/clk/qcom/ecpricc-qdu1000.c | 30 ++++++++++++++++++++++++++++++
>  1 file changed, 30 insertions(+)
> 

Reviewed-by: Imran Shaik <imran.shaik@oss.qualcomm.com>

Thanks,
Imran


Return-Path: <devicetree+bounces-177711-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 055F3AB8B13
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 17:42:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D0F6D3BCE89
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 15:35:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 740022192FD;
	Thu, 15 May 2025 15:35:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iKyYfYrA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECD8F219A86
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 15:35:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747323316; cv=none; b=WcMaUU1wISFGKWxrHuTSW/bkBUtONO33wWuyg74IxLXpAQ3szgUdJYFEKml1DH+himkW4eHObl4/uCcqm3cW8gY0pdoo4NHYFJJFYdr3lvLRtwA4FyTTDbvl5AGua4M3010I/9mr2wA8CFhTSHm1BfJixEdTIe4BKPqgpR0/beY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747323316; c=relaxed/simple;
	bh=kfGaaBcF/LpH0NxWWC3HOK/nOecylao8k87Fg+vGGyY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Cs6QorwbZLQ0BgXUQkxcRAc1gRvcwptgzv6LypSxCL889vTKMZ5aHButdRMq4u4FFHI3Yu7q2axA8hs55atbvjLt/X6sQoR/ATjDIl+b7iZ2PJx2Op9J7SCMjaUqMGw/uxx++1u/DsbfkoCpxuunp/3r5DGivqbHNeXFh4bakuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iKyYfYrA; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54FEFEZf001801
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 15:35:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rkzw4ciboicJeZhZaEWOlIlR5gsZ0yhn2FRwPUQB6/Q=; b=iKyYfYrAhhVKhXlH
	0ie2Jwxsfttl0cU9duToLuEyfa4fsQ5utrlIZoOY7O6D7SSpd/rAT6tHip/pVmE1
	1/w4a9C/3ySPrRb/ylT9A8t+CjY92JJAxlxKYGkSNn7IcBadH32lVNr6q0csilhi
	SAPhGUBEgdA6pzyQFz27CdyAlNcZa7Epa6i+U6NR7Q8ukKKtWuil4YuKrei97AM2
	9Plu95Ab+1XJ6TOjuQVcKjHaHGu0yRyYm3kBQqotFiQUtoXVdeRVL/xmzFIGBXQM
	JpAdcy8vvq8Jr8Egc9Hx2+01w2q6dttz/DKrr99C9QxnTp5OiYQbkBYaDC4L4nML
	TA8dTw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46mbcrejkn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 15:35:13 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6f8aab0a94cso1352296d6.1
        for <devicetree@vger.kernel.org>; Thu, 15 May 2025 08:35:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747323313; x=1747928113;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rkzw4ciboicJeZhZaEWOlIlR5gsZ0yhn2FRwPUQB6/Q=;
        b=KUBIsUADaxMiehxe9ZNnoIDpwUSjGpbpTllY+E2cKwsUG+SqxPriAmKt/SFq04scon
         N2U2ZrLKqNRjbPczRgmTe8zfmjQNXnRSaEvwc8m+3ooTp2u0pbirhA5CFjI72OOVIB/h
         d1eOZFeHjghAE9yip65sgkJw6oKdQv1ruopvxb1DIRCGMFR0sNYLdViXI09UfAB/nOcY
         zUIrKTKkbqQU3dg+OYLwMxb+pP9MrZh23HNiPxQ5UjlnPCCQm0KGLH2S3YzBOwYGbghM
         BkFbsoFJtGYWKcx+lokRA+WTYJh28FLd3JAEA1V0n1FOpPu0eFcxUlJsgLULfcCm85zY
         R5aw==
X-Forwarded-Encrypted: i=1; AJvYcCVEF2qwBua3WKCmvV/461I61uv3bFmp+P6YhqhOWoRoMdsyqwQfF3nbWRvBoGs2eyxgcK0o36CGCCvm@vger.kernel.org
X-Gm-Message-State: AOJu0YykV1259X/iYcsymUM+3r/CPB/1DrYFCAJkaivT6WMo4NoTAgcH
	aetvl6XrHc6Ptwhd7LGHd/DmirfZoSLSqRZXKJjiC6WYMoYSoCJ1FtmhJDivHq2nxReGvAZ+pBv
	jEERGCKQBOosnHYp8JPBIshBcaWKRSLOJlLKbZnptqMfnnvksySvg9BIxIX3n
X-Gm-Gg: ASbGnctJ5tIz5lGkpkMPc9FJUItddaZbCvt6hof2T6xLD6/RZM4GLfKPdEBlJj7uAVn
	8GIQCV3FDtaGgXA7HFzMQoVNHM4Du2wK86NGbodmtQ5a4wbta3CKX3qQW7dqcc6CV6hMMiTqb5L
	CY3AH/eYdvm8/f7Wmuze3ic7jPOOAU6/B/7p1V1Xiit4lCFutMnoT+jyDriyLkqJo+SmV5yiSsH
	eHMt2UT2BzvyL5CfVgElkA4HbsFX5dWxgJ4OtIFuONPpYUb5SzibClwQDpXVKOVEKPLrd/l+keY
	kD9ONb7kL942pGVJf7b1QUU+frsH9UgCcar2FLI/Fk1VlS0ECBn0/8wbaHpCEeT4RA==
X-Received: by 2002:a05:620a:260c:b0:7c7:5384:fa53 with SMTP id af79cd13be357-7cd287e57c4mr484441885a.6.1747323312968;
        Thu, 15 May 2025 08:35:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEO0nTwZv8sYoSfNAmuJqERfG93omVD06XD7BfB9gDj2RWpLvTBvCuoS4cTPigbW+p4ywQfCA==
X-Received: by 2002:a05:620a:260c:b0:7c7:5384:fa53 with SMTP id af79cd13be357-7cd287e57c4mr484439985a.6.1747323312255;
        Thu, 15 May 2025 08:35:12 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6005a6e637dsm6880a12.43.2025.05.15.08.35.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 May 2025 08:35:11 -0700 (PDT)
Message-ID: <d98231be-3805-41ab-bcbc-5f6b6cfdac5b@oss.qualcomm.com>
Date: Thu, 15 May 2025 17:35:09 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 16/18] arm64: dts: qcom: sm8450: Additionally manage
 MXC power domain in camcc
To: Jagadeesh Kona <quic_jkona@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Taniya Das <quic_tdas@quicinc.com>,
        Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
References: <20250515-videocc-pll-multi-pd-voting-v4-0-571c63297d01@quicinc.com>
 <20250515-videocc-pll-multi-pd-voting-v4-16-571c63297d01@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250515-videocc-pll-multi-pd-voting-v4-16-571c63297d01@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: Oz1HCO4jmicAkevptHjXS3yyHqtClSuJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE1MDE1NCBTYWx0ZWRfXzPXD6ZW+L/tz
 11z2LdcEHxUMHbF0p13dVMwX5wRp3S3b1N0CvJOiYee+sQAF3LWuPqAAWbMFuUzlOH6O/8Gfj20
 osSEiu/7FSoW9VGCjgmBTOf5JEleB4+Vl+5AdeUEw8xkHbZ3G3fZ2DdVk4M833GqjFcrMLD46qT
 G0NXhweQ1LZpUm8sotLK68Z5P3TSLtvg92Xd6cBc6cCnXQ6lySuo5WCKx0WanVoKoICcOmGbAkF
 b+UxHesNJ89Arser/87vC50ZgxMA/UVHRLTNWX8GnXcvXSc+9KpPVBh+i32NFdpcBphHoAEcezA
 oW7q53jnUXuM7doPJQl8w3V43G2dqgG+okqcWwDsqMmRjyytwjDLhqVx54WoYXOrZ9//LMIyJhg
 zdpyDLb66UGvX2CLwFRz4YwsoZOdsdlSPFO+tne2JHQerZES10IilKg92EroXFXWLQgj7517
X-Authority-Analysis: v=2.4 cv=K7UiHzWI c=1 sm=1 tr=0 ts=682609b1 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=9_CkSsT5FSWxdIVEpLUA:9 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: Oz1HCO4jmicAkevptHjXS3yyHqtClSuJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-15_06,2025-05-15_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 mlxscore=0 suspectscore=0 malwarescore=0
 phishscore=0 mlxlogscore=635 clxscore=1015 bulkscore=0 impostorscore=0
 lowpriorityscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505150154

On 5/14/25 9:09 PM, Jagadeesh Kona wrote:
> Camcc requires both MMCX and MXC rails to be powered ON to configure
> the camera PLLs on SM8450 platform. Hence add MXC power domain to
> camcc node on SM8450.
> 
> Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


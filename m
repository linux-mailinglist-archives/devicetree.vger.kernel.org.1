Return-Path: <devicetree+bounces-212163-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 79D32B41E90
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 14:15:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2F0005445BF
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 12:15:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B77C42DE70B;
	Wed,  3 Sep 2025 12:14:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AqcM/3TH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377962FD7D3
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 12:14:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756901666; cv=none; b=UBGA/J8e0/wBegNliv4PKIQdfvgJT5TXJzROyIWRZogZfgoqhLw8LNKzM0g6V9qbYJ2mJ0QCbByEaLQB9qAr+8cBa426Nx2ppEqZ9osTv8eibZYvBQuTri/mYJMPRzhUxCNICuAk6QpZ4cN9+IHSYi1be1Wk1BDu+oSflxJM1oI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756901666; c=relaxed/simple;
	bh=rhcG8/VPnpbFKNJE/RJEZ6fxiaJwxSbJPaO6Ku2gAGE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hPm6cRlN3RVcRiGEBX9dPQLL/jiydFAdKYvd4YYSnOtwt5ga+ZQR/fu9jF8pIybw74JwVWPub0jo+jC9WTpd/jHNljbDdJnKJLaQmWTtX8LwhfvHPFijJHpF78zSm9lK6LpSIIaTkz+se0/MGSp/W9J/+jkK0P9tJLSQtcJq/8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AqcM/3TH; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 583BEwvc000792
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 12:14:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mC6An3ACH4+NSeazLfe9JFoE+xEhWTvXPq1zxofMuEo=; b=AqcM/3THpaYT+ams
	5CYDdDcz8nDnksCpBVAPELLmtnVfkHuuv16SkmyGQ+IuK/C/iPq8tqJ8rYSiq2/j
	KoyyfhYDHrq0yE1a0QkOpaWmKxINXvoNmZpq+sscYDaACcHYyxGUNbpK64wkyW0A
	OjEsYBIcOzaoNJM+tFKQ6QeKyIw3DF/OwA7pH/Mi2Ef44gsg/AAI18P4tVvyushr
	xVBvrX8x+GgYv6XPoicQW7Iz7y2VXz+p+GNx7ZsDmepCvu0kGjNofa07S0JBefSa
	/pSFppoi3l0sQWv2OPo2sIqRfHlL+ktsGBtSsendSRjHcO3KUYnZc5HoV1dKU62h
	gQIWVA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ush33esu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 12:14:24 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b10991e9c3so11569161cf.0
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 05:14:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756901663; x=1757506463;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mC6An3ACH4+NSeazLfe9JFoE+xEhWTvXPq1zxofMuEo=;
        b=v+0koDnNlf1oMR3uoHPBMLozpKpJPBs0PJp59t4g5UYa6KM036OGxcWgJBSQJjAaO8
         rS/iE63qUsO69STWoJQwhANQPOFEZLIMZu3zgilRblmy1R2WE7qMewiUB6dzrecCtvDe
         ayvPhB9nOT+hES6vepUBeRq4JeYaMX0R0UaSwiBpeQ6Q0lDGPkAR/aHJZ1shm2Su/BoL
         9T1rGcpo9qgxf61lZmde7639EFKePE7KrdQ/ZSuVJYiAI2U9YPuR7qAl1UnJ+BC5sh7o
         L/oGvmQWpctnsYSX1rJblhHwA3i2Ey9qOhiFD3BZdERX55EXycB5FkfqqKF4meRIxd84
         AF7g==
X-Forwarded-Encrypted: i=1; AJvYcCWJK+qW2GzjAs3MIv3VJLfATXFMl6tajnm6rFRUjhb6MU1BSRuSUpNO61G8rAlIizpOfO12ysOf5UpT@vger.kernel.org
X-Gm-Message-State: AOJu0YyhFx/pZ5047AAwRZRq3IxuPvqkSJLeewL8d2JeF6LLOBN9aGV5
	1LPg++PwIWVZ7qX9HlQ+1ronNQZURKj6MHkd9GD4ONFRtB/WE4dtjl4BUS4PYg3iP5TnazQFdxJ
	aUKlzS0s8MkF0MNImJqadsjVkIJMM3OyOUSSvTdmd4XUV3+J23l9dqRxcKto649Zj
X-Gm-Gg: ASbGnctRiyX48dB+R08zkJTzghP3IdUku6U16Pxwu9B8ANwpHMWt/vK2HQjHTEva1LM
	ZFsjhlhAg/L2VXeOfRpvUz55TTGdzDm/PQ82zXWtIhxgfbsEughkOScLqZ31w96S5eGJO3C4UVe
	aCnU69xI/fuUAejymq1FHyp01KTzeSuqn3W1MAOqVeSPiOo9UZI4KvmpPQV8plzQ5iPQ1llUuXS
	sySlaalNmMBAK+/EWAR7OcLqO1d2Vt8T41oBgKwOdfvj9pEWqsL/KJL4ubsBWuQiReU5qANrXuv
	oESn+ZeVw7WS+jDVdhiChi4ivd8gcB2GHQD0s6EXSOaWixaVYvOEVuVmImzS/4eIDEdNr8Or8ak
	85JM9bjbXoX2oPtWN02ElSQ==
X-Received: by 2002:a05:622a:314:b0:4b2:9c61:4925 with SMTP id d75a77b69052e-4b313f6f611mr137985581cf.11.1756901663150;
        Wed, 03 Sep 2025 05:14:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFbGyRaZCILk5AbzkX5S7+FiK0ezTAsGQ11EcJB+LA2KwdbsAkKq1MEodJHRCgys5k9RkRULQ==
X-Received: by 2002:a05:622a:314:b0:4b2:9c61:4925 with SMTP id d75a77b69052e-4b313f6f611mr137985251cf.11.1756901662589;
        Wed, 03 Sep 2025 05:14:22 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b046e6c630fsm97561366b.55.2025.09.03.05.14.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Sep 2025 05:14:22 -0700 (PDT)
Message-ID: <b4b6678b-46dd-4f57-9c26-ff0e4108bf79@oss.qualcomm.com>
Date: Wed, 3 Sep 2025 14:14:19 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] arm64: dts: qcom: lemans-evk: Add sound card
To: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@oss.qualcomm.com
References: <20250822131902.1848802-1-mohammad.rafi.shaik@oss.qualcomm.com>
 <20250822131902.1848802-3-mohammad.rafi.shaik@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250822131902.1848802-3-mohammad.rafi.shaik@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAzMiBTYWx0ZWRfX+xvZv1TWydcF
 R0P30G3WA1mJDoNGqiUT+3iDPI4B03i34KOrbGRPPkL58SzTiMwCrcc0ObSbuTDHThf7fq3qgc8
 D+BmoklA0+Kgi2/TdXnpx3EwgeGMSo/4jkAghHoc2/q4+2+yn2W7siIqW3WIZheUcA6cPx81wx2
 bb87VxsFuy6+bHChJmiHZTQAcIBidsAhzJCX5gNDS7/jx1L9D7gHd9Uq1fjuJPwZfOUZQeFUsri
 QuosRR49JPC7/MFxdvt14Xe9If5IyrW12PeIDFFDXF90o8matJlwCq8lTLGA6sapLPSYL7vXlv9
 F5qEwwvzyHQUTlBiKUvtyLWU5DVnJgcNBBgyydZMR2hsb/TaTWVoN2oSq/sexAQ9sLYFaLdeAIg
 VC2S0PXC
X-Proofpoint-ORIG-GUID: RvKM4CqJysIIiPkNG1HIzRpir2Fs9T_n
X-Proofpoint-GUID: RvKM4CqJysIIiPkNG1HIzRpir2Fs9T_n
X-Authority-Analysis: v=2.4 cv=M9NNKzws c=1 sm=1 tr=0 ts=68b83120 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=3ui42MrppmT3PW2QgFQA:9
 a=QEXdDO2ut3YA:10 a=zgiPjhLxNE0A:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_06,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 spamscore=0 priorityscore=1501 malwarescore=0
 clxscore=1015 suspectscore=0 phishscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300032

On 8/22/25 3:19 PM, Mohammad Rafi Shaik wrote:
> Add the sound card node with tested playback over max98357a
> I2S speakers amplifier and I2S mic.
> 
> Introduce HS (High-Speed) MI2S pin control support.
> The I2S max98357a speaker amplifier is connected via HS0 and I2S
> microphones utilize the HS2 interface.
> 
> Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


Return-Path: <devicetree+bounces-221420-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AEB55B9F6D8
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 15:08:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B26E07B3365
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 13:07:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 059D321578D;
	Thu, 25 Sep 2025 13:08:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QhnVLMEj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 931DA2101AE
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 13:08:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758805724; cv=none; b=Gktfx4oCEpJlCJPa2Fp5Ybw8nna6ECpqktxEp/8izp6yeF6lcusykNjnuFLUJ6jiR/g1/V4qcHAwbwijUDTo+TDWR4Yy1gINj0MyCj2txPCRczX16B5bIghL+HmxtySodqL+IMQb3fYM5zDOi+pngeVVhs0bwH3r+HsGwBn3t6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758805724; c=relaxed/simple;
	bh=KDeJ7UReWAmRldjQ7plvlREwzkrTIgyqUflJhG+8TPo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Wr+Lg+kkwO/HCTYaraW/8t/+3VOUJFeMpq2qVgiyJgCyJYkQwG58mE3CfHJo3aPEYhE4MBCciMc3z724irmKtbYAOeI22XTBoKfTZkvbKn41dJt3maCDaCvWrD8jNVRZOTcPc1b71SUk7F97uRwcQD/PaP9zBvhzQNpqQbN1etY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QhnVLMEj; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P9Rsco019910
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 13:08:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Rlt4FP4WTHK5aPecfPHBUxCireAQ8qfIAYNt4n6uaXI=; b=QhnVLMEj730YXNNU
	QD0BGBv9Jd4ClZSKyqUAE0GE/PSTYT6o8udfIDjefq2Ir5GrvPOpgbYx/fe+0Cbm
	3tn9twmCGoVz0KddvaGC4l12D/yYPFe5wKY6jz/1l8e0Y/Os7h3EgopizRttheSj
	rcLpkaD6ac3byY/Mexa8DSTkghzm4PSGdU3cFHzQZ4NRs1l5S7WF4V805dHpOL3I
	T1gItqM9TI3qMoNeEuZyB7Rs1HaUC2oOQRl21ktNlmD2TzoLwv5XeCYIukdtuB36
	LOkLK91yAHyr3VODHkRgk03/x2452cdzcH4mbVppXZpO7fth6fR+/Mt7ku2MHDXe
	lXCgbw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bjpe1d2v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 13:08:42 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-78f40a59135so2466386d6.2
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:08:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758805721; x=1759410521;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Rlt4FP4WTHK5aPecfPHBUxCireAQ8qfIAYNt4n6uaXI=;
        b=IF7DmPl79RoDPzsMOObVwQ3aroGbKYKYR5Iiho+dW4PNLKNKrWaax7iReeMNlzJgoN
         Q7H6x03pB74WHmupe9iKbRHVkgxssW3jul4xdTd9XWWyVfv+3c91zL2a9TCTCYftfSeD
         0cYcPTC9Ip9tafYvD1y5IQdlMyxlHR2X6m9nFeaPSs4SusL+bSNnMPOO30lBKCAj5V/r
         E/giAWh6TrJTi9I3TCdM/EMQPuzWdSBwFtC1k8f9psgvvMCdhn5KM4maSL91No64pIT7
         Vrve/chjBLanIjqweMj94tzs7ISmxF3X6ULKl6VonDvdSt/EI73GJCOeNH9eIRYifqzc
         o/rQ==
X-Gm-Message-State: AOJu0YxlN8UZqS+1HjIptFNp3B8YvCTVtSvyDBJZ6ZmDqpogO77l6IeH
	URSZ8rCE8Xs5E97RfQjoI0K6uORMdbuv6Blh8PyQLZVM68uyYaf8SKrJ0D6pBgzniaSlwiYoBsK
	xGzameVYjF8Y1WIDoAOBiZGVvxO4aOeRxCL8cx+Jfk+KE3HLp9KZnakDRFyPAMc87jYmpjx3H
X-Gm-Gg: ASbGncvKW7owABc2PIGk+a2qpxLaiQSxGLMxPb0R+QZj2DeNawgfx8gOAd1ESf8SZSm
	PUpsDkOuYe1qhrgH7lCpX5XxbK4gndW6pNVXjnQqN/eY+cko44jdcRK7Pl7Bwl9occ0ZR0zjII2
	GldH/g4Mb+1aqP5+jaCE/Auv9CwAKu7XT8QL6RLKNsnTBMwQZ6aWpy/gPDzHqZGJC++cHF7bciM
	XBMokUIc0wGHrYdcv58O5QcL73uF9yT+m7133Ye49YHvd9A6ak97QePN0KBHZmu+aUHOjz8X0HO
	IDhFPouogEQasEBQcRhT612DPba3pdvHx+la5f7IxQmCxEY+01IhQjSZ8lZ205VQ81hD/iHU6H2
	eyFq1Hgh9T8wr55ifx9V3lw==
X-Received: by 2002:ad4:5aab:0:b0:736:261c:d636 with SMTP id 6a1803df08f44-7fc0fc0a022mr34203696d6.0.1758805721076;
        Thu, 25 Sep 2025 06:08:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF23rJvQekA7RTfXmajprdeBmZk81rKj69AFP64AtV7O4pUbDPGh0bvBL5rIK4McKied+UPXQ==
X-Received: by 2002:ad4:5aab:0:b0:736:261c:d636 with SMTP id 6a1803df08f44-7fc0fc0a022mr34203356d6.0.1758805720632;
        Thu, 25 Sep 2025 06:08:40 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-634a3b05779sm1211642a12.49.2025.09.25.06.08.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 06:08:39 -0700 (PDT)
Message-ID: <b3151086-206e-4520-9a52-04591478de0a@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 15:08:37 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] arm64: dts: qcom: r0q: add touchscreen support
To: =?UTF-8?Q?Eric_Gon=C3=A7alves?= <ghatto404@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250920014637.38175-1-ghatto404@gmail.com>
 <20250920014637.38175-3-ghatto404@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250920014637.38175-3-ghatto404@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: 8RBzhj-yEGripDg1zDJhzPVxlmhrtnmx
X-Authority-Analysis: v=2.4 cv=Pc//hjhd c=1 sm=1 tr=0 ts=68d53eda cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=pGLkceISAAAA:8 a=4mJ_hZI3aotk7FlZVO4A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: 8RBzhj-yEGripDg1zDJhzPVxlmhrtnmx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDAyMCBTYWx0ZWRfX0helamVw5L5B
 Pj8Cz77bCfXxVkr0YTMuv4/8mPg3anP5NycZ604q4TN8k8Qb4sRdF/DacgcBVEJx8DQb7Z6MGH6
 fYAIabWws1OpnN5PoqUkL67opWp9LvE4iF1NSEH8b+5AZSz78AR23EUovB8RE043+gz7hhzgTWD
 AXMxpZLajdEO6FljveAwhrHi4uUxDslmrYyrWF2ox84mlI+90+1gc070opry1ECKSBFqJWKPNbX
 aJYQPzydek84Jhil1wFTEWTzAcceb2id6QBvCROBOQmQp1+JcU+shf1LFwvdWyMlL3ztmZbdjYU
 N0ikHe6ycNlJodx4A1Jr9v2c9jYtE0tjwFAxBD9beKPNO1yUF0tXIsRl47obK6TcsAnaYym4MTg
 3Bctze6p
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-25_01,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 malwarescore=0 impostorscore=0
 spamscore=0 suspectscore=0 clxscore=1015 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509230020

On 9/20/25 3:46 AM, Eric Gonçalves wrote:
> Enable the ST-Microelectronics FTS2BA61Y touchscreen. This patch
> depends on "Input: add support for the STM FTS2BA61Y touchscreen".
> 
> The device has an issue where SPI 8 (the bus which the touchscreen is
> connected to) is not working properly right now, so
> spi-gpio is used instead.
> 
> Signed-off-by: Eric Gonçalves <ghatto404@gmail.com>
> ---

[...]

>  &tlmm {
>  	gpio-reserved-ranges = <36 4>; /* SPI (Unused) */
> +
> +	spi_clk_tsp_active: spi_clk_tsp_active {
> +		mux {
> +			pins = "gpio30";
> +			function = "gpio";
> +		};
> +		config {
> +			pins = "gpio30";
> +			drive-strength = <6>;
> +			bias-disable;
> +		};
> +	};

Drop mux/config, put all the properties right under the pin definition

> +
> +	spi_clk_tsp_sleep: spi_clk_tsp_sleep {

Underscores are forbidden in node names, use dashes instead

Konrad


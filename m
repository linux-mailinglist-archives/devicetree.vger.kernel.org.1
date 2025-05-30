Return-Path: <devicetree+bounces-181944-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 875D0AC97F6
	for <lists+devicetree@lfdr.de>; Sat, 31 May 2025 01:04:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2668D7A59EF
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 23:03:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCBA028C5DA;
	Fri, 30 May 2025 23:04:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="V0BnDPAQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29712219313
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 23:04:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748646271; cv=none; b=OVCijFL0dMmNOjHEHlAI2DMmKdtgjvEsZOwDVgUL/QKZuuLcw8N944Z9hiyXSQxBonhxgqJGjOKV3KX6ym5q/OMmOvha3OPn1YFeTXG317riDyXdWRlxF4gMyhg9LbkLwCVPFt18W6vvD3QpDJB4TSLCCiUuXw5phBGQu67H2Ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748646271; c=relaxed/simple;
	bh=byiZoh49SLANJUmSAfCqkOwCaNc9lAE28TTBexKKF/c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=h+lOpsw52gfxWPXUoI3GLM4AQjiQ9Jt18Xj3yQQJ3RcoO8zujsTwB+cFxeG+OODf4IgsPMT/DF5+Co01+1dJz7xylv02o9qWkmAQ6ngsr+4PLwbAcKzv9egoT/8sCOPlD4vjIn6ECSM1lWmGgY3CptKwDd5kAh05+X3nplkQ/A0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=V0BnDPAQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54UL95nT006984
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 23:04:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dkCBS/+sevFscPkQYrCdD9qA2ujLMqx9Mjn5PoGA0mk=; b=V0BnDPAQ1cZA5vMx
	wrO+uwAWz8KFlXnstE/uufBrXfFTgi9pMy5ti7STYQH8q8NfAlgSoJywzRQ6RcaA
	6L4TJWa4Uz403dM51XNkHzP/9ei2iIwgXqq+mOW85fAgEex2hgHJ8sNILvHTUBtx
	QMmPQvrIfUhawDrBFMPX2VL8X4HSZYJ6jM24pYyOVnxGGOnTewosFWMUTitVV0hm
	KmSkZ/UPg4Xm8SkaQ6cc3gS7/f80g+dpbgrj3rRQ2grar1cbok/T3eBRMT7e4Nov
	M6dcZIyQItB+TI3kB95iWFi5BpBHlRQOo4mvsDGr9r4aZtKEZ+qjdWdfclyqhQkp
	lNnSrA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u3fqjuq4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 23:04:27 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4a43b81f624so3397641cf.1
        for <devicetree@vger.kernel.org>; Fri, 30 May 2025 16:04:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748646267; x=1749251067;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dkCBS/+sevFscPkQYrCdD9qA2ujLMqx9Mjn5PoGA0mk=;
        b=xJcPRkAh5yIiGZtvwBXcydDsVm3FD17ikGgyblYWNyq7uybdOSGBRG309yX3AOgSvG
         I/KTsUf5zCqdvSjDY4UTIfFR82f2CA5F0pFDV60Lc3OBFd9lory2boaZBOsrfMXL6Ik+
         +pRx+brgfHbmFhUc2rN5mMRXNidIaZhachweYPbRoAN5qIGQmDUsTIBgoFHE6NHklYg2
         mmYkHParHXPDQMras1aggPVlLyp3mIgtIUbQLNs/2LI3zROAoZcv0ivet0uoCC1/53B3
         OYSSJxJ+hxW3Y/c14ZtGkpe4UYhSIU1ydUrsV/MVDcFyTnIJvpEYhTUPo9pIbUkVQZ3u
         0kYA==
X-Forwarded-Encrypted: i=1; AJvYcCXfrWvh8bhJ+TRqzw+le6vrfQ08CDAKDtaXQNKlU/kE7mUN3gbHXtdYRIZBmo9hoDgiwbyx944RAkro@vger.kernel.org
X-Gm-Message-State: AOJu0YxALQPOH4tCB0elQm83P6XQVY8XEwOeqlEn79UufGghxJ+pGFs5
	X1b+mycKFdfwQqmrDo0DCnf9WIEnPM3bwGJpGA8wBmIcZ0JJMx+4G8fvDyxybPxXS4vhbW8am8Q
	EcKKWu7y8UXnLb4k2/ms3U9P1KvyqLJ8PDlW3g4gf4jcqtKm981GDQp/BJSI4icOd
X-Gm-Gg: ASbGncv4Tzq+HAsgzHlpEVV6jS17Fu9YRtC5H8UVXR5l0eV1fQ7FaNXtIjfp3nNHF+Q
	+uYcuHcaVKA7vLRHhXiD2PcstqL+bEBg66x/KT32is4v6k05YUJMD6mtJd4w3gQiQ+l1l3Yt2/Y
	+0tySlJXLZZ+LVS/RAc0vN3/5WG7CuDltdz38G9FEDwa0wQCfDHTWMQ4GDWuCtDhA2yBRVDEi+A
	0zSqSaNwzsfu+SYiG2TWLGlJWI72q3jMQD+tfeD4nunQvPctJ4QyzBlEn5XCEDfpTFfVGsxzWoR
	rqM2X0Jlugg+5eX896ciCIvdVZipRsNzPm7ZBLZFUqX6PYaS9za+t3uMtOU0F8kv+Q==
X-Received: by 2002:ac8:5786:0:b0:4a4:3cad:6378 with SMTP id d75a77b69052e-4a442fd5b4dmr24294031cf.4.1748646266909;
        Fri, 30 May 2025 16:04:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEwEI1tzi2R7YfDu7oYyeYqxX/g+u3B+J1JeZ+9bSeOHb3HGbzLToYdbggmXX+xwNflLNapVg==
X-Received: by 2002:ac8:5786:0:b0:4a4:3cad:6378 with SMTP id d75a77b69052e-4a442fd5b4dmr24293841cf.4.1748646266428;
        Fri, 30 May 2025 16:04:26 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ada5d7ff075sm399104366b.37.2025.05.30.16.04.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 May 2025 16:04:25 -0700 (PDT)
Message-ID: <ee3caba9-deff-462e-8117-f375882aaccf@oss.qualcomm.com>
Date: Sat, 31 May 2025 01:04:23 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/5] clk: qcom: gcc-ipq5018: fix GE PHY reset
To: george.moussalem@outlook.com, Andrew Lunn <andrew@lunn.ch>,
        Heiner Kallweit <hkallweit1@gmail.com>,
        Russell King
 <linux@armlinux.org.uk>,
        "David S. Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org
References: <20250528-ipq5018-ge-phy-v2-0-dd063674c71c@outlook.com>
 <20250528-ipq5018-ge-phy-v2-1-dd063674c71c@outlook.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250528-ipq5018-ge-phy-v2-1-dd063674c71c@outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: X1VWcVayG4YQX4TrEwKQsXRfq3cOX1_p
X-Proofpoint-ORIG-GUID: X1VWcVayG4YQX4TrEwKQsXRfq3cOX1_p
X-Authority-Analysis: v=2.4 cv=X8FSKHTe c=1 sm=1 tr=0 ts=683a397b cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=qC_FGOx9AAAA:8 a=UqCG9HQmAAAA:8
 a=EUspDBNiAAAA:8 a=rZqdB0JiAKPJAkIg25gA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22 a=fsdK_YakeE02zTmptMdW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTMwMDIwNiBTYWx0ZWRfX1BFHqmL35Xki
 kSG67xcaWBc/KRtHBTip5GLKNclJHIvXrm8mAYyAcp3ZVALKXWroB/W4wjUe5hhu5wnfr9qNH3U
 32ANgu+MA2BojiAExQ8Ra8MToV5Gnc5IRbU4O8OJS9tkC7hhqQGmWagGvUIWUHvnGYbG8CjCwSa
 4WN2CMs501z7D769xabcDn9eFXpucweP9yQHxtCpFkiZXSBY2Ky7vMmnFiMiBsmYr9AKJsk7pDM
 4TE1Yr9J/Lr672/EN76x/Q45vx+/tLUjYRWAvluHCJI+ejKP7Fu5/tUUNwvXSNkADw4Uf6pJl+F
 4ONmR4s9H9kVHwroVVOGTarX5GOL1vvqDFzjW10tsXmGKBvWigBVaXum+EZBxNvSzxyTxXpTEhd
 nM9S3SHDOnw3PlhiMClBEP2ODp58conWyOHdxgWXWmJ+lHcPsO/3Ky/Bri5MZ0lH1HE162i7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-30_10,2025-05-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 phishscore=0 bulkscore=0 mlxlogscore=999
 mlxscore=0 clxscore=1015 priorityscore=1501 spamscore=0 adultscore=0
 malwarescore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505300206

On 5/28/25 4:45 PM, George Moussalem via B4 Relay wrote:
> From: George Moussalem <george.moussalem@outlook.com>
> 
> The MISC reset is supposed to trigger a resets across the MDC, DSP, and
> RX & TX clocks of the IPQ5018 internal GE PHY. So let's set the bitmask
> of the reset definition accordingly in the GCC as per the downstream
> driver.
> 
> Link: https://git.codelinaro.org/clo/qsdk/oss/kernel/linux-ipq-5.4/-/commit/00743c3e82fa87cba4460e7a2ba32f473a9ce932
> 
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---
>  drivers/clk/qcom/gcc-ipq5018.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/qcom/gcc-ipq5018.c b/drivers/clk/qcom/gcc-ipq5018.c
> index 70f5dcb96700f55da1fb19fc893d22350a7e63bf..02d6f08f389f24eccc961b9a4271288c6b635bbc 100644
> --- a/drivers/clk/qcom/gcc-ipq5018.c
> +++ b/drivers/clk/qcom/gcc-ipq5018.c
> @@ -3660,7 +3660,7 @@ static const struct qcom_reset_map gcc_ipq5018_resets[] = {
>  	[GCC_WCSS_AXI_S_ARES] = { 0x59008, 6 },
>  	[GCC_WCSS_Q6_BCR] = { 0x18004, 0 },
>  	[GCC_WCSSAON_RESET] = { 0x59010, 0},
> -	[GCC_GEPHY_MISC_ARES] = { 0x56004, 0 },
> +	[GCC_GEPHY_MISC_ARES] = { 0x56004, .bitmask = 0xf },

in case you send a v3:

0xf -> GENMASK(3, 0)

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


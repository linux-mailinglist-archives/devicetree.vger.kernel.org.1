Return-Path: <devicetree+bounces-263318-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8FYZIu/LhWlWGgQAu9opvQ
	(envelope-from <devicetree+bounces-263318-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 12:09:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DE03DFD086
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 12:09:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9AAC3308181C
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 11:06:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76C13394487;
	Fri,  6 Feb 2026 11:06:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mUMZn0Vy";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IFib44Nj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 427AB395D83
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 11:06:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770375961; cv=none; b=OzVSVI/weXqG6hc7i/qPelZ3ZZCQbNBeF8zJx0aKjo/+CZgidL0ZqIvWQG0wq2i+G5WzMOShj2SeKxg1+yZ1B6JGaNGoZw08gTRjVoKwDjfQBhQe5Rk4bggDdFtbvKDOAcdhD/cTjwycF9TX3I5GLEYxbPo1mTl4tfs/eSFFVuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770375961; c=relaxed/simple;
	bh=7R4zTEEdQzGgyT/zVEhgwf9YAo/boA8abZHYuDeNFnM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=N56jqtenEWbKbygG7O8j4nVRMlxt044B+XxGsUJb2caZmtTe/lHB3z4ZkXt9YkAEVoyGilM2Hdkh0owtV9xUNfGM0oouOJ08BIApWCsaAP8CkxJmXPZfUydeQSCOGScrrBEjzEhbpO427cKh3lLPlqlh/YJRWH49M53i6V8tIhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mUMZn0Vy; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IFib44Nj; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6168h6ns2059224
	for <devicetree@vger.kernel.org>; Fri, 6 Feb 2026 11:06:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oWVmqkEIRJCF9EiXXPwLEO8NcZO5e7mdTCzSb5IW0lE=; b=mUMZn0Vy+L4ySABC
	BjiHGJLxpMOCnqLK6SvaPTEoWAjC0iTIxUbyQJ4qxOHd2VpF+7iE5Bh36P/NORsb
	AizaO+LgYfdG7+xE65trbu8XPAdaY2B6iQhpg2QQTGPDX7tOI4pRbNnPRc0dpgqh
	6E5/RCfPm3jReqeMu88zm6ik3sLOz7M1Jt/fppM5WnF7YlxV4uYxjFZyUW9jxUV6
	V5isSBpl/tx3dBFyK/WOcvKO1siMUUELOPK6FBabsGGzW4knCkltPMDjIzwrx5A3
	/4lQsLgFsd2iuJW2uDmj0k9NzXVUp+j3RBTzK1LYqekaqqS316P7QADphgNE/JRp
	5VTcxw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c4x8bkeur-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 11:06:00 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c710279d57so68323685a.3
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 03:06:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770375959; x=1770980759; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oWVmqkEIRJCF9EiXXPwLEO8NcZO5e7mdTCzSb5IW0lE=;
        b=IFib44Nj34+TCivgsCuIH8MDD7Ui2Uijlz+9IursC2m+0qGgrXWdUvem5XBYBDRI78
         vmaHUVf8DDwWH3Qz2FKgbStPkHGigYZ6VhP5uTNjg+T8Es+7lKjXRENRRrCGytkfXQnp
         XVul1lAvdayTVvQze5dYx/R8EDAUe74742UAA9Hpvw3/JHSKFTmnF6FrDqPiT75SPO5H
         CqzPjt80wgrHFerOnjpCwdy+DrEkJOZY4yj6ELdiMT3OZmkXeidvfwgVn4x6Nozmm1jz
         /cw2VqpshQmPn2f7p/AxzACTCkJ8GwiUIHz8M5xNS6Yu9/W3KZJJgluXMZc/cO8/chzW
         ANVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770375959; x=1770980759;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oWVmqkEIRJCF9EiXXPwLEO8NcZO5e7mdTCzSb5IW0lE=;
        b=aj5GReHumO97kaP0AbRd1ot4I/NhvSrD4HzDf9kvzCSAap3tiydIOwWekykPE0Myz0
         s25/hqyo+xgXgV8BHYiJC3gSIzKY1KDTdub1UW1OVUcu5Kjn8KGfWSOSRBMTXLkd8GdO
         kWmLCaw5FEtR5/YI+uDVcksQjqoemhJaXsZ51I4pY+st6vvGkDpNRO6iz2OqWFUrSu23
         NVhtU+Y/TifBTO8wki7cmzQEAh5toQZ2vX5Pj91wzo9tOz3sy/5bCfPDoO4AC4OPgvUi
         hULg3p+LSUkvVkW2qUDFgLCO2hajEJujvghSbRdkPRqiehQOUUEt3K0KgLCwrhRhTYCT
         20Og==
X-Forwarded-Encrypted: i=1; AJvYcCUOU0dXIDY/BSTOhWeYsfTOulrz5mRqBlxd/TsQVwsCQkQttZnA1Ua6gjfS9SrC0ko+g647ZomlO3V7@vger.kernel.org
X-Gm-Message-State: AOJu0YwzztXrTniu/6oXAZBuEpib/xNpRoS3ZxlYQYFXGPlCVIXvCofV
	wYghx0hz9V5pLZNUd0qaZlsy2s581UPWGB5XtSFCqGcFZ/8WDt1NlggJNOvXhWP6lMWxW8Upaih
	ClsYrCGEq60/c0z1Q/y7dWN/L7bk4C/i1cfe1byEqExzALwfryvTZTBDCpHckMczN
X-Gm-Gg: AZuq6aK3JihjJE+RgJZBPfW2yD5J5EwMS0UgkhgpAo0ILETpB321BhCbRJ06uyJRlMY
	7d0MaJYjPjE6zEVlG92z16XjVa8DXtZj3P6cHz23sa6xdYRSuJ9q1lqPsOcIW7tOMv+fF5DGizL
	p5Y+OzaKaIzO203DhDhdVo/645udQxC7n4c8lI9riqdrdq/+w8EycH9n5cRdIB2UXPxPuEMdqPQ
	o+E7wDY63pKKOVyiQnGNs9FggekNYQl/ZMgqZITaFDb5ZjFuej17b8+g8Jaefj8Qom0eVgIY6cd
	CDv/Sgh3vGtudsIn4Z6mZ8bu++NfpzzKyzL//Nq0rbkc4bmqyj2C5Roi47fVqe2R4hesbyBlJv6
	pOO2BpLE7r57rU/6DmPtAfNORwvzyQhyEpa18FXVfCjGx2GyWQMJO+4SUzZ9Ml8BYp8c=
X-Received: by 2002:a05:620a:192a:b0:8c7:1aea:53b7 with SMTP id af79cd13be357-8caf15efa2fmr214356285a.9.1770375959364;
        Fri, 06 Feb 2026 03:05:59 -0800 (PST)
X-Received: by 2002:a05:620a:192a:b0:8c7:1aea:53b7 with SMTP id af79cd13be357-8caf15efa2fmr214353385a.9.1770375958876;
        Fri, 06 Feb 2026 03:05:58 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8edae79540sm71251166b.69.2026.02.06.03.05.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Feb 2026 03:05:58 -0800 (PST)
Message-ID: <bb95f1e4-dcc0-4940-a1c3-a5e7eb658b01@oss.qualcomm.com>
Date: Fri, 6 Feb 2026 12:05:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: lemans-evk: Enable GPIO expander3
 interrupt for Lemans EVK
To: Swati Agarwal <swati.agarwal@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260206104642.1038381-1-swati.agarwal@oss.qualcomm.com>
 <20260206104642.1038381-2-swati.agarwal@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260206104642.1038381-2-swati.agarwal@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=GaoaXAXL c=1 sm=1 tr=0 ts=6985cb18 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=K1JTwh0sNvVZL_e2-CkA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: q7rT793LXJHYIRQ8ykGw1oCMJXP4Z2zg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA2MDA3NiBTYWx0ZWRfX68cZCTi6mdVT
 cmtJG2q22Bm7M/0QQ4R2d91y5sKmQjydSZcbzAxG89ciok2Ln4xfEiXoLy/fv4CYDXsf9NZYvMl
 +3R/TGrX8aM6q3Gy+kAy7ILIb2MBUhIa6Mll54MP52GW9HTOqsHb9ysrW9OLbzrD4P5pq9F22D2
 aoOR/VJk8SMagYdmVmmBuDXt3E9FDcuyPP9HDHrrQI4BjdAu5cUT0EbXA0W4CtjYDY8Ek31jFyj
 t2RF2GRwKZVE2qb2x0nPWYnopVpFLb9rsoFGR01Red+ZyVeH1O5lu/xcQsy59HrjYMwrGcA7Fcx
 v4db/eJqV181r0eAbYZTqyYpEwMPoYY7NkA/25yks349B4TLmpXYxw4J7qEQ0Y9q4M/4Byh6487
 Oty2udTCEkmqTPGFsaGyA/yeVjiqEON2m1aRp7Fn58TDktItWK7xcNoi+TYj1LuaxOoxY4sIa95
 neIpl6kl2Ri6xitMEiQ==
X-Proofpoint-GUID: q7rT793LXJHYIRQ8ykGw1oCMJXP4Z2zg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-06_03,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 clxscore=1015 impostorscore=0 phishscore=0
 priorityscore=1501 suspectscore=0 malwarescore=0 bulkscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602060076
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.50:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263318-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: DE03DFD086
X-Rspamd-Action: no action

On 2/6/26 11:46 AM, Swati Agarwal wrote:
> Enable PCA9538 expander3 as interrupt controller on Lemans EVK and
> configures the corresponding TLMM pins via pinctrl to operate as GPIO
> inputs with internal pull-ups.
> 
> Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/lemans-evk.dts | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
> index a549f7fe53a1..473cc2a81670 100644
> --- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
> +++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
> @@ -649,6 +649,12 @@ expander3: gpio@3b {
>  		reg = <0x3b>;
>  		#gpio-cells = <2>;
>  		gpio-controller;
> +		#interrupt-cells = <2>;
> +		interrupt-controller;
> +		interrupt-parent = <&tlmm>;
> +		interrupts = <39 IRQ_TYPE_LEVEL_LOW>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&expander3_int>;

property-n
property-names

in this order, please

Could you wire up the interrupts from other expanders while at it?

>  	};
>  
>  	eeprom@50 {
> @@ -894,6 +900,13 @@ ethernet0_mdio: ethernet0-mdio-pins {
>  		};
>  	};
>  
> +	expander3_int: expander3-int-state {
> +		pins = "gpio39";
> +		function = "gpio";
> +		input-enable;

input-enable is not allowed for TLMM GPIOs, please make sure to run "make dtbs_check"
(or at least make [...] CHECK_DTBS=1 qcom/lemans-evk.dtb) before submitting

Konrad


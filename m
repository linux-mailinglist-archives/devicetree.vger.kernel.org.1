Return-Path: <devicetree+bounces-247358-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EBB7ACC74EA
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 12:21:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 19563319979C
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 11:13:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA3BA328B7F;
	Wed, 17 Dec 2025 11:11:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iO+SCrIk";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WqicmCcj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 323F02F12BE
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 11:11:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765969888; cv=none; b=FsRJzFt76iy5i63ZXdQDqsXpHJDD2XbktHHpB6Vp/NgFvzdPxTS5x7ZAuU4b9kLKeAY3iDyUiAIVlfiA7GiYeIAnnmBxcyf0dh8BMBoIIhhvY6emePAsldGenGZOAinhYLcyqZKDcsaVBpnAS1XAlpgVEpsgzDlc94OMjN1ZJ5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765969888; c=relaxed/simple;
	bh=ergh9u6kWgO/mTys9bcCWBlslIaNm8hdrIoFJjRnhlc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=i7oimzGcgy46iXimhoa/L8vyS+K7owpKj1qcuYHu4GKHweGwpT+9EbjSSM1Ak7o9r36+yDQIuPVxCGHvs14NusGfQYTCZ6IpV9Z7FBbOWIMbm4LsfF/KbGrMiQ0HD7DQPzb/lzIHncnbxkyTd92Of0ww2UvZwVtxN3Ck4iILQaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iO+SCrIk; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WqicmCcj; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BHAKoeS1215333
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 11:11:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	itiInzBaK55N6ZZlr29dsQdZo7Hwd7KSZMXU4Gc1OQo=; b=iO+SCrIkm2650rmp
	K79nFED79p9IcqzHLbuPERWU7KAW+rcd8avtmPp+ZYMQO8HKE9C3C2VWhz+t4Vow
	fPf0EowQT/dWym9h4AsbXpT8tNunaJEtwQ5bw/l/3nL6d1/MZ5dj5r1pQYAhyRjG
	TlIZRL1lkwXPEVjorHPzhxF5q2h7iATzMEYWj1f1nskIXMsv730mqcZ3Gvvpc1f2
	UWIPIq9BOGgEmlo+GHAbolkJWQOUVvR5Y2DBWBzAFx/XVUGhbFe8MUb/SnrMC6ck
	lVL/aNLbz3PTwGboj8S1L+Og117vf5gEHFTD9KyxIGbUMJr8e8ReJyMtWAcO6rIG
	rjjjIg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3b7g316w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 11:11:25 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4edaa289e0dso21620401cf.3
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 03:11:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765969885; x=1766574685; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=itiInzBaK55N6ZZlr29dsQdZo7Hwd7KSZMXU4Gc1OQo=;
        b=WqicmCcj45WhCEw4IGgu6yKyrp1sbPzeZHweBXZNw9xmgome698IliC9h3CXTPcbhP
         Z6Rx2mgmi2PpwyB8aldNr7wFtdUNDHp6TmobXd3NHfMfH6KQK0CERI53/gqPtOlWiFxN
         G+F/E/xqJwAxKDXNa4RoNVXth8VvHHCVioQbTVVDyqmKreJuiFWOLwvEFUIUvJ5q6o+6
         4k1oD3CXpYl6qZIa/SN9ynf0dq7FNBZjZTae0Tu8d1OeaIXOaHjelhwzAlfVtXDzB8iX
         2vM88I1JwszYP7fOwXOVGJQXdwW1cu9tnqeLEZj9HhIm17F3UHGe1pNVRtDTR0HKO0+P
         uwZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765969885; x=1766574685;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=itiInzBaK55N6ZZlr29dsQdZo7Hwd7KSZMXU4Gc1OQo=;
        b=tMN/Z3mdw7r9jQe6mRJkwLKe0VWKQL0Blr9nUt9w5PplONyH7R/HirjFSOYE2fth6K
         5WQcriNyXUA08c4yjb9BDC/6wlC+z1cSS4wrOWXy7hKdQzd/mB7uAxpOUxjMTNrwiK0o
         A9Ydt7LZP84DUeyrwpb5b6i16pFydJZKQPKTjp/u32fMNMZajNjAPiq0wTKx7xgzspjt
         JtEsUodCHo2cvOY5rEBHpDqMMX7SCiXOex5UvqlOXuBHWBabU7JA8cHZGjzlHkQ9zf17
         vo2QgqABBaD7T+xNMIhMjy6nHnE5m3L6v2wS5UnULWt3OCAntrYmMuKi3W4DWIkRNbQB
         Bw0Q==
X-Forwarded-Encrypted: i=1; AJvYcCW93g+Rsgb01twHHrqwdkYk/il4RBHOb60gUzPWue20ViM9eTFnVK6pMotfJgupMLbJj5vioh0SQMXt@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3gssroBWZOZPqmnXKYVvSGOW+LbVTpzomqVTVdzutGfsW6u7M
	3lFeQfhxXqZHvW8rginPTnxKvNV18LbxiorML/56LPUqBBR/JA5cYC5IqMIcz98uDFI9Ixk72ja
	bSn7y3Pw5AwTAPFNIuYO0rYOazSMY6IjGjT1tWDjgNbpD4eUpoUsW1OmNhtnOljiK
X-Gm-Gg: AY/fxX4fok2cUGNYfTF7qT/cLGMqL6ED5pPD0EjKY6e6eG6ao+SJp7HfO3t21z+vbET
	oWaFlCuS8mSNJORsP/kbBM74g+ty7IV0acuUjgwiD95FcH7jutf2+C7VVcqzp4OZBDJqq3JzSQJ
	rR2cWGfg/tl4y5Lp1/036mvudPs36m5y/1EXvufCJxCZtfrazkaIJ2nhCUFSaCTskwDs8nCZKdY
	IaRQzFKQ19uV804Go8u7I+ZjcMul566DbjS1HPMVZrh7Ut8e5ypk3nRKG3g8wzbaL+BStLQbcH9
	fJ9EtPC/Y27+zyurMDqwnM9w26gfRy2RlD8byNKV21USgVr62ZqtNBV+tcA6i8+GWa3VFtwGNdS
	QurJWXGufSZnrgl+bW3aHm+Yus1JgO/PctTcwlP3syeHabB3oSKMRRWJdOiX4lwfWcQ==
X-Received: by 2002:ac8:7d13:0:b0:4f1:be94:a2a8 with SMTP id d75a77b69052e-4f1d016f9e8mr165586271cf.0.1765969885094;
        Wed, 17 Dec 2025 03:11:25 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGANgAGwmcQeGxDEWxHbJk1CaSStn7esq29jB7ObUBAbR1GdgbKWFiIunom+ahrITA+ghFFAA==
X-Received: by 2002:ac8:7d13:0:b0:4f1:be94:a2a8 with SMTP id d75a77b69052e-4f1d016f9e8mr165586061cf.0.1765969884723;
        Wed, 17 Dec 2025 03:11:24 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b3f4880dcsm2164191a12.0.2025.12.17.03.11.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Dec 2025 03:11:24 -0800 (PST)
Message-ID: <65d717fd-d4c4-4ee1-8d9d-bf1f38531403@oss.qualcomm.com>
Date: Wed, 17 Dec 2025 12:11:22 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sdm845-db845c: Use introduced
 platform wide cam_mclk0_default
To: david@ixit.cz, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org
References: <20251213-sdm845-mclk-v1-0-197bc947d4c6@ixit.cz>
 <20251213-sdm845-mclk-v1-2-197bc947d4c6@ixit.cz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251213-sdm845-mclk-v1-2-197bc947d4c6@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 4-U6ue57nglH4ODlBZzJiXE860nGBs1-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDA4OSBTYWx0ZWRfX/KTzWbLSgkkr
 sv0NWI6T/82IxxNaAY3fjqoRYpZEYTA6k0Ro2rpfsqnRYBgDtF9EGW1mNvp3+hYnLTp35R5r6NT
 Tv2QPfCH1MtAXnHmvlAiOZkC1Vkql95c1L1ICLWdbGf0/jgwln/C5M/tV2XL7f8UrjlmZfn2FX9
 Zi3HlasCiSx3SZBVBM6za4PX/cMXgKphBXEYyS1fPQA6hYC51PhXV9eR4bpyjOWSf07UL9IwHNU
 BJiHGt46sY6xK9EafuJWPw7Jf3q/gBN0csN+PWVxmneFoxy6jHkiwc3EW292wlt5bkoipvOBlzH
 n+9CwOVSrXnBl3Ec7OjNKx2SM+DusnNS1lgNw52JAw1QJEjeLi6bOUXUHudErHh+3IF1s3+qMZs
 SOJ5feUpz0BiVuvlYIFWcjonvvsJcA==
X-Proofpoint-GUID: 4-U6ue57nglH4ODlBZzJiXE860nGBs1-
X-Authority-Analysis: v=2.4 cv=PbLyRyhd c=1 sm=1 tr=0 ts=69428fdd cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=auVkX2GABfkwCdpXNZ8A:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_01,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 spamscore=0 suspectscore=0 bulkscore=0
 malwarescore=0 clxscore=1015 adultscore=0 lowpriorityscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512170089

On 12/13/25 1:00 PM, David Heidelberg via B4 Relay wrote:
> From: David Heidelberg <david@ixit.cz>
> 
> All Snapdragon 845 platform has same controls GPIOs.
> 
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-db845c-navigation-mezzanine.dtso | 2 +-
>  arch/arm64/boot/dts/qcom/sdm845-db845c.dts                       | 8 --------
>  2 files changed, 1 insertion(+), 9 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-db845c-navigation-mezzanine.dtso b/arch/arm64/boot/dts/qcom/sdm845-db845c-navigation-mezzanine.dtso
> index dbe1911d8e470..f6c2c98970d76 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-db845c-navigation-mezzanine.dtso
> +++ b/arch/arm64/boot/dts/qcom/sdm845-db845c-navigation-mezzanine.dtso
> @@ -40,7 +40,7 @@ camera@10 {
>  		/* CAM0_RST_N */
>  		reset-gpios = <&tlmm 9 GPIO_ACTIVE_LOW>;
>  		pinctrl-names = "default";
> -		pinctrl-0 = <&cam0_default>;
> +		pinctrl-0 = <&cam0_default &cam_mclk0_default>;
>  
>  		clocks = <&clock_camcc CAM_CC_MCLK0_CLK>;
>  		clock-names = "xvclk";
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
> index ce23f87e0316b..981d19c20fa1f 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
> +++ b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
> @@ -877,14 +877,6 @@ rst-pins {
>  			drive-strength = <16>;
>  			bias-disable;
>  		};
> -
> -		mclk0-pins {
> -			pins = "gpio13";
> -			function = "cam_mclk";
> -
> -			drive-strength = <16>;
> -			bias-disable;
> -		};

Please also remove the mclk3 below

Konrad

>  	};
>  
>  	cam3_default: cam3-default-state {
> 


Return-Path: <devicetree+bounces-266885-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +LgnOyUxmGkRCgMAu9opvQ
	(envelope-from <devicetree+bounces-266885-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 11:02:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C1CC166985
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 11:02:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0161D305E35E
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 10:00:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1AF53376A0;
	Fri, 20 Feb 2026 10:00:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="j9+1vcW9";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="S67XPS8I"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D50C3370FF
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 10:00:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771581655; cv=none; b=otDiLVci0wFqx2x1FtzeexaAPXG2SkL8/CncnW/1tAnm25e08z6G2ugnEhGEO5fCwzW2a2cQ7hIAxXlWX2BxBDR2Cr712efxa5Ca483b3mc96buXiRgBcxKlJ9TP4rN5V2nVfGcgVMOccyzErEkvGmoB1EhLlKXwiEksKnHWQ10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771581655; c=relaxed/simple;
	bh=ALv+Y4MazO7kBQC/n25Bvu/WdhV9xJoS4dScH4XjcXI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=c+y4awA2coUE45EKDqOIENv7JcQdRwLP2dWioOt9XbEKLuzHYADmW3PoRUxfPJHOTA2g0p5NSJkl4h0vGlfVh5CSA1X3CY6tdmANDYeimR4iKEbtQFls6tPrI7B1JEcW93UKtsuLCle4xwXZxlPtkVvrdfk8kDJxpiRgXmU8bAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=j9+1vcW9; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=S67XPS8I; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61K5S8JP3337651
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 10:00:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ddo+U4gF3xTQh78RUVFL3FgkhoVPcyhxFLNelU0/ITw=; b=j9+1vcW9GTqa1ay/
	BXhTEz6glwDILfEnCfWUGItTE1+SXCH8rLdVzkirf713jCD35xCTM5xG1od6XcjY
	QOP6grijJG2smmA0QmKzlARJDTRjNKAwPpzUjqKoyqW3ChiDFizLjCNt65hlgrKG
	6XRJnQaO7UeYK679pTA9/qrIbIbP+gIxoiRyyxP7zvxLF387ia0Vvdanv0FufmMo
	WkIi3d1HgYroHZdXpfGHL6jLYy8whGtwQFUZ9TxxoFAbMo23GcxDfY/KChUjYNCU
	7ytuSLny5E/Umy2N2ieBusd5+saPSWeFOzBgTnsqP8Hjb/fPVw0Ji6tdYK2KM9q2
	Sul2cw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cedp6h77f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 10:00:50 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb50fb0abdso209093185a.1
        for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 02:00:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771581648; x=1772186448; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ddo+U4gF3xTQh78RUVFL3FgkhoVPcyhxFLNelU0/ITw=;
        b=S67XPS8I104hm+O+CmKQ6nhxIYHmOQ+/yZ35aNLvx9Q4KeW2L8f4wpf02xzhtb0nkr
         36zAYNcXXSq2SMS/HRvBA2RulCct/dFaDZeTCc7h1NudJ6f2ia1eTuE+5FgrN6MMwrtC
         csyTfYp8F48FMUKiDNxT53NQ7zUgdzp7zhUoqWwGf0aRAP/FVOgOplBFaODA5ebFCOKi
         prLvUnChxiJxXTFATLNjtqUnnciok5jRV8x8FAmSwB4jGnET31g0YG18rbbp7lUNOJ9J
         BJHsTzv5V9G/6MF9A+V/lxALIVVRPR3WEdmsoeWA97/j6diJ2sws8INjPpQh28RODHp7
         ZU9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771581648; x=1772186448;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ddo+U4gF3xTQh78RUVFL3FgkhoVPcyhxFLNelU0/ITw=;
        b=n3bTuZVmyNuKb/3DRKx6/W7i4MUBXEwasnu8JKpiwuS+dG/K/YRXw7yhuTm+KB76JS
         1aTVgspfPIR37NTQy/LfRon5laJwDNpLGl8j50mwgVvrHr/GKFhlhyLTwg9KEOJ6B7B2
         Lxt9hOqdind3hRScZq+PV7JSlW7gFirFuGqp5phM5iYStZHxtCAZLQmBN3rsq/i1TCF9
         IjYit+i8r5NLv/MxIqTxB88yRKjihmsDfy9Mpe1RRj0jCgaGUQaLLGHWOsE/WPFd7mlY
         Ek7Dx27UEoC7qWKRDkcQIcx5w3H9kTvP49FR6iXRPVAGqJeS9U4ojkRxoQ8RAuP47u8L
         zXHQ==
X-Forwarded-Encrypted: i=1; AJvYcCULzg9MoiNGhvMb21WMqSZFgx2nonyp12vTkIPNn1mDN4YMSSx0wSeUCy7WgJvL2NL1CfxeQcQZr/76@vger.kernel.org
X-Gm-Message-State: AOJu0YznOu8DBJdIxsdq7uDS74xAs4rDwGBo14uv90kmkgAWjaTi3K0f
	d7DaqdrQtBAZ+sKJqwTHW04Hbp4q+Ft1KGSo23zOKVOriWO697UuvaVhTpG9Zyrz+5DgpNq6e7g
	p/NNOut5h7UPSWQOhmQnC6BoE1G3E8V+kY0p0tnxUjyrE0XTquOm3Nys6wtZLtO8i
X-Gm-Gg: AZuq6aLAJpsEmBNnm6gAPlpNIX8pE1kGQUPoeDIzLw7FBwVtAe/UT89lWet7q41vknj
	Vn1L9+htXgn8wK8+761wEBOuSahoEKZKH1WZxdoX54MoYYmA53nQhjdyQOg4Y8sDHsVDGFjmH73
	tEsR0U7YhoN8yrKB9HS5nX/BHtEaYzcHhppS6Dz/4mja4REshCD7sZsVYHnlnpq7fw5lLcf4CW1
	9Dqi2CwOMrkFO/V0Htw00AjpJo1jWj/j7eDN+n+K2UWnACIrNnuwYKSMlcFOOwGp5yBzo81q3ef
	Gd28a1sbhwvJUUDZ+4xmeoJj/0DzJ5HIrs5biN6sZoXM7IxTlGfd3zUVe+9FD4bT12EYrGlXnUa
	+HQaXKaMhgBGtvyvjyFIB8thHSZkNWJ7OuLr6wGwYNjlKLqj7bOK0oisdXAyVb48IUGhPt38tNd
	khMws=
X-Received: by 2002:a05:620a:4809:b0:8cb:1c69:b7e9 with SMTP id af79cd13be357-8cb40869db3mr2446730485a.5.1771581647692;
        Fri, 20 Feb 2026 02:00:47 -0800 (PST)
X-Received: by 2002:a05:620a:4809:b0:8cb:1c69:b7e9 with SMTP id af79cd13be357-8cb40869db3mr2446721985a.5.1771581647140;
        Fri, 20 Feb 2026 02:00:47 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8fc735e579sm667828666b.9.2026.02.20.02.00.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Feb 2026 02:00:46 -0800 (PST)
Message-ID: <85ce1f2c-f5cf-4e97-9611-4aed03f69cd7@oss.qualcomm.com>
Date: Fri, 20 Feb 2026 11:00:41 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/5] arm64: dts: qcom: sm7225-fairphone-fp4: Add
 battery temperature node
To: Luca Weiss <luca.weiss@fairphone.com>,
        Jonathan Cameron
 <jic23@kernel.org>,
        David Lechner <dlechner@baylibre.com>,
        =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
        Andy Shevchenko <andy@kernel.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Laxman Dewangan <ldewangan@nvidia.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Hans de Goede <hansg@kernel.org>, Jens Reidel <adrian@mainlining.org>,
        Casey Connolly <casey.connolly@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20260220-bat-temp-adc-v2-0-fe34ed4ea851@fairphone.com>
 <20260220-bat-temp-adc-v2-5-fe34ed4ea851@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260220-bat-temp-adc-v2-5-fe34ed4ea851@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIwMDA4NiBTYWx0ZWRfX9Pc4hTREpN/W
 Pn1+GYC1a+Kqui1Ad+IRrMKQCDyXK/7vFt2VEns4Fw6fpZvn2og33esDIjlbM+UNLiz0z+hnByv
 Cfe7743Y74gR1NFQ6KUbNpXxr7NBM1cObrnnfxuUFRwNQhtHlHye1cKYb+hkskKtUSKL4ljFZc8
 +PGYyho0V9FiekMFRXwG10Q5OMU+xWXR/Pnd5vfMtxglbP82BQ3JFmELAY7beTuUoar07ardFZm
 rRSPgokdGGkBhA36PAjXH/2QYU8udOqAlN2h7ZzWxsm1JPRRSP/QVv5uFM34MIDI8LtGnEwkKCq
 oWD/1qjHaBmehh/YG3y+pFgM7FLeh8yLV9jK3jf2qwCdoG3KZJa5VQsMnB3XdYrjF2mTTcGv8dw
 xASvBj0WHwTVUpTfFXGCwWLpaYF3IkwwVAUya2UwgZc68s0Bfr97MrC5gPRXqYqi50sIQWs/tYh
 1RUiEo0psiQJjVSIrBw==
X-Proofpoint-ORIG-GUID: QizeYwBpww19JBy6WKQtVkggCiYbOPcz
X-Authority-Analysis: v=2.4 cv=Vuouwu2n c=1 sm=1 tr=0 ts=699830d2 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=6H0WHjuAAAAA:8 a=8l1bqfnc6EbWCU14WoQA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-GUID: QizeYwBpww19JBy6WKQtVkggCiYbOPcz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-20_01,2026-02-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 adultscore=0 bulkscore=0 impostorscore=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602200086
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266885-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,fairphone.com:email,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:dkim];
	RSPAMD_URIBL_FAIL(0.00)[fairphone.com:query timed out];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 8C1CC166985
X-Rspamd-Action: no action

On 2/20/26 10:19 AM, Luca Weiss wrote:
> Add a generic-adc-thermal node to convert the voltage read by the
> battery temperature ADC into degree Celsius using the provided lookup
> table.
> 
> This will later be used as input for the fuel gauge node (QGauge on the
> PM7250B).
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts | 83 +++++++++++++++++++++++
>  1 file changed, 83 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts b/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
> index b697051a0aaa..7857003099a6 100644
> --- a/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
> +++ b/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
> @@ -108,6 +108,89 @@ rear_cam_sensor: thermal-sensor-rear-cam {
>  		io-channel-names = "sensor-channel";
>  	};
>  
> +	bat_therm_sensor: thermal-sensor-bat-therm {

nit: this should be a little higher

> +		compatible = "generic-adc-thermal";
> +		#thermal-sensor-cells = <0>;
> +		#io-channel-cells = <0>;
> +		io-channels = <&pm7250b_adc ADC5_BAT_THERM_30K_PU>;
> +		io-channel-names = "sensor-channel";
> +		/*
> +		 * Voltage to temperature table for 10kΩ (B=3435K) NTC with a
> +		 * 1.875V reference and 30kΩ pull-up.
> +		 */

I think this looks good. Is this data going to be correct for all/most
devices (i.e. is there a single battery sku)?

Konrad


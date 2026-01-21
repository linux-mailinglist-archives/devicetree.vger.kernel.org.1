Return-Path: <devicetree+bounces-257905-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QG1XGXu+cGkRZgAAu9opvQ
	(envelope-from <devicetree+bounces-257905-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 12:54:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B13256516
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 12:54:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 4F6895A3B27
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 11:50:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C5A240B6C4;
	Wed, 21 Jan 2026 11:50:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ADq7dq0I";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BUEu7RYd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44A2C3EFD2F
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 11:50:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768996235; cv=none; b=CMxp1sKuqQc+n8AUgIG7x7Ou7r7+YSeh9gMq4HY5pyRXATl7bKKiELP6go9t2gPiPW7qblZDnWhd2KtDsNZc2mY6lTNwJHACeQ/VbpLRxgqSCUt0GfkJ5nQubEg6Yrqqz49qQCbiAaNyU8p+bQA8wihhChwyY5HI1ME8qxKipjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768996235; c=relaxed/simple;
	bh=AcnHz+YEbhMZrb3eF/ZHw5vnaNb//oOZmIqA6ylkY6M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rniDnp5oYPSITKRnaMjO/uhKjayC0F53tXsybAeoDcIE4Unt7gfgDSL+904UjmWcV5DosUTyN5eFWBQ/AwPHqW0Xp7CthHpFfZYhe2XIcIXIf6qRS4xdVjmkOOEEklbydEbs9qFJWwn5amMPchBFbjsqjclbWALwwRFlNjjOTpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ADq7dq0I; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BUEu7RYd; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60L9rMNj2840457
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 11:50:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9SLqEIDpNRShWPG3vGqyKlNb2m6iu5UFw+srphCD9wI=; b=ADq7dq0IvmYe+BBT
	UQcf0p0oGL+9p7LanlFYl3TYDxQ/4Ory4teYl4NaYokaJgDkosOEJsksTwf8zgJ3
	np4RrWNnyzlbx+ne48hr2rQB+gbYc1UyBYvfZ/R6dOcDoOJPNLQvXWBit9/JqtaS
	swBF+ItdPeNs5QLfpx5FEm2fVjYlOhbKz/wszXngjplMVpTN5pKgUEx095OLKJVa
	oWGdp0yfzn6F0XgITH14hUrZQZfHXzjpfy4hSpYEyJZNKM+3Yn4fjx/a+m4/Pr++
	ukD53h95q8ETZ/CcbYSMInhQk3Azbi1pBMNewnxlaenavpM0YnC5fgocMT3GUmw1
	3QkkSg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4btqm1suth-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 11:50:25 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c522c44febso150543485a.0
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 03:50:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768996225; x=1769601025; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9SLqEIDpNRShWPG3vGqyKlNb2m6iu5UFw+srphCD9wI=;
        b=BUEu7RYd1FsN3DCCkpqUZva7kjsskDrHu+qVqZ0crQQvhgj/pchnerDec/8/gyTOn8
         kWY/p/7I3qixPPXq1HV+0d3U+LCi/wLDttiwy11JDllhFPAhmKaiwW+kfuNM81VtxxCw
         FF8JuEf7fMvjHQPFrFt4uPYzQpU/L4LhZEVOrQhoNQDbOJGRklKGkOWptCWieSdYL/RL
         4/E9XCHAd/rv/3rzz718vUxg46Rqyu1UHgN6mjRtP5eDO7D6BuDI8flBRX1kxEGm2oRC
         TUn75p+e+0cqY1x0bJ8i7QG0ollcPJqzXHoHlysawsfF0990X13MrAFshb9TRs4oy40l
         6CXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768996225; x=1769601025;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9SLqEIDpNRShWPG3vGqyKlNb2m6iu5UFw+srphCD9wI=;
        b=QyoDskd/VpYt0bnf3uaPhvZj5l0FhQCNz/8lhnN900HUxz3JMgGsAQ9KKpdzbUX/Wt
         h0rKQXZnwK1LM63WEpYFoqRy5w3FI4zlla3TgeqQkLusl93oq275QLLGaa/fhAKRWuMa
         8+Uqkp3RU3zj75xrUDcpBkGjkQ472GaEG0bjXMlhrR+q+VdmZNygkziI+RQ0h9fWcf8p
         5imEtYGiTNR2FBpFVC3CPsqizBj3jI+l1kTtyRUYjpJniWO9+sm/x4z6mB4G2hvE0nPl
         rmimgaW+XF5ciBkpQ04jJ01/pPU258y33iuj9usdF6TivSKXJrbpSlFzkczBeyKrqNjV
         nMSw==
X-Forwarded-Encrypted: i=1; AJvYcCUFZfa8Vlm/J2uZkbPqeA9tIRUdQ9+AalpgH1G4F/mAGW435XFZVWDJa+EW1aM8jJY7EZiyw3Ig42MX@vger.kernel.org
X-Gm-Message-State: AOJu0Yzq+VLQh0K++6EfjT0r25Ba9g313WMWY+MAB3Xi1KQRUZYeB6yF
	fRchbyqTKDwMGkNRyOB3YqsiniBTUl+DFQd9Bj0Wk2xHbI3oh+OnxglPan9IzSpqHxVsTgz3ydD
	vu7xmjFU2Lpes6R5FMxFQ5n9Ng7yPvI8uRYYg9FCq7zdL4wEBWDC2Hd/FgIdftjdp
X-Gm-Gg: AZuq6aLK4pSvm390cTDXr+J+1kVVdVP8l+omtTnlFIHAb5M2l8QOTtD6MaT/nIzAd0V
	5gpQN2NuUUBV65lBCpuLgHWe+p74sVEJHW5IWOX4Qj17v3iyy3IAvsuR9MOpWH+AaAI9cRCcky1
	SpXD49qbbFG+TSmJXF1kRozE56qyh7/sDvB23aaXhZNqhD8fcTpgXl4Zppezhp2vjunbT8MUtgf
	GkRTw2iZKSdzX7Rmspar71TWVYKZp+rsUJD0IWUF+U+eKUurOchbE4FxEUZ8obnyMRe7YMhpc4E
	DtqKxIyeiyTU//EAf8dnvwKk9MGBt47aMTgDXPU6/BzusqKuHgtFX/eZW60Nzd2VbVM0o/ct10v
	lwJysWaKsn6RT0sYTMDkRhsQS5SJ/O0Uc8XSKy8gFcRxJ+eYcKo2ZQa66yuxGgfQq77k=
X-Received: by 2002:a05:620a:e05:b0:8c6:af70:22bb with SMTP id af79cd13be357-8c6af702446mr1263290885a.5.1768996224925;
        Wed, 21 Jan 2026 03:50:24 -0800 (PST)
X-Received: by 2002:a05:620a:e05:b0:8c6:af70:22bb with SMTP id af79cd13be357-8c6af702446mr1263289485a.5.1768996224486;
        Wed, 21 Jan 2026 03:50:24 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8795168e6asm1648458066b.22.2026.01.21.03.50.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Jan 2026 03:50:23 -0800 (PST)
Message-ID: <300f3ceb-546b-4670-a0ae-4a6f451a7f4e@oss.qualcomm.com>
Date: Wed, 21 Jan 2026 12:50:21 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/5] arm64: dts: qcom: milos-fairphone-fp6: Enable WiFi
To: Luca Weiss <luca.weiss@fairphone.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Alexander Koskovich <AKoskovich@pm.me>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20260116-milos-fp6-bt-wifi-v1-0-27b4fbb77e9c@fairphone.com>
 <20260116-milos-fp6-bt-wifi-v1-5-27b4fbb77e9c@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260116-milos-fp6-bt-wifi-v1-5-27b4fbb77e9c@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIxMDA5OSBTYWx0ZWRfXyGEeHbpfKO6k
 xP3StOaUcWaZgBqp7RFU7O4ckwG22WWzmjJQ9LZrDwegflqFwua4vglseqVYtb3nbrTdQFBX5ZZ
 jR47GA/nhq+1Cc7QJhn52QLLWfHlUxwseGmffRp7RDHfKzzudH3soj/b3f94MmujExAxmyF7Vib
 BHBCeV/s7zdsIQ7diafdAaKgTePoCivk2VsllijbnVh/n4t4bZquMURF4RJghROZjE0aSlm4/C9
 DVOq7aBCwtjwHwnjXYT2VQ9ilEit9x6TQUINo7zE6ISK1oQsb3cu4tRA1dQlVIwgxkw6iKGiRFS
 JTYkTIXN2J0Re0lbPA7x61jDAqgVmShpCxrgxzwR6yO3Rl7iGGQh9ajI2AnxwLx0ze8DzfI/eyK
 3xc7kxfC3hgWE5y9GG5KTCyCpNUIgGZom40Mizaqp0Csv6dhWGgwPAu49wAoJ2Oo9Ad79ilDADN
 4bOVSjhPuFen0bbGZjg==
X-Proofpoint-ORIG-GUID: Ht7ahdhLwHW17LeJBGoVAioCkIWfjccq
X-Authority-Analysis: v=2.4 cv=dtnWylg4 c=1 sm=1 tr=0 ts=6970bd81 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=6H0WHjuAAAAA:8
 a=Ae2tQB4DPc1jRJoPbowA:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-GUID: Ht7ahdhLwHW17LeJBGoVAioCkIWfjccq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-21_01,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 impostorscore=0 spamscore=0 priorityscore=1501
 suspectscore=0 malwarescore=0 adultscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601210099
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	TAGGED_FROM(0.00)[bounces-257905-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0B13256516
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 1/16/26 3:50 PM, Luca Weiss wrote:
> Configure and enable the WiFi node, and add the required pinctrl to
> provide the sleep clock from the PMK8550 (PMK7635) to WCN6755.
> 
> Thanks to Alexander Koskovich for helping with the bringup, adding
> the missing pinctrl to make the WPSS stop crashing.
> 
> Link: https://lore.kernel.org/linux-arm-msm/DBF7OWAWQ94M.FSCP4DPF8ZJY@fairphone.com/
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts | 19 ++++++++++++++++++-
>  1 file changed, 18 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts b/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
> index cbe1507b0aaa..75f2b3a3e572 100644
> --- a/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
> +++ b/arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts
> @@ -232,7 +232,7 @@ wcn6750-pmu {
>  
>  		clocks = <&rpmhcc RPMH_RF_CLK1>;
>  
> -		pinctrl-0 = <&bluetooth_enable_default>;
> +		pinctrl-0 = <&bluetooth_enable_default>, <&pmk8550_sleep_clk_default>;
>  		pinctrl-names = "default";
>  
>  		regulators {
> @@ -704,6 +704,17 @@ &pmiv0104_eusb2_repeater {
>  	qcom,tune-usb2-preem = /bits/ 8 <0x6>;
>  };
>  
> +&pmk8550_gpios {
> +	pmk8550_sleep_clk_default: sleep-clk-default-state {
> +		pins = "gpio5";

I'm thinking how to best reflect that. Perhaps gpio-gate-clock which
would be consumed by the PMU?

FWIW PMK8550 can reportedly output this clock from GPIO3 and GPIO5
(not sure if at once) if set to FUNC1

Konrad


Return-Path: <devicetree+bounces-273482-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UIagKbcCsGnOeQIAu9opvQ
	(envelope-from <devicetree+bounces-273482-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 12:38:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id A74F624B2E2
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 12:38:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BACAE306E8A6
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 11:25:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57626388364;
	Tue, 10 Mar 2026 11:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OmUtgybu";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MylbJE+q"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 176B7387368
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 11:25:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773141922; cv=none; b=sGjcQpzvTvzgrm0ehYsRqttB8+HyfRcnVtjuHurUUjUxTAdnCYrVeKZaN0VSrN4HJkT4Msos2tFFDuOwuHqrwcLW01bOUc1JMaaWYAO9pgPAuEQJlD2AqmXaEd8JG03ToIOjLhrM8LjpvSCzIAEvL45SbQfBBR9jJiLunl1F5oQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773141922; c=relaxed/simple;
	bh=Dl01MgLboozylrRZom7J3olARLsD93uFTe2UmdJjWMQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Dklz3KozPXTnnKWBDMQUGyLd/yDVFvlHaenrHVKXG3H9Umy9vvQJ8Q+Or18SoR068dMOAwGL2u80N2VvAQsvFJE9UFaSD8PdvXFHo95q1rqFNOVk8Hi1ipdLlIpj+P9AJzLRYjbEeLlUBpLXnLRnr2XmFKCeFa2oiyNkKOdCSWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OmUtgybu; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MylbJE+q; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62A8paAB3690628
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 11:25:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3jJysiFqGQEKdV40WTqII4/0kEfuFtE86HCgf8cEUAE=; b=OmUtgybuZe+AcSTa
	LZcO56rshJN4RD54rbLVwQ/wqMDKPHcJsejAQRH6nhbbtxAW1NmSDYI86I/KCcJ8
	0VoOcIEgAWQZyU3ZTcxGjG5hh3dyOFM5X5t7UGrAhy9/xffvEQjKNglbbZ1F3lc7
	Sk6FAz4Pn6I2wlhQwDgF0tiz+Rs0Lrk2xso3NJbASbYGLqKLmM4ufyBSIlNZB6Md
	qpzzSccMZMHUsaTQFeep7a7miumsG8GU+vmVnS+tvsi4aIOe+r+ABkJJOsLDUMtv
	QW3D4ppVJRLzP0/TGtAKou8XxA3QZpFMM4fbfvcGYgci6cF1q/Sh1mhvd0Ddwcte
	CifcRg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctg5ngmgt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 11:25:20 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cd90210336so65832485a.3
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 04:25:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773141919; x=1773746719; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3jJysiFqGQEKdV40WTqII4/0kEfuFtE86HCgf8cEUAE=;
        b=MylbJE+q73nNrSkS7l8EzqkhEIK/YuYDU2eEGB49bEwek27OyJoBFkY4Xg5nRn9eZ+
         MpvY3Q4JNz15ffA2CQUzcQwo+KlainzMmjovR41LN7e8mbOs6DN3OranV/HzftrIqQUe
         ynI4L8dXNiV7BZ7gUPenvJENIj+IHCzS8GV2dLRAPtxtOwYM1uWTqNSE6UcOmxwWOCeN
         8/4JsibernqKZ3HjWSxVXxKkrLtnpe2gnSDtch3IBYA0hHKdGzp00l/z4koRaEi+rE5i
         vGJZCQRSdP/LSxZUR27T2SvYtKHzyrao0wao8t7VQe28TouGCCD5zifXAjY1uA0pji9g
         i/4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773141919; x=1773746719;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3jJysiFqGQEKdV40WTqII4/0kEfuFtE86HCgf8cEUAE=;
        b=aYbd+wGg1zP55q7GXtMPIs8qfqomfb5qU3DcYZoO4hP7ChcOgE2bFnj4r3mxJntHIF
         4+EWI3OkMxUZ/cIPgwljCFe9+DZgY5K5ZuKeg1gCTlGScgABvgMccHpU2HAjYF4lQujm
         hdgviGepWwy9UU//Lv4iZ6w6McmR9mq+X9A0OwSuHWRCqwp7/IjLHoO6VtiPQJiRVhCr
         lUCjgd/4WWCG0dBxa4MpsCUwyqTODRI9WJtTTNCR6oCn4F3K4HwapIBh9Ot/1uUBAdKR
         r3EpQ6ApetmVYobwpJSciUM1yfOUE4HSYGABUOh0ZUI8x03zPFiXkMAcoSIGh1rCcMxQ
         6YRQ==
X-Forwarded-Encrypted: i=1; AJvYcCWcZ1I/u0rDyygEWYB5HcpOCuC1K7WHnD97AkV4DXty5zAB2SJHjRxSX7zMEtSazFK+k+cxXTC1Ln7S@vger.kernel.org
X-Gm-Message-State: AOJu0YwAIjnl9J3kY+K7tCySyuJYwWcr4W5yBwErIPW3xMhoUf4VJq1K
	Sv8g+4G0J0RclAFMxDhfXZPMwSe3m2/zTGQbw+EtY9XlBsmhGVOE75zD/pLMTJv547sKsuq81WE
	I2PNEyQWRCMfP0X7z9+DF5pLYIs2Zycg7FQyf/xDwg9kdR4zCRemZP/oJujL4kNa+
X-Gm-Gg: ATEYQzw6Cd2PfOltKU8O4RRYdVRyg+oJxtXERvZ1zRgiDXKbgHnG+ItG5Ldh9Bj7Z9G
	SsbjrD81Ni4xb5wr655dmQaSOKKmtiFSRRir9EbBa5hYzdfSt70csfMU28dcY/mABTQEz8KMTKN
	eQ4JxZDOq2rNCPZ95Vaj9et96bbaxw57QLEdRilmka7BnEboU6R5L0e2hkqwwS1fRq2sFGhIPxc
	5VyVyhEy3mEkOI7x8PB8b74btah1DGVam325FOP+xhtgNYR/MIF6oYiuQAYJdtK4uwfWWTGC5Yy
	3q/86J4hg8x5DPD4rvPdeYQuPrw3bPXtnFNY/h25L5ZvFVNj3j8ePJowuHHKWWA2gRJpgrNstXx
	mmUtFPDlacydRMJYl5Y82VKWc63RQO6emSL6tEd2Q7IBv1jH1XWh4Qc4tgY3gPZWr5eQelrJ5SB
	RCzgk=
X-Received: by 2002:a05:620a:1903:b0:8cb:1c69:b7e9 with SMTP id af79cd13be357-8cd6d42cb58mr1372148385a.5.1773141919537;
        Tue, 10 Mar 2026 04:25:19 -0700 (PDT)
X-Received: by 2002:a05:620a:1903:b0:8cb:1c69:b7e9 with SMTP id af79cd13be357-8cd6d42cb58mr1372145085a.5.1773141919105;
        Tue, 10 Mar 2026 04:25:19 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-661a55a660csm4062073a12.33.2026.03.10.04.25.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2026 04:25:18 -0700 (PDT)
Message-ID: <4df4b8f2-ecc9-447b-8a69-237c2a5841a0@oss.qualcomm.com>
Date: Tue, 10 Mar 2026 12:25:16 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sm8250-asus-obiwan: Add ASUS ROG
 Phone 3
To: Alexander Koskovich <AKoskovich@pm.me>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Kees Cook <kees@kernel.org>,
        Tony Luck <tony.luck@intel.com>,
        "Guilherme G. Piccoli" <gpiccoli@igalia.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260308-sm8250-asus-obiwan-v1-0-3c72941eb796@pm.me>
 <20260308-sm8250-asus-obiwan-v1-3-3c72941eb796@pm.me>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260308-sm8250-asus-obiwan-v1-3-3c72941eb796@pm.me>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: dTX52pdXY9EUXzBPW35bBjZdx8BlMuHV
X-Authority-Analysis: v=2.4 cv=ervSD4pX c=1 sm=1 tr=0 ts=69afffa0 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=b3Udb0O0c6O_2HRizlEA:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: dTX52pdXY9EUXzBPW35bBjZdx8BlMuHV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDA5OCBTYWx0ZWRfX7kyr+4B2fv6V
 71M6X2F1LNxVBWg6Lw8JjsNx7CNbwogBl6kQl5tF1iWqyzmbNUWGh8G+PCwcHPwAR4T+kmNCuSR
 V+L+tdIUAItnaTNVsumxK7Q/rYFy2l4Gvp6Dzy2FoL8Jn28AxURv8qt/PyaKZ0ZUwR4qqDNjOc9
 Qu9QxzXKr/wnqHlIqUl/nX40sf9Td4A43SIdpY+e9KOTY5pt1EiIjaq9pKWtjfnmQd+vOD9d10i
 Xg/samuTMWnEDC2BvMQyuUNsJwXFOLrwud+VX6loyNVIXF6ed056W6Ooe4WIrZFWS9v8aeIy81j
 4eXDEjPSVqflintSdK/bgLs8yNgf/zlqJS1V2lbpWhhmw8XExE1oxm7TcA+JMKZjCvyJ47CNcNJ
 I5NMEUTNTo6ArF+pm/H4LUbCIRnmUs/pwxMN2Bh+FA9aQubDrnbJJb/OZmMjtaKKz+3/KPTugGx
 k4uXNXNY6NcitYL6U7g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0
 malwarescore=0 phishscore=0 adultscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100098
X-Rspamd-Queue-Id: A74F624B2E2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273482-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,qualcomm.com:dkim,0.0.0.36:email,0.0.0.0:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/8/26 9:40 PM, Alexander Koskovich wrote:
> Supported functionality as of this initial submission:
> * Armor Case & Dock Hall Sensors
> * Camera flash/torch LED
> * Display (Tianma TA066VVHM03)
> * DisplayPort Alt Mode
> * Macro Camera (OV8856)
> * GPU (Adreno 650)
> * NFC (NXP PN553)
> * Power Button, Volume Keys
> * Regulators
> * Remoteprocs (ADSP, CDSP, SLPI)
> * UFS
> * USB
> * Video Codec (Venus)
> * Wi-Fi / Bluetooth (QCA6390)
> 
> Signed-off-by: Alexander Koskovich <akoskovich@pm.me>
> ---

[...]

> +&cci1_i2c0 {
> +	camera@36 {
> +		compatible = "ovti,ov8856";
> +		reg = <0x36>;
> +
> +		rotation = <90>;
> +		orientation = <1>;
> +
> +		reset-gpios = <&tlmm 109 GPIO_ACTIVE_LOW>;
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&cam_ov8856_default>;

property-n
property-names

in this order, file-wide, please

[...]

> +&cpu7_opp_table {
> +	cpu7_opp21: opp-3091200000 {
> +		opp-hz = /bits/ 64 <3091200000>;
> +		opp-peak-kBps = <8368000 51609600>;
> +	};
> +};

This, as we've established on some other thread, is fine to put in
8250.dtsi

[...]

> +				port@0 {
> +					reg = <0>;
> +					rt1715_con_hs: endpoint {

\n above, please, to separate the subnode from properties

[...]

> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pm8008_default>;

ditto

[...]

> +			port@0 {
> +				reg = <0>;
> +				pm8150b_hs: endpoint {

ditto

[...]

> +&uart12 {
> +	/*
> +	 * Debug UART routed through a mux with an enable line on
> +	 * GPIO 170. The active state is unknown, so data may not
> +	 * pass through.

Hm? Is that software-triggered, or is there some sort of a debug connector?

Konrad


Return-Path: <devicetree+bounces-266380-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gJcuI4mXlWk1SgIAu9opvQ
	(envelope-from <devicetree+bounces-266380-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 11:42:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F5AC155931
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 11:42:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 214FF30065F6
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 10:42:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63CE62FF153;
	Wed, 18 Feb 2026 10:42:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HOCrC2tk";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Is7JdY86"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F6A301001
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 10:42:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771411332; cv=none; b=ncr97wCrLakLvqVCKbRjmVzTopzdVBUyuNsuEF8gKiC94g5ippPOfK+qe1Jsbhhj4OhS/laryDVmh+9w3YyMgeFEl0WRAdkciZtNlpOT54fkYiUEPqBVYCiy5oTn00QFulREOVpjeC6IqYzunusHk19mqhJYeINroaKLg/kjZFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771411332; c=relaxed/simple;
	bh=j05/cxfltucXRwON8QSfjH8144PoGhffNAKPXlMCtjw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AubiH+BfIid6PbLzxKKO8YTsQ//S/1OJZTZ7ic2a8tAGTdC6e0Pb885ifrUBCaXe8T1ssQDDMh2MhSgOViEvV3z9VJqFw8GATpf8iqucqUikj/SIvFmXaq3XHVVVrDIltYLgQladaN6Vxq7anQtW6/7epiPn5ZWGphxKr/SFI9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HOCrC2tk; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Is7JdY86; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61I06reb2111596
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 10:42:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	50M2aZYa0M5or/awTAHouzvOMiiz02HpR0Cx2PU+naE=; b=HOCrC2tkGG1ZYOe6
	HcTDt/NxHg+C+q40RhtuyEMR4htzanaDOvS0TmE+6C+329+7zJaLMz5Rj03kJeUt
	gn3QiqoR+N5lzFpqWffPx7hVigKzjPhXjbqdyKWZtapUHfJhGjEBUJGOHrQCDdjx
	Nn55OJK4ajp1uEQH8Ayg6zOqSarnTqk1iCCw694m/apy11YDdds9wO58WjOt7bQ2
	QE0Z/sugrrfjJrdPF6wlZYNdL9/4fdWQVU3DiJU2hqn6ZsnZSW9E9JoA514DOngS
	RpKaD+vZf34hd+z8VFFEuhSCPgvyMYIJwjxJcxkToOg5ycjWQlRM3sfdWgJYMLzF
	USrYdA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cchv4mgv9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 10:42:08 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-895375da74bso36815326d6.0
        for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 02:42:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771411327; x=1772016127; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=50M2aZYa0M5or/awTAHouzvOMiiz02HpR0Cx2PU+naE=;
        b=Is7JdY868+ymInNH88zQ8rJdWpjC/5tKZH/ca+LXNRZGHorimOCg8fa1jEjI8jd8Z6
         3GmqN6GPOJsH0ITx75rbcWTSqe7fBEqIITMVb691g6fH6rCOdDjTm6PJN5BCgFEAHMtN
         y2U5Osu3JRgjBjmF08KyxRB3NYFE3XFzjFq5Eoh+HnolhH0qKERTjeW9OB7C1SpxfyoT
         Zf3YRCDj57UK8lPkf3cxuZXnHnqqsL1JAMtmZIcp5eGXK8i1/1AIjBIz9pfo98HGBKWc
         KWu/tmhJpHJq9UNZDBGb+hB9tkbgO0F5tGL6yKmPv5IF1xmodG8gNRIWSUXkRfTvZFXV
         osLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771411327; x=1772016127;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=50M2aZYa0M5or/awTAHouzvOMiiz02HpR0Cx2PU+naE=;
        b=p1Qna38hiYu2DQHnEM7PTxDRj2XI2ED+8/PoTjl5uE+itpbWGJV7Yb4JHMLRRcNSX9
         jQQh3rBvwCWKnnGzUC/xMHTeaNkVE81uYA/X9hPAitdgHh2Wd974jBQZMjP9bkhvEYuu
         WNFZmVWjuYYbhCnCN+c98u9+VtZ2brL4FfHhkD3RI/knSNONryklHzrwB21tVkI0oosS
         v74g4YMcq5qhKRzIvGP8gs8F55tQep4a134zOqEP6JXops6gOJPRU6XbY5u8BCrnX8pn
         zH4dafkSqBpdMaHRCP76s5fNe1i1AwozajkpmRFEDefOIQ7uqT/CXV+LoTDZm/izyjo1
         Q58Q==
X-Forwarded-Encrypted: i=1; AJvYcCWUnE9q4PfZPgEbNyQuIZhb8WD8TvACZxAGDXPgd5xPIHu7gKqRmiTmWdFe9zRyILsNCJfKHEGc8ecD@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3AS+BR5YFgJc045I2CHzSIVMWtG8x8Zb0GL82hF68bP9/l6Np
	30pbTq7CWKNVbNiqWixNU33jyCx6RDK5/rOgUf6i1E8sqBBmtenKk5h8ssAPMWElGuD8ch2ST+S
	W0CFrlvaP/+TCEgvNOujWlfCZcvdrZHJq6eBJ4GoJJHXVhC8hZhc47SgLq7BabM2T
X-Gm-Gg: AZuq6aKfxNdU5NvrBgoArmXDlSivjxG7G+4kyYcyPEOZVnrJIS/5oS5GvqCkOxZlJRd
	+bFXIa2TE43l9S8O4QBVmmpJTPK3jOhgv6JEci6xjq2FPFvrH3Dt4SFd3ot3ltNY9Hka8emAsQ9
	pfvYXloCqbGmO6/5Z4DW/qu05kd7ue6iwFv6k+51Cva84jBnguzvWGGA6OBoN2ZuSWK5/njHgOA
	dybponJEvN9H2Uiy9m66KkBdd6hRZziuVIYmIyFtZMhQm5vYP38Jls2/HbN9kazEXe6nfzEUnuc
	jNYyGOpFIf+bH5qT761zARogMUlH1RInmPgPxfQebLjQ6i1ayQf+d93delYjyLION3dw8OU/KG4
	ssR9TTaWf5ZLllCXFmZH4U/27naOqBFFPvCTowQKI/OMAshzRW1iHXqttCTYT74oCAYglqLNUXY
	EISYs=
X-Received: by 2002:a0c:e002:0:b0:895:3b2c:7708 with SMTP id 6a1803df08f44-897346241b8mr173741576d6.0.1771411327305;
        Wed, 18 Feb 2026 02:42:07 -0800 (PST)
X-Received: by 2002:a0c:e002:0:b0:895:3b2c:7708 with SMTP id 6a1803df08f44-897346241b8mr173741416d6.0.1771411326901;
        Wed, 18 Feb 2026 02:42:06 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65bad3e390bsm2923880a12.17.2026.02.18.02.42.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Feb 2026 02:42:06 -0800 (PST)
Message-ID: <b96b9752-6432-419f-b49b-a34416e691a8@oss.qualcomm.com>
Date: Wed, 18 Feb 2026 11:42:04 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] arm64: dts: qcom: add device tree for SDM845-HDK
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20260217-sdm845-hdk-v1-0-866f1965fef7@oss.qualcomm.com>
 <20260217-sdm845-hdk-v1-4-866f1965fef7@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260217-sdm845-hdk-v1-4-866f1965fef7@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=eYAwvrEH c=1 sm=1 tr=0 ts=69959780 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=-UWIQ00ppj3yYQeD8CsA:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE4MDA5NSBTYWx0ZWRfX4se2kHLvO1FA
 G79q/jn49ebfwkffEwaIIHbgK2U95ra1xfk5rjVWO1NvpGr4i0lIgnTIUt/NlYokyy5FuXfcAZV
 8KCd0uJIHDlxtH1QKvEg0KrDjQcKL8DDQeY4J92n5ye5fAUgbxIVtYSPwzyN395ArzHAQ9Hg8Rt
 envjuPf8RPQ5LQn3ySXqGEmblP5HEmH82rblNWL6/u26tPqNtZSkThMl4yFraLQC04rbxR+mCHM
 yyvYc/y6B9QtocumYApDvV1MVHSKFjhsXtc6BBVRzQGDWWtEnnYqIqoqFGGOMEsGBafkH5bwmpB
 esZMdC298q4LZ/dr9z1IgNKRTHrO3+v24W7SQKACG+UphOxovYY2QHruhOJUWsa3tlKaZC2WmtH
 jYXqzYu0DFpP6B/hvbOmhxzAAfJ/eXlszsxvEGlPY3NHI1a9OYulNyFuTNAYDwtPi+rtI0SGp0t
 xCprlRkPW9AApaNOL/Q==
X-Proofpoint-GUID: _5y3Ef-WCO5jXWYxfhPJgbnoB5Tsanna
X-Proofpoint-ORIG-GUID: _5y3Ef-WCO5jXWYxfhPJgbnoB5Tsanna
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-18_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 suspectscore=0 priorityscore=1501 malwarescore=0
 phishscore=0 impostorscore=0 lowpriorityscore=0 adultscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602180095
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266380-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_PROHIBIT(0.00)[0.0.0.5:email,0.0.0.4:email,0.0.0.3:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2F5AC155931
X-Rspamd-Action: no action

On 2/17/26 10:20 PM, Dmitry Baryshkov wrote:
> Add device tree for the Qualcomm / Lantronix SDM845 HDK. It is the
> development platform using the modem-less (SDA845) SoC, optional onboard
> DSI panel and a rich set of connectors.
> 
> Working:
> - HDMI display
> - uSD, UFS, USB
> - DSPs, WiFi, BT
> - Buttons, LEDs
> 
> Not working or not tested:
> - DisplayPort - TCPM not supported for this PMIC
> - WiGig - requires power sequencing driver, doesn't work with the
>   current in-kernel driver
> - Audio
> - FingerPrint
> - USIM
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

[...]

> +	gpio-keys {
> +		compatible = "gpio-keys";
> +		autorepeat;
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&home_pin_a>, <&vol_up_pin_a>;

property-n
property-names

in this order, file-wide, please

[...]

> +&cluster_sleep_0 {
> +	/* default, 0x4100c244, kills the board */
> +	arm,psci-suspend-param = <0x41008244>;
> +};

Does crashdump say anything interesting?

[...]

> +&mdss_dsi1_phy {
> +	vdds-supply = <&vreg_s6a_0p8>;
> +	status = "okay";

Let's uniformly keep a \n above 'status'

[...]

> +&pm8998_gpios {
> +	home_pin_a: home-active-state {
> +		pins = "gpio6";

gpio5 here

[...]

> +&pmi8998_lpg {
> +	status = "okay";
> +
> +	qcom,power-source = <1>;
> +
> +	led@3 {
> +		reg = <3>;
> +		color = <LED_COLOR_ID_BLUE>;
> +		function = LED_FUNCTION_BLUETOOTH;
> +		linux,default-trigger = "bluetooth-power";
> +	};
> +
> +	led@4 {
> +		reg = <4>;
> +		color = <LED_COLOR_ID_GREEN>;
> +		function = LED_FUNCTION_HEARTBEAT;
> +		linux,default-trigger = "heartbeat";
> +		function-enumerator = <2>;

function-enumerators only seem necessary when the same color&func
combo is registered multiple times

> +	};
> +
> +	led@5 {
> +		reg = <5>;
> +		color = <LED_COLOR_ID_RED>;
> +		function = LED_FUNCTION_INDICATOR;
> +		function-enumerator = <1>;

panic-indicator?

> +	};
> +};
> +
> +&pmi8998_wled {
> +	status = "disabled";
> +};

It's already disabled

> +
> +&qupv3_id_0 {
> +	status = "okay";
> +};
> +
> +&qupv3_id_1 {
> +	status = "okay";
> +};
> +
> +&sdhc_2 {
> +	status = "okay";

last, please (there's more occurences below)


> +	pcie0_default_state: pcie0-default-state {
> +		clkreq-pins {
> +			pins = "gpio36";
> +			function = "pci_e0";
> +			bias-pull-up;
> +		};
> +
> +		perst-n-pins {
> +			pins = "gpio35";
> +			function = "gpio";
> +			drive-strength = <2>;
> +			bias-pull-down;

bias-disable?

Konrad


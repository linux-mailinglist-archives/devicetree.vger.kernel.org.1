Return-Path: <devicetree+bounces-277738-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uH1SBIjhu2lXpQIAu9opvQ
	(envelope-from <devicetree+bounces-277738-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 12:44:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 750652CA834
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 12:44:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C85E030836D8
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 11:41:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B3B23AC0E4;
	Thu, 19 Mar 2026 11:40:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DHbrJsk4";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Q0lU6r31"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 676863C9EC2
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 11:40:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773920440; cv=none; b=h+khz/ZfoJerpDxBzOiK/gtxEmLi7NvSxvLr54VmHsMNUhCfUCtsl+7tqn9QwnufSyKko9odg9qbJ1uiN9CkJp6TYJXLTcd1Vr46XgcvapkoNgcfNRzkRwQYDLiPAXsrzjeaMX6gAuwiNQxU8Z/dNlGttryuUw5K8OTLxcqugww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773920440; c=relaxed/simple;
	bh=8lvV+05AjlYqBRAnsrePyYBoV0IAotltEMTqGo97B70=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aTGhA7CBhHhpYujet9ev5O+KY2Mg0L/4o/8P84g/hG1SVVJdtRrNKp6ZQByzy6aDApCpXB2SFzpBoalPh+ZrGG1aSNg9eIjLHDewU4BaqnxGUcBeI6Z+iVHiE2XV+xmIrP5wuqyiBBz38zn8/CSgfH3pfI2KoV3AR8wWI+fZNPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DHbrJsk4; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Q0lU6r31; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62J73x9P3771139
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 11:40:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/pd4kfXQuTMgtemwulqYBe2gk/xcEWWLvTi2fWAaQ48=; b=DHbrJsk4P+gG48u0
	Gl13B3CVu++m3kks+dwIes8uGTLH3/vXUjscG57yArDDOo7qVUEnW2SRcY3zvHfm
	6mQMg1WbplKIu9+LgKSIHmzWnoEbJtR7pN2/Wkh5gLkWZxP3kdAHzQhzJNWcYMCt
	vwoGw+yU7SkT+WFKgwl9JtqAG2dLjHNI8cWJoWoOb1FmDCsRfwcJuEscYu/pCo3g
	mdKq7F4CngIJHI8aT+yPg7Jr4hFZ1ccEXcj0rr/9PoA6zxeeqMZNlrgn8KsLaMu5
	sGqTuP7VR3VFKsl8lgaz4uZ3rWh2lz9q9lpnPVlC/bcu4FFlCMIw70xzY+yxsXsr
	POUDhg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d083r9jb9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 11:40:29 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-89a086578c5so6742356d6.3
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 04:40:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773920428; x=1774525228; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/pd4kfXQuTMgtemwulqYBe2gk/xcEWWLvTi2fWAaQ48=;
        b=Q0lU6r31dfQDpVCCugcqTGJDeb2iLzduA3aObrOn0j7osxBkYX17wfnMj9888Vi6Au
         IBO8QJ9CnTmbfq4c+zs6o9ZXqGmxh3S2HccpCCHd8oXne7ERGbklmRF5ngQ/cgQ0KNCg
         pBDe2Ab9K+pIiRMLENKxSKFNJ2k3S9Aylx/kT4UqEoS/se4ViSFs6jXnaIUpqRVo4Czw
         gRsyg+oxa8au6BHMXirRNbiQRhBhvvbLvoZ/q5FNyJCTHoQV7V+RTsuVIIkZw+ArmqHH
         csSLhYiaOkTKKlaF6N13nH6PbRjn/ZZZQ1ZRFXbZrjdPfAuHS0WP0pTu43teVArEBJgt
         UilQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773920428; x=1774525228;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/pd4kfXQuTMgtemwulqYBe2gk/xcEWWLvTi2fWAaQ48=;
        b=EOuxg1CdnatoKXZgWWTt/QTBp4HcfS9XDHVXMN/1J2Bmc8ak3T2NYyhDanlWodMkoC
         mfgDT+1h88Dk0xU7mbw1hSQKmyuGahxnJLGhsH9Is96xWedFZQaOTSS/2kCvN3kPjOui
         m/iPhfpx16+e0YEkJxXydSesXBreKNrNIWuAuuydH8acFk9wL/otk4c2s/khdtRDIlhN
         +JzDZNchaRWaTViSWPojQ2IvOYrx0qEeGtobdtOyDEu4uIlAV5lcqbvb+2Fl0b1CQofo
         1VqVUiqfo/sm/xtLIKlP41I6pSonk3i6sb1av3MHsoejEKeSPRZ8dMYCAeHxTxlh5EpL
         Leag==
X-Forwarded-Encrypted: i=1; AJvYcCXr7wyf8ByHMMq8X/Sdg0aN4lO68hqTohF7VNBlkWJDUb0+7ao7F/xsY8JwvJD+D24SVBVeWgUnvRf0@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0RjhUfrMa3thWMSiLEqhsISMv+WtRxI+1PxEjokCIgwUPzYie
	BUBmliuRptI+BCfL+T4LqIBJ/RNY6q/IXppQlg+y+e81Cdsv1OvMVZnPhBy9iRssvXj9OtNJQRO
	5w5V6s9XMKotBR+YhHBlHsCx5edEKWZ+TeSWdsiEZNNSfAgUx4uYLjF8jCDevJP8F
X-Gm-Gg: ATEYQzwGzCpyS76KnpsaaZuZ7GdniICo8ipz4jHEih3KU/OO4wxEV6m1y2mnPlRfUwt
	IR60zePQ1D28pBZgsDKbxznBjO9H1ViexyCdR2gpYIuLzQMBfhMgONTXsErflsHYQ0l1VEKaS+r
	U4jk3RqcL2QWuQ2lm2ENLgqAx/Xf9SPpHxePwekN73UPS++DeJYIXuDy48xGxTMeniL0843DMTl
	BZJ0NdkMP3KLUthdYyjMqxV7vQ/tmprnWiiqATlHrj420RPu+XF5qvEuaunwBbYumjim22w+ePX
	VGgEAu4f6S/VBTLC+teNMRTL1qCACJjTh2q5e+aumYMXtu+pgVSm4RTv/zHzymRmPeiS5I+3THl
	WTYFG6uA+eRQImCXIRMzKLsuSO41ydHzfOvppclQ4FbN+/QRy6+9V/refhGh8ltJL4r+iY/fZJk
	LQgWg=
X-Received: by 2002:ad4:594c:0:b0:89c:4aae:408f with SMTP id 6a1803df08f44-89c6b580401mr79493206d6.5.1773920428090;
        Thu, 19 Mar 2026 04:40:28 -0700 (PDT)
X-Received: by 2002:ad4:594c:0:b0:89c:4aae:408f with SMTP id 6a1803df08f44-89c6b580401mr79492886d6.5.1773920427675;
        Thu, 19 Mar 2026 04:40:27 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97f142adf1sm430583866b.16.2026.03.19.04.40.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2026 04:40:26 -0700 (PDT)
Message-ID: <c464d106-8e7b-41a5-b76c-ed5e7a82fb37@oss.qualcomm.com>
Date: Thu, 19 Mar 2026 12:40:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/5] arm64: dts: qcom: Add AYN QCS8550 Common
To: webgeek1234@gmail.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Teguh Sobirin <teguh@sobir.in>
References: <20260311-ayn-qcs8550-v2-0-e66986e0f0cb@gmail.com>
 <20260311-ayn-qcs8550-v2-2-e66986e0f0cb@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260311-ayn-qcs8550-v2-2-e66986e0f0cb@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: IzvH1pyp55_TzrCagJox10e5hgSrJW8n
X-Proofpoint-ORIG-GUID: IzvH1pyp55_TzrCagJox10e5hgSrJW8n
X-Authority-Analysis: v=2.4 cv=ApTjHe9P c=1 sm=1 tr=0 ts=69bbe0ad cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=VwQbUJbxAAAA:8 a=pGLkceISAAAA:8 a=B-J4ztEYYRmK9Gd1W5QA:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE5MDA5NCBTYWx0ZWRfXwRj19kc+DO7w
 1ufkAdL41xcKMzMcPcG+XarvJu3a4n8PnBPbD0JUdRmn2tivaxmwNjQnqrGyMZBMEaDfRoUUztB
 hlrFZCv6Wq4YlTisd0EO0AmmDdbY1m1mlvKJal689wDrpxNqyYpYGxWkJqvs/gaRuSXEEnYLgSl
 h7RI9nKBe+xBdTBetEglLNm9zpmmmS/jlGtsXOj5CJHUDHS+5DdPfQ1KwbR8R4ziNhsahsh/8wS
 2OLAdfU4xIOgFHPLDrV9+T6ABSKl9xhBjan4jok1lg5HxxM9gEKazA0jFuozHrLBku1wUdYXcKJ
 nQ6Tg2WpoAsEhHvNihenQOH8vB3z9REX/nec7Kb4d2eQWqfJBxGXoK0sP2fIhb8MA9FBoC+BfV8
 fRILfjJrgnaaTBd1xFbGhyU7RetO8POx8KdzAIiSUjcbUWysZVhpVpkPG1qiWDzx/ljcxO+kiN/
 EHSTR734TTgFLF+5R9A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-19_01,2026-03-19_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 adultscore=0 malwarescore=0 suspectscore=0
 clxscore=1015 impostorscore=0 priorityscore=1501 spamscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603190094
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-277738-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,sobir.in:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,0.0.0.0:email,qualcomm.com:dkim];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_PROHIBIT(0.00)[0.0.0.34:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 750652CA834
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/11/26 6:44 PM, Aaron Kling via B4 Relay wrote:
> From: Teguh Sobirin <teguh@sobir.in>
> 
> This adds a base dtb of everything common between the AYN QCS8550
> devices. It is intended to be extended by device specific overlays.
> 
> Signed-off-by: Teguh Sobirin <teguh@sobir.in>
> Co-developed-by: Aaron Kling <webgeek1234@gmail.com>
> Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> ---

[...]

> +	pwm_fan: pwm-fan {
> +		compatible = "pwm-fan";
> +
> +		fan-supply = <&vdd_fan_5v0>;
> +		pwms = <&pm8550_pwm 3 50000>;
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&fan_pwm_active>, <&fan_int>;

property-n
property-names

in this order, everywhere, please

> +
> +		pulses-per-revolution = <4>;
> +		interrupt-parent = <&tlmm>;
> +		interrupts = <13 IRQ_TYPE_EDGE_FALLING>;

interrupts-extended = <&tlmm 13 IRQ_...>;

[...]

> +		model = "AYN-Odin2";
> +		audio-routing =
> +				"IN1_HPHL", "HPHL_OUT",

Let's drop this empty linebreak


> +				"IN2_HPHR", "HPHR_OUT",
> +				"AMIC2", "MIC BIAS2",
> +				"TX SWR_INPUT1", "ADC2_OUTPUT";
> +
> +		speaker-i2s-dai-link {
> +			link-name = "Primary MI2S Playback";
> +
> +			cpu {
> +				sound-dai = <&q6apmbedai PRIMARY_MI2S_RX>;
> +			};

'co'dec < 'cp'u, please resort

[...]

> +	vdd_fan_5v0: vdd-fan-5v0-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vdd_fan_5v0";
> +
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +
> +		gpio = <&tlmm 109 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&fan_pwr_active>;
> +
> +		regulator-state-mem {
> +			regulator-off-in-suspend;
> +		};

oh, I didn't know this binding existed.. but it seems valid indeed!

[...]

> +&i2c12 {
> +	clock-frequency = <400000>;
> +	status = "okay";

Let's uniformly keep a \n before status

> +};
> +
> +&i2c_master_hub_0 {
> +	status = "okay";

Please add a clock-frequency
(you can read it back at runtime running a vendor kernel if you don't have a
better source)

[...]

> +	spk_amp_l: spk_amp_l@34 {

underscores are no bueno in node names (between ':' and '@'), and they should
be generic, let's try amplifier@

[...]

> +&iris {
> +	status = "okay";

firmware-name?

[...]

> +&sdhc_2 {
> +	cd-gpios = <&pm8550_gpios 12 GPIO_ACTIVE_LOW>;
> +	pinctrl-names = "default", "sleep";
> +	pinctrl-0 = <&sdc2_default &sdc2_card_det_n>;
> +	pinctrl-1 = <&sdc2_sleep &sdc2_card_det_n>;
> +	vmmc-supply = <&vreg_l9b_2p9>;
> +	vqmmc-supply = <&vreg_l8b_1p8>;
> +	max-sd-hs-hz = <37500000>;

It's already in 8550.dtsi, you can drop it

> +	no-sdio;
> +	no-mmc;
> +
> +	qcom,dll-config = <0x0007442c>;

Is that changed in your downstream tree?


[...]

> +&swr1 {
> +	status = "okay";
> +	wcd_rx: codec@0,4 {

Let's keep a \n between properties and the subsequent subnodes,
also file-wide

[...]

> +&tlmm {
> +	gpio-reserved-ranges = <32 8>;
> +
> +	dsi_p_rst_active: dsi-p-rst-active-state {
> +		pins = "gpio133";

https://docs.kernel.org/devicetree/bindings/dts-coding-style.html

Let's order them by the pin index (it's a fairly new development so other
8550 devices don't really have that)

[...]

> +&usb_dp_qmpphy {
> +	vdda-phy-supply = <&vreg_l3e_1p2>;
> +	vdda-pll-supply = <&vreg_l3f_0p88>;
> +
> +	mode-switch;

Already present in sm8550.dtsi

Konrad


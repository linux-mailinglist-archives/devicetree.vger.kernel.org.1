Return-Path: <devicetree+bounces-269928-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WE1WE/FvpWlXAgYAu9opvQ
	(envelope-from <devicetree+bounces-269928-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 12:09:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AD71A1D7387
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 12:09:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2F2953038510
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 11:07:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07EC235F619;
	Mon,  2 Mar 2026 11:07:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OfEe3/Q3";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jdD86HH2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE49B35FF6B
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 11:07:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772449626; cv=none; b=F7LfA0e5vZ7/SyFCH9aG0h/0YTh6ojjnFnNmLnA3+GFMl3TmUmpYF5vthMEvlDYyTGU9X0DTKabKFCRJNcfBjnckPT5sasAEtzRUTn6Sh+XIt2C+da6UFhTO6yBs7/SFlbM6JlyU3NDUiyy8Jp8hVHxAsv+Re3ABNcS50E7boeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772449626; c=relaxed/simple;
	bh=BBuFilbkJGsN6xMCsRGB9mMzj5tWOIs/AWZNl6o5ujM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kKeKaCLYnyw9yee7joCLknju0ScNDcHfiWn9dyJH8H0atY2ubY0+769ZCjUKzzlEob7sCLsWJEixmsrmmYEshDXsFLJJBezwFF/QAwGw4ehVg5dQwSTuCR8JEuucpZdBaFJLQnVsC0dEyon7H6v5WC85vgFUNzyjOhbGzDUXd3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OfEe3/Q3; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jdD86HH2; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 622B3nfP3863284
	for <devicetree@vger.kernel.org>; Mon, 2 Mar 2026 11:07:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8p5W6PTajQxRRdBVXun2ntjArNqAZvNR3wDMgU+v+Nc=; b=OfEe3/Q3k25ZMdzD
	M+qtpADaKdb1/139SeHxGM7YsjbNJd0aa7ZKuuMNt9JoowXlp2icMAKzde3NiXXG
	nqDg3bXfHo7Qzu2CHmKP5dhd0zqToN1aBK0o83dmGahBQ4uU05/QD7crkFmakKyb
	kvS0K+MvV268dzEr38QXpneaMGR7mcvaIkKPQwupy9K/YMK0wvtEmhqd8ITbI1ew
	3n1UmQz4jSNihqjgXTWUwiMsnIJPGVZnNQ79nlBFQv1fpWTFMEFJswH7SBy2UR0+
	YklhYy0BDeA4pPEGXoVZTwxja+Ggz7JOmI9RtMcNmtoVrvlbwyF9B2QxWXneOHrf
	T2vOIw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cn9bjg0ba-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 11:07:01 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb50fb0abdso439588185a.1
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 03:07:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772449621; x=1773054421; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8p5W6PTajQxRRdBVXun2ntjArNqAZvNR3wDMgU+v+Nc=;
        b=jdD86HH2nE79P8bTOhVQJvKfPFJpI3/mXbwIBw9N2vxZwydoeMRzOpzPifVFR+vYeo
         v3n840OPBe1oJZnNR2AmWRCx4rcQYh2ujOjy5GosnivX9tAKXlejltHQ76F6H/3xWUqt
         1911PJ4WTgY8uRynNvt4LhM8YFfC7WBN1O1l2n1onawuKRLbQ0isJQ6LSpUgcrrVUabJ
         cDhyOuHyjsVRtLuMDUrTbovZKNtRhvgNjEwuu0j2LH8s5jI2PFh1TfLP04/3IKyRcqeh
         TAUOobKbHf1JzZmQLg3iZPdWbEyHO9YzR4U1eKRFxKIoXe6QXXCs2GsZQPpMlwb7qc9/
         qBmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772449621; x=1773054421;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8p5W6PTajQxRRdBVXun2ntjArNqAZvNR3wDMgU+v+Nc=;
        b=Fpl1NF8ftxcAe67zalz7PNs1nAF+v3FkNDNEn6SRvbDTEum0ypRWn1BxtmOZj68+Xd
         0pRJdvPLUu1XbKy4OtkAbe2oJ3983UN6jJfzy1ftUwvZFY7x9SHGd/0fRgg8ozIoFba2
         6V2ZsXBefaWmQO0e8ocY5STDfD2kXsauvjaU+RDyJdpertlOcTYNyToBSI1Oq7wf/qCH
         3pWMrzp28Cv0N8s7jhU8Jgbvlws8oqtgjIseBJrpu6BOsPqYjeWB6UpmNVeQ/Fqgxqh8
         vzEEYC60tlBsnfMVvU9Z4ni5sgrVM4d7CNPSxgfPGZNtHz+ucEhrXQe1VcnMVX3m2ZMR
         EnFw==
X-Forwarded-Encrypted: i=1; AJvYcCVxnCjPDdHM9CJQIBd9WKAhz7AjB36kubDD0Yb0DiVkCkb//7EBgApYawBYwmbz1tvgVkpIf6NOFzs5@vger.kernel.org
X-Gm-Message-State: AOJu0YwRN3qDAZvC0yN7n2i3Hb9jF/Jo/AhwjkWp39+lM5fJmfq/JFEt
	06JbVvQLvHDdRndnrnIMQB3DsafU1gPVBv2sHhhjGZyvSOR8SuDDSIEh5uh1bPNzwDvfpBgKxFS
	/wiQK/Yim5x4KLEN7sQPJSDfk5jMerpSL8nyyJxztvGAJPdwqq+RRoj1yxzi8F5D7
X-Gm-Gg: ATEYQzw1LMCcwSJPNwFmHpETsDbFLIo4blnJ2uF8WvjEldaZeWaGED7ISsgu4eXQWiN
	kM3cEoVG/Tu0OvADzPcoRiNIEqhsIZZwC4W0o9xCCSLTOWSD/Afzu8suHGPPnZkMriZftgVcpRW
	ejAsjjiiaV+jZndihpkQXXuyC16y64TsO3CWaF1MUz3rZrZjmyrm5S7AP4g5wgIi07jPr3mvhRD
	0TqdlquOGgPNWR+EjIi2HPibeKJ68Q3k9tRO4dSbG2TLClDFZnP/TN6UZs5prU4ikp3yNXEk92C
	l1WFYV2pC62bSc7+lPW5M0ft5dQSH8ZnOqwzmvp7L5bkJFXj13flEKIL07N+KOFMJRAhRf9ShAh
	8lx3VvCioYXR9rRj1LZYa+4zlOF/P/huvs1modFQh8s5SGvyn6o71uIdFRJkDu9QOVKDngSjiP9
	ZzlEo=
X-Received: by 2002:a05:620a:4004:b0:8c7:1b40:d096 with SMTP id af79cd13be357-8cbc8e79d8bmr1105602185a.9.1772449621109;
        Mon, 02 Mar 2026 03:07:01 -0800 (PST)
X-Received: by 2002:a05:620a:4004:b0:8c7:1b40:d096 with SMTP id af79cd13be357-8cbc8e79d8bmr1105599485a.9.1772449620636;
        Mon, 02 Mar 2026 03:07:00 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65fabf6cfd9sm3331067a12.22.2026.03.02.03.06.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Mar 2026 03:07:00 -0800 (PST)
Message-ID: <b747b545-12c7-4e33-95ae-ffa114fa13ec@oss.qualcomm.com>
Date: Mon, 2 Mar 2026 12:06:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 10/10] arm64: dts: qcom: sdm845-google: Add STM FTS
 touchscreen support
To: david@ixit.cz, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Henrik Rydberg <rydberg@bitmath.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Petr Hodina <petr.hodina@protonmail.com>, linux-input@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, phone-devel@vger.kernel.org
References: <20260301-stmfts5-v1-0-22c458b9ac68@ixit.cz>
 <20260301-stmfts5-v1-10-22c458b9ac68@ixit.cz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260301-stmfts5-v1-10-22c458b9ac68@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Pe7yRyhd c=1 sm=1 tr=0 ts=69a56f55 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=sfOm8-O8AAAA:8 a=8wVjoaYgGRnUAGDsoUAA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=TvTJqdcANYtsRzA46cdi:22
X-Proofpoint-ORIG-GUID: AWtATnz47YoziWjnVt6BjlG1nc3n20M3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAyMDA5MSBTYWx0ZWRfXzcYbpvHyLFQc
 FA7TNX7Xbl4hYdwCMgEsM6OHsm0iC9/50UlT2xYneDZkR4XClo034HOH84O2tC4FRBz7gH8LGQO
 /0g5JMnLAxYGRYbiCsbK/Wl2WPa/25XrSC5mbnmvjU+DVHbjwqu61DXSkmpNeyxJrUBzJ2I9fyH
 hV+50XTir8UbYZs1zfUCi86HtNUfhbV9K4MwTrOev8Z74mPDE63S5qe5BUnvNtaJ1T/PSQsC/XD
 bQ93WiJtdUr21NpLbN/t1JPFGxddpKGNroOPSISp8886ncQVOk7/1oSA0wk7TBrBdx38XTvTAmy
 wfvlLdKaxnzuQI2DMDzbnWRssBypjgEcvKGWHN3OPHQjxy6XOuK/VH1FvsvIqZ5YtbgHMk7puWE
 qdXqmFRUC2CQgShVm8VdFMUQFfC6Js+DAQSVUQv9HP089GM4iGd38HIAHXUSjyEC8TB8fm/OkLP
 +CJsnAzZhPIpxOGqg6w==
X-Proofpoint-GUID: AWtATnz47YoziWjnVt6BjlG1nc3n20M3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_03,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 impostorscore=0 priorityscore=1501 spamscore=0
 adultscore=0 bulkscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603020091
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269928-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[ixit.cz,gmail.com,foss.st.com,kernel.org,bitmath.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[protonmail.com,vger.kernel.org,st-md-mailman.stormreply.com,lists.infradead.org,kernel.org];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,ixit.cz:email,0.0.0.49:email];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-0.996];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: AD71A1D7387
X-Rspamd-Action: no action

On 3/1/26 6:51 PM, David Heidelberg via B4 Relay wrote:
> From: Petr Hodina <petr.hodina@protonmail.com>
> 
> Basic touchscreen connected to second i2c bus.
> 
> Signed-off-by: Petr Hodina <petr.hodina@protonmail.com>
> Co-developed-by: David Heidelberg <david@ixit.cz>
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-google-blueline.dts | 21 ++++++++++++++++++++-
>  1 file changed, 20 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-google-blueline.dts b/arch/arm64/boot/dts/qcom/sdm845-google-blueline.dts
> index fa89be500fb85..2501104b06e1b 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-google-blueline.dts
> +++ b/arch/arm64/boot/dts/qcom/sdm845-google-blueline.dts
> @@ -26,7 +26,26 @@ &i2c2 {
>  
>  	status = "okay";
>  
> -	/* ST,FTS @ 49 */
> +	touchscreen@49 {
> +		compatible = "st,stmfts5";
> +		reg = <0x49>;
> +
> +		pinctrl-0 = <&touchscreen_pins &touchscreen_reset>;
> +		pinctrl-names = "default";
> +
> +		interrupt-parent = <&tlmm>;
> +		interrupts = <125 IRQ_TYPE_LEVEL_LOW>;
> +
> +		irq-gpios = <&tlmm 125 GPIO_ACTIVE_HIGH>;

This is an anti-pattern - you can translate the GPIO handle to an
IRQ handle, but unless the hardware is spectacularly odd, an interrupt
reference is usually what you're after

> +		switch-gpios = <&tlmm 136 GPIO_ACTIVE_HIGH>;
> +		reset-gpios = <&tlmm 99 GPIO_ACTIVE_LOW>;
> +
> +		avdd-supply = <&vreg_l14a_1p8>;
> +		vdd-supply = <&vreg_l19a_3p3>;
> +
> +		touchscreen-size-x = <1079>;
> +		touchscreen-size-y = <2159>;

Are you sure about these off-by-ones?

FWIW

input/touchscreen.c:

touchscreen_get_prop_u32(dev, "touchscreen-size-x",
                         input_abs_get_max(input,
                                           axis_x) + 1,

				            notice ^

Konrad


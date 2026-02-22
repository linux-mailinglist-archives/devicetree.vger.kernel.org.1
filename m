Return-Path: <devicetree+bounces-267147-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CG2HCAHNmmkjjgMAu9opvQ
	(envelope-from <devicetree+bounces-267147-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 10:31:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BB24816EC69
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 10:31:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 545E43013267
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 09:31:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C4312192FA;
	Sun, 22 Feb 2026 09:31:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Dj7qDZOd";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ghlA6yVV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9A2E481B1
	for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 09:31:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771752702; cv=none; b=Bmfxs2LeKyPUbV8y8+7wKmS4Ma7h4EJZNxkz3y2VA98rDr54KR3A9JE89z24yzRPaULMeD4mGGwuSnu6rT60BYOZ+WdjmX4nVLpg9SlJfnqLaXjB0PGNJ4rPWgYFekn7gMHCxziu6fdsoWXjajT9Vb7ZRg941z5z0fPHNbCiiOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771752702; c=relaxed/simple;
	bh=jVtRcetnItzqIICrqf4fSDzw7z8wCKY5rKNLHeR1a1w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=m3gxVG/5Zb/vkqDQUQo6WaMRbm/GC763E5FPm3SxRqFse4A6tX8TucxY1sbH55sfxxQgAwgG86EHftR4GHFKVE4LlU3gS5flYoQ+6gQ/Kuj+CmyMGd00DuFaS+aXXbx5rnXQ3TvFFMijFgAO88Meca1yu2ngVORTEYVsF55wSqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Dj7qDZOd; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ghlA6yVV; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61M5biQ6248562
	for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 09:31:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ACu3btGVkmCJZDXJw7qMC+4nsRBcyE8bkGP0SJhvN0k=; b=Dj7qDZOde61qUHSj
	tr/M8jQGhw02DHqT0Ssk9u6W2uEC++Th34gt2Gv4QpGrgVla+y3ufnLMTKuVMXBB
	AlcFYmc7fjttLYT1qHwWB16V9fK4XfE265aWyU2gjQ9jNfquTznNtAgdFh7ThFPA
	vr8zL8IwS0pyAZ0ojlqn2jroqFS5oEyGcRnfheIiQDJxD8gSdiC9mlUF0rHWNwtr
	+e5NIuKtUZtp8zS6BFs9K1lylafjMD7pZyoxHfeoqnv5EL2vl0fotiizX2+IxnRo
	hod624XcRYlDCb98r5BodP7EY5mzTjyrBXe5RoD4x5sh6fvN8r+ut0ncwH2yZoyX
	E29IIg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cf5v3t0ch-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 09:31:39 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cb4b8e9112so313566485a.2
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 01:31:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771752699; x=1772357499; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ACu3btGVkmCJZDXJw7qMC+4nsRBcyE8bkGP0SJhvN0k=;
        b=ghlA6yVVMT/LQRyZ/BcF27sDG6JmkPtFvTehJJq96jXKPMXUO00xWJNlbkJqwyHKlc
         Rjs9jajbNXu6VI0vJ+g+yH2l0eaXrvYTCwB004mG4WxMtZZRraC1BdBcjHnye5giRB04
         E1rvgvrpF+/Cfzg/sagheiXYYow/75XHLkqf+FZwyq9EN9ycyueVs1gM+QkuqCiMJdMo
         ghRuaziA5Td9sbGz17l0eEM7ABqUPkk8rlDsnskKW9scPO/pK8+RsgroCoUpWlL1olCI
         zKsACinisiCgXaNwBLKRttok6RrCTCF4c+SyrBgHx719XpO1q/YwU56GpHabe59w9fF6
         2iyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771752699; x=1772357499;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ACu3btGVkmCJZDXJw7qMC+4nsRBcyE8bkGP0SJhvN0k=;
        b=laxXoL7NTKCdPepwm1Cv7rLcwb1misj0ggQx2923Bn51JlLrOyom1w1wEmlMwrWJja
         7nluqDKc0/OiiWlAmA4o4uMrzSzNQ00twcb6cUZ8lFerp7nZR3W/JqEcur41AHO6eRII
         VK4p0c3f7059A+pzjPOzWJBLZy1Q4+sOPcmImIXq9utHCmn1gukdpAHiL1qP2S7yn1gl
         vqHhwEZ8mj6TSHW8LLRpw48apMxOJOCvXvz96g3kWVMeoNIEjJR9TpUY1/Y15Aa0aLvD
         g2tjypM+Oz193uWmIca45fvTT2Av7oDeZf7UUmnYpeanuPJPYCogxgJIts+q7JtIoD/J
         mvgg==
X-Forwarded-Encrypted: i=1; AJvYcCUe3RRDgn5IDTh2jzxM8Zb3g2FqQ1zD/fMlNHbgEUPMmJxqO3IOro+2XWa0uCAkkqgUkKfLaCF5kZGp@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2suRH2Qhkeo+0qtlxzV1BEDhGMNcIysLzfRFBzsv3HlyNuHVe
	f4sosjmHldBo/loA/24Hgc92l+yYV8rhW1UjyNaKtPeku1b1i90olkGJGNBSgPuUbzucXhoNWb6
	O/kV2mGORBSi8gbyz5gFNMObBW2sEkUEv6XdhZ8pRQG298cYoTByZUxsrGz+xi2L8
X-Gm-Gg: AZuq6aKziZY+d1/ckt4fLGd3loLQ0zACYOcZD3BvfTUjy7zrTej32ti1aqR57/u+Xw8
	/NqaWjtBykyT+IvAM/dNLZm/wJPJNwLMu+Px2DWCeX8wUoD+LG5JS4dQZAdGmVIVJIKqZTT+8R7
	QL8tRYRZFDvvCztW51DU9eI9YrIxNeFb0b5e9Qf8VuoW8JMto1SZnzyZNQCenrYrh1Z34/lmv3W
	NzcHnrBg2sO9In32Rs21XGH34oJHJmlGE8FsysMNra5yC363ps4Y/bM8oC+I6QYFjK/ofDQtWSR
	pDrgGF/MBzyiI+ckehuW6XslOgqywHCwKC1meys7EmUKHrnHFmXWjKwj+aTCQa/USwosAZ5DKe+
	IygTKD5AmGawLoPYau6c4Bqjg5WaV71v14inpzgldIHOb4sv2
X-Received: by 2002:a05:620a:25ca:b0:8c6:d309:f9c0 with SMTP id af79cd13be357-8cb8c9d036amr541424985a.8.1771752698908;
        Sun, 22 Feb 2026 01:31:38 -0800 (PST)
X-Received: by 2002:a05:620a:25ca:b0:8c6:d309:f9c0 with SMTP id af79cd13be357-8cb8c9d036amr541423985a.8.1771752698475;
        Sun, 22 Feb 2026 01:31:38 -0800 (PST)
Received: from [192.168.68.114] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-43970d4c60bsm10446166f8f.27.2026.02.22.01.31.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Feb 2026 01:31:37 -0800 (PST)
Message-ID: <fec74478-9692-4fd6-a102-dcdf814701fe@oss.qualcomm.com>
Date: Sun, 22 Feb 2026 09:31:37 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] arm64: dts: arduino-imola: add support for sound
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, lee@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org, sboyd@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, alexey.klimov@linaro.org,
        r.mereu@arduino.cc
References: <20260209142428.214428-1-srinivas.kandagatla@oss.qualcomm.com>
 <20260209142428.214428-4-srinivas.kandagatla@oss.qualcomm.com>
 <230d5d49-b86e-4696-937a-a6faaa9e45e0@oss.qualcomm.com>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
In-Reply-To: <230d5d49-b86e-4696-937a-a6faaa9e45e0@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=YL6SCBGx c=1 sm=1 tr=0 ts=699accfb cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=Ar_5JxPjAAAA:8 a=yUvOtWU7moQbhUsRCvEA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: 0NXHRiOx9J_07r7KC7pOyHanTkoYp6Fj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIyMDA5MCBTYWx0ZWRfX1IwxoKuKsBpr
 8aypQrZBjLEG3lO3cm5jE4+i+obk+x/8oyrhlc31D1CqS1r4Av/vQF6ZSTkiNsMUGMlG1LXkL8h
 RyXQOgd+aw/Vlt5cJM6JfADSlj36jbL82ONsZaxQEGFrY0RYLPhfunqKfW0dbDC2KLpFW4lhfKR
 kbyWAPgbogSeR6FiPzMaFgbVLiS1Mrb87CjYKSOvILMJrtuO1rlh7/KveIha86/wQ/8VCTzfBWJ
 PnQs37FXJ/dswCmE4aiDaNoeSp4uPhxrpKpWOPAM6svxpdRjC3qY7OLtoxtumOVrKIXns3yunWR
 hLNL9M+BpFBSr0L0jv6tijpMFFtrFpRF+QOVORDSiXHBverS6qtDa+oPbkjv0wiPIj4N3GRKYDn
 gQOdUFgWIHTPdg2duLbjOZQMrcObYQgBgUzENmeImo07g6+4uDiDmcX+b9+yWE5B1llLQhb4SGU
 TSCCqcVvmtwGP2oRTyg==
X-Proofpoint-GUID: 0NXHRiOx9J_07r7KC7pOyHanTkoYp6Fj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-22_01,2026-02-20_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 lowpriorityscore=0 bulkscore=0 phishscore=0
 impostorscore=0 suspectscore=0 clxscore=1015 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602220090
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267147-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,f000:email,arduino.cc:url,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: BB24816EC69
X-Rspamd-Action: no action

On 2/10/26 10:07 AM, Konrad Dybcio wrote:
> On 2/9/26 3:24 PM, Srinivas Kandagatla wrote:
>> Add support for sound on Arduino UNO Q board, which includes
>> - Headset playback and record.
>> - Lineout
> 
> Looking at the images, I can't see a speaker there..
> 
> And looking at https://docs.arduino.cc/resources/pinouts/ABX00162-full-pinout.pdf
> I *thiiink* there's no I2S out (which is a little surprising)

there isn't, there is only Ear, LIne, HP and MIc.
> 
> [...]
> 
>> +		hph-playback-dai-link {
>> +			link-name = "HPH Playback";
>> +			cpu {
>> +				sound-dai = <&q6afedai RX_CODEC_DMA_RX_0>;
>> +			};
>> +
>> +			platform {
>> +				sound-dai = <&q6routing>;
>> +			};
>> +
>> +			codec {
>> +				sound-dai = <&pmic4125_codec 0>, <&swr1 0>, <&rxmacro 0>;
>> +			};
>> +		};
>> +
>> +		lo-playback-dai-link {
>> +			link-name = "LO Playback";
> 
> "Line Out", "Headphones", etc.? I know if it's user-visible..
It will be via UCM.

> 
>> +			cpu {
>> +				sound-dai = <&q6afedai RX_CODEC_DMA_RX_0>;
>> +			};
>> +
>> +			platform {
>> +				sound-dai = <&q6routing>;
>> +			};
>> +
>> +			codec {
>> +				sound-dai = <&pmic4125_codec 0>, <&swr1 0>, <&rxmacro 0>;
>> +			};
>> +		};
>> +
>> +		ear-playback-dai-link {
>> +			link-name = "Ear Playback";
>> +			cpu {
> 
> Let's uniformly keep a newline between the last property and the following
> subnodes, and let's sort all these nodes alphabetically (i.e. both under
> /sound and codec/cpu/platform within them)
sure.

> 
> [...]
> 
>> +&spmi_bus {
>> +	pmic@0 {
>> +		pmic4125_codec: audio-codec@f000{
> 
> This definition should definitely live in pm4125.dtsi!

agreed.

> 
> missing space before '{'
> 
>> +			compatible = "qcom,pm4125-codec";
>> +			reg =<0xf000>;
> 
> missing space after '='
> 
>> +			vdd-io-supply = <&pm4125_l15>;
>> +			vdd-cp-supply = <&pm4125_s4>;
>> +			vdd-pa-vpos-supply = <&pm4125_s4>;
>> +
>> +			vdd-mic-bias-supply = <&pm4125_l22>;
>> +			qcom,micbias1-microvolt = <1800000>;
>> +			qcom,micbias2-microvolt = <1800000>;
>> +			qcom,micbias3-microvolt = <1800000>;
>> +
>> +			qcom,rx-device = <&pm4125_rx>;
>> +			qcom,tx-device = <&pm4125_tx>;
>> +			#sound-dai-cells = <1>;
>> +		};
>> +	};
>> +};
>> +
>> +&swr0 {
>> +	pinctrl-0 = <&lpass_tx_swr_active>;
>> +	pinctrl-names = "default";
>> +	status = "okay";
> 
> Please add a \n before status
> 
> otherwise this looks ok
> 
> Konrad



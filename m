Return-Path: <devicetree+bounces-257895-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ePWsF9y3cGlwZQAAu9opvQ
	(envelope-from <devicetree+bounces-257895-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 12:26:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA9C55F87
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 12:26:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id D59836088A2
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 11:20:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B73C379994;
	Wed, 21 Jan 2026 11:20:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LdvjcH6F";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DICpKbCL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B2303A782F
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 11:20:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768994418; cv=none; b=BG4oBB7OMcmDKeZ2yiesCO7Sm08O/I0vkgEgI8AmLIpd0G2gZ0Rh13tmZa0lS4VA8v+PYfZpn6RQDLLgr06TaafQjbXyfk+1fioIma2zr8krLu4XWbds0mR+m/4AG9aULAsIl/XYRE2SLHVaZ7PXdVELNS/zwLBH0KfIBO+66+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768994418; c=relaxed/simple;
	bh=Fe72888dx0logBUYzKY1nd2bksaj64WbdT4F2pmG5lI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QwDMmdW9ed/9i1qBqwB/fQFqfzhpnxzNDiWVTsXSe/JH4Rp2nSyg1GonNokE5w0Twk9mUDnLm/tnPx/qJ5CK1m42X9T6r/VXPLYu1t7k1ZN8MkUpClPU7ADQSR3ttrMSeTI9Iv82AV90VlJdVBRGm8wBaFOCqWx/2vkUcRhx0k8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LdvjcH6F; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DICpKbCL; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60L9fcFh3992222
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 11:20:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	A/S/6rux+gV91qHACZNnJR3t0uoDPQWmbGPap1ljJsM=; b=LdvjcH6Ftv6af+oO
	8dvRlsl5A8eDpSs63narXOebFBEiTI4wfAIeD3djcMZZTR2F0geL/SQuym3pCg1p
	hR9di/ftZwSocAb6TsoMQm7qY5V4iWbCwIIxFVbHT1D6d/Y9gwGd6N9fFxzDDiUI
	wI98EyBmwmb1tx+odwKVVN22lFunHbce7Hp5SO8Ob21IOYtpjsU4wxWzNWpqnb+Z
	pxSdIydhVmrPif77+Z989RvD6a1k5pH6c4Zccq3BV8LWpYyFtFD1WasYCLmH+0/9
	iB190xjf28IWobf6J7KGg5GTakmI3CWhH4DfOb/bonl07d09X0A+lBi6iTmZMacH
	I3+akg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4btpm41y9m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 11:20:14 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b2e518fb75so84204185a.3
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 03:20:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768994414; x=1769599214; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=A/S/6rux+gV91qHACZNnJR3t0uoDPQWmbGPap1ljJsM=;
        b=DICpKbCLOi3PmgYKgY+t1W2JIjMC6ljNfEYP32DsE+43wEQe5jauX2SZV1GfuGdEcL
         nCCTp41isTSLlIiAh7LXNjodJQwI9ypNlcus6KzC36sJzRb4G95S2AfDxQZHvSB8wlX5
         DXZ2JJvqm1KXGxhIHggq8FeKN2EexPe/EM5KzMmwW3Hcdwni9AcRBgfVgpQ88ClswmUt
         hsbLNtzbSdabmstrHrSZBNG94he9D50Hm2Aw5fQ0K1itHUeiopjqTlYjqfKseR51HDuI
         9qoaiWuNjprMdZ34WFjeS4ekCdv1eP9lKTN7wctpYyGhi5mbM3pbtN04cCskpu5qSG6O
         A7lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768994414; x=1769599214;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A/S/6rux+gV91qHACZNnJR3t0uoDPQWmbGPap1ljJsM=;
        b=OjZhipA+liPUQE5M5eXF4WDIsO+whOobgfjcMSk7eMIuoVJ22h+hMqjfwMy5vJBD87
         IeybmvKVxoDoBTrWmf5E+Z1aek2RxjJ2IaWOJkeKSlkViRIvkXnUFF8f1oXu0F3vuIFh
         m6QrWLcQ2A5NG/qMhwOEJDJmFb8xgmuT/bS2+ldQHHtfTcxkbrFEXmdtgv2n6yDQPlJd
         Vkh0E8jztLMaaCj8aDUjkyhYBoVI2ZbILD/E05gu5+FFH3R4Wyl9H+B3C3d6KFgfdY8E
         vqO+/BPE+pX4flpdyVW56MRU2q0GtBe0THFlUJ3ruycRuMtzIor0VwSk1ygGDvEiphkI
         Byew==
X-Forwarded-Encrypted: i=1; AJvYcCVsM4TpVNXD0/qHA2QJ28W9KijVAhgbSNv21rU7prY4pVzAd8q+uKpFOu6wIZacLvnQHUf5MA7m58Ps@vger.kernel.org
X-Gm-Message-State: AOJu0YwKUxZdXYNvkRfM6+3xh3/MwpEW+SFyW1Mv9RS3s5RavH4gSwA6
	/dN8stS5TiMADGMhkDY/mTEFu72sjHfxOtlBT1b8XSbVbBwqZQhhHuaDudVdrh/l6cSNNMilS8R
	3qDv5lkeIVpdLbruEZgEnJpm7J8oeAZfUi0AUlN/QRp/i3jJRfZRO/AuEX/DtW7D0
X-Gm-Gg: AZuq6aIb9cz87eTrAMlI/vjSrgZDLIGlDSyOR2SPeRFySbgfddzUYadDDxQTITXwYJz
	CmQCLoyJva3ItfYrLBHV0zUcW38Rtf0Sbx0Hyi+TpQCk53gw3+jyv3bDpmPpBPduK1j6TdPdEcu
	jDU5i+UniHE7+OKdcXFI8CiGozTC1kbNm/GK/0Q9uxIz8CkpsGuvMsxrxPM3yQqGPCj9RF25jQK
	GSgjFWJTvmtYxdJAk1FJ2yMMN2fLMhgSlP98Iyj8/nev89c5HKr+65rD4HRIgTzD1oiSCCyL+Tg
	hnLd25CaasqcsXXcFCvIMNIhp59osdA67s36JwWrVbvskT9nLqWIx0rwLA6V5eYe+wGgsLh/ycq
	K1ccSWypjtubohp6kJkUDZDhfbDOuGqnwBoBpe4PfgqJ/is5Hq3dNcYLfYye+sqGUXTs=
X-Received: by 2002:a05:620a:44c1:b0:8c5:2b02:83ee with SMTP id af79cd13be357-8c6a678095bmr1841670385a.6.1768994414021;
        Wed, 21 Jan 2026 03:20:14 -0800 (PST)
X-Received: by 2002:a05:620a:44c1:b0:8c5:2b02:83ee with SMTP id af79cd13be357-8c6a678095bmr1841667285a.6.1768994413432;
        Wed, 21 Jan 2026 03:20:13 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-658029e060asm2899097a12.21.2026.01.21.03.20.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Jan 2026 03:20:12 -0800 (PST)
Message-ID: <c706c227-6f3c-42a5-95bd-9ac739d2fa16@oss.qualcomm.com>
Date: Wed, 21 Jan 2026 12:20:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/7] arm64: dts: qcom: Add support for ECS LIVA QC710
To: Val Packett <val@packett.cool>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Nikita Travkin <nikita@trvn.ru>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260120234029.419825-2-val@packett.cool>
 <20260120234029.419825-10-val@packett.cool>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260120234029.419825-10-val@packett.cool>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Jv38bc4C c=1 sm=1 tr=0 ts=6970b66f cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=8Jorsjt-1VLPBPjQKnoA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: Mcg4HPZZKPVEm1L8XxftEwqJ00E-tk2A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIxMDA5NCBTYWx0ZWRfX9+gWixvO7IIu
 vY95nRt7/19ZVE/LETPuTZrbJxheS1nqC38hUewdAWTcHI81y1k+C4jJStQ7EDebRuPwPPjwbc0
 3s6RMvNrh3COZ7cJGoaIUQc2lRspv/2vjwujikjbx0j6FTro7m/CEv9idZVx5GGbgZYTRI8qDNo
 VKRSjiHhDzPXkJ01XbFJfEzS5rsZ+xhtxYB7rwyb90nmf1aH4uuz0WWu4K6AkMkmlvE/eonVOMQ
 RIYKf83GE40qsp+K3x7VQ5eAJZpKZI+qC6LgPLqShS+ygpjpZCTmczLWdwTvyNZdcFqpfR/ubYj
 A8vxcbc2KsftMGFunQ9YyH/o/zFbVwFOCmQ2D9O1FldpvMmnNRtqX7JsMbL16lrIhLK371fH7qX
 uJrDEQM2y39kYXCICVVBi+yaL+2ONAIM+sKiV541bnaJ9S4agKuffhGhPK7/2qKNlI455p9uBUI
 Gy3ZyUCzlgbft5YoSag==
X-Proofpoint-ORIG-GUID: Mcg4HPZZKPVEm1L8XxftEwqJ00E-tk2A
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-21_01,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 clxscore=1015 spamscore=0 lowpriorityscore=0
 suspectscore=0 malwarescore=0 adultscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601210094
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	TAGGED_FROM(0.00)[bounces-257895-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,packett.cool:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
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
X-Rspamd-Queue-Id: ECA9C55F87
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 1/21/26 12:30 AM, Val Packett wrote:
> Add a device tree for the ECS LIVA QC710 (Snapdragon 7c) mini PC/devkit.
> 
> Working:
> - Wi-Fi (wcn3990 hw1.0)
> - Bluetooth
> - USB Type-A (USB3 and USB2)
> - Ethernet (over USB2)
> - HDMI Display
> - eMMC
> - SDHC (microSD slot)
> 
> Not included:
> - HDMI Audio
> - EC (IT8987)
> 
> Signed-off-by: Val Packett <val@packett.cool>
> ---

[...]
> +&tlmm {
> +	/*
> +	 * The TZ seem to protect those because some boards can have
> +	 * fingerprint sensor connected to this range. Not connected
> +	 * on this board
> +	 */
> +	gpio-reserved-ranges = <58 5>;

Would it still work with <59 4>? 58 seems to not be related to a QUP,
rather as an audio MCLK output (would that be why +Nikita couldn't get
some sort of audio working on his aspire1? That DT has it reserved too)

[...]

> +		data-pins {
> +			pins = "sdc1_data";
> +			drive-strength = <2>;
> +			bias-pull-up;

here you do:

drive-strength
bias-

[...]

> +	sdc2_default: sdc2-default-state {
> +		clk-pins {
> +			pins = "sdc2_clk";
> +			bias-disable;
> +			drive-strength = <16>;
> +		};

here you do the inverse

(the former is preferred/more common)

otherwise

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad



Return-Path: <devicetree+bounces-257936-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eKPQNiDMcGkOaAAAu9opvQ
	(envelope-from <devicetree+bounces-257936-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 13:52:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 86718571BC
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 13:52:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 5ECF94A2F35
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 12:45:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9111D481232;
	Wed, 21 Jan 2026 12:42:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JDqEWHGx";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="eyTz9S/d"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0C4B27472
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 12:42:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768999341; cv=none; b=uxckvJbmiuteJ9lSRgnNj1Xgy/3S/A967UXuGpnS6YrDY3lKqVFOcjdua2qVnWeCiHLyU4rVdYPNM60fn59h6paiUbpXkf6RhQj5bauXq6TyucHDWTtiXr+Tf0TJVyPDihwwQcpNipaDI3ia1BPcxbuYg+YWc/OAzohSvdOJkcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768999341; c=relaxed/simple;
	bh=vXvrWCbPZshubxl9KodIBlxMPpxf8R/PEWbLicFw3s4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=c0k3HChzTzuazP51yyjw4LmGWNT51N8Pg782ERAeSyWf2dFTCJs+uxT4nQz40zih7jIKzr9A76U2huyKUOV6zcf3mgw+jn28GVzGOQimYWKcTI5MrxR4o5wKAr4RO3vVjw54QpIm2eYYAZNserScYu3Th9Au/ho2L/uvyC2Qp2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JDqEWHGx; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=eyTz9S/d; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60LAeGV62816867
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 12:42:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kdH5rm0S2Ix+Vx62gLP2DpOzpxqm8kJTjnlDwLQwkjE=; b=JDqEWHGxzTeKMrdL
	vA209huw8yPPtN95PeJB8qJInz3N7p+5Z+osw1xN1Txe7Cxvj2gW6QXFJUnAXdxF
	IeLz8JTmSpVtHEaagvsTdVQ3hOE4Ko6pXdd8/5rlbtDlp6Dh9uwcRAnjItECSjM6
	SgtuLau6YLRnX3SY4pbVcRJ+nEpSGu2wPwj5Zy/hYl4rNJEXLTVavgaQYIK6soNo
	0zm00KwPr0aKNqUHtl6GOBF/nLoScVlKEtDXt55tGC3vk3e191DE0JuZgg+O2tZg
	yqd1mR6EETuCFpom0EJCewqWBg9JE59KztQyiTtqycDn+rp484hAzymRhS82pyvy
	XhbEIA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4btw8kgcmn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 12:42:18 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-894662cba4fso4491346d6.2
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 04:42:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768999338; x=1769604138; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kdH5rm0S2Ix+Vx62gLP2DpOzpxqm8kJTjnlDwLQwkjE=;
        b=eyTz9S/dkVtiLr3LgLhC0IDNmyRuaupjFeLNe+MC4mYCNkIPL5+HoxL5q9ARTl97Wg
         nuzLjaCSZ5aAw++La1AbGAppq2vCc4lEJiYmW8gn0f9zp9xcoiMc0YORlZ2ai9VCD9W5
         bx9JhIRXKafIokNC48yRE/hc+pebv4OEpgt1tTM7piyIdApE5b/TabZ270eYGcbvFv+c
         5FWLe6ccf5uQNYBzuhID838xto3koloQEEbMUWoPwqiB2fwbO8lRmF4/38Y9Mk6STR13
         x70Fh+ftH6E3rMLW7nRPfqUYkOMCtDxeWeCt2BLq+axCzBsPxMm+l9FeWYHkFkBGn3oj
         rdjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768999338; x=1769604138;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kdH5rm0S2Ix+Vx62gLP2DpOzpxqm8kJTjnlDwLQwkjE=;
        b=pGEngYb2zTdZz0xYBOZqC4YVUHwEWdMDImlopoXsSNbF7k1y33KS+rM1YDcDZK9a5W
         DXogYFckvsXBz/nLSSfyPxnWT/MrZ277U4x2hSHdWxZA44kZhUFCoei/szaa6hrIsnbx
         i4gCgru48CeWnutDiWLZkXNNEy1OkS61vXMU0yVo/ApYuEBKb7r58N1aGao53anR09cY
         nVSwUhnjD0CDgN7yAxDoEWv50kLGGCdyrxTkrJ+HnqDofjKRNx06+aWzUlHya2DvMyBz
         Z6WKE3GGUvXKT4VO90DFrUY+CswfKusO5/uvqi19CjgQ4KRaxE9tKIN1YVCp8J08loHF
         Eyuw==
X-Forwarded-Encrypted: i=1; AJvYcCUfzhiLrK8D6bk2k9YN8I69aiQDK1oMuRbUFn2Dn519unfsEOU4J7ubFbJ7GkiaiU7PoQAaHlvD/R9h@vger.kernel.org
X-Gm-Message-State: AOJu0YwRSb1Bq+j/0tFN455/KK+vCBiUi7ZUdPk7+UNIXCqiZZmOK1Im
	R6d37sEXrgD4oOb/wGtPjr3HPkx7eeS0ATWBHnq2wfEPDqWqTgE2L7vHbx09epgvl4N5c19/tDK
	IEwpYlfOVUTEQmDS0Fy96/hOmdKn6AUcJ2vaGskLyThmCYHcJ2l7DuWE+tO+GXQ/X
X-Gm-Gg: AZuq6aKreWhAcccN+eoj7J1sgAAmETdF9dJJtUkLXeBnoci+ie67SCyPtVUh4Q5Qf+I
	Q50l1aK5ZEiKf7Ci6XKzZO9y+5KD6V8TEMnCUTj59f7oLnedHrY3KU3XlBin0DqvjRYZ2hdHMHC
	wFSlZz1SAbOlgNpehU8YSGXthfdZCxrfDDqx+GYnGa04L5NkSYogBVTOayEetkklzlrXkuLs4MJ
	I4Oa0GmEDOXyK/+M129vhI+L5ASl2psE5MfJG2KXONSa8gsFnC7r0BQeUlWXAuwhSJxK/Z22I+N
	FJ1cE8vkswBgiJ3POUAhw2D71n2ceWJWaoF6CyvTHnTI72jZSUzI/2R9ukioClkbBIfqYakB2Ei
	am4Q3tcBN5wYzPk10Y7G5KyW4U3CyM8hxVHcwBbX+EP57XIegwDxIC0571Ul2yvUf7GM=
X-Received: by 2002:a05:620a:319d:b0:8c5:2ce6:dd4 with SMTP id af79cd13be357-8c6a66e36efmr1931174785a.2.1768999337849;
        Wed, 21 Jan 2026 04:42:17 -0800 (PST)
X-Received: by 2002:a05:620a:319d:b0:8c5:2ce6:dd4 with SMTP id af79cd13be357-8c6a66e36efmr1931171585a.2.1768999337195;
        Wed, 21 Jan 2026 04:42:17 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8795a31bffsm1555355966b.68.2026.01.21.04.42.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Jan 2026 04:42:16 -0800 (PST)
Message-ID: <d2aff319-d98a-4007-bfb5-8766e3c3c206@oss.qualcomm.com>
Date: Wed, 21 Jan 2026 13:42:14 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/7] arm64: dts: qcom: add device tree for Xiaomi Redmi
 Note 6 Pro (tulip)
To: Gianluca Boiano <morf3089@gmail.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Cc: andersson@kernel.org, konradybcio@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, robh@kernel.org, david@ixit.cz
References: <20260120180052.1031231-1-morf3089@gmail.com>
 <20260120180052.1031231-5-morf3089@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260120180052.1031231-5-morf3089@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIxMDEwNiBTYWx0ZWRfX1Vj+GTm+UAYF
 QcHdeeXl+PTIVCHRp//D069WNKhvt8q66AnSrlHSJZDNryxylR5OomIPRiOMKyQ0SmI/ZZcaNA7
 KQTV6HZIl0XOsHzZshAJw8ZOFOFGeFgsojwJENQXaSbDGh97QVxKpwZFEa5wiymAMX/eIuk6woP
 PsrXYgmAqy9TgdSdziBA1jEEJqtlAd3B+nYhtFi7QUSmcsxbdlmcHucNccVj1U7Fk87bESEgu7T
 GVky0oAdgUUBTFZacdwi0xftgaFRgB6ch7gxcxnWaixZD27Ke7FxL/jyEeQgcRu9FSRRTxVI525
 VVyBIsQiL4qcPdh/BLwLd7ZKgdL97RsgK4KdEv7MsbjZxXZ8SZNckk3iw/4zs6/uhKRJo2nfAWu
 5WNFMv1QBYKOCgF7XYkGlbLT0z4Eus/1MsrZwyo2GMhjwRGJ09CBVXECoVGiYa2c4/z/jPF+IOg
 u8IIPPyglWQTcwwWh6g==
X-Proofpoint-GUID: mGSAPfKe_e7pVkkfUzIS8zyuP1i9h8nC
X-Authority-Analysis: v=2.4 cv=BPW+bVQG c=1 sm=1 tr=0 ts=6970c9aa cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=pGLkceISAAAA:8 a=C1k7gCzBn4eoMjjkf0AA:9
 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-ORIG-GUID: mGSAPfKe_e7pVkkfUzIS8zyuP1i9h8nC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-21_01,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 phishscore=0 bulkscore=0 malwarescore=0
 suspectscore=0 clxscore=1015 priorityscore=1501 adultscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601210106
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-257936-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	FREEMAIL_TO(0.00)[gmail.com,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 86718571BC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 1/20/26 7:00 PM, Gianluca Boiano wrote:
> Add initial device tree support for the Xiaomi Redmi Note 6 Pro
> (codename: tulip), a smartphone based on Qualcomm SDM636 SoC with
> 4GB RAM and a 6.26" 1080x2280 display.
> 
> This enables:
> - Booting to a framebuffer console
> - USB support
> - Hall effect sensor
> - Battery monitoring
> - Charging (pm660_charger)
> - Status LED (pm660l_lpg)
> 
> Signed-off-by: Gianluca Boiano <morf3089@gmail.com>
> ---

[...]

> +	reserved-memory {
> +		ramoops@a0000000 {
> +			compatible = "ramoops";
> +			reg = <0x0 0xa0000000 0x0 0x400000>;

This is almost the same as all others, excluding platina

If you think it's beneficial for your "ecosystem" (with e.g. a recovery
or major custom ROM kernel), you can unify these definitions since it's
all configurable anyway


> +			console-size = <0x20000>;
> +			record-size = <0x20000>;
> +			ftrace-size = <0x0>;
> +			pmsg-size = <0x20000>;
> +		};
> +	};
> +};
> +
> +&framebuffer0 {
> +	width = <1080>;
> +	height = <2280>;
> +	stride = <(1080 * 4)>;
> +
> +	status = "okay";
> +};
> +
> +&gpio_hall_sensor {
> +	status = "okay";
> +};

Seems like all of the devices except A2 use this definition, maybe flip
it around

> +
> +&pm660_charger {
> +	monitored-battery = <&battery>;
> +
> +	status = "okay";
> +};

This is present on all of them

[...]


> +&pm660l_wled {
> +	status = "okay";
> +};

This seems to as well


> +
> +&rpm_requests {
> +	regulators-0 {
> +		compatible = "qcom,rpm-pm660l-regulators";
> +
> +		vdd_s1-supply = <&vph_pwr>;
> +		vdd_s2-supply = <&vph_pwr>;
> +		vdd_s3_s4-supply = <&vph_pwr>;
> +		vdd_s5-supply = <&vph_pwr>;
> +		vdd_s6-supply = <&vph_pwr>;
> +
> +		vdd_l1_l9_l10-supply = <&vreg_s2b_1p05>;
> +		vdd_l2-supply = <&vreg_bob>;
> +		vdd_l3_l5_l7_l8-supply = <&vreg_bob>;
> +		vdd_l4_l6-supply = <&vreg_bob>;
> +		vdd_bob-supply = <&vph_pwr>;
> +
> +		vreg_s1b_1p125: s1 {

Please diff the regulator settings, they're likely mostly common

[...]

> +&sdhc_2 {
> +	status = "okay";
> +};
> +
> +&tlmm {
> +	gpio-reserved-ranges = <8 4>; /* Fingerprint SPI */
> +};

This setting is common to all of them too

Konrad


Return-Path: <devicetree+bounces-271519-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id Zft5EzFqqWnH7AAAu9opvQ
	(envelope-from <devicetree+bounces-271519-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 12:34:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 912082109C7
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 12:34:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E2BEB3013A82
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 11:34:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 898A335E938;
	Thu,  5 Mar 2026 11:34:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fQYop4yF";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IJNon9ps"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CFC7315D3E
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 11:34:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772710446; cv=none; b=rDy3pslORHzHU1n3tsHuocBpZfUDisUhVhShVO7zVNgkucKpnFwWEXG3Us4McEbw/raP4ExvK7u/+iwxApTfi+wesDWUHyXjvori0QkzaQrEvIakZzE+JzeNxqbS82lcGG+tTROU46z44vApIU5PlUAm8L/5O3E/s7XAAsxhCNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772710446; c=relaxed/simple;
	bh=DK7rbmt0fdJaJXwujoUdrzNkqZH/Axad7pPvocVuokE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dEefnnsyVhz1l3L23PvI4Vmj1EOfC4U5Jy5g2ti42X3uCJOAygpJqetq/1t3nMFNA9+RHkCkXWZ1ykqw961rHCGOexAVLmjPbXmlXOm/xYlE0BNiFXkt2w89R+KgbPWqZqGK+tr1dxqYO3Xerqu3OGvj83/qrwN7upxCvcbFp5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fQYop4yF; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IJNon9ps; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 625AFow8936068
	for <devicetree@vger.kernel.org>; Thu, 5 Mar 2026 11:34:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cSJ6/gnzvyp+MqZzEwrFuS8ohF6YfunLzHCMX8kNpaQ=; b=fQYop4yF7vuy3qOe
	SQNlA0GzPEYBIK6g9wicUqQfdMGRMSN4l0hcBfQszns815TIMW21nTuryuPvFAVe
	2biFBZXeMbsr1ZNTHbusT3vq8LyjivAAK4J/exGhVOuIQCdFeU+t/Oi4Pzi2acKw
	MiimDKLV+OEYf1f6mpsZ6V/FaAtwV75PS4ABZG/m3hVFfx6UUra9yrrIi6nyPTK4
	3dXNhKeygP/VjS5+9sbbtFiJV9Mkft0Nm9o0Cwa3DbneVjpYcenNDfVGZhEOVGPR
	3CqqkmAhs4w3bLel65Iv49QkRfVlATTtWjEA67k/O+tHXi42QH+hKoPD6wCJyZAN
	vVw7kA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cq04u1vcy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 11:34:04 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-89a012f8ab7so26054766d6.2
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 03:34:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772710444; x=1773315244; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cSJ6/gnzvyp+MqZzEwrFuS8ohF6YfunLzHCMX8kNpaQ=;
        b=IJNon9pse0WqWvY1HTJYlLLdlAb1pJ+MMuxngNQ4snwNFa3XGd/vMDPLrm+W8rKE6b
         FVPJPkxL+ti8aloDEoYAsCvCsWpz9/ec/VTSSE+vKAKbvJxgQSiOftb+JdnyAl9qQe6L
         KHAczCwvoMYJQq9Qf/vbR+M+ITuQRka1C9KH2qFJfQ56X3xCEpis1vbAQgrW7swGWiNK
         6lPeFhaHqSP3crbjj255+z7nRyTOejB7nC4skWMUBIusyOVBdbwNqsRPLaTyGmjsvbVV
         SFn3KYToPc8x+CVznLmQ79hACb86X9nNE4WRLuRkoUZgv4DXd62WClw/SGbiuA6Ly1aF
         qkpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772710444; x=1773315244;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cSJ6/gnzvyp+MqZzEwrFuS8ohF6YfunLzHCMX8kNpaQ=;
        b=HhY2ZJ+AjnaKusCpjvKGWctQB6V3nwfJ8o5V9XQF/2evGWxt0tl68DcL8Xxc+qZhsU
         9YATXHBh6eJE+moaomxmNl/wpDFJ3heXuGtVHsEwZpkkd/hFDHY9Z3iM+fb5qpeUPzuW
         OP0yEk6HCekE0PKfhsh7Loi6AAZlfk/KWXxRrH6OyRyXF0fToWbaw2asIJV12QXroH4P
         wJYxLtKOi6Gek0ZWpKb938hzAERr2AArGfSq/XMxNVovxiH6UFQmtwlo4bra+rQC/CUn
         qH3XeHBqEPjeAdk0/pVn655pbhCnh3C1aSgLnuRJaNG2zuyNfXP8v3RkQ9jP0wu5UM+s
         AlYQ==
X-Forwarded-Encrypted: i=1; AJvYcCVCTIGw31Qhw7vg8t0h/OWSIsNfkFLxdvot5o9zCUR26SEo3H8MfOOBsA10Tfbj1ejmfD1pmVOAbBu8@vger.kernel.org
X-Gm-Message-State: AOJu0YxcU7pPX+wZg8csxMEgNUrbMLX9+wt1epqPPWXbm3B7KbzoZGAy
	PN3YNFFvd/deHWvx5ewATr5EuwrgRmuh4AQwd/HWWMk0lop3Nmzly7tHuFl0RtjTKVX8vOQnMbS
	Qko7z6Xtts8IzSbT8k5mS7i0Jhp97ggpVBQMVy577B3W8d+KhZQwt8w8t6HTxy51C
X-Gm-Gg: ATEYQzxm1ri1ess1lwxzXdwJWS5zaY2FalwM/8CH67DJ8FMBKj799qaPsXr3v//g35i
	SF3NTYyey2qtUyRu5rAlho9AfzqgZSRkJGDjco66FcdSdVg8j2ojh1nDTTShdbMlVOJvEB1yvO1
	hnZpcCKo9Gn8lgoJHOUj/e9+qjWbpOWXJsNyyTM7u5OkgTjRqjZrq8k64oyTugcu2iFoVCp6ZZR
	PGHzs9yoASgmK30b1uAHG1Y5TCyCYoxqfgnet7bIpCDOpRafjTQBqb8GAV5NyKyhhR/gvf5cdas
	hxQTDP53M0f5a6pGlHi/3wsYmJDWGk7uxirnQW8banE7WtE5/B/+KjYdwuIzqC9BWt8YHRSM4D/
	LzPuQWjjL0o5J31VA9X67ClzibGzsIzQJelHccb1UHybpY4ekOlhKo8gM6Gkfls28JaS91AM7t7
	D+pYo=
X-Received: by 2002:a0c:f103:0:b0:89a:f84:fdbc with SMTP id 6a1803df08f44-89a19d22811mr51378786d6.7.1772710443742;
        Thu, 05 Mar 2026 03:34:03 -0800 (PST)
X-Received: by 2002:a0c:f103:0:b0:89a:f84:fdbc with SMTP id 6a1803df08f44-89a19d22811mr51378356d6.7.1772710443302;
        Thu, 05 Mar 2026 03:34:03 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b935ac546ddsm895276666b.20.2026.03.05.03.33.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Mar 2026 03:34:02 -0800 (PST)
Message-ID: <4d4cb697-17c0-4610-b498-04a3bb252923@oss.qualcomm.com>
Date: Thu, 5 Mar 2026 12:33:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v20 08/10] arm64: dts: qcom: lemans: Add psci reboot-modes
To: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>, Bjorn Andersson <andersson@kernel.org>,
        Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Andy Yan
 <andy.yan@rock-chips.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        John Stultz
 <john.stultz@linaro.org>,
        Moritz Fischer <moritz.fischer@ettus.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Sudeep Holla <sudeep.holla@kernel.org>
Cc: Florian Fainelli <florian.fainelli@broadcom.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Andre Draszik <andre.draszik@linaro.org>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, Srinivas Kandagatla <srini@kernel.org>
References: <20260304-arm-psci-system_reset2-vendor-reboots-v20-0-cf7d346b8372@oss.qualcomm.com>
 <20260304-arm-psci-system_reset2-vendor-reboots-v20-8-cf7d346b8372@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260304-arm-psci-system_reset2-vendor-reboots-v20-8-cf7d346b8372@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: oYbT09jnOvt_hIDty0v4zjyf78MILaT7
X-Authority-Analysis: v=2.4 cv=eqTSD4pX c=1 sm=1 tr=0 ts=69a96a2c cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=RY4SAwMzpmrxGTDjaQ4A:9 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-ORIG-GUID: oYbT09jnOvt_hIDty0v4zjyf78MILaT7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA1MDA5MyBTYWx0ZWRfX6Iok+ai281TF
 7QY9EMpZ8UHIEFd6a2ZcbuOeIIYAqRIuYZQiEYFloRHZ6AnyNJTJ3jA402W7FdXAl2ZVX0itGTY
 SDj8Q137XTFdl25cewlAOsXqgOeAerfgLsroK5c4bKllzDc0dlC8y2ytSwEngcc6vsbPQYFfSjM
 4IaEn4polRWa3ak7Dv+jeIsjVxr9QvXebU95dvVz6khVdC7/MhVkhnhzs2BsfZ9uI3ZuBk1WmaR
 zDC3FzjzSMU79BSe9ceKZkCtQoBbX1NNJicea0SKpKA2q7SZDcYdyfmUKapnDAgEnOkChZng+Td
 /ZMpggiBeGt+DYcEqyP0eIaHcV4rMEJUqja3m38UOMUGXEYl5ZfSVhsHEhddTdYzXFCIzI2ItFr
 0vnjx4xQodhGm08nUdIf2XO/WeGIB3X8EOLdeoOBxVNT6BeWtPNwlH2+iVKJiV0ezob9YbjDR9P
 S8EotUIAzMzCDQHwzkA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-05_04,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 clxscore=1015 priorityscore=1501 malwarescore=0
 lowpriorityscore=0 spamscore=0 impostorscore=0 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603050093
X-Rspamd-Queue-Id: 912082109C7
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
	TAGGED_FROM(0.00)[bounces-271519-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,f000:email,qualcomm.com:dkim,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,arndb.de,arm.com,rock-chips.com,gmail.com,linaro.org,ettus.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[29];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/4/26 7:03 PM, Shivendra Pratap wrote:
> Add PSCI SYSTEM_RESET2 reboot-modes for lemans based boards, for use by
> the psci_reboot_mode driver.
> 
> The following modes are defined:
> - bootloader: reboot into fastboot mode for fastboot flashing.
> - edl: reboot into emergency download mode for image loading via
>   the Firehose protocol.
> 
> Support for these modes is firmware dependent.

The previous patch only enabled it on a subset of kodiak boards,
the remaining ones do it globally, even though you claim it's fw
dependent.. this changed in in v17 apparently

My fear is that those may conflict with other methods providing
identical identification names, i.e.:

psci {
	reboot-mode {
		mode-bootloader = <0x80010001 0x2>;
		mode-edl = <0x80000000 0x1>;
	};
};

imem@f000 {
	reboot-mode {
		compatible = "syscon-reboot-mode";
		offset = <0x65c>;

		mode-normal = <0x77665501>;
		mode-bootloader = <0x77665500>; // conflict
		mode-recovery = <0x77665502>;
	};
};

will the syscon write apply and the (unsupported) PSCI_RESET2 gracefully
fall through?

Konrad


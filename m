Return-Path: <devicetree+bounces-265663-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +HA7EP7Rkmk1ygEAu9opvQ
	(envelope-from <devicetree+bounces-265663-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 09:14:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D43314175A
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 09:14:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C0ACB3001192
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 08:14:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6FB152D94BF;
	Mon, 16 Feb 2026 08:14:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WWeOBRmi";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="icmR8pMJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 444B3230BE9
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 08:14:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771229688; cv=none; b=u4Oci48K0Zw2HKvnxXDxe68eUDvv8x/eIybF+/U0t0aQFS5TS5N8w0McRfR8GuTZYZpP5hYGuzEMyxDWroE03KFF7QCUHr4K7W/qw1CnNPZwG5SHzVDH5u0cRTk42UviY5ZkBPHccQxxdpvvXQb0nLW6a86f3VDICT2f8O4QXY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771229688; c=relaxed/simple;
	bh=XdU3UmP5cOJ1RGVsl6tVLBLdGJGcN6ti5ijmHlfbWdY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mbX2M79FQ+8Oh0+znChti4I6UDQABv9fLllzpGceZP6Nyj6+WZA/ls82i+btvHwTXepR8Rgj0BZWTlgCnr1i8TitY90TaEh09QqFVWaDVygSidATo9OvmJCEUO/CuOr/zQ4L68PgHpkVuMr3OZA6/eT8Mnk5Yym/9EdPwyxp5cE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WWeOBRmi; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=icmR8pMJ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61FL0Nsu2696782
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 08:14:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	atVq0LiFZTshTPBiboL/xtCxFhCk7gIZx1NVOVi0LDc=; b=WWeOBRmiD4qOcGL3
	G+vUD7PD6q3xPysISnxdxroNYUkffUVS3h6SCoPMjX/gGkO83JKuWkn2A91dwNMa
	iIcBA/6GxV3iM8w5oRCHflLURbXDqR8f0BEQFmc53KOR+noAJznrepSGBml48lDg
	hex7YEJmxcSfaljFnfUyt+4m+7ukWC+8S0mcIq2JCc6eUwTPDjHjWz58oSSCCpCM
	dd60b85IlMOzVa0aZeUxdaAAqtxkLnAPKwaRFAhtIh3C/HAPtaRIxjOnAKB6Nfsq
	1xD+PaJb43PU0svgMlzJHYtLiOwfOoPmoTGEu7H0op3jNmgpZSqyX54Xj29ldf8E
	AS2dfw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cahtckr4h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 08:14:46 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-34ebd999b12so1194278a91.0
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 00:14:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771229686; x=1771834486; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=atVq0LiFZTshTPBiboL/xtCxFhCk7gIZx1NVOVi0LDc=;
        b=icmR8pMJi8KpAVX2oz6LBEboWNdzFRIaXqpeM3xh9OgDCoClJHBxhb6ZbjOeUXntec
         TJ4kRiZ1mp14tcRw9nFh3m0CqOGOrr1TvXXepsPfsOTLqdejqSGxWFWv5pr+xCSOStQC
         77AEE3dKcgGBhi53qsGYW2682oxGxEY3gPAdLC97McrDlw9fp+ZbVnAjXF4EL3xNuzDf
         HZSWtQ6oSu2otvR146NOSLv9dljeGssFotyW4/ROP3Ik/JdBXqnZZ3pixhVSFX6PIEaT
         z3fQJ7ZhtHtQB0jMCt28DARW4nbDBWImW1EzVVc4+DBtw5Q1b3AvMZQuOMzRsG2JvJbd
         R9FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771229686; x=1771834486;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=atVq0LiFZTshTPBiboL/xtCxFhCk7gIZx1NVOVi0LDc=;
        b=sF1OLzK5OUhA8gYAtPszcU2sQeW4+LAMKw49qBBtaAsLO9VmkMLbhcHAa+Tt4LwzXV
         xUeabVoo3yUgysJx3a87poVBZY/zgVGUgaa4ARhUAGEmAK0lEw4xUzOXcpuILZdBTbN0
         +e1C5BQh3vy2HMOOhOFgylB92+T3Q23OxXVxj4LNgiwl6q66FxoXRNhh6pBdhGA/U3QB
         kJ9CZOYWW7KTDQSdUoM07JKFPvY/+0+ElsCjFO9Hnfm++EGFJ1Q4sLLbbpFQUrjIjYml
         yK/wtnrsUxW8SeAxUhMwkjMgg1TJf07FFjgnkQyAs6BPMhCqBlB96N9SntO1pZfrjc4E
         wltQ==
X-Forwarded-Encrypted: i=1; AJvYcCVepWCzvBITVcPxDSrb8mUlv+TtsF+3lD0N46+RKubWPRgwNWTLaOLXCw6qUv5bNLICeeiwJAk9hyIF@vger.kernel.org
X-Gm-Message-State: AOJu0YwcNpsreD1X3ZO0CLGyHYgEwj5eQrAQ6mi8ciyyEy45pRcIXFgh
	bgPyhv1b9zFpVukZk9wY3NifYONoihivmJvzlrxUAc+W/VWd008np6aHeG6ZpSVDvc0/5d6TL8V
	BV+XL6Zo0tUezY5nFZ6guxCQPbwTNn0gi5YV9VoqjK7CaJVyZF4i4bJof2ayBc6U8
X-Gm-Gg: AZuq6aLL2g3dh3pQ8ncGcPqaM3E2jjUsL82K8ZoGDJ/qp3MmocVz/bmBlJFOvt/onvH
	RTGeF8OMLGFpAH49tcaFoReP9HGTYMukReTQOvqltXow1LmrDCjMiRHUmyhSLTTxvK7Xnt8XKyx
	L9sMu8vKGzYCKg7SxNPAz1NGxhGT+YpMgFPWP+vR2KVb/3kb+Xs/2Bni/qFn9VPdxzl0FEW4CEQ
	x+G5/sUyaKfN32V1aUEQ/Juj/BzZMaCO5M+hhqT8OL3XIyTv7tWPHC490HLSyJgp7CGq22V+IsD
	ADJYC9L/nTxb7jRGF9LHnOPdR5/ghdIKN8lBoRJDhsCRoLDuOFsc8A2lghxMOohL5WX0+r4BaI7
	G1xeHpp2BP1/KCZOShWjAIjyTJTEUqoEgwVhEQdfPXMr4Ngbi0g==
X-Received: by 2002:a17:90b:28c4:b0:340:bca2:cf82 with SMTP id 98e67ed59e1d1-356a7a44588mr7342791a91.4.1771229685823;
        Mon, 16 Feb 2026 00:14:45 -0800 (PST)
X-Received: by 2002:a17:90b:28c4:b0:340:bca2:cf82 with SMTP id 98e67ed59e1d1-356a7a44588mr7342762a91.4.1771229685380;
        Mon, 16 Feb 2026 00:14:45 -0800 (PST)
Received: from [10.218.41.33] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3567eba9b2esm15943085a91.9.2026.02.16.00.14.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Feb 2026 00:14:44 -0800 (PST)
Message-ID: <ec672f6b-2b8f-4241-825e-4b3e6d910762@oss.qualcomm.com>
Date: Mon, 16 Feb 2026 13:44:40 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/1] arm64: dts: qcom: monaco-evk: Add Mezzanine
To: Bjorn Andersson <andersson@kernel.org>
Cc: konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, richardcochran@gmail.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, mohd.anwar@oss.qualcomm.com,
        krishna.chundru@oss.qualcomm.com, monish.chunara@oss.qualcomm.com
References: <20260210103821.4169-1-umang.chheda@oss.qualcomm.com>
 <20260210103821.4169-2-umang.chheda@oss.qualcomm.com>
 <z7y7gpfhrxgsxsqlsxmkwyr3zemvwpnpfuegv43ne56g5rsfl4@pehu3vloqjsy>
Content-Language: en-US
From: Umang Chheda <umang.chheda@oss.qualcomm.com>
In-Reply-To: <z7y7gpfhrxgsxsqlsxmkwyr3zemvwpnpfuegv43ne56g5rsfl4@pehu3vloqjsy>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE2MDA2OCBTYWx0ZWRfXxKGNjW1GQxpp
 0BZUxVXz+SW2GtUPraoqWhUHFiLXjp5QQzdaRCEMc41ifB6InnhV7JWMK/pHQj54qTqEe6Fl468
 nj7TP2Nr77cv8Mmg4L2rr2A1VgD6OL+dn3jg6xxqYoYHVJ8vzBkrlLFIy6OdgW8IsvDqLkMWomW
 4SdUTJ2v31eamv0FMHIj3rZYY+ZuhWcN7dlYdVht87T5YUdMnxxEQSlCbomjWUDkhw2Cklm0An8
 J2mef0O09ZYBYHlYjwZZf6LqOjMyHvnsCUPduzcPdqftu0L7cz6ymulXDCoChfpZKvvbzBthefV
 6tVpGEXSLNR93tce0YQs2Pc0gTfRqpc+3JUOPIrs5t5uUXf/5E1Keulu9c5yA+bjd1HUh2qxxlx
 VdQRZs5Eog4kl+GQD3TvejjWg4hXkEsWXDYLkrAt1cJejbU8XDS3ZCL2jUgPZjGkPlFsP0rtIyU
 B7rQZ3NPBi8GNvHUvZw==
X-Proofpoint-ORIG-GUID: L-Xxuutbtx971sKGoDbE_tfpCB-HhEjD
X-Authority-Analysis: v=2.4 cv=DJOCIiNb c=1 sm=1 tr=0 ts=6992d1f6 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=MCphP8ZxGBsxnHqrgG0A:9 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-GUID: L-Xxuutbtx971sKGoDbE_tfpCB-HhEjD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-16_03,2026-02-16_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 adultscore=0 priorityscore=1501
 impostorscore=0 malwarescore=0 phishscore=0 bulkscore=0 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602160068
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265663-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,vger.kernel.org,oss.qualcomm.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:dkim,0.0.0.52:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[umang.chheda@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 5D43314175A
X-Rspamd-Action: no action

Hello Bjorn,

On 2/13/2026 1:33 AM, Bjorn Andersson wrote:
> On Tue, Feb 10, 2026 at 04:08:21PM +0530, Umang Chheda wrote:
>> diff --git a/arch/arm64/boot/dts/qcom/monaco-evk-mezzanine.dtso b/arch/arm64/boot/dts/qcom/monaco-evk-mezzanine.dtso
> [..]
>> +&i2c15 {
>> +	#address-cells = <1>;
>> +	#size-cells = <0>;
> Do we need to repeat this? It's in the top-level i2c15 definition
> already?

Yes this is required to be repeated in case of DTSO -- else seeing DT binding error if these cells are not added here.
Seems the compiler is not looking at what is present in the Base DT first and is considering the default
values for address and size cells and throwing error. Had to add similarly add for PCIe node
as well to suppress binding errors.

>
>> +
>> +	status = "okay";
> I presume this overlay is used on top of monaco-evk.dtb, which already
> says that status is okay.

Ack

>
>
> That said, I don't see a "clock-frequency" in either node, so I presume
> you have an error/warning in your kernel log about this. But unless you
> have reason to change that in your overlay, I think that's a unrelated
> patch on the monaco-evk.dts - which I would like you to send, separately.


Ack, will share a separate patch to fix this issue.

>
>> +
>> +	eeprom1: eeprom@52 {
>> +		compatible = "giantec,gt24c256c", "atmel,24c256";
>> +		reg = <0x52>;
>> +		pagesize = <64>;
>> +
>> +		nvmem-layout {
>> +			compatible = "fixed-layout";
>> +			#address-cells = <1>;
>> +			#size-cells = <1>;
>> +		};
>> +	};
>> +};
>> +
> [..]
>> +&tlmm {
>> +	tc9563_resx_n: tc9563-resx-state {
>> +		pins = "gpio124";
>> +		function = "gpio";
>> +
>> +		bias-disable;
>> +		input-disable;
>> +		output-enable;
>> +		power-source = <0>;
> Does these properties really match the TLMM binding? Please double
> check.

Double checked on this -- all the properties match the TLMM bindings.

>
> Regards,
> Bjorn
>
>> +	};
>> +};
>> --
>> 2.34.1


Thanks,
Umang



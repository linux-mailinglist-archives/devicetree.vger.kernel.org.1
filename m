Return-Path: <devicetree+bounces-262573-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cGNWNRoRg2kPhQMAu9opvQ
	(envelope-from <devicetree+bounces-262573-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 10:27:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 424B7E3D37
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 10:27:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 749AE3028B06
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 09:23:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F9F73A4F26;
	Wed,  4 Feb 2026 09:23:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oaagb7Qs";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OCGEkuu9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D871E3A1E66
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 09:23:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770197028; cv=none; b=dCaM84AhZYdvrpN6EX5N0FfLDcpleI7A5KlUBK0PYe2TM79BwOwd1INrlmD9w6T5ECt42RyzIogi/IlcYZ7nPlPFQkEOaoELE5UFfENsz0t4RGfP/OKAixSTMSUEZh5JV1tAaJ6eMQpwRVJRelR0Ic8dFTJEd4a5UYKcaRUBlQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770197028; c=relaxed/simple;
	bh=MN7Fo8S3YmMQdRgK1nzcy1NcyFMdbMwJEYa54s2vEjs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=D8dQdPmwKUjeL2NoBXTyu/fStj9s6MBcx9MTup6u2zHU2mrQ9NvmbOdb/sL4Rv0Lx9USieklLgCYGujPZEbZViyhWOudsJTBugmjINSkGxLa6fF2dBwaQ5Ij0If2QlCyHqCa1KEmC18uX2V9a9uYviqh84lkxGUCIkjRTq/JBjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oaagb7Qs; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OCGEkuu9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6147EVtF1504818
	for <devicetree@vger.kernel.org>; Wed, 4 Feb 2026 09:23:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OjKek8fTnaejaJ/69hQwLRDeJ3NKA7RgB2j51vlUakg=; b=oaagb7QsvE6WR7vF
	ru9E6ehet2aD1szuLijNY4LYfSOFCc9szpyXZAtD0u5+LhxjzSNJfUwZmK2gJGC3
	3ZIbYcbnbXaoZcZ/OccNJ4pCXiIDb7fsdlepMBuyeqZrProjXCXbIXgHXBrJe24L
	bD3Lq3LFCTUKfLlUYFSjJ2JhvcPiN8D8C2ChmGoSj0Zhrq95OH1FIOchAkHqi3V4
	/KzRonGzwPWPjOOXJpOjR5Wf1o76SPSCEkqIxJX8xF0j7O5V0HW18pUHpu/E3sIj
	OR3VVMxuonQpcyfK0rLxRWbQ7LEtov6GoDKP4Z/jE/C9+mYAENEesbSi2SIyE6Sm
	sDGY5g==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c3kbkkae9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 09:23:47 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8ca3952cbb9so8088785a.1
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 01:23:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770197026; x=1770801826; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OjKek8fTnaejaJ/69hQwLRDeJ3NKA7RgB2j51vlUakg=;
        b=OCGEkuu9fkCOt/SXnc/kvfGeACznQzgiECqzuqe6igIJJJqV/2jXlLK978ccOmjb+F
         O33iWaI5I3k4hvcMtV/ER4K1+tEA42DRScgZ9NJnGWMQ53URv/MeaCkv/xknAQ32djQp
         cN6UoJkstxgCh6OjRgrJ5Vdz8ZYLGTXcdik6ocQqhq3i7Kv9TvrG6oL+5Lrw+Yl3uXGY
         wWh3We82ecj+TsUP8tYFme3GI6vTZ/4yWhUA6uSDXijwUw32gzaeI590xY5Ro7b4kTUa
         XfQ2MYwp9u7Ywvezo98aL8ORPuKaJKiiYE/TviGAae56u8cj8mMrc6tOLaR+evxLEMmT
         V7Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770197026; x=1770801826;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OjKek8fTnaejaJ/69hQwLRDeJ3NKA7RgB2j51vlUakg=;
        b=rnT1X31sAZnAU/JLNCJIXQSFcBa/CHQnFhci6aRl7L1DWkTljpcSTBQ82ffgwHWIlV
         tmB71IokL/g3MMHX6wNZ3dI7V9Hsa3p8DoaJRaB1gOQJMIzKOW5QQ7nLoM1RXi94UQNY
         eV3PPbnBcdLUXzZZXDMUzxGUdV69G9RUF7nHEeocntSkKVB+0aTX4cXfTUTX6XRB9WaY
         xNyygNljBdMX53+Z7oyAYA+/HOE0WeQqpkgtYAg4tbhzs02UyFxwsAdRtxWlzO9LWOX7
         z+Y/jVLFIuh1/nBU4+PKDaMXmB8UdzJBHY+6V364Y5DEi2jk70OUq2R/wk0FItVm1DbL
         xMng==
X-Forwarded-Encrypted: i=1; AJvYcCUZBIfcEAJ2iR8R3/3huwFQg+bY/RoWmUHk0vpLz2jHBSWLNBjqOElfVgKsujTDfN8eDAFqMax+97m4@vger.kernel.org
X-Gm-Message-State: AOJu0YyZSyt+x+aWLf48ualxxWWpDkA9RnZGTkRYlxMgpQTc9PhDYszY
	5uX70xSIyOiBSgaJT+W6fV6Qd+Oye98yoBVL0JoeW78puwf+jvoQkpalcHt43828A/rNQD7wJ1h
	8oHcSUdhKKqa+aD7bY1tKC5tS3m0Onuxn63prsHVzZDGQTSmyDlJVW0oCtWhBnDVM2/aLv6Pf
X-Gm-Gg: AZuq6aIBH6Bxu4jPCZWSit5k9eIJFbly8b5O+hu4syzkA4woZYo8Uho9pFen21HOcJj
	NlY+4BW8O1qK72Vj4TsyB6uNwjcivIycwjUOOSz2t3v85Kb/UMfRcC+4nL1KPb7Mb5q5blbuOR9
	WYZvaAY/BqgXu8bxZhhefas4RKbSpQq7uhKv61M5p3DiTQLWFGLAinWYhtlKDNkkvFkbcNolebp
	ScVc3bPKYWHO7XFw1xO3nsaCDMvKfG33JAhEZZZKrsJBb9QqpeGjIrvTSJxLU1Qk/QUJOHLq1Ef
	C0x43vF5s0npboh/HN1kAQnpKx3ujgr+Jid2L8dtQVt7UOhcTfU+J+3Jb8Q2djCPeGoKbrNZKHv
	P/hPECvdEyYKxtz1wIylh0eWCI8PLLhvK6tZfdcyAiTaC4mT66gpnDuVP+tlza1vlcTE=
X-Received: by 2002:a05:620a:199a:b0:8c7:1af8:4ea0 with SMTP id af79cd13be357-8ca2f9b4333mr227324685a.6.1770197026134;
        Wed, 04 Feb 2026 01:23:46 -0800 (PST)
X-Received: by 2002:a05:620a:199a:b0:8c7:1af8:4ea0 with SMTP id af79cd13be357-8ca2f9b4333mr227322785a.6.1770197025718;
        Wed, 04 Feb 2026 01:23:45 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8e9feefffbsm106252366b.37.2026.02.04.01.23.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Feb 2026 01:23:39 -0800 (PST)
Message-ID: <5fc25d7e-2e4c-4560-baaa-fc95196466ab@oss.qualcomm.com>
Date: Wed, 4 Feb 2026 10:23:32 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/1] arm64: dts: qcom: lemans-evk: Add Mezzanine
To: Umang Chheda <umang.chheda@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, richardcochran@gmail.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, mohd.anwar@oss.qualcomm.com,
        krishna.chundru@oss.qualcomm.com, monish.chunara@oss.qualcomm.com
References: <20260203193848.123307-1-umang.chheda@oss.qualcomm.com>
 <20260203193848.123307-2-umang.chheda@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260203193848.123307-2-umang.chheda@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: XUZ6Wv-PAJLdoREtczcYAEyieE6U2EHj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA0MDA3MCBTYWx0ZWRfX5u/ETqqQcbsM
 jJoCwnhLEoi/rEs+y8xlH1PdqjkKfoCI+93PyLm9xBPsdj2ERaOPsut+O8t5UtbCAHnGKPU0xUI
 765mDfgwOONyuT2uAH26Cn4h7s+MtQEdhm/4DU0JwYo3/9/Cy8yw/+f5ccYD1Oyv0rXJq0qPBEW
 mqyWsprKFWOty5tcuvroFcFjYnE3K5gdDVQDlaNCf4G2Q/rIaISi38q1997qpZRgUkGHmiQvD7m
 pAVcjjvHDHUw39tMQ+jMP+YZZZCuSJ+z5Viiy6a0NghQ+de0+HhyIIawzD+D0YLp+lLXChwPd5l
 vym6kwi1eV0dPyQUpsTL79Gupo4/CroZndwtFxtI8xhuj6MZqX+kDudzrTqEWJKuGuO5UDlNIHZ
 V+sj6xBDMehkYJB1cawh47vgOWkcfDS2fP9OXMn03PO+712mZAzezRtDieeD62NM6BS0sNaEJca
 +vuyZW0seFk1YBELhEA==
X-Authority-Analysis: v=2.4 cv=BKy+bVQG c=1 sm=1 tr=0 ts=69831023 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=l294Hz_FD5paY8OFZukA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: XUZ6Wv-PAJLdoREtczcYAEyieE6U2EHj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-04_01,2026-02-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 adultscore=0 bulkscore=0 spamscore=0
 impostorscore=0 clxscore=1015 lowpriorityscore=0 malwarescore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602040070
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262573-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 424B7E3D37
X-Rspamd-Action: no action

On 2/3/26 8:38 PM, Umang Chheda wrote:
> The Mezzanine is an hardware expansion add-on board designed
> to be stacked on top of Lemans EVK.
> 
> It has following peripherals :
> 
> - 4x Type A USB ports in host mode.
> - TC9563 PCIe switch, which has following three downstream ports (DSP) :
>    - 1st DSP connects M.2 E-key connector for connecting WLAN endpoints.
>    - 2nd DSP connects M.2 B-key connector for connecting cellular modems.
>    - 3rd DSP with support for Dual Ethernet ports.
> - eMMC.
> - Additional 2.5GbE Ethernet PHY connected to native EMAC with support for
>   MAC Address configuration via NVMEM.
> - EEPROM.
> - LVDS Display.
> - 2*mini DP.
> 
> Add support for following peripherals :
> - TC9563 PCIe Switch.
> - Additional 2.5GbE Ethernet Port.
> - EEPROM.
> 
> Written with inputs from :
>     Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com> - Ethernet.
>     Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com> - PCIe
>     Monish Chunara <monish.chunara@oss.qualcomm.com> - EEPROM.
> 
> Signed-off-by: Umang Chheda <umang.chheda@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


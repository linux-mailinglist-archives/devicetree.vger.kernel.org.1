Return-Path: <devicetree+bounces-312584-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jw9zLWRbMWq4hwUAu9opvQ
	(envelope-from <devicetree+bounces-312584-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 16:19:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C055690652
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 16:19:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=I1B9pZnw;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b="BaQsH/Rs";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312584-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-312584-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 07A2132262EF
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 14:10:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 409EB44E045;
	Tue, 16 Jun 2026 14:09:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB6A744E02A
	for <devicetree@vger.kernel.org>; Tue, 16 Jun 2026 14:09:18 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781618960; cv=none; b=aZAY67eOzDO3d2JxbLyV2f2cVFpl9yUxaBId/bamqSP6U4m6kIZXEsk9V7WgCQJ4CZBxfGbZPRZKDNTGbSiD5/rTnwm+r5aDbcunPwcOpb/yaskEHn8zJb+3iLqoIe+CvcyVgk1AvL6hb4ehPzsqyjKdSCIAZ0Vmx0rqVfBOYsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781618960; c=relaxed/simple;
	bh=HiUkKbB68+cZ6cUApFyv9kZ5xwG4w4rZ6kimXeuV73M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=shT1qgtiPgLsbVd7osOWk43ANmxexPDoYxSEVlxFcabMAJAWZdNhstz2dnMb4aN9NJWQzI5JOXdAlqxO8v/+a3Qc86S3mfsEFGYFPn+Gd1Tapfc6vBwtZk6hPRE5sZbgaQd36KSi2RMdur0oNbRaPYF+2yOIbcSh/K/lj3bnhzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=I1B9pZnw; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BaQsH/Rs; arc=none smtp.client-ip=205.220.180.131
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65GDxfnl3920712
	for <devicetree@vger.kernel.org>; Tue, 16 Jun 2026 14:09:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MRVejRmG+rwlzMAPiJBU0ONVq9PptIShWVpCuWLNbO8=; b=I1B9pZnwbdojQkb9
	/L/I7WO2NkUR0R8AsjVJOcwYcZZzVeTD9LO0yRE86q2xwqmryCw5suC4Ktphx1EA
	P9xD09O/RNHntvmfMfhbX+eqdTWLYvv31qz6A4jmJn5xJm09B4nLNafqMQrEltxV
	Phm9iXxHlIYflMI9IF87kFHEoSliG0VibRFaOdxp3YfJtMjoC995ygsYffuZIhqr
	muCnVeeONe1qMx7xBrNmaOL+i0WFIM4s2BnhakmZrQytsU9rEcWuYfSiHl+SMVBd
	po01K3Vdg4r3T6AS/iO8QdzNF5/vYE33PgNGF1C/s9PJM1gZifW82SDuPgaCSlsc
	AlVznA==
Received: from mail-vs1-f69.google.com (mail-vs1-f69.google.com [209.85.217.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eu09ga8ay-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Jun 2026 14:09:17 +0000 (GMT)
Received: by mail-vs1-f69.google.com with SMTP id ada2fe7eead31-6c4b898e8d8so220108137.0
        for <devicetree@vger.kernel.org>; Tue, 16 Jun 2026 07:09:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781618957; x=1782223757; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MRVejRmG+rwlzMAPiJBU0ONVq9PptIShWVpCuWLNbO8=;
        b=BaQsH/RsiGVDCYNlvRSrN3xEWVcKqk9M/orlJu35rGR+eEO+hwATBEvPmIhAKGgxQP
         V5jPIz/aN80E/kd61RHPfz28EEoIDBLrnghizBWBqAWNDyJXO3ZcoPoyo/CqTDq7RcUI
         zK0G6Xc9/1jam/SEvOU8Sy7RiZeJUspcjrHaEFgvaxAJEKvSNCdxyd35xYmogVAmbdrc
         0EXdiNsLC75iH134M3WKDuz49AhSQiiQ6MJYHTuA+Llzei2Hj6tpCyJGvyVC58e1LrNT
         JlG+b2E3unDIm0Ad4AFFNtEVG41+rxjlEeyy0CYiZs+7GrxeuzkIqgwAue5zcZYn3KE0
         +t9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781618957; x=1782223757;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MRVejRmG+rwlzMAPiJBU0ONVq9PptIShWVpCuWLNbO8=;
        b=EBarxR4UeLQrYMFRtg+98vKcuz4D55yy7peEaUSKW9PL08UFbgjmE8R7AWyG3hU+gI
         U18d/ytr5HIuowO0TAkCF6K3LD5u+uUSkgJYPWC0H9XANp+AogqOtzBTm7jwBVmHLJN+
         1KTFTHrNs0JGHrmZmfDxzOerIFqUi9mSsmxlD2PyW31nM3w6KnZd+DIbo2I/vs6L2FnR
         tNKIcxlVsFd9Ag9m55Vhv6EU9uOShreNn0jknaI56B1ze/jYyNLpfVIP3Gapy9tgc5la
         Qp7eG8nGdPlO3eZLIw9KFyXHAHG9sFE8rt6AazqvJD+AQMkAaZ7+iRuU6KYq90/40viX
         UJaQ==
X-Forwarded-Encrypted: i=1; AFNElJ9ibH9nUuI3OLuioCr3Jk0CEVE9G5gHPMepE5Fw8q1GxC82Hk5ReH+O6tcgGcyKLcHAFxjwFsBISOFI@vger.kernel.org
X-Gm-Message-State: AOJu0YxOcd6qG7d+q83ORpqcNT3X00wpXRW9It4hE6nGGmdGQrtMlb0k
	1FwdbbmG+5q/JN5jNtID1R716U23CIOh5W4jsTeKq3zDKFReMcBYXG0QoJ7jWgZjm5G3tbTtjnv
	XHKEurGwRL4CXS7UXBHGamtdoP3GwZkeH9+5zv5yfX4oOjVbYoJSXsKT0LIzjK3/d
X-Gm-Gg: Acq92OGtcBChsqr69OPtJtIn/4z3ru87WBcIpnNETIF9/UchhRgiUB1Xj/uDD/jl/2g
	K/qcDpPrJE6tx59mapvdl+66QzVTFH5NT37FIlKb/BnOdpMSC+qZoRo6p1XUBHyiN8HcQuxXB6Q
	DPQEkAL8qSLHjUsxAZ7iJoibkPSD/vRFHNaLHBGhCk2UHQxjFnYC61mG11asCjA8RGtvWAWiQgH
	D71EXktqJmt2eSLY9eftJfB5VadCbTxHLFUEnF3P6DqPl2H2qYk2NVrDN1+kAMO21m4zljjPzaw
	voHzPAu9GRy+coAcB0Tl5+0MQnpveZcQOpHmD8SkqQohn1gjGOnHNqi88nhdorx7fN7xLDKH9fM
	7YaDuPNopAi9PsrDb7klAmgWVXitwLlblQ8Ximoo7SlpcaA==
X-Received: by 2002:a05:6102:f07:b0:631:2be3:b6e8 with SMTP id ada2fe7eead31-71e88dd8cd2mr2931499137.6.1781618957273;
        Tue, 16 Jun 2026 07:09:17 -0700 (PDT)
X-Received: by 2002:a05:6102:f07:b0:631:2be3:b6e8 with SMTP id ada2fe7eead31-71e88dd8cd2mr2931465137.6.1781618956771;
        Tue, 16 Jun 2026 07:09:16 -0700 (PDT)
Received: from [192.168.120.170] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bfdb83420e9sm638282066b.45.2026.06.16.07.09.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Jun 2026 07:09:16 -0700 (PDT)
Message-ID: <eb5ace9e-543e-4258-b3d5-50be84c1be05@oss.qualcomm.com>
Date: Tue, 16 Jun 2026 16:09:14 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] dt-bindings: interrupt-controller: qcom,pdc:
 Document Purwa PDC
To: Maulik Shah <maulik.shah@oss.qualcomm.com>,
        Thomas Gleixner <tglx@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20260616-purwa-pdc-v2-0-8dda7ef25ce5@oss.qualcomm.com>
 <20260616-purwa-pdc-v2-1-8dda7ef25ce5@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260616-purwa-pdc-v2-1-8dda7ef25ce5@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjE2MDE0NCBTYWx0ZWRfX+O3cuwuj3VG+
 Vb9b1d5pQHfVmCMpJoZRvoMjoz8cKjK5fmyYeVrleCTsXP+RBxoKAMgU5cT+nIp4etOJXWQkuHi
 k5N6ogQRS7xqKMhxz1bBNGvfoT1Cao3gCs9tOyjeVMeCFneYntbDipD3dqM7hcYn4FOBC9ZOKRI
 +7ZAbhSgq1fR/YZ2Esoq5YrWrc5tRBwdwUAfCEOYWlIL5hvTZcR+LiMNCuZ1hKO1bU4amrVxfeD
 x61fgtSHwXOpPE5Mz4rP6zakuLX5U0lVIVObaIaOVaqutJ0eiVtizrufJd+ym9C7UYZOJdpk/za
 X/jOVqcRBEmcIm9Rdp547hU6ZnrqoOrRm005b6hslC99fCSJSvYmD4JOwC2Ai7TZD/DxyEEzakS
 nAbgUDlyT30/af/jOfdwIOlhd8WOjm81nY0uR4fpjjxVf0C5Wg6OTfXtDL7gaRr4+aM0XHIRty2
 slK/7GyDyYeV4dplwOQ==
X-Proofpoint-ORIG-GUID: bmKM5JFHdkh_SwQpjPzG2FRubKf_yFMN
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjE2MDE0NCBTYWx0ZWRfX4l2DuLm7g2T+
 ZSmz/YrxRrRIUi96qmK8ge+soSFv7vMiFmM5mofl1cn7iADlccBkrxnczvXltgxs1Y0Cyjn+wz1
 UzEUxRqmWlQFCVqM4cKEPKJBnQhPBL4=
X-Authority-Analysis: v=2.4 cv=DLa/JSNb c=1 sm=1 tr=0 ts=6a31590d cx=c_pps
 a=5HAIKLe1ejAbszaTRHs9Ug==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=px_f_vAfgXbzbh29wf4A:9 a=QEXdDO2ut3YA:10
 a=gYDTvv6II1OnSo0itH1n:22
X-Proofpoint-GUID: bmKM5JFHdkh_SwQpjPzG2FRubKf_yFMN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-16_04,2026-06-15_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 clxscore=1015 spamscore=0 malwarescore=0
 priorityscore=1501 phishscore=0 suspectscore=0 bulkscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606040000 definitions=main-2606160144
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-312584-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:maulik.shah@oss.qualcomm.com,m:tglx@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:andersson@kernel.org,m:konradybcio@kernel.org,m:linux-arm-msm@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:from_mime,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2C055690652

On 6/16/26 12:27 PM, Maulik Shah wrote:
> X1P42100 (Purwa) shares the X1E80100 (Hamoa) PDC device, but the hardware
> register bug addressed in commit e9a48ea4d90b ("irqchip/qcom-pdc:
> Workaround hardware register bug on X1E80100") is already fixed in
> X1P42100 silicon.
> 
> X1E80100 compatible forces the software workaround. Add PDC compatible
> for purwa as "qcom,x1p42100-pdc" to remove the workaround from Purwa.
> 
> Signed-off-by: Maulik Shah <maulik.shah@oss.qualcomm.com>
> ---

Acked-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


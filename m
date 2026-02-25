Return-Path: <devicetree+bounces-268353-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0KpBAmXsnmk/XwQAu9opvQ
	(envelope-from <devicetree+bounces-268353-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 13:34:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 99F2B1976FE
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 13:34:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C4A513015B59
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 12:34:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED28C3AEF5D;
	Wed, 25 Feb 2026 12:34:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WkiVe8Kd";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kZtKk9Qz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B08F53AEF3D
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 12:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772022866; cv=none; b=HBIc1xemu8T42gQ01yddjj5HqZ7IrHMssjqmoMPljW44xNXtiZPpwHkDsvjiz74swoXlz0vpw8+/+h25XiOm8KBxUKuwzirIPXqFMNxGUD8YKLIwDBmiWAIcLSLsueKE45ZBWhSFwCXlWVf6jYnTAo/Jo8FsuVlkb9QGYMgU8Ps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772022866; c=relaxed/simple;
	bh=TdhSuflbjwL3XyTH9X8phaMjOghQG/4HOMGxwZtfVAQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eg7nITZCNAMdfdDV4HhOJXyiNVnq4ByL6Diuv09HyD/cyVe4V8qZddgyTzK+xIkWNBXEk1DACQKs4PXKnC/1Mdcjgjs//x5rR6xeKFczn5bj+3ffZF4vTYWE6DdLfWw7O2frxRA/ZsORxXJNit3e6rwxdwaHwj2eJnBKys6vcDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WkiVe8Kd; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kZtKk9Qz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61P9TBtG2365333
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 12:34:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JACFJ/VGwZJNnMBUOjPmygX4Hql8HmIMPgx6kxcaSXU=; b=WkiVe8KdjNJTxUKp
	fOdxAMGwLDgHcHB8Cym27hsZHg8oBr3un0CxlclfdAgFjhPf0XgRfVbNK7/1sevY
	RH5ffTtdq79kaUl1Dt1mePwz0E0rkPjLDCHw9Nf/mEo1QULJYccTiYE0SzzcjXfP
	jgwru/N7u0Q9gfKmJsnhKctyz/eIGLcrW0ZTkM0ch8rHEFvMqE9HNeWcRHXCeuBa
	ouvHSQD/RPXreid9zZFq7wAcqVEt4xNERVRk6/7QNu5kL7e0bPULMtqPh+gSFYBZ
	G2c7wHJ0TydSWNd+2pxN2pdqxvMrGPAMj3ZY/yEBBr2D/wbvEi8P9PxP7/0ZYC8y
	K79RfQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cherjbhrh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 12:34:22 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-899c0fa75b9so561976d6.1
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 04:34:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772022862; x=1772627662; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JACFJ/VGwZJNnMBUOjPmygX4Hql8HmIMPgx6kxcaSXU=;
        b=kZtKk9QzS9q2r64X7vAiOsscPndK+gd8YbLNkhJD+M/CfjJweIgN99MPqXDikfMiQJ
         /nPrzAtblhBmateS/8kdDxHLKaPStD7dcXZxsx4A9SyGA6z50BF5sgHGdv3WKh+y2e5U
         m48nD8IWGCM3dpi8mc2pZct6afIeZrUHtyckPcdAIUbu+WAYOT87uMqDHm89ZS2CINmT
         Wuapb+kX8OOTTyySTxLY5mFSCgcIf3zXAONTrJVWwQcQAzcKaFY+vhRxpESLB5me83Be
         G5kmIpFF8oUDt4yzQVx7Ibo7AdT/b44prpGsO1l6l/ZK/fsMhWBzc7mtrRdQO8nH9BO7
         Z+4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772022862; x=1772627662;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JACFJ/VGwZJNnMBUOjPmygX4Hql8HmIMPgx6kxcaSXU=;
        b=bLGxN7NyurKMJnEIEBBpkjeXhqnoiYvqo1ijnzzyIq5evHog2U1aT94AFfoi+u43fj
         VCqlhEQgLqmfqU/u5Wy11IEWnjfPFemX6ndtHCbGCnMzl8+tHcUpmaYTmprmISMVBLQZ
         2FUcKYuqKQ9Csv+wKDsF4KVNI/JqHwM5XSZhTqUVnfbQS31wM2xQlWroc0ekkXjnTj9p
         9LymCEZ5S69/oqBWuqMJ9jCO/ze0jhUcVR8Gga9HGzckOsBtBfRqJ8tk+//epWF8d88R
         4qSb8lwUqDCG/KKfV31lsU/+FnNBFGfMphUSi+S6tmCypF1i+xVFNmUES9J+M1sIDQ6l
         +8rQ==
X-Forwarded-Encrypted: i=1; AJvYcCV2AzxmvAO0OG2e1NU3p5omWUOpSsqP3m1TMxFk85kOakdnBddfGwkLUCVY5oBsNKs0pu7JAfimmADe@vger.kernel.org
X-Gm-Message-State: AOJu0YzysiecKpCxQwu8GFUUfDzVfq1qzGO5cWMShaMrPxN90/mPP/3V
	rXxbwAj8Ekl/7c0ymGaB8AwfcGDFEm7G0CpjzPCjRLP/2t2+ruWgXd4YBP5s2UNbwoRvlT5JhqC
	6+0Gao2szTmHHFvobgrSy8jf2EvR0SbQ+M4FxJFoDoqcj+4TT12YthLbeQzLd6Dk2
X-Gm-Gg: ATEYQzxMK4txp1ZbQIhRePMG/DA521HA3BBNxbeszIrqJfDnwMCTBUVK+PyULlhWrMC
	Pt3Abuu1rbSFH0EIvDKW/WNDtsOdB5Kx0xKTpw7MufwzTYvQDSd7BFN3D55bShBOHZg+JTgtV9s
	1KwKAETfJykW6zIeaskJdeyFJfUZT4ftApQx1L/YNenxPpTWJeYgtESxGJqpMQmVgBOjYMxEI6f
	fLrBuqANvAYP5rrYispDJFcvrb/sMk5I/9TBH2kj5RXT3zxl9LnKLKH+2LLaR+qqI0/ZoTY0hYB
	kDevdc7duntFfWhWn6Kq+AxkF/g9ousyRNeGUIcjFKqiwagqpD7iXMUYG8gLQbW7cUjqiGllobT
	pgk5DkqvwNeaopdEA7t8PUL0wINVhGkuoI0x5CmOr2D2hPKI0sBAvn0KgMlmYdALlWoobycdgaq
	FFhpM=
X-Received: by 2002:a0c:e013:0:b0:899:b649:6948 with SMTP id 6a1803df08f44-899b6496b13mr29383206d6.2.1772022861957;
        Wed, 25 Feb 2026 04:34:21 -0800 (PST)
X-Received: by 2002:a0c:e013:0:b0:899:b649:6948 with SMTP id 6a1803df08f44-899b6496b13mr29382916d6.2.1772022861575;
        Wed, 25 Feb 2026 04:34:21 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b9084c5c514sm515848566b.5.2026.02.25.04.34.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Feb 2026 04:34:20 -0800 (PST)
Message-ID: <3fc99f1b-6e67-4e17-ba02-eba963714ca1@oss.qualcomm.com>
Date: Wed, 25 Feb 2026 13:34:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 5/5] arm64: dts: qcom: ipq5424: add support to get
 watchdog bootstatus from IMEM
To: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck
 <linux@roeck-us.net>,
        Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260225-wdt_reset_reason-v7-0-65d5b7e3e1eb@oss.qualcomm.com>
 <20260225-wdt_reset_reason-v7-5-65d5b7e3e1eb@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260225-wdt_reset_reason-v7-5-65d5b7e3e1eb@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI1MDEyMiBTYWx0ZWRfX1Y14fuWpJEpk
 bWMiKPE5lpO7gMILsuoxzd5FtYFVVM/wLWVcPkxDP/1ZRky9egrjkvDWnzQueM71nuDvUfSnLAC
 NeX8LEkASBWW22w8ewuZJETsvI8CCkUeLkhOX1lPm5NYc9ozzk7DIjdTOUhkWA5Jjf/D9A9aCbm
 acpa4qyg7Xd/Q/7csx498Veh3w3yqB0McIXv6BVtHGVZ6ZQmcELNYh6jSPrPsEJEXcSMvpaagxF
 f2Jwsnac89uZ/xsZ3LP6+M8Li1oEL9PTdkesakM8v0FiQA/64Z9eFYIkQrs/10Ut26aYCICst2P
 GpwTzWK9P+IdztX4WswxqXswAXn6YOCQ1rNGv0UDaGXhJv1n+2ur/DFYK8waVBa4Ww3VY445i5h
 1RxpE7NwNh6WREyq7osLE4MQ38fANi6v8Uzqt5ajo186ToToQ39wmk2qF6qHORVB+NjuVvmUd/4
 hXrv/8LRvtWbFfQcqQw==
X-Proofpoint-GUID: -Y3oZoFZpGTAb5gohhUMpL0OTlxSx5cd
X-Proofpoint-ORIG-GUID: -Y3oZoFZpGTAb5gohhUMpL0OTlxSx5cd
X-Authority-Analysis: v=2.4 cv=NeDrFmD4 c=1 sm=1 tr=0 ts=699eec4e cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=gWikCEODulKzl4wm0QAA:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-24_03,2026-02-25_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 adultscore=0 spamscore=0 priorityscore=1501
 suspectscore=0 lowpriorityscore=0 phishscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602250122
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
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268353-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 99F2B1976FE
X-Rspamd-Action: no action

On 2/25/26 7:43 AM, Kathiravan Thirumoorthy wrote:
> Add the "sram" property to the watchdog device node to enable
> retrieval of the system restart reason from IMEM, populated by XBL.
> Parse this information in the watchdog driver and update the bootstatus
> sysFS if the restart was triggered by a watchdog timeout.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


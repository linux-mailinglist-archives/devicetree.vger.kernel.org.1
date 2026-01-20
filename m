Return-Path: <devicetree+bounces-257418-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qIlMDsB+cGktYAAAu9opvQ
	(envelope-from <devicetree+bounces-257418-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 08:22:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E17452BFC
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 08:22:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id BA5E28C68F7
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 13:20:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8A5C3A7F65;
	Tue, 20 Jan 2026 13:20:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="f8ChORhw";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JlkLSwvg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C307366DBC
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 13:20:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768915211; cv=none; b=p2+Dt4Os8RJ3X4AiNuJdKsILqS8axHBgN0QDJM8IvK1aF9qjehKxF5wxYjLpuPh8GCbQVP1sYJoBrnOGPh14x95VvcuOSZexin4TuEuoJri/PCEOniHBebqKll2z+kkFdL3Vw9fR+8I/bcjO0RvPLoPxD3JI2TUkrBB5IOrL3fU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768915211; c=relaxed/simple;
	bh=QYkxvKyKAR0N672mjccCsuu1WsCP42zC/2ZwEQ6O+08=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Fvz4iNYk46gKlhbUEjB/Yny3ewwZownqgpMSPI2IW9RqWl48Nmhj386A3yf/pUUHiVh/YBNCWFQeU4xDrS9NkMkCPGpE0quiHqLi0gh1tPI3IPOCC+LUb70Nv032h512GDdzsXMgFh7vrIKnxogeiaR+FakCVOrFLo8Lh7BWg+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=f8ChORhw; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JlkLSwvg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60K9l13Y1347160
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 13:20:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Q/xphT9Wk7jl+Tx4ZNBZFaz+GnmNm8/iRie1IvsxUhQ=; b=f8ChORhwf1NRNipu
	TfygW9pKVexoiX+pn3PZe8aL9g9zltHO+OQmSXWK2xPpuLE2sEYAwGYkLcYg+W8Y
	jAE/EkwOQOc0pR4Db4QKwSLStAj0mN+UDA1fmBQlkclMewoLVMXYiz6DeB6lFbNb
	uqV3Nh11m8vI0TVr8vtuYEpesvlIbCquyA4bBL12Qx3LHq6Z1X9k6RSufxSb4geN
	6EgTfIxLWiEf+b7T0xM/OIT+8MMp8uYQ8ABVw78I+6lbx28LPnfchKG9RMBT/Adz
	QUY9KeY4+tQYipuSAqezskswwz+LKgHRi9xq02dt0ZOnB3uGaO6z4xG3hYuXz7Ck
	nHdokw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bsnpdkbvk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 13:20:09 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c6b137e066so46277585a.2
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 05:20:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768915208; x=1769520008; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Q/xphT9Wk7jl+Tx4ZNBZFaz+GnmNm8/iRie1IvsxUhQ=;
        b=JlkLSwvggjZO5HWZLo3L3cWpqlo9yr6BiYEoLhQRj8LECx6JIxXUpUdFCDa35qS+jS
         RWbM5dhIPlS0GwRCYAK2QKkOjh/Ylz5DUjxN0KLpiNGPY9lfqdljCK0r6FvvFH3vftI1
         3IhKJWRXpzNGOkXjEAqcQeCx7ufPHlYdae36pS+rCQifg78Orl23EAmK7hbvxeCQcyeN
         nsjRW4gRSVDGjHck+rgYI2HjtAYPOmyor2p/aoBhZpDMrR+aQf4KOJwlwGOjF4c9NoRh
         pp2CSZ/UflfseGgsUwZQN4njcCU2PJ3iX7Ogp1twuEEyYNM5qP01oms5PXSuyWdRT4c8
         v1yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768915208; x=1769520008;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q/xphT9Wk7jl+Tx4ZNBZFaz+GnmNm8/iRie1IvsxUhQ=;
        b=OJ2p1PMQ8vsPph86FmHZQ4H6g1WfRXAVjw5VUYXO2+vRvb4UYvcz6u7WGmfnub3KbV
         Egq3fL4zXwNBNqMsw/m3Yw9qbX4/AqxtV9oWiGGWpdcmDJ66d9uSQzmdSDXf+Ct0a9iq
         9FIlgk4LXICOL+pRSXoeCO14OPF0Wy0w9qwAORCJ98FwDpaKt1kuU5zHuMv+y4ds8hZ2
         csN1tD3s6C0LCBVwyqIdlUCtzjKrtbgcmzP0dF7PLCt/biujtugJm/0KnJ2gtkvIFLMz
         I7E+2hLAl4XgTDhxsbY6SOXPAYNGENjmucP+gES1qdsaBciei9qtMXNzRZA53bFKvEfn
         4SQQ==
X-Forwarded-Encrypted: i=1; AJvYcCWg/fiUwj3l+2VnrHA+T/dnoejYfatzJh4EsAVtrO2ze6yHM3/3ONnsivDoc9FlcudhJawVPn5zIukR@vger.kernel.org
X-Gm-Message-State: AOJu0YzRBSGKdlYQUxguV+wRqCLGRZaGEsgj4RPp9QHbSBr4DmyVCCMT
	5h/gUJRYe+zT6tvqcpUCWDAosZb5TwbqJcnt0bIzw9LCVdPRVQ81cbfLPOE2XFw6y4RGo9WErb/
	jEStlmeO98qfrfwLNA+JWh+G6xN9Zumijf1AyxHmQ6LUeznk9YwtHnxcMKtusTY3r
X-Gm-Gg: AY/fxX7+/IxSF4J4iSKzYNId2OoQXemDn9ON++fFr1II8bn7bHYwiP97Wny+BNgaQxj
	8zes3lxco4RiTZwD2qdwZOB+/AwIlELozly3oIIgY9WCIFRqumkP0vVd/FoeCzymnNCyz7EWUrJ
	h+39X1ptCcqby6z3FvfXlhK9AfjXUh2RBnLWGgmPjJ18cOpevMvrlZyJe8OZ30R9DzI+0KiHd6r
	lOj631F6lZKGjsCz3MNzfZ6EDdFK0T/o/ird5k9usYGNldAW08PENDaKqF+8c/CCCMs+xiO7Ao1
	4rJ3qYQydW3DmFsRedTojlwlSW/qmt5fApJeBS7FVLvE9FtV+1k2d7OG+gIz+YL5BEwRS7Yby9V
	p6w0myFpWnkP3h6aXSWnNFo763ml4mHZ/YtdLBYQCOGJN+z1wdKx/14gRPBDD9JvdkbU=
X-Received: by 2002:a05:620a:710c:b0:8b2:6eba:c45d with SMTP id af79cd13be357-8c6a66e91c6mr1582289185a.2.1768915208390;
        Tue, 20 Jan 2026 05:20:08 -0800 (PST)
X-Received: by 2002:a05:620a:710c:b0:8b2:6eba:c45d with SMTP id af79cd13be357-8c6a66e91c6mr1582285785a.2.1768915207868;
        Tue, 20 Jan 2026 05:20:07 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b87959fbb38sm1369816366b.52.2026.01.20.05.20.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jan 2026 05:20:07 -0800 (PST)
Message-ID: <a664ad18-6b79-421d-b7d1-7cedee670352@oss.qualcomm.com>
Date: Tue, 20 Jan 2026 14:20:03 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: sdm845-sony-xperia-tama: Add
 bluetooth
To: petr.hodina@protonmail.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260120-akatsuki-uart-v2-0-867ee7f042d0@protonmail.com>
 <20260120-akatsuki-uart-v2-2-867ee7f042d0@protonmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260120-akatsuki-uart-v2-2-867ee7f042d0@protonmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=NtncssdJ c=1 sm=1 tr=0 ts=696f8109 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=sfOm8-O8AAAA:8 a=EUspDBNiAAAA:8
 a=jHSRpuFS0wpEBMYsvAgA:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=TvTJqdcANYtsRzA46cdi:22
X-Proofpoint-GUID: pWjhEvWch6_wOGV_1oltc0W05WEBhu-q
X-Proofpoint-ORIG-GUID: pWjhEvWch6_wOGV_1oltc0W05WEBhu-q
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIwMDExMCBTYWx0ZWRfX6HSz1tVLNXHl
 +DSTqButdEK5DlonZS8CwPP9TyLdRy1WAQ+nVeg9skPAHyWM6vBJVsnz+jXKfVehjwzNe5W1HsK
 FCn6pjlibBhotnkvISsOKIf6aTOlaPBG9Zt/ewT0nbmbqeDb4vMks1nNeD86dfXvoK/W6RJcAn6
 rtLnjKLGb3y+4OC19vQIHFFS5QtWUmc5EUcBCRfWpl/HvIJdx3zzmbodPLd8l2Ktc06FFJW4WV2
 DhSjrQBfu3QUVxvKGm1hj1hr4de5mFiujIIoloatBSrHAemSw1ZzZRZN6vpzp+5E6zDxCODcAi/
 M6+k/RT/NwtMhtWzBT0SXkDYW7gBHYTxXldi3zkCBUOjUAZBa4hbFOqp6Zzn/cIJg9qkn2dMROP
 n95a6J84YCtoJp/MYHjPKf6/UqlZxtGijBq2EnsOm3D4o7Ak+kzGeHKRpOfE8PCaP0enaNKTlDC
 WN2NUWPKhN940dDlgYw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-20_03,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 lowpriorityscore=0 phishscore=0 suspectscore=0
 priorityscore=1501 malwarescore=0 impostorscore=0 spamscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601200110
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
	TAGGED_FROM(0.00)[bounces-257418-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[protonmail.com:email,dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,qualcomm.com:email,qualcomm.com:dkim];
	FREEMAIL_TO(0.00)[protonmail.com,kernel.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 9E17452BFC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 1/20/26 1:24 PM, Petr Hodina via B4 Relay wrote:
> From: Petr Hodina <petr.hodina@protonmail.com>
> 
> Enable the bluetooth interface on the uart6
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Petr Hodina <petr.hodina@protonmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad



Return-Path: <devicetree+bounces-259508-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QHxAErRxd2m8gAEAu9opvQ
	(envelope-from <devicetree+bounces-259508-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 14:52:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 58E6F891F5
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 14:52:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B0728300B500
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 13:46:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1A5B33A714;
	Mon, 26 Jan 2026 13:46:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="I4jILN2T";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MNdy9MKc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74A4C13A244
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 13:46:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769435186; cv=none; b=lLxV7fyUeQOukoEXVKV/CrckIx/Bt052moJ4UG7LBDdnWjyxOc+T2VDkaUs3UcuRt9wrv2a9VX99iENEM6sl68Ezg/5083rI19jiW5v/FcD77nZCsplirYQzc1KwBmB8t96FciLsj1n/rUrbcUMogvcoa70Tg5hiVwSpthAcU98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769435186; c=relaxed/simple;
	bh=6EREMNv1opHIcIxjaOEoYf0X53+PhEvDqpzUjkHFi+M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GPnjhYDACQIxtCAzaqa0HHdlGKS8Y87OTkPM6WDQsX3YQbW6U/eW9Bmjd5Hk5yUXfnt1JKbrlVK2gnEjNlJeACWDEPKtnyL75vUDXyXl75p8rdD/17Z8CZtbLFEk2Gmr4dU7nfE+buTVjHVjFSlNoEJJu9eVfRL7qh9BSKPOZuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=I4jILN2T; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MNdy9MKc; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60Q5UJqK1019092
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 13:46:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kobAhMBzqJz0vGRgZ19XxODBG95USOh1CXbogLVLR8c=; b=I4jILN2TmV9fAj3F
	CDWOpncd069mSDedkyAmA30b9RvLFUd2qEHR5pcglcWGEUVZEfq4ZtGqyvfWVIzt
	ZjwPVuLJMnUTYoUvHpTsXB8hBxcH8vBkjWs3kT+bevxn8GOqAoQ4LxD3ynmuXPJO
	CS3qqm8/IMYriDgFYbVOVgKTYYe9p4v6K4AN//wke7WSqpXNPdLOgdpaSZf/2th9
	j85/Sk+l24SWEC5RTosi92DrBMG6zPJcNSUry3k+biMKLGEJx9BZ08p2sO+/IhG3
	tILfOLuXZAlhMUsGHIZQ3/9FmZAFQ2iw2m5ubVarSmg+R4yg9rVGFMyZiPvNaEr4
	KB/x1w==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bx26815rn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 13:46:24 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-88fd7ddba3fso19338266d6.1
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 05:46:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769435184; x=1770039984; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kobAhMBzqJz0vGRgZ19XxODBG95USOh1CXbogLVLR8c=;
        b=MNdy9MKchjCyjVQOrc/1ZoZXWDJDJSGYXYLwKaDkVCVKcYEhWMAjke6vQJyxlF9908
         oPI26EtCkNzmi481bQefEhuXIw2V2EuIYrQ8GxOhoHbaKtX1qEZDI7t+bN5Oogzzknne
         Ig8Ao4oGhgeUGjZLQBEqsV39jDHJA5a+9Ot07a2MSPnzGVjLCz43SNlvhvli5svR1iKS
         /wngfhnMIUsykzN6NblFypPIgbpcLs4795vqtw4lOC3RltUitBxccfjwraUlxROK4ehi
         RlEIGioQZ25010cfm8XpX9a5i9KcyEA2KNPoSnFkImA64CbCmXgeYXG43bhcE5Hj5kuz
         Um5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769435184; x=1770039984;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kobAhMBzqJz0vGRgZ19XxODBG95USOh1CXbogLVLR8c=;
        b=TEwEWY7LWkwlzBdswrLyGJVscuwkaDNz9nZg11dVujkYROw7DyNX8Y2rG6Hzo444DD
         opfLtBguoXuQS6mtZwb9gBqBM+rVK2w1uDTJpJDIgHIVwhlYyiRX5Yu4xZsFuKcpKL/4
         fPpdcvWgi05hWJlp3at0dFm2Emi5IcyJNXgWpVBhf5pdTVvPB07q/gqJWW0A0oDkrRLP
         8+UA/wn4JOnpbVweq+5OTHBau2SE76z1LtLACxWRcI30mCEstaTVqjvUT77GWta+W0mb
         O6ye6NfsyAwZKd5s3yXAFsmjzol5uaIoGfWeXU/OIuu1dHwWY84RiseVPXsk/6/htntg
         l8TQ==
X-Forwarded-Encrypted: i=1; AJvYcCX82jRbbKPKOvIZhlMp+1xoFbQ08Ws0VsWNEPFsJo8BaUH/ZV2eqNxsaTx8VIt4c+LUTcZ8DBL6T9B1@vger.kernel.org
X-Gm-Message-State: AOJu0YzhewMP85Gm0MpQ9bFUUyrJ/Nj36GVSuGxl0lvtZjL2grDJjgS4
	X9B7+eGJhtVJDQPOuXUTqcMvPi/fEVJ/CPg9+HXsmgq0xsMPSEc6gR44Sfo3eUNSF60WpZ5pLL9
	udgMyPWiBjBcPEzyub4tqgHoxTDQTANqTGPuY09xLVXbsI+SofuUw40ENwIgo+hyGnKmFbgeM
X-Gm-Gg: AZuq6aJ68X2ZOSqTO3WPebVdj2IYb5L7HyTWgmb4+DUp5UAuWhkHjTDBQg651C4MkMF
	0+54LQh8Qv/fkZTYLlYnd6f8vbCPG3Dc+cCuQ+DWofHIKtdbxQnQtQYsSAdyDiLjk3N4RVZZ3k5
	rNqooHK9yq19HjUkez8YYq9XUA55c1IebkRFs9kFp/9UCXntW02grFkljsILkkMHasOzxrUjh+m
	WjgKvgYDfpJ4ioNHFrE/MdtbaTgxDi9JnUItp+BzCbe5ksmM1ek6PJ16uYTdI0X53SR0SPgm3V2
	W0AyXnTMZOPyB8Auuw00pnyv7k+fvxF6sZXIXTe31ftBllKLpvNojBVLJcua5EQmFU+LuWJ4gUE
	3Vhh/2M8qOI58EmoS2QijZrqSaYbXI3cXJ6QcG8V30tFSXj5lA2r6qbjedkRZldrUo7g=
X-Received: by 2002:a05:620a:3187:b0:8b9:fa81:527b with SMTP id af79cd13be357-8c6f95ce24amr404469085a.5.1769435183846;
        Mon, 26 Jan 2026 05:46:23 -0800 (PST)
X-Received: by 2002:a05:620a:3187:b0:8b9:fa81:527b with SMTP id af79cd13be357-8c6f95ce24amr404466585a.5.1769435183361;
        Mon, 26 Jan 2026 05:46:23 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8af1252f7bsm445383366b.5.2026.01.26.05.46.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jan 2026 05:46:22 -0800 (PST)
Message-ID: <5227ff03-3008-48d4-a22b-f9a9b1d9bec4@oss.qualcomm.com>
Date: Mon, 26 Jan 2026 14:46:20 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: talos: Add missing clock-names to GCC
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Lijuan Gao <quic_lijuang@quicinc.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260126-topic-talos_dt_warn-v1-1-c452afc647ad@oss.qualcomm.com>
 <tw2lcfppz6lrmnpcfm5yh5j6iln5amedo2fxbyapx5ralclhjl@tyiretqzszcm>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <tw2lcfppz6lrmnpcfm5yh5j6iln5amedo2fxbyapx5ralclhjl@tyiretqzszcm>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=bIEb4f+Z c=1 sm=1 tr=0 ts=69777030 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=phboRNP_TpV1PgqQbn4A:9
 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI2MDExNyBTYWx0ZWRfX2U7MfLqyBJiY
 zfC14Wv9o+NE42+NkfMds7pjaXqNQ8b8nVTEY6OketVrwwgkKMGHNl8EeD0cpmfviWGKnicGAGa
 JqDWtYyIdx6/Ed/aD1JPXbeUWyJtPA831W6mogHGyNUUxWHeV4Vap0Okl2eobFct8Msx0r+82ZV
 D8tUYEQY1jzPr/CwYjRZDgqlGxwYZZIdi1s0azPay61jTkPdYDTdDoWwQFQoS2dYQaObsqjJbNR
 EwjMgm0VKBSq0wTii9ol59Zh9AeAPUg2bK/yEZjbQU97zpXsokYhncJzWy98ep2h9TCVsI+HOYO
 2Q4mFny2eSCoIB8GAEUxjBNnY6JlWU6naL86aQpjh0HvecsEUFFuXLjQwf+093h3Oxv/ZGlcwxu
 a+c7frc4+/brpjsJvdrt4DKyiPhHYtp3N58nqCRpgImBpVmNh0OCMi1M+hS4qrSyof6Q3DE1Sdz
 FsbS3zQvTk65ER2uDhw==
X-Proofpoint-ORIG-GUID: lM6F95rBceNXLde7YxT3-nvGB5SFxiHq
X-Proofpoint-GUID: lM6F95rBceNXLde7YxT3-nvGB5SFxiHq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-26_03,2026-01-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 lowpriorityscore=0 malwarescore=0 priorityscore=1501
 clxscore=1015 spamscore=0 impostorscore=0 suspectscore=0 adultscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601260117
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259508-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 58E6F891F5
X-Rspamd-Action: no action

On 1/26/26 2:33 PM, Dmitry Baryshkov wrote:
> On Mon, Jan 26, 2026 at 10:45:03AM +0100, Konrad Dybcio wrote:
>> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>
>> The binding for this clock controller requires that clock-names are
>> present. They're not really used by the kernel driver, but they're
>> marked as required, so someone might have assumed it's done on purpose
>> (where in reality we try to stay away from that since index-based
>> references are faster, take up less space and are already widely used)
>> and referenced it in drivers for another OS.
>>
>> Hence, do the least painful thing and add the missing entries.
> 
> One (me included) would assume that the presense of clock-names imples
> that the clocks are fetched according to those names and become very
> surprised if they are not. As such I'd suggest fixing the bindings instead.

The reason why I chose otherwise is in the commit message

Let's try to review bindings better next time

Konrad


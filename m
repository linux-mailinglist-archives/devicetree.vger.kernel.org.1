Return-Path: <devicetree+bounces-266075-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0MX+AVpLlGm/CAIAu9opvQ
	(envelope-from <devicetree+bounces-266075-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 12:04:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA6114B21F
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 12:04:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C2C42300F111
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 11:04:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DE2732ED22;
	Tue, 17 Feb 2026 11:04:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DeVrKWRJ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MvHrcRFd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA5A31AF17
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 11:04:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771326290; cv=none; b=pQppiF85U/p64HCfIMHbs/0IpumPaWcjrcje5kUy0c6yfcgf6QfxzrD/2l29/JWE6NPXj/NEZXJtNhMV9dau6wBExlUwTlztcs7J2Jc1W1iigeafb4lWZY2UQpiCc/KUTmdPgFTr7SbFPn1mrwDaSiG88hDU5qwxiTgazb0f6fE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771326290; c=relaxed/simple;
	bh=xjFZ0hdn//xg8PEJB3ItjmhQ6igL7H1mvyq0vdtLNFI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YhsUCrHo6S35crIsoH2+QDnfZdk7m3V9g3EjYAC8WU9FVhs1SN9pxO2iLfP+Ci5bUK0yZuAXU0eMRs+Bi8sT3I0oVwmrnrNdeVVaQLNwF0RXVmbyPoR9M7H9Xtl4emKJD2S4ujGeuLnNsWMq5Hv87Dt+9SijkSL6rfbQuIixwy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DeVrKWRJ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MvHrcRFd; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61H54MKD2111517
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 11:04:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NcHRxKrlvKBVnphKgCb+nLvOOviQuVyE0fhb8p+XY3I=; b=DeVrKWRJhzoLyeyK
	OaaiE9n6LFuQPflGFu3lx9temf2ICinDQ4FwIAI3GDNnIsi8RWdPC+YLofjgjY5o
	mNeMalVMSwo1nzLt9G5dULwr/aJVoA2ijNLSFvt/7W+fjhHkcPgHrOTA7TYsqxtT
	yTpsFKpUTIkOMGgF5+KxmXfISNQc4EzVW+HEtudQ/cnAj4AUfudUOL+QN8ihHGzT
	6Peg0WMZR5cLp6F0vL9X4nBVi6tikrbMvZyTSW21Erdd5BFxRNixRl2P4r5APnzx
	Pvc95KWiyQnpd0NhV1wvD81euvsrNgvHd5EhzG2eA0AuVBZ0eWY6tzIbXWaxBnoH
	Ofs2ww==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cchv4gs0a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 11:04:48 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb38346fdbso331650085a.0
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 03:04:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771326287; x=1771931087; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NcHRxKrlvKBVnphKgCb+nLvOOviQuVyE0fhb8p+XY3I=;
        b=MvHrcRFdHDvvNJ9xEdUQOnP8iAL1j9GRCYw/hmsSzmmjtqFzLYbZwjadboZLTUAf4B
         NCM4Y8n4ZwufQa23CqN6B30lkOu73/Hxgt/FRI4QaivjVasXOuSXoDV9BxpqtcxvnorE
         VV7dgWpayT2sqo0KyCY5q5VbHEvV3zaP5dHF4MCSm+g3tAHhv4jcbucexxBPPNNiztwE
         RcFD5Pgzu89eZnPO/NNqqV0329WIReJwLyPE9dKsXwCjUt74PpR+m1G1v2FzWZMc7iAo
         cm9edreXQR3CRj1MJg/FO0/715QNO4apVfz36Fk4zyb4x1ud/Qgrw1hTRiIY3gSTnjmM
         h7rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771326287; x=1771931087;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NcHRxKrlvKBVnphKgCb+nLvOOviQuVyE0fhb8p+XY3I=;
        b=MLReleVz1XSFKaB45WC60BjGOjeeF3eOOVTmw9ZQkTEGWXizo57kjZaQAZ+nKmIoTG
         Ci4fIvAtHdQkWKDd46jEhHBhvwMQNee6HQPcugZd8jNHUgUbPFb1frNFdpTFFh0UIGnx
         sNFzLCtksKnU9wPzP23vNut+zP6bBE8M2Gn2WonaXBbt5Ki3vkZDItZuUGMjLZTTGkXm
         RnzMyCKtqCijrDNhlTtKYY5jO5u0+ThLtSReBftnIChU/SqezvMP0cUFpMiGycd5VLKQ
         PdhzfIlfM1CJAvjIgGWs/5C14vVmPW+cEuTIa6QwN2I2u+8yu1cD3/eYGqkaaUr4qwqm
         n5qA==
X-Forwarded-Encrypted: i=1; AJvYcCVCCi2LTlPy/VUqplrKpvnEFTaYzKeTdZEJdTh1QRIHQMeNxtUiilg7dmabAqQTm/RbVD0POx8oeGme@vger.kernel.org
X-Gm-Message-State: AOJu0YxIuF8OISk3AumYh8EGMWbPv9Oi0X9mEMQhRgVvrdEargnEZSG6
	MKmMvsVepwrVPmSHlzFiQSaMeqegn7+6RxCda1pMDTjSqPboc2ZdH8GNizme7DzMJ883zinn+kx
	MpovvBrSFC4oe1JKHtvLZDBHeQ9GdFuNmNNL9tbQDHmokB6hfhi3k030nc7B84/rk
X-Gm-Gg: AZuq6aIi/qqPnkMVJPbgELUmfTpYO+aj+6JqJG7TDO4gUhhgk5tV+lbY4uqj7WVJg1f
	fEHTr01UWvAGb7FvNk1esn/HX1PfuJnSzEElUWe3oN5FeW+AbpyUfA3HYYWTMHVwb5okM95eYvV
	o5gu15xCDNSGAJZXofhA3cS+lskkJrLC/Q3moKTaqlL+iVCRi1U4LoYWvv5H4F/qRA+ypxVHKtW
	G2JZCf2ZREuvAetliBSBW7JNUVveg9JlfOEGKULY1QDyRdmVIfwu9SspQnK8m47Tb+GZymWEt+1
	LIEHqEn7k4uwl4rArHwjlGr5U2qEgvDVAdyY2u3GKVERZlbTvo8wHWa6ED1aILS3JhvjDKheZiu
	HoOr2PjQQJJBCgZeaH4bL9bPxq/bjTJSx78epPY57OF/uFFgy7ja5MLA45cPUsyo355YfVSsQ0C
	IFGf0=
X-Received: by 2002:a05:620a:d8a:b0:8b2:e346:de7b with SMTP id af79cd13be357-8cb40820215mr1405257485a.1.1771326287324;
        Tue, 17 Feb 2026 03:04:47 -0800 (PST)
X-Received: by 2002:a05:620a:d8a:b0:8b2:e346:de7b with SMTP id af79cd13be357-8cb40820215mr1405255085a.1.1771326286867;
        Tue, 17 Feb 2026 03:04:46 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8fc735d1ebsm337347466b.3.2026.02.17.03.04.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Feb 2026 03:04:46 -0800 (PST)
Message-ID: <b6642f5e-c890-42fd-a733-c5ff1cc95d25@oss.qualcomm.com>
Date: Tue, 17 Feb 2026 12:04:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: msm8916-wiko-chuppito: add initial
 devicetree
To: Paul Adam <adamp@posteo.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
References: <20260215-wiko-chuppito-v1-0-9ee6b89606a0@posteo.de>
 <20260215-wiko-chuppito-v1-3-9ee6b89606a0@posteo.de>
 <f5517032-202b-4ae5-a8bb-928144cc5771@oss.qualcomm.com>
 <aZRJb6FVi6B-fgWF@MyryksLaptop>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aZRJb6FVi6B-fgWF@MyryksLaptop>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=eYAwvrEH c=1 sm=1 tr=0 ts=69944b50 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=sbB4V6NMbHWj2XBHrEwA:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDA5MiBTYWx0ZWRfX60smEXYxOfCt
 z5yj9+erUFb31N/grZC1OtB5nXVpkuBuyYmumyeqeeWDbAF1I/qguBxdw9kplQx0VVg7GxNUGCr
 9XYedBdpx/v2kkDg5AHJ1NdVKGE3rUPRbG7tgf8ccdrKzZ4f/YiR07LUaWjIENsTtpFK1t2JQyV
 2cHxYlKLzkchPzjWDjrlGY+ZeVk6WnwQJV8bijCjxfsShjAKHjmSsMMesj/DtiKR8vECQPG58yA
 aB+ppyyVyjymY3K4yLdEYLCmuJg7c4jjvxGBmwV3g6wP8O+B9bW9IiiQufJRfujOq/EboFrAKeT
 TBEo2gJZfQH59BQiJ6Lh/E7m5s4qpYoZr7ogKKCCIId1unl/ZtNKBtvGRLdb0DpZ8b4ebwNLkLb
 D14CtZ91o3J7l1OqUkW1WzvxaER9lvNvHkA1HR79rnmj9+ubN63dumtNNCEuSxDpIWPCNSkcHqE
 +RNvPnBxLVCZBmmJa8Q==
X-Proofpoint-GUID: tJa99JJxzJQX37v3WHpo6Ovd200ysQfv
X-Proofpoint-ORIG-GUID: tJa99JJxzJQX37v3WHpo6Ovd200ysQfv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 suspectscore=0 priorityscore=1501 malwarescore=0
 phishscore=0 impostorscore=0 lowpriorityscore=0 adultscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170092
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
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2600:3c09:e001:a7::12fc:5321:from];
	TAGGED_FROM(0.00)[bounces-266075-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[100.90.174.1:received,205.220.168.131:received,78.88.45.245:received,209.85.222.200:received];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 9AA6114B21F
X-Rspamd-Action: no action

On 2/17/26 11:57 AM, Paul Adam wrote:
> On 26/02/16 12:18, Konrad Dybcio wrote:
>> Hello, just a couple comments below
> 
> Thanks for the feedback!
> 
>>> +// make sure gcc is probed with display disabled.
>>> +&gcc {
>>> +	clocks = <&xo_board>, <&sleep_clk>, <0>, <0>, <0>, <0>, <0>;
>>> +};
>>
>> Do things break if you remove this line?
> 
> I tested it without and it still works. I just included it because
> it was on the pmos msm8916 mainlining wiki page. 

If nothing breaks, let's remove it :)

>>> +
>>> +&gpu {
>>> +	status = "okay";
>>> +};
>>> +
>>> +&mdss {
>>> +	status = "okay";
>>> +};
>>> +
>>> +&mpss_mem {
>>> +	reg = <0x0 0x86800000 0x0 0x5600000>;
>>> +};
>>> +
>>> +&pm8916_l6 {
>>> +	regulator-always-on;
>>
>> Is there a reason for this?
> 
> I removed the always-on property, it was for testing purposes.
> mpss_mem is needed for audio to work.
> I removed mdss since it is only needed for the panel.
> Should the gpu only be enabled when the panel is added?

Ah, I only meant the regulator-always-on part specifically

The rest is OK, including the GPU and MDSS

> Also should I wait some time for additional comments or immediatly
> send a new version when all remarks are addressed?

Normally one would wait some 2-3 days after sending. Because we're now in
the special part of the cycle (post stable release, pre -rc1 release where no
new patches are accepted yet), some people will be grumpy and actively refuse
to review your changes but I wouldn't pay too much attention to that

Konrad


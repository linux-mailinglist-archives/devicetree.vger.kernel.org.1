Return-Path: <devicetree+bounces-266117-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4F3bMXBilGlfDQIAu9opvQ
	(envelope-from <devicetree+bounces-266117-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 13:43:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A45E14C118
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 13:43:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EBF1930305F4
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 12:43:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C80B354AD8;
	Tue, 17 Feb 2026 12:43:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HEcMJIBS";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DMLKL6wB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECBB63542D2
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 12:43:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771332198; cv=none; b=IFy4Xs615LhpZcCHu+sbAv5fpJ+YF3pxiFSzyK8UoIqQv4xcPALJbCRMIsko3Cod8hjVuVZcIk72MDSg2mLJcWuJQAcv0OEQntlVVw946JfSUAhQHgFFjEx7wz2RIVXLgEWSAG83Je3+k5V3iDqkhLf9IT6cWogQrboDCC0sL/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771332198; c=relaxed/simple;
	bh=4QHlZiAg2nr+h401QmtY+/NbyzOxnSl6KaALxYS8iWU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WiIxYKz/sfFEbAAhcZqXVztOgBjS8pNfR4DLqEsArufObrTGpyO/2Ag4+m5hiTb82KJo6UWbrgqAnrTNsm8XRxm7M9ARBNaepvIWCcyxWvYJ7+b3GoWm9zC0qfgEtrUq5aVqoZrn5R467ch2euFdvm9MbDF7evCqrlftNjygk6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HEcMJIBS; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DMLKL6wB; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61HBmF7O2417574
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 12:43:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LSGV+cDMrzNJBL7mWZtz0+eIS66GpKCa5MLYXFvWgz4=; b=HEcMJIBSybtdCLpG
	6uCve4e0Qa0ahXp2gdjODYBpeDZJ0uK+AV1sf8LbVH3lQu3cR2VDaO+/6XNVuq++
	NiwNxw8gZ+/i2D/BH03HUDE+tc7qqak+cd1ic+xhRNvj7YtPJ3G3xhvb0YTvABOS
	DhZMJ6FPV4vb4GTgCDGkIOGDx1DLd12XakNd59VAeoqNQLWj4R6Ub1KcQRk95cJF
	YuxxG4D5i7hToWEZkhZpxNLaM6aE6WFRzKTQrdtiseFkWTGqXs1hyDgueX60FTpM
	bc1pw+ZG/1tD/j0pVNYRSbOy5OIa5rI/+kDtNILt1EJC5+9ZNu9FPa7jrPfH//9g
	4VT7TQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cc6tma9a8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 12:43:16 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb45a6b860so228452485a.0
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 04:43:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771332195; x=1771936995; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LSGV+cDMrzNJBL7mWZtz0+eIS66GpKCa5MLYXFvWgz4=;
        b=DMLKL6wB3aUmjl/94XNkGrXtG6M9SRiFqHHIfqn84FJa47qHx8j40i0DC2n3R6UUnQ
         pIuwZGsNgMRScVcVbb5ezk/On9JEjrll6Wm8KZ+ZSPIVrrJNdV6bqHRUcaCZMlGaz4kX
         VK2uoRn0wy5kskCPG659wT1QQVN9Le/fVZ0cpFChcTXD7xgL47LCoByX9vCrl6Rw/w8X
         2G+/ejOZD/EwWlYVawnabCp7gPyFowBE8lba679WpQX/ph/Et/ePm0Xrs7G2d6zvuGhE
         38RMj1253GP3vF6S3X7K5CPfTlxX+uabtojNkG7t0JVJghLg+WXNKcwSXUy+YHF447Rq
         t+lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771332195; x=1771936995;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LSGV+cDMrzNJBL7mWZtz0+eIS66GpKCa5MLYXFvWgz4=;
        b=XtDJxh6srmkooKce1xS3H76mbtx/iQqtXspInAP4HbDZNeOfse+bkIGjiLCfQVnrh1
         nAhBvIjFshrJJD7yFU9Ocdn7q+qLMw+b/PYSS0g57ENy9lRcmNvqQLa3PL2yTWanPagI
         ska1HIF9kcI8sDAD297leIFZQbj+2ErWNBQwHbWG/PHc5j/8wEIfo4vvTho5IKfoZtZV
         4DY2ja/Rw/YXL8cHz0U40dypZ31WwcIP9J/VUalQeppE8LhLVNpxCEwxOxRdhItXz8OH
         PiG69D6DFEVavFf6xkcbp5c6r6nvMeqBZgitPNZVyvVimdMp+dn6bqZBgCfoZ5maDYiy
         y+WA==
X-Forwarded-Encrypted: i=1; AJvYcCViShqyuMKpsndjtLDQ2Qd6fqzn7N35GIXVCgzrlvpiPhLmMfBbfk4NA8RR8qpHVOXvDYPprlpdBFXE@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9N2TYfmvIR2R9ESvmIBPs0skr+qfa8HEHMw+bGSx8tFwW4pT/
	38Tbt7cenCRs3WKpkbCOE+WxpEObTQatXWk0oDJQg7bcHzntX0+lspUCR2AubaywJYN7CPXWXdI
	BfT93rtRtinyHPSxOP1bsmyyM3DNbsf+VJbBMYXMXJjrtAKpVocu9GXIHFDXPTW0e
X-Gm-Gg: AZuq6aIcT5ynv2Yrxv4Qv4cf7D5Yu0uHL5rZak7ndsyCTZXxIQpVHVeGALI8zl+KWh0
	RhCyV5H+0hVc+QdBt8l710Ljbjy451FjSScdkUj+BCDlMlZ0JyduvnfxYRKk31EnpWexb19ertX
	H9XG0B8em4j2EEHcAonkkuBE9G0Uu8acC/kklf4tdRMk+D6d2ZjXGx31h9NsER6dVgTeEvK6Zq7
	GtU+q/9VKcdbY0FPn6MgPDLtfCeIxHsFH3FjXsEVCwgkpeX+xLh/1OWIpuErU4JlM+hndFtJuW6
	l69IN7Vfem6i3KnmyWCycOkpOploCFLTZfmXht4dV+zIkotTDmpNSMzKvUMCu03YnjVgiSsEq13
	VTBAbGnbbtQec5uxZHl0yMHjUOwLhC2zAr0ANQZe8bVEhiaXba2nyPPRNZtzQtyh5fT8QfbdHzX
	UE/L4=
X-Received: by 2002:a05:620a:2988:b0:8cb:3a1d:79fc with SMTP id af79cd13be357-8cb4080809amr1276636985a.2.1771332195257;
        Tue, 17 Feb 2026 04:43:15 -0800 (PST)
X-Received: by 2002:a05:620a:2988:b0:8cb:3a1d:79fc with SMTP id af79cd13be357-8cb4080809amr1276631385a.2.1771332194210;
        Tue, 17 Feb 2026 04:43:14 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8fc7385d99sm333776866b.17.2026.02.17.04.43.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Feb 2026 04:43:13 -0800 (PST)
Message-ID: <e8eb2a60-d0d1-4522-a70a-84386e32ab1b@oss.qualcomm.com>
Date: Tue, 17 Feb 2026 13:43:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 5/8] arm64: dts: qcom: Remove inexistent TCSR_CC
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Linus Walleij <linusw@kernel.org>,
        Melody Olvera <quic_molvera@quicinc.com>,
        Taniya Das
 <quic_tdas@quicinc.com>,
        Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>,
        Jishnu Prakash <quic_jprakash@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org, Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        stable+noautosel@kernel.org
References: <20260202-topic-8750_tcsr-v1-0-cd7e6648c64f@oss.qualcomm.com>
 <20260202-topic-8750_tcsr-v1-5-cd7e6648c64f@oss.qualcomm.com>
 <d81849fd-dc32-44fb-b523-2026f2c0db52@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <d81849fd-dc32-44fb-b523-2026f2c0db52@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: O-RbsAu7Sb9OSuMYDfbdnw1S28I_Wx6r
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDEwNSBTYWx0ZWRfXylH69cR/1TJ2
 EQp5dlGkESIWtzLL7JV4h1O40fDj2lsq82u3EYsjmmj10SOV7LXA1q/sikXIb9ToAdF3dhgQ33h
 Pn1mZCNXo5ElL5F/kIXqT/b1xiwnCaakn/BtBOHLXls+ctal4ATpqJSUFXpvaYtRDQHP1GPwozh
 vsoLFf3ScMY0sBLPsbh8T1QNa33vXLtXUSn481epBZzMwfsR32eSHwQaLPMc9ShUdHFxYyB048I
 KWYHdwk5Ab3oOcCDstFUcjqI2e4vli3UTld7I9OzmO2LY0uy+hlEyzt2QEyiXCs8r0k7iCMNyqM
 ylpGpjRS1VnTR+qPYiwqHqQbueJ0u1ggmRGR+PO4Vgnq4XPX4AO2iLxcH8BDJ9IDpKlWSyRnoP/
 Ts5tj19l8v9jF0ysDOvOwYLOZQwQgvWn0XOTGM1C/EDLEzECdcfRBfXJQ+p9fxhhn/HqD7ux4ob
 oRyyp/Uym2q/A37DX0A==
X-Proofpoint-ORIG-GUID: O-RbsAu7Sb9OSuMYDfbdnw1S28I_Wx6r
X-Authority-Analysis: v=2.4 cv=IOoPywvG c=1 sm=1 tr=0 ts=69946264 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=HEtdb3PhFzw24E7G2eEA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 lowpriorityscore=0 adultscore=0 clxscore=1015
 suspectscore=0 malwarescore=0 bulkscore=0 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170105
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
	TAGGED_FROM(0.00)[bounces-266117-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,noautosel];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 6A45E14C118
X-Rspamd-Action: no action

On 2/17/26 1:39 PM, Krzysztof Kozlowski wrote:
> On 02/02/2026 15:57, Konrad Dybcio wrote:
>> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>
>> On SM8750 specifically, the block which provides various reference
>> clocks does *NOT* live inside TCSR, but rather TLMM.
>>
>> With the former now being able to properly expose them, switch over to
>> the proper source.
>>
>> Now, the TCSR still exists as a block for various tunables and
>> switches, however the prior misuse resulted in its 8750-specifc
>> compatible being already in use. With it freed up, it is now free again
>> to be described properly.
>>
>> Fixes: 068c3d3c83be ("arm64: dts: qcom: Add base SM8750 dtsi")
>> Cc: <stable+noautosel@kernel.org> # complex dependencies, no immediate gain
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>> ---
>>  arch/arm64/boot/dts/qcom/sm8750.dtsi | 22 ++++++++--------------
> 
> 
> This will break all the users of this DTS and commit msg is silent about
> this. It's also silent on actual bug being supposedly fixed here.
> 
> So again - as explained many times to other Qualcomm engineers - you
> cannot just break the users silently and without justified reason.
> 
> That's RFC, so maybe you planned to rewrite it later, dunno. That's why
> I did not review the rest.

I assumed the explanation in the cover letter is enough, but I can
include some more context here too

Konrad


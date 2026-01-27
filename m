Return-Path: <devicetree+bounces-259861-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0DwiJhKpeGl9rwEAu9opvQ
	(envelope-from <devicetree+bounces-259861-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 13:01:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D5B4193F76
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 13:01:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A4C623017BF4
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 12:01:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D915330FF2A;
	Tue, 27 Jan 2026 12:01:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dK7+b+Qi";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZV6tLxXb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C9B6307494
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 12:01:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769515273; cv=none; b=AXvJ58PANqTBQVohOHFOosdSE4Ad3WDJKM6fA9AB4RAEry/v46RXB8ZTDgnQO8wGc4+2pHNRZDWgEtUvxG2wT6EbklbKzeLDVoKTUL0AQr2VS2I3iRZ95ApkszyzOoUZdrawAIcpji/6lWa5a+W9telo0FZSqQGnoOBqdigF0GM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769515273; c=relaxed/simple;
	bh=59jZC3zVM0ODzHrMCPvgBuMQDB3OwB67FU4fWRwKHGQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fmqjsnPtd4dPCag4/nsm8hw0Tf7zA09qy7hXKyb9afq34G29gYp0RPWgSdS0z6cz4OA/ijwpBbtT69up8wBcXVKHW6bB1vSI0YOkS6v01sqrXTLmYjKiDUT/hrJ4uqzL2HKAy+JOor8YSjha1Dy31SYTeU3O69pH3iCUdPlEMUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dK7+b+Qi; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZV6tLxXb; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60RAKZVI496005
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 12:01:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zoZb2MS7iH8UWFdtI0bG1tG2Hg+LVF5otZHfxHqr3mU=; b=dK7+b+Qi4tE7j2zc
	tsVzwmAQTaQryCovB5979t1lkteqtjSlYu740iqhZy/olDqRR9r0Kzy16fA1v8yC
	vdyPqRJuSd8EX+Nr4qs8p9iL+AZW7BIQW+NSiiKvPoFRUWx2cGIZhrVsPoOfrHnd
	iur+rHLYOLdAu/Nk2e7llsjqyxwzwJ0REa8250QEehuqBob/t8IXQhEIOAtGjZaR
	3jmB0+OcAEKOZaa1rTWxEmARKHh3MFySbGRuUktN4HiGcmAIPHG4imcfe+cwN96T
	aMWNEpgIPH0rNI2QcV00yDpMsLRdh2Iqo3vGH1/DEYXhzwkYQ6QDNyiFBljySDSi
	UZo0XA==
Received: from mail-ua1-f72.google.com (mail-ua1-f72.google.com [209.85.222.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxf3bjmur-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 12:01:11 +0000 (GMT)
Received: by mail-ua1-f72.google.com with SMTP id a1e0cc1a2514c-9480edbce57so871423241.2
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 04:01:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769515271; x=1770120071; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zoZb2MS7iH8UWFdtI0bG1tG2Hg+LVF5otZHfxHqr3mU=;
        b=ZV6tLxXb3SeExH/UbE/ejJR7CrbnJfOY1ruVy7GhDm9tl6SXwzsnu7NCACRry/wACA
         c4HwqReQH/iKoT3QW37W3Z3d9JUYNkYyx/T8tmApC+RnSi/nZIYckapf9C3CLAF8fwFt
         noKnUuwhd1cAaUWgeGdrPpqPDcbS6lZV8d1VSgaOwcHysMOqM0Wzsw8LHe5hV0YLPQKb
         EljfHNIWx4hw6Krx7tRmF2lSXqVg4imCa+igRGP3PMFUo9nbols6VV6xwoVhwl7cWN8Z
         dcVM8W5MEUB21tB2J/QdvCl+TxQg/zILxLynRMIrfYJhQXeZdsKtCAM/FNlFn2GYVNpF
         FVdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769515271; x=1770120071;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zoZb2MS7iH8UWFdtI0bG1tG2Hg+LVF5otZHfxHqr3mU=;
        b=WiNEIgQC7xDSRkQrf+LuTwueevNJqbRzuF16b78kJuJAzNzkKz4fDb7kIfOpsQ6LNX
         YvvOAZn8+4UC7flsI7CgKc1/CoVpGG9fHXcRl5ZvMoChqHT/FHstTCaSTCloqcSKVX+N
         3Jx7T+romPCSobAWUtKh4Y0yYRJrC9tiom/CKEBQ0JMKgi8eW6tQ0ujdE0TY+AqsGMiY
         sj+JDy2FL11NNLF4q/8Z9h/aF4Km7aI9ylGitHy5773YhaHWNNuz/3/pv4Ywl/OgPlvx
         RcAudbKjORt4yGZx4IhOT9eR7LO6am7SXp8xfk2BqOXLXrI3ZE8aHZAjnrceBG9a/VQJ
         aeJw==
X-Forwarded-Encrypted: i=1; AJvYcCU1XCiMXfsypisPJs1csfSeX119Yr9RutKthH1mvV5R9U8LQk3381nay9Elu1c6gvO7eFujVOjImakJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3NQSyf2aSyCICYvymuegMFTwL1gBmnjimhTwE6WWI0iFykpGf
	fs9osM508sYXvplPIm+gyUbAEEiZiQLcoRWozS2OE1kcpVdW26DphtrPDxFe1vukqeGdzyAvb5b
	hQu4gnshoLKH2yNc19tPuWt7U6MCCpZ9liJ7th05N/cDhb1gd0soqHA6S2NdO8QPv
X-Gm-Gg: AZuq6aJh1jv5AOJAJz7+hs8s59dbK0FY3pecF0l7ITeC0lo4XxHoOSJF1m89oQiECqj
	W4TFR9rLNxXb37vUpkF/UaPIP4h8t3FF2KjFMIRh/7bb1VT6uu8fhsqAPqUj2jHbuqDFLTyj5vn
	ABR/Xc0oaZDDaSr8irSBAIW6LyK/sMtH7oGBpwBGxsVRbSA6Vowr+9nyQVtTO5j3UW+7Z5NQeKK
	Rr6XgShvBx3SCdcSp2NzFvfJfS0TqNohCKojjbknctxM5VwcPf5YkubHcghzM+ehJedMPEw+FZ/
	8vU1163+c8aavcII9MXRzyGLdiYF5LNuQRT+KqfvRxxHQsQRKLx191KaFGoUZLdHKDWE2t5p3Xo
	eHkfRQDzfY8cziP+HuVxNqng1WhP3pKUtwWYX9dW1308dEU0FWq2mWC9ACLoTrEoATfQ=
X-Received: by 2002:ac5:c752:0:b0:563:3eb4:74de with SMTP id 71dfb90a1353d-5667935b563mr172588e0c.0.1769515269102;
        Tue, 27 Jan 2026 04:01:09 -0800 (PST)
X-Received: by 2002:ac5:c752:0:b0:563:3eb4:74de with SMTP id 71dfb90a1353d-5667935b563mr172568e0c.0.1769515267987;
        Tue, 27 Jan 2026 04:01:07 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b885b3dac6esm810273266b.7.2026.01.27.04.01.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jan 2026 04:01:07 -0800 (PST)
Message-ID: <c01b5b95-2aac-482e-80d0-89cc1599bc1b@oss.qualcomm.com>
Date: Tue, 27 Jan 2026 13:01:05 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] interconnect: qcom: glymur: Add Mahua SoC support
To: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Mike Tipton <mike.tipton@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
References: <20260127-mahua_icc-v2-0-f0d8ddf7afca@oss.qualcomm.com>
 <20260127-mahua_icc-v2-2-f0d8ddf7afca@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260127-mahua_icc-v2-2-f0d8ddf7afca@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 1mxAnok7EmL4PhQnISCG8URLrnMGegI7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDA5OCBTYWx0ZWRfX/L9d+t/c0RTH
 qeZ0OtV986TuNVAIUiC4s9od+ZVROHXfqHnIzlM50p1B/0cwbqSVJ1CrGOQHbPThpSyg2Xfs1R/
 0YRR9GA+5HDTsuTuHH5OVnZRzFmdeYiudJipxtSflOFh07xmEyQAyuKTAKEfWrkoq/QZScSzPpr
 mPQgBTCizWijO6VJovZJrYQT0VT13yQ/HBqGFVsam61iDefDXNYfgmtlbi4SEs4aq0OfOW0EVJ8
 PJaAomR7Kt7u4bizk/o+m0DlFqGH3t39G5AwhsEc767o5mnN1yoLL2YZx3WXDAcazgq4V6yz9F2
 5dFBJlsD2mPDRu4ilhtKjltZOPVeIZ3YjRopuyMwmHdwvBp8b7pfFyAiNyyBkyRHu6F5AvtqEKH
 FjfbqL0+ZcSOp9O+FpVgkK71cVpRwLiLxPSFyvbEboqHWG6a8590YzL4QD0MzWb4M1eeZlas6bV
 jhkY8tayekzzLgijZeg==
X-Proofpoint-GUID: 1mxAnok7EmL4PhQnISCG8URLrnMGegI7
X-Authority-Analysis: v=2.4 cv=AOFXvqQI c=1 sm=1 tr=0 ts=6978a907 cx=c_pps
 a=ULNsgckmlI/WJG3HAyAuOQ==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=GtF0_HNWVELJq49vNZ0A:9
 a=QEXdDO2ut3YA:10 a=1WsBpfsz9X-RYQiigVTh:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-27_02,2026-01-27_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 phishscore=0 adultscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 spamscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270098
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259861-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D5B4193F76
X-Rspamd-Action: no action

On 1/27/26 4:22 AM, Raviteja Laggyshetty wrote:
> Mahua is a derivative of the Glymur SoC. Extend the
> Glymur driver to support Mahua by:
> 
>   1. Adding new node definitions for interconnects that differ from Glymur
>      (Config NoC, High-Speed Coherent NoC, PCIe West ANOC/Slave NoC).
>   2. Reusing existing Glymur definitions for identical NoCs.
>   3. Overriding the channel and buswidth, with Mahua specific values for
>      the differing NoCs
> 
> Co-developed-by: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
> Signed-off-by: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
> Signed-off-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


Return-Path: <devicetree+bounces-276082-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cO81BuvZt2mcWAEAu9opvQ
	(envelope-from <devicetree+bounces-276082-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 11:22:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B50D297D56
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 11:22:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1DF3A301E73B
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 10:17:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36C6938E13D;
	Mon, 16 Mar 2026 10:17:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZOizatBh";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HAOQGrM2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AF8883A14
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 10:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773656231; cv=none; b=UhdkCxkbfZhQkhbd1M2stnyOsX+nmtMALAF3FJInVKGdg2ZB3TcVoB8ycAvrNNVHNcfOwvSM2103PzjqKl3A8BuX972hXFXpL+Riq+F/0k0lTx4axYI8ZpAgl9PmGaIpTPhUiTF39Zl3FoVtof0qkJTB8WAe2RoTW09l5gGLYcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773656231; c=relaxed/simple;
	bh=3BUb68G6E1p0i1OHD5nrfVEdL6XAIAP3G7qZNqzuW+A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GWKe1rZrrtal7UCA4IjZ00IEU5KN8Kj1g596Dq4yIGWPguh/5pYR8VaQNTtBYT37TVqzay5e5SabRq+htzciOQOijxiE20vdAinstS3MF86C8w0x3ny6q2A16CV1gVUg5Iuxr2unH8d9gPlkh7qt4RYCq5Ov33RpzXP4Y9QmPMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZOizatBh; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HAOQGrM2; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62G64qBe1067822
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 10:17:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lCZs4K7xmeu92jnzkVpTVH/0CisqEUASlHg/j6UvPYE=; b=ZOizatBhu/fa449q
	zVMmsM/lPBGTGCKyFfy62hLvTKD2JezbjLSqsS4Kvw3LOf5XMV5TGFgUoX4vF3zy
	UH7exMUq+GsV1ny48lE1t2T/fy5PECkTVEGVyt/KRhNKujGiyJ4ABibslWb9FiZ6
	LauKAlHpcdn4Li1oznPmype8cS58E8WsT4GXvGkTp8AUXMzpUHX+ZW4xvlEAhdxL
	7Sh9JCOGSD7ESwsA5DI6lNhUBXew/rrzAmOn5MV3b7rG6NSKznB12gW4Bm8YpoSl
	/B4AYjXUp6az2zzWLqgANELZShFmzcQBx0rkwSXrhkusUylR3iD8S5NheGrVtYJa
	lk6jvw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cw027d84g-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 10:17:08 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cd93c91075so297065685a.1
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 03:17:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773656228; x=1774261028; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lCZs4K7xmeu92jnzkVpTVH/0CisqEUASlHg/j6UvPYE=;
        b=HAOQGrM2lwdORyN959/QGKqVV9qK5FA2Rlb0NlslGvaafZVedzEyeqAlmyxakntS+g
         1tnJ25Gmh+fKGAVmFwd94bIIYapBEuqUKqCmkDl+qOS/rXOHwES5brfRt6zRXWV9x9fi
         c2sv63NvvRvsuwEpKS5TB/dax5OmtMQDubHwK20cYvJ/VQ5aNg/oFtQIOR90BAuBm4i1
         w0DCrGQKyipCDqcIJRJO6MH1csgQZMMjRgryEfvdrjzkzNSg8/GAotDdPQqIxTypCLdM
         1Wbbbe1G8HZXV+4oWSSIeTFe9G4Qj8i+JS/DW0zO2RFcCGBIDWX9HWEBbYNw+7g4QJkZ
         wH8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773656228; x=1774261028;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lCZs4K7xmeu92jnzkVpTVH/0CisqEUASlHg/j6UvPYE=;
        b=eHbc9ar9IuH0Iq9ecgi0AwY84J2klgLfbrTmrT9S+KRMdUgXVobUXT+n7oG9xMrd4g
         4tHCCjrRuDjZY6rOTDDqILVUVsxJnY5f1zSrCa2PpbIdhFKd7VobRXsbCTgFEnzNFk4b
         FR0ZMKpF+2blSKaLQr+me2J0ANN/ST+c+KksaChGkl6NFUoMtfYun0Ar4bBJ2rH9l2mI
         J2QQksFmnt9Vg8kljhGHaCDnexuG9sXvmbZkNSalKim68ywFNKkYqXsL9D1EQqakOU+/
         tTHCth2UwRNA1pZA0T5VtdhNrCZxyAs5xcYG18lIHOMPH2JBPuV2+btswFsgxjTfrwf7
         zVBw==
X-Forwarded-Encrypted: i=1; AJvYcCXeRuUTmOOBS9gEU5UAU0WOkgNYmX50L2jPKvCqzmMpJCkqA6kJbb120rUwy1VBFIy2lw68kUNHwfAM@vger.kernel.org
X-Gm-Message-State: AOJu0YwpC1WKa6fQto7DAwfiiavjBv3Q+uy58E9USRlNAiIZfDOpIWL8
	WAc2fiyPQPvO/rFziJJWaBvwsq1MFJbV5PGYLQfztQbyklC+RnHfNFh9/sw1e8vJrABbYhUjGpr
	cwl+XXRoSvUGCta7CzHbL5VE3MpEvO764U8eWIqKm5tKfv1EqvXECD9zLayPgaXjs
X-Gm-Gg: ATEYQzzDkqjk6uD7UDE70qSSrc5z7ZFtS1kvFaEkYk4rfh8t58wlL0xHFoxr/vVsSPq
	DzoQJqljjLYRWHC8LLzrRTaGszhFPHbvmDK5jepiFaUAs8TGRhv6EKw0jKQkbjFW/m482/9XJPQ
	9AXhUaF5AJWyYA4Prbx0+7pJbpwUWSfBf40Tzr81fsjgdYZ5EqyAfTd0wtlq3bUi1//YbRgeeZL
	/ma0pUbVBx/uOL0aLRVKkqZanbTKkl77MHaEUtVSwcKJ/6fFiJANJeFHa5SFcsVqsdBjOKt1RQv
	4+/ZLyRLsxhuA0oLLD2Ns8/QIv+NUM6R1FgWAelUWLIM/NNsqAlIbZB47uMVorp8vra3zPZYRq8
	72N2z8cnHms/0TFvRsNufCdfmpuSDN8B2wAfhq9vWhHYLLCgCik0Kq93ZavIFYzy5p58vZDHgBB
	aEyMk=
X-Received: by 2002:a05:620a:45a7:b0:8cd:933f:d8f6 with SMTP id af79cd13be357-8cdb5a55831mr1206036585a.2.1773656228387;
        Mon, 16 Mar 2026 03:17:08 -0700 (PDT)
X-Received: by 2002:a05:620a:45a7:b0:8cd:933f:d8f6 with SMTP id af79cd13be357-8cdb5a55831mr1206033885a.2.1773656227970;
        Mon, 16 Mar 2026 03:17:07 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6634fbb9bedsm4831284a12.3.2026.03.16.03.17.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 03:17:06 -0700 (PDT)
Message-ID: <0727b1ea-faef-4b7d-a60c-098a17c62b5c@oss.qualcomm.com>
Date: Mon, 16 Mar 2026 11:17:04 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: firmware: qcom,scm: document Eliza SCM
 Firmware Interface
To: Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Robert Marko <robimarko@gmail.com>,
        Das Srinagesh <quic_gurus@quicinc.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260223-eliza-bindings-scm-v1-1-c88643112dd4@oss.qualcomm.com>
 <20260223-flawless-shrew-of-skill-efe049@quoll>
 <dqgcqu2wcskl7rxpv4gf2ltunopyjd2cpougkljga6ogih5x42@hji7dtp36cvu>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <dqgcqu2wcskl7rxpv4gf2ltunopyjd2cpougkljga6ogih5x42@hji7dtp36cvu>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: m7qSRkXGoenaE9OKEsJFixybSTXtXIUZ
X-Proofpoint-ORIG-GUID: m7qSRkXGoenaE9OKEsJFixybSTXtXIUZ
X-Authority-Analysis: v=2.4 cv=AqXjHe9P c=1 sm=1 tr=0 ts=69b7d8a5 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=m37IwZ4EKonH331Hz6YA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDA3NyBTYWx0ZWRfX3dH/bsNKrKbd
 d5l8M8pcYBPn7I5Cr2qmP3YaQF1XAONx+ffJybCn1VulRhApRqq3PtvWTYniyRbg3i9OMUgkoNr
 9C4wgUnph36vzYTvYMpUg3XEYYduxq+Cag8gbRRAUAbWtmCLozFHHCpfUJB+CZimz0WZCE+qriQ
 fYhXJI2zVJq16DTmM0XlZMJ1n2bRAUYB8vc5g7eI1AXiJ4U+pjj9RbiFXCSzqtoljLd5A/yduMc
 d1zBKbiyVjQlnAEyOastfKh59/5NmSvsJIGzoXeAEet2dwhjviwsNUXrQ7zovD29HovTs3/BS0x
 +b8rEwstDnClvftYGnSDXHWLb6LCaYhUSS+Srb4sJYWWukBdnrAm25oiejKWLKovY8MwEvUBTy4
 cnv/cpJ26drKsloFOMM5sP5GE65uSzqkLJgCwSObjh5i38Z2qOJzD8ZqEnEnydbzRIZ4ao85vlB
 sODtbNw/VD4ME7Llvzg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-16_04,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 bulkscore=0 clxscore=1015 phishscore=0
 spamscore=0 suspectscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603160077
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,quicinc.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-276082-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
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
X-Rspamd-Queue-Id: 1B50D297D56
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/10/26 11:23 AM, Abel Vesa wrote:
> On 26-02-23 11:41:31, Krzysztof Kozlowski wrote:
>> On Mon, Feb 23, 2026 at 10:42:02AM +0200, Abel Vesa wrote:
>>> Document the SCM Firmware Interface on the Eliza SoC.
>>
>> So different than sm8750? Then you need to explain, because patch looks
>> odd (incomplete). Plus I am pretty sure it fails tests on your DTS. The
>> point of the bindings in DT schema is to actually use them...
> 
> So as discussed off-list, schema doesn't fail with this patch because
> interrupts property isn't marked as required. Not sure if it should or
> not.

No, that's for a "value-add" feature when multiple OSes run at the
same time

See 6bf325992236 ("firmware: qcom: scm: Add wait-queue handling logic")

Konrad


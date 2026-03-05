Return-Path: <devicetree+bounces-271500-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EL6aMiBhqWnj6QAAu9opvQ
	(envelope-from <devicetree+bounces-271500-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 11:55:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FAD321021A
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 11:55:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9EDA530351E2
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 10:54:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEF9037FF5E;
	Thu,  5 Mar 2026 10:54:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hNNQxBG/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LLxp6qN6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79A21375F6D
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 10:54:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772708065; cv=none; b=TjHoGZuGTgue+ooiMc0dO6o4IeGL24klgXwwIv8fLmANOhAcBIH2oKJGmDTbkgZI808eWINdCkepISHjs9Rk6X9zlG1uzrNl0f/EuIbpVthJOZRsxK57NAHvIxEVdwEh6VbehGrPgnPuOidnKtpzefGz9GSF5kW+Jg8YCSvVhRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772708065; c=relaxed/simple;
	bh=t9QH2E7XqNSSkspumDdhkdVf9bsBSjDlV09oyzrTWAQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cLuCUQd4zJ+PmEOXII8z6vz+42RJ1YNOIrIMbCRgSyR+sTWf+8pM4zs5znvhHTuTqIuW000XEAw0jkwG9CC2HaZrnOJAnDaCNcKvYtVcUxK9UQbcWfqKIXW8DI7lSzCPnfirrtVtHv/uHUR0tluzIp2dlQhlDOTpeFx0WON5tUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hNNQxBG/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LLxp6qN6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 625AFvYN450560
	for <devicetree@vger.kernel.org>; Thu, 5 Mar 2026 10:54:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	t9QH2E7XqNSSkspumDdhkdVf9bsBSjDlV09oyzrTWAQ=; b=hNNQxBG/Ln1XrAnO
	ZvnG59JyJlTRowKozcHnRnB6BOhlEypeg27HMEDTTl2CKs68mMgd06goHSIlGCpk
	b/QukA6wqTxUzTp9Ms8ck6BxxErHBO3QSJJHi2YxzJq5ihGZdnvBs3XPgy1SBCcq
	j9ENO4fV2ahycXatss5qGyHxwOmjzFOpSY7Efed4wlbtGvgf8u+jBw27LcqqPPfC
	PHTPY6FBcR+QxB2uhUyuvefska77sQ+I2AsRI4T638NNp2dMvWpwpVAIu33gjYpt
	o8Ja9HvwMRoXs8bCS6xvcZ/IM6+Mf7wM5pCUK6vqHi6f2Xs60TVMWOAZkibalmxc
	8KMj5w==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cpj184dfk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 10:54:23 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c70c91c8b0so617351785a.2
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 02:54:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772708062; x=1773312862; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=t9QH2E7XqNSSkspumDdhkdVf9bsBSjDlV09oyzrTWAQ=;
        b=LLxp6qN6p2NkGepjIQPVTKECq2oZyEQ09FobeFeYWWwriDurQXtkLln9xRzX1wnFlC
         NUSLabjYUB6KbGbE95t127WAxzh1zv+nZ9acXLDJqtp+OOZJsnbi/yhcJEBJpdML/Xm4
         HgmBRWHsE6QJsRwmdM4aTRJJyxHE0fvez371FYPmRzG86NRQ7ZDlTLR2vSDidyanVffw
         dSjZfZaD/sXZbZArWY34W2vSV/ExI5LvyZV+kLTH9m9gXsaespbws2vpI1jbJsX3CRzM
         GqZdmdyU05h/U9DKK8kt+qHOaH3GR0eQ1n4LP7UIONTsFrO62PPL7xCS6DtzK/pzUuy4
         HAfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772708062; x=1773312862;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=t9QH2E7XqNSSkspumDdhkdVf9bsBSjDlV09oyzrTWAQ=;
        b=Jm6vbAuP6fwd1r3BZ+oWTGElRXBjrBSBDWmjxM7NXFhbQQQNVbOyBGHnEGjSxtHK7v
         OpYjBNtes4kKMPiAHDVQrgsOPeA1m6jkDuuOPaKrbdwBZRt/1W16ryDgUn4EXpOR3X2E
         ri58QqwTJi7xlxEkUaQib+cl5u8umnW73BOL0R0lCdVfDtr0Yy7yysVqDcLdg8NcDjX3
         3SoBBIgH1eWE9h21JtuU+iE6d2bFaYTFtrpSmsi5nZfiQ6dBq39TXXcZARW4JZiJ8jXX
         RPW/HGEeClVwT0M1B5hyytPXErmgZqdYz51TX2TIX4wb13wp0jmB5OTv2XEJsBzS/43Z
         1V0A==
X-Forwarded-Encrypted: i=1; AJvYcCUThlUSiJCrRbifQQJmyU7R1FG7RJQ6hY9w2QWEhqPBiUUL5s2/NkrqgTo973o1yPRA/ktRBoW1zscc@vger.kernel.org
X-Gm-Message-State: AOJu0YwsD+OUjUVXHVDfvm0wfDlSWtxghD4qwOlsH7Cu1EEEoWWCOccT
	90ebJ8zH+0bJbsbRKeTyJe9Ux7b0rex5O0ADsCcsLYEMHO4nVf1Z8xM8XMvzAXRmlaPYN41xtzu
	EcjCiIB7AkeM++88SDJg3r/ul+TGfCHFIba1UEGie7jKrAM9OG0N2LtQE224wfQnK
X-Gm-Gg: ATEYQzx70SuidvBhnxoKuoYX5mprP7H9y2cR7ahsfde45pQdt7d7g86ta0AeAd4PTjA
	YQNGh8DmhHvwNiRyE3sQ0WwCkoQuywsC0/rjUZ928NXvSOKjzDzt77sh2W7ucf+I6n8lYsfq5hj
	cZ5ZY30yWxRGgzVTUneoh+AZUADIKvPKh8wGMijcjsRN75lhE/83pG1c/g30GoyrxFEvTaZbicL
	Wa1fG/D9HCWgsFyiAaxRmLPhMzT61Hbuvk35xaZddNrEBCAl80hq62fSr/4n2noWe59HQhwBLAx
	wqMTBS3wqjA8kFVnH/ngkcqBm9uReqa7CGzylEnxnsB7lW9EdqLX+50W8l8Vrxm23O8SEPSxPLL
	6JZqdgtu2oIA5d2t1hsxJmbG2Xu1qv6oZ6nbU6vMDiU0YX2CDThRsjZ/HjXac7INOr64Cr2algn
	UxD74=
X-Received: by 2002:a05:620a:29ca:b0:8c7:17af:7ae with SMTP id af79cd13be357-8cd5afb6a0cmr465302985a.7.1772708062427;
        Thu, 05 Mar 2026 02:54:22 -0800 (PST)
X-Received: by 2002:a05:620a:29ca:b0:8c7:17af:7ae with SMTP id af79cd13be357-8cd5afb6a0cmr465298985a.7.1772708061909;
        Thu, 05 Mar 2026 02:54:21 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b935a597d02sm892756466b.0.2026.03.05.02.54.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Mar 2026 02:54:21 -0800 (PST)
Message-ID: <f141a098-efca-46f1-bc1a-433ff03915ca@oss.qualcomm.com>
Date: Thu, 5 Mar 2026 11:54:18 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: net: qcom,ipa: document qcm2290
 compatible
To: =?UTF-8?Q?Wojciech_Sle=C5=84ska?= <wojciech.slenska@gmail.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
        Andrew Lunn
 <andrew+netdev@lunn.ch>,
        "David S . Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Alex Elder <elder@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        netdev@vger.kernel.org
References: <20241220073540.37631-1-wojciech.slenska@gmail.com>
 <20241220073540.37631-2-wojciech.slenska@gmail.com>
 <5bba973b-73fd-4e54-a7c9-6166ab7ed1f0@kernel.org>
 <939f55e9-3626-4643-ab3b-53557d1dc5a9@oss.qualcomm.com>
 <CAMYPSMr2JCQCX69PGUk1=7=-YfBcyFDpqQ6tMQzFP040srBA7w@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CAMYPSMr2JCQCX69PGUk1=7=-YfBcyFDpqQ6tMQzFP040srBA7w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: gou1KnEdNMVl1PZOddMTJe5mvQkq5TkX
X-Proofpoint-ORIG-GUID: gou1KnEdNMVl1PZOddMTJe5mvQkq5TkX
X-Authority-Analysis: v=2.4 cv=Ed7FgfmC c=1 sm=1 tr=0 ts=69a960df cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=pGLkceISAAAA:8 a=ZWoRivunr3MPqjVuc7kA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA1MDA4OCBTYWx0ZWRfX1ZBUKJsFxjhZ
 Tej1Nj/L3hu27NgBNPKWoIGO7mlhwF54bKzyaK27sJSUlKAL9AcvYT0fm58r/qYUClZnqjHMo0x
 BS+Wtc+jGsvM7RmIXkxiTIZH73ZcuLTGZLJKrBU1j9k8KG5XSe4BLrEtfS4BwXGV1H9r0DfLWSk
 YXqN6Axya+/3z4TnmMpZ98lJt3rKkH0LPpcBwNN0Urd/YPVRrtp5eQZYQveXAMfmOozvhU0R9iD
 2lT7VI0/61+u6zo1pBfk5PMmRHGuTBrZQclqsAvXH9dreZPtxW6x8Y6n2XnR3UlTX3raKsCRViB
 d1BStk7WdXnhjWBYTAYL+RCLof58YDdRb8my08X7//YZo1kVEq+iEQgAYnFI1Stg8C6E1hgwgre
 Z/Pdm0QftjEJN35OP6Huu5MfHlMdbwUelLd8/QY8GvIHzxd6FQnbkjkWmrV5xpoW/uhXgG540/W
 N3q4sFznLqQspHvktHg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-05_02,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 spamscore=0 adultscore=0 lowpriorityscore=0
 clxscore=1015 malwarescore=0 impostorscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603050088
X-Rspamd-Queue-Id: 6FAD321021A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271500-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 5/26/25 9:39 PM, Wojciech Sleńska wrote:
> pt., 23 maj 2025 o 01:30 Konrad Dybcio
> <konrad.dybcio@oss.qualcomm.com> napisał(a):
>>
>> On 12/21/24 9:44 PM, Krzysztof Kozlowski wrote:
>>> On 20/12/2024 08:35, Wojciech Slenska wrote:
>>>> Document that ipa on qcm2290 uses version 4.2, the same
>>>> as sc7180.
>>>>
>>>> Signed-off-by: Wojciech Slenska <wojciech.slenska@gmail.com>
>>>> ---

[...]

> Once your changes have been integrated, I will resubmit my patches.

That has now finally happened!

Konrad


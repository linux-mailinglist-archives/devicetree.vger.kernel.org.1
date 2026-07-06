Return-Path: <devicetree+bounces-321027-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id mf7oN2eZS2ohWQEAu9opvQ
	(envelope-from <devicetree+bounces-321027-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 14:02:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 39A1E71036D
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 14:02:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=aCwWgdbj;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=D+A5Jcf7;
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321027-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-321027-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 813EE34B159D
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 10:02:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAD6E3EB0FE;
	Mon,  6 Jul 2026 09:45:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59A88371CE3
	for <devicetree@vger.kernel.org>; Mon,  6 Jul 2026 09:45:14 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783331117; cv=none; b=OIZSZqNkxUknxdZBXCF6K34RPDFGch8qhsYdddnisi0AgSge9DWw2vod3BR8ocjmcsTNj90n71mj+pwhPBtt+VKd24sSwzyBk6l9gV48wS6DjX3dXezBbmZtqtcYHSZKefBI6M3WyOMS5iwnfkEzM/Fq6QHLL8UuOM/toyyOt4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783331117; c=relaxed/simple;
	bh=Tw4B2jNJBOXEcZfGGtD+C2EhJJWA9I1k4NwMc6+F1x0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=REwvEZyyv8GLqpcudpXD3CtDOoN0UpoCL//aapOuQlFnmYtd0U15+dXFhUiqFCvDgjeX2VnRVLKNWXBIgLNeMHOF/O3T6TEXyzPjpigNL97ht9sPklN49MHomBmeeOOwsJQ98MADAZN/FgvZovQYiegrEH1ckTK9kjV3O60GHOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aCwWgdbj; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=D+A5Jcf7; arc=none smtp.client-ip=205.220.168.131
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66694INO4180020
	for <devicetree@vger.kernel.org>; Mon, 6 Jul 2026 09:45:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Tw4B2jNJBOXEcZfGGtD+C2EhJJWA9I1k4NwMc6+F1x0=; b=aCwWgdbj630O9pBF
	iF5BqZeOfQtYxMvD44RsXB4gCXuY5jjiCubrO2UOTchWSzmpMEbi6e3dIWGOnhwJ
	svK26YtrjwTo2jTMyCA4h8QoAqCZaOB2FqRwVfrfPe9dnMktda2fmF2OYwWhUL4M
	Ea9hP4DasAKLBcp/RRNe1uXrAvVllMMCVD0VDtRA8q0g4xFGnwGougs9ZKXx+7q2
	gLnbIIe7TlGew3h1E0JEhiOrHn8ax7O2D4UWdXPxmiz5rNUI8xR0JsNL0hpyiwwK
	At6nkJ6sZoVPmpgpqZLAr0QN9QyGPueL3/kbYw+lzS+nx/3jPEoboUBp4pO7aDpF
	e6V+4Q==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f6txenf5r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 06 Jul 2026 09:45:12 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-51c21be5bb4so21151341cf.0
        for <devicetree@vger.kernel.org>; Mon, 06 Jul 2026 02:45:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783331111; x=1783935911; darn=vger.kernel.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Tw4B2jNJBOXEcZfGGtD+C2EhJJWA9I1k4NwMc6+F1x0=;
        b=D+A5Jcf78PYhy0DMIiD9w+f6UolpA88Cmehhf3q5RHY7MlXIFkQxrhrcAn3k0E4wMU
         YYKCKJMqdtT9X2c9OLNDoKlBp4BLhlZC6u91dmoq3K4g7QXrxMLC/3u97tNbs2qw5kyT
         +X404vYxUf/moNtNDk63FHMsdjUb8KLTMT0qNgZRsLxUQ3yf78YAfkPCi3yv9zp2B2Gg
         b+gd+C/EScaJydx/Iy/5oqtrw2Ow6R9Z+ukgTBSb3sjuD6aLASPi8IWm3ixYoyJNU0E7
         F8agsmPPthcrjjB4f1S1PXGJ7PuDDrin6qBxCy7SYcrt/ELbflyu2jFtnNi+dh4IWSl+
         hWMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783331111; x=1783935911;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Tw4B2jNJBOXEcZfGGtD+C2EhJJWA9I1k4NwMc6+F1x0=;
        b=KeBHiP2Z1jVPjqIbnIhPHnt1ww+cFEzW7iSJsWUS0LhxKMlusk1zePwnlJ0H0BWVfb
         I8yk5B1p4sPFkpW3on6Cuq6BIeLfhDll6NffqxMzf5XGkfZgje/bpVHUOCrU8aQY6iSQ
         CAt1jkwMMGvzy0kN9tV8sM58Txkkcp++dEwB1hlC8a/vSBfEeyVXrSGt/0q+ZtRqzYS2
         M8Ab8+zgX5IXGqkjkftRvhWPUEwryVe74ZikdSRu3fESd0gUHMNclPnJS7dDEb5HsUWE
         V9McG3nXZoNluEfRaI5xWV+mpE8q188KOlY4RfZarIjNMlrCl6epTAqP9iR3TA2ubBaJ
         fADA==
X-Forwarded-Encrypted: i=1; AHgh+RpjWQE9dzdQXu9/ACReO/fYfxtv6O3a16wSyPaUBNiKWy8Pnx4NDvJZjIZ/+oc+54DWOJC+2pIrnEle@vger.kernel.org
X-Gm-Message-State: AOJu0YyIa+XENg/1LdBYVMfq8iH+F91rr82hWn4p5eVVQdWMxAYdvluq
	XMoSUylAkuOjnApNdWoQ5YZM4b6etaZXrSh1dswPbtx15MGj55QvMi27eYlITje1xRMM+fNIW/G
	oW7hbi4iq/5m4kFe30Lqbmos3eBEj67OU2GGfc1rNCqSdaBLb94T0QEutiqpxYjHl
X-Gm-Gg: AfdE7cnc2UEqYyBzEgke2NQI0OMz8q7TlTVmtbrMNNjV+7wZn+l3deQUEr4uelj2fWQ
	YJR0lxXX+bGq+A7g1GtiKF0CpWHRhbh8k9u/OSJMJoV8Eyh2x6oOJYxBc18cUpJa64FXz3edx43
	0WONjv7j40JIbt4i7oGB2G2Dye8G4R9hZSus3TeSQhw0WzwGXyZgIxzjQyzPkRbWmbmhU6PDsEQ
	S6TRqwIrldUiPUDhjL5mVRlCAmYD0JMlqCm5A/w8G66VHwlCIdJ2OomqRKV2jKRW/TPBIsolb5H
	QreZpwdawFyKJZaWJA+BsBOJ6toZgmkc6kJY9ZZ0lQ6Ol3h3NHaBHMDyLfvrsz3AbQ+Hh8JaUim
	owkne6SnJFrgF+HmoJcVBIFjpShe6WLDi6wM=
X-Received: by 2002:a05:622a:3:b0:51a:88bd:95a0 with SMTP id d75a77b69052e-51c4bd95042mr88693621cf.1.1783331111333;
        Mon, 06 Jul 2026 02:45:11 -0700 (PDT)
X-Received: by 2002:a05:622a:3:b0:51a:88bd:95a0 with SMTP id d75a77b69052e-51c4bd95042mr88693431cf.1.1783331110901;
        Mon, 06 Jul 2026 02:45:10 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c12b62f5c52sm723096666b.58.2026.07.06.02.45.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jul 2026 02:45:10 -0700 (PDT)
Message-ID: <c22aaeac-1b9d-46a1-8fc2-ba48422736d5@oss.qualcomm.com>
Date: Mon, 6 Jul 2026 11:45:07 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: soc: qcom: stats: Add compatible for
 Shikra
To: Sneh Mankad <sneh.mankad@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Maulik Shah <quic_mkshah@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260703-shikra_stats-v1-0-0aa0ec1fa83e@oss.qualcomm.com>
 <20260703-shikra_stats-v1-1-0aa0ec1fa83e@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260703-shikra_stats-v1-1-0aa0ec1fa83e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA2MDA5OCBTYWx0ZWRfXzFTfF1vOZ2+h
 irMae8DGk6s0j/WVWcIsjg+68NDE+aoVQoNUr81Hr8p09Xhth3/kfQaad97UFDDmQdJ409CD+Pw
 MtIgP3bZ8Yq2EVCUPw3jyQS2QejkDr8=
X-Proofpoint-GUID: LLGuyEpK5w6w-iJq30BvhfgKQY4s1FT3
X-Proofpoint-ORIG-GUID: LLGuyEpK5w6w-iJq30BvhfgKQY4s1FT3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA2MDA5OCBTYWx0ZWRfX/rQhgdlp8Vjr
 sFMYU5p953n3HOFlcaOyC62cLsHpD5l2HIV04bxb4rqCn30mTfS6UiIg4e+C7xanc5x+kWBAhA0
 8Za8VGtxaX/Kab3jGItIuyEpUJklKIhMUo5ABpikUFGEPx2RIgNuOly0/J4OW5CC8aiQ+YJJlb3
 +NZrDYzrCCtBY84CjI1SYggyxP+qJoG0spsio0G0jyZgbufa9vmwtnPa1h8lEyI0Xj+zQHiYq6m
 gLZ5gul4NlFairRhcxR7koOrm5Z7Fa5kEXtinfBuE1s7V1BAOKSpx3C8gPLq5Hr5rG+f6sziyl9
 E6424ts5CaQv9pt3QNpKZ2z4drmPyjyqhz24PYcBdKYUZcXr9JNTFn5O0Y8xyTHX73cw54o0rOR
 SDEWOo/xMi9Y/rNsWZgB7aJ74957zpLNscjZRHk2HEgPPYN3jW93WW31PS+Z40YuHft7RNyMz8m
 omPu4r0+EU/1x99pgFg==
X-Authority-Analysis: v=2.4 cv=HLLz0Itv c=1 sm=1 tr=0 ts=6a4b7928 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=nlOaL7ehIu8gELSPAx8A:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-06_01,2026-07-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 clxscore=1015 suspectscore=0 impostorscore=0
 phishscore=0 adultscore=0 malwarescore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607060098
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-321027-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:from_mime,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim];
	FORGED_RECIPIENTS(0.00)[m:sneh.mankad@oss.qualcomm.com,m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:quic_mkshah@quicinc.com,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 39A1E71036D

On 7/3/26 1:13 PM, Sneh Mankad wrote:
> Document the compatible for Shikra.

Please include some of the information you mentioned in the cover
letter, since this isn't just yet another boilerplate compatible

Konrad


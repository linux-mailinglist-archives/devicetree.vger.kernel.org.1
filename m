Return-Path: <devicetree+bounces-277163-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yEJ4MQSOumnSXgIAu9opvQ
	(envelope-from <devicetree+bounces-277163-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 12:35:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BC8E2BAE75
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 12:35:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B85EC3018AD6
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 11:30:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 223D93BED6F;
	Wed, 18 Mar 2026 11:30:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ikaqcx9v";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="klqQLQzW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9BA83BED04
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 11:30:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773833458; cv=none; b=JBI/KdGVvxSbsUSQtjpXMaVerdj4BMcveJC2qfGe6iJ9vC9bKVjoLrGy3maOdMRY6fEK5t64m5Y5MxC6jLqRPY9AAnNDZ0l8bKhHTIzVQmiQTYsFg2f5W48SUd1RWo2JRaigjdcpiWZcsxnwAWjnpzG+EDMfBAIEOYie1YqmX84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773833458; c=relaxed/simple;
	bh=08rLekWDhSkt8eIHGdwXIQkbVsttvPYtDPoZFF0/Pjo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FFEZ6XqztcnUF8xmRwGwDfJm0d6SYQE6VYbNgjpzjfJnL1SKT8WY+Rex4GaWIi5kGuv9RvSduDmBogaVJpKUKiiPWGzpjFaKQ6jRN0tChCYOTyNmE5Lk5kyGYkW6MFroEUAFj6t9Dck/J4rTuCMF2mJcnqdeyiY18DKg/sfpFd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ikaqcx9v; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=klqQLQzW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62I9NJMW3281366
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 11:30:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OJFTjwRGE/yUyUR/k+KqhKrrZL3PttoI5SoQShjswhs=; b=ikaqcx9vFDfL9QoD
	OAXllZTk1sAr5xMSxe8wU2wKr6RNnfFe3qxaEQAy/ZgAaaN4rkfKZmXft++qtcny
	y0BYxee9gCg84gBBPYZ/2VZirUGrvAwe1WnW6wS3pTN25+wGFCC/E0nEL9HdAdg+
	fO5EOIFHOZuA/trZHi7k9MzC3uKcFHKQxQ8XFKkLxHlNrSHMT8Y092mzTblfX6yo
	mNic8vvLZHarPnaPywCcr/FrB+5xOzbFD+DWSwQpjDLoDfOk7BA3yUevqMYjCr/Q
	cM3w/44bIYFrVEbISz2Z8rCNlHtvNGkgfT0pEYWYwILiNxdoi0blyd9yKtGQUw/m
	qTTtuA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cya62v7py-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 11:30:55 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-50923dc39f4so48054611cf.3
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 04:30:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773833455; x=1774438255; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OJFTjwRGE/yUyUR/k+KqhKrrZL3PttoI5SoQShjswhs=;
        b=klqQLQzWxo6tBE/FGzEAwXjF1fdK/6vuhG26n3c0XGhVIzvUuY4zQJYbTCZ/lA/vOE
         xStgZ+JUmJlL/L+Wjit3XARb64ffitesrL4hMR2d8i2aEnivKa/n88f6NJkHqHi2BPVi
         8IMYtPP1rkwPRpvDdsGd8UwPS+GPeNCPHKMkyyE1o2/Y3OeJcE9BXMCugvt0WiEpMrbs
         xFZm2NXNewM7EpGsz9Uv1gzNAuJNtgfCEtQYv8DydETbuLJen3Q6cX7jyXzClvkpdvyg
         rKtemwPKMa3sRPUQA1q39UQTSacxqzlvCCnG7eNEmHwVuprymNLwqD4LWyvSJfv7hh7E
         tPYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773833455; x=1774438255;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OJFTjwRGE/yUyUR/k+KqhKrrZL3PttoI5SoQShjswhs=;
        b=Z3JluD/WozLhhEC2BgZSOv9eCuGJjbY5XO2S0RVfKgvjdOz6BFBDAXwqanLUt6RbSr
         24l7n//xWTlSIo9HDkyC54VaYVLWmWByH9+7A7/H93PliI9QdhRRt/fLhO0ypju462HR
         OV40KYai94fn1MwG8UxRN8/TjfcXAaf8v0EaN5LjNFUL629kGMsh0tOwiM1POiESnwLp
         klKh4IERI5OQ1jZEzRVQrpqDChq9EoRa9/Vfw3CgxFrjIsogqiM0FCtBLhYv0h++uGP9
         vPFoSp+awyqeKqXrMMjDLKvDfgRaEbScu0J0jpSkZHvTo6uW7g3BSu8qOnVBBHKmAhbH
         Papw==
X-Forwarded-Encrypted: i=1; AJvYcCVjYstafFFllr9ZPNdAy8qoAxhhrJEJrSWr+f1/SzY8IgwXzsxIXoeovweOMPt7joltbwm6aQfnc1kc@vger.kernel.org
X-Gm-Message-State: AOJu0YyfUTze2llTTcNoU5ANMaDWvaD2BzOLmt8/ttkU1BPk29G/mXnz
	2mAbznmxo20Y5ukC+TFWLPzPXSzs+GNbQv3ucUp1WLkn24r9yo9pz7DGI6pVYspC5R+TdLutVEG
	A0IXVNc8YF2yIpemapdA520TmXJlvGfwNWxlAuhs/q7G5+isUN7S98wi94rFWvc7ZFUDRdRjG
X-Gm-Gg: ATEYQzwPA1v3fY97tin1MvL3z2xtr8QUD1Ivla3eJ63sGx+dy3tlND94+L3L0YWwYA2
	oZVIZdp25OGXWrIlONpM9Gl7zgqmSgcNcDRhZar4pFi58hkVRIhjHkV55coa6LKaFzeijackNcI
	C+FdjSmFf9393cNPNcunu/pZZ8pdTBMhP5lzrV2bCdu9fBuSkF+Ml9fmFYPaDeNt/em2PCvMRQh
	1Qz+XDn5VsIGuTlqSZgXE7sC6WXIfK6u+hKN4yJewZO7+NP8FWt2YPv0w0W2JVux4FM6k0SrrUN
	r6NRzsD0qkgCVPl7wchjK/m7x9wE1KAVxfcACNUHZ/3mT3pSJTBTxQoohKtVFH/8NlP/QXRMy9C
	kCd48k4gMCA6dn1nhB1uJergtrvaTy20k9Gcx0paLDz+J3LKSWBvMVjwKFkzAeEn/xsmWieCe+K
	JrQ40=
X-Received: by 2002:a05:622a:4d1:b0:509:15aa:cf03 with SMTP id d75a77b69052e-50b14864758mr26398511cf.4.1773833455002;
        Wed, 18 Mar 2026 04:30:55 -0700 (PDT)
X-Received: by 2002:a05:622a:4d1:b0:509:15aa:cf03 with SMTP id d75a77b69052e-50b14864758mr26398221cf.4.1773833454505;
        Wed, 18 Mar 2026 04:30:54 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97f13e9266sm182409566b.7.2026.03.18.04.30.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 04:30:53 -0700 (PDT)
Message-ID: <909f6f05-2e54-40a4-a525-ab784957d6c1@oss.qualcomm.com>
Date: Wed, 18 Mar 2026 12:30:52 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/3] arm64: dts: qcom: eliza: Enable Eliza MTP board
 support
To: Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
References: <20260318-eliza-base-dt-v3-0-8a50bd2201ed@oss.qualcomm.com>
 <20260318-eliza-base-dt-v3-3-8a50bd2201ed@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260318-eliza-base-dt-v3-3-8a50bd2201ed@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Ns3cssdJ c=1 sm=1 tr=0 ts=69ba8cef cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=dn1uUJcRrVR9k03n-jwA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: MYVRy2ZWxiCffIwkbU8BHROtTS_Pp4oK
X-Proofpoint-GUID: MYVRy2ZWxiCffIwkbU8BHROtTS_Pp4oK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDA5NyBTYWx0ZWRfX3O68reT+Zws2
 XslQL7wNkDDslVi7OaPmSwnjfGou9NUgoGQyRTgA7zv6+K+8JIfeDHu4oHtAMHRzGPmUHdBo/Nb
 yzHtL0Z4yIK/eSn0fNqfIqsbkVpGGyDsiztW/4Fv1lPQDk1FBejLn8P+CWvPrdVdCRa1QsGZ6Ik
 vO2bC9fc4MA+Yc/B5dnD9U0eLta7kP1b9c/I8XQOLtEvpe4B8AoB1BeQmTMH9NkJCx4QS7WbyZJ
 6QUBh7VkHD/S7Vd7v+mkmQerwSErqBf88P/H7K5ZoI0v7H6kPYLCDzT+9jih72kJYI/fuBwEgOv
 tWbOY2Pat+j0LqZqnyMmIpS7oV/6LutUs7/HJFkn2OLYv7lnT3qY3Pgj/qeQqApJmNuquxvI4tk
 Q4v+Qdh28vo8XNinMgAhYqUF/8CasAjNSEYscpT8DqITMIStpSJU9FUsEcxjQnD3ppkjj0s8mOs
 C2bLJDrSD0z6kgbnE5g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0
 priorityscore=1501 malwarescore=0 adultscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603180097
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277163-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
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
X-Rspamd-Queue-Id: 2BC8E2BAE75
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/18/26 11:19 AM, Abel Vesa wrote:
> The MTP is a one of the boards that comes with the Eliza SoC.
> So add dedicated board dts for it.
> 
> The initial support enables:
> - UART debug console
> - Ob-board UFS storage
> - Qualcomm RPMh regulators (PMIC) and VPH_PWR
> - board specific clocks & reserved GPIO ranges
> 
> Co-developed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


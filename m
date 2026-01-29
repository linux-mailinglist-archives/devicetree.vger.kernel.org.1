Return-Path: <devicetree+bounces-260835-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QHStB04+e2mNCgIAu9opvQ
	(envelope-from <devicetree+bounces-260835-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 12:02:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F342AF545
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 12:02:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 95AEC30488CC
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 10:57:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B94E37D13F;
	Thu, 29 Jan 2026 10:57:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JDPaRPv7";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="e9XWZTaL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B23EA3816F1
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 10:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769684245; cv=none; b=cxU6ucbOS7j9rs4CyCsRzSCVrWR7yWFbrOzcUYS6/0W3ZZ6e9zfSZTAkkh3Hi5X/3TxOOeybYPyFg3kamxz3yOYY08b9U/c00BeDFzrbCu17k18fcTAa3wLP5BRiV0YoAs8C3miYHVe49ERf2FQ7HWDlCa+PI6wYsJgkHdpaMy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769684245; c=relaxed/simple;
	bh=7tAlHO9B9zN78n+bWKK1zGUSbUcpiq38UJsD8aXRzJk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PAWq/Gh3Yz8NFnkYtFLqbNxmLWKoXmBO9pvOJhH1+DEY/NFya5Qq73F5xweLPOBjzUNaa0w65u3ukyK1jsqSX7f9CCWRQRyJdnxZL7FtXSX1mVZNaArlu74o4bEvaE1LrqRmavGds+lNRxyxu1UPPRHCtWzBI3MIXxS//xlkQ8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JDPaRPv7; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=e9XWZTaL; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60TAAa1L3713391
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 10:57:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=DQ+X42m513lPa+AgKJjxUVQI
	w9gu6iP3mxYbKs3Qni0=; b=JDPaRPv7IDtRt8o5ynA/G+jWwTdVRGZKQVDQe6K1
	7F6WFRReZQIEZCZDoJgXiEk2gf08upqpoptqndFq1CAGo+24v1+Z1f/SeEWTMsAL
	Fj/vrVFJQ6czoY1v9q1X+lzNzzIpENJReHA2X/FB2qqzQSEm8kmM4XbMKgf62mGu
	CIbbgfy+mL/Fe3/PQpOh8k1yjzEhkUb8tgh0jmjf3fOi9zikKYCXMbo8UL311Lak
	e3iyFJYULHW4psox/fWWpt6Yq9tOyDDxNFCVjWBm/KJ7opi2pQft+VL2//aveKsW
	C4vNCWEsE80w6W5rElhsOUhytQYPc4wanGOtCl/8O1Gq9w==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4byxcu9hud-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 10:57:22 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c71655aa11so253148385a.3
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 02:57:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769684242; x=1770289042; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=DQ+X42m513lPa+AgKJjxUVQIw9gu6iP3mxYbKs3Qni0=;
        b=e9XWZTaLaMJ+Kk/2Hi3vg5S/TBzQDenRzu1lCwKmixLwsG6pnu2kyktfyQcz+2WENR
         xPCkzpein0rGdt9riAZV4tAtoCW4qncdfkvSS29AJG6znk1rXDw9iZLnkseIjCu/gncE
         f+mZcUGwz28cvu9FKabQHKogG2h202xc3MBSJpCTZogXJMZROFX7+2NvMLOu6LlpwND9
         Igh4FCSLvP+E4QTDMYicECqhXECgeLCcvQsupaN2nbSXgO9J1Oawo86kqQx026P2GMnC
         kvBeprO3+oVv4K+86oQ26uJVwWI8RnASDu0JIC5XQd9x6GhrUOc2E++/bvmLdKu25E3F
         Z0kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769684242; x=1770289042;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DQ+X42m513lPa+AgKJjxUVQIw9gu6iP3mxYbKs3Qni0=;
        b=f8MAeRD0gKkt4fbMgUY7s0asF9ITbdwOBlTD/i0HprqozwjnUkbQUdqJz5zis3VM8g
         M6NJ4jLdkTIyW7Fg1KNaXzPfGHKbrx76J1t80s2liVB4BKDeAVh97KdijbgtxgHhHIu2
         6dhR9hlK/j5zfSFKB6Ogllo/GZfMG025ebgfCSf4E6X81egv668HQSq6m8J2vnFzl2tA
         JlR2JTYsVmMoejKju4RzXlvYN4+pgzgeLfF43OiGCvN9p6IbF/ChK6x9fBGd7heNXUjn
         rlHWjS4F/hiQ9//MgoSGYD2RlWy/8ryk75FchqGgUe+wH8aWRynNfWlXZQ4SCznhqgUM
         WLMA==
X-Forwarded-Encrypted: i=1; AJvYcCVx3YrFQXuvFwu4Dz59Zsvsi+RxTFyubCMh10Fe9PZrwyfErKRGEdOPCRlPIm2rqLtQkSrOBi9oelWl@vger.kernel.org
X-Gm-Message-State: AOJu0YyYwANcllbT9y3s3R6hwGmSz3iTve1D24wMasYHs9576s9Q6oug
	enV8yxSIjbcKG3b8tGSsFXD37rJA/ljgJ39Ieik9IzROUPLXHlZFG5QhwOYzWNclRENsvjkXH2t
	f8rjA8Ggaf2QZEg0bM+AWs1PPY5B2lo97+40dPtUCsPl9SPrqxlTRxzRv3v/3H4jJ
X-Gm-Gg: AZuq6aJszcPRNJqnDcqmwl2iczcZxVyZ6XM2xEKjgTIbJPAMGZotVrpQK1nV0rXMqdg
	XU7Zct9D63oe6EHeEW+4m2nx1O6Ur/mioHUYge8vIvMtkTSv1ObruSMTNDZkm//0kIA0LR7vtCq
	S6ct1jAD9hUb3J6I3+G8RmERttftjn4pmgbWPRyTe8cILHSWtK09ZNf1N5fmucNKtEZZ1EhFKq9
	+BH2r1Pmp5SBNg3gqX0v66+Q7zwFUvVINkpeKrIJKmLQknUMR2XyrdPHtaTUBBA7O5YdQRfgpeB
	3AZeJVSeKUSJ7llyBb/Tj2z5eKhYRsHDkbWxzBj6Emcw6bZs8gPID8Muh3KPbAU4leF0ZyXkrYI
	AQnLDodTZTtL62W2TEcsFJXh3
X-Received: by 2002:a05:620a:25c7:b0:8c6:a608:5abc with SMTP id af79cd13be357-8c70b868ebfmr890725985a.28.1769684241843;
        Thu, 29 Jan 2026 02:57:21 -0800 (PST)
X-Received: by 2002:a05:620a:25c7:b0:8c6:a608:5abc with SMTP id af79cd13be357-8c70b868ebfmr890724385a.28.1769684241330;
        Thu, 29 Jan 2026 02:57:21 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48066beeaf9sm201513935e9.6.2026.01.29.02.57.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jan 2026 02:57:20 -0800 (PST)
Date: Thu, 29 Jan 2026 12:57:19 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: pinctrl: document the Eliza Top
 Level Mode Multiplexer
Message-ID: <m2nydmdqzqrtwbqkj3sf4r7zyk4pjj5ruc6fu2b4ysy74b6u5g@ex347qlw4ezk>
References: <20260127-eliza-pinctrl-v2-0-1faf78efdc2e@oss.qualcomm.com>
 <20260127-eliza-pinctrl-v2-1-1faf78efdc2e@oss.qualcomm.com>
 <20260128-hot-camel-of-acumen-eef9f2@quoll>
 <aizrc6xysfwzygdsfeuc2raccq7efmwg5bn6v33t2de6ugvzgi@z3ipf3i25ulf>
 <dc0b7245-de95-4db7-bf8f-815ba60d7adf@oss.qualcomm.com>
 <pdxrotmxjiebyj2gqx6buwupkydngxki6jgv4e6l6fmodzc5v2@yxky3civt3yz>
 <8360708d-5d82-4cbe-bf0c-31107ab07bac@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8360708d-5d82-4cbe-bf0c-31107ab07bac@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI5MDA3MiBTYWx0ZWRfX8mV/Eg+dj/6K
 y+aObNbx+sSkjv9fnlF6ewmSSYtyucmg/VQVluSNSuHN8dQ/Iq1slQhWrYXtca9It4a1S6vparm
 KNJZoN0otJD+MbnhRPHKBVgv4w2bm1eaqyc3xIcdM9fw/6HQpG8Yiltm+wc3Y8GH0m8xB6+WICr
 0WBeROvPWao2CRoib8krbxpa0EzbNpPxCXGZTGguLQXrQg/ysAO4d0dAMrGD/rCDhg7At3FVV/K
 gxnufFpawbrlqSEf0D10wiTJyKmk7rmwDbkUzuvmQmuKTJXQbjHw85U8z3bNa/Cg/IDBJBBZ2jC
 dxeLqlAy/r9YAsMSqfMiUY0aP/NdlqIjmSEbSOOYGzD75u7PC88Wsaa/kw4xoBRoyPOd6RsOWIH
 Lx7TE2MFX+Rbu59FXIpcXrLoX9JKVbvFa7Gdy0KUJgFoRSFgSjetJIlFowOWg4i0JnmC9cXDb4i
 wdlw6JKj/RR1sySTvgA==
X-Authority-Analysis: v=2.4 cv=QpRTHFyd c=1 sm=1 tr=0 ts=697b3d12 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=qyz6NfLsuGTTkpJqPHAA:9
 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: FrqdG4n4643gIsCmskLOfkLL9NKfHTaL
X-Proofpoint-ORIG-GUID: FrqdG4n4643gIsCmskLOfkLL9NKfHTaL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-29_02,2026-01-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 lowpriorityscore=0 clxscore=1015 priorityscore=1501 phishscore=0
 impostorscore=0 bulkscore=0 malwarescore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601290072
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260835-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0F342AF545
X-Rspamd-Action: no action

On 26-01-29 11:45:59, Konrad Dybcio wrote:
> On 1/29/26 11:41 AM, Abel Vesa wrote:
> > On 26-01-29 11:34:07, Konrad Dybcio wrote:
> >> On 1/28/26 6:22 PM, Abel Vesa wrote:
> >>> On 26-01-28 12:38:32, Krzysztof Kozlowski wrote:
> >>>> On Tue, Jan 27, 2026 at 05:47:36PM +0200, Abel Vesa wrote:
> >>>>> Document the Top Level Mode Multiplexer on the Eliza Platform.
> >>>>>
> >>>>> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> >>>>> ---
> >>
> >> [...]
> >>
> >>>>> +
> >>>>> +  gpio-line-names:
> >>>>> +    maxItems: 185
> >>>>
> >>>> 186, your first GPIO is 0 and last is 185.
> >>>
> >>> Actually it is 0 through 184. The 185 is ufs reset.
> >>
> >> The UFS reset also happens to be a GPIO..
> > 
> > So the gpio-line-names should include the ufs reset,
> > but the pattern not.
> 
> Why not?

I was drawing the conclusion. No question mark. :)

> 
> Do you see a reference to ufs_reset anywhere in DT?
> 
> Konrad


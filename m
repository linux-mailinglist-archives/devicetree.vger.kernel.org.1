Return-Path: <devicetree+bounces-259431-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QMdxJ9M+d2mMdQEAu9opvQ
	(envelope-from <devicetree+bounces-259431-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 11:15:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 18663869C4
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 11:15:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3CCF8301CD8A
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 10:14:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFD1532ED51;
	Mon, 26 Jan 2026 10:14:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TEVY4r2p";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="AOoNM07G"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E522330321
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 10:14:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769422488; cv=none; b=jq7rmLRzqQzHkQvx90v5DQH5HD+4WWj7RHxQvjjXzwGnOrp6RRdG48TM49UAYeoPSSpYEcllnBHAwFq0UPFntNnM82heX9zBrboDcnspB9yNOl8Jk7qwU5dxx+qcn+uXAmItjoh26DvbA55fDqUInu3Nbg7grbGBXJjdITKcHLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769422488; c=relaxed/simple;
	bh=nxEhAbzUXqWnF3GtEIE6Wfar4AmH3DAFLdLk3kB3Zw8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=b+Mi5ty/TrqIPAEfDdw8JQQfwGEcbbYfr2MccRUeoeyfkEA6Ex8a8ZvGt3p+2mRd9CGWtN2ckJkYXO36kaojP39j5k9L3l8V5aaMjGX1Tqs2Fa2V5KouMb8tdv94Npyc1T+smqZmch+aaibIKkZ4FE5nRAZCPM+0vgL5ZvYuouA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TEVY4r2p; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AOoNM07G; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60Q9ISsQ1842776
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 10:14:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=5yhpcFu8m2C4OmsSHPsRpoVJ
	XKRoa1siTRePuREnYoo=; b=TEVY4r2p1d2thn9eDmOkpbYvk6tfeFPh1u1Gst51
	tBkqv5uz1+CeuEMKpP6cUHl+Hpjn+CXwfp1RJD1sJUWIAQp1CfUVByHLM8GotX04
	Uxk5ZosIAh3wtFuuVjmiBhnQx70ZMaMXr6ja7AJwfLCxBEVDqtumVcyxi6V9XjFm
	tI6OWfTqKIOUzUNfzEpswoX0xu1mlh8wIypa7N5CjwUeFrEedFWyfxQ8Wpjuv5jb
	Ntrvyg/sFW8YUpsopwp9/plNdXpRJMX8PXXgfFq1m8IVLBihjIpOy8mOedtAemy9
	H4/0un9b958F2Khng5QOHBMeyT1BBEkGPS+vPjLHYT2fqg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bvq2q44gd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 10:14:46 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c6b315185aso256781485a.2
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 02:14:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769422485; x=1770027285; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5yhpcFu8m2C4OmsSHPsRpoVJXKRoa1siTRePuREnYoo=;
        b=AOoNM07G3wP03aQ3jGVYW0TlF6vRaMSERQl1No2warLJhnfUwZhfHKJaC0RMg7Zn9j
         0qEheroaWg8YlPtn1vKioIaMpi9oEzZOOU61YJUay8gJ47AkqDg0z9yfPlhdAKIqxmYA
         iq5GR8G+i7igijfFUFR/ahua4JkT2H4npLmsgB+L+gwPmFZ7k+r6MVVsCy6gB4u16THH
         UAMHnbJM9mhc7bl0lGdHWxSgLwZdISq9QM7bfVjuhM40ub65rBm3i9p1U9y6SVl79NBz
         wofLs5mW2ywobo7S67Ns86CYDo9JuMO4KCHt7OHALydRQbZ3bNpetlMwPGdHk1MdSAzc
         MtFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769422485; x=1770027285;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5yhpcFu8m2C4OmsSHPsRpoVJXKRoa1siTRePuREnYoo=;
        b=CPa3E9tYbZuKSWEB5VA97pndo23aQIjZcONqv+fv9U/tnB8S/4sIl7goPXUj5stvpm
         QgYHXh2iithRbWJnWkBLBVbAfOrriM06iD4Z4dKhLHCAZw1Id1UopdAa1W3DG9qiPBci
         Y199EvMcCHdpNnGgZI1r8zQM1F5+/9HylP6jOtVGX10nTko/LH2og0aPd1LQMC/0Rtme
         ABGlWVTp8E+Yl2ETqlMX3cggElWi48fL56joQSO5jSlsNyCZSLj2Tug8AwLoThMmOgMt
         O0HVRLKq1TOPbjyvledLzCpLaSrqGROj0tXIviqXlJdJVVvI7bNt2MvgmjBI0ijftCyY
         Uswg==
X-Forwarded-Encrypted: i=1; AJvYcCVVdN7FUxPSQsAwvQ9Rz6VxWa8Y0uEbTlcbJvX2a3vap7UPGH9aGcjeBsLXsWuqD6GmM1JzwbndWbJ1@vger.kernel.org
X-Gm-Message-State: AOJu0Yya9E36J8udYzbJpXvVJh0yMnU5ubAM4WGy9phSQ5iURWnLYaq1
	cN07qlvMJov7j9rJq6sCQnoI8x4RUWwFCgfLY9obdN9z/mdxZAX4tA/ILcXeN9U1JNXfi6cuKgz
	gPoRw9zk+psDnLX4Zq2x+AnscTnZ+7zj3zXoNAUNlnXW8SxAZ3p8DV+5viHX56f61
X-Gm-Gg: AZuq6aIjxwVMnR9cioIx5o8aSJUJiDZGyjGOvOuXY52uBjs8f1EkLHkrHX/BDFZC5lO
	pQ0nkj3kDjrkB9AK8KBwFsw7PBXkq8+wcuWO9mbAYKUyBeN1NeK0rztiKBTJ7e+GfLHahfEPCRm
	W96Ew4Qf5NlhAJ6wG444Wfiu8IiuNYsPecBo7VvYG6wsizNF19bh10S2h2V6b3ssHIJTnYqkooJ
	HIxapq5133w6zqaqQ9tvpzKVvHcEtbMQOl0WzVp1hgv+AubWN004NRPmJYZ80DRV9SoOuLpzgrN
	oiZg4Oh54Q30mY8utqXe1/8UA3EpcM7X7+oI/4LHl55/ETy4DAdMmj5S19AGdsAmfX49aMPvi+j
	YXeRy4ibK9o7D12ID3Ts9RJRc
X-Received: by 2002:a05:620a:1911:b0:8bb:18fe:d1c5 with SMTP id af79cd13be357-8c6f9572c3amr418714485a.9.1769422485502;
        Mon, 26 Jan 2026 02:14:45 -0800 (PST)
X-Received: by 2002:a05:620a:1911:b0:8bb:18fe:d1c5 with SMTP id af79cd13be357-8c6f9572c3amr418711485a.9.1769422485002;
        Mon, 26 Jan 2026 02:14:45 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4804d85206fsm266606285e9.6.2026.01.26.02.14.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 02:14:44 -0800 (PST)
Date: Mon, 26 Jan 2026 12:14:42 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Frank Li <Frank.li@nxp.com>
Cc: Abel Vesa <abelvesa@kernel.org>, Peng Fan <peng.fan@nxp.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, linux-clk@vger.kernel.org,
        imx@lists.linux.dev, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: clock: imx6q[ul]-clock: add optional
 clock enet[1]_ref_pad
Message-ID: <uilxikzky53j7sg2barmsu6fkco2fiwgak3fh6eqc65iggmbge@7oogboikthae>
References: <20251106-ccm_dts-v2-0-12fa4c51fde7@nxp.com>
 <20251106-ccm_dts-v2-1-12fa4c51fde7@nxp.com>
 <aVwV8/rg2h2x4OwN@lizhi-Precision-Tower-5810>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aVwV8/rg2h2x4OwN@lizhi-Precision-Tower-5810>
X-Proofpoint-GUID: -5T7T4HGCq0AiOCFCvbZCJPj9JAPw3ae
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI2MDA4NyBTYWx0ZWRfX9A6bDi7ipVY7
 DBmgRVqWWTTUYnUMEREwulUVRvkVKdthvR1SCLhZPEVc1UyGWQ9LncX6ORKaHdER6N8U2594sdz
 613+F/98bXBCDk8LoJHOAAUHJuIcQhorwl0hkQAIsKT4EWHSLK5DPI65eXhvv8bj07z4P//N69w
 IgWE6HRvc8jSPf40aKWfYcc1hPuvBEhZC2nEsPibh6lI8wH0yasjh1McJf+aP7g0wGhLC9aYRKb
 XuqRX/IUaPS6W37pT94hkPYOBkfaq6glfXyiELJ4Zk2WJQjTJqozVMh5XunKEOnFooTrO85iWub
 bwXbo3XIbVrNYGxsSzNwhlDCqo5quuk+5n2+BoI7JhviG5Uw+n1blHjMUmEfprJ5N0G/jVoNNL+
 4Nlcb7V9bsZD9sV1cI9PahNuCRrqUezcQ7AJ9geA/yUwBqqeCtf3HflObFoMprI6cN7wucgT9Pz
 tu70IdJN8QTdZN+OBpQ==
X-Proofpoint-ORIG-GUID: -5T7T4HGCq0AiOCFCvbZCJPj9JAPw3ae
X-Authority-Analysis: v=2.4 cv=POECOPqC c=1 sm=1 tr=0 ts=69773e96 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=XYAwZIGsAAAA:8 a=8AirrxEcAAAA:8
 a=7OV0ED95LoZXi-xfo7wA:9 a=CjuIK1q_8ugA:10 a=QYH75iMubAgA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=E8ToXWR_bxluHZ7gmE-Z:22 a=ST-jHhOKWsTCqRlWije3:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-26_02,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 suspectscore=0 lowpriorityscore=0 clxscore=1015
 bulkscore=0 priorityscore=1501 spamscore=0 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601260087
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259431-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,nxp.com,baylibre.com,pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org,microchip.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:dkim,nxp.com:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 18663869C4
X-Rspamd-Action: no action

On 26-01-05 14:50:11, Frank Li wrote:
> On Thu, Nov 06, 2025 at 02:57:21PM -0500, Frank Li wrote:
> > Add optional clock source enet_ref_pad for imx6q, enet1_ref_pad for imx6ul,
> > which input from ENET ref pad.
> >
> > Acked-by: Conor Dooley <conor.dooley@microchip.com>
> > Signed-off-by: Frank Li <Frank.Li@nxp.com>
> > ---
> 
> Who will pick this patch? Abel or rob?
> 
> Frank

Missed this one. Sorry.

Will apply.


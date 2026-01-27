Return-Path: <devicetree+bounces-259929-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WH5jDKXMeGmNtQEAu9opvQ
	(envelope-from <devicetree+bounces-259929-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 15:33:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D00F95C5B
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 15:33:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B903E30205CC
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 14:32:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9302735BDDB;
	Tue, 27 Jan 2026 14:32:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VvV6MVxn";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NTgR9RT3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2DD435B642
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 14:32:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769524334; cv=none; b=iqnnTXjVIJ8UuEfmkRWP8QvtQ/bedOa7Pu8VRhzEpH9xlkD9zzM4TdXoriFuwXu65rjeyYFJ6VK7WVQTj7aKCi0M7GfCPHvKKPt9dImOEz6H8Te5OgoBg1xZDKwb9YgnmButH59XfWMb+lEB+YtLFNUtqFwOAmeVwEVAGqke8kA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769524334; c=relaxed/simple;
	bh=7VXB1W83ikac6HwtZPI8A7T7A1xzAjgKY7T53e0jxAk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Beua51jmwWmhRDcfljIxjJQNViKC4TQWYMtMMkSsSgptBqi9qTdangsZ4h7VpZKLv+1YvCO+aJ0RL1L7QcgvO0TQc5AP7sLfO25QF+PDbTe+bASQwwfubL0HA8B7mren7n9Emva8jyvWxZJDtQVQcW+U147wb7SHrioYWvyk2E8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VvV6MVxn; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NTgR9RT3; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60RBxR5S1795413
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 14:32:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=/JZfqn4pG1aepAs8U6hjEKbh
	NO9LoeCJ/TwZWLdXsS4=; b=VvV6MVxnKqWgkVcxcrN5sXdR5t1kQ9UQCjChNu/y
	VBJIo3GtInplcwgriuEkXIR7YpkYt5qQSflvYRp5ThsY/fEo2eQF6DVEn8KvPR8Z
	ANuxtmAXQaVpmzMqCVIOU5YPmI1TsQ77FEJBNfDReQJGcFGcxaVh3tprqH3bZogN
	yFHhRRYklY/hWtSdFNzv0uCitkHh+cLCESFqpu4g1hsFOT3hlj/X3zK9ZtT+7n29
	C6+Q47VN4aug5YKETtElqopTK4fObc+e4dXAfJkdijeNullYnJ4BvrQpqq9UDbfe
	IRXSM7x4fsdrLR3dNX6bqV4iqBj7URNqz1hWxjopawlhPA==
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com [209.85.217.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxg93jvmu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 14:32:11 +0000 (GMT)
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-5f53b7f1341so5292475137.0
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 06:32:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769524331; x=1770129131; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/JZfqn4pG1aepAs8U6hjEKbhNO9LoeCJ/TwZWLdXsS4=;
        b=NTgR9RT37U1+vGNJm4EdLaoG7E5OzxcrnxX/4fDQcsISCqBpoQ7zUypVLMRlqHleVI
         CBkhkv6iTjhTpnMuOCUTt3Vli9+6LVKRcqTMi7Ki7Ed46hynJ8OW6P4+aJqjAWTwUMlt
         QAClNCTn6o2THT7J9f8ch9wgawlD4POJ160cI6R2bx49tC2ne1CsDPG8/JpaROk0GPGY
         t7QVUscRDqISiJyMzMzHA7gQl7Lxok188mxz8zx6gH8z6rtErPgaFY+IdXyLISgvHCkM
         3NTi3WC5IS5gXMR15SEKMcRM3Nqan+iNhMQeAJdW8a4c/NY/HNDfcSgsGBlvDBMoc562
         AcWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769524331; x=1770129131;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/JZfqn4pG1aepAs8U6hjEKbhNO9LoeCJ/TwZWLdXsS4=;
        b=wtoJEt9JXClUD1+phdmPP3CMdk+x4hciF7qhm4/eTDBovhOkO1EpFF2Q4aoDwJGQRm
         8/bel/uO7Ju1evAv8KxLxZ7qY48dnYoZBVeXcSksAGYvpkgh2ccCtsSRPRoO/UTLoP2m
         hK3HM3xC3R0Camo1QFBUX+DM+rwBKbsAe068zorh9xpt9SS9KrVNXObPvgHra5F715tw
         F0ZuV2syD05KvSqKnIGDtR1eJ/9d2TKosSjM9JkUZ3ZV/ZKCQp7O3T2hJsp5oOtIYOlw
         fFoWE5pSlC2511+16PH/Y7svsJAzbVb+Hg/GOxcQ1kIt+skeq+Y9XWcP+gYd6YBTjgEj
         tIag==
X-Forwarded-Encrypted: i=1; AJvYcCXvoH5QF72yXG1cC6sxcl6mPyxWbcPM7u282mDcf9FPJ5CdE5xw/2eDMNPTqv/5SLvMe27rjoCUEuPW@vger.kernel.org
X-Gm-Message-State: AOJu0YxD//UWBP1AbkHvbxngPAEzDR25UyuCYuiSqI9kQAgWYio6KoQm
	qpLZteLFbMnm/jcjpYb/GQZQCTMhjq+CXodrf6etO4u02FgnQyEG1RaF12cuJwno8nUor6K4cg4
	RqgcZKyoe6hFb+m20sRRKuWZL07XVFZ2qjZ5NJo0SNzWjcNMu+c8tyRgymRf4lZJw
X-Gm-Gg: AZuq6aLUyET27cNTw4iL+036MBIRNzhCY6qfjJNK9g2qdZpYJUrWBGeZtq1X5yHyxeH
	C9OXbNHjayVLJdJYfc8hyQo0JjgPqABazozOEn00V/TI5ZftPn24os6EIZPpV8s+6b4aMKJV4Rz
	T3YwV1mQQoCizdWBGmp8TA0XpaMe2+qN2zFw5qLVTl7AeoYiiXsrBT7f8iM32Xkiw01mX9UBoWc
	Y/ap8dWhzTfDdSkge3N377dbRjAc3aL3IV+w/ZxcPT+rlbZg5ThXQ2POz4CWTBoxG4MAQleOEDm
	IpudACXFjedTgcrH5GQ5PQFSOhrayb5Ne5FGWMgwwi2WA0nbSthE4usqrwNBiT6PIoUodvLp83Z
	z16YlW+r+xvPMwy4equUlIAXL
X-Received: by 2002:a05:6102:94f:b0:5db:cba0:941 with SMTP id ada2fe7eead31-5f72380ed5bmr763975137.38.1769524330883;
        Tue, 27 Jan 2026 06:32:10 -0800 (PST)
X-Received: by 2002:a05:6102:94f:b0:5db:cba0:941 with SMTP id ada2fe7eead31-5f72380ed5bmr763912137.38.1769524330210;
        Tue, 27 Jan 2026 06:32:10 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48066c37433sm62354795e9.10.2026.01.27.06.32.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 06:32:09 -0800 (PST)
Date: Tue, 27 Jan 2026 16:32:08 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] interconnect: qcom: Add Eliza interconnect provider
 driver
Message-ID: <jvvj6eehw3gxthrldtafc26xua4ai7nheojfdflbgabjwxbdxl@ymrgczsq4zhy>
References: <20260123-eliza-interconnect-v1-0-010ff0d100c9@oss.qualcomm.com>
 <20260123-eliza-interconnect-v1-2-010ff0d100c9@oss.qualcomm.com>
 <8015c8d1-6eee-44e0-9a50-df23126bf7f1@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8015c8d1-6eee-44e0-9a50-df23126bf7f1@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDExOCBTYWx0ZWRfXwg8WcCfPxhWa
 1mWe7Vcx7JPJmhK9s6nEhZjSWxevZsmYAHk14yFVJ8wjMOTJgQlcwyR7CpRGPkMZEsxxScv/IAs
 80kDGI6VGHZYpGgO4LdVa3VKjJrRT0cNNIi2Ot+2UdXai2s12ADsL9sw5hwzKQAeM/cis2EYSEJ
 chLE2Pf5TrB56ubAw2VtE7ZTvKVMVZdyQmaoXkYcsQdsRg54UWdcvhYBIFj7VPfo5wspnx9viHY
 rt85JkggLBVvlsjo1/UDI+JMo9m6fndKEgA40DjVuu0TLqxkaSiKuRG9EEcysmyPGiP1d9YcsOX
 TC/UPsO39QlUnVrESr0asfEABd3K2JUQ19RlImyHSGPlu8ytob+OudSFhyMCE1qEbiM+mISHUQb
 wPP+nVy37157gWRM8IRlUIX+t01R5GeVB421xEm1q3MOBxnCO4JjlACcbXLP4BHOeHjYJhXFTKk
 VNymL6p2tMOmrp5ZfyQ==
X-Authority-Analysis: v=2.4 cv=Uc1ciaSN c=1 sm=1 tr=0 ts=6978cc6b cx=c_pps
 a=DUEm7b3gzWu7BqY5nP7+9g==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=npw072eAQMWWEgrtj34A:9
 a=CjuIK1q_8ugA:10 a=-aSRE8QhW-JAV6biHavz:22
X-Proofpoint-ORIG-GUID: vY_m2Vj1eMJUL0HTPwBZn-jAseujO-R4
X-Proofpoint-GUID: vY_m2Vj1eMJUL0HTPwBZn-jAseujO-R4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-27_03,2026-01-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 clxscore=1015 priorityscore=1501
 impostorscore=0 malwarescore=0 phishscore=0 spamscore=0 bulkscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601270118
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259929-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 9D00F95C5B
X-Rspamd-Action: no action

On 26-01-26 11:26:07, Konrad Dybcio wrote:
> On 1/23/26 1:43 PM, Abel Vesa wrote:
> > From: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
> > 
> > Add driver for the Qualcomm interconnect buses found in Eliza
> > based platforms. The topology consists of several NoCs that are
> > controlled by a remote processor that collects the aggregated
> > bandwidth for each master-slave pairs.
> > 
> > Signed-off-by: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
> > Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> > ---
> 
> [...]
> 
> >  drivers/interconnect/qcom/Kconfig  |    9 +
> >  drivers/interconnect/qcom/Makefile |    2 +
> >  drivers/interconnect/qcom/eliza.c  | 1586 ++++++++++++++++++++++++++++++++++++
> >  3 files changed, 1597 insertions(+)
> > 
> > diff --git a/drivers/interconnect/qcom/Kconfig b/drivers/interconnect/qcom/Kconfig
> > index bb1cb8a640c1..53398e972458 100644
> > --- a/drivers/interconnect/qcom/Kconfig
> > +++ b/drivers/interconnect/qcom/Kconfig
> > @@ -8,6 +8,15 @@ config INTERCONNECT_QCOM
> >  config INTERCONNECT_QCOM_BCM_VOTER
> >  	tristate
> >  
> > +config INTERCONNECT_QCOM_ELIZA
> > +       tristate "Qualcomm ELIZA interconnect driver"
> 
> Please don't scream

But this would make it "the one-off" though...
All other ones are all caps. :-)

> 
> > +       depends on INTERCONNECT_QCOM_RPMH_POSSIBLE
> > +       select INTERCONNECT_QCOM_RPMH
> > +       select INTERCONNECT_QCOM_BCM_VOTER
> > +       help
> > +         This is a driver for the Qualcomm Network-on-Chip on eliza-based
> 
> Whispering afterwards is odd too

Will fix.

> 
> [...]
> 
> > +++ b/drivers/interconnect/qcom/eliza.c
> > @@ -0,0 +1,1586 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +/*
> > + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> > + *
> > + */
> 
> Stray empty comment line above

Will drop.

> 
> [...]
> 
> > +MODULE_DESCRIPTION(" Qualcomm ELIZA NoC driver");
> 
> Please don't scream

Yep, this one needs to be "Eliza". Will fix.

> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Konrad
> 


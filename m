Return-Path: <devicetree+bounces-261656-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wO4CDUdFgGkE5gIAu9opvQ
	(envelope-from <devicetree+bounces-261656-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 07:33:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CE435C8CD6
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 07:33:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BA8F83013D6B
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 06:32:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C46E2FD675;
	Mon,  2 Feb 2026 06:32:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nYkIi2fO";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QCfCmP/R"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 441A12BEFF5
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 06:32:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770013961; cv=none; b=KipSR3vQW7oPPL55eDsuGGmEsEniutt0+DU2APBDi/6/DFLlm7fEDgSo+rE9akTRlI+AaFbglYKGao0zMHHBElClLaU5uIAFWFjHr1piXiDUBZ1fCVa0AwKtNraPhNvhdL28C4XAqEsC/1cQ25VRyw1Hf5Pe/H8mKkRgx6ak1lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770013961; c=relaxed/simple;
	bh=GNhVTBlnouzaVaIZbBjia4fDeb1Ma0W34R3FR6sNPMg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Cy+Q3dZoYkOpMLvz2ityKiTyXgKSOs9YzpzDFDqQyXaYJ0nLE0zgpyI1eag+/CTPwo8/5/W0Gjd/UR2ftfRDUYgqWZmgPS60y+e8TNWssaWnOWCSt1h69I4WLfd2rwbbBTqQzw213RMW3dkkEdBUkoYcBDVx00vWSYgrfmsQI6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nYkIi2fO; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QCfCmP/R; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 611LsGnr580755
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 06:32:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=4X/ebpbZHKXJ3uGpBJiYRdCR
	+Q1zwA07WypTogytST8=; b=nYkIi2fOHCkyijd2EuOfdE2/ikXn4xRIVbjjDgS5
	3lAO0avhLk8xQJkYyKByyaaKgJRKvUzETm9QpwCUMJ1xQcZVRT0XFJ/l5YRlmMyL
	GQJONHM9tQwBmI1CXzHy2+XLyoFTuWaDCaCeZRt/ZRMuh4nBdSZWKX8rtVH/d3I9
	Xw3LhxEU2m04gvfds3Y4zL6Pfsrgbi/Z0+AVbJKF/af6tl9fXQA0JPfpf1El9b6d
	iUkhRFUot7w+HGR3T6hMbM+vEqlVMVlYFjsj0oQuQOppZeoymvu0ZQJgr6U7LBkf
	Ou5pOTY3fNaN2N3SIG6h5cQXppARMtm4feI4d+hBZ5gruw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c1avx45t3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 06:32:39 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a7701b6353so42462055ad.3
        for <devicetree@vger.kernel.org>; Sun, 01 Feb 2026 22:32:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770013958; x=1770618758; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4X/ebpbZHKXJ3uGpBJiYRdCR+Q1zwA07WypTogytST8=;
        b=QCfCmP/RS8J201LOb2/0XAgY+mlzljgHmsPBCScF1RvuSqtQl5jI4JM88GgFB099Ug
         hgFZO1TxeIiS8ZYXXUvcfgH5FYoEfM8uTZYpwLSVThQaur6ROVnjif6JA3lYrethnIIg
         UtDfLdrP4QKeRa+hN0zRLRzoJqXZ/Q9Yozw0bmqb0rXTaPHEdCt+F9tX0aOobjkJ68wI
         NNlpmJxSNqCvxBoWWrl2m7mZQIzl3jSz7hvvTWC+O/huvZyGNCLLFWgSFxqG88TCIJdj
         LStzg0xiU1jgBNcS7CywZHZnGQrPMpUtEZC0d+FfSORhMUeHpXR1oSkkRKgPK7jNb7Og
         XMrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770013958; x=1770618758;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4X/ebpbZHKXJ3uGpBJiYRdCR+Q1zwA07WypTogytST8=;
        b=wpVr9sqK15bkkrp4cRsbwx2gEgPk5eGmSVyuXkb4C9kV6/P5pXgwPtrtbw04393Flg
         d53gH71KVkZlqhVGjhSGKNaAagGi0ZRGm2fboPHQHrlH0W77DXGVrwdUxCsxXvf/ukrz
         wmUqW3dDZQAHdVUnyuxIhWVR8QZfiT7UtsUduxnRFnbGUgTR1y4MJ32z4TEm7JI5fcJW
         rU0H3WIwrptOMHEN3+AMZ3MJEXP8hK84o+5+xqxQ/wlMRCsJPuvRB/oNdHmFQHwgjnf2
         3ap5fb1POXBzn7NVOE8SX5DpwYaYzhh+snyDJ1fBoMYB/5ZrcwfWTRT+cm6U4RAuKzFV
         rlFA==
X-Forwarded-Encrypted: i=1; AJvYcCVV4Uu1ODB+BVhw6xCZn/p4+FCldF9e4q1b7Q0MC9+HTNp9g1yoU8nMBeSs+OzX253aOPlEj3AyB86V@vger.kernel.org
X-Gm-Message-State: AOJu0YywjI1TnhhU2YmErqvRWPNLXzdqGlQvtq89cy6WQJmTtJ0r2Mec
	m2zKE9QUtLpa+nbJJkD+LOEvK4tpayB+uDzpeHa3Hev2AKSU2if05PiNWzO7MZp4F8zc9cHXXqe
	gJzvQD8YJBnIatxhM5Ne+hCmUWDtB85jojsAdCykZtjp9AR7u/gWfVGrHzUJpHrsT
X-Gm-Gg: AZuq6aJ7QmxcB0JyYJcWI9GIsrnYrIJekASslVYjSVJlyTsUs1a8XuNXtnSRyyl+GOm
	5ZDUa+SVfC+Lo0eddmGlBuHo2eZjoKiasZIs8qbc9jJkdE+8BIiVFgGqAy4j7KFFbL0PBnxzE27
	ghC1ovFR5PYU4gxbwT/YcfiRkqUs5ezNchg9xrxXyvnKDj/GhumYoOWMpU0aZH04DUmy876h9gy
	CGVVQ6dIR9TH9V4SwsvjtDBtDZL+p93bogmg6PnkHajt8clKix17O7n1KNGRtJe6yyhZrvmsjTm
	Kza5FpHpnY5XCMx2vDXex+NjCRZ1atzL+Yna9kE4Vl1DrTlGqnuTFDON7TO/4WCeXrXRolKGX4d
	nfDTjji5p3fUtH0fSW85kBZkTcVeVclbi2HVvIe2G5nlUn/E=
X-Received: by 2002:a17:903:38d0:b0:295:4936:d1e9 with SMTP id d9443c01a7336-2a8d8037b2amr118684365ad.36.1770013958139;
        Sun, 01 Feb 2026 22:32:38 -0800 (PST)
X-Received: by 2002:a17:903:38d0:b0:295:4936:d1e9 with SMTP id d9443c01a7336-2a8d8037b2amr118683915ad.36.1770013957630;
        Sun, 01 Feb 2026 22:32:37 -0800 (PST)
Received: from hu-arakshit-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b426a64sm131346685ad.45.2026.02.01.22.32.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Feb 2026 22:32:37 -0800 (PST)
Date: Mon, 2 Feb 2026 12:02:29 +0530
From: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        Neeraj Soni <neeraj.soni@oss.qualcomm.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        linux-crypto@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v4 2/4] soc: qcom: ice: Add OPP-based clock scaling
 support for ICE
Message-ID: <aYBE/VljJTUNx3LK@hu-arakshit-hyd.qualcomm.com>
References: <20260128-enable-ufs-ice-clock-scaling-v4-0-260141e8fce6@oss.qualcomm.com>
 <20260128-enable-ufs-ice-clock-scaling-v4-2-260141e8fce6@oss.qualcomm.com>
 <20260128-daft-seriema-of-promotion-c50eb5@quoll>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260128-daft-seriema-of-promotion-c50eb5@quoll>
X-Proofpoint-ORIG-GUID: S8TwuLQBr7ze1epXzneagZ9ZzGC6yyMA
X-Proofpoint-GUID: S8TwuLQBr7ze1epXzneagZ9ZzGC6yyMA
X-Authority-Analysis: v=2.4 cv=P4w3RyAu c=1 sm=1 tr=0 ts=69804507 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=kj9zAlcOel0A:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=skofDwuNRHh9mWMyy48A:9 a=CjuIK1q_8ugA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDA1NSBTYWx0ZWRfX3WMwsZtp25cw
 cm0CIPylzoIbQFA/UUf4kghH41V1FobIjuumoFNRl6k8K8WKdxHq+kbuJPCferVUy8WGPE4jntd
 FVHITT1XWbakHoppNWCppeBX9Prg+xTaUKCT6xO1ealKp05iznB4xN08fnuI5dmE3uQ0jCnvSiu
 aPYVc41QM5FMAWAbdWFBoxgnstGKzUub4joJH54pJ7lIsik6kxraFWGo1PAwlxwG6GZx2I/D+Dn
 MGPWNdzEylWknG04aVYPOELPZ/nANBxVMnDwNv+fFmZp6Oqm8V6h9HIC3EGoSia3ApiGJc9E4h9
 2fC5vQBK7+rcUE9ClsAfcFmYMEA2GD/nnyoQwwYcdcCLmhp21LVdGCbR7I418QYNu8jjCSH5Lqf
 ZoTXc1D2rSbiBFnZbKETvD0Xu4xBgYqC/Ptxo/vyl2FkTJJ8CdeC00essgbVPYLlqPuf8nmJjhN
 YbM1HCS10gkIuj3PiqA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_02,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 impostorscore=0 suspectscore=0 spamscore=0 clxscore=1015
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602020055
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261656-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim,oss.qualcomm.com:dkim];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abhinaba.rakshit@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: CE435C8CD6
X-Rspamd-Action: no action

On Wed, Jan 28, 2026 at 12:04:26PM +0100, Krzysztof Kozlowski wrote:
> On Wed, Jan 28, 2026 at 02:16:41PM +0530, Abhinaba Rakshit wrote:
> >  	struct qcom_ice *engine;
> > +	struct dev_pm_opp *opp;
> > +	int err;
> > +	unsigned long rate;
> >  
> >  	if (!qcom_scm_is_available())
> >  		return ERR_PTR(-EPROBE_DEFER);
> > @@ -584,6 +651,46 @@ static struct qcom_ice *qcom_ice_create(struct device *dev,
> >  	if (IS_ERR(engine->core_clk))
> >  		return ERR_CAST(engine->core_clk);
> >  
> > +	/* Register the OPP table only when ICE is described as a standalone
> 
> This is not netdev...

Okay, if I understand it correct, its not conventional to use of_device_is_compatible
outside netdev subsystem. Will update as mentioned below.

> 
> > +	 * device node. Older platforms place ICE inside the storage controller
> > +	 * node, so they don't need an OPP table here, as they are handled in
> > +	 * storage controller.
> > +	 */
> > +	if (of_device_is_compatible(dev->of_node, "qcom,inline-crypto-engine")) {
> 
> Just add additional argument to qcom_ice_create().

Sure, that makes more sense.
Will update in the next patchset.


Return-Path: <devicetree+bounces-260240-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8FuMJ+bJeWkezgEAu9opvQ
	(envelope-from <devicetree+bounces-260240-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 09:33:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BB8B9E403
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 09:33:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 556D43008257
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 08:33:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 450B03033DD;
	Wed, 28 Jan 2026 08:33:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EdP6I4Bl";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ac9GM8ih"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC25229A1
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 08:33:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769589212; cv=none; b=YV4pfO+QavvJ98uLtFqSsRA3cXeFfQlQKypn34V+BSh20TvdcjsV+Jqgy4Mcy70xKStu6IOvi6Jwr21XUKIPDrhR9gOWr6ea69lmfZXzKFVAUNwwIqotREH3X6ad6oN724NFoN/GRtQOMkcw24VDWryBN7YLIqYYVQ8ONJviMQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769589212; c=relaxed/simple;
	bh=FpcO+bQDszP/F+tms9vTUftn3BadlaBa+e4rvkvugnw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Vb7e/g55hcvxSMi99Op4uiex2BJwQYBQ1cxyKlFLzCoMOsz7sHrbgrRdNPTBT/4aVlGFCZKNsWoNIXKNDN7mvPP/LtyCq2D9HjC82kfDnIWT/C30ewgUxCPCPWYX7MbJyxtfqAoSUg8qUrVdos3YfenOODrAGfn7DX7NFKCmam8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EdP6I4Bl; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ac9GM8ih; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60S3VkO41334166
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 08:33:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=5r6c0D0wh6M8CAYyhvwDSLVC
	asN6vY0J1SYmix30f7I=; b=EdP6I4BlKVL3OA5qDDv/18FPRxOKsAV9u0SMuktK
	3EPBx+Vw32sJfj8u6Kzkxa7KytSoXOlWZoyWTu3u42SJ2mUx56L1fURZ5Wrf8T1m
	N6rB1lbbbIujtpi4VFJT2f+VXES8IUFHHMklzhFQ8eLs8uyFOR2UPs6aYHnd7rGw
	oM0Uc2l7IxQv0xfKId6FzgRBcbMQw84f0YJPU/OdtrLG5U9yNo2wzT5zp16WD2yX
	u/zNLGnih29jCpHsvndald9/rrdPnfCAlVi0dgom3UiaxO4twEW+0DhRoHHW2lhI
	ZIKwlATSSWzDvlis7Irnr8e40MFySWqAQKUgRVrVyPScYw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4by1dftnr5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 08:33:29 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c70ef98116so255581485a.1
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 00:33:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769589209; x=1770194009; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5r6c0D0wh6M8CAYyhvwDSLVCasN6vY0J1SYmix30f7I=;
        b=ac9GM8ihRYnWweWWS04bG6gFb4TpjH64SbFFVGgzdibgs8pt49nr1vq+V3c1g2o9PA
         bzMI8fcycWLRq7Q5EsoR0RMMw1vBRyg4CunxpblepThwTKtQm5P3huNJ3wUHheoav2sx
         4qQGNKOp8RJ6eu9nw2Vab4d3TiUpewC4Rptj1hN6z5l2283l30xQBI6IdtfVDhao+65v
         Tpkvc+r4MH+mwDxoseA2vPl+hBhUlNYn0cweIOgQme74BOOq0VCja/CY+ltuPtVzQNR8
         FambPt6YuCYLYEz/TgiPXAilz6DnII4tqkqjjTedPHgKZ0KWoyNW1Mo5vyh0E2s18Jua
         jxOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769589209; x=1770194009;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5r6c0D0wh6M8CAYyhvwDSLVCasN6vY0J1SYmix30f7I=;
        b=Od8ul6k5vEiadPtWCe7hqzypuvUCYKEGRTkLHDNMCfRJWHnVV9uQZT/jhTmy5MEy/4
         FA7Pi/S3RzGe/MikXhA9AJov6mDR9EaNwlUvYJlt/Mtgk80PM+4jrvqWY5dCM8EmfwG7
         8WYLKMXu88DkT0Kfd3gZzXtcD7tLq5Ma62aghKZuqs8CpFgaVbHXtcDLXtd268UJPQ7j
         VntDGcUiKa8FMvJefzhYsmm288aEkC92tw1ylGr/taPy8iXKW4x6j1ILrKLzEw4EKHIq
         a0iOEOQwv/x+mCyPKwz7kJyMbMebmU6OjjhVoEr15LMXoUe5hrovAp+KZkkLdfiocZA1
         aJxA==
X-Forwarded-Encrypted: i=1; AJvYcCWuDRE0wcHR/PrVDm0vlVlCMJLd6hAGUlbPsbZM2TCPj6HeoINSNOh4VBQ5GcrhhqPAsegvJ7LGpXrI@vger.kernel.org
X-Gm-Message-State: AOJu0YxZ+W1nt+0QmbSN05quaEv6JKFVtzbc0wPw49QfNVOclDmPvZYP
	v0mXfT3ZSxfsT6jvgfg3eMZ8jJyEELTM/q8ebY9PbMEg+XaJozeRJ1TKJ8sXz40PBJJU/GuvPeT
	GHNNttNXn1QIUdY1LIM9jBCPB3OBr8we4a4FsrOR3GqXiQgkfvfd+lAvBlcRX8ZZ9
X-Gm-Gg: AZuq6aKW24RJrxFXiVpm+Q8g0M2wKINGdD0bNGjc+67OfEq8GXAYDDW/ZwT/IqRbAeZ
	DRytqQh9hOT2YhiXU8+KMN1dDliFw9vwV2meBUiam8S0j9XVXKXgQ+9kXEu5yvv0ndby1Lg1oGc
	wJ+fhluNg9jD9TmSfXKayKPIiZO1bB5JvGErgnJwa/Gs4Q5wVUFrqYxijzfTbVM9WsflW3jg6DA
	yNCzTxX0EgOt11dbKuxG4JDXegzuNjJCAhfpkV7khIbG6LGG3qol+wCUmwu6l+pHdLDQ/CYTY6b
	LBr+RnSztZQqCywrwS8/B0Sz0hNliXCBOpe2ZZ7h624BAI19mLeoVSNgAH+NyOOBJc+RGYLB53v
	aFIrvgz2QX3bJSJlqCvDmJfA+
X-Received: by 2002:a05:620a:44ce:b0:8c6:ec8f:c8a1 with SMTP id af79cd13be357-8c70b8f2a66mr555701085a.44.1769589209117;
        Wed, 28 Jan 2026 00:33:29 -0800 (PST)
X-Received: by 2002:a05:620a:44ce:b0:8c6:ec8f:c8a1 with SMTP id af79cd13be357-8c70b8f2a66mr555698485a.44.1769589208654;
        Wed, 28 Jan 2026 00:33:28 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e10edfccsm4985338f8f.17.2026.01.28.00.33.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 00:33:28 -0800 (PST)
Date: Wed, 28 Jan 2026 10:33:26 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        20260114-knp-remoteproc-v4-0-fcf0b04d01af@oss.qualcomm.com,
        Taniya Das <taniya.das@oss.qualcomm.com>
Subject: Re: [PATCH v4 09/10] arm64: dts: qcom: kaanapali: Add support for MM
 clock controllers for Kaanapali
Message-ID: <4encmgoulelwo7npz76g25dbloz5q27nve65eq5lfvyy6lc52a@5ljsdminctaf>
References: <20260127-knp-dts-misc-v4-0-02723207a450@oss.qualcomm.com>
 <20260127-knp-dts-misc-v4-9-02723207a450@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260127-knp-dts-misc-v4-9-02723207a450@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDA2OSBTYWx0ZWRfXwkpzzJrkXZv4
 8HX7OpwBla129oA7nXfpfq0cNd9PIFacYKBm+nK+pAegjlaosQFqZKPbGe/VdW0a1IYzB34znHt
 wzdd0ArIZQHR9xdQGlv9ppsIlzZv5hdBZQ8lnIlTkjQEz9ndSjjFpvhlqxpPbt3ltHWhoY8/Zjb
 9jSOmc2eCj/QbFr6fOhn9U+sPCBePHCTvzrRoVsPyo2v3yQcdnK1iU2Y+gjTLSxPmAytQuKR+JL
 7lLD8O7lO2XPUZA2/Tlsj/7gxArC2tEnYHyGDX0YTMoK+8lKBTUwBI/QWLs32cRnI1Hr2qsYdco
 gjeWp+OWtaAG6nVAYGOCofm4+w2Yx7W7bsWuaaNc/UkLe24LOXh3TdIfjb6ZDRYOts2GQRZ71S3
 IWHwKnXw/tqrEKEwIXAnUYqK7RWctHvbcF+rFVcNpCxs08qLsZdU7X1wOLqGoibd0ZzzCIg2lMS
 Bn8YfBgEpN78AfetmSw==
X-Proofpoint-GUID: OtrF48vV54szQzgSJuUsSJz7VxAee5la
X-Proofpoint-ORIG-GUID: OtrF48vV54szQzgSJuUsSJz7VxAee5la
X-Authority-Analysis: v=2.4 cv=YeuwJgRf c=1 sm=1 tr=0 ts=6979c9d9 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=G7k6lNnzLgbClNvaivMA:9
 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_01,2026-01-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 bulkscore=0 adultscore=0 priorityscore=1501
 suspectscore=0 phishscore=0 clxscore=1015 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601280069
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260240-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 1BB8B9E403
X-Rspamd-Action: no action

On 26-01-27 00:34:06, Jingyi Wang wrote:
> From: Taniya Das <taniya.das@oss.qualcomm.com>
> 
> Add the device nodes for the multimedia clock controllers (cambistmclkcc,
> camcc, dispcc, videocc, gpucc and gxclkctl).
> 
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>


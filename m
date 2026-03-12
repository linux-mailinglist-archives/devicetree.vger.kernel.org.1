Return-Path: <devicetree+bounces-274597-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cGmHA/69smmvPAAAu9opvQ
	(envelope-from <devicetree+bounces-274597-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 14:22:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F21B2726F1
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 14:22:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 27C8B3028EE8
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 13:22:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B05CA3C6614;
	Thu, 12 Mar 2026 13:22:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lcs0FmQA";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="B6UB2JOd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A370D3BF676
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 13:21:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773321720; cv=none; b=S+nuqnioWgnvnYHoe3JeqMCxUsHDvWZp+opZ8jYjCZC5QawH7/sOL0Rmdmbo2FEp1htTtRHvfyjoo9URP0jnvQf24duJ+4TAsM+dKTnHLUdJKINmHECx+LMiBWpB6F6bPdjrSWvY9LDEBnk48gsLwmKygWfzIGSeUICcunsFht0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773321720; c=relaxed/simple;
	bh=o81hrhAPbE+2p+74JicN6rf37VDssxW6q9OQI7SUeqk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rImn7sAqlMU5oTnmcFD+mCp6V3mfMgPEQCENK/e89zh1hYwWaeUYIFNyUao3s/y2m5U7+PqQ1J0+BPctFZulE2fdyul8kRDScy2lE7/+hUTStisA+LzX5ZBcdjutARAuP9RnNo1Ux9jnWnLOnvRTuaI3Hr+8YGGH3pTwVmRcAPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lcs0FmQA; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=B6UB2JOd; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62CAGCLf4027169
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 13:21:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=GPxgAQbZ5dE/WqRRfs+nfo5G
	A/qWcrHqNAXneO/r7nE=; b=lcs0FmQA+hGDdxw+nSL5SotmDzFhPiuhH2nK7mDT
	cFhz5yEGfijU7OQA7/Y6VKEwx0gW5crGJ2d/RcMF2Qw64vC+e69CJS9hvW10hPfm
	zt4AT5PyDyjRo8sGoJl+wALirOt7PyATeQbChlyAH2ViGIavCJRn7oO6/bAfcIs3
	cKNj3ahLsVkpOiPPsZvslUqfL/PBNe/qU3HKIfO6Ge86ZiPNHpkYXjhuobTPuTdv
	E1Tj7ZJ2Vx6r0SNz/zlOttH7H2klVOc09pVIMyLIVShJ/7Ye/KhZQNmTBXJnfrih
	b0e+xhgByDPeOOXuy72g1Bfs7Mx+Dh7pQEHjYfGTBO0RkA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh54t541-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 13:21:56 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cd81506677so588374285a.1
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 06:21:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773321716; x=1773926516; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=GPxgAQbZ5dE/WqRRfs+nfo5GA/qWcrHqNAXneO/r7nE=;
        b=B6UB2JOdzOoDhQ8y/D8sa1hQGCBpaad4DAJnHgJC1Bi3IZZwB0eW2XECs0YmmWSZJ0
         SWVc2aIo1lK2fge++e192GIHiB6wYdGCSYB0IWSpf6TPVMzjHZdEdVFckGKBhakqEZA8
         E5CLQTzWRdh+sRb3dpqXapaoc/bh/gl2PF0GIVrcbcOehhJa5H+FzyVcOC6ejQB5d7va
         x/Lm6htiQqZuEBaITwRBkuV5HzmQgnurVz76tOOyLXN984iMNdD1eUyCmeqkx/7hcLOa
         U1kXSjXOiX7w7XYPqFKrC4+GBMdjDyLpW3cVZielpF3+dWT+tY9Fg0RoMfoRXFDhCVyU
         ReDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773321716; x=1773926516;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GPxgAQbZ5dE/WqRRfs+nfo5GA/qWcrHqNAXneO/r7nE=;
        b=jYbiAhpeVU46z1OhFhOp2jT76jGIubx1itOcUV85ZBVvybYlkhAyEUCDmhLhJEeELE
         goSo+qheO51ukEPbMjCjTi5msYLcehdHg3qy2P1AXpcAT2Tj/n56Ba49wpPQotmgXXpD
         vZQccGgM/wq/T9HSSX1V2eBuR5EKedpU2CApboIQ2AtafLxuuSPz0hHTN5HiXGu0Gi4H
         LSfZN1MujTh4tKO9ERqHidN1ZUYQVWcO0DSzvcnoPuYE27qZ514wkHwB7D7lbjgDOX0j
         qPmwtwCdJsv/bAd0gCb0FGK2pIbqxSDbANDVfWFpth3Og/rkTRtfy4Q4OzYzjPMYFnJD
         piRA==
X-Forwarded-Encrypted: i=1; AJvYcCVAW91MbCVUXy7+c386Gba+TUB1616s7I37smfU0v+vO8RH0+3A5EkMftQVrSb3jnTCgWhyHjLCi0IB@vger.kernel.org
X-Gm-Message-State: AOJu0YyV7dpGLUfLAuLiui3vCiJsy0AJlXozlChnoaHm22c17CFo+Mj3
	Kq+wdS+nb6JIFczt9pSJHqTDUPsK6zIzwuZyDreD3ENf7Ax9uuNj5G/3Fmu8Z6wWqoZecYrsQuy
	W+SnsWqgp27nhWAVoTbdQt4g7kAbS/P+FVjfvyI4v83+/lHJi8NeF0MvniYS9MsRp
X-Gm-Gg: ATEYQzyZyXzz5+0PiQHDZcEXZF2hoEMkSJqDM0BD0U9L0bbiVDqLs5nHUcv4jkpp3ET
	PI1nJbOJC/8AV32HjpM6vyeNOb/2q5I657SbfiJCAnB+1H7XIT7AYGKyd+CdQpUHIqKI3x/4xqp
	rw2G2WOlNwgdhgj+GZNm0yFh1n8oDTdhGnKFPXxEbmL466mvF46Ze86z3qPkkk5aXbu8z8DiLdN
	IQSuEG9YlXSj4ivn7WFZIQhU3k7S/Hmag4yrVL/qMNYriXM/tif0pvnASq0Tcv2xLI7W6+w2FhJ
	h1DgsJ/4G+p/crAQ1/HkTxtI/mS0b5WREC6EkfTUCNoduAdt+D1qwGY5u6R3T1PdELUC/SBaGkO
	l93eKsjZCMer062MwymEdXgKrObHsfOHi40UKB5HED5jOA0CeFrLoXzydMsn8C+13pZlc4zB50P
	Jivf1m34vRvfXEIolumeABSicpa+UvxN3p/EU=
X-Received: by 2002:a05:620a:4629:b0:8cd:8f18:d1fa with SMTP id af79cd13be357-8cda196c76bmr789157385a.22.1773321715876;
        Thu, 12 Mar 2026 06:21:55 -0700 (PDT)
X-Received: by 2002:a05:620a:4629:b0:8cd:8f18:d1fa with SMTP id af79cd13be357-8cda196c76bmr789153485a.22.1773321715341;
        Thu, 12 Mar 2026 06:21:55 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a156162b8dsm974392e87.44.2026.03.12.06.21.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 06:21:54 -0700 (PDT)
Date: Thu, 12 Mar 2026 15:21:52 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: qcom: glymur-crd: Enable keyboard,
 trackpad and touchscreen
Message-ID: <75x4qxntdgvkbqjqedievzepwozcj6xnjm2ryzumnacq2cnskz@2qgyuyd4k2kr>
References: <20260312-glymur-dts-crd-enable-kbd-tp-ts-v2-1-2277bee4c564@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260312-glymur-dts-crd-enable-kbd-tp-ts-v2-1-2277bee4c564@oss.qualcomm.com>
X-Proofpoint-GUID: 8DPmOXVZXrzFi_XyzXyt7n49USV1-3BG
X-Authority-Analysis: v=2.4 cv=BNG+bVQG c=1 sm=1 tr=0 ts=69b2bdf4 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=bC-a23v3AAAA:8
 a=EUspDBNiAAAA:8 a=56d9N2h_IVndxkp9Tz8A:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=FO4_E8m0qiDe52t0p3_H:22
X-Proofpoint-ORIG-GUID: 8DPmOXVZXrzFi_XyzXyt7n49USV1-3BG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEyMDEwNiBTYWx0ZWRfX12B1w0vQC61I
 90QJeqtzvEcd8LXtuMidEEgRw+kSROYxGo2qWfEtr7a1X0k0RnTNOZCxanmpIruxTMyZlGcT4X3
 eb1RcLKQ+kYiNu/mRRbYTXBuu4z/ybkUaD9S186bWpkKSU9+n8vL2oTmB0/4wgWHxvHa1nFQQDn
 rzTjc3CC7zex2/cLMId4lj7QiQJQnBsTW4EdzCojBC7RjeRXTty6qsACpOfn+Lhjp651A+EZHwi
 InmZWGOe1MpEi/Mlo7OITzHI99NgOVFK4UJKmUwfHMC9JSDv/93sjACKEUrpFmGBJ2KH51kIEA3
 MwR4qqA39Tg4Ca+WhKKC3W5sFnym1MX2jlVxyevOQnE6GsmAg4Ts/Q4m5oLxEHAngL9+d8grQgb
 PUsgc8Gurf1/BNC44iMJ3zpdq3h0lwRxUM2cN+O+9mBGCC0jwF8+bJIFAb9DpE2Jk1UbspMcVlx
 t2iwplEaCP4ZIsc0guQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-12_01,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 bulkscore=0 lowpriorityscore=0 malwarescore=0
 priorityscore=1501 impostorscore=0 adultscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603120106
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274597-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[msgid.link:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 5F21B2726F1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Mar 12, 2026 at 03:00:42PM +0200, Abel Vesa wrote:
> On CRD, the keyboard, trackpad and touchscreen are connected over I2C
> and all share a 3.3V regulator.
> 
> So describe the regulator and each input device along with their
> pinctrl states.
> 
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---
> Changes in v2:
> - Rebased on next-20260311
> - Re-ordered pinctrl properties in vreg_misc_3p3, as Konrad suggested.
> - Dropped next level dependency patchset.
> - Link to v1: https://patch.msgid.link/20260309-glymur-dts-crd-enable-kbd-tp-ts-v1-1-56e03f769a76@oss.qualcomm.com
> ---
>  arch/arm64/boot/dts/qcom/glymur-crd.dts | 117 ++++++++++++++++++++++++++++++++
>  1 file changed, 117 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry


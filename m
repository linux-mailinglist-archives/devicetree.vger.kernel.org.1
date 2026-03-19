Return-Path: <devicetree+bounces-277794-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qGeeJLj6u2mzqwIAu9opvQ
	(envelope-from <devicetree+bounces-277794-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 14:31:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ED5542CC06D
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 14:31:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AA9D930A4ACC
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 13:31:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCBA43D16EF;
	Thu, 19 Mar 2026 13:31:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KCxLJBhA";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fm8J4U0+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B60003BED10
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 13:31:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773927093; cv=none; b=gp3jFhBAhf9D1PYTn88CdGQgAFQSNlnDPNEU3/cJrig/D+hLOohMMI1gzVGBpMSBCikEfktO7OV/NFArB15h/y7lPxdL0qGaWQ3wc3lHpgHR/HssHf+wd2DbODNL5j2JOEQ1T4UOHYYbiAeQg7XeHGwCrEAV3ytSKA0/7D3RdDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773927093; c=relaxed/simple;
	bh=adPbob/7PvT17MFyQRMk+bwTQ21soCZFZzW9eD1EwAM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BlTDN9CqAKTjhyZW7AGQUk3kx/xgyYsC0tSAMLtZs3aGwVIPlLaZKTdJmzUM63MTleA8x4M0tcocKp3tzIN0vb8cvo7TuO/NtogKuIjSVksuAwEK0lZ2ZaxTBtJh79qrI1PSQS1Kog/ic79JdQ9uaH6cHCLXOrBwV7l6R9KFqZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KCxLJBhA; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fm8J4U0+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62J73uTS1770603
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 13:31:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=uG8yTrmydHtpuXDatLLPRgvD
	Rb7N0jF/gffBSm1ENaI=; b=KCxLJBhAEes7dTy+w809LG3jExctrZDFSgS+aRkT
	mhhCF4qG4WypGGvEn27QkgUjRog/9tViemkAHusS3Aup3sbbfdFM5hIrLaRpVpsF
	uEzUyl78c1LxsNx8yceQ6BUU54LM29yZxDsXhHi9wwzD5Q5leKpsw1yO46XkYnc6
	1z20FVcLr0MUHtuGgNULZq3Mj3IJQiHAtGpDVAbL/E5E/V9OPKEvhNDS9cyrz2LZ
	UMU7Wp7hs1ZQatMHW+SuQYUWJctP2rncX8Avp3ALaid5o9M/4vrYd5SCRODDt+Dd
	d1cdFE0WLo3dOQp2+5zH5zfTznCXIiNrtKS3RsUTyBtsgw==
Received: from mail-ua1-f69.google.com (mail-ua1-f69.google.com [209.85.222.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cyy75ujwk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 13:31:31 +0000 (GMT)
Received: by mail-ua1-f69.google.com with SMTP id a1e0cc1a2514c-94ea6fdbd28so7944702241.3
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 06:31:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773927091; x=1774531891; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=uG8yTrmydHtpuXDatLLPRgvDRb7N0jF/gffBSm1ENaI=;
        b=fm8J4U0+ErI2GiEr+snTXZdKUO1rfortH8W7fZM/+7juwxHmRfTKDcI6N9dLM875Fu
         SJq7frPC9k9ItWskcM7+tApzz/MMX7m/NYTL6xR7iOlPVzf64hMNGU9A7sfn3bY6Nai4
         PivGZ68BLxmOA7uiXfbYwCb34vxf1wZEENq6PLnTtkKH3VhDWa526TlIzP/WVvhglSdF
         Wxqzo7gMXI7hi4LeBBjLsa573ZtKsOB2xma4DIGB3ll9JeGpG6FOlZ4qT5168MpBYeRH
         NSQDAPWvPwBKb7BzUR+ZErt0x5frbW4DBARPkRXVP10IUUaYDGhBS7XUgxlKt+K0KhN9
         J/NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773927091; x=1774531891;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uG8yTrmydHtpuXDatLLPRgvDRb7N0jF/gffBSm1ENaI=;
        b=PoMMDNuyWsEfT9FN67rwzaz/OzXFUFT3SA2iLmWP2w3p7pGLcvIFg1BlRAJuz1ZX9u
         F98zQj8cTdIXHhi5uyFE98xpeEhpOIueH/adaIs0M9C8LysXomU6SgAccK8Sx8ASssnQ
         VA3sNf9VSZcf6jg644QWBPGp0j6b7RkCJkoG8QxF4dTANaDAfdroJceATxZ6UDOO8ZyT
         HNjFzbSV4oQRuZjIP9AT/ZGq9JjVr4iBpPK4YFkCw6F/5xJUodGUCXdmEBS5HAZjhV48
         xQ2P2EPvMVqqc6tLpCWC/V63XeFFw5ukMHTVFlIG0U1V2AOmqX5xCH6e2ZfWuDarRZ8O
         Xx9w==
X-Forwarded-Encrypted: i=1; AJvYcCVce4bVSwMF3Los2Htq7E4TZ9UQTfaQGhnAetGdjQuI2e4ACX2DI140Sd8pwwVhJwaUpBgRN51d+o0a@vger.kernel.org
X-Gm-Message-State: AOJu0YwdKaoSUDSa7/GXCj+kv+nmiCQ0qbu/LPfHfnHkM5SgEq7Sq4AT
	SYNa5DawV+UAjizhvQDRG3DR++NMCBKfBUmZTz/z8TaO9KQ3kF+RLr9voavGgL4sxzlJ+bScbl4
	gxzAIqWTmdTwi3w//bSeJNboTCeyA425nA4PSHI7FmEBjjWn6gvQ41eyK8GjnFojJ
X-Gm-Gg: ATEYQzzNZ+jSbsREqj6clUGsEYi6+SmVY7p7pWzQVgGIWodAF9mmOK4IgwwUBKTYe6z
	/ZzEUIdQ2LH8DAgIKT98heKz7F8bH3ZNyszrEMgrjHjGhw3gL0VE1ojQpZvnNiDaNIpvU1An0zF
	+4Ion12+xppF9eJsyLHMR8V6/D7F5n0b63yrvjFsaa959LqTZTAv/nUvquxMnQP1Osq5IBVqic2
	XPpkdgTOu/YDWzkIkFosx0Fe0zIz5rsq1dMu+WIgUfrEhnQNrNwfSOr1idIiJMDOIM//wn1+Dsl
	Aek48CUVnHwBTMXVyB5use1BBt+z3nouXgXEC6nH1rTK+r4nFC5IdxQrER7U7O9rUBnLgM+b9/2
	k3GSi3zWW03Ik2hw59+CyJio1gR9xFrjI0w==
X-Received: by 2002:a05:6102:3906:b0:5ff:e25c:9285 with SMTP id ada2fe7eead31-6027d12f8c6mr4104740137.15.1773927090817;
        Thu, 19 Mar 2026 06:31:30 -0700 (PDT)
X-Received: by 2002:a05:6102:3906:b0:5ff:e25c:9285 with SMTP id ada2fe7eead31-6027d12f8c6mr4104676137.15.1773927090122;
        Thu, 19 Mar 2026 06:31:30 -0700 (PDT)
Received: from oss.qualcomm.com ([82.79.95.133])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f8b949e1sm116118625e9.9.2026.03.19.06.31.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 06:31:28 -0700 (PDT)
Date: Thu, 19 Mar 2026 15:31:27 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v3] arm64: dts: qcom: glymur-crd: Enable keyboard,
 trackpad and touchscreen
Message-ID: <lbtrebrpoldoiqyx4fg26uppcspowinazko5ajy3uylktyfpjh@uxsacpgr3gwc>
References: <20260313-glymur-dts-crd-enable-kbd-tp-ts-v3-1-66c5ddfee97d@oss.qualcomm.com>
 <abtzM6iAXmkene8W@baldur>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <abtzM6iAXmkene8W@baldur>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE5MDEwNyBTYWx0ZWRfXzdY1OKMb4InW
 DO6JWBvJUlVYltQgDXdyGHfFePrE+1EjXckYpEIpb/OEkgwcvBiJYi3GZh2jjcaqCL83tvR/MO9
 egRIbmv1e6dp2Ks9LSU82iWaFCHDgRwfItc9GZcc92p06WMk0GIJZeJ+181MumAuCpqFUsYA+eG
 EjECkG+oHSLz5rQzfdf744J2I8seqcxtDZGu44a1cqfiEFLsJ4IrhikohgCyfbMJRf+tdMI2Tzt
 NE/rk8SX+WILug6YiQ7HwkUAk1eVKnG8bfymJ29UwzZVru6Kgn/bDJcZDEUXQENcKn+2VBy6FnI
 ihbjJDg9XB8tZLQ/zkq/nLq/urp10IpSd8qGLqJ9daoXPJJr8Lx5EW0KLojnvcAkpJ1zVfNjA9k
 SEwiBUCO1NQ5hPmLGYMLo8ty/VFCD4FK+dJ+2nOYZYYpBczihyPYH4TgPCViKkCTkEwDCLUglxR
 WtQAs9j/xTGSshttJPA==
X-Proofpoint-ORIG-GUID: O48mYVM1PeYzkv3XghWd_bCXN73nIn8o
X-Authority-Analysis: v=2.4 cv=A7hh/qWG c=1 sm=1 tr=0 ts=69bbfab3 cx=c_pps
 a=UbhLPJ621ZpgOD2l3yZY1w==:117 a=iKs3dpp2RB4k51ZqCjcyjQ==:17
 a=kj9zAlcOel0A:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=QpXb-8giZrMuV1cKMC8A:9 a=CjuIK1q_8ugA:10 a=TOPH6uDL9cOC6tEoww4z:22
X-Proofpoint-GUID: O48mYVM1PeYzkv3XghWd_bCXN73nIn8o
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-19_01,2026-03-19_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 clxscore=1015 bulkscore=0
 suspectscore=0 impostorscore=0 spamscore=0 phishscore=0 adultscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603190107
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
	TAGGED_FROM(0.00)[bounces-277794-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.995];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: ED5542CC06D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 26-03-18 22:55:29, Bjorn Andersson wrote:
> On Fri, Mar 13, 2026 at 03:53:22PM +0200, Abel Vesa wrote:
> [..]
> > base-commit: f90aadf1c67c8b4969d1e5e6d4fd7227adb6e4d7
> > change-id: 20260309-glymur-dts-crd-enable-kbd-tp-ts-c80c0cb78940
> > prerequisite-change-id: 20260109-dts-qcom-glymur-crd-add-edp-03f0adde9750:v4
> > prerequisite-patch-id: df42484b224c01014637ec5a8f56bab459890557
> > prerequisite-patch-id: d986d8d948eaf7b80028b2244750dc7aff7de307
> > prerequisite-patch-id: 7ec5f802a334d96421d8f95d4d9e9773655cc947
> > prerequisite-patch-id: 8d9e016b49979fa817cf9eab70b809fdb9d4656f
> > prerequisite-patch-id: 6a291fd702870ca28d64439313d498593996b741
> > prerequisite-patch-id: c96958ab5c5605fb9577645ac5bfe5912cdfebfe
> > prerequisite-patch-id: bfa283218723a48e54fcd842484b004c877339b7
> > prerequisite-patch-id: 346f2db0933c551a039f63b945f989a5c8320657
> > prerequisite-patch-id: 919020405b70d588fa4356a5cbfb44e67006102e
> > 
> 
> "4 out of 5 hunks FAILED"
> 
> Can you please clean up the dependencies so that I can merge this?

Sure. But please not that this depends on the display DT patchset,
which in turn depends on the USB DT patchset. This is done in order
to avoid conflicts when applying.

Thanks for reporting this back.


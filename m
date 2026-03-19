Return-Path: <devicetree+bounces-277817-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OFTCEFEJvGkArgIAu9opvQ
	(envelope-from <devicetree+bounces-277817-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 15:33:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 96AB82CCE5B
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 15:33:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8D6FB31CBA5B
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 14:29:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2E323822B7;
	Thu, 19 Mar 2026 14:29:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="P5oZqVRv";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WuVfO5U6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8070237E31C
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 14:29:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773930571; cv=none; b=rwuov0uf+KW3Tsw4W+6nEJvC2SnlgjsfFJi/9GIS+CSBczSFTZu3D72xCyuIoLNjcqnO7UnCQCh7MaqK+X+65ayZLySahottpC161B5Z4vvsLuI53+4vmStN92+ndAoJG5W72uHKjEPHqNYIuovSdeHpme6lwtCRM4kK2GCxCv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773930571; c=relaxed/simple;
	bh=iXiANR9PmKDbfCmLu56gNubq2anpPH44+zvIM0aRT+A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=odjop6KbLxSqpqNPoHo9BpMzpaWaoOQnmjboE0GmFWfFoQbcqCYrfRR5W7qNr6f6N8w4hmhcpc3z2ll+/UZIOM0ici1CX8xw5BKXhrHPEYGpL4TbOcQbMblI1I2O81Ly9TkpkW6HXy/FV6qZ1JaqZqXFG9w4RypNvObOtEQBOrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=P5oZqVRv; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WuVfO5U6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62J73w9I3927147
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 14:29:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=SBBJRl3WE/dPyMZ9UaHMarXx
	IkJePlMXITr7YBuGRtg=; b=P5oZqVRv+nGrRxmqAj21Pg1hO/0z2R75kuDs+x0n
	EDEvvx1zUpZ0LLd1id2gqBRSBQ3uaLF1h0MPesm8jLAooD6TzdDJb4V4++xsvrN3
	SI49Kd/5+UkShG4oUkEVd4oyQQxXJr5eSzsH98ta/fX8uwKRF8vgpkq0CP614o/F
	Frf7ogU5yPPLTbtmbkP3erngKSdDkrsptpoKeJxogweI3baIo625x5yIs7MIC9yu
	yzOrjX1cYLORu0cX26BFUiVt2dq7oMPtN7q744H0KE2LJWtJC36pYGQkW18qf//v
	R4IbSpEYxMvb1aii6lUQT3A9lWC4Wlhv/qebr+5eQ9uBbw==
Received: from mail-vs1-f70.google.com (mail-vs1-f70.google.com [209.85.217.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cyut1cqee-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 14:29:29 +0000 (GMT)
Received: by mail-vs1-f70.google.com with SMTP id ada2fe7eead31-5ffa389eba3so1557832137.0
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 07:29:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773930569; x=1774535369; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=SBBJRl3WE/dPyMZ9UaHMarXxIkJePlMXITr7YBuGRtg=;
        b=WuVfO5U6/PjWHNYhfXC8RvhjSHy1rYqrLtcD4EstPrNQMEaC9P2MyuITaNfoWp0+2Q
         oCMij3lB8lqEDzGasx2Mz+91VJTvOfpzAaHZrGheJBQUtVt67MB02pD1LkKG3lhWgnWJ
         2GZNJhjZWM7XyEO9v9rgWf/0etRDEJiFmwEM0moXSPHTMnEpsNJwlalHDQTCgLbIBqi9
         D4drPkNX3oafbzMU2FTtcxXUzeQYjZQ8rY0OY62etmgOV06iM5RoG0WdStCu8Y+pwj0Q
         mFRHGJtdVHqTgoNcNnjqnp9bmC+ONDkEwMWd5TuPCQQdJxGBIFrDFQ9uf/EjnAKoOVdv
         Uj+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773930569; x=1774535369;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SBBJRl3WE/dPyMZ9UaHMarXxIkJePlMXITr7YBuGRtg=;
        b=A/OX8EgBqkQo8UR+CX4vDAul2hT5ELVTotoDEkqqLhcyRzxjuBgnYCJzk9RMPWNXHH
         fk5ckgjrUuuzMRHCJ9Hvj15YOgPHItj59+M516Wk7rBJlcPdNBmTtgbl0/VkBONQuT4M
         bS9PsKiR8qzGBlAhROrQGhAxzmw/SpWJiAfcsmbQCA5mDLrwnI4YqiipjnE1b4+ImPYQ
         8ZKKo2SI7q9aj6R+3kfn2TZruq/+fyOEHTbHEU9/vo7SzfO8kjGpFB+jtm7soXCmIkwi
         vOikn55tEsRBL/q3nxAJqS+Kn5ouW5n/y6T0aa0xHiSXhZyZdI+DmjcWapiHqXyWG+qr
         W6qw==
X-Forwarded-Encrypted: i=1; AJvYcCWfjicnpDMa9L6M5j3Itivy8hSavVOUiO4zbuUkAWYoJqY4WAyhzXnx9ArbrD5t8r2EdmFq7Ulxo2rX@vger.kernel.org
X-Gm-Message-State: AOJu0Yxgbyu4W/DJtfSNGoKXF5pK2EY57N0NC7ZsUmYYVJFzi3cmsAYm
	B33QYc4GsCxLrsB5Ca+0fSFNIec2BjFxSxrSO/HZSU0+n7dkIW8O2x/dJV6JFHc4a8DRDO2RhbK
	oSeMwGrjXghzoTtsYCy8574nvoMMB3WGzwS4TD7qV4TB4dJCxSTwmV/sdfWnnaRSj
X-Gm-Gg: ATEYQzysqeA5P6wz3driT2Z/1NzZRwI9psW/+LgZJ19Ov90lK2cv05suVkskxN5f2Ab
	AIPJS7o/8IRwnMDZeTX2Z/ATNLcnlOZh8Wm2+K3PkXoCd446MJXtMHtPLlq9zcMIVJKEP1ZXBGg
	2CVP+QFckXsoSwyZGVaV/6EC8oo4V7y9+P7JpK7J2JUb7yeLXHtZGcLSkQlPZARDS2CCgZNRbV7
	4ts0e78j+GlpeS5as1tBlyWs/W7tPkz5V+W4/K8Ad/InlDvT9pBUEdMaKMnmtcfWA+PFxStGPvh
	RTsWeCkY+L4aGI6/XyGST6XFEciZOBuGWXmsWCw1PQUE4/5Q3Oe6rwOJAqjdkcKZ4NsTLw5E055
	27N2U+nIXNh1WoPQLr6XvoeQJ0vOyl9CbhA==
X-Received: by 2002:a05:6102:d89:b0:5ff:9d74:967b with SMTP id ada2fe7eead31-6027d330b13mr2880735137.20.1773930568494;
        Thu, 19 Mar 2026 07:29:28 -0700 (PDT)
X-Received: by 2002:a05:6102:d89:b0:5ff:9d74:967b with SMTP id ada2fe7eead31-6027d330b13mr2880718137.20.1773930567849;
        Thu, 19 Mar 2026 07:29:27 -0700 (PDT)
Received: from oss.qualcomm.com ([82.79.95.133])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486fdba674csm3486515e9.0.2026.03.19.07.29.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 07:29:26 -0700 (PDT)
Date: Thu, 19 Mar 2026 16:29:25 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v3 2/3] arm64: dts: qcom: Introduce Eliza Soc base dtsi
Message-ID: <whoikp5tdu34gujfjqpopbhywzj6dvcxebywtwufip6jxdwp2s@oepb2y36a2hw>
References: <20260318-eliza-base-dt-v3-0-8a50bd2201ed@oss.qualcomm.com>
 <20260318-eliza-base-dt-v3-2-8a50bd2201ed@oss.qualcomm.com>
 <fc42719d-3474-4883-859d-b12a1c4a5cee@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fc42719d-3474-4883-859d-b12a1c4a5cee@oss.qualcomm.com>
X-Proofpoint-GUID: 9nNZAsNkzrj3iQTDHxzqR-YDFGred85h
X-Authority-Analysis: v=2.4 cv=ModfKmae c=1 sm=1 tr=0 ts=69bc0849 cx=c_pps
 a=N1BjEkVkxJi3uNfLdpvX3g==:117 a=iKs3dpp2RB4k51ZqCjcyjQ==:17
 a=kj9zAlcOel0A:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=r9zBADRPwHUBQTTAkTcA:9 a=CjuIK1q_8ugA:10
 a=crWF4MFLhNY0qMRaF8an:22
X-Proofpoint-ORIG-GUID: 9nNZAsNkzrj3iQTDHxzqR-YDFGred85h
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE5MDExNCBTYWx0ZWRfX2DvHOtiDb7zn
 thq8X8BUy42Y8zc3MHVOA/UTzY+VdAOtgGM/iJhxNwq93DsYmr2Yh5gIxq4oPOqI4YEAc8URmNS
 L8ZKmM2VwVRMN5TkeDoqw32iMzvbK1awWxCkwY/bzNPncF+LOOgvQNgXGfOhapogp3TG8FYweZv
 qzsnWwUgpXUNey9X0gu8YuoVuPOrFwNsVBnTQhfeY1FhajxjgiQYyHFnZO+urnwirWl5f0A5u3S
 e3lcunlWV/P2roxrpVeXtkdu948Qq7351RvUd/7kM+eB5QXIXrILeGAi8EMvUgISqHVlv18mdul
 a9MkK9zVKbvWc4uubdEXg66LDRJhiYsj64i1T54EzXfPJKdCAqq4LRvnrNePBEBphfYr/hN+kHf
 tDMh1xz9phQqvwVSw3vZSN/uDx+i5CwDof+nrlbnWm666U0Sk/nyY4HYHdz0sGeGFYQenN11Ufe
 wC9PB+Ss7TzOkGckklA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-19_01,2026-03-19_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 impostorscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 clxscore=1015 adultscore=0 spamscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603190114
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
	TAGGED_FROM(0.00)[bounces-277817-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,0.1.134.160:email,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 96AB82CCE5B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 26-03-18 12:18:09, Konrad Dybcio wrote:
> On 3/18/26 11:19 AM, Abel Vesa wrote:
> > Introduce the initial support for the Qualcomm Eliza SoC. It comes in
> > different flavors. There is SM7750 for mobiles and then QC7790S/M for IoT.
> > Describe the common parts under a common dtsi.
> > 
> > The initial submission enables support for:
> > - CPU nodes with cpufreq and cpuidle support
> > - Global Clock Controller (GCC)
> > - Resource State Coordinator (RSC) with clock controller & genpd provider
> > - Interrupt controller
> > - Power Domain Controller (PDC)
> > - Vendor specific SMMU
> > - SPMI bus arbiter
> > - Top Control and Status Register (TCSR)
> > - Top Level Mode Multiplexer (TLMM)
> > - Debug UART
> > - Reserved memory nodes
> > - Interconnect providers
> > - System timer
> > - UFS
> > 
> > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > Co-developed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> > Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> > Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> > ---
> 
> [...]
> 
> > +		gcc: clock-controller@100000 {
> > +			compatible = "qcom,eliza-gcc";
> > +			reg = <0x0 0x00100000 0x0 0x1f4200>;
> > +
> > +			clocks = <&bi_tcxo_div2>,
> > +				 <&sleep_clk>,
> > +				 <0>,
> > +				 <0>,
> > +				 <&ufs_mem_phy 0>,
> > +				 <&ufs_mem_phy 1>,
> > +				 <&ufs_mem_phy 2>,
> > +				 <0>;
> 
> power-domains = <&rpmhpd RPMHPD_CX>;

Bjorn has already applied this version.

I'll send a fix soon where I'll be addressing all the other comments you
had bellow.

Thanks for reviewing.


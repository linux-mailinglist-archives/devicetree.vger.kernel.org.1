Return-Path: <devicetree+bounces-276845-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OHZ/Nh+quWkhLwIAu9opvQ
	(envelope-from <devicetree+bounces-276845-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 20:23:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E6BA82B1806
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 20:23:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 32D6B3009E3D
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 19:20:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1106930DEA6;
	Tue, 17 Mar 2026 19:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TayZQvus";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gZICxvNs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C224F32C942
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 19:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773775235; cv=none; b=fpWWKY6Tav6LnN3bFtMGl0Bm4gm4Aic1Zu+b/+lKNaWy839hJG+7e0HZM9t5RkYIpEyST8FlZDgwsh1B8MBDUW3adkZe2IYq5PMJec7p6EEF3mvVJTdjpGcnbScC5fer26QwFUjQoY1LWWsWNXaDCpiuFLMdNLvTVIQFC3RCV3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773775235; c=relaxed/simple;
	bh=RZhMRxH4BCoOIJhufOPfVGjHRKsD0WBkMRFMq27Tu8w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VFPAY8meNCH//dW3SI7pggs0rynO6CKWjKZIWpwfFGfkn7infNaQwsjgQ4vGULrJHyFWKFQvn6mfLj2/eKak0gEAU7/VlMX7ZL/CBYBD74dKacJLZgXaQzXWkUhIPMVOPrbjhJUdUrbjLMkTbOtTj7yw/bpgaGLxGjHPfo3UM7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TayZQvus; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gZICxvNs; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62HIJEdl2730152
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 19:20:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Z/OYpnjTRNWyMxKSLf7FeDjE
	F8nZ4njdXHhcfnv6ZHs=; b=TayZQvus1QDqbBKZOYRtjsCg2DwLo5AsqQx91BTh
	qnLPCSe11Z5zvOgNYH/c87A+EdFPwj1WnXi2EC+T2Q/QGvXhrSyRwkUV0qS9DbWC
	51W9lv2Q3jcWZ1GaQClI1w0WqwoEfPidP0Zulm6nmOEXkN2AkblG2qfMATRmmkX6
	yxVo9tSF0egM4HL+lIpEhikv7XfcbmIJTeFMMS9UEpF4IBD4CXBMBQzczid8eiIX
	srmvhQFAoVs5AIVHYbBlK0FAYlJQEPtJ9PjaYhC3wikUhDFrV/GiWEZQFTygJl4w
	JVGvafmeEzB8gAHGPwxJkOVD4R+vmMupr1mX8YfkuUS6Eg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cy8kjs9m2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 19:20:32 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cd7a25c5a9so733414985a.2
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 12:20:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773775232; x=1774380032; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Z/OYpnjTRNWyMxKSLf7FeDjEF8nZ4njdXHhcfnv6ZHs=;
        b=gZICxvNs9Ay4MRpoYAoN+XBhxbzaXm5UA9XNCXIVALcT6yEir9AxfelYyPBjmmYqJC
         JO00nBuu9uaHRrc9z8JDkeL+VOs6Gzof0jSbRK7V7rKfXzBjvQrlRl2umnW6oGbV46OW
         vqlu07gJDdzepU7XOI4iE9Dfij5RAzVFtnd5nC5T672It00Z0HGzaFrsw2kPGmlA+xcy
         58EuAh4qgffm9yThiZ3ks40Qjgm5XaYRAs2bU8bQfjpFvRUSfbu+5wgx9Ll6/cFXWFd8
         nQ/vlCvVfU1E3j/D6rk2ZrhjrU2jC1dt3tjZS6YtB/c9NkaHUIXxZEtokxGBzzAW5YXJ
         12Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773775232; x=1774380032;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z/OYpnjTRNWyMxKSLf7FeDjEF8nZ4njdXHhcfnv6ZHs=;
        b=H8axZvf4NGoeN6Kx70s3VAUsnt5dP4lcgZxzRJeUDeEnn1QuMmkQavdFWG8WEV3g72
         8f5BkcXNz9c3yHoxGBLTfilDsIryDAfK8emCMwj4uNAFmEfjAByHBRTq1tI+Pug7WCSE
         Hfvhc/OS4CTvg242NfBGsINFgVUntRBYcXmSd3F7+kyrQ+L5qdTQCYbU8jPrx/CYyYeE
         rZpiiotBllhIeurKDx4BrkJjJa1/FE3yZAIdGazFrIyFd8DhYd6JJfv1KUFJjfuRiwXj
         CKDgxT4Pr+woGBsHGv85uHE5mMpFMprtu7IXiVF8iieqhCJ01iV3NfI1YAubtkIcAaMo
         H93w==
X-Forwarded-Encrypted: i=1; AJvYcCXlBk9GvBMw8nUImGfm5sWA/ujPjELuJY3ZN1+xk2KDsEm0d3V+m0H6yGhMGtHby4qXkYcVxp2wlFrn@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+ax9M5VtRmyR4eyzZpx6us1qpKX8P6btHJGaCOrzv+Q+pUYpe
	yIdbvqXZVh1AY0tkHlklwZKqZT3ph2i3kF9mNFHl1QHjbFt5wG0itD6c1Njosj3CoR/yi2elIpz
	YpSpIJ9NtIin7iu/WxLd1wmmfUvFYCeP+A7wP3l2bTmw0WQs6kqACEGAJw9dGdPRh
X-Gm-Gg: ATEYQzxfzr9cy5L1cIWIT2QjBEaudhNr6qSWuVPSa+uzcUJX64zZEk3end4rPCJlx5q
	SctsBZvz1bLHt/ZMYNstU37+SF45qsNZ+0v//2v5xfAYrlkl1KM8WpKtg71u0ZWOyVG7emDMHMM
	4YVdXw4oUEe6FpSn1vVjIiNcqV3AGUhmp/rMi90U4caRLJ1BFvf+rCdvtS3jHiOu4+wNP8ChrtG
	AqMMGOtiOVmBz2y9ItnWiV89tQOnUcirwQE/FP5711Pg58/qd5YZM1YcFaFHmSyXGUq2I7zR4mp
	zLOzyWd4pyaGWeD/z4jefCrYr/ifBPz9LiBCHly0MD+W/hQ2gpbc6tz8enrDsQNt/W27x/NdD1g
	bOUsTmq4KGdnXP0QpBZnPhd1pd26LCvG5OQ==
X-Received: by 2002:a05:620a:4109:b0:8c9:f8e5:9f12 with SMTP id af79cd13be357-8cfad3b27cemr105734885a.57.1773775231845;
        Tue, 17 Mar 2026 12:20:31 -0700 (PDT)
X-Received: by 2002:a05:620a:4109:b0:8c9:f8e5:9f12 with SMTP id af79cd13be357-8cfad3b27cemr105728985a.57.1773775231223;
        Tue, 17 Mar 2026 12:20:31 -0700 (PDT)
Received: from oss.qualcomm.com ([82.79.95.133])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f4bbfbf4sm630885e9.31.2026.03.17.12.20.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 12:20:30 -0700 (PDT)
Date: Tue, 17 Mar 2026 21:20:28 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Harshal Dev <harshal.dev@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v2 2/3] arm64: dts: qcom: Introduce Eliza Soc base dtsi
Message-ID: <fcd5mjxhwvcziur3lsk4nn3gayhvick26f2lhmjal3xcqpfvlx@nwodomyua2bi>
References: <20260313-eliza-base-dt-v2-0-bd91367d860d@oss.qualcomm.com>
 <20260313-eliza-base-dt-v2-2-bd91367d860d@oss.qualcomm.com>
 <60b34ab6-7bad-4436-9686-a8f6e821853a@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <60b34ab6-7bad-4436-9686-a8f6e821853a@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE3MDE3MCBTYWx0ZWRfX8Rtx9Kwb0CH6
 EQ4vB69+SzoWQxEDRK70lgA7JrasMKqhTg0jm6eAnvDfVy3ZgLq1eJ4k+362+AE9evEJAdEd8o1
 /qHnMgAGXBFvrP+IcYd25+FgRMQL8JU7odU5WaV4eT8i0rziFGXKdxRbiOz9KH8Iw8vBbBlG6Tm
 Kdr1/Aj05Eam9l4ct5kgQLl7SXuNV7wU2Qw7DB76cuiP1EAHnxdwV0E3v69pVWZSyJF3xUtSdXB
 1OiFZ7AspyFIjNogQddSGZ4cyju6L8RJ1ZlmNwdIRDgizA0pfXVUOEL9ZfIzuiRIHWpw/YZc9Q6
 Rp7Jm1XnCmrUuKHtMHMqCs8L5JS/yK9nPe8xTKscVra/rHnKuJLYqmaic9WTlRgsFxXfk0fwpH1
 LhUG3EEB0LXwzoVqwo9/21ElrmTpgQtX5hHBzWxJAfrSORlkm0cTnZKD/wJ97FJMKY6L/0h7mKX
 yaCzCPFESTsefqYL4/w==
X-Authority-Analysis: v=2.4 cv=P8I3RyAu c=1 sm=1 tr=0 ts=69b9a980 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=iKs3dpp2RB4k51ZqCjcyjQ==:17
 a=kj9zAlcOel0A:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=NTKYwtGZfXC6PV2Ky9UA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: drjOBPPDxU2m3ftii25wk2cgZ3hrm3UD
X-Proofpoint-GUID: drjOBPPDxU2m3ftii25wk2cgZ3hrm3UD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_04,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 priorityscore=1501 suspectscore=0
 lowpriorityscore=0 adultscore=0 spamscore=0 malwarescore=0 bulkscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603170170
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276845-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,1d88000:email,oss.qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E6BA82B1806
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 26-03-17 15:04:24, Harshal Dev wrote:
> Hi Abel,
> 
> On 3/13/2026 6:53 PM, Abel Vesa wrote:
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
> >  arch/arm64/boot/dts/qcom/eliza.dtsi | 1317 +++++++++++++++++++++++++++++++++++
> >  1 file changed, 1317 insertions(+)
> > 
> > +
> > +		ice: crypto@1d88000 {
> > +			compatible = "qcom,eliza-inline-crypto-engine",
> > +				     "qcom,inline-crypto-engine";
> > +			reg = <0x0 0x01d88000 0x0 0x18000>;
> > +
> > +			clocks = <&gcc GCC_UFS_PHY_ICE_CORE_CLK>;
> 
> As per the updated ABI for eliza and milos which I am proposing with this patch,
> we should have two clocks (core & iface) and a power-domain here:
> 
> https://lore.kernel.org/all/20260317-qcom_ice_power_and_clk_vote-v3-2-53371dbabd6a@oss.qualcomm.com/

I don't want the merging of this Eliza patchset to be blocked until
yours gets merged.

So, for now, I'll respin without and we can fix it after.

Thanks for pointing this out though!


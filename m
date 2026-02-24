Return-Path: <devicetree+bounces-267950-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aOu8F37CnWnzRgQAu9opvQ
	(envelope-from <devicetree+bounces-267950-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 16:23:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 20AE5188F0A
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 16:23:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8D6F030970D2
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 15:23:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56FEC3A1E86;
	Tue, 24 Feb 2026 15:23:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ksOR/Agx";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Y1sQjNP9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E9974502F
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 15:23:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771946611; cv=none; b=qdjdPjTISjfJ7d3oQoKHtNd4t0uX/nMCKIFN1zM79ZhKu2WhcAbAA9HqJvIfsAbN9Bj11YknlwkwLbAMJN1glnQWALCkZJ1R1sP//jrpxAF4V440LoDiWw2gXmQTLSWPUeoG8WAvYpdD/gNbbyQauXABdwExrlA9HsYKUzRyRJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771946611; c=relaxed/simple;
	bh=/DYZw3AqVi0HQFvijkQ+vQHOy/zex5fgGfkRBnsMJu8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WItQXzimBU8PiFqkVDZsK3KdQBPbz0RehAVF8i1n5lRc99WMNYNkbtTAX4xkohR5vzdQDspp/kFydEEShqZZod9GfKKd16I47XfQOO+A35yy5kmFbHQ+toq1mOyu1kFtT0kFvdQFtFEJv300Gif0jkr6Qk23bQxDZGjxpqILmqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ksOR/Agx; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Y1sQjNP9; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61OAFRll1774491
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 15:23:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Q28D0qIiT56rXz2RxXIvxCmq
	8mmHIJrA+524DFPK59o=; b=ksOR/AgxdUpOfWrPq7kyNAhiQaaURE3j+66rmOgo
	vwCFX+YqsS578l1jtJQxaAa4jyld0tnLJENRhMY72zbTYlPMYzkxsLO/x6I1kZpV
	SHsuqV09JEkj2tYCTXRvnaRcKp148uuJKKbe7UV24pngiLyNR+Ht7t5Tx47IGtCC
	ZPA4Wkh6w0Yp811H+grvVRn37PNeOOmXa7flt2mazNzUbAeJuxQeTAg7pJrvI5DI
	3Mnb6qlpwi0j1IQl02L3qWN1+UDQSWkOicIC7nqErgkUxXGLCUc79/Diklof8o3l
	gxrMkBTGTG2+PlXk+Qnq5otQe3mR+QHUANqqcxiLYKyz7Q==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgpj8cdq2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 15:23:27 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb4e37a796so4031793085a.2
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 07:23:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771946607; x=1772551407; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Q28D0qIiT56rXz2RxXIvxCmq8mmHIJrA+524DFPK59o=;
        b=Y1sQjNP9PL8oEFEn78rI16vSAW8MgtbfoIOSHjioWiX+6HobjDtHJxwkUR3xnK0Qjl
         UrmW0NfBjSLi31pbuw8OVQn1oO0dxzHTRmkA96+wj/EebeVzL6OtVm/BdxhBMnl5r44a
         2cI6rg3qppDM6J+Zrku7XVJK/mkBvL4Xy7Wt/X1jNCp2UTWIBZU9/vAJXGLtS1j5n9DD
         WVmvByekBdYeO56t9g61XdyPmLvTUwcyp3qPkezYn3GfD36TbIefSCuMwOaXAMWqXLbZ
         KZaTs0zA6Ja5y7UcYglcvtuyJKlJutahpIcm940AHZo4o9hYOaao+viOhzNOSReK3hGR
         swPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771946607; x=1772551407;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q28D0qIiT56rXz2RxXIvxCmq8mmHIJrA+524DFPK59o=;
        b=gCQyh9t7Qu+OXxbJD9dD0xRWmxCPaFLCbUnVP/wNx2xhUR6PpFNtGEqH1ioz2dDwoR
         KWQgSYKtL1firTgfptklulUZH9k/vSryjOEPwQK2UcRpbB2rxQ7RCIPNqW5Eqc0ATeDZ
         yIwwcGMeYs7RHAzJ5bLRClagyjbPjQexA85UzyNBZ3X9bhWQpadMOXGi0UY3y1TN5Qqj
         aezKk6ZIlIoh9Li8CidNJSv5MNn5mhAk7a0ATm0m5V03RksoZgbcLnam+IqQJ8s5mxd0
         V7khC19g3S5ZDsxZ0BpgBPahQ2If8/r1zjojYMp+5r9gYUEIxd0CN8EHZbv8j6axjsz6
         KUzA==
X-Forwarded-Encrypted: i=1; AJvYcCUS5fT7AB+OIX71vxwcyhCtQda6fUoenSLjBTHei+ScF/A5Fg4qAUuXQD/LLXdR3pvMISyubhJmXDgm@vger.kernel.org
X-Gm-Message-State: AOJu0YzXLkyesjCmWWhVsCfGJ2Bt8ouKD1yVzOZKfm0mg47KPj75PJsr
	iykNmnIUupC2AICV8LUWQfa54C627I7NirexwpEW79xZNtXI8gmZszlijzMqZDgrNAS2aD0uuDE
	uxvm79JjZ3pr9DhUyo3qDGvgezp9SXXQb0nxRHiFcdZvFsAayQaOu2BMrxsk/OaRb
X-Gm-Gg: AZuq6aI2yp/4xkJNG2M7UmsAIhYfYw1asKERUpKxftwVQF36rchtPZgwlgOh7A8eOaR
	AJX/G6F6jRINe+P7pQmg1AAGUsrSyN1aUhHMS2NM91n7GRlnUIgHPgchSLmc/o8L4IuxY3BodOP
	8t5lSlLFLT+bp/VR7g2Gv3AgsFvifZP9WYOOhrdsfV2XHVojgXUpfzpxBsd4d1L74baBL2HilT6
	YAq8EKwt/XnkqMSPN/ceS4XdJWCjSP57PfwGtbAWg3L+35ml9Ie+rk2sb7S9FTPARuWSN/rc9hK
	30+7tmMhKs0OPz5xegawHWQ4/4wJMUjG3H4MBt9ByY3qIRdvTV8VdMtgWguPdlt8zcwThu5YCQg
	Ve2s9sY1+UEi09NgwAqQ/Az/jwXUYtw8LIVj1/QyasGkAyuFfR03KMolbIKaifIbExctkZPEtoh
	FeiN0t2zhy/bSJBlcDAOrzS06AhRBYpw2g3DI=
X-Received: by 2002:a05:620a:c44:b0:8b2:989b:efe6 with SMTP id af79cd13be357-8cb8ca0d840mr1594974785a.26.1771946607089;
        Tue, 24 Feb 2026 07:23:27 -0800 (PST)
X-Received: by 2002:a05:620a:c44:b0:8b2:989b:efe6 with SMTP id af79cd13be357-8cb8ca0d840mr1594969585a.26.1771946606560;
        Tue, 24 Feb 2026 07:23:26 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a0eeb4b4afsm2274933e87.79.2026.02.24.07.23.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 07:23:25 -0800 (PST)
Date: Tue, 24 Feb 2026 17:23:24 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH 2/3] arm64: dts: qcom: Introduce Eliza Soc base dtsi
Message-ID: <msp3bxcyivr6zsmj6fobxbra4mxans5oworqjf4rrrgxv4s24m@6pembdv6w6nc>
References: <20260224-eliza-base-dt-v1-0-54e8e3a5fe43@oss.qualcomm.com>
 <20260224-eliza-base-dt-v1-2-54e8e3a5fe43@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260224-eliza-base-dt-v1-2-54e8e3a5fe43@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI0MDEyNiBTYWx0ZWRfX+d4oKQtsGGmw
 9P/pV/Ckb4LDq4xRc2bNt9Hiai5GLBFlgQMsHkPTiFEeG0zWYYYW7JJWEnH1/K904CCsRiOltxp
 c+sd043UWBCMnHv+tETBO9w7ZHne4JT/xQ+GFunlW7fvXhOJa9WLxdUbXjWOv0fWJVagIdaj7bb
 KJE1hGKPzvDdF0RMHj0g/CZAmumRDdoidAtr8bx3/uMZGoQIJPvurl1L8kLg89nVYo7O6skonZe
 tUV3VW5I1zezZU2XYTAkVPEpjevumrqzALewS01uIAc4eaQ0mKRlKVdXg+mZzpqdEQxE016bIci
 PZhfgrxCp/jlCwExpb7RR0NPTHJQK+r6SdXfoprx2T/BEzEoDhyXUhCabzAyWVbEOcRTGIAs9vs
 tSFL2XtC949tj5Fv70BkkPUGcI0JRQN2P0RjB1MPNsKuSeHlbmwX/gw/j9SXE83UriAWB/2Pw6A
 hTHP4GcR5h2mQQCVdlg==
X-Proofpoint-GUID: e6eXFFgePviPvMFoRguit0zX-HLS9WVD
X-Authority-Analysis: v=2.4 cv=Z5Lh3XRA c=1 sm=1 tr=0 ts=699dc26f cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=EUspDBNiAAAA:8
 a=p1HlqQK6dgA6bnMk3p8A:9 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: e6eXFFgePviPvMFoRguit0zX-HLS9WVD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-24_02,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 bulkscore=0 adultscore=0 impostorscore=0
 priorityscore=1501 phishscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602240126
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267950-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 20AE5188F0A
X-Rspamd-Action: no action

On Tue, Feb 24, 2026 at 02:13:26PM +0200, Abel Vesa wrote:
> Introduce the initial support for the Qualcomm Eliza SoC.
> It is a high-tier SoC designed for mobile platforms.
> 
> The initial submission enables support for:
> - CPU nodes with cpufreq and cpuidle support
> - Global Clock Controller (GCC)
> - Resource State Coordinator (RSC) with clock controller & genpd provider
> - Interrupt controller
> - Power Domain Controller (PDC)
> - Vendor specific SMMU
> - SPMI bus arbiter
> - Top Control and Status Register (TCSR)
> - Top Level Mode Multiplexer (TLMM)
> - Debug UART
> - Reserved memory nodes
> - Interconnect providers
> - System timer
> - UFS
> 
> Co-developed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/eliza.dtsi | 1304 +++++++++++++++++++++++++++++++++++
>  1 file changed, 1304 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry


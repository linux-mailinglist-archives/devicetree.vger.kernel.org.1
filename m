Return-Path: <devicetree+bounces-261352-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AT99OBIqfWlcQgIAu9opvQ
	(envelope-from <devicetree+bounces-261352-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 23:00:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F6DABEED1
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 23:00:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ADA1C301545D
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 22:00:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3B7233F8DA;
	Fri, 30 Jan 2026 22:00:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YyIwcSPh";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LsTZjpXH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4322D23B6
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 22:00:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769810447; cv=none; b=g9FeggWYsoUiwKi4hoo5OgMcUtb6pKDZSFN17DRxdbTMNzo/+TnX5HBjaTgINS7O3dakgapRktnVFwhmGGh6+VUHqCe9g1LXfyuR3EQ+W9cZKq/GWcWiX2VYmV777Gt2fGnp/w0EKzsHHeZVDxuSuQrVvhtguHuW9GcJ5UYxsqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769810447; c=relaxed/simple;
	bh=MbavlqvK1fmzaUF2+UprJd0JaLbeKFThMIEwpsvBMtI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CUrYkamrTg1ABmMkADQihPXbUEjeI3/OtQv5g+4v2PTcsiNCrXNk+gw31ka2mxLiJ9vIarlJgtTnejj9e1d+rwQqdLeT74xlFZ95KKIHYW/BbxfUpjgdFRzXEj132sFH3XcVPX2xy21T/lKB6YDH2hFWBc2RweoLPscOWGEa7do=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YyIwcSPh; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LsTZjpXH; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60UJEbjq2930163
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 22:00:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4bW7txF+AdP7CLF1i2dmUA6Zdvs3NlrWrxgEROw2IJw=; b=YyIwcSPhtCgjmIZa
	NnoGrH04TnpOXBNOAFNUM4XIwthFpZOwGmty/pMaI4aXs91JrrU919335z1+4l2z
	nPpXp4fuhgdUuzIwlS4x6zcGR5s+WlE+po6NAC3PJbhu9OYgGqQzTnFnKokfIiq9
	o4EeHmw4DGn2dKHZzEpQxHqT2SYad9FIiB/6FSbKg4Vy0V2Vtk3zl2cN36fXHe+Y
	dnquCKxFkZqxLyMlTkwxTfRr4Pr9V4UD3WMrNhFTgMaY6j2gJH1xssUzxLnpaPgw
	qpH0a3fs5KCPX03Tcfxj5VrfxIc4sfWy6H4v/uO+x5pK317Jt0XOxlHAiL+Y39w/
	Ph+yEA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c12mmgfmr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 22:00:45 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c711251ac5so658287485a.1
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 14:00:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769810444; x=1770415244; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4bW7txF+AdP7CLF1i2dmUA6Zdvs3NlrWrxgEROw2IJw=;
        b=LsTZjpXHWPQ0Z2a9DN4t1DBwF3bajYno4YuoXERhprKSIPypJ+Xjgs2zBeJNpclIQu
         pn/oQmg3I5CcB6G85pDHZc+LTRwtlLKvKh+TXlc52+zd0CuNBBQ8WxvmUQTSrYGhgHXM
         bOTnW9Rh5mvRZLH65MQJaAyV6YlJbUF+63HcNaTD4koFj/h8TSOUamGh+/Nt3Li19bZP
         ClMBTpOZrnZCEO435Z5+lNSy64X48PzcurQ5U1mYZu81QW6SZF4b3NoChwu/lTElqQ6o
         CLctsEYY0KIjxMjsB8XGWISMaxDpoaA5IBr51gGGUv9DEMeN151CyznmpaHYw9SsFRI6
         2Z1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769810444; x=1770415244;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4bW7txF+AdP7CLF1i2dmUA6Zdvs3NlrWrxgEROw2IJw=;
        b=we/32/hvnASx+6EzrODulmw7HQp7esE+Nc78DR0x2ZDErWxjHDHIw7tV6CeYb7VeIj
         EierH8Ex5pgfzRxx7WCbwEuA50IuuV0if2yju8Zgj5wR8tEh78AKyUz4Sz8J29eETBdV
         z2QceUp7kxrDjPpQ8M4LZ7IM4+P70ZnEvsnDvdkF2JtvGF+kGzn+nbKJVi+G3Qp7hXQQ
         Rcbb+NRVzU+fvgn1593aHA0JSKY87xMnf4Zuqnc/MShhsFevomL47E+Ob3eqUyNquUG/
         iAUnttzrUcg+clFr3uv0FtTpTlqbeE2GY/SaP/SPhM1Eqjv9MTz++u8u4PgSoMUJLaIO
         b/tw==
X-Forwarded-Encrypted: i=1; AJvYcCXMDzwuIypQnaJK8YWuSzt+S3csZk4DVb2eGI2LlYgUaXz5yObrgWsXkmtdBeZEaLPKGzjWDI+htakK@vger.kernel.org
X-Gm-Message-State: AOJu0YzgA1JukV4ZY8Nhddaoo+vMcZOa866HV9vDzGGC2M9zi85q4VO2
	FI4vZBvPKFJ1QXlo3MEC9W9gNqOxqQ5QeLEjW3USBXLHsbND8UKwyW2NAENAKG85ig0O1g0JDh9
	SqbJ+e2hSI7VmuupSCO+nLckZFiqw9VS978a8FP1i+Nu3/PFd58lwdqUvfokeLwL3
X-Gm-Gg: AZuq6aJVi38Cw/U/mG1epacM06iyES7WNJMseIQUrfR9/lL3Ug3n6lVT1/VKe53Zr2I
	bI5DwfDwT2VieneiS6SDbsJfKhMTdzeWJNQUTLImoytBKPP1weH1fMQLx3g5KgoUNNcvYvuyNmF
	/m8meEPtZNwlIM+V1u5iB8mFZSXRauRfjnSSDtI/bmd3l82qmUcXrxsl71VHmxs1a+Ki/SIjf4p
	0ekmm8BnSNXMyh34h2ovF3VBtPBuRbox0WUN+1sA3Rwo+O/BY3EclsHg/f5e65ZAbpdPzHd4M2m
	9rI/YYVRTKhhe75uFR4RTpFX/pNVRjJ9BIb4XLvfDR6mtV/lHfWgdu0/sY1CoGISyP0B3+oSY9E
	jsdG4f3lveMoV5W6UdT2vaUqA
X-Received: by 2002:a05:620a:4403:b0:865:916b:2751 with SMTP id af79cd13be357-8c9eb1fbefamr562472585a.14.1769810444401;
        Fri, 30 Jan 2026 14:00:44 -0800 (PST)
X-Received: by 2002:a05:620a:4403:b0:865:916b:2751 with SMTP id af79cd13be357-8c9eb1fbefamr562464685a.14.1769810443678;
        Fri, 30 Jan 2026 14:00:43 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e10edfccsm24120992f8f.17.2026.01.30.14.00.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jan 2026 14:00:42 -0800 (PST)
Date: Sat, 31 Jan 2026 00:00:34 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>,
        Maulik Shah <maulik.shah@oss.qualcomm.com>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>
Subject: Re: [PATCH v6 3/4] arm64: dts: qcom: Introduce Glymur base dtsi
Message-ID: <64x5xfzjik4qtvsxqvwqhf5mua3rpvh7nzw67v5sy7afoo5fzv@5vp3uvjk66if>
References: <20260122-upstream_v3_glymur_introduction-v6-0-245f408ed82a@oss.qualcomm.com>
 <20260122-upstream_v3_glymur_introduction-v6-3-245f408ed82a@oss.qualcomm.com>
 <2vqho236mjlsnraqif6ivic6ybblnsmk4litqw2sbfpjvrp2t2@eztnjrlsmrp6>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2vqho236mjlsnraqif6ivic6ybblnsmk4litqw2sbfpjvrp2t2@eztnjrlsmrp6>
X-Proofpoint-GUID: bDX8DRncdL7kgBLXLM9HXhEwIcjvk996
X-Proofpoint-ORIG-GUID: bDX8DRncdL7kgBLXLM9HXhEwIcjvk996
X-Authority-Analysis: v=2.4 cv=fZKgCkQF c=1 sm=1 tr=0 ts=697d2a0d cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=WFtovuVaATKEZaN-F30A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTMwMDE4MCBTYWx0ZWRfX753tS9Akb2zc
 M5oaQmWJZvWxm0wBEsbS8M2pVlK02/rw0ZKQpDWQhYdCQ4gsxANaJFJuPcpNMfAFqy2HejYZB2j
 gCWl3Ff/i3HvPf1A6wbj3+K9/75z+U/H3E8ES8pi7I4ilxAf+8qpzAkPa6RwM2x+pb26erRYapD
 oQkip4SoJeUnlw3n4GgReJCi8tBNFKgoXap9ylqqRABX9v3l60EsmjwNcMJhbq5CnOCe55MIYSU
 YgTC4MYQsxa6lp94nmRGROdjh5nNfFLzLbYQyzMubjDNPTekzFV4qqtOT+p5ZIHjmXm6KVnKz7L
 W/eMYIKY50F8SAcm60ePeiIrUlfMWxJVQGXZj/59gHKyK1g8zb4qCdcm32dHorLkDlDcjme/+wc
 TpZSLD9BmnepD8hhaqFF7JrYkVsAEr+BYfQjyyPY4lxKHTDf9r1McFczjvFlvHETzt4RWSg+nZ/
 8hibDSiRvQchSuIQ81g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-30_03,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 priorityscore=1501 malwarescore=0
 adultscore=0 impostorscore=0 spamscore=0 suspectscore=0 phishscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601300180
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261352-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.1.134.160:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:email,qualcomm.com:email,qualcomm.com:dkim,0.0.0.0:email];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 5F6DABEED1
X-Rspamd-Action: no action

On 26-01-30 23:44:43, Abel Vesa wrote:
> On 26-01-22 20:54:00, Pankaj Patil wrote:
> > Introduce the base device tree support for Glymur – Qualcomm's
> > next-generation compute SoC. The new glymur.dtsi describes the core SoC
> > components, including:
> > 
> > - CPUs and CPU topology
> > - Interrupt controller and TLMM
> > - GCC,DISPCC and RPMHCC clock controllers
> > - Reserved memory and interconnects
> > - APPS and PCIe SMMU and firmware SCM
> > - Watchdog, RPMHPD, APPS RSC and SRAM
> > - PSCI and PMU nodes
> > - QUPv3 serial engines
> > - CPU power domains and idle states, plus SCMI/ SRAM pieces for CPU DVFS
> > - PDP0 mailbox, IPCC and AOSS
> > - Display clock controller
> > - SPMI PMIC arbiter with SPMI0/1/2 buses
> > - SMP2P nodes
> > - TSENS and thermal zones (8 instances, 92 sensors)
> > 
> > Add dtsi files for PMH0101, PMK8850, PMCX0102, SMB2370, PMH0104,
> > PMH0110, PMIC's along with temp-alarm and GPIO nodes needed on Glymur
> > 
> > Enabled PCIe controllers and associated PHY to support boot to
> > shell with nvme storage,
> > List of PCIe instances enabled:
> > 
> > - PCIe3b
> > - PCIe4
> > - PCIe5
> > - PCIe6
> > 
> > Co-developed-by: Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
> > Signed-off-by: Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
> > Co-developed-by: Maulik Shah <maulik.shah@oss.qualcomm.com>
> > Signed-off-by: Maulik Shah <maulik.shah@oss.qualcomm.com>
> > Co-developed-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
> > Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
> > Co-developed-by: Taniya Das <taniya.das@oss.qualcomm.com>
> > Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> > Co-developed-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
> > Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
> > Co-developed-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> > Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> > Co-developed-by: Abel Vesa <abel.vesa@linaro.org>
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > Co-developed-by: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
> > Signed-off-by: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>
> > Co-developed-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
> > Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
> > Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
> > ---
> >  arch/arm64/boot/dts/qcom/glymur.dtsi         | 5913 ++++++++++++++++++++++++++
> >  arch/arm64/boot/dts/qcom/pmcx0102.dtsi       |  187 +
> >  arch/arm64/boot/dts/qcom/pmh0101.dtsi        |   68 +
> >  arch/arm64/boot/dts/qcom/pmh0104-glymur.dtsi |  144 +
> >  arch/arm64/boot/dts/qcom/pmh0110-glymur.dtsi |  144 +
> >  arch/arm64/boot/dts/qcom/pmk8850.dtsi        |   70 +
> >  arch/arm64/boot/dts/qcom/smb2370.dtsi        |   45 +
> >  7 files changed, 6571 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
> > new file mode 100644
> > index 000000000000..16a3c3ecf97a
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
> 
> [...]
> 
> > +
> > +	soc: soc@0 {
> > +		compatible = "simple-bus";
> > +		#address-cells = <2>;
> > +		#size-cells = <2>;
> > +		ranges = <0x0 0x0 0x0 0x0 0x100 0x0>;
> > +		dma-ranges = <0x0 0x0 0x0 0x0 0x100 0x0>;
> > +
> > +		gcc: clock-controller@100000 {
> > +			compatible = "qcom,glymur-gcc";
> > +			reg = <0x0 0x00100000 0x0 0x1f9000>;
> > +			clocks = <&rpmhcc RPMH_CXO_CLK>,
> > +				 <&rpmhcc RPMH_CXO_CLK_A>,
> > +				 <&sleep_clk>,
> > +				 <0>,
> > +				 <0>,
> > +				 <0>,
> > +				 <0>,
> > +				 <0>,
> > +				 <0>,
> > +				 <0>,
> > +				 <0>,
> > +				 <0>,
> > +				 <0>,
> > +				 <0>,
> > +				 <0>,
> > +				 <0>,
> > +				 <0>,
> > +				 <0>,
> > +				 <0>,
> > +				 <0>,
> > +				 <&pcie3b_phy>,
> > +				 <&pcie4_phy>,
> > +				 <&pcie5_phy>,
> > +				 <&pcie6_phy>,
> 
> I'm afraid these do not match the array from the driver.
> I think there is one more <0> before the pcie3b.

Actually, one less.

> 
> Please double check.
> 
> Thanks,
> Abel


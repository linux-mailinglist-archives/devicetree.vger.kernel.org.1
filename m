Return-Path: <devicetree+bounces-269890-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yAnHG75mpWmx+wUAu9opvQ
	(envelope-from <devicetree+bounces-269890-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 11:30:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id DE64F1D686F
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 11:30:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 195953078FFC
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 10:21:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1027F39B95E;
	Mon,  2 Mar 2026 10:21:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VRdC2N/m";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="C6PMCiiU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B74BF395DA0
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 10:21:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772446889; cv=none; b=kQBe9YmwAqqCMlDum87oKV43n8fQ/QIrIYYhGckX9onH/XFsje9XF8jFsST+FNtwBihzCbhir6/Q1M/kiLcXxqpW2/Qh6GTmcIQ0qDxLYPj03vOxFcHpAZCOsIxQC0vNGs5GPDyIpYCZVJADxcqpPny3e0Fbb4RGOJIEWL1vjcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772446889; c=relaxed/simple;
	bh=YzPtYSXIsrY/B+gtkEtbaoVWBU8jVlBRjvOq6AnGucQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=O4eFSrlRTOJ5o53q9NiNj/SOl77S12RSdU2K2VL214RTE4pCVVm2hdGthJ2bRc4gZXk57JGo8n9ejygIz6o4kNiedgYLsfaz3SqQWTKxkj9miTThmShILOK9yj8dNuVJmBYI+w3iV2HjgwrrDafA3jLB/64pZInnWs19uTn4KfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VRdC2N/m; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=C6PMCiiU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6228Ewfn2066736
	for <devicetree@vger.kernel.org>; Mon, 2 Mar 2026 10:21:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=qc+PQLcGoUUce2r4NCoYXsIY
	gtlY85TRmH7qlp00OJA=; b=VRdC2N/mHMU+RzmszYje2TKYjxmdBvnTa9NpRZIs
	YYeQCxEx0hSIB0nu0vYpzKLRrSv1Q2JwypMlqzLYjQFb+xk/R785GokIuSTFRpT9
	JyeYY8ei53SUYZvd8epFTDerrVFtOJ6NWysUd0oZp0rZvNmnJ9OprKjYYc42HdwZ
	EZeJL4QJ7wFot5TOE8iEMVdp6xx8nFo0xv0PBB3zOZ7fK2bW+36wbmg/yPtCgI5X
	mLUpU/N1yWWisT3RtLUc4WFS8d5HNcV4HZqcUVjTeB75x7llLvR/jrhpYwup7xSn
	6cQBjiptV9eCJNOcUVnoZ+ezZwC2n3vlB1GQu2QbYAY4wQ==
Received: from mail-ot1-f71.google.com (mail-ot1-f71.google.com [209.85.210.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cksfd553n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 10:21:27 +0000 (GMT)
Received: by mail-ot1-f71.google.com with SMTP id 46e09a7af769-7d18e95c658so27197876a34.2
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 02:21:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772446887; x=1773051687; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qc+PQLcGoUUce2r4NCoYXsIYgtlY85TRmH7qlp00OJA=;
        b=C6PMCiiUzT3A62H1pKoQUa2EtBTaFs4Jq4AnDBM5i/Twk1hznPGnOPMM4sbfhbq3qB
         GAvO4SEKZJ95+0vWlnECr6L6NOBonS6rjfCJAIboPAZiFeo8wRhbQN9BaMR+osz9YfHi
         /ar4b33NuMe2AXwlCvwFRHpoIeX0Jhtl7JAca07RKGqh1XiXOT4jpJb1EPxRLCUHlz6n
         Bkk4uABMnZ0nmWvBuPvQQ1KwU4uAXuEOs9t3cfeH0kpKPkCmI++kC/JPGweZ/dg9fgOI
         KOyZZhTRhTBiXMXEcYEd1xmr/ez4V0+iGNkIQlsbglzuFcFyNYai3IILZAxFdhLG72eJ
         Oaaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772446887; x=1773051687;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qc+PQLcGoUUce2r4NCoYXsIYgtlY85TRmH7qlp00OJA=;
        b=wqyIya5IlX90/zl0hv90fEHpdc1hR3oIb4+vyztvnSzBFsi7b2eKMRLE5dKL5K1w1r
         rnSuW1LHB8fNSG1n6CjmKToA2tfE/awNYINIauvWJTx3w16SSTp6rqyVrQMw0KfIupeP
         8Nma9qZF0CC6Nyv/F5iAUSlb1HVoMU1Rd2Xojork0WV+UVtm77r/AV1JFKZ4GraQNUcW
         nWbm7KlkmZOZSgAz2xb/NueIcUrp8ycTUNHQ6KXCsFQSCj7QFqQzHx6nieM24HRHflUw
         q4ADN88gfOcO6j/h4sCwoFG15babJQmdywlSpF5xkVGvmwE2HT2GEZ/IwI5Dyz7/jwYP
         PmzA==
X-Forwarded-Encrypted: i=1; AJvYcCWtR/Wrn6DtMmFXe1AUksQIkeELa4tKqaAfmdiDU+hxoXzs0ICpFj22wipTWR1xQx8YhmRG5DRUxk0x@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1JS6femjAwsyCEtROP216gokL7d+g7esFlqsYSvmefRpu5laM
	hglKbkWZQUob7PBVj5YL5jPh7fqwanWwZD7OkFvbpm0kIxTrLCuk6I9MNswqAemrIYgsR0c9GNy
	RQx+7cNJEakBNGXWs4uKk1gcRmxgt44shnZYAy2eDci68ijWrU7Zi/quncYiLtbat
X-Gm-Gg: ATEYQzx6IU9ZoFBnd2zY5uvWjOiA9sdSVXm9rTx5fq+nWqyPG9qwXWtRBj6xbXnLRu0
	utQQLfoLg4jGIZPE/5LciOYclESue3NIBZ8PUJxAahitUmqBwyJ8pGIof4h6Gwb7nRJWWoK0kN7
	m7FLp1LnAdcx0rqcAuvvfU2KHcOTP1km7yk55eh+eZ35U3ih8fRkaPwLAMBDQEloVZ1+p/EUKH3
	auf4lWOznsY/cda9QOKoyzgxmmuXeQCnKJItpzbHrp1VBwyxBTd8V2RxkAGJb5o0npPquXOLVsn
	f26WBAk/PIPYiBfruXEdbCYY6JebQJfIv/ZJezhi3qDEUvHgX5QmfFTAQ/uxrXeypBSlmYhvIps
	FOZNM6PTLOLaL5tshsF8LeGU45JxIXJXzLaMXpln1gR+Df1DVpAd+fR4NZwguAi3dOFHL
X-Received: by 2002:a05:6871:3309:b0:3fa:ef4:3e3f with SMTP id 586e51a60fabf-41626f9aa80mr7482824fac.33.1772446886939;
        Mon, 02 Mar 2026 02:21:26 -0800 (PST)
X-Received: by 2002:a05:6871:3309:b0:3fa:ef4:3e3f with SMTP id 586e51a60fabf-41626f9aa80mr7482812fac.33.1772446886550;
        Mon, 02 Mar 2026 02:21:26 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4160d21196csm11368443fac.12.2026.03.02.02.21.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 02:21:26 -0800 (PST)
Date: Mon, 2 Mar 2026 02:21:24 -0800
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 vdda-refgen supply for Glymur
Message-ID: <aaVkpKZcrNM7k4Xm@hu-qianyu-lv.qualcomm.com>
References: <20260208-refgen-v1-0-87ca84fd78b3@oss.qualcomm.com>
 <20260208-refgen-v1-1-87ca84fd78b3@oss.qualcomm.com>
 <20260209-magic-conscious-seahorse-b81c8b@quoll>
 <aY1Jx5J8x/OALk5M@hu-qianyu-lv.qualcomm.com>
 <hcslao22elcihjw56ltu4yo54lotheqpikzsrq6tia33di4fs4@2ygrbwhcfx2a>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <hcslao22elcihjw56ltu4yo54lotheqpikzsrq6tia33di4fs4@2ygrbwhcfx2a>
X-Proofpoint-ORIG-GUID: xxKGbPKgt_y7uSWNnCKbcevZLbRj6lfe
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAyMDA4NSBTYWx0ZWRfXxe9bWQ0Xdes7
 HgfD01bBUgcl/ZtNk4erkRuocS7s+ZSeURfcQXESS9kY9LdqOHP4AiQfjcnzrjRGT5hA1NhfC3k
 8oDLUomFSJfeALcjWL9yMBlkpX59szvrkkfbpfPh6lCI/tsArLrQ4h02e/oRzsuGsB82yivYXpA
 67NRldQhMqYV03ov9ksy0nnkAMb2u8tN/rIhQnNsIbqWYTqQ8ydhJqGUTo9tcA+uVfyzasPIpkA
 wliYZAluJZ7gjY3yLkDicVgB0FQnBlI09TXI2eCk55J/vT52HkvPReSJvIdQl/0awO4+fxR4dq0
 vF42LQCBuueAHkHbL+lCGHm/ER9IE1/Wl68BCkECihKsSialp6GDw2E3e5zKq7fRJWlmw9CqWpJ
 luyCxXLeEItH9gbfsIZvewtTbUh4h0KBi4fLARrOv4U4beSWifii1HlRA3mCPoexCFb7a81D5T7
 uMZIMddtFBaGjWLQUcg==
X-Authority-Analysis: v=2.4 cv=HKDO14tv c=1 sm=1 tr=0 ts=69a564a7 cx=c_pps
 a=OI0sxtj7PyCX9F1bxD/puw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=Mqtz4aph0Rek3LVAYukA:9 a=CjuIK1q_8ugA:10 a=Z1Yy7GAxqfX1iEi80vsk:22
X-Proofpoint-GUID: xxKGbPKgt_y7uSWNnCKbcevZLbRj6lfe
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_02,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 phishscore=0 impostorscore=0 adultscore=0
 spamscore=0 bulkscore=0 suspectscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603020085
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269890-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,hu-qianyu-lv.qualcomm.com:mid];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[qiang.yu@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: DE64F1D686F
X-Rspamd-Action: no action

On Fri, Feb 13, 2026 at 07:47:36PM +0200, Dmitry Baryshkov wrote:
> On Wed, Feb 11, 2026 at 07:32:23PM -0800, Qiang Yu wrote:
> > On Mon, Feb 09, 2026 at 09:06:23AM +0100, Krzysztof Kozlowski wrote:
> > > On Sun, Feb 08, 2026 at 08:49:39PM -0800, Qiang Yu wrote:
> > > > The PCIe QMP PHYs on Glymur require stable reference voltage provided by
> > > > refgen. The refgen itself requires two separate power supplies:
> > > > vdda-refgen0p9 and vdda-refgen1p2.
> > > > 
> > > > Since there is no dedicated driver for REFGEN, add vdda-refgen0p9-supply
> > > 
> > > How does the driver matter for the bindings? If I add dedicated driver
> > > for refgen, then I change the bindings?
> > 
> > Yeah, I know that dt-bindings should describe hardware, not software. But
> > what I meant to say is that the refgen is different from qref which is
> > controlled via TCSR registers and its LDOs are requested to vote in
> > tcsrcc driver. The refgen doesn't required register setting and it doesn't
> > have dedicated driver, so we vote its LDOs in phy driver. I will avoid
> > this statement in next version.
> 
> I must admit, I could not find references to the refgen in any of Glymur
> PCIe-related HPGs.
> 
> > 
> > > 
> > > There is qcom,sc8280xp-refgen-regulator so why there cannot be
> > > qcom,x1e-refgen-regulator?
> > 
> > I think we can and it seems better because the refgen for pcie phy also
> > supplies reference voltage to other modules like usb. But I checked the
> > qcom-refgen-regulator.c, it contains some register settings and there is
> > no LDOs voting. I'm not sure what does those register do, maybe Konrad
> > can provide some backgroud.
> 
> Those regs provide voting for refgen, because on those platforms DSI
> block doesn't have a hardware vote for refgen.

Hi Konrad, Dmitry

I tried to model the reference voltage as a fixed regulator but the fixed
regulator driver only supports a single vin-supply. However, the refgen
block requires two separate power supplies (1.2V and 0.9V LDOs).

Would it be appropriate to modify the qcom-refgen-regulator.c driver to
handle LDO voting for both the 1.2V and 0.9V supplies? In the regulator's
enable/disable callbacks, we could vote for and unvote these two LDOs
instead of performing register operations.

- Qiang Yu
> 
> > But on Glymur, we only need to vote LDOs. So
> > what if we use a fixed regulator in the device tree to represent refgen?
> > We could set refgen0p9 and refgen1p2 as its input supplies, then the PCIe
> > PHY would just need one refgen supply reference.
> > 
> > - Qiang Yu
> > > 
> > > 
> > > > and vdda-refgen1p2-supply properties to the PCIe PHY dt-bindings. Use
> > > > conditional schema to restrict these properties to only Glymur PCIe QMP
> > > > PHYs.
> > > 
> > > Best regards,
> > > Krzysztof
> > > 
> 
> -- 
> With best wishes
> Dmitry


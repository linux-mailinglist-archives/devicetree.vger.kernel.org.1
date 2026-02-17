Return-Path: <devicetree+bounces-266006-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uGmXALgflGl3AAIAu9opvQ
	(envelope-from <devicetree+bounces-266006-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 08:58:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ECD01497A5
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 08:58:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8EDAA30158BE
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 07:58:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A711E2D9EFF;
	Tue, 17 Feb 2026 07:58:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mlxZrvNX";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="CahO/gcG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FB67236A73
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 07:58:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771315100; cv=none; b=CnLoGDb26t1e0a9B+ZC8AD1vb3zEm+3lI3/4mmdmVHPuFySQrjaHj3NXICRywwCHDen495nqfo8DDn/Sz6T/EL3obRYazA+YnmaFuM6rFdQeRtKqn0olkWdiNPCEfmWsRj9l978uFDm7lK4yqCseX9hK10Ip59TFbmuE2tkgOpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771315100; c=relaxed/simple;
	bh=PP7Ry4xWPPTpiKYcF3WwBZsgd+2mhlHGV121XjD2Nbs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eRtu63nSgS5ZUep15TvvgG7DvvUNCEmxrjBqrjgxYvg/7wttGKGvVc64wHD2PVVVd7DBPO7zoJrbbn7KUkxUxgba61CvrJLxV4pLQIp4JkxBtEJAQA6BwvdNsyA3tR4fwzSIvVqUMcVo/KFWxSfYwzhnVUuamdwhSP3oGt7Jl7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mlxZrvNX; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=CahO/gcG; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61GH4MXB1545005
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 07:58:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=jMXGS3zNtFR/HePL+Mu2Beew
	1OruhKTFEqLUcfWgo0I=; b=mlxZrvNXXFvH+hDPgd3a/Gy5xthkqiQtzCo7qf6u
	aZ46lxAOW4Sojg0Y/qOUDPGiXXe4/+gmRjqP79iUJ+dn29/MWcnPWuc5h+I2popk
	7ll/Tj9x654uccLmBvrXXsExmUT+GpjMr31wsoMoQvlUepNzOpV8ehL5adZAPhty
	zeYZ5QTIBylif6T3uJWpqlydeo3rqoKZ0PaEPGVcPD6dtH6ZHyTtB0kEZ+2k9ZZC
	hfCT/WiqlHOmOUxU4vgXYpw/fKBKKk5wm9TSdNYGFImtj58VxKoxmVNu5fzO2Sdm
	bguog4JzA0WjDPs4g+v5ira+tg1vgWGcl1mxvG71AEgiAw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cc7ajse8m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 07:58:19 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c71655aa11so3271639685a.3
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 23:58:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771315098; x=1771919898; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=jMXGS3zNtFR/HePL+Mu2Beew1OruhKTFEqLUcfWgo0I=;
        b=CahO/gcGsU+hFTnKMGMnSIfffTEbRBJOQA4At+AwXUgkY5yignNu0Fbqsl0G1EGjCq
         g0hsYmYt+ZBhjq47fSTYMDeL1YQ9M8ChbvE/7tiygu15d2iExIR0m2A3CoUdk4q7QFSW
         ntdBrx2pacwQv3pqeDGXWgYTKxDTkPgagogXLvw7Su1JRjRIUhrtlkYp0IwRTOfuHXsQ
         CGoMfLkdscxgFxp7h9utqtE32i1G0PimYV/y/jlG4QSJiFomWW/ztftK5zo13RJXdoVH
         X5VNPxqgAcoLEzH2qSF09uN5EHK8mH3R3v6FAPgmfmiLqWGeivXaY7l/uJELqNXX/HeF
         Rs2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771315098; x=1771919898;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jMXGS3zNtFR/HePL+Mu2Beew1OruhKTFEqLUcfWgo0I=;
        b=lpHtcXk5Ooy7OYJMg7CnVlvS1LqYk8Otp/z9sLdc7VtF9GmDKMVXG/ewQGtbnCkf6T
         VrIa0eN6SigYeYzt/r5CYtNMHxoWMvG+lgGDjrbBkf60tYNN+03dclNDV90cPEXk2TMd
         MpNx3F1mdRdUO0JqCwWBZXiSHsBv4AyxWxjuoWJvpJuv+UDxseuvxWzxsYfbqAnvmYS/
         WTGWgIRqUTDlgnzaF/wMw+4PraFmw0W94eDn7I4noQ/EcF0cOG0Gov/Jqpvldfaw/RuL
         a4Yf4VAjl/kNGJaPqKthQfaGyOBU3Kyx/jSWoB1Em8jigjHfDY+jMqMjIGCLg/5q0w1q
         COyw==
X-Forwarded-Encrypted: i=1; AJvYcCXd7WUXJ5YkKr45+Mlkmc9TVj5F6hmz9H4FijiPp/qZrt4MhQtQ5jbrT5KznC0VVgPrilq7V9vQtRIh@vger.kernel.org
X-Gm-Message-State: AOJu0Yxk0TuGU9O/Y6cvj7NGaCN0kKk7ATA/93gQgB5LgX4Mxy/QaF+e
	imRR/NkYZ15hhjqmDSWLUPab5kPMTHJDnpxiI+jlMUlOJjuuySxQUfNacxE/LTYyIa+AO8JN+qy
	gneUVeKecZivEI5fL4IIKPXL5n/KO4JiAaxIvhnAiW6Cd8o1fcvsxQsyys0Oq0T0g
X-Gm-Gg: AZuq6aJ7VsGTYwz/SUD0pHvMAGB++Xa+AEeixLUw16znzDkWlLX6EpNB1X6fx+KbgRR
	68k5zEhHRrnQ8bZsXsaCF3QDPOfYSdaSStmPMHiaI4e4Ipupxw/lVvJMD+dvIzg1ygELnXRBMej
	BXQQBkKgEASif2RZk09Yp+LS+aw13Ly/K6ZI6vC5QcBbRsZIxkyYJXbqBB83QuEClJEOQmVRmea
	pINkx2/j1q6CNV3HNpTtBCxWv94xjRncGxiH7OGDpr0uVScaq9xMLOXtqMq0eNq+jhD7uDbFkGx
	SIcTeJVBBBOjj+tyDypscXMg9WWvoW9cPluENoH670PXDtV3SHyIF139hqYQOgomhvJKm1TyGKf
	7q9MG9gi5XqRg4sp/z6X4XxLJSioDfHWH5eF6
X-Received: by 2002:a05:620a:28d3:b0:8b2:f1cc:a14b with SMTP id af79cd13be357-8cb424a6736mr1563528585a.87.1771315097688;
        Mon, 16 Feb 2026 23:58:17 -0800 (PST)
X-Received: by 2002:a05:620a:28d3:b0:8b2:f1cc:a14b with SMTP id af79cd13be357-8cb424a6736mr1563526285a.87.1771315097153;
        Mon, 16 Feb 2026 23:58:17 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796ac800esm34625082f8f.27.2026.02.16.23.58.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 23:58:16 -0800 (PST)
Date: Tue, 17 Feb 2026 09:58:15 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Taniya Das <quic_tdas@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH v3 5/6] clk: qcom: Add support for Global clock
 controller on Eliza
Message-ID: <iepxnbk7h6yti7biozcgw4uq6l6fmtaxrgxbt2tmcjxf5x2lep@expe5bgt3oin>
References: <20260216-eliza-clocks-v3-0-8afc5a7e3a98@oss.qualcomm.com>
 <20260216-eliza-clocks-v3-5-8afc5a7e3a98@oss.qualcomm.com>
 <d6392cb9-9ab2-4743-a13f-7432ec03762c@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d6392cb9-9ab2-4743-a13f-7432ec03762c@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDA2NSBTYWx0ZWRfXz8KGc2WI/Q7u
 RLxq6NffIQmH9KF7WPaKGM2X3qelVuYQW3uF5VmRhLhEJOCiPmSjlYpTduO5AlsmyXW2SiRaAJs
 sMxmCxj8yLZE29aereBruJX8EfSo06bhTh6RmaM2+8Sg77wjpglMcvdzHHDtzMPanGMe7911bpB
 p05lRnnerh0fa2a/l6yH0aez1rqX2KdUEDC1gMw8e3psWasjajbkEq1w0PcNrqjial1Ng7l1gxf
 GidGyr+yHX9RG/EDm3JNL3uCcovug72qvWeViTSU10md7/VM4oyJxK7xJFeNw6DQN7LYHoQjZ9n
 NYA0yp1nbc18yru0PnY604cAL+YSJY8FDSLeYANbXUF4jD2kMm74RLtgrXq5cmcav7OMFjwDoXp
 K+lm6FzjhC1MNO8zE5p9uHCOhUXqWtG7oiQFVX0OKP8//o3mkkDzldU7mqaPPLtryhKmPK8n8ZT
 3dt544IA1vTRDI32AkA==
X-Proofpoint-ORIG-GUID: ET2Bd2Ej1bzSDFoA38G3gLraejaUJKRi
X-Authority-Analysis: v=2.4 cv=BryQAIX5 c=1 sm=1 tr=0 ts=69941f9b cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=H1luOFva-Z3cimKgmEAA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: ET2Bd2Ej1bzSDFoA38G3gLraejaUJKRi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 lowpriorityscore=0 suspectscore=0 phishscore=0
 clxscore=1015 adultscore=0 bulkscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170065
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266006-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 6ECD01497A5
X-Rspamd-Action: no action

On 26-02-16 16:38:15, Konrad Dybcio wrote:
> On 2/16/26 2:43 PM, Abel Vesa wrote:
> > From: Taniya Das <taniya.das@oss.qualcomm.com>
> > 
> > Add support for Global clock controller for Eliza Qualcomm SoC.
> > 
> > Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> > ---
> 
> [...]
> 
> 
> > +static struct clk_regmap_mux gcc_pcie_0_pipe_clk_src = {
> 
> This and a number of others should be struct clk_regmap_phy_mux instead,
> cross-check with kaanapali and remember to drop the then-unused parentmaps

Oups, missed this in v4. Will fix in v5.

> 
> [...]
> 
> > +	[GCC_CAMERA_HF_CLK_EN_SLP_STG] = { 0x26018, 1 },
> > +	[GCC_CAMERA_SF_CLK_EN_SLP_STG] = { 0x26028, 1 },
> > +	[GCC_CAMERA_HF_CLK_EN_SEL_SLP_STG] = { 0x26018, 2 },
> > +	[GCC_CAMERA_SF_CLK_EN_SEL_SLP_STG] = { 0x26028, 2 },
> 
> So SEL_SLP_STG=0x1 allows setting SLP_STG to =0x1 to assert the ARES,
> otherwise if SEL_SLP_STG=0x0, it's controlled by the HW state machine
> 
> I don't think modelling the prior one as a reset is valid, but I don't
> know what considerations we need to take wrt dis/allowing hw control
> here and what the consumer expectations are.
> 
> Taniya, would you know?
> 
> Konrad


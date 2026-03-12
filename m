Return-Path: <devicetree+bounces-274530-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0FgYGbyismkOOQAAu9opvQ
	(envelope-from <devicetree+bounces-274530-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 12:25:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E09DD270DF4
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 12:25:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C5BA231070D4
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 11:24:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EB543B7769;
	Thu, 12 Mar 2026 11:24:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="S5jOdZjP";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="eewqqH1y"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC8273B6C0B
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 11:23:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773314642; cv=none; b=CD0DHwEAZZ9Jhoo5+popWISRExQnST8VJiJ9JU+I1dPg0zAvauK5zVlFh0bQCyOmKAs5rJdX06YMxdFZPwk783REScOzqujN9LE/wJzPBL2xU5D2ZL4pVOaAd4xjgNazPPqgZ7AKh/GOWNsLMU5D1ft/7IPSAMa9h9gMP4lKgTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773314642; c=relaxed/simple;
	bh=8WtMuG9HhwlWuEd7m6uU9JzaJCnso9USDOfysbX6NT4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mRSNxILHfi5+JF+NOYpeElLrZIUEHCEG9uORndqMO5+a0DoXFGbXdpd3ec8z3fbPg6F93rWT+MZy+A6bxj6AmXSw7OXBXXeQuJGi3vFyPgnFO6A8QvsWjgawXTEZ1PJ2AT6X90tUbWYQkumlXE2lVEwjtmHfbhbh8mC/t49LM1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=S5jOdZjP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=eewqqH1y; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62C9xuvd263554
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 11:23:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=xDZsmUgPgmCRkU6O7+g5TUfj
	tzfRO7LzoRuw6/d7OPU=; b=S5jOdZjPauM9z8SREhIlkxPD8vsbwC9qTQ1eGFyn
	XPaAQ/NvBb2SbVnylA+7MxdN1tpxpYf8Py64199eNt+ReSK2xRV9ihKN1x5u+iKy
	Ziyw/Ak/bcUyFglhuA4+VaHw2qZ9oDtkLS1cTw0qtq+mGYuGerOCXbqPSpQqd/8H
	RPndctAX+FWI/2hgwFChs3VYtJEicVtHCd8JeutwczrezqJWLEev1FhQVccAgNEC
	sAJ/Y3urduzuJeSXyLcsKP5kAhQAwZZRXKjRO01fa0dMljeNLe2LRWm7suWtScMw
	mreq897WAm0ibIdySI4cnvPn/ZDaDhDRbmI0RgboraV5GQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh4yhvh4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 11:23:58 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cd773dd39bso700804185a.2
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 04:23:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773314638; x=1773919438; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xDZsmUgPgmCRkU6O7+g5TUfjtzfRO7LzoRuw6/d7OPU=;
        b=eewqqH1ysT4cZr8JS6H4M4lsQbSRaPN561ozWHx4WOr5gqc4dgHbWElbEAGPf00Con
         SpcUqIanb3ms/OwSlKBVqPX//7yAHs5b8TN3FJytA5ALATeqMK9gP3SitX15tJ9DPzcX
         Mc8EyiZT6MBKcTbpaL1ag8ps3v+0+n3CbYNPzy8mTNbIvfBKRle99u/Tj2xlz9etTRmd
         AEIsGbdJA0cZIEFXTEXYbqyx6bXq9WwwO4RJCqN5rQpqhaXhN1heit7IyIo3PyMVwqng
         vXan+gJsXc8LypHtyP+XnO9oPURani1XCAdBEli1B9dyLevLo+hquonxm8jQN0uzENpD
         FgEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773314638; x=1773919438;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xDZsmUgPgmCRkU6O7+g5TUfjtzfRO7LzoRuw6/d7OPU=;
        b=Sc+s5RtZWRsEoLJJd2TBZOPxVYiUbOQgCSMNJC1ZelvM7TqyQbBF4yGKawCEqvP15d
         eNeMHvIRLV+qR8478JGecy9dA8FiQNpUnZfI5RI9wRgnGALwmhSJgXMWz25tB/5eD5Qk
         wi8T8Jc+FQCvucpT5wGzSuSh7PGyxovF0alDIwIaQHskT24L7wmVLxVzn5n5pT6abP8W
         Go5wU8Ph8EDF06LYxaVitpsqbiK8BBNThmkuRBVbG9T6tYD2JETCemco2vgb61bt+D8M
         rezYBpdSUVjCP2Rr8xLRiDyRzuuLwgVXAA163PAIQOFScGXX20gXxPzpXXgU+bziChnt
         BnaQ==
X-Forwarded-Encrypted: i=1; AJvYcCUypEAI4L0BaC6ldq4wJbrgYA3XntQaeYrX4VBs6MODQBv4s34bSuksFsswp88gau2aEyBeMsQcz7CF@vger.kernel.org
X-Gm-Message-State: AOJu0Yxz4qbHi4lhmwLzNqJ5o9FYeuxdrkg1X90wrWB7aWGn8o2EYxaV
	jEVPqowWRTdeTHAREcylI9g+3w9rorGJnOe4PRh2y122BxQLoEyuVPl8RoAM0EqIn15NXQsiHOP
	5QTO0n3/SxVofBnQpQ9casDpxm2VPRZDs5SQ4S2SVQRhc/rlMFNdA98KAwNsXyEmS
X-Gm-Gg: ATEYQzxbHoC+PqWhXcqmzCqVVdIg+GLeLlnCjFVtxbzNMSpVnKzzLY9KLRWjgEEEkTX
	yNsg2qUkMSGzWF/aRcexoG4m/EfzbJlXKnQ5UNmGXl5lCp2grvVfem6xbK1W9W6He+MR/vVW3Il
	iWyYlQSYmg5PM474D81CKful1RZIRdiQBZgsABGDvoKRidwohHs8/JE7tbEuDczrhmBpcG4G7Bh
	kVhjizmLp5oXkbJ55jgsBX71jWEWFbeP8mSJoCTrxBiERzar8fgHBzG56RojHs0qgUNq0Ex/Snl
	LnLqyT3PNQzsd30ruTQjBqjFVet3K/cFlYsRvKjgR4bgE5LhC0/KZSZOHwyoBdh+ISQW4dl844+
	jhsKNp2Q//CMuqMINpfvzh2g3hMMjwFSYLg==
X-Received: by 2002:a05:620a:487:b0:8cd:a76d:630a with SMTP id af79cd13be357-8cda76d66a5mr426250185a.42.1773314638108;
        Thu, 12 Mar 2026 04:23:58 -0700 (PDT)
X-Received: by 2002:a05:620a:487:b0:8cd:a76d:630a with SMTP id af79cd13be357-8cda76d66a5mr426246985a.42.1773314637522;
        Thu, 12 Mar 2026 04:23:57 -0700 (PDT)
Received: from oss.qualcomm.com ([82.79.95.133])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48541b6f6b7sm279697265e9.9.2026.03.12.04.23.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 04:23:52 -0700 (PDT)
Date: Thu, 12 Mar 2026 13:23:44 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Taniya Das <quic_tdas@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH RESEND v6 5/6] clk: qcom: Add support for Global clock
 controller on Eliza
Message-ID: <y3h6ufq53g2ml5xjupd4q3t6btkw4jab6wao4pnhrocjr35rfo@rdzi2x3p2h44>
References: <20260311-eliza-clocks-v6-0-453c4cf657a2@oss.qualcomm.com>
 <20260311-eliza-clocks-v6-5-453c4cf657a2@oss.qualcomm.com>
 <abHZ8Y3NmsNj3IXR@baldur>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <abHZ8Y3NmsNj3IXR@baldur>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEyMDA4OSBTYWx0ZWRfX+L5K3S5Eq2YJ
 y3bJ2/PCmwtBnpjyKB51hiUlEoYc41zND+/adxKVvin7o0UtutSxl+0vfvC5iYx8sIqYiqmHWSQ
 rzym5DvPm6FAYJFPUyXHBiL24NMjcXGTJbAJ2BdMX76f07gLZ7QlNJouXXfGiN2ByWAXrPHWqfj
 Flkqh7rwAPt23DDLOmtoFdctPKlqjUQb3UlNVVxlj4iJlW2lUtJsPkdnoAQ/asrRrLoX8gYybNT
 Nr1PKXUghwG5WBOKSwWLyYHNzCYM2DIYLqsVNzKgGaAfNLO1sFd12SqyVqWnWrFL770rupT04lR
 8qJOMr+nTPMmf7VZDQt1WpeeIvx7Sr0tsuBMLsjeQ4YsAhyY3MI62o1LlyortFtlV6v197a6vfz
 NIw1sekfUEOobCfdDO8IPUf+kjyKK5KPr+8RP4Yo/04DGFOva0ywDJQXklehTvw+makqL9q3/aP
 6kdyVcDNFMFpQ1LneBw==
X-Proofpoint-ORIG-GUID: sgHBIbEpd8YXJ2V99taYCavcM-O3VTb9
X-Authority-Analysis: v=2.4 cv=C+7kCAP+ c=1 sm=1 tr=0 ts=69b2a24e cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=iKs3dpp2RB4k51ZqCjcyjQ==:17
 a=kj9zAlcOel0A:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=jjayl0T0PnkqsG75a-cA:9 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: sgHBIbEpd8YXJ2V99taYCavcM-O3VTb9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 phishscore=0 adultscore=0 suspectscore=0
 bulkscore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603120089
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274530-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E09DD270DF4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 26-03-11 16:11:19, Bjorn Andersson wrote:
> On Wed, Mar 11, 2026 at 04:46:35PM +0200, Abel Vesa wrote:
> > diff --git a/drivers/clk/qcom/gcc-eliza.c b/drivers/clk/qcom/gcc-eliza.c
> [..]
> > +static const struct qcom_cc_desc gcc_eliza_desc = {
> > +	.config = &gcc_eliza_regmap_config,
> > +	.clks = gcc_eliza_clocks,
> > +	.num_clks = ARRAY_SIZE(gcc_eliza_clocks),
> > +	.resets = gcc_eliza_resets,
> > +	.num_resets = ARRAY_SIZE(gcc_eliza_resets),
> > +	.gdscs = gcc_eliza_gdscs,
> > +	.num_gdscs = ARRAY_SIZE(gcc_eliza_gdscs),
> > +	.driver_data = &gcc_eliza_driver_data,
> 
> Don't we want a use_rpm here?
> 
> I merged this for now, please send an incremental patch, and please fix
> the tool that is used to generate these patches.

Sure. Will do.

Thanks.


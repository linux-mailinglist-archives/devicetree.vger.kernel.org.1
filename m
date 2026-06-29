Return-Path: <devicetree+bounces-316634-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +auOG0H/QWrjyAkAu9opvQ
	(envelope-from <devicetree+bounces-316634-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 07:14:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 11D0D6D5FB2
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 07:14:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=IlKRsHAc;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=crSxji6y;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316634-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316634-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 91CE8300C584
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 05:14:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CBC7351C30;
	Mon, 29 Jun 2026 05:14:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B044E338593
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 05:14:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782710077; cv=none; b=m9fzKjFI968kExDJ3Rs/RzirNJyAFxFldjOgCiwDXn3qv+Ob6vSa1o/6d9QMy5ukT4i/gqQ5cvCEgivub6w55A0Fvki5A/VBJ0dJyt6sHMwnEopu9iWLwfunZenR5M3GMkA37FxeqwSrxyM1lrc2f7FiyNEjHHzjvmjucNpX3R4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782710077; c=relaxed/simple;
	bh=+tn+1o6uChGGmy9MifJpt9Dl3QZFfgOQz8utCxMmmsU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZwGMJVCydnsGMR032fOf9FYXOI41hUkw/J0jGn8pJp5/6Emc6qoHpyQKPRlgiZzKNCA30iJKpBm6KCEYxUjxeeXsuww1i/ZGaihJB4MuDIiKnLHbWTaus74JpHQaSQgYOJRjakdRd62j1wJIfp0IYbFxKiHxtl5HwhPg148zaP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IlKRsHAc; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=crSxji6y; arc=none smtp.client-ip=205.220.180.131
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65T4NIqG1780948
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 05:14:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=KGKgPSlh8J3sY+dZLERPmW5B
	9cbOydBAljh4L69/H4Q=; b=IlKRsHAchYYvo2ZAuVBGHX4cm6fgx04dp2MsbjXn
	SfZyv+Rv3me8gl9wkDL1SyrIRTFG3URJ2j0GMku6djgxzb2iw8wU0TbIulHLpwAs
	YqyqruqFx+Dn4MgGCnTdQKnsSLiJMiaND5qm78t11idigFgq+UCyogVq2xYQbfpC
	B6c3ITb5oFqay0+m+ER4oDDzFOQZGD2uIrBkWIJyvT2YFBVH91RR/NagxikWbE2N
	BXU5aN4uWCMcx3EJ9cOkTVy66fbulTF0e35+0+9mzsbHfJhSc/8x1/zwbMExnc+h
	v+iP137R683Izy1v1ueyJj0TU8txB5E0uImrJvMCk8uGgQ==
Received: from mail-dl1-f71.google.com (mail-dl1-f71.google.com [74.125.82.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f26u74mag-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 05:14:35 +0000 (GMT)
Received: by mail-dl1-f71.google.com with SMTP id a92af1059eb24-139871a52c2so4119055c88.1
        for <devicetree@vger.kernel.org>; Sun, 28 Jun 2026 22:14:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782710075; x=1783314875; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=KGKgPSlh8J3sY+dZLERPmW5B9cbOydBAljh4L69/H4Q=;
        b=crSxji6yB0jbsvFK+qmhEJEraY1kddmsKRltwQO3YpyWYbw6R0jWgb/Lvj97RfwVZw
         3hTfMA0AjF4Wtr1VdMC0NiMNm73CARrcbTTw6GLwvpSAL5lnSgn7fYZ2PPyOcSt7OhMD
         4qxqkFsu3aOJ3e6ItJClJXPsHkOObK7OeS4w0zemUlzATw5D+jxOJKtdTGH3KuAh5aQ/
         hz1Ya92uV0FSzqMzMbMBCJdFNmMiQaTdqJYqaEwoU1Yhxl1UYXP+F4ShiQUKGbbTwwMv
         7drVmSHzsI2vsV3+ctMG9E3p4sMnITL0BhMM8TnNMSgQBr7ycgtVJcXNeHvfyF6RYDyE
         SbeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782710075; x=1783314875;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KGKgPSlh8J3sY+dZLERPmW5B9cbOydBAljh4L69/H4Q=;
        b=EArSX1YA1oHku3ZCcf/FmSlVlz6kQcdAeLjHc8ugvxE5EsOt1D0JSkEYyStzaM8Dy3
         V/leInn2s4fTUbtHw65AS0ZLKthk0vrSfrfS6f59s7UYT4jCbomqxD42BUFBWuIrRumg
         XRMk1HG1zRupEbaSK9DSyxNF6dztSNKpxcMktyZYpl354h91jk5emxkRSJbjnNyYw9lp
         6wEAwHuiojK+yUw0fCK+KyGLLEcsdoXTouLmSHvXqmN4Lrlz4iMUp7KjHFpe5XcDncgV
         slw0B7wq5FrUffTxbjg9uf5OEehBTM69qnVn0ovkRkGcm813WJp6nmaoAEJzs0tqac01
         +SDw==
X-Forwarded-Encrypted: i=1; AFNElJ9HpAMzc8b7/Eg8nVljy4X7kg2ETuDkx7ZLMGlJ3qUUB5ykinrkma3NZf4VqUrL22NPKcRb+nBD8SRi@vger.kernel.org
X-Gm-Message-State: AOJu0YyQ+hu7IeYqdNaKReXTNAwQZZVsjPzzRWvp4ir2uJ39hjfRl/EG
	z045E0sECuu95o6IQj7+QPPX0oenj5xbqFRNx1385okJvTSi3NXvVYp2WAHzwgMniPaKI2IEr43
	t84D+9oQ/koUKu9jmrexu/RsWdaz8526lGN/kZbE4iDvfzPgDWH6ExIWXz8rZThAb
X-Gm-Gg: AfdE7cnyW+AOlX34mziu3e4Ew/ndlPCpQk+g7Xo8EOTMGW9vuvDfaccxvt7px4MKm1s
	TJySkbxR+ooLvluqyPzIWwhK+i/8hVrB56mPMommonsHDcx9rrNiqlXOTs5cgdpVEa9ftZF/1J9
	ADEmAg24iEP4yuHhLd7EBHCP1xWSk+PeVm9X/4s+YpRVhY/keLxI2Kidtk4ngU5yhxu5ZQ4V3lZ
	Vy02S/VBGKgYeyvgCNCyxc4HMGIXPtgLwgGUh1O/mFrREvnuwASWSoIucx4znb7swbygoHBwpgQ
	SfxGqJayOfapO8LmCZlHjIWV6fUXXpxwdouCtT/dMtGubOJmMxHBUTOMIzMwhEHflPw0i9xJSmf
	E/TO698wIxewm6mdT8AaYyEYQek3/omZtdfx2+5MLaveyyk7SQAN+eB5OrQ==
X-Received: by 2002:a05:7022:690:b0:138:4e1:4701 with SMTP id a92af1059eb24-139db9e612dmr12798843c88.7.1782710074563;
        Sun, 28 Jun 2026 22:14:34 -0700 (PDT)
X-Received: by 2002:a05:7022:690:b0:138:4e1:4701 with SMTP id a92af1059eb24-139db9e612dmr12798831c88.7.1782710074074;
        Sun, 28 Jun 2026 22:14:34 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-139d8f318f3sm45044012c88.2.2026.06.28.22.14.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jun 2026 22:14:33 -0700 (PDT)
Date: Sun, 28 Jun 2026 22:14:31 -0700
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC v4 1/9] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Add glymur-qmp-gen5x8-pcie-phy compatible
Message-ID: <akH/N/ZwnSD5BkIj@hu-qianyu-lv.qualcomm.com>
References: <20260518-link_mode_0519-v4-0-269cd73cc5d1@oss.qualcomm.com>
 <20260518-link_mode_0519-v4-1-269cd73cc5d1@oss.qualcomm.com>
 <5dffdbe0-cbb9-429e-ba15-0afdf6f20fba@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5dffdbe0-cbb9-429e-ba15-0afdf6f20fba@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjI5MDA0MiBTYWx0ZWRfX2+dO4crMk5Yi
 h/igzxEDbyQbr+7zIHEwLkmJd4noKoTHpI3TqpolLnZfvRSdPcFsFmRVzWRVXxND8fNxF1Mv1/B
 QW9S949uoPT+yqMg3HppaYgqycCkosU=
X-Authority-Analysis: v=2.4 cv=ftnsol4f c=1 sm=1 tr=0 ts=6a41ff3b cx=c_pps
 a=JYo30EpNSr/tUYqK9jHPoA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=-NWG6JK0s8FJMDO2LyAA:9 a=CjuIK1q_8ugA:10
 a=Fk4IpSoW4aLDllm1B1p-:22
X-Proofpoint-GUID: HSuvxKsj1o3BljYHiAhQrbtu4N5NZJUM
X-Proofpoint-ORIG-GUID: HSuvxKsj1o3BljYHiAhQrbtu4N5NZJUM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjI5MDA0MiBTYWx0ZWRfXxL8Si6TAOJUI
 dYXiQGpDQwtdK7irtWHukCc71ut4gPK9YUzvHATyw1M+UUuLxxKC7dUqsyoUxoUpStaDAkcCetN
 nG68PePmVm9tSdmbI/XbX6mh8mNEh1kP2OvFmIuGJ6aC2C3Q5rGRQME21IY4VdpEeIESr5FDODl
 jRJmaSTqLQC/C/sETsdXTGULpezSPcdKREfviRTqkaI0zQD480bHED5BBuW9Px/CsNMkgsPlD4F
 DmHkICvXO7HBj3nexoKvAmyEzxFcS0tz6z6cmlJF6x9qihHVnpvxkzqUgz6A3gbVlgGdVdFwwJ8
 J4jWuAjYkW8tjbdxA3JCh42OxpcA6EX2WL5JtJWlP05REqOLL7p+35Zx4ssBdb189yiLMDVU+lF
 P6sLzBUfb61afbZKMTJTXk/Eiq2Sa2RTGSpdp3ppm9BoBNu4kAHpbtrry31f/fGTVPSJIAVVx8Q
 xdihWHMllquhs0Uhrng==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-29_01,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 suspectscore=0 lowpriorityscore=0 impostorscore=0
 priorityscore=1501 adultscore=0 bulkscore=0 clxscore=1015 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606290042
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-316634-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,hu-qianyu-lv.qualcomm.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email];
	FORGED_SENDER(0.00)[qiang.yu@oss.qualcomm.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_RECIPIENTS(0.00)[m:konrad.dybcio@oss.qualcomm.com,m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:p.zabel@pengutronix.de,m:andersson@kernel.org,m:konradybcio@kernel.org,m:linux-arm-msm@vger.kernel.org,m:linux-phy@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[qiang.yu@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 11D0D6D5FB2

On Tue, Jun 16, 2026 at 04:03:39PM +0200, Konrad Dybcio wrote:
> On 5/19/26 7:47 AM, Qiang Yu wrote:
> > The Glymur SoC uses a single PCIe Gen5 PHY hardware block for the
> > PCIe3a/PCIe3b controllers. This block supports two link modes:
> > 
> > 1. x4+x4: two 4-lane PHY instances are exposed
> > 2. x8: one 8-lane PHY instance is exposed
> > 
> > Add qcom,glymur-qmp-gen5x8-pcie-phy as a multi-mode PHY compatible and
> > document the new link-mode property, which selects the active link mode
> > via a TCSR syscon register.
> > 
> > Document the required clocks, resets, and power-domains for both PHY
> > instances active in x8 mode. Use #phy-cells = <1> for this compatible,
> > where the cell value is the PHY index within the active link mode.
> > 
> > Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> > ---
> 
> [...]
> 
> > @@ -68,20 +69,29 @@ properties:
> >        - const: ref
> >        - enum: [rchng, refgen]
> >        - const: pipe
> > -      - const: pipediv2
> > +      - enum: [pipediv2, phy_b_aux]
> 
> I'm surprised to learn 3A doesnm'doesn't have a PIPE_DIV2 clk.. it does have
> a non-div2 one though.
> 
> Seems like it's specifically not the case on Hamoa and Makena, so perhaps
> it's better for maintainability if the Glymur list was separate
>
Do you mean splitting Glymur out into a separate YAML file for the PCIe3
PHY? I'll add a new file if that's preferred and Krzysztof is on board.

- Qiang Yu


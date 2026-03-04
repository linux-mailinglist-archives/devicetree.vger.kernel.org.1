Return-Path: <devicetree+bounces-270841-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cBMKNoijp2nTiwAAu9opvQ
	(envelope-from <devicetree+bounces-270841-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 04:14:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 45A3C1FA3CE
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 04:14:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7C12A305560A
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 03:14:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 908EC364EBC;
	Wed,  4 Mar 2026 03:14:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IVNPqfMn";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fHRRuljC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBF2A282F19
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 03:14:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772594043; cv=none; b=rawMqfdRR1CipsaPrbKVfC4gjLRS0A8M6soW0IITylZ37HP4J3PIJ9ccshE4MLF/wrM5WxJTY+snIzrtjkWVxScgnqxtpTAGaOBT2MVKOcW0I61LzDN4UUSbyX+mTzEVy1B2h33j9t5LI/GqbEtG26F5crEJWJ6jjCWs2h8Jayg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772594043; c=relaxed/simple;
	bh=m8rCNbFqmH8MTRkrFm9c5SOXX4Q6z16k3Vs5rbWhazA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MHPB1+JKrkx/fJw5e3bBme/lLIy2UbE/1G8jzF9AobrtJV3C7UW5RsELJzIw7qKxDJYQPaCCTk/FYgzksCbc2BwJiUgPn+OtwldhiRKiwBgveNPaM7Z+vgtu8qnFlS5gNmtquzDgv09T1/uBB8NK0RmKyofzwwf1FwleuqlZuro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IVNPqfMn; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fHRRuljC; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6242cKsU1911631
	for <devicetree@vger.kernel.org>; Wed, 4 Mar 2026 03:13:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Ylx4bk2U8renImfPHcxwFluB
	8AuCaLuGmY/W9MGsXZ0=; b=IVNPqfMn0BLHazvitjcNognpg7+tU6ppvhRmUNHE
	Gig3w9/nHNsVXZ6mdyRQk7phePlJwhM7pw8MgPW/2j/WvDxqkQPhnQCwXz2VhKFL
	32/9s/I5qYtHfEKTYrYHIYGYgXF2RSBnaDiZUeBsyP+SMYZ9QmRPntZPqXMth+/a
	u3VSw2fuFpicDoLE0nQv2z7xXzlxcjfefHQMrC1Kg/qPc9/RQFn1Vy7VDJ8AmHcu
	11tO4u6gzyzvzme+6yyM9bqkbdUtcEDwsS1d4n7TCV070nIhTlWJVcNMOrGrQpao
	edK4g/InN0LEIflzxaqqohjWSLSeIgecvFjU8PTNVg0kCQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cpc4mr446-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 03:13:59 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c881d0c617so3886568885a.1
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 19:13:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772594039; x=1773198839; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Ylx4bk2U8renImfPHcxwFluB8AuCaLuGmY/W9MGsXZ0=;
        b=fHRRuljCI71NYQxIvEeeEvr5oD7MX5/WRgYuOT+HjPiKaZMdO38Mt+hVyTxCIjkHZD
         MAmfaRyS3FIAYzBy54Bz/yNRBv7LLMNWIz+WWknDbC8/XJswksRP+XjKO/TL2yACc7US
         lCNKRUqyTrIBCt1bo8/F+kzUUEEu6TRahu8eXlNwtUAT0LjkdK1AeDdL9E5SRLUkM1bt
         YG3I3TDxlzgfdhFM1CPVaCppwE9UxdsNHGQsT8DvIIySSBwd2Kr3w0fNOJ8JOL429T0j
         uE3YVb+b5Stx+CwHcYGEkENXVR25VCauBerpatKj6HEutyZDHqWdnDuaH4dGWZSOvE7/
         +e7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772594039; x=1773198839;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ylx4bk2U8renImfPHcxwFluB8AuCaLuGmY/W9MGsXZ0=;
        b=oRLIHaixnQlam89DwWWV6rmwBLqt5gdU0kRI4KckP/AG09gvkC4Wro4ELbuEjaNSAx
         6GXpgQjhdt+h6hN5DhNCNpaTkpEeBNjgrRYjLvZ9oivycs2mFaY8x3q3J+884R7nPf/d
         VKf/UVqpqxnuS1jfkZIOM1qobwgDgM1ZrL1OPoBbDk16RJndZiZ3/cYqeoiukIK90fz0
         0MxgmaK22ey56oJFD4NbPF2dCffY4MJhecFNzPhGTknKN7Y1P+1rtwROHXg2jXz3DcDc
         KdLtVUkTRJVend5D2u9sLV4jiTxjRj4DokN5KGUh1enlN7FwvCwdLQIvwymM+rddp0iH
         4t6A==
X-Forwarded-Encrypted: i=1; AJvYcCXYzxWGFPyxleB7WXCgEhVi+yrZHdbES25faQTDzS6zBpn4SACUqIbjByFQJBk8ztx7qrMhQAGniqrm@vger.kernel.org
X-Gm-Message-State: AOJu0YybMWLsiwxZa1YgcTZhw50mNPSh7AaH5NZroH9Dy1sm/4svyygz
	BhNpSyLXsdUPHYiaTvW3K9gX2Gl5TRAaSZirlotICgFkmZp6URcfursqJZJQX7ENt5QkhCxxr0R
	4SALaI7HUnCMytg7UR3092lrKWo8fw8zQZ425izSskx/eChvSLuVvRlOl4iYzaf2p
X-Gm-Gg: ATEYQzyT075AuV+O0GoGP2VLu4cymGfe2sm2/WxrlYs6GZ/hw9xASsDWVzfepgqHjrt
	n4y7wTeNOUnmjh0A+6917Rqj8Nf//ZX6zj+4JJKv1yWJmByX35NSuOragNiU/1T7jm0S+JRh2TD
	+kxya2vNhx47u7JjdEbWtczHVwsIs4OrZV1cW+bX+KxCO0lPSrTvEk00YZnX1RNbbv2/thw1NKh
	QJcH1HevgT5mFk4c7zwq8fBYARdIiIPSk4TrbaEDbWjESIhHmTMeDYDIOzZqM0617lgwjU/taqq
	3uXpIktBNBlWp6LxU++oqHB3CCxay5y/xiUx9wgO/Md131gmP2oB0gliBDR3X1KL4KQ0Ks20TBr
	oAKA3pz091xnyqFFPvBOWbWg7DG5lv7uY//tTuF0qe3H909AUpJQOTlFuHcmyZPNrzQzC4cKeLl
	cUMWKbQOydK9bsdwfzg9qjaulHWq9EkAdy7PM=
X-Received: by 2002:a05:620a:288a:b0:8c6:a539:55d7 with SMTP id af79cd13be357-8cd5afa9fcfmr80525285a.55.1772594039186;
        Tue, 03 Mar 2026 19:13:59 -0800 (PST)
X-Received: by 2002:a05:620a:288a:b0:8c6:a539:55d7 with SMTP id af79cd13be357-8cd5afa9fcfmr80522485a.55.1772594038665;
        Tue, 03 Mar 2026 19:13:58 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a123573dbdsm962207e87.66.2026.03.03.19.13.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 19:13:57 -0800 (PST)
Date: Wed, 4 Mar 2026 05:13:55 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abelvesa@kernel.org>
Subject: Re: [PATCH RFT v3 1/2] arm64: dts: qcom: glymur: Describe display
 related nodes
Message-ID: <l2imw76ihkmlzljk5lf3vhwjp7c3tfcprppklfnm2xpilinsge@elu2p6gy6ow5>
References: <20260303-dts-qcom-glymur-crd-add-edp-v3-0-4d1ffcb1d9f6@oss.qualcomm.com>
 <20260303-dts-qcom-glymur-crd-add-edp-v3-1-4d1ffcb1d9f6@oss.qualcomm.com>
 <cc7n4ubnuaboej5uazgf3h4ojzyajietjgbahmsuodoses5vpm@fgq2kst6ijpm>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cc7n4ubnuaboej5uazgf3h4ojzyajietjgbahmsuodoses5vpm@fgq2kst6ijpm>
X-Proofpoint-ORIG-GUID: Z31c8YCzDuqGApX8UA1NqvIz0nKgp03Z
X-Proofpoint-GUID: Z31c8YCzDuqGApX8UA1NqvIz0nKgp03Z
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDAyNSBTYWx0ZWRfX1hHOlMK3xjwS
 XXy10HJ4uySjPFB2NnEdE5BIAXigGn5ah5frt7E9UMW6KNVCJba1M2uA9XHv70nTMSaHD5hidFG
 8ncCCj8Iw2oQtYOVtNqp5U+y7jPVpEWwcbuxpLE/0dqrhq5x553BBayBSmxpehB7xWjb5vH2KCr
 myHQaat+4GF3jKb+94LlumLV4/Pu8zA06L3zPPr4z0z9Mho22GN9gKvbmo7oVD74uGiu230lNRz
 si0iMb1J2QPYr3fkLYpoULFW+QmEjnCzql4P1QQm13zW27PglwnAd4sSB9PwXoehqejLm27mJgF
 NAGdCDAoVE6Xh+HeSOO7gB3HBAQhL7xCuToSFPlhIfFiehB1zrdQA2/Rs1h6/jpuH+cnlLaaCAC
 d4BlGlMbtf94QNGnZD5vvI2CaMiwVksL4L31a5rJXdSQ3rpCDf+l1EovWTK5uyqPXt7/otcE4d7
 l/uBB6mfFlPaubJVxMQ==
X-Authority-Analysis: v=2.4 cv=C67kCAP+ c=1 sm=1 tr=0 ts=69a7a377 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=yHvj2c9JjWl19cfzqNcA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_01,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 phishscore=0 malwarescore=0 bulkscore=0
 priorityscore=1501 spamscore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603040025
X-Rspamd-Queue-Id: 45A3C1FA3CE
X-Rspamd-Server: lfdr
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
	TAGGED_FROM(0.00)[bounces-270841-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email,linaro.org:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Wed, Mar 04, 2026 at 05:05:58AM +0200, Dmitry Baryshkov wrote:
> On Tue, Mar 03, 2026 at 12:44:08PM +0200, Abel Vesa wrote:
> > From: Abel Vesa <abel.vesa@linaro.org>
> > 
> > The MDSS (Mobile Display SubSystem) on Glymur comes with 4 DisplayPort
> > controllers. Describe them along with display controller and the eDP
> > PHY. Then, attach the combo PHYs link and vco_div clocks to the Display
> > clock controller and link up the PHYs and DP endpoints in the graph.
> > 
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> > ---
> >  arch/arm64/boot/dts/qcom/glymur.dtsi | 471 ++++++++++++++++++++++++++++++++++-
> >  1 file changed, 463 insertions(+), 8 deletions(-)
> > 
> > +				mdss_dp0_opp_table: opp-table {
> > +					compatible = "operating-points-v2";
> > +
> > +					opp-192000000 {
> 
> This should be 160000000, otherwise RBR mode will select the wrong clock
> rate.

Excuse me, it should be opp-162000000.

> 
> > +						opp-hz = /bits/ 64 <192000000>;
> > +						required-opps = <&rpmhpd_opp_low_svs_d1>;
> > +					};
> > +

-- 
With best wishes
Dmitry


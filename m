Return-Path: <devicetree+bounces-264550-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0LF2NKWei2noXAAAu9opvQ
	(envelope-from <devicetree+bounces-264550-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 22:09:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 713BF11F4C9
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 22:09:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7D17B3053B31
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 21:08:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15D3E3382E0;
	Tue, 10 Feb 2026 21:08:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PX/OHgpx";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aarY38j7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECAC52D8DAF
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 21:08:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770757735; cv=none; b=fdeqvsm1O+5/hyrKDmxHarm/uxhd9h2bW9eiC3j2kR9vtXZs+X3hHBOAIY6uI3fdo12EyLU+lPBurziBO4hupFClm94s8cTuXmZzB/Sm5F+O9TsiW/eMOf5qCmGOKVgq1epXsiR0eIvVkhF7hmKZhQQaEVA4GUKYy3+tSP5UAPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770757735; c=relaxed/simple;
	bh=J5gXEvNshvOdz1lVll378Qv+qj9ugwoJaF3SaEKZ0mA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=G12U5fsjvPb33wtC1gNeduij0cGvpnlSuFnftZrZwXZiH8NuVS6eXBvlOBfrsJc0rTH07MEXOqUvJWWhmPDp3aOzaOAsNjJzCy+OJyvANRSXgMGKaRxeFKWYSeCoG//7G51sAa3mmNIjEEMPzbAjTYdvWiOoEou/oH3SnVkKah8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PX/OHgpx; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aarY38j7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61AHStCG3005021
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 21:08:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hPJw7Bj7OiIbCHA02xnXWxt1i38ptWuysLi3FBija2Y=; b=PX/OHgpxAyeZb4cH
	1MG7XQHLq+9L9h1VSfOMCVo/TyhtcrQNk/Wzl6IEIbEebL8haR7/tT+6N0Q+hCDz
	8qkVHxuWeQtyGm5laTczy3xm6pswrTcxY54qPRsIvPqM2MEvheHXvt+smYvgRT15
	VxjlIhR9sjzdSDbD5IiUVhv9RL9bqF0rShgpPxrWSadQr5gR7swXa506/IeRFNmq
	g+V8/YgFYhk8JwVX+rbQvFpBvzsDlm0BSv3AzSx/MCoZFD7HTQFCXxr/9Tj1hv+b
	cSBuJJJ2gBMB6o4mxFPrHwlzFXRfnkg6uPvwzJBEJQX6Hf7yhq0Nd+BOxvNeHmra
	YJWerA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c8942gqff-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 21:08:52 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-89502dfd7b4so31895076d6.1
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 13:08:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770757731; x=1771362531; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=hPJw7Bj7OiIbCHA02xnXWxt1i38ptWuysLi3FBija2Y=;
        b=aarY38j7RHLs0jauCA976PhRXQEsdoNiPgRqOAg2HNRP45iVONU7VxS31kDNHeVcyE
         sMyWyzp0n+kg9NcJ3D23vEDwB6tHEpjIWRknp+njXdEFinJZ2TOGGJzz/5Lz1nG0MW0t
         AKWI1dca/MQcQtHv7il26ibmugLFSnuKRKCIDac7z+cTBlAkjw3MhMYjyMKOgSh5P+42
         yJXPXlbioIvDZJsEWTdj5W52JKKD9tvv6hDjJ2g3mhFma85X+KdtMoCbOkdhGjOkEeCy
         Tze6XY/qK90JqFHs1Cf6nFnVfhzUQEsh6DfSU7i+x2acdNlWinAwCGzx0hI+07PXssBS
         McZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770757731; x=1771362531;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hPJw7Bj7OiIbCHA02xnXWxt1i38ptWuysLi3FBija2Y=;
        b=EsUv8/lVaSUQxOf9AG3J3I6k2ANuyD6BCEXIF3aVW5v4pZ+yi8C4s3n3MHunrttS4l
         wPIewAndPKtso3ESgycYZxzqPNkBT3vPPnnbJ2HWL1ZOXDXn/+hg+84ipGupWxB3j/Gy
         6FrhYMOUKiTmBQoHvcWPsAKRBv8y+J3FUNTIJWCovc7ER5vQ/g0j5PP92l4rQDGTgZEy
         Lu0Y2/MzdUD8D0DrmOzllrBXpgylMXtN5G4522VhYSxL+aZlt5pkgfwhrDfxdbMA/X6P
         Bdc8C6nYL1s122lYM31ktMPGA6AE/4RIcn+/bLt/8xqOLhyj0iULp8C59k60ZGXVnPXZ
         i6UA==
X-Forwarded-Encrypted: i=1; AJvYcCU5KrmJA1l4ijV1b17r3p79Op1tlJcyO/GuemDQWci+yt8YabJyfYCT3IHG7vZDc6uYUr0ZX2zid7Bx@vger.kernel.org
X-Gm-Message-State: AOJu0YxFwbT/8hHUE8XQIc3kXKCQ552D7hs7sHkaVPCRZRCrJmOdcHDf
	nOlXr5m7/uFlNp/8AjEV+o/t+b0tBsgGq/Splf2leaEywp8RoUpwOAG3zgqtIFzNs1shG9ztdn3
	VW2Vy9G2x02m2qBLPxpku+EpcT97R8qKTj7NgkxDv7uxYtxCDKZ83aSMLBt9vmmTE
X-Gm-Gg: AZuq6aIhH+1FtymIbXncLbVDSqFi8s8ywEPR8aVXvYOvPoOB67YrYtuip6zGwZejF2e
	0cu2WGy9rgZAHrqPcJ5BdH1F5pWqJKfQGN8jOpWNLORKAq0mOBCR3a0Zt9Yn4ISIof6BCRIPmSk
	AYAk0WiMNNTLiKj/ciNFk/P923RU0vfDOTltNqoPD59g9ASUSaggDJigsRrnwPjAwxdWKO5QWb+
	NGRSqj/fcxlBdYBJ2jL4HwMXA87zeJnapNOTAsB8Mw/ndWM7x/JjHoiNVmUsYoVQnthjKTv3RTd
	DBUNdGduK7yAcNhPy7TEBFfK7qPqQRednqZzd0ffKmGhC9C+Vsy219NMzh/NK6F7vNHdbkrTwEi
	FnsLs/wLXZnznElnbQ/3YU7fd7q00G6BIy9qG0bIuoYreBYuTtkShmPI/juhYACRlhvUuQbg9Uo
	B14IcnZi5No9TUiYGbzwBoNCqS336AP+tYLDo=
X-Received: by 2002:a05:620a:4048:b0:8c7:b99:cf3 with SMTP id af79cd13be357-8caefccafefmr2305137385a.6.1770757731079;
        Tue, 10 Feb 2026 13:08:51 -0800 (PST)
X-Received: by 2002:a05:620a:4048:b0:8c7:b99:cf3 with SMTP id af79cd13be357-8caefccafefmr2305132485a.6.1770757730644;
        Tue, 10 Feb 2026 13:08:50 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e4673a2basm3419293e87.47.2026.02.10.13.08.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 13:08:48 -0800 (PST)
Date: Tue, 10 Feb 2026 23:08:46 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: qcom: lemans-evk: Enable the tertiary
 USB controller
Message-ID: <b2cbejqrxttssho6j5d62u7mhkc5mn7vybfqlhbs2oeca3oq27@w6ws3ogfuwsg>
References: <20260206104642.1038381-1-swati.agarwal@oss.qualcomm.com>
 <20260206104642.1038381-3-swati.agarwal@oss.qualcomm.com>
 <helfsilh2qi56laxsounbxlp5zn5yq3eqkrodgsgtzxevwokqz@usepksge5gz3>
 <CAHz4bYsqkJfdeMD41gNf11suJBj+4zhoy==mWdEqtZ-B2S_6Lw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAHz4bYsqkJfdeMD41gNf11suJBj+4zhoy==mWdEqtZ-B2S_6Lw@mail.gmail.com>
X-Authority-Analysis: v=2.4 cv=U42fzOru c=1 sm=1 tr=0 ts=698b9e64 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=ZzjVhZkS4MyNLuvApScA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-GUID: xozks60gPPyAjF_z4Xbxj23hQYtveP4U
X-Proofpoint-ORIG-GUID: xozks60gPPyAjF_z4Xbxj23hQYtveP4U
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEwMDE3NSBTYWx0ZWRfX2Rp88noWiUs8
 WHU18I348WQIJyOmazSqL09drKwv06N4E4heptAbgfWCw9eEjonXBZ+VWhHWaSlWq2Zrk/FGI6O
 p7ixFQdD2jYkLkC67WnhzA559up4/sigAgmpToGPvz9yQU/hL3fAP/WTrFqyXevW48PNfd6lZQ0
 HaDqqPFnOQvngHwi9R7m3KmEjcarfuJyBl4QcQaRwui6rtO4gjDkDtHiFCEEOy54lHJYlWsnhHB
 dOsV2HzIiv6gPYys1Z7YiuIEHzklNcmLbMZxq2qkoyDSosAu/urjHzscDv63zZM/GzmIDg1/wQa
 14bO6f+/4MbH/F/ATycbyH/g5OVBCWheBYbVq7CyDy76eXrgvmBPahV+dFV1caaKg2Ii9KcYeiX
 MNSScs8C3xrVA2jGK8iNeiaSaT5DBf/C0FaheZa8A09OPMMyCYfdl5R2faIuJT9a+C4jXyi8Sio
 Wey7QP1k9lk5jpBRGvA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-10_03,2026-02-10_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 phishscore=0 lowpriorityscore=0
 priorityscore=1501 suspectscore=0 clxscore=1015 spamscore=0 adultscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602100175
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264550-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:dkim];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 713BF11F4C9
X-Rspamd-Action: no action

On Tue, Feb 10, 2026 at 08:29:50PM +0530, Swati Agarwal wrote:
> On Fri, Feb 6, 2026 at 5:44 PM Dmitry Baryshkov
> <dmitry.baryshkov@oss.qualcomm.com> wrote:
> >
> > On Fri, Feb 06, 2026 at 04:16:42PM +0530, Swati Agarwal wrote:
> > > Enable the tertiary usb controller connected to micro usb port in OTG mode
> > > on Lemans EVK platform.
> > >
> > > Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
> > > ---
> > >  arch/arm64/boot/dts/qcom/lemans-evk.dts | 53 +++++++++++++++++++++++++
> > >  arch/arm64/boot/dts/qcom/lemans.dtsi    |  7 ++++
> > >  2 files changed, 60 insertions(+)
> > >
> > > diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
> > > index 808827b83553..2710927c9172 100644
> > > --- a/arch/arm64/boot/dts/qcom/lemans.dtsi
> > > +++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
> > > @@ -4270,7 +4270,14 @@ usb_2: usb@a400000 {
> > >                       snps,dis-u1-entry-quirk;
> > >                       snps,dis-u2-entry-quirk;
> > >
> > > +                     usb-role-switch;
> > >                       status = "disabled";
> > > +
> > > +                     port {
> > > +                             usb_2_dwc3_hs: endpoint {
> > > +                             };
> >
> > Is it USB-2 only? If not, please define both ports.
> Hi Dmitry,
> USB-2 is micro USB having only HS-PHY so only one port is needed.

micro USB is on the connector side. Here you are describing the USB
controller. Is it also HS-only? If the controller supports HS and SS,
you need to have two ports here.

> 
> Regards,
> Swati
> >
> > > +                     };
> > > +
> > >               };
> > >
> > >               tcsr_mutex: hwlock@1f40000 {
> > > --
> > > 2.34.1
> > >
> >
> > --
> > With best wishes
> > Dmitry

-- 
With best wishes
Dmitry


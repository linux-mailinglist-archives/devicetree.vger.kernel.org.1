Return-Path: <devicetree+bounces-273241-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sNxrL/OOr2kragIAu9opvQ
	(envelope-from <devicetree+bounces-273241-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 04:24:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 22094244C17
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 04:24:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5C008306BC29
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 03:21:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3B03399007;
	Tue, 10 Mar 2026 03:21:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="S3fQYBOD";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bkAkLd6I"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343D53B95EB
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 03:21:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773112890; cv=none; b=biWkXDVGeaX/sjde0c9z5VRBV7Fm/uYJavFmDPGsC2B4THXG68j1uSdAbCStBR3+DDtnsXVARQIpZ7B40QsVDT66/UIrfPx/ueQdXgKRo3maRfLj3e6Fis5sA4SN+mikxeHBl/slTqCx9mw7tXa1HxvDz78ON8fYWqDUgMfRXlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773112890; c=relaxed/simple;
	bh=xZ95pltuBo3XBJd6cThiZfo4nWO4Mi7D7thJV2tgIvg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iz8E1iZqgG+eqWcPK3wy0Ypm1FpRcTS8ybU4LpyWKCHq/3DnPldloTc4v4ruN6E905gZk95HNQkR9IfJNCx7apkkxBZ5/amlfnfULc6K3HZEmayC95x+cgAD0RNIdK1XxYjBfFfLsArlJQCykMwT9ZKPggOc9dJ6so9XuZ/Alr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=S3fQYBOD; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bkAkLd6I; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62A2EYQI1900102
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 03:21:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=e7mVQVS9n4swvVBScV5FEJu7
	2PJ5Q+aaAbAZXVKrwgY=; b=S3fQYBODFlTArILW5mJzWlqFF52VSixkRO4CZsui
	gB0QPfD4PbsZQSplXvSALqmXNwf5H6K/z3Pqfkxwqe/mbDVfH3smlvGgQrFd7kFP
	XWibQOIaV4lyJdkaV6k+JiqDXJKmKAGbpc7JXUfuyWMZCvhr1CuSyc/YL2AL1W6k
	o23d1OQIjgiaKudf6d2DNWd1MPhQs8iBBX6HXvS3gyQpeaVB/KHSveEAFFl0Hyd7
	oDhKgairZ3k7CdpC2tEExt9sqz7ACEjBsszfJmqBtgMPkqP8WsAwVQbo+Fvoeeix
	+IDNOCqJTRkmthXJtrJ7pKgWt9fO4DXhsj/0E6QPWM92xw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cstsabett-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 03:21:27 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-8950562d351so72845666d6.3
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 20:21:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773112887; x=1773717687; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=e7mVQVS9n4swvVBScV5FEJu72PJ5Q+aaAbAZXVKrwgY=;
        b=bkAkLd6ILpkNzm1cqQ6leSU4bOwMYXwBXF1VnqUlHbzWt+I613m6wJfADr3E8gwBgd
         Xg/v6yuhoFtNuyfawN8Oma6fl0acimmcKeNqhJlFDtU9BdhtHx821Dy0CasoCVMuFEU0
         MjoXILRwNuEbVExcvbylA+jUnrbP7E42K7CnHuWCUwY6/5fe4c3Uhhw57rM3Zmy3psD5
         NL8ICr2c4i1p7iokM6pLp1SQn54Nz0NshXd7nKpBC8hKWoG8cjB/iqerRb4Z0fjkOfRJ
         H69Dsv8YMuX8MertsXHcEbSOrzopi0Dm7OJ7IzdznTEZByR7qzTps/OtfGwZ3vtCeC4p
         r14A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773112887; x=1773717687;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=e7mVQVS9n4swvVBScV5FEJu72PJ5Q+aaAbAZXVKrwgY=;
        b=bBdg8cLwJmWlZ3Eky8q6B10w0r/cGjUK0ZHVHfsIkU3umdTJVwLP+/d0yG3RCV6WHz
         o2Fy8ae27SjIcl5fEdh+4H076WxqIJzTZ51jcbZzn8LAxhxg0OAV7EId7vmv/oyzYXgA
         7ifv8IImxzNawsVuWOM2tNLMjh42ZvBarf8fdxB6TrP0azTQIkxAFABc/dU1FJ7xpVXo
         ZmESP0m2Jc7n8XnofrX5MwvK29JpOZvHcrrDvh7emGhiR30GIgX2xaEYaB+LxkYI12HV
         SywobwGejfthutbhO9Pj8w0C9eNyaSnSFnnO5C+NXZwlPnI2EQ56GHsPu9K7ck9PAa0B
         adSA==
X-Forwarded-Encrypted: i=1; AJvYcCXGS98/ePPi9BjtdgZ9Llg+PN+u0EkGHzIcH5eQ15CHEYfdX+axn6HPWHgm0wu0+1nhHFxWMkMPt/4M@vger.kernel.org
X-Gm-Message-State: AOJu0YwhWCFU6ljylh5QNsCirM3t9Kz5JDfz83GcqMtbCtV05hi3zFEB
	DAfz5/B9lY7c1lDxlI6MBHWNntugKBdxTtYvi8e1gqM+rvUN62WviMh3p0znW4A+6+GJ3F9l/lq
	zqctrS4f7E7f+Dkn7+3ETPU290ulZxhmL9NOsHyez+VZb6ODK0k4TscSkBKGAAUg6
X-Gm-Gg: ATEYQzwNxf0xX1QNHI0p0ympYEOCAuwZl7a1dq1MtA2u69Ra07rVGq1xhxNF1z920l7
	w1A/nBDF9bFGqAF7WgDZr+T/WlCdkIV0tDKMu1CjzbH6j7bFqGn3gcTClcVXPI0ujW541G+ZnMT
	MFRpfyR2f4HzYUe80Bz0wcOSst0rW60Tt+DQADPLvKvPoDZdU/lq7148nzcFZybasekpPE4+BfI
	kCZh1dIU/9cFF8Nlcom2wJ6M8rYQI8REe/ck6BM0eXyGiWcm04FGc2EjOjd2ql2fJiPmNbD8Ce4
	88wXqUB9nWPnAWyQpmZ+bosIkvFwHUO2t+zS4TfIaJWWU5yOoCfjlhRFUMFLElrJOhPGqYvnCQZ
	y4XEfrwiatxC1UUnVI7VWmGRo9L3ALFEGbe4eauQOSKd2Tik/etIiWpA7lTrwEyj3MLbKvMnG+o
	+831QnIbvIejOdK9Efpf8eqM4R6oDt0bj/hkI=
X-Received: by 2002:a05:620a:4381:b0:8cd:76fa:1be1 with SMTP id af79cd13be357-8cd76fa1ff3mr1341975685a.14.1773112887266;
        Mon, 09 Mar 2026 20:21:27 -0700 (PDT)
X-Received: by 2002:a05:620a:4381:b0:8cd:76fa:1be1 with SMTP id af79cd13be357-8cd76fa1ff3mr1341974685a.14.1773112886867;
        Mon, 09 Mar 2026 20:21:26 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a13d01cf4asm2475809e87.2.2026.03.09.20.21.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 20:21:25 -0700 (PDT)
Date: Tue, 10 Mar 2026 05:21:22 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Alexander Koskovich <akoskovich@pm.me>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Kees Cook <kees@kernel.org>,
        Tony Luck <tony.luck@intel.com>,
        "Guilherme G. Piccoli" <gpiccoli@igalia.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sm8250-asus-obiwan: Add ASUS ROG
 Phone 3
Message-ID: <eykyxrdiaqf3z3nthwa22tvxz442ynhvhsjhajs5jfnwuko2yp@f75t6vfhfjrp>
References: <20260308-sm8250-asus-obiwan-v1-0-3c72941eb796@pm.me>
 <20260308-sm8250-asus-obiwan-v1-3-3c72941eb796@pm.me>
 <pu56z7dorbujx57yzfclcncrj4zwgtv3gshntnlpxcpbunxsiz@2rckwcyjgetg>
 <TTd9O1RN8B4tl9ogFkEYOLpb0iuA2NkOP_3RVkPfnEPntd7f33LU8zzKfy1ICXQ1M-TmDVht5GxiNsMDCu8O2odbZUBcU4lEzg-wyq22ZxM=@pm.me>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <TTd9O1RN8B4tl9ogFkEYOLpb0iuA2NkOP_3RVkPfnEPntd7f33LU8zzKfy1ICXQ1M-TmDVht5GxiNsMDCu8O2odbZUBcU4lEzg-wyq22ZxM=@pm.me>
X-Proofpoint-GUID: Gb9J8-2WbRfgfaqm-qnymJdG6WzV2JEC
X-Authority-Analysis: v=2.4 cv=I+Vohdgg c=1 sm=1 tr=0 ts=69af8e37 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=j8Hq53Z3awvR7zSZTn4A:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDAyNCBTYWx0ZWRfX48wZdR1sVfLg
 6Jez14Sk8ccBsBxmbGfbaAgKRCu+Eu0D90GViua0FfL35/LBAOAP8VkZofcETzR4yxcMhwY2LD9
 CuzskJkZB4QqFZF/zNfuUcpZ6LLnAyJeUwU7Be4+/sV+++eOp6EiHRKVF/9I8W39XSQ7Y7ySG9b
 wgRTbV95fo+XigrShK9aKpsa+F39djGQpMCGbHgO11v4l4obvBfFT7xEOIas0pcJS+F4FUtYm8H
 intgru3s3eJw5Kl/iyrVmBR01wFWGZK/Zd3Ec48ZM2OxD4eEsQe1dxotftWUOAFGjg2JDhILTDY
 7A0OAtjhwpwSzDRjTQSlwm8C8XrrAJj1ts3hzCcMK2T4iOLRKTb6g2jJ60Z0GzFGPz5TMhNMi7F
 iYHd4sBSU0LVVPC6caOG4SaSMXIcaxvDyMwoyOLScOLqW68wQTChe9UhpnTsKOzquY/gsIR9v5J
 WqYozMc3HDRzUO+YMHQ==
X-Proofpoint-ORIG-GUID: Gb9J8-2WbRfgfaqm-qnymJdG6WzV2JEC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 spamscore=0 malwarescore=0 suspectscore=0
 bulkscore=0 lowpriorityscore=0 clxscore=1015 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100024
X-Rspamd-Queue-Id: 22094244C17
X-Rspamd-Server: lfdr
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
	TAGGED_FROM(0.00)[bounces-273241-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Tue, Mar 10, 2026 at 02:57:13AM +0000, Alexander Koskovich wrote:
> On Monday, March 9th, 2026 at 4:34 PM, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com> wrote:
> 
> > > +
> > > +&cpu7_opp_table {
> > > +	cpu7_opp21: opp-3091200000 {
> > > +		opp-hz = /bits/ 64 <3091200000>;
> > > +		opp-peak-kBps = <8368000 51609600>;
> > > +	};
> > 
> > I'm a bit concerned about this one, I haven't seen it in the downtream
> > SM8250 DT.
> 
> Should I leave it out? I tested for a bit and seems like I can boost to this
> speed, seemed fine at least.

Nah, if it is listed in the LUT table of your device, then it should be
fine.

> 
> > > +		qcom,calibration-variant = "ASUS_ROG_Phone_3";
> > 
> > Just to check, was it submitted upstream?
> 
> Yes, though still waiting for it to be picked up:
> https://lore.kernel.org/ath11k/PqqPCfIvgme9VLMd4Q91JxMhlc4JOTjuWhwXupf3_0cZXUvRy0wijwNfy7lAY6fiIXHXU_buPPbpDM_Uvht3G26146R4szD7Hvp57m7Totw=@pm.me

I don't know if that breaks the scripts used by Jeff or not. Your
attachment seems to be lacking the commas.  It is named
"bus=pciqmi-chip-id=0qmi-board-id=23variant=ASUS_ROG_Phone_3.bin",
while it should be "bus=pci,qmi-chip-id=0,qmi-board-id=23,variant=ASUS_ROG_Phone_3.bin".

> 
> > OKay, this answers my earlier question.
> 
> Updated the comment in v2, since technically usb_2 does have SS lanes on this
> board, they are just not routed to the port I have configured atm.

Interesting.

> The board design is a bit special, the HS lanes for the bottom port are sent
> to the pogo port when accesories are in use, and then that leaves the bottom
> port exclusively for charging. Haven't gotten to modeling that yet, I'm not
> sure if there is a way to model that in upstream atm. Would need some USB mux
> binding?

I don't think we support USB muxing in this way.

> 
> Let me know if you would want to see USB 3 re-enabled despite not having a use atm.

I'd at least ask for a comment in the DT.

> 
> > 
> > --
> > With best wishes
> > Dmitry
> > 
> 
> All other items have been pushed in v2, appreciate the review.
> 
> Thanks,
> Alex

-- 
With best wishes
Dmitry


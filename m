Return-Path: <devicetree+bounces-275391-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yMwPFfoytGn4igAAu9opvQ
	(envelope-from <devicetree+bounces-275391-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:53:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D2090286640
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:53:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C5A9F30BCEDE
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:49:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10EF34F5E0;
	Fri, 13 Mar 2026 15:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jfQivWv2";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Z+mefRnG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3C3635E959
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 15:49:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773416962; cv=none; b=p7GOBRRS637O0pkDIHQLEGWUFIIIrVn/CcSHF3uumF5H4HfkZOg3EgqBp+dR+DnQk8eeC6ZgyGo+UsnN8wOFQpiWg1DuxuLU94xz5Cc7++XjJLChHxvCZlRZVVu+SY2srs7iQRMad9C9o9AJF7jJ0FgmbrQgP6MogKvm0XZAUUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773416962; c=relaxed/simple;
	bh=WYsK0XfUSbf9X4rYQOwsUWh43j0wPs6NcQoqe4/qIU0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dHGimSC6w046Xga0DlIsPU6Km6l+84StLYyN+BEqyea6Ba6e69sF2GkwpsJdusDwdvco5ftCNqUo51IAtseT6yrtmFXPtYTsQVGRPD2qUpI0dwdz0GEvSCBvTOwX0s6Ui6UzKOMf6uJo8kCobTBZQNGHSXMYLuo/uxEaTidJoy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jfQivWv2; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Z+mefRnG; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62DFXGrf437734
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 15:49:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=eavIjI1H7Ko1yWv1fuDSHAZF
	EzadTk271QFz6euBTIM=; b=jfQivWv2vBik1XbYMo0AlyM/iDCJf/P2bN3JkfK4
	PWrGrcPVvnTrvdOgfbULpBDRkzHK4SlY4FqqUmF4vN1InfxCgoX8YiptTWdmj4lH
	KJf5Y8eNq9ErM8FmklnmK43GFCmtgKldzys1hYME9uZ5jo0EKUs9zswD97txoRHT
	AYy86SWJJ/8FHvNOcvaqYeQ9EXnFN5+E+NPB9UL3KeSBfVaBF8Y8G3/WAOux23k5
	RNm1Z98DnFowrX1zyVeMpKHXb+BlLrEZq23qOw/i/WJ5Rd23jbqEuN7ztyZdRACs
	phdQy5ml8WnP3vuRTuHDOZYtkpFEn2b3s+5MeCpBubRCJg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvnax81c4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 15:49:19 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-89a178d7270so370605336d6.3
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 08:49:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773416958; x=1774021758; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=eavIjI1H7Ko1yWv1fuDSHAZFEzadTk271QFz6euBTIM=;
        b=Z+mefRnGBWd/3D/+5pggCtEBMQ0tKf/1IW/dYULggp85lgWWmGfw52VB1nWbMCmBXB
         g1v7apwRjuvMW5FjC00HAlW42KZ3pC2TtbSHrLIHYQvxsGjynE9nDhisa6pfXV4EEt0c
         k+tpLvkW1fW+p7UY5bmqOuJJEqMOBxLAozELwJKaKxJkgMasZXA1MhDoHgHLxhp3GWPu
         xZj/Qo39vVRtAPAGGnBi3QE08jXMijVfrVoNkqFzgRq/0m9ZzGBJQwISioIKZNTA0QQc
         Lg65pbVI+IgpK2tYSTiVi6wYQUzCSMhf4WraUG3f7R9qyQSc1JMjDArbIr/pTSzcB1k6
         Ss8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773416958; x=1774021758;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eavIjI1H7Ko1yWv1fuDSHAZFEzadTk271QFz6euBTIM=;
        b=kQLBt8UGRZmL6m9IrUL3jtcsanEFkkHdR34SAslzMv/4WFqNxh6qgilQRYcgaTEn6n
         UTuz8MKI66P2zYDmXaRcV5ZuCsFRIbKXjL4Ib2tOpCl0dyL/Zkh79QBa9CjRC/VG5ByS
         /tYU6WA/qp0Eib2w6VLL6/1//cSMfUCqFvXQuqJlTF/fbWCNoqdT80QkscfJK7XBmWzY
         faFUbrARu1ynrJOpUWl5NdGcPQLinJ/FrXIjz4H/ck5JcQllvolHhjmM4iv6DT5Y3wr0
         xn3Ygmjgi1lgb4jLklynlK6v4M1n2/Hv+WWiLPy8BU610o3FkRh78IoG9DlPJAQhjy5A
         /DEw==
X-Forwarded-Encrypted: i=1; AJvYcCUjUcUy406YaUUPVE+77Qt/Px0+j/9S9U+KT9inCGvyKVe30/35Enkqjq6s6YbAlmiVFUBsGLXWsoNj@vger.kernel.org
X-Gm-Message-State: AOJu0YyY0aORO7JQP4/85NzJxvoe8PKkYWFLjW8bHAWreFr3DAyPah9h
	0KXjtvIl0AxpeieqdadY9w4n9JLNRVSP5SLfCtnrKOUpAuipXwfCPUKWpEgP/kOFikcT/pvQvqK
	epkPVZyv00RVhBaYTr2bW23sxXG2+1DPfSWzhhDizZdNZwVyaHPUK5Tr4QOOIoSqI
X-Gm-Gg: ATEYQzyrvxiw7yWBQuZwSQ0LIdXStfK2qS1AaYmWgXULg54q9MVEbkG60AwEYjadVEd
	7hDvnm+adghOmN2GNJ++LCadXWuDH/GZjuTyS/bY/zOE9Z67x42RckMBhYVeAuQiMFjxoc5Ra0Y
	DyYXf1E6w/WZnOqHASRI+lWiDjHwbXxQzweeXXrRkGLpuupeLkYXHcpYirqObF65QOT87y6DQBo
	ZSev3CZku9iDWwWReig+NqBUAuhuROZ6XA11DKZVclMF/ToxmWSabiYncSMpuK07wz09PRo9bal
	fh1FdNSQYYk/dXiOyvCDGRcZ797Mj95/veuG+7dt3sLwXuJNYLKAHIW8HwQJvtiXWHUhnEEtOz/
	XyD1jWlduoEWspSWkw0OLRtDdtB6ZFistSnVl35UPVBWKjRQN87czrKzeqjajn7mnuxTR7DyPrn
	SOAwH3VgnIISKENqPVNCBIMRKeMoJqTdT7E5A=
X-Received: by 2002:a05:620a:6919:b0:8c8:8126:7770 with SMTP id af79cd13be357-8cdb5bafcb9mr556982985a.67.1773416958611;
        Fri, 13 Mar 2026 08:49:18 -0700 (PDT)
X-Received: by 2002:a05:620a:6919:b0:8c8:8126:7770 with SMTP id af79cd13be357-8cdb5bafcb9mr556978785a.67.1773416958141;
        Fri, 13 Mar 2026 08:49:18 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a156162b08sm1565469e87.53.2026.03.13.08.49.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 08:49:16 -0700 (PDT)
Date: Fri, 13 Mar 2026 17:49:15 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Anvesh Jain P <anvesh.p@oss.qualcomm.com>
Cc: Sibi Sankar <sibi.sankar@oss.qualcomm.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Hans de Goede <hansg@kernel.org>,
        Ilpo =?utf-8?B?SsOkcnZpbmVu?= <ilpo.jarvinen@linux.intel.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        platform-driver-x86@vger.kernel.org
Subject: Re: [PATCH v4 5/5] arm64: dts: qcom: hamoa-iot-evk: Add Embedded
 controller node
Message-ID: <4o62p4iyhb6g6aa35kbs7ylet5aeeojkbqg2qboue3wbxjdzb4@k6gmkhfzukeb>
References: <20260313-v04-add-driver-for-ec-v4-0-ca9d0efd62aa@oss.qualcomm.com>
 <20260313-v04-add-driver-for-ec-v4-5-ca9d0efd62aa@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260313-v04-add-driver-for-ec-v4-5-ca9d0efd62aa@oss.qualcomm.com>
X-Proofpoint-GUID: X1ep1LP4Ckf3OLtO--sxyyyc84n3UwLJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDEyNiBTYWx0ZWRfXyw716CDwmrKJ
 +8QCZ1KR1ILmiwD7Pd+povJtaZ4oAdYK6wIxTmiwXyr+70xwhVuWyqCo7FQZX2yR84blK6g0l/N
 0VQVieVoD4hdrtvb3JV2NltpY9YW6ZfeXcMfTBuwGavE/TtX1xRL/R6OurxNRWyDbz7lmySrRnG
 H8ME82AldZctNljbNkmcqnEviNHoWvdQERTgTj3NzihRXEmNthvl8aKdclfGHlZ+/ZCQHlV7N7h
 JiPhbdk0TVVU+V4re+9/lfRdrdk3N8D5cmgoOiXkUStMFWie6IKNqRLFps86aqqCHjKeWDuJKwD
 MgnvpiOF1sOmyi2azqlnjfZZA0pldzIJQ81HkwoSPVyYbaR3hYP7dLh0YqkZ5C09zEDXL50a+W2
 J+Rw8mD2c6GKOTxIes4tfjsYdig6Ka3mjNDwuRedGKmmOkkE8xKUEVauVICz5xe+c9f7LsKPGyK
 YtF8mIp4SsMSs8m8+1Q==
X-Authority-Analysis: v=2.4 cv=X5Ff6WTe c=1 sm=1 tr=0 ts=69b431ff cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=EUspDBNiAAAA:8
 a=7wtgjnKuI7ixzQLi8VAA:9 a=CjuIK1q_8ugA:10 a=zZCYzV9kfG8A:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-ORIG-GUID: X1ep1LP4Ckf3OLtO--sxyyyc84n3UwLJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 phishscore=0 lowpriorityscore=0 clxscore=1015
 spamscore=0 suspectscore=0 malwarescore=0 bulkscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130126
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275391-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D2090286640
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026 at 03:59:55PM +0530, Anvesh Jain P wrote:
> From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
> 
> Add embedded controller node for Hamoa IOT EVK boards which adds fan
> control, temperature sensors, access to EC internal state changes and
> suspend entry/exit notifications to the EC.
> 
> Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
> Co-developed-by: Anvesh Jain P <anvesh.p@oss.qualcomm.com>
> Signed-off-by: Anvesh Jain P <anvesh.p@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry


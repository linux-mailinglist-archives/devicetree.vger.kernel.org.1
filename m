Return-Path: <devicetree+bounces-274393-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cHnLE9AtsmmzJQAAu9opvQ
	(envelope-from <devicetree+bounces-274393-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 04:06:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A897926C958
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 04:06:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 232A430A2517
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 03:06:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B84EC383C6D;
	Thu, 12 Mar 2026 03:06:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="I52ktKnm";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OGa24s1T"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E0FA36C9FF
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 03:06:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773284779; cv=none; b=lpRIre6zbonzBrIO1FmP/lZSD0ZsuNzQE0MM88i5Rh9mcaaLAz5jr4PcFJa+OrMfsZUIQnn9jUv7DEcMqdBsnvHPTNjzH3y7JKa9+jlbL5hOUZcNfi7cbeXF/q6k7J6/3os5iVh75PTetcQYgQ2Wp8x1GdjL773i8iL91ZWj71o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773284779; c=relaxed/simple;
	bh=X9Uzj6IB5q588CGfX/J/JFYkaz4u2Jf8rdNseNoUpOs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rlptFSaZ/EvieHi7OME7u/9bSHeFG8aLKJCyqvHQ9z6zqou7UQ4VFkw2aQpTg7HTW+I8eAtbkV/wfkCgL5HUJ8aaA+YvCaCRFw0B1xv3+DJE8DZr3GweKcXaJtEZyUBjlfW9ek/2a8G792W4azFmb760r0xuaXeEPXQhItA3mhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=I52ktKnm; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OGa24s1T; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62BMNCb71756065
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 03:06:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=5fc9ybXJnbqVOuZgVKyeuuj+
	QV9yiXp/QFIk1UCejt4=; b=I52ktKnmfFoX8h3Up8zGSM/726EwugHBp2Ssa+1u
	2XhdafwvkBNOQyhpqhLeILMxU3EH/Q6jOeHGqmqybJ4nhy8XT50cvKblH4NBcJH/
	TPS3GlxITCPRz6xh1lJRHgClkxTMSX0joSjn2h3XGGbHEbGO04zVIzG7qVf9y67a
	3YHYN2x4qJ3PtqjBBNnr58AOE+zCI2TDzMABw0I87KCeuEpL4BBpqpHTFcJLiBAT
	3TLG6NTQRMSWOMBQS10/rDjdGCtvuK2MzoV77uYS45Xma9Ad70MgiBN0FBh+kZI8
	6rLztoaW/yN85BRuMSlGihOAELwxpQgYh4Hbua9gDI7ddA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh53gpvc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 03:06:17 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cd858e8709so665316685a.3
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 20:06:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773284777; x=1773889577; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5fc9ybXJnbqVOuZgVKyeuuj+QV9yiXp/QFIk1UCejt4=;
        b=OGa24s1TuFlMxVdOCVCgB01Zm6qypXQTnEehBRfy/sJ2n5mHXPFf0pJcr0IdOBtte1
         tXVf+tyE7mkLh+4XzlTD8R7RaDG2CPBbc8VoymFYPJVfYYHZzIetF3Q5FNHbOWpyWphP
         wl2k11JyUQ2qalCFYY19eczQnwK8hKezbf11IFxfKE1nFqFeQPNWM5jqX0lCiyl3bE4m
         3AloGXWM2izu/d/Ltroatpm4v2HBZ7I2G9nAkIhGdcdPsSDn+5OUvDJK2n7O3RuiKHRp
         OveS3EJAc7+UtknnaoBQIMuqpi+rycPRFvu5iTC0iC7y0Eh11RY69glOEBeVjoFJ6WjU
         +JeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773284777; x=1773889577;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5fc9ybXJnbqVOuZgVKyeuuj+QV9yiXp/QFIk1UCejt4=;
        b=K6mUSbPhLs5bJ9rL0nvVyEqPidgcZFyRAlx3yfxVyUfcMlfGmU5C/VaeJZbKunXI18
         GWEB1jJ6544WUMJ919wJNW2hrTOp9don9vXwC5GGs6eJvPhzvhmC6tlpD4qUB/+jxXaE
         ZaYB/K+/Mr1XAxfGDrYd1f6kKIt1SxrAJea0VN28K+2iUsaZ7zAfk0B1+2VCD4/cCkRK
         75FRqoy/6j6GWmPPwCPcbU/+/hJebuFreNkybEskYjaQUZO1uR4vd1VXo3PeTGDU5hA1
         XPlXk8+c2R3LhdZISJnxrJW+infjNhp9arXySMeS+TDq1pSnm05mDXVYrE8y3NG3Kn1S
         Al7Q==
X-Forwarded-Encrypted: i=1; AJvYcCXTSZVT6duV1Xx+Dce8GSAGyYtIqMOC4exOC5kJMgHRWieAYWHF1G6AxohEOx6G8dsfPVPDgfCHsFFd@vger.kernel.org
X-Gm-Message-State: AOJu0YwtfkLiiH1Hxf1nO4Q3JCSUF7Y5hZEr8g8Q2/GHMv1fZTM236EY
	l+Czp1lRNoMIYKrdh6pryLiXCd3vUwqt/V2Sw8YJMRSDQkk/Rt0i1GZAXY0n4lN1ICTPRKcUQoU
	HO3ZNt4hQWWlonScyWLfkVAvpnNVbu1grOgKw0sPJpOW93otKnrK+JREJKqyOGL9Y
X-Gm-Gg: ATEYQzwQRrgz+70rPNAhy31GgcirStiu3hF3Ws/TZ0TFu88H3BlQ9PoIMw8phrSzIO8
	hHmmoO9R0AdRW5bMR3RXKRen58pDkO0jTxDTeBXBxNySShkNfdqJEBPe7QXPS0txKP+LvKC7ZX4
	z1+O+lGaaIkl6MFdN3JlturcRhPAceRixGwdKUNK5POZjaLKCdEJzQfnEqeHmqRBGhYJLblNwHA
	QoIjJlIjgUG2JJTrjxD3qEtGYbFTfkEFtdL3kgjwUiy2EzFHX1qH0Hf0AsljUBH3YI4MZsSUcqp
	F/l9RmOX3QALarzjPf3OVH7vKSDKhqtuaK2ufrPpRlECooXbYRO1D3MlkC/xgsDd4cTMPlCng45
	j8jOXM3RsuRGBNg63ZYlJuq7ySCkho7T/Dp9rI4xHsghd/accpztn0xyp3MxH8PBoZ+kACJFTNP
	aExSnGkfNXtU7nW0rYAdbZomFX0BqIcGAV4zU=
X-Received: by 2002:a05:620a:4450:b0:8cd:8025:4e76 with SMTP id af79cd13be357-8cda1a118fcmr644456185a.35.1773284776701;
        Wed, 11 Mar 2026 20:06:16 -0700 (PDT)
X-Received: by 2002:a05:620a:4450:b0:8cd:8025:4e76 with SMTP id af79cd13be357-8cda1a118fcmr644453785a.35.1773284776235;
        Wed, 11 Mar 2026 20:06:16 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a155f353e1sm672389e87.10.2026.03.11.20.06.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 20:06:13 -0700 (PDT)
Date: Thu, 12 Mar 2026 05:06:12 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Hangtian Zhu <hangtian.zhu@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] arm64: dts: qcom:
 qcs6490-rb3gen2-industrial-mezzanine: disable WCN6750 and WPSS
Message-ID: <rzd4bcug3hooaf73fs2hn6pgoam3zjr6jptp3ltgz2mrhjtmx4@oicwrntb2j6k>
References: <20260311031145.2285056-1-hangtian.zhu@oss.qualcomm.com>
 <20260311070408.2287889-1-hangtian.zhu@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260311070408.2287889-1-hangtian.zhu@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=ZN/aWH7b c=1 sm=1 tr=0 ts=69b22da9 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=OKcc8udheNl06MO-kLYA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEyMDAyMSBTYWx0ZWRfX+38f7xg6s9jm
 Hs9DXkoADXQwogj9z7q+rEdK3/porEjAv/LqZcjawYfpveflsi9TwPjopJp+NKmHLNUDL739O4K
 YxhQrd4t1j9Wl9fjqWJgbMUBvDu8rdZny8uLy8txwLGuJ6TH+5Ew62dnONpMtjP22+un17vNGJ4
 +7u3I93W0+PrMgniNJth4PGbl3OLCqDQihsRTBNW5nbxkdp5jh6W6JcB8Zj9xPZfOl9uCAZGYjN
 Ss7CIwczpUFd89OoXlg/DD5AcYrkR8DyADCTC6p8Lh2ZA2R6EzC7TBYOkBkMp77omm1SxodENmK
 pdfBnynjbE50MaycODno2GeEVBCym6MFJ6HJw1YesHKnD9Qd6U8+muAcsixNfedXc14mq5af1Ga
 TETZsMaRIfkquXQYmKrkNeWjrP3R36CYGhLToPFLoRN5zxbOv7BSILaWuTYdB+kUny4f1j3aFNM
 nSPLj1oNgInCQZkI8yg==
X-Proofpoint-GUID: HgO6Lmt7iTRfNmIReXmpp2o8e35rLA0I
X-Proofpoint-ORIG-GUID: HgO6Lmt7iTRfNmIReXmpp2o8e35rLA0I
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 phishscore=0 adultscore=0 malwarescore=0
 bulkscore=0 suspectscore=0 clxscore=1015 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603120021
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274393-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: A897926C958
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 11, 2026 at 03:04:08PM +0800, Hangtian Zhu wrote:
> From: Hangtian Zhu <hangtian@oss.qualcomm.com>
> 
> Disable WCN6750 and WPSS on industrial mezzanine. On RB3 Gen2 industrial
> mezzanine platform, PCIe0 lines are moved from WCN6750 to TC9563 pcie
> bridge. Hence disable WPSS and WCN6750 nodes for industrial mezzanine
> platform.

This didn't really improve.

> 
> Signed-off-by: Hangtian Zhu <hangtian@oss.qualcomm.com>
> ---
> This patch depends on:
> [PATCH v4 2/2] arm64: dts: qcom: qcs6490-rb3gen2-industrial-mezzanine: Add second TC9563 PCIe switch node for PCIe1
> https://lore.kernel.org/all/20260305-industrial-mezzanine-pcie-v4-2-1f2c9d1344d7@oss.qualcomm.com/
> 
> Changes in v3:
> - Commit message changes, move Depends-on from commit message to
> cover-letter.
> - Introduce the PCIe architecture of RB3 Gen2 iindustrial mezzanine in
> the cover letter.

There is no cover letter. Also please read
Documentation/process/submitting-patches.rst and stop sending new
versions as replies to the old versions.

> - Link to v2: https://lore.kernel.org/all/20260311031145.2285056-1-hangtian.zhu@oss.qualcomm.com/
> 
> Changes in v2:
> - Commit message changes, change rb3gen2 to RB3 Gen2; wcn6750 to
> WCN6750; wpss to WPSS etc.
> - Link to v1: https://lore.kernel.org/all/20260311023219.2284643-1-hangtian.zhu@oss.qualcomm.com/
> ---
>  .../dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso    | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 

-- 
With best wishes
Dmitry


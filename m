Return-Path: <devicetree+bounces-277305-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qGrLEj26umlQbQIAu9opvQ
	(envelope-from <devicetree+bounces-277305-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 15:44:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C67282BD6C7
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 15:44:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3323B300461E
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 14:41:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5F363DC4D1;
	Wed, 18 Mar 2026 14:41:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BwH0apbN";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kdNmYkcX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39AC53CE49B
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 14:41:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773844899; cv=none; b=UTH/6imuR8EIvLaYtvynnu4cbmLqUXjIPpZYeTV7POdN5C+imHOfo3p+c7Tw5Uf5+O78S3uzWXMfOKSQDOZOwdwnXjixC88QgAUXyqXaYfsobnnbef77abuVrcovvSytXsM/AimQO7UdCN/rYIxJi0fs/IZM4vW0Uq3GyTmzphU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773844899; c=relaxed/simple;
	bh=zHb3ug56yZU73Rkgye6tWFqmIizXoa0cJ4zJJ1kdtvY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=teakirMcoHqYOB4Z9B58yS7mpiz8sH537Se/nDcBIThFRibhGwWFUWhQL6I2EqPWE1IFG73YKM++kyBcCkKHTIaJ5mrfDrjt1BOWIv5lohUHKcKBTCx7QKe3yROS+cbaI2mOHK1We2PvK8IM8t8qFvFqrsM3PPb2REX0xQ6moDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BwH0apbN; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kdNmYkcX; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62IAi3Wo008768
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 14:41:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=oZ2ZDPsufRW4dhlt63DbVB9l
	96Wxnp3DFYqHb0H8STw=; b=BwH0apbN2Gs16TLoHjhsKUuI6hR5HPcsS4dUKjSt
	bFpevIdMrDvVag3Z/61AkghHoS3DJmZpGe3mOuf36XekOiAgJkqsKkpbLC/NiSDe
	SSRzXN8QFbcG5xcvzG/uBAVWf0M764frMiQxQWtvQXcv5080qUxmm29cVDOPhESe
	HZAFK8pf5YbCIu7EWioZCh2r94lj7yFx533QlCeU/Ew2BFt7vCltCfJw6xIRlE2Z
	HjjxkSCXazniN+o5P3kEGfHwjLrvB0aghVLfvXuB7uvIL+MDiHD6X3d65eP104n+
	Gwg6iFYf+3Kqblgem+4E3AFEq9F763pek2gSaLEoltgKFQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cytj50uxw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 14:41:37 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-50937cf66b5so1044130371cf.3
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 07:41:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773844896; x=1774449696; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=oZ2ZDPsufRW4dhlt63DbVB9l96Wxnp3DFYqHb0H8STw=;
        b=kdNmYkcX3Jdz+IcepMt/732kdBCCFTv8PYIiyLCxXJlZfGGiaHuWJ4noenXnhzoOV6
         mZFL328e4zPduAtfcvQcjDJ18G29z8Fs4LyIVEQTwtG6Q9hstr/sWOT/hND+JCkr8Hu5
         xc/i4um4SlUs3lXMAFyZkL6kfDfBVDmkh39g/TdgYhx6v0nPYukgvtKFHgqh2wg0I376
         sHjHTC+wogN2Z7Ma4pP0c/Cna3Jo35a1sqPzXtXxjbRFrufrPP8MaZuho1IdjPxDzG59
         E1TE7MXaJjWXNjtmaMUYcawB3HwUyWCwyPJWyDrDigYR42jDXoMn0qGI9WcCOb7ZI5Dy
         fxLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773844896; x=1774449696;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oZ2ZDPsufRW4dhlt63DbVB9l96Wxnp3DFYqHb0H8STw=;
        b=sfTX4ZibZe2v80G7eHs+2Hiwy4YbUSSPqxAmcqNyfKaTR+OVTlGLMg+3N7e2S3gJv2
         EVXTYke8PLNRzovgLJhSZ7603bF2S3poyPzBUYqBlnHBWiFFBS4ddXZrH4fm0nO1/uKr
         Ujzx8Ll0En8dyp7yOP8KAm6hegnhT4MX+y6UX0qWkIbTiDdO9z6nCq7Sv2uzByUpEjIq
         hOAdMROY6in/Y9uiQdb3JAUHs2glltoeeET2yEgoWvNyCNUzs1srwLjU4Bcy/QaxnuBY
         eYPP6j3DJ0/H+qQ4f6KvdKKv96wvduVvFsO7lzZsmTZbGIBBSUuDK13zWqdvCXemuUsh
         3qNw==
X-Forwarded-Encrypted: i=1; AJvYcCXj7TqZtAi5GcxhrxcEXngIMLT8Ghg3zUqbaixlgl628ewB5GhlgQrDhIiWRjm3j1KdFvxyFGWRfiQb@vger.kernel.org
X-Gm-Message-State: AOJu0YyK8i5LbrmOfrRbPdWHGRTbPmsLLcrQe8flmHmgTt9B15zbN9QC
	DG5WOIPdxvZ6j5+e2BxupZ4SKeF96UDh08jn13xUoos55calCQV8bzLfm5dwo8qay6mHJ5xssTZ
	EwBBrDCwAPfAZCKv0mhGt+DWbGyDXDPrWeJEaAVHADW84IBUL78JMtq7csq5BJ4OQ
X-Gm-Gg: ATEYQzzPyyRkVApHExkmST7A+AJgdr9XIQ1bQ1FI6QNHNIwTIGxNJRMh61f8E5LuAAD
	c1U/lXoSABPoqcozzI4j3CyitNakwGHdmTw9RlM5NowIjLUmq6AKp7wXCvduhusHvjXdbf3k6GQ
	GXIj+xKgsOHK6okKyTUYarWg2rYeZq4rG+Y+G65ujKoVcoo+ic+y4M4jdIlS+3eD2kVaQiucdqP
	edaBLe8jCq1glwEaNQKj6j8VONThfy9Y2IDSUKDP4/w0oMNWJDnRPTMCVdeIwrfu14PyHsp7zoU
	vRxWiAsVEIjlplEiEiR5WwIKJ+EjI22nbvjn6bALrv+m2bdx+FsQvvxtC/s85NIsSH3Eo2XaYXH
	1Q7U+s0aaccvXvTNELdYHnEPLT+4Lff5t8/dx9CC5XLup3DUhHR0i5ekXcnCt2MZLkwcjRi2isS
	5YGuEWSHIKZioeBhK5Ce3+jwcnYSb8jpoKoVc=
X-Received: by 2002:ac8:1205:0:b0:50b:1ecb:36ff with SMTP id d75a77b69052e-50b1ecb3a94mr12584891cf.49.1773844896394;
        Wed, 18 Mar 2026 07:41:36 -0700 (PDT)
X-Received: by 2002:ac8:1205:0:b0:50b:1ecb:36ff with SMTP id d75a77b69052e-50b1ecb3a94mr12584581cf.49.1773844895890;
        Wed, 18 Mar 2026 07:41:35 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38bd54dbf75sm6008391fa.37.2026.03.18.07.41.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 07:41:34 -0700 (PDT)
Date: Wed, 18 Mar 2026 16:41:33 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: david@ixit.cz
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Sam Day <me@samcday.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        Petr Hodina <petr.hodina@protonmail.com>
Subject: Re: [PATCH v2 2/5] arm64: dts: qcom: sdm845-oneplus: Drop address
 from framebuffer node
Message-ID: <rkbfjg77rrz4nfjxlx5tmqh7tdy6l7s7i63puwk6x27s6c54x3@ryid5gnvodrk>
References: <20260317-beryllium-fb-v2-0-36b69dfb760c@ixit.cz>
 <20260317-beryllium-fb-v2-2-36b69dfb760c@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260317-beryllium-fb-v2-2-36b69dfb760c@ixit.cz>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDEyNSBTYWx0ZWRfX8crgLSt6B5VG
 i2111NHm0xquPp96yCC6SG4K8cGIp5Nn2g30lcrMF9MW1eNDUJzx/1um28fOj7MXiEcmFOlHge2
 0X4gqYedm7bOGnjsanrrUySH6oAWTKIMdzLdI5JffGsRY8Sw6CEcVR9zKDdtHnI6vQU2JSQJcZ8
 vV+DiIcF/3EMW/ddFt5P/ZlthmnBWYXLok5l9IQUYDhr1CmIbGrkp2oya+L1rb4+FJ3X63n2WhS
 yvPOB40Hy49Fg8ANbtIOM6nSy2ugxo7tZ0KgoOX80k7IOctl2yFVSN8WWYeF4dzZkGnFN50Su5d
 jq1504RuEvcanufbccsB+eu4R9dBQ/iRPqlNXey/TZ8qoNjuPq8UY6f4ItRl/1YV4AiGDXY6WkH
 u+CIClfrJ7nFmbpNnZf3T8dRiHlSU0mtir+jY34mXO/aoI9oYjrPXs7Eu+kwlzJ42GAHo0akTnt
 Z7hLdbuRHMa/41M8RyQ==
X-Proofpoint-ORIG-GUID: CHtLDSvzEMohTi3kivYz2IUUHZcnKg5f
X-Proofpoint-GUID: CHtLDSvzEMohTi3kivYz2IUUHZcnKg5f
X-Authority-Analysis: v=2.4 cv=dM+rWeZb c=1 sm=1 tr=0 ts=69bab9a1 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=EUspDBNiAAAA:8
 a=m8ah2Tg14k2Pfi5VopQA:9 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 adultscore=0 clxscore=1015 priorityscore=1501
 phishscore=0 impostorscore=0 bulkscore=0 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603180125
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277305-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,samcday.com,vger.kernel.org,protonmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oss.qualcomm.com:dkim,ixit.cz:email,qualcomm.com:dkim,qualcomm.com:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-0.968];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: C67282BD6C7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 17, 2026 at 11:12:32PM +0100, David Heidelberg via B4 Relay wrote:
> From: David Heidelberg <david@ixit.cz>
> 
> This node has no 'reg' property, so it shouldn't have a unit address
> (after '@') either
> 
> Fixes: b0d5c96e860c ("arm64: dts: qcom: sdm845-oneplus: Add framebuffer")
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry


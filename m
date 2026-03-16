Return-Path: <devicetree+bounces-275913-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GGQLHnlxt2n8RAEAu9opvQ
	(envelope-from <devicetree+bounces-275913-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 03:56:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D205D2944AB
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 03:56:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 755A4301225E
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 02:56:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FEB531E83D;
	Mon, 16 Mar 2026 02:56:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fBatx45T";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WPs/uMl0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEB8731E820
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 02:56:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773629810; cv=none; b=MmW1EpBb8NIsXBJlh6WO03zOTJAl2p7lF+zQ4SOVC25StneFlYkVYXdxxNI2w9X2NfjQy0LSyH4sk/RkGzIl8A92xbiAVW+SKHcCLFElQ/TjWWEnS5hCvTUlP+fJhlRBp4aIJL9P6jD09hjyLeXgnqIOnAxaS/eEdltTv51n3l0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773629810; c=relaxed/simple;
	bh=lOx7WGljVCrNPCezw8jw8F0rZM4RZZWdggDm0L7uf5Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dPtNu6LIQMsElEdyvb4iK3ewlDT5JgwuXrIG2HGvxI2JFMMnw5Wtx16WomFL27kIKj7OQVLHIKVH6NYfEnP7qvTPoEBNqIslAB/h0WGb7sq+O28H3q8h7+rAZeudVPsr0CMn08W8zeuJ5nU3ejC/NuTV2SxGS1nUzqEemmDooeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fBatx45T; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WPs/uMl0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62FKwTK2133963
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 02:56:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	B7t58FQ1sZQ91jnt77vuhQFHEqLIaGKlIsv/co+Cw4I=; b=fBatx45TrsVD/DyI
	6eKYxYG3Lvs64KvboDhHwYIcrRonhFtwgVPiK00ZXmV6mm8DO74SEaa6MTUXR1pb
	IN1ti8ejYagX0pcLktDTymsXdw/Gamt2D60InWxpI4x7Tw80OF5ag3ZGTY8RMU6o
	oUD3FC+eBO508iS9KiXldXCuLuhOiDLHNPfAt6+m/0tePbwAaxWkGLpLaWQbn27h
	hPBMf0UjGqP8Qs2OzOilwJ3Cc/z5VDyerA3+oUpWxSecAH+k8W+EXGPTpXtcHdKA
	E9i9QL8WbtOUEvEBmDmbVuVql5pq805kmtx3OXGq1flUB0FrNCmsvOXKoLMs6yRk
	lLVUFQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvyyc3su6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 02:56:47 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-89a0013d87bso716032836d6.2
        for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 19:56:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773629806; x=1774234606; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=B7t58FQ1sZQ91jnt77vuhQFHEqLIaGKlIsv/co+Cw4I=;
        b=WPs/uMl0uwC1JO7syyuS/Gb+k3YSjdBvFTOZZ0RhpHibVsUVWPumzHgV8+P7g0pqIT
         tj9y9s/hOBx3SZtOX84nSgU0SE+8/1XBAFmH9S3s4KnU5KSP9H0wvrWeKXBnhjoKG9jk
         w1eiG3d5qt95Vac56fFecga5Uf1WqcfXEyJR+mMFF8SWheF5bwkiogm9ogRr0FP5R+Cr
         wQetDYIYNtUrvCs0uKkz5dPjZwpF5X8EoxTuW7eTeiBdxG3d4kOGTCKiTCrURC5rFa9B
         rdrKL6hAINp1bF4eEVaalWLekqNZwRK5+gLKWOvLRrNIF+9SQuXXRw8FS20kxAjGjqIK
         4nOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773629806; x=1774234606;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=B7t58FQ1sZQ91jnt77vuhQFHEqLIaGKlIsv/co+Cw4I=;
        b=FG9TI6YPMPh7V/OdDvkcMiPoRJxR1vw5MvaUhV5ePDup35i3NAGeCh23igRfKwkTTB
         A507Ec7ZEnzupRGzCC/GjnaS9KYgqc0/i98ajfk5oZCRCmEeuw8UQDfAs7VD0xE88bR+
         8UIIBPP5QAgJ81WI7lFRpkNFRommMPkRggP1lFvqXBFLs5MvyzeKhNzeK+FlD/fuP0Yj
         RzNe+79LSjPcu8MHUAk0BCETXBB8Mw40ijp2YNqeDwhzplgKKpnkelTik+nWfNtO7hXi
         x22DienLkP16DhEr7CPsYz0OmyHotnnjcSEJM40VbProB0stZyTAfq9SUHf0N9e9LUSK
         MZzA==
X-Forwarded-Encrypted: i=1; AJvYcCWuVNyKcXTaZTBzUJCoWMZR0Kb8GNGAaPofmsRBu4dZSHoetziZiisra0mC+vl3SSB4lpTJihlBTpTq@vger.kernel.org
X-Gm-Message-State: AOJu0Yzbtejg4NV8hfMiBFS2CK4AXZMavThiIEs0s+Egjy/SHu2oE5Q7
	TTWCL6Okfe3pg0ysr5R8LLFC8wYqbZ/eZGob1ygYVrLbFC3tIzujebt4fnGb7DVdj8x9i8ndMxs
	5T0LMtU8i6W3d7ihtIwbXlw6Zy3poDcNThD8D/vJ1HC4Uj+Sw8RRs31Yn+yek2Yj0cLY4Et9J
X-Gm-Gg: ATEYQzyG6821ZQdh4xwQAorbakzpIEgctyIsEQzKTB/QA2xKXHR0tK03gbhN/tshkNA
	ZntpheMC/8bMh2ghiSTcsB3gbGrECIALUeZWav4xkOPZZlDN2XRoycnrDS/SpuQPVovwRNIuCj9
	9tl+JeSbkSU+ezidCCCOjEHhUO/MAZZYCmMhb21mGdNnAdmwZ030JAx/7qfOPaasU8qOBqd0EUk
	XH9PO4b0dSo7oPYUWeT36M9LA1B5ChB+PSQaZE5DjZPIgZHoVoNeU32QFMgdsgVQk0iuIXYOqyt
	OoCOE1JiFOqyAbMSaIblMVicauzrEMk9B9exhPVI7En6nievxNkihoI9hhVe0FkeIFZtgb1IXYT
	LJbdjE5QmaCXQPJZ+92kCeNaPVKnd0Zn0DLdheLvXlbNu7AsCuFJ/nNesOGrwajMObbcHMbhhbk
	qd8n/WU1+HujUwhdAVbBvAnKibX9ixnhAwkkc=
X-Received: by 2002:a05:620a:468c:b0:8cd:b315:7399 with SMTP id af79cd13be357-8cdb5b5a7ddmr1529631885a.46.1773629806588;
        Sun, 15 Mar 2026 19:56:46 -0700 (PDT)
X-Received: by 2002:a05:620a:468c:b0:8cd:b315:7399 with SMTP id af79cd13be357-8cdb5b5a7ddmr1529629285a.46.1773629806160;
        Sun, 15 Mar 2026 19:56:46 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a156366682sm3117442e87.72.2026.03.15.19.56.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Mar 2026 19:56:43 -0700 (PDT)
Date: Mon, 16 Mar 2026 04:56:42 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: =?utf-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v3 2/6] arm64: dts: qcom: Make a common base from Redmi 5A
Message-ID: <75jgqzlkh7xgdtwyqnyny4pp37czkpi7p2qx7givpwkz4fco5w@aaugsmkvmr73>
References: <20260315-riva-common-v3-0-897f130786ed@mainlining.org>
 <20260315-riva-common-v3-2-897f130786ed@mainlining.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260315-riva-common-v3-2-897f130786ed@mainlining.org>
X-Authority-Analysis: v=2.4 cv=euXSD4pX c=1 sm=1 tr=0 ts=69b7716f cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=OuZLqq7tAAAA:8
 a=EUspDBNiAAAA:8 a=hBsfu5BoBQgbZ9FLN5YA:9 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10
 a=zZCYzV9kfG8A:10 a=iYH6xdkBrDN1Jqds4HTS:22 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-GUID: NiaXX4Z9RXccSFnoZna50wmq70f6eVCL
X-Proofpoint-ORIG-GUID: NiaXX4Z9RXccSFnoZna50wmq70f6eVCL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDAyMiBTYWx0ZWRfX2chGhsMORHQp
 eYo1ehHLLvh9fhhUwfIcLesyjF7n5XWYIORxDnazDDVyjcqRlsJ2vIKUGSaKNNnJVQC4Yu9qUbX
 tOmIKQg8BnhJFOgNS5fiObD9C00Qbow8HMilMlEas4GFXYCgS14xXJHrIkXieHj07yeD7bYOR2q
 aX4C8fYVqVhO2dApjVaWwnU/3yHyMDm31YDwfB4sjKJQzK07ihLEq2v6yyJF+0KN2/htONzWlYi
 it1XgsyF+9QLWj2x7BJfBb9i1UoWanX0GHGSJ6EezgMJ9b5igGf2It7zczrkzhRab4FHqLyV0SQ
 N6t23OSVzkFGRqHn40V+yXxETNcoG3Oq9s8qNTwAbbsbQRrNms8GYYSrHKkOpwvmOJkZNnmjSQS
 4MNzJ4s1sbHeHk8VkMdcHDD9YBzaNXKUvxNDrvoYJRWGX2Hw874SB1P8kSTHzs4F6UqxzUu4tMx
 IcvfBNbH0e8xdpY1bww==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-16_01,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 bulkscore=0 malwarescore=0 spamscore=0
 impostorscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603160022
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
	TAGGED_FROM(0.00)[bounces-275913-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email,mainlining.org:email,oss.qualcomm.com:dkim];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D205D2944AB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sun, Mar 15, 2026 at 05:26:20PM +0100, Barnabás Czémán wrote:
> Redmi 5A was made by wingtech like Redmi 4A (rolex) and Redmi GO (tiare).
> They are very similar, make a common base from riva for avoid
> unnecessary code duplications.
> 
> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> ---
>  arch/arm64/boot/dts/qcom/msm8917-xiaomi-riva.dts   | 308 +-------------------
>  .../boot/dts/qcom/msm8917-xiaomi-wingtech.dtsi     | 315 +++++++++++++++++++++
>  2 files changed, 318 insertions(+), 305 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>



-- 
With best wishes
Dmitry


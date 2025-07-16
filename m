Return-Path: <devicetree+bounces-196914-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CEF25B0790A
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 17:05:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A47A71899D55
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 15:00:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 768DC1A01BF;
	Wed, 16 Jul 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ENtc1zwP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2AD0199939
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 14:59:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752677993; cv=none; b=MkznRjfcipUxwIOAGQXK96U1DK/HwroYvPWLY91yqNEq0E3ZIxB3LTMH5f9xtZ9/24yAKoyYw96WrAAavFAvMVNjW13tlZZEUt/7OAeEvwf4nglz7ePh+WwAhszme9sT/dn4HIZfdr4ZzlmedUt8ZiI5LfH9oiHbH9b9MfkBUm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752677993; c=relaxed/simple;
	bh=z1xOyLsQ2NEWMuv9agDhfAfh5K0V7Ewcvyd/GS0+6g8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iuOca9Z6fWPohUs03oY8YsMjQaTEnB/2az1gyMEx+czAIVsbcPHwt3mhiyNsTo5aN7FIonyjFGLQmrf+wZb0ZXIQ8Es+oyQm92uXBYnG1OLW16k6UKCCHb2n3jJWf/RjNo5vtnMEgxB2JYwH5C7eDkfUQWygdhlf6jU6E4NhCQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ENtc1zwP; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56GD1DUu001622
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 14:59:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=WuGVsQmvruWGoUm+mN8dqEDE
	dXmWp9FBOHdzNsiopKc=; b=ENtc1zwP2CYrmFozXCdyLayBkERMsj2s/7G34aSN
	HyX4xgXLwHznVkN7gctFe2V1lOe199NQDClChQkb+lEj3ikyGQK2X82bWSx7jCdR
	1+qhvcZm4+lARKCBxmWYz/nuXwR44w5Vn50d6ToX8klOxuRp4M3KJOeo70GE6r1S
	1SRvikl6XdloQH/hP1jsavqiitAvMV0HAg3ebf8NI0XlqTwKW5BMPVZhNmIv0h8v
	/0XsIq6ZDhHxM6seeeZa4grmfKsEmL4FK+AsOo4inG6DNLU5DU4CQdDin2hb0uVJ
	VbMv7ZKhpx2q5agYS5IWmwuEjgA8UUHBsvMEg16yaKHYQA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ug384fx5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 14:59:50 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7e237c2f4ddso572220685a.0
        for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 07:59:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752677990; x=1753282790;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WuGVsQmvruWGoUm+mN8dqEDEdXmWp9FBOHdzNsiopKc=;
        b=XRhGfVfcrrhOcjrpfVBoWGiznHVPQvKZ2OXt+Esl1AaieJdsmoBKhEQiaTAXgfas4Z
         evq6trLYy7He62GxxArt8FFyncn4+tEJmp5fYEUvIIyCQAJAhFXcSZhQE8MZp1XnQHxs
         RCF8jd8S2TUsMsatpob/G75kAgt22pttVb03ZvADh5ButMVYL7LJwV9JMQQKHWTv2bNP
         53kvkanPaO/T7GKIfE3LdZ2w59KoQ84R2aHrnt0Ixci6kudXQzY3Uqsg7WHpm+ch4erp
         dplb83WtrieoulH5GIvjb8ERI3Cz1iGp3mggGttAx0oidCwugoTPvEXTl3IOXoFX4rtT
         Xyzw==
X-Forwarded-Encrypted: i=1; AJvYcCWNgOnb++2BjtzK8MwxQr2Y+HT85NxnFPEZrIwLT4XIOCtCzYRqNv1J6L1MlWmbXV5g4OtLz1sQLQ+M@vger.kernel.org
X-Gm-Message-State: AOJu0YxtM/3kMHdQ1T8Y+BT6pC6Laarz+K1SgPFsYOvBEPA8V1vRAo4e
	nWRIW4grxQP0PGl6CVkULQE7GxTN71iJNhntUWicqR3FPaPjOXZccERy+ug978sqDfXBciDXO2i
	C2Zo3GMqZt3f/5fgqsaRs9V2YVe2mV4apcIYLAYxBo0zV1GPEp45jil6sfztMh/IS
X-Gm-Gg: ASbGncsWBEThf5AGNwPaU9pjn3VygnPtnaenPV+QO3IA4XgGuZjzzUPCMC05nYkTL6R
	i4AmP41l5bOXXD9PxzoDZqeV7h/41LXDW8ewgpQRAjkP98ebNeV8p7jmH2SDJ1xfJYFJbCSZ3Df
	N7QNzDAEMrOyUouLqGoEltDScpTkXNnQXlmG4jvJ8dyM/yrPzy3QIjKOqTFScVn/TeFNVztPUWO
	6nZdBuRk9GS0kVVYCqFUdd1lPk9XyHGlGhmY0ubrD/lQqKcoJ1Mfs+roYX0Tq2xnAlAzgwziSQR
	6p/hONXVkK3RbNe7GEY5Puh3G2KwI8pofvQFmrX9WsTp5ZRzVTCBIIwsILzDWsCD+BQSgq39Bu6
	vEdGt49fH4ong1A9Idqbxd10CPwBX+3p0kt3uRYQEcU0PDPuOWI2q
X-Received: by 2002:a05:620a:6501:b0:7e2:814c:1128 with SMTP id af79cd13be357-7e342aaaa08mr434964985a.18.1752677989746;
        Wed, 16 Jul 2025 07:59:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFrHmKHxpa624AnnTtpLvo+zOY8qqGnIXbP2uifVTrJp40Mq8mYDsdHQz7DZhfYPOjT98n0og==
X-Received: by 2002:a05:620a:6501:b0:7e2:814c:1128 with SMTP id af79cd13be357-7e342aaaa08mr434958885a.18.1752677989068;
        Wed, 16 Jul 2025 07:59:49 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55943b635ecsm2658518e87.166.2025.07.16.07.59.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Jul 2025 07:59:48 -0700 (PDT)
Date: Wed, 16 Jul 2025 17:59:46 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Arseniy Velikanov <me@adomerle.pw>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Luka Panio <lukapanio@gmail.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH v2 2/3] arm64: dts: qcom: sm8250-xiaomi-pipa: Drop unused
 bq27z561
Message-ID: <c6od65q2e6bnz6jxq65ox7burhjavjmooe3vq6nhhfq3ikglz7@4ufcxbjhp23o>
References: <20250716141041.24507-1-me@adomerle.pw>
 <20250716141041.24507-2-me@adomerle.pw>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250716141041.24507-2-me@adomerle.pw>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE2MDEzNSBTYWx0ZWRfX9g8ifkY5G5ch
 i9vCbgJ4nW3I4XFda4dybdKHD8KdDNm5a1w7ZDNnRlW9O3LDGpr4WqaVhq++w3b4bS3+G44zWSZ
 rzLNgRXySt3FPbL0lILrBqys3+O6JPeXBi1k8smkbE2PlrW19ng2wESrvf4WrLeZP5j2ef7y67Z
 h6XjTKPKZ0utNVyd+MdG6l4cIT95ZXdJbv+jWq6DDKhmLmE7o4pXfED5RQ5MPkYeoWv+ySAdSnd
 T8/8O4HyRn83v/CWpoPpsYVMKOjx8ocV5OwLaTyWcOv7Ct5xdmNpzgYkb0h5Xr1Yq3cDBwCKVSj
 fSmvIWBbhemvz8R+VYa59PS9J5gHp3REXANyNWBhB+r2Vwxi47unENoZoEObrZp1sT3gYNTO6hc
 bn83d/bpQx0ArFhQoFmL/ALUjmPtmyeZQ5MeoxbQ5xubhFK7nlhwgy17pCxOKkahfo/aqBo3
X-Proofpoint-GUID: b3XDkJEvVx0mls53VRNQXxNRnddVobwA
X-Authority-Analysis: v=2.4 cv=SZT3duRu c=1 sm=1 tr=0 ts=6877be66 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=pGLkceISAAAA:8 a=9pW74NbYAAAA:8 a=EUspDBNiAAAA:8
 a=N_Z-4l7e5lD0AiT6xuMA:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=67o8LzlnqLyy2xoPAWJp:22
X-Proofpoint-ORIG-GUID: b3XDkJEvVx0mls53VRNQXxNRnddVobwA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-16_02,2025-07-16_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 mlxlogscore=850 mlxscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 adultscore=0 impostorscore=0 malwarescore=0
 phishscore=0 spamscore=0 suspectscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507160135

On Wed, Jul 16, 2025 at 06:10:40PM +0400, Arseniy Velikanov wrote:
> It looks like the fuel gauge is not connected to the battery,
> it reports nonsense info. Downstream kernel uses pmic fg.

If you have to repost the patches for any reason, please sched more
light on the 'nosense' you are observing.

> 
> Reviewed-by: Luka Panio <lukapanio@gmail.com>
> Signed-off-by: Arseniy Velikanov <me@adomerle.pw>
> ---
>  .../boot/dts/qcom/sm8250-xiaomi-pipa.dts      | 22 -------------------
>  1 file changed, 22 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry


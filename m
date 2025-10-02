Return-Path: <devicetree+bounces-223248-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F0C4BB26CC
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 05:21:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D82361C6851
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 03:21:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D538227599;
	Thu,  2 Oct 2025 03:21:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QOyO6eeJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4623635965
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 03:21:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759375264; cv=none; b=YszXQwLdkV46uZW6y/NVNyBy+beIoIwq+14tmhXVsjvJGeOSWyMSYKRT+6+JOoZvh+6t5bzYC24xoN+1U8fYcp91RvOGa+p82xaVKZCbwxVg2/h4B6cWTuXVWrRcuF4GOjm/8bcLojyAafKdJx0ZoG19s8JLVtBr0ELYidzAiGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759375264; c=relaxed/simple;
	bh=4OB98gy4e2/1rS/SKiKX1WzaFtLO7WAftK7JAWaM0DI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PRn14yNx5ZUtTV3PjgGh7k+A0CAIvgLuzE0VU6lar1YQWcTySyAV96Ci1rOnUAkzpYvidoB7nYv25ql8zzbV/3Fvpfe6a5cUN3fjzxy3abdtQ2/LE8ialevo+hArl8eYI6tqUfZui4f9GlQlOV2q416cLHuu7n5UiamWFLb0DEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QOyO6eeJ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 591IbvGI023416
	for <devicetree@vger.kernel.org>; Thu, 2 Oct 2025 03:21:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=MadjmTlGyYj9vNqf7FS+yHZf
	TOeoUTWW+o+zA14y1nw=; b=QOyO6eeJhYeUSOYQXBuLGyU0HOrgAnoCNQByx4Jr
	aKyoa7j0shTN+8iOxcTC/Sof6bS/iEAF3sywu+fJoJhkURssGNfShWAxkV2mTBYt
	eO9uZ5iXdX9M0a3/32hjV5URbND8b38gpKjHAUXdrZg65kLNJzXS3owewbGnPMUy
	1NvQKwxSjeiarbT5EsnhCM4uQKBqjwx3vzQBxr2QaIjcCai02HgSZedJjvGsPGVx
	iwynO3huDsJvCJR7MYGo84JK3KX0cE9CSJTXYZriGBldfeqmg7IEhS+w+V7DBoa9
	NETXPyKnkWGfy7M6EeImtiD5ga8yDCvVG4y8RjDXx32qKA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e977xct6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 03:21:00 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8645d39787bso152549885a.2
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 20:21:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759375259; x=1759980059;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MadjmTlGyYj9vNqf7FS+yHZfTOeoUTWW+o+zA14y1nw=;
        b=hzkCiYrMGCirb5PsU0TCAtsE8OjPR5yKWSSyOiFkaKY6CHWahWZbGjYFENIcOJ4i89
         PBMkiGfcHT5P7+6kNjqrabGnzBuX60gfJoRnaZMORCFA0r0t6LsQgjJxMp5m2ffHGUKz
         2ZvAGAFe4iBIOAvZ7QZyk4xOVqvW4P96/LPvy3BDGjE1wLVuCvL+Jtwr21FhrdCCVexc
         uG4QbAKvxS5ovkAM0bA1z+mciYgSvXE3Pv8eNFIfIYLmagt4wqNyEn7C6UoPZm3M5Abm
         iSgzgv3Vu6+w+B+XudxJl//u0OAgBGAMFA/kmohckomjwG9SIdWB7sF32gDyP01t7nm8
         lo0w==
X-Forwarded-Encrypted: i=1; AJvYcCVxXti9nFlaVHNQopUDQJ+Hqf20rw+TfRosPgj3q/fqMLbdFbx17LInxveMjCxPTvgDbndIbolvvjXX@vger.kernel.org
X-Gm-Message-State: AOJu0YxidnMI2ibFssRlk56bdgEyb71OuaOgiDVZreWiJqTPRuP74web
	9K4OYhfR7fHb6y38sQrGSOYp94xuE+d1WcY/utWreFHejNi1fqDN3IGtQCugNLSfjeProseBjVr
	yfgJg/Bn1eIYOId/EF88qLl+eSgPAlcIfzouxnGlCbaXkVkdzdmqMmeMD+K15xoRI
X-Gm-Gg: ASbGncuEdf9vf7BlBXp8X/tRjbgqBJZAFdj2b+enuL7htdLGs+6KzmgRhiI/MZbiI+w
	I6EGa06FfPdWUR0fAQ4vzb77pj55DXT7rLdF2vtIY4VgLlkiNhcvNlYDPCWu985kzialSpddyEd
	9zSo+V+PQAalnNJKqj7CJFM0jqez3hjmwWSYkj4eYXw4HrHKJWE7J2sIlbyIZfP7icREYW3s5L1
	XBOgZJdtGmcaC2o+53zsOwqqFzSA/X79auKzAJZ48mBclqpzLWdMWaOR224efH9QfMCzG001fGv
	fNkzIbcmziOvkez5OmaTrDlKAtAET4JWluA2SOldA7PR8raMr1Y2GSbXmjNnoW/8hUdAjEj7mA/
	jCXxEVqZOSnevK4Hq8xEZxsp80uprA33u1Vu+gH017ReK30T2bD+N4VPLMg==
X-Received: by 2002:a05:620a:28ce:b0:809:7ac4:e5d with SMTP id af79cd13be357-873751a3f72mr827104385a.38.1759375259101;
        Wed, 01 Oct 2025 20:20:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG+9KdqXQAvgAy91aCrCBMNPDEVwnU2TL2BXZwwnc5jZ0pwSHdM2Q9U86P8T0TmsQ3kUHLwbw==
X-Received: by 2002:a05:620a:28ce:b0:809:7ac4:e5d with SMTP id af79cd13be357-873751a3f72mr827101885a.38.1759375258476;
        Wed, 01 Oct 2025 20:20:58 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-373ba4d4ca8sm3459121fa.58.2025.10.01.20.20.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 20:20:56 -0700 (PDT)
Date: Thu, 2 Oct 2025 06:20:54 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/5] arm64: dts: qcom: qcm6490-fairphone-fp5: Add
 supplies to simple-fb node
Message-ID: <pbu36yoruuqmik5pzpk3jcl4a4kpatigrrkoco3ikf4npvm7os@soqqf3j3m7yv>
References: <20250930-sc7280-dts-misc-v1-0-5a45923ef705@fairphone.com>
 <20250930-sc7280-dts-misc-v1-1-5a45923ef705@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250930-sc7280-dts-misc-v1-1-5a45923ef705@fairphone.com>
X-Proofpoint-GUID: Q5NH-Revo8gufZmghMgc5UDBxKLwZ_-E
X-Proofpoint-ORIG-GUID: Q5NH-Revo8gufZmghMgc5UDBxKLwZ_-E
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDA0MyBTYWx0ZWRfXyswb0+0l5GTE
 LGQA5eM/GVTIfxTey3QLANVZefsmE/I+2xbviU+QS2S1Kh5BsAZCtdRawEz1bxeMIpv6H+/wo2H
 7rOjcP6eggoqK0DupjhOydtSqDGE4Hpq42WYHnRGWUuztKcG861MkynwfcESpBu7zUtfdHbigml
 7YvOCeqm0j7UJY7WdKlzBoL3kBOziIKmbKmiDDwTYpOuPN8OripbmnYxEOdnB01ODOjLvS4spa+
 cQMOVKhbUTu6Wq8ZaEl4LYxT0L0tNJx53vRrOHjSgTtaiHtYAjN32mLjTTO33IX2/xKRUW9QwQY
 OVI4ee10mogkwLXHozpvvtr7nA8uuuo5enJa1Fr73yaP3rxtU2hnUcDyR2aKkbw8+wKtilZXOd5
 l/ZorsWaIdO+tkUR8w9fFSobmR2M7g==
X-Authority-Analysis: v=2.4 cv=Sf36t/Ru c=1 sm=1 tr=0 ts=68ddef9c cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=4pzNktNMXXEreR8vy40A:9
 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-02_01,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 suspectscore=0 adultscore=0 spamscore=0
 priorityscore=1501 malwarescore=0 lowpriorityscore=0 phishscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509270043

On Tue, Sep 30, 2025 at 03:57:01PM +0200, Luca Weiss wrote:
> Add the OLED power supplies to the simple-framebuffer node, so that
> the regulators don't get turned off while the simple-fb is being used.
> 
> Fixes: c365a026155c ("arm64: dts: qcom: qcm6490-fairphone-fp5: Enable display")
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 2 ++
>  1 file changed, 2 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry


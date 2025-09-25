Return-Path: <devicetree+bounces-221665-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AFEFBA1B22
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 23:54:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C2F77624B1C
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 21:54:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5217A27145C;
	Thu, 25 Sep 2025 21:54:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CBGGbHfO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D188625CC4D
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 21:54:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758837289; cv=none; b=ivZKYAsE0QjWhbVhG0QMltAHwpCC2ypmOLWmDSCVsSIeD+Ciw5YWS/NN7kmmjphKayquZLzIXihDd7fEvAOS0K0wRFRQ7ARuQohFRduUwnWwItLse6VJQhEERg88Hr+sQQpAO2FCJN4GSy1AkcO70+/RSc4JHCShBR+DOhm2NUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758837289; c=relaxed/simple;
	bh=PtTkvFAxmzVKWuyPXiOlHFi3dHU6l4N8I+W0hW8tJao=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=A023HTrZSs5M0HLH/Ofhufo0waPKs5rVkGraRIiB5WmeNcHzabZ7+zBapYGkCML3sxYn66/rTl2dncHXBQQQpCRIJq6qKgeg1jSE3zpxq4sZi80VpDQesXZg8D/4RGUtaxt1dAJgo14DbjaNmrap5zUv8PoOFSU7DeRjoBoTYNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CBGGbHfO; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58PIPokj025374
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 21:54:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=WK8fdvESA/OTliyL4dPj+6x8
	FLgnKUZvKWjsZ9ztQ+M=; b=CBGGbHfO5GieknXvJF57m5MG499qdch7gyJUxhyb
	g3jbSoSR02NbwiuFNxMLf5vGv/cD/MCt/137RrgBTFeOzk7h7up3903PMNdBT8CD
	SsgSMsRHjCADg2+8xHMXpzHACtm/vVWrgnzKPkXTHjk3wrrkochuAkr1TclpQhoI
	/xhZWJrkdG2oQqHjnIlXzQ4nr33rf12853oHOOKnqeZbXbbtWC/1rdVzFMBika/K
	msY/i/pQEEafSDhvpN2D2ZjquiboQqH63dqGJ5heFR+P8NAkX3uQBWHiJrrWzJCz
	Sy+l575LGFGEh2laL7WHJYS8qwFSo5eXchAhuGnkazU4oA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0u0gug-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 21:54:46 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4cce66e91e3so48090281cf.0
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 14:54:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758837286; x=1759442086;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WK8fdvESA/OTliyL4dPj+6x8FLgnKUZvKWjsZ9ztQ+M=;
        b=MrLlTdV4h6FLli/mbyNuHB6oHKDvg05Ku8g20eW5nkyxOge0GnhN8OFdi79FlVOGCB
         qy6hoOgtmfXyitMuUKH2bpMUPZr6mTrjih8bHVeXGKTKySVnUraqyAz2MxbgHjPCtt8j
         5QaddaAqP4GEOFSmtZ5CJt5L7PYmlNIvTITBpwlxDEAjhmvYD0/pS9SmSBkpsWf72EQ3
         kTN29KzO0nAoN3r2cFm3hZessG0wdGhUZx8MA+azUO623688TqF6GFoyFj0b8EluBfGN
         eqpSnIXNqCKqRCGQvQq2HtZ2nbLIxvg2f5P7h6r6PycDEOmX3+n/3GijTY6FQM6z3UzF
         F/kQ==
X-Forwarded-Encrypted: i=1; AJvYcCU5gb7p2Zzuk3jHC+AEY6JVfwR9UF2b8adyg7HpBwZ4Bp1vT0ZcdGryb0bP93fHC5LtVv/Ib0IlRRvN@vger.kernel.org
X-Gm-Message-State: AOJu0YzNAUkR1mJumBfK6dzncVbobsmg19OUuRu0tdAD5NBfUGyvjVqy
	NbTNvaX7qdujvYcK2ow50zFxmJUrptjkVNFjjD7j0CywRZ25GIhcMpiOaQWsnLAs7jvfBWGv4Hr
	VB35ir8FqkKE2KQlGFwDCgxpqzNDY/t/O7n4ZJ7LpNTHby68kdjVaANoVRIJNHpw1
X-Gm-Gg: ASbGnctwmhoU9BsQKEpO8cl3knF6b/HiUD1MjZ3G4MR8gbVigV7jgL2PcbWH/jv3Nk2
	r5f4HXTQbVWeQvJCHRMKB32H1DAH7FvlbTv7YY5zgUU7ekZ6yeLo5izkYsXBuz0c4I7eYdQsgar
	eHJZCZ+4jxakgT6vfFR+mX8o23Po4+woVBANRqzekoWKpTukxj07gC389vi0Ot9Gr+by+TTH8UX
	Or1TPub9g0ETg/7GXJ4aNLh6cEF8xO3S/iG56OaIoz6l8iNbilSalcbsbIy29Q/B/0rN0F6hDAs
	9q8YIl298EXVOGzW/9mRCbfGELs8vLAXrAPu7OEgFDnvzC4kQv0qycC8f/F/5F7ixQGbEKGD7rl
	8BfdlB+CHecGtihqPEoJt9ZMffVgQjzzRhwCNSIlqOPVlu2XxVpGy
X-Received: by 2002:ac8:5d02:0:b0:4c9:a975:de57 with SMTP id d75a77b69052e-4da4b8095fdmr62826121cf.40.1758837286032;
        Thu, 25 Sep 2025 14:54:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEIHqvgghJCvaOUOze81nukdnXAC7zdagDIbBSgvwres3Q7gPK8kP6rfKMTox4SKyvbSZXPWQ==
X-Received: by 2002:ac8:5d02:0:b0:4c9:a975:de57 with SMTP id d75a77b69052e-4da4b8095fdmr62825681cf.40.1758837285529;
        Thu, 25 Sep 2025 14:54:45 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-583139f99c1sm1117472e87.35.2025.09.25.14.54.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 14:54:43 -0700 (PDT)
Date: Fri, 26 Sep 2025 00:54:40 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Subject: Re: [PATCH v6 06/14] phy: qcom: qmp-usbc: add DP link and vco_div
 clocks for DP PHY
Message-ID: <soor7srlw3hoqh2onmn4ki6d6mp6psmrbz4simwvvemcy4s5hr@pzabx7comvc2>
References: <20250925-add-displayport-support-for-qcs615-platform-v6-0-419fe5963819@oss.qualcomm.com>
 <20250925-add-displayport-support-for-qcs615-platform-v6-6-419fe5963819@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250925-add-displayport-support-for-qcs615-platform-v6-6-419fe5963819@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: qSyiCvzY1hO8-kvA61z1-zEwhk0lhCE-
X-Proofpoint-GUID: qSyiCvzY1hO8-kvA61z1-zEwhk0lhCE-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfX3B6Fy3dHjBT1
 T27qvBtHHQQCrMCCaaV2MDozIODDOToGGKhWcc+7RoGXvQWp7CxKMg7jCTSiSHUok3r1iMT+ZXV
 W8Siq1OiyZkMr0Dsv2v3nHWMZ8kC1bsLji4fdQ8KSAgOjdFBYe9ES8aBaSw8HmAlUyiWrj0ZYcr
 qyradaHc/Wh0UM5VDdGCPHZTrI47NTb2E5CodbVg7lEfWvRExoYB239lKnS+r8i3xELbh+n1YBA
 WZtAjpeaGGkR9fRM6rrAlQLWD2TmhAqziZvR4jH4SpJpH0E037rCmwGQC6jIM8Q8YTaQP61b0nv
 ttxN3jVoFfn0HIJWf2wlVz6b818wJaI2hv86UnsRHuGYJS8C+o2GPQGduH6toEYwPvTlRjeEcKq
 fQr9ArQLVwDMdX62WFnTFD80fdlHAg==
X-Authority-Analysis: v=2.4 cv=ZsHg6t7G c=1 sm=1 tr=0 ts=68d5ba26 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=Ig_1WL0MwRJ8oiofZPAA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-25_02,2025-09-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 impostorscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171

On Thu, Sep 25, 2025 at 03:04:52PM +0800, Xiangxu Yin wrote:
> USB3DP PHY requires link and vco_div clocks when operating in DP mode.
> Extend qmp_usbc_register_clocks and the clock provider logic to register
> these clocks along with the existing pipe clock, to support both USB and
> DP configurations.
> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 210 ++++++++++++++++++++++++++++++-
>  1 file changed, 204 insertions(+), 6 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry


Return-Path: <devicetree+bounces-222862-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 97BE0BAE6E3
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 21:20:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 13B081944CF5
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 19:21:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7DE027FB2E;
	Tue, 30 Sep 2025 19:20:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QvqfauCo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF8D2853EA
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 19:20:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759260052; cv=none; b=D8deC9fXNpRT3lWVIcBiSfWDBUwkmyi64vOXNp2roVcLIc/nIFuXNZxk4xnQk8Vgu9kE2zJfGsTzm/Q+ARtBJEHHwhCDUH+l3F7YSTDqWVAqpqGQgItfg2/A3YN81S+b1OqTN2euGIRZ4p4/CVm8TffzlZTwY8nyrY7KbDyoZlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759260052; c=relaxed/simple;
	bh=4tUw/b7NIJ5cITKTzV2ZIfg9qQkiXrTbCT2hGU5nEvs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ExajpXSp78kLrDguo5L2dCM3/5OOzK9XOVuDxorRYm8PAtvg/op/9wrPnp44H+YrwL0YP5ihXAaYgaCSM/kfG6papR46n46EIGlj6bDlsab6kujKM6sKok2XET6Bfhv6mL/9dK8gs5okJ/brcFgCGtNMtoCWLxqzAjkO7zx2Fe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QvqfauCo; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58UBNjs8024766
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 19:20:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KVXK3wyj4xgxBO/QQE/5ijkihmvihUgMziMTP7OJVrk=; b=QvqfauCoLCsFHunX
	BW86ook4l0mDvdjjOiDOGqcsZnMBR0QjXPr5w0Fh1ir4MAaYUxNmE6N3CorKuHcS
	QKTAtV50kLvUayA/gTgxQnrycTPzg4KvRmimnmFUCiVKhAEQxjHx4tdZxfvES3RG
	oTFF1PIpdIK82Q9Z7I+5YFb272irfvWvirWb4OkSI+9/Ldi9J8ogcHCM3H6mbGyw
	K1vSOcf++D5HqneStj8qqQlRJKQLOQ18NF3asMJW1gRAIbj9R/P8vwxt2OBXCsX2
	UTiu3mKqXDwbiLQ+13xAqQqmcQTt/j7yeCJvE5wF2yAzDnBMZ6uXPiee71XLOU3w
	7VoiXQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e59n2k4b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 19:20:50 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4e0fcbf8eb0so71990541cf.1
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 12:20:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759260049; x=1759864849;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KVXK3wyj4xgxBO/QQE/5ijkihmvihUgMziMTP7OJVrk=;
        b=QtpI1U8C8Vh+51jWemeJtE/fQMVP2Io1LgqhSqOqWr8WtgeFFFWcLibR4s84v057j+
         PovPMwIF7thH/wdOKWnm6oR0MDmJI3wO6vTKgIKNZ/Wx9T0P/fy2OqRkbLdtYyEYIubf
         6j7YEPqvdeX/Wf/lLCX524Vy16fDyhzQth1wiAhAVXBdTdL8/8tS3CRk3Viqc0u0j3aL
         cIorZWsVMS2PiNr4AIxjleoENH1aoN+i+pYHpcj2T5y1cps2KsuLCfY77SrKV57hmeN8
         5VXiqDqW1uOVdpMrJ2Q8xwBktVpNFD1Jq+CCA8LLJw1p7aDSWVuPEAmW7JeLhWhCMETH
         a0sw==
X-Forwarded-Encrypted: i=1; AJvYcCX17DDcc+O6TWVZrc7myCKZ3ZcwupFla+jIs/g35wJpgw9euAYmV7olIWQQ/hNK5QRmQYwJ1iYJdkuD@vger.kernel.org
X-Gm-Message-State: AOJu0Yzg95Au2IAQwYrFrfuzeKhVrgN8tb8SJBFtKzv52LPToxrqdcJh
	GyG8b/0h0YmuGHb6OK6j1yHsckL3hnezpJAs29Ls1oCwCmnwCjjnLoF9V3HWHfsVISXrd5AV+hq
	S4R804GR3RQgNIXARNPWYB5Gcj9mg0khqZ95CrVNWmPEzgSTlZ81jA6BoihbnpVn9
X-Gm-Gg: ASbGnctnkYPUgsgA1k4G8vtvf6UptPYK/k+Cy4pxVhqCM3kcTrF/F7m75wLWwTyhZk9
	GcR6zWm2+0Y1cTNgUiiFbv69dsB0JMccQvBlUI5UsqkuylcSKtkE1MdjrSTe1GdSPLhrIZ6OzzI
	TM8WLPQC2Evh7txXnH8AnbV/xWaDkVcp2P6/VmmMeAoxrfFlZ2MFssvmoJBGM+k/9WQQsXhBIOx
	OtAt0UY2nEyzPF78M1Iu9FnTy1QRwXOq/HfydncpgNF1d41m/JGqofanOuTpMjwdabkvwyxlOfU
	BPsK9Oe6Y0fAkbz6LzCfWgiX1zdkb0a6dUD0H8EVUFa53VnIXGQQX2wsettZjWmf/Q5VF3aTDaN
	DVoo7q1af1toOkWI3id2WI6mgnUgE6GbAZjphSTy4CaT+DXxxURs9xxWJFA==
X-Received: by 2002:ac8:6906:0:b0:4d2:d413:1f3a with SMTP id d75a77b69052e-4e41e256b01mr10937261cf.64.1759260049473;
        Tue, 30 Sep 2025 12:20:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGlv8GouDfLH9jxcZXz4sZ9qg6O7hSAY2xOrBu+sewtGI48yKBVhvRDPT2OTQMfLyqgcLMpDQ==
X-Received: by 2002:ac8:6906:0:b0:4d2:d413:1f3a with SMTP id d75a77b69052e-4e41e256b01mr10936801cf.64.1759260049035;
        Tue, 30 Sep 2025 12:20:49 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-583134310bfsm5244156e87.26.2025.09.30.12.20.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 12:20:48 -0700 (PDT)
Date: Tue, 30 Sep 2025 22:20:46 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Rob Clark <rob.clark@oss.qualcomm.com>
Cc: Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Sean Paul <sean@poorly.run>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Jonathan Marek <jonathan@marek.ca>,
        Jordan Crouse <jordan@cosmicpenguin.net>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
        iommu@lists.linux.dev, devicetree@vger.kernel.org
Subject: Re: [PATCH 03/17] drm/msm/adreno: Common-ize PIPE definitions
Message-ID: <ftbecn7dlcp6pqtpfl5v7kv2kevz5m4yqcy7fg3atkdjabkt67@zqwwostqqfou>
References: <20250930-kaana-gpu-support-v1-0-73530b0700ed@oss.qualcomm.com>
 <20250930-kaana-gpu-support-v1-3-73530b0700ed@oss.qualcomm.com>
 <xsgnpvswvkyuxiviv4uyb6pxbpi646fut6dy54kpyfisqrxycz@tyfox3zdi26e>
 <CACSVV011=_szCPbdm6YA8aJjm76r_BZP9QFeOzcAGCvqUUTebg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CACSVV011=_szCPbdm6YA8aJjm76r_BZP9QFeOzcAGCvqUUTebg@mail.gmail.com>
X-Proofpoint-GUID: TI3ea7aWHwNDxxYFOFuWzPVh5hSw0ceD
X-Authority-Analysis: v=2.4 cv=O4g0fR9W c=1 sm=1 tr=0 ts=68dc2d92 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=IkzWstXsGuqL4x2q7pEA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: TI3ea7aWHwNDxxYFOFuWzPVh5hSw0ceD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAwMSBTYWx0ZWRfX+qtLi5Pc2r2w
 NyBZzvyOzJbIaMhfNx9vlcLnR0jpmn++We7+oPRo2aaQV0gCHEEySiedKzH4aPLdbDLzKbuEtUR
 wedq5Qbapt0NA2uCaTqNanTKHbDAfXzs+Fy1koFQDKoqEmNH2HP4Q2IW7mSfkjCiwNxJRxO808S
 t6fcJtOBe7Dxsl5Kk6WMmjeG5eBOsWKomClGzKt/q88xnOiBcYmswTUJzmlA7glR+8goi4f3xB/
 h15gEbumDSq1QkSrGr8KKLwuzG3Cs17HdfbgB+4qa3gGGAByRWKs1DvEdqJHiYJmvp05SuJu3Bo
 isWo1yI/9JmEqkHgt2ixZbFbPEvIbFtebCCwp6X46NoOVXH8W+7OnI39l7GsARt01ljBAtSRd0B
 h54qz94bztkVO8dqRTH+vkS0mH0oCA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-30_04,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 clxscore=1015 priorityscore=1501 lowpriorityscore=0
 spamscore=0 impostorscore=0 bulkscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270001

On Tue, Sep 30, 2025 at 12:25:55AM -0700, Rob Clark wrote:
> On Tue, Sep 30, 2025 at 12:05 AM Dmitry Baryshkov
> <dmitry.baryshkov@oss.qualcomm.com> wrote:
> >
> > On Tue, Sep 30, 2025 at 11:18:08AM +0530, Akhil P Oommen wrote:
> > > PIPE enum definitions are backward compatible. So move its definition
> > > to adreno_common.xml.
> >
> > What do you mean here by 'backward compatible'. Are they going to be
> > used on a6xx? a5xx? If not, then why do we need to move them?
> 
> Newer gen's introduce pipe enums which do not exist on older gens, but
> the numeric values do not conflict.  Ie. each gen is a superset of the
> previous.

I see.

With the updated commit message:


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>



> 
> BR,
> -R
> 
> > >
> > > Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> > > ---
> > >  drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h        |  10 +-
> > >  .../gpu/drm/msm/adreno/adreno_gen7_0_0_snapshot.h  | 412 +++++++++---------
> > >  .../gpu/drm/msm/adreno/adreno_gen7_2_0_snapshot.h  | 324 +++++++--------
> > >  .../gpu/drm/msm/adreno/adreno_gen7_9_0_snapshot.h  | 462 ++++++++++-----------
> > >  drivers/gpu/drm/msm/registers/adreno/a6xx.xml      |   4 +-
> > >  .../gpu/drm/msm/registers/adreno/a7xx_enums.xml    |   7 -
> > >  .../gpu/drm/msm/registers/adreno/adreno_common.xml |  11 +
> > >  7 files changed, 617 insertions(+), 613 deletions(-)
> > >
> >
> > --
> > With best wishes
> > Dmitry

-- 
With best wishes
Dmitry


Return-Path: <devicetree+bounces-221664-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EE6BBBA1B10
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 23:54:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A3E006242C0
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 21:54:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 121E726CE11;
	Thu, 25 Sep 2025 21:54:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lbaTtvra"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82BDA25CC4D
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 21:54:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758837258; cv=none; b=cOyqicRkBuV364h6GufaG4uu94lghnJJR985/Q42DaznHdrqQB0J8s9UM5mj5MzzOgidNCgkstO+MWnADijKjsh7Xn6G4GJ1zGhPOI85wllqlrHPEEOIrWAyqaMjmhWh1XlArvADxnpHlUHqQbPXs8O21sZpbKV2MkPV70UddfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758837258; c=relaxed/simple;
	bh=QeCnORvLJZs/1yAIK5MJvGXh77e73NS4/ETlZdo7tfI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IpR/izl3WsGlIpTr2LSkT6x8E0yNUzDqDhucZ8jDZqtTfMSb5ru7K5/upylPxlkn+Vlpx61Z6v3wCGZySy2b+xFvMBf8hMLXDLKc0tl6ChjY5KEN67d1l59DKa4i+tQbDswzpbaI/VSn+5Jmrx+5pbBQesj7NIeLqioLDZ6mUoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lbaTtvra; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58PIPl9h014738
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 21:54:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=V77Z5Ho34wRfniMvExHw0L93
	ufuCYBEpuq3QobQDp/w=; b=lbaTtvraUQayXHdkdf/MuJVtN5609Gsu2GmI7Hb5
	gcfmYkWM5XUxTaHzt5TGMeg62HIZfX/rsZsKHXsV+bvLp7/Lg1NzvLWH+A2qr5a3
	Te/HCFlvsOOpdA17HBEgzTCWJs8/NVckMd0WiTCBqWQmt1KAbOgqMFik0OrlorwN
	9JdyOiLjKtR6nuxbgY79eRKQcWfD4m1SPJSpAUT1xz+cRfWkhxo9Vds/RVO+cVkv
	0Hac2LP0/f7c8CiSClOfSAPsGWkfn9/u9UEExcTMjLHFu4ooSlo3VQXYwQL4AAgf
	kctlhSr8mP/DTa4Hhv14X6I99W9gLs451RIRgfumhDJ/7A==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0t8h2s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 21:54:15 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4bf1e8c996eso30693351cf.1
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 14:54:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758837254; x=1759442054;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V77Z5Ho34wRfniMvExHw0L93ufuCYBEpuq3QobQDp/w=;
        b=E2ztQZE7aIHlOdhtgZ4q0E1N4BbyoVSJ90hbYFkC+UzXQ5tOKPlVEaeU8wsOAwdjER
         4p5bM3q3EzOLWfQA/cuNBbMhh6wf4zmWMXGkb6N5N/hXps7x/6UoN58IWJDuWJBLUVGj
         Oszz/UAyiw9IvObSMtXQRLXTYnE4y1MP8Egchmh7egFwEGE0Lo1GsmFOLDhvFflrrvEF
         E2+ifBvYyJMJVCvVoRLRaGycf7xk/PptoWUD02P75GPAPJ53XgZa3JHcPfnzh6qbmwLE
         pWRo/kWfvgMtpCsQolXDacf7LLVDrB5m3ff0t0lpv5KHytVnrHh7xb1X9CgAs0p38u7H
         UTsw==
X-Forwarded-Encrypted: i=1; AJvYcCWaqSxNGvi3ZHMOyshgqp3mHjplSlJUnFySoompEP0frC6qptOrR8oMwMaFqxA9omvO3VeEDXrTzj+S@vger.kernel.org
X-Gm-Message-State: AOJu0YzqjLoThXSozucWD7M3E7Pa4IEeI2Hx2ar5OJQB7euuIK4CLGyO
	XFSygObV3ZMWRs407ypsuhaRoxTP6cqUYbcA4hoSkhxP3qIBobQ7HmtWgdC/bZ13zhLl1kKWKTg
	xAdp9MRS400DSSu2C7eSssfx380q/t1CysE4CFyDXpE/LVP/1icIcUYjL3KARTtlp
X-Gm-Gg: ASbGncu4PpVq7opDge8q6rJ4B61M1WGOUh6suBsDl4TQtyNGv9zXR4UF3cPQVVfbzOd
	tg8Ll3U1A5JbVsqXH06JBkHopmzfuO9QZnDbWzvVgCFSYvEoD6VmQY+2R0xNKDzfOkYdSAyXKXo
	USN2uKa3ZKpsbDuF/z1rK0sUBSjMH/Q3wD4wplza+GNZAlUMxsaALgVEpnH+eeZJr6TmwQbkdKL
	/BBwbRJYgcnXy/NhX0qghfp/MGuJQqx53b+pR1/VnWdAuzX8PYzq9OGubuwfY8fSZo33g9z6nRO
	eYoCFoSFMkAiYFAmqfVGjr7JcKY8l9ZBW6Np4nhSGKh8whXGsV2k+a0uqB4LXzWoYUw2wzkzjdg
	D45mA/OslfTfAcog4YK74PY3u9ujMmEqScqOTiSG4pFFVm83m+uIn
X-Received: by 2002:a05:622a:1a0f:b0:4b0:da90:d7d with SMTP id d75a77b69052e-4da47a1a220mr67870101cf.3.1758837254444;
        Thu, 25 Sep 2025 14:54:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHyFRxoSrrZVyL5ZFN8zm6WyGWU2qPELuXqbOoO1z14tsOOdtn0pbtF7AxjejfvrN1FriBxtQ==
X-Received: by 2002:a05:622a:1a0f:b0:4b0:da90:d7d with SMTP id d75a77b69052e-4da47a1a220mr67869871cf.3.1758837253974;
        Thu, 25 Sep 2025 14:54:13 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-36fb4e38b04sm8222961fa.15.2025.09.25.14.54.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 14:54:11 -0700 (PDT)
Date: Fri, 26 Sep 2025 00:54:08 +0300
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
Subject: Re: [PATCH v6 05/14] phy: qcom: qmp-usbc: Move reset config into PHY
 cfg
Message-ID: <d72npzj56ng2lxsmbmu2l43ebag4cfyhou5322kbpsutn3nwwf@oi5ibgajlfos>
References: <20250925-add-displayport-support-for-qcs615-platform-v6-0-419fe5963819@oss.qualcomm.com>
 <20250925-add-displayport-support-for-qcs615-platform-v6-5-419fe5963819@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250925-add-displayport-support-for-qcs615-platform-v6-5-419fe5963819@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: VZkfL28fEifj-P0Bhlr2PdL3SnEorj1r
X-Proofpoint-GUID: VZkfL28fEifj-P0Bhlr2PdL3SnEorj1r
X-Authority-Analysis: v=2.4 cv=Jvz8bc4C c=1 sm=1 tr=0 ts=68d5ba07 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=VJ1vJixsNvIt-2Mg1ysA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfX9GIjJa8tft2N
 /NJYAKoKowVx6nJj1Kmf/qURojJ4X7m6h+Szzii2Th+ZL/DYohd68IzwBHqw88RxmtSKE7oFoui
 Q8/ajXqLUr5Mh8KrDWH9Y9aBX1aUbKou1NBIrSKV2v/q9pLUTLKi7TRyjKr/C0c4Ogj1UNhLjHt
 HkwaFuE4P1szHwsmBh5PKLfz09PvL37coDAts+Bjs+MnNbKqfGMBmXiszNMm2TpqpVvgS1Mgccj
 FOhcpCCNX5U8y8MLckhozdDNXM+SAuWiyHdRr6RfdnJ3KY5NndNLvRZgUQJKjAEz8iTYJUU+5TY
 z1H8WrerGrkN0kT9qudnS8OdRrEbgmAc6w7XBRSOkObQut9ntcn3AJWMsBdvWIeta/UR49yTDqC
 2FrX5Px3s2nl4zGd3KlCWUhpVHBAQQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-25_02,2025-09-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0
 suspectscore=0 spamscore=0 priorityscore=1501 adultscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171

On Thu, Sep 25, 2025 at 03:04:51PM +0800, Xiangxu Yin wrote:
> The original reset list only works for USB-only PHYs. USB3DP PHYs require
> different reset names such as "dp_phy", so they need a separate list.
> 
> Moving reset configuration into qmp_phy_cfg allows per-PHY customization
> without adding special-case logic in DT parsing. The legacy DT path keeps
> using the old hardcoded list, while non-legacy paths use cfg->reset_list.
> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 14 +++++++++++---
>  1 file changed, 11 insertions(+), 3 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry


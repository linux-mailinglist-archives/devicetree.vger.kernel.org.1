Return-Path: <devicetree+bounces-219395-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BD15B8AA2E
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 18:47:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7F9B3A80766
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 16:47:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCFE7273D67;
	Fri, 19 Sep 2025 16:47:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="K+xaXDXh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 534AC26A1A3
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 16:46:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758300420; cv=none; b=WLfxqebcSCI2dPTubRjvu416DUQuFFYdxgRqebOtfb5Nzw8D9/HcK6dF9MCQ7pWWf1fXu//soI670K7Z540hYe3aGBfzU832FPFXpG6kNo9Nf8RAJG1TSKdnfEeafP+t3SXXt6buB4j3b8GW0FjAWPXmh39KvCzDEuRWdTeMpEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758300420; c=relaxed/simple;
	bh=ICtRGgVbCGG9PUkDbHrB6xZ+UsvaoeBqwrVPiRFbC24=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MEoNbYYFCzjW1NAgtGXpOqDXgkwM9r2R804WJ0lUiHj9CwdGoD+C+5H9IVeVcZ7gxyEQGVDEZ416vcfYnvbHSCfRwTpvnkuQaSnkS54TdDeQSh2dUsA8rlZUXfUR87P9b+0nZ4/xSamW2ywJE1qo0rHMOpF4iyFs3tqoMAlCOVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=K+xaXDXh; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58JA8WUt003340
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 16:46:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Um9tx/y2LwR08t9HZZiDTcTu
	T9zUc9djMRm/CbZ+X1A=; b=K+xaXDXh+okpJGZMNks2h/fbPmM1It3/CUsPmBKo
	/ABpAwdjxm57Q5qXX0C6YdG7Shebb22WpRZVdpi7DZr2iYAnHxLRjnrUFDbE16qr
	wFJucqIb3lGuQS4VfzJ7E+RTzCPWZTFYcNissZeif3uisAwVateOyW7AOqkn05WT
	PF3o401V2KKewh7kCA8Naz8NoeD9D1B8QRUkgy7he6fNAbWk4YhNnQCTU8OuRtPG
	wWyx3oX10GhZI0/wHo72nGQ+ykuoj/jni8FT3zttzwWHR7rYkw9HvAuAEwyhh9bu
	GK0aW48pMOde1CF1FYc4POvpMriWTEOgIW2DGaITLgGuDg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497wqh0p1g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 16:46:57 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b4980c96c3so72178441cf.1
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 09:46:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758300416; x=1758905216;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Um9tx/y2LwR08t9HZZiDTcTuT9zUc9djMRm/CbZ+X1A=;
        b=RWPrxv0noGW3k/H4sHoEdkdA+s2eAA4Wld8l2UEZvIv/3xDNgoCVjAkltCvqIEPGz7
         RVSr4DgfkBwLoQmKHsiMWcGobSGVCKl1P00B5/WlXXBe9r28p7kAZgmxqikgs+c/0Pyq
         mz/jDXzqWwOgCL0Mxxlwcvx1K7aec0lCLncH50iJekVOpyC2oWU26LmGadJQtZfEOn06
         WQGG3Jwy3kWQov7l8RSCZINYVmNn1QzlVq3j4NSKKPyLqjzHp12mPgohb/8Y2BkxfTMV
         mgW5j1sTVElB75YCnukN0Q3FP9YOf0p8FkCDusYW7tYeQu1csVfk52inOXCqch+pEqUR
         BXgA==
X-Forwarded-Encrypted: i=1; AJvYcCWZW+je7Grw7PoSsZ2ngQ0CuQWnBdMeG8dd4LhMaXNrjbfPOqwGMwsIoZ8J+QBHaYAb5TksytqPKRk0@vger.kernel.org
X-Gm-Message-State: AOJu0Yxd+/1ePOvFYCwkORRkqXrtQvcWbC3GK+N/EpY2pY8M8ahdMhOz
	2Tg2hcat/TzG3flqXV6wVPPbpsDd5nNU6p5XJEiBoqTTfamDW61NG+sTZdwMIh7BvyJE8vV2Mjf
	KC1cErdExcZa38xXPnQ632ZrIJm7HsM1S3vL+tf5LK3bdmFl0YIefAx4+oEY2oyQZ
X-Gm-Gg: ASbGncvn3udo4lozRYe6wO+pBnNX21L3NB6rCfS28fOTLOjsq+4y0H5RhZDI8EBY8zE
	14PdB1Sf60wa2otwAx3sz7O+Zgrw5ssjul7N8mI4+3qErThuGWP8KCICEtOvSbIfXAShSu4kAfp
	TaWCjz1US7oyDahMDpxBkw/XhIxliH7zkUOpH0BzCn/cR5pfGFSTKL8TcQrGPVUmFE8hOUvFD2J
	mNbApAdHOyd6Y2Ytg7IHu/rxKGCt1r2RHyh9aCc9vA5cabnZpJ6UqJ0JG4m/s4xQKf1H1DlcKgn
	teZabAc+6HMEZ5dJjA6VRnVxNf+Ybk6kiYS6VNa3RoQVflIm4rhyA2xLrc/a0qZf/9pbxhqoWNE
	NTQLsHcpd1xv9CwQVvPNsSEVdGiwhlRL5pDgxkqSpw+nTm0HZ5D8W
X-Received: by 2002:ac8:5f8f:0:b0:4b7:9b61:e6c9 with SMTP id d75a77b69052e-4c06e3f84c7mr46464951cf.25.1758300416427;
        Fri, 19 Sep 2025 09:46:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFDuHu+pCXreZlW6yMOlA1oYpTJZZVjarPXitMYqbWZSgljRDCeRfsjix8zFXY3l/JofzsvjQ==
X-Received: by 2002:ac8:5f8f:0:b0:4b7:9b61:e6c9 with SMTP id d75a77b69052e-4c06e3f84c7mr46464201cf.25.1758300415762;
        Fri, 19 Sep 2025 09:46:55 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3624319eb49sm12152421fa.50.2025.09.19.09.46.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 09:46:53 -0700 (PDT)
Date: Fri, 19 Sep 2025 19:46:52 +0300
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
Subject: Re: [PATCH v5 06/14] phy: qcom: qmp-usbc: Add USB/DP switchable PHY
 clk register
Message-ID: <xtosrpz6rzdvtmpyq73gboeckl3c2x23iqehlxzbaszqmzugjd@ixhj25qujqxo>
References: <20250919-add-displayport-support-for-qcs615-platform-v5-0-eae6681f4002@oss.qualcomm.com>
 <20250919-add-displayport-support-for-qcs615-platform-v5-6-eae6681f4002@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250919-add-displayport-support-for-qcs615-platform-v5-6-eae6681f4002@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: mZufclKrW92YX7URDKIZiqFTVvZVWfFJ
X-Authority-Analysis: v=2.4 cv=HITDFptv c=1 sm=1 tr=0 ts=68cd8901 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=LgMYyniohzYkqyhK0zYA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: mZufclKrW92YX7URDKIZiqFTVvZVWfFJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE3MDEyOCBTYWx0ZWRfX2jfIxej1JOmT
 OmJaMf8FcARR73YbLLrkyIYRJ00Tw0igPOZxDWjm0nTSzyeeS9mA3htjfqg0AsmOqzbQfG6tXb1
 CC2BzjMCrxvTNbY2m0rlLU43EFzUpJrms33AG9FXXL8Jy8E7WmdUwvklUCvBMoZRfT3DPX5mXNR
 k0BB3CUnIssSMBn87gIA9LJmtJY/SCWXO6Mus4RjOlarq9ibwpwYly1WlCrUB8PdOpclTl/aVM5
 8tFB/MtpcaAC5UFMv8gDM4aNE9VutPT8wAAxMFlpwGZVhrEvCt0GQLIuW3Itni3SfDnc5tD9CAB
 iZSfYg8D0fyhpr4IiBbi83kSsCXeSAYxcUgbg52VFR6rdjhqXwTVdBiQpq7eO3uAfz1JYpo8t6t
 u0mCECOo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-19_01,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 phishscore=0 adultscore=0 bulkscore=0
 malwarescore=0 impostorscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509170128

On Fri, Sep 19, 2025 at 10:24:23PM +0800, Xiangxu Yin wrote:
> Add USB/DP switchable PHY clock registration and DT parsing for DP offsets.
> Extend qmp_usbc_register_clocks and clock provider logic to support both
> USB and DP instances.

Why?

> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 210 ++++++++++++++++++++++++++++++-
>  1 file changed, 204 insertions(+), 6 deletions(-)
> 

-- 
With best wishes
Dmitry


Return-Path: <devicetree+bounces-219424-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E622DB8AEA7
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 20:29:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A23285682C9
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 18:29:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04FF925D533;
	Fri, 19 Sep 2025 18:29:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RRnz2kIR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FEF4241665
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 18:29:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758306576; cv=none; b=dA3fqBB2lYt8jOi4TNi2v8qOJZdvqvejTPqxtzxqttGxjIKA/KKsIjjxQGaX15UwO71xWxnPF1/bcEhpKjGUBiaH3NdFbCQaXv5AQi44qdaWEHuiXxus/D4H2wcywJnNQmJ2URyd5e5FiE521nzHQmDlKA4HOfUxhI1R9nMNjT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758306576; c=relaxed/simple;
	bh=5HcGcJPfAGJVWwh47JGBEvlbeUbK69QuVa8rC4DOV5U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lHulKoUFqd6CieEdAx0PF4ArGYwIlnUtfr1fVi5tqUepGdhko373j/5WNLMj/+57pEeNXcpztkZ+AfM8bjzNr6TZF1c3Q1P7xXihI5/MR62jFVJQ27Gmax16BPIYP1PDWV4VvX9LfpvgSI2CyUfcnAcK9LE28y0+S1n3/G6CtUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RRnz2kIR; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58JDgFKO010782
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 18:29:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=nELkMuG6G4b4hNEzE5++D+4i
	ykuQu225GTPV54pVjNk=; b=RRnz2kIRHqwrjQd99LcWnGKFoqNlJppKNVg6v/zN
	74LFRnDceaW9jKBreZkDEvDKElFeX749jroH92Eb0OinTtrVOK/OLHxnPyg52eqn
	z2yiikSeEf5Qq7G40h/HbIevhMsTjnvwsSXtlHkCl8eCOJ5myA94VAxTu8S02VAw
	tI5ZRPQOFDswW0M1tCn35ZNF0j49zKygeaWbk8y6GNlLGwAf0HzEX6z1J5ivyG81
	mi/zh+GtRBC8RgVZOexYC3lNhqsncw25aPQrOc4CZkbkTJ/DmTWG/hWKgV4UTe67
	+fgKPlWYvjtGzlVqaxWbVoDt/eFGzsZ0juSSyBzxc5da5Q==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fxy3dkc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 18:29:34 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-79390b83c48so44973216d6.1
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 11:29:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758306573; x=1758911373;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nELkMuG6G4b4hNEzE5++D+4iykuQu225GTPV54pVjNk=;
        b=fgQdpgjbLUVNgAWVzvZNhus7w3Ig6E1WKDiEgQ765qnNUVuEp3MbGqlNnqWHZxjey8
         qte4x/1kTiDm7eprf0uC3h5jf4yt/xFoqiqDzIj/c5/y00ojzS8nmVCenGvlZ2kxDJ81
         JFysGWvUzxSzjh8n99NxIzpSLyNeKrVqfzSrZ/iJsE/cQb+3lVtTgZDAe66jvLjDPSCV
         sXK1fWr4S1gl33pIV7MgjNYC0P9mY5SrIa6z6dkcL1THDxTRI9lnxOnf6/cobeS3IIjq
         hQOr4cLJeyf5nibDwuprPDdkPrpHUf+sEHsGkwye6ip75I/DQXwGqFtWKnKxHM7ITVJC
         TqlQ==
X-Forwarded-Encrypted: i=1; AJvYcCV1+x+qnMZeaDz6wC5+JtvYIGo7igK+A25thu/pNHHAX70ztmxwTdPmGi2sJNk63i+/yYaOEpDfKJxj@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+CtTmG+NSB6/ysJfAhkAXKipIgTcEaby5MQyFBvuSm+ij2QCM
	7vh5145QgCZcmVN0bzK67hQYawI/hKkapZ/ojaSJDHK8ZYT2kkPHseD+MimL6kmFLYAVfxd5rc+
	G16VUhvNITqefwpgxgMqP6vGQL2hxPaBVdsc/E3HwTuODgGzszIrk4jVYySxla4JY
X-Gm-Gg: ASbGncunI1xmoHWyfvZhstj8niBP7eKU/tyBae+1dJ/S3YV/gx9rQ2O5kEt0RqWKhNq
	GazTkNdtAtplb9mC2/+5Z7S/dchVaeeG+Vp4A/hbW3V7VjKqmfzbcqdfxHKnjvTc/rEnsXY82+x
	uhey0dzrjRnQLQIRB663GvSF+oueq3wSdu1iLgIgy5nllg0q76Dc0UEqzJkT2LEkKtQ37fNBnJX
	Gc7xuOeP4aV3pssSqgDRJ+lf4fbr26H6nTYc7Y6QIF+amZJ3MXTmj6FSzyqFe5Muh9GtZZrTXp7
	+c0WLr1cpYxOBnRR7WjGQpCiknXqSREkCX2S/RBDhrUVEHYNRgy2A04KV/4fx3jUttXEXalmQRE
	3TzLD2LQy6oUUmV3n6WhKBJRxY0zyk/tS1sRq82pxdZH8DJFR2cQ3
X-Received: by 2002:a05:6214:212d:b0:786:8f81:43e with SMTP id 6a1803df08f44-7991a92b751mr45979556d6.33.1758306573146;
        Fri, 19 Sep 2025 11:29:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG1heRt8eGc/n23vl3sA3KqPDKFH72DXCf2ZbAaB5smb4GgH0KGIrCssMBhJrzkGAMEzwdWYw==
X-Received: by 2002:a05:6214:212d:b0:786:8f81:43e with SMTP id 6a1803df08f44-7991a92b751mr45979186d6.33.1758306572586;
        Fri, 19 Sep 2025 11:29:32 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-579ae3d9c88sm958682e87.140.2025.09.19.11.29.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 11:29:31 -0700 (PDT)
Date: Fri, 19 Sep 2025 21:29:30 +0300
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
Subject: Re: [PATCH v5 08/14] phy: qcom: qmp-usbc: Add TCSR parsing and PHY
 mode setting
Message-ID: <j3e7f6fqeilaz4nek2hnh7obsvjwret42dkmwervcg3c74o7ai@pz244lhrwuou>
References: <20250919-add-displayport-support-for-qcs615-platform-v5-0-eae6681f4002@oss.qualcomm.com>
 <20250919-add-displayport-support-for-qcs615-platform-v5-8-eae6681f4002@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250919-add-displayport-support-for-qcs615-platform-v5-8-eae6681f4002@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfX8N3k6h6NxFW8
 EdAJuawzwezMlVufDGefh3P3BLAka1B3bcT1YvbXWvq3AMUAsUdOM0kwAJ0ojco+A2VpTEXmhT0
 RO6N28mQDuDF6iMhy/IeROMvF1TAG7l1IsFckROoSR+eg8lTRuUMwwlGGIhM7dAcgVPF0gjB74m
 xSqLn/W5UYBN6iTxlX7BB4XBuQN+UB/cY1p/W7FqsFXlyeHHZ1AwGsOOOzTKDxFBrfU+6nQssO/
 iaSIMJVjDw5FUBAku7rHtOTwcguVWlFjvrbS/8GgKnqOaG4hmSvZFk8/fdXex+Q0g+fEGa2pJeh
 5G2ShlYJrEfcc14DdOXn3RiuglLeO7AAmoEih4OJMVRpXKsYaH+se/lZ4hCcEeo9GI8JdfgIA+m
 WvG62ygk
X-Proofpoint-ORIG-GUID: N_8KdjeOWg9CqNvV9J_x9IdtrHXEDmVt
X-Authority-Analysis: v=2.4 cv=KJZaDEFo c=1 sm=1 tr=0 ts=68cda10e cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=fgmTnHYI-UD6AacMZvIA:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-GUID: N_8KdjeOWg9CqNvV9J_x9IdtrHXEDmVt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-19_02,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 bulkscore=0 adultscore=0 impostorscore=0
 suspectscore=0 malwarescore=0 clxscore=1015 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509160202

On Fri, Sep 19, 2025 at 10:24:25PM +0800, Xiangxu Yin wrote:
> Extend TCSR parsing to read optional dp_phy_mode_reg and add
> qmp_usbc_set_phy_mode() to switch between USB and DP modes when
> supported.
> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 25 +++++++++++++++++++------
>  1 file changed, 19 insertions(+), 6 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry


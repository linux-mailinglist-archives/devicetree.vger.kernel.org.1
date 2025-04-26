Return-Path: <devicetree+bounces-171144-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1653DA9D765
	for <lists+devicetree@lfdr.de>; Sat, 26 Apr 2025 05:32:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1E83E1BA71C7
	for <lists+devicetree@lfdr.de>; Sat, 26 Apr 2025 03:32:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A59AD170A37;
	Sat, 26 Apr 2025 03:32:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Goc9kAwO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E3C05A79B
	for <devicetree@vger.kernel.org>; Sat, 26 Apr 2025 03:32:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745638335; cv=none; b=H6dqVBHEqyaeQCNV6Aw4KZw0ZNMDNDaHtLutogWb7/AgDV6xXW7IVgVU5iJmlh0Ayz9j5sSL4n+Ni9nrFHIlaPYm6nHMINRcehBJqtczoFceipq6BKbRWTlrizmbkJ4+FqU5XjvfqLtYb7jA7nsmtXIejjdFb5aIQtmejS7Dqac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745638335; c=relaxed/simple;
	bh=8XwZyQ8nd9MMfQdc8z/8w93rFg00pW9ELjbgZrVg6/4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Wze+k1eVpviNuqNvDfD2cGWqAmQ/xxfYfLfbOWbJg2sbLDF8lRdjdyAjrzY747CGniTFHgn0xjYVkfLm+WXB8oDBNO5V/wsqkzmF1laVr6wVYD2D9JZlf5hW1O02OZv4kbIJs3vQGM2ZjdXOoBOU2VYXUeENpAsuwYSfdIsmqR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Goc9kAwO; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53Q0guv8022654
	for <devicetree@vger.kernel.org>; Sat, 26 Apr 2025 03:32:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=nfyu09oAgbKU/gPLd7QP+1Vk
	Px4Un+ZA36LVdMk4Ac8=; b=Goc9kAwOH6IG8xnEE/6to01Am56ENAyC5Pna4zcU
	pyp4N8Sa9DbECkuRNTyRZi9lSdmd/K8ddWD/TGF+Z5Bu3tY1yw9gN0QwYjkGc5Ke
	fjqAHpd0MIMAqUH2BmCgprEdPGoO6+C5TVtaaMfoFp8tgVFDxRyy+pBp2JpJGcEM
	K2rwR9FZdVkLf1kqAfbDiSolOvIGOjlnhB2S5naDlypqwjF8uKqPZ4woU3lAcDtV
	7eb1+aSVX+X2mum2cQrGCMQ5osCa1ipdfS99FqYQSPWP0r8V2sm7cG4tdt7f4Yy5
	6Iz0hoYZG+vGDGGvE3isImRh+FyrWzdX3ve2upW5TocQyw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 468n6j87hu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 26 Apr 2025 03:32:13 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c95e424b62so312525285a.1
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 20:32:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745638332; x=1746243132;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nfyu09oAgbKU/gPLd7QP+1VkPx4Un+ZA36LVdMk4Ac8=;
        b=FMZw/QLVyLq7miaMH8CvDgDTL1P05OI/AKZFf2HP45JoXB46f2hM1DjWEusU9rzLqn
         Dk4oHTTSEfaP+cherNi7pbxYjlqREWA5CY/8kc2wLSAbpHyEsAHZ/lYvkjlEN39/dKcM
         V8Fl9D9MTlqSdu9ce3zkmIYUiKSPRt+cjeEnvpjmwPcKbh+eWAVzTWtuS29LUh5a7RQm
         G/EJ2GrsT1+kg9egvXXPZGagoEqIaBFjQ2FwkXR7H0BZtkb3+wpXHg+95NYsq14R4zUt
         A9AwACIs9quDJiJJ4dDY0lfPbHjurUacv4N1lHjQJ3s7OnX3RDirwZfQdHwvPho+d1rP
         mE2Q==
X-Forwarded-Encrypted: i=1; AJvYcCUgJIVsulGGirC79gzk2oE/o5Ebj57p93uOtIkIJI5az2BoOIZlD1iHt8fBYCxDDjl/z0DB199Cb1B/@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4ftz39OiXK6gk2ZByYffrjD24rAl1olF1Vpqr3bRZtcKozgyu
	Bob2aOvcj2PXVcQanqHy2AnBoBOenXtwVnbtcJoU6y5mu47h7OAqi7/m3rwJtvZ/cSPzQYR6JtT
	fuVkYi6W69xpHyiAt5t1+2ApmMixImLk6fHl65dRZ+SamHWMT/pG4f2qMpm2Y
X-Gm-Gg: ASbGnctP8RVOPpGiF/ajow0e2W3hClvgzhFbj5mOEwdf7kFktuSo6uJg0WP5ZOWpBc4
	6z27SxEbZV5OHSSsBWN8Ja1GHpenrDQZTdbQBazrtprBFDMkAWFYIfk1et9UyrTmlSqyYmUzZrQ
	fDEseYmEtKgFMZt6aED7BmN/IamLIw6G87kyzR9zfGSH25jxekRUiMmxpkTp5Ew8cdY5WetfOpk
	vXUlpPkH12xpsy2o/0OG0wWxj9k2mDnwk8Kx51/xmgz3F4JgfhIqKtbinbgkkPeXMUCDXMz0K3O
	CaAC79lpCs2P/aJmpNLYyE9FqbAYVAcaIN/yI28rzz76/d9e8v5I0DzUAi68oTrs5fVyukN3ziI
	=
X-Received: by 2002:a05:620a:178d:b0:7b6:cb3c:cb81 with SMTP id af79cd13be357-7c95863e2d7mr1476437985a.18.1745638331927;
        Fri, 25 Apr 2025 20:32:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGiTnE7wXw/WRNe23TRP1vjz1M9fZlD6Qm9ywGKrXzfBKiN5UhJ9CjhuBM5F1+rwA5kWV/r5A==
X-Received: by 2002:a05:620a:178d:b0:7b6:cb3c:cb81 with SMTP id af79cd13be357-7c95863e2d7mr1476435885a.18.1745638331608;
        Fri, 25 Apr 2025 20:32:11 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-317d1b96d45sm10174911fa.94.2025.04.25.20.32.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 20:32:10 -0700 (PDT)
Date: Sat, 26 Apr 2025 06:32:09 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Kory Maincent <kory.maincent@bootlin.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <quic_jesszhan@quicinc.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH RFC v2 5/5] drm: panel: Add Saef SFTO340XC LCD panel
Message-ID: <oqmzruuepddldz52kggo7f3ndtzb36y5ztlu4gnmrnbcljqizi@fj2tafsi6umo>
References: <20250424-feature_sfto340xc-v2-0-ff7da6192df2@bootlin.com>
 <20250424-feature_sfto340xc-v2-5-ff7da6192df2@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250424-feature_sfto340xc-v2-5-ff7da6192df2@bootlin.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI2MDAyNCBTYWx0ZWRfX96GQr2+1pP6T H7Hn+SWGWQZFl74wUdFtCwE75uIbGHn2grr+XXvF5gsl87WwPVydyX45jO5toR4AG0rs9ICn/aV LwNzDGfulfVmXyOwm+/s3gnxvta84C86t4IoEPVq7SULOMhk6AzNdw/O73DduM8w2Kc8RwHEcr3
 Cgkm4m5sfarep8AGkpg5qQG4TqxFBsk4nkG4PHG/CdFhbAz5Js7DgM2WE3lZLbxiiP6+Y9jkHL6 RlxDkVXzZZThIu12bBGH3dV9XkPTMBzt771gzUihVrfJ/tWiUi6GS66g/NJl9VwcJtMOUIQ/4VL aJxkfxlonzCgNwY3J+nRvmCfPXm7iVyQrf+vEr83uwRMBPbO4Wn05SheYvkiEGWBJexjlCTniRH
 TeS/8YMCzARAZ07FK9XTa1zVHwHaHyjNjh6vqB8+RY7EUpdYG0vH3BW0CzkXpbKTflMbq57p
X-Proofpoint-GUID: eDUqgVPx6wmNMKD4hT7dch0rxalUqtQx
X-Proofpoint-ORIG-GUID: eDUqgVPx6wmNMKD4hT7dch0rxalUqtQx
X-Authority-Analysis: v=2.4 cv=C8fpyRP+ c=1 sm=1 tr=0 ts=680c53bd cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=P-IC7800AAAA:8 a=EUspDBNiAAAA:8 a=l5tW5kQ7p0p1HK_25oUA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=d3PnA9EDa4IxuAV0gXij:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-26_01,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 phishscore=0
 mlxlogscore=681 priorityscore=1501 clxscore=1015 spamscore=0 adultscore=0
 malwarescore=0 lowpriorityscore=0 suspectscore=0 bulkscore=0 mlxscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504260024

On Thu, Apr 24, 2025 at 05:07:43PM +0200, Kory Maincent wrote:
> Add support for Saef Technology Limited SFTO340XC LCD panel.
> 
> Signed-off-by: Kory Maincent <kory.maincent@bootlin.com>
> ---
>  drivers/gpu/drm/panel/panel-ilitek-ili9881c.c | 232 ++++++++++++++++++++++++++
>  1 file changed, 232 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry


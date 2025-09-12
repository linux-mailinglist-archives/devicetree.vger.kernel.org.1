Return-Path: <devicetree+bounces-216388-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CD2CB549E6
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 12:32:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 17C7E3A5C2D
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 10:32:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0490283FEB;
	Fri, 12 Sep 2025 10:32:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aGkRMSDg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D21A1547C9
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 10:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757673155; cv=none; b=fzbHRfqWavwdhgN+vYYArThARaRlJ6eAfVSt9enxn+syiqCPJ+1y/f591RvlGmHUxOdCUCQ6yNack0BDJak6xnh5wbjoGYpZZ1i32/+i8NdMOOj6pK/CP1fztmqRe/8ayqVAdLEss6cP0a6VprtPk2L6QeOYVXOjh47L6HsXst0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757673155; c=relaxed/simple;
	bh=zYERfnalf3Jo/X9Lwlxqt7HW3A3cVCP0YdwKshWJhhQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bJ6HlJVg0TiM/pQYgCK6gtNyHs8bzjYWfuxLUEJw2BLIugpOxwajBZ6V1QG+0I55a7urmbMMfxeOnYX49M4DX/ZfaAb9RfSmL0mF/A00zp9p6i3ubYpTc4P6dVCihED/OBM+zIYYETmbTPBoW8KBv4cw1BkcsaTVaLM+5e/eebc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aGkRMSDg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58C9fWfi013177
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 10:32:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=EoZeu0gL7XFLE2oXZAdYX1fB
	kmSI6sTEmRZW+tG1M4Q=; b=aGkRMSDgGwaaJBbM0weNtqcHcsttdaCvb7pGLCje
	h41WvGyTCjM9CEnXLEGhA6kZ5F15GZd4lRFL0MvmJghIYDljoj5iOX07A6aystRO
	ZsF11XtSDDiNXaJL4/Zk3XPGbq94eQ4kwWA7hPrza3qr+fPdHHyBELrzN5WVUCxC
	JbP8GE618fEiK3OLfIoVVl6DUCY1FDEaj9IJCErQ47wUdiS4ft1ATxsZ3iqeHbXp
	5xr9eTX4t0DCsUOfV/yQsIoZ8c0nVzJxy60A8V2pDW+1kooYbH12I3A0NNM7xz7w
	2C4WI5p55cLsDOLQrvZTeSkDOi6iitmh3Wic73kli9dkmg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490dqgaxue-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 10:32:33 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-76a9a9326eeso7108086d6.3
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 03:32:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757673152; x=1758277952;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EoZeu0gL7XFLE2oXZAdYX1fBkmSI6sTEmRZW+tG1M4Q=;
        b=NZ4N8fF/EhOi8A4ePdWeRB4bm9+G/jzHd43E51TgX9641g+tsTscgae9addML/3lsk
         UpRfVUbPK/8RALUQMXC8RgA2wTXprxGiDiOGEjy74EEfjALH7ZkhyMJG8K3Sm2NAMAIb
         dwixGgCj0zMWUm3Oes9pW04iqT8sOisv42HDP7z5gfbBja8Hg8ORO9JeMS/BwKASIdHX
         IJKEGaMh7R8zQpVXVUD5Jz8KJqDLmzkndOKZVun91+ZTY9X5pVAxnbTzUn7aZnYfvN0A
         z2BhXNbazhuJz3kWV9ryauRiJTZ/HCLgTvTxSN4r512ViFEjSm533ifd8N/+fxllNfnC
         in+w==
X-Forwarded-Encrypted: i=1; AJvYcCXLkV3GL6QQJjMkjDsFgdHVNwLr5pr+WfqKFIBYrZvkO3BdBTsj7DpdF+lOhitVAvAOtCfMWUUbjR4c@vger.kernel.org
X-Gm-Message-State: AOJu0YygxqPtvmbKScnt5CixqVqt4tK9K1f2x1VdBx+vThTp3Xh+1Ert
	uTzgv+vpzs3WIQRIih2oWf+EcBRPfQWNcjK49hFEk8+lhTaosirKYqHFOqFZdpFnN5CQQABlZ91
	yOBQc22/5fHr8EKguESydSb0lGdlR4sURbK8sdi06/rh4YdW/+nzA9Ne6PhfQoMuD
X-Gm-Gg: ASbGncuttKzLIChgiYF/ULl2E3f4JRqJsagnrGmLrpYSAg4mwAL0j9Fs3qLTH/oQrJd
	Hq8y6r2Myh4HvcDPiC/AG9VCULx8g8czpjgXyo53C2XF8Wmg2fsX22Mim4XTKJnpkUGz1LJKquK
	wsrTDgrJ8o1cniv3Q/xzaGQp3sxbTB4sLPI0aUpJYN9HxEaTLCZwrSEMmZedjPDZHAetWuX40aA
	J00fpsv4Fe2U1JY2DTEAw+4OCQBk1X4CWb84CW0a9kIILwoyPCy7WEQ2YPPIIv2FdKGMoPUf8VF
	/avDLyxQyEhlJBDRIuniRXaI7zmUOks6q8ZK03rZwLcZq9KL4Wlf8IWulvmpgEiH9glu/TkGO3d
	g6v8RRBocEpkh2V4f32omalD8ky09FUfJ8bBWIWkPwQjwtHSfScNr
X-Received: by 2002:a05:6214:230c:b0:75b:f634:4a67 with SMTP id 6a1803df08f44-767bc026421mr29049056d6.14.1757673152235;
        Fri, 12 Sep 2025 03:32:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH65A47IPcjTGPJhYbtV51wn+vb+zZhqr0yJiBbHtP4GFqDciGEAz/Luthqfq7hIknGdaf0oQ==
X-Received: by 2002:a05:6214:230c:b0:75b:f634:4a67 with SMTP id 6a1803df08f44-767bc026421mr29048346d6.14.1757673150876;
        Fri, 12 Sep 2025 03:32:30 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e63c63c87sm1082936e87.69.2025.09.12.03.32.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 03:32:30 -0700 (PDT)
Date: Fri, 12 Sep 2025 13:32:28 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
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
        li.liu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Subject: Re: [PATCH v4 11/13] phy: qcom: qmp-usbc: Add USB/DP mutex handling
Message-ID: <nfugwwknnlxls75yo5rex6ggu5nzpq6enyx6e6nfnfei3icxjg@t7dnzcfcjw4o>
References: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
 <20250911-add-displayport-support-for-qcs615-platform-v4-11-2702bdda14ed@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250911-add-displayport-support-for-qcs615-platform-v4-11-2702bdda14ed@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: W_wwzywNZsaLSuby-IRx553E9NX-agx1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzNSBTYWx0ZWRfX2P1PU7kSoN7G
 0BwNOutsPnOglRFUxgdvWUqHihv+PrQ1/U/HLBfRfu7as+czPa2c5SnFjJXfaRMv62XsY3CM6TY
 xeEVCbQ18Ql3BeZ/+doqw1hS/HxAnTQAWjsicVPSVMGMzZpSBuaJhGOqJT7g1MclEgNFDqOJnbH
 ++4+g9fs+W+SZD5y8HR08xoC9Wl6tX/n/PFS/2huZ/mlVOc9ooWr11LXzdAqNjeMJS6xTfbzlTe
 6V4Iyi2RrIyYOPbd71ThcqiGWPvkXvRoLgiUlQ0XBzyItsYDecjtCWGlM1THMEt3HcViR+mk2+7
 DfJDeAyrtWOzoTJ2IFTHO66YpPD61yJwqucP2XuMdR+NAPzB/rW9AFRBvo3Sm3uUfTCIgVYranl
 nrYDq7cu
X-Proofpoint-GUID: W_wwzywNZsaLSuby-IRx553E9NX-agx1
X-Authority-Analysis: v=2.4 cv=N8UpF39B c=1 sm=1 tr=0 ts=68c3f6c1 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=JLxk_RO0mVMWDHH2qmEA:9 a=CjuIK1q_8ugA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_03,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 malwarescore=0 clxscore=1015 bulkscore=0
 suspectscore=0 priorityscore=1501 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060035

On Thu, Sep 11, 2025 at 10:55:08PM +0800, Xiangxu Yin wrote:
> Introduce mutual exclusion between USB and DP PHY modes to prevent
> simultaneous activation.

Describe the problem that you are trying to solve first.

> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> index 613239d15a6a3bba47a647db4e663713f127c93e..866277036089c588cf0c63204efb91bbec5430ae 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> @@ -1061,6 +1061,19 @@ static int qmp_usbc_usb_power_off(struct phy *phy)
>  	return 0;
>  }
>  
> +static int qmp_check_mutex_phy(struct qmp_usbc *qmp, bool is_dp)

mutex has a very well defined use case - a sleeping lock. Please find
some ofther name.

> +{
> +	if ((is_dp && qmp->usb_init_count) ||
> +	    (!is_dp && qmp->dp_init_count)) {
> +		dev_err(qmp->dev,
> +			"PHY is configured for %s, can not enable %s\n",
> +			is_dp ? "USB" : "DP", is_dp ? "DP" : "USB");
> +		return -EBUSY;
> +	}
> +
> +	return 0;
> +}
> +
>  static int qmp_usbc_usb_enable(struct phy *phy)
>  {
>  	struct qmp_usbc *qmp = phy_get_drvdata(phy);

-- 
With best wishes
Dmitry


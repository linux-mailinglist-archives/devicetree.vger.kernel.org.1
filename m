Return-Path: <devicetree+bounces-213054-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 016CBB447A4
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 22:45:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C2C894874F7
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 20:45:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7559D2868AF;
	Thu,  4 Sep 2025 20:45:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ASsq+nhj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E625D286412
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 20:45:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757018730; cv=none; b=W3QK1edGCSHLCW3Ka38PRmL5d1czpD2sOeBVgHcadHT9XxxrhsrlKapIDODFN+qDLCnlC6dmFChHwJWhhNgf5WI8UkPoY/Zcf6D8vjd7DgGY6jffikGipUedcaAg1tgsIymhqT1p4nyvu+K2DXoDS+y1TyH5F+ZdkgQB8GZATcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757018730; c=relaxed/simple;
	bh=goHFT5Fojx7NPl6TJEnx+eQN9pctyR3h8wRytbQqm7M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Q2gR7G67uElIE+3lmtwaLtwHdF8C11Y7yBwk4fzy8kdB0fuuNGMQVRVPy9Pfja9gG11eAAEtnczBiwN7b5NZmBzsNa5KiKfeo3OXb5sAGVU5kX0PjuOT+TXUIR44VPmtDKFkC216akhJ0szN+yeZPzM/coWWMYW/jpM24sleS6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ASsq+nhj; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 584IJSdd008117
	for <devicetree@vger.kernel.org>; Thu, 4 Sep 2025 20:45:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ah8XoJw+rgAX/8W20N8ua7Zu
	YMCg6XGeT4CJSEmlEg0=; b=ASsq+nhjXy0T/utxPI0L81ICdz13PV+WiSq4OoGB
	9pa7gEUH/ByTZFniwt19U98nOgxrN/BWLh6G3dVN5LEtJTVf3IRoOg4eBA02kWb1
	GT7mIt013gPkB2Ph9I9NgdfBsisfb+8erqoPgv9NFGkX6YAGuUuMahEweMBKBfwP
	CyTRn1yV+HjzvhI+grE4Unkjko8LUQMeV9dheKVNofoea+CxxAl/HWvc63yz7pA1
	X3x5ggfNdmdTdUcB5tyy7UuG/hco53ZIDoBTA6GHXDMYhOcLsQi90jYixQ+cdTJm
	sO9ENsmffFJWkPSVC8gUwQsfEzisALm9VcJgVfAW698Iqw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48urmjru1b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 20:45:23 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b335bd70b8so25862291cf.3
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 13:45:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757018723; x=1757623523;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ah8XoJw+rgAX/8W20N8ua7ZuYMCg6XGeT4CJSEmlEg0=;
        b=rnvYUd+xGp7TGiMzgncsVwQ1EMo8IbIwg8XbB4y0WTQT8ncPCA6+MhTby3vKyFSYDl
         Pht6zxh0BsLD5MMr7nqc7OOXqzz7/kNeVnPuaQzguW+OnFf34sObrit0CuVpwUHZv2ec
         G6YyiD6Fa3+jEo+9XyKOS0g47EirSpW/s12Z1qks93WURO7lpjjVWrpXMV1elmuaiW8e
         pLACPQxO5xgm6y2qjUmNnxWyk8YupXYkNjmoawJOLtnmESMiPsiB1ae9ToH8ldRpV9Dr
         NwwukPqZ57JkxXz5tsrjIP99y+iPZs6Ge9v0X1NlZsDBtVG8Aic19aarc+YfmEJv9p0q
         kqXA==
X-Forwarded-Encrypted: i=1; AJvYcCVhSYQPr73WXSW3jvkqkekE58htwOyf4QJ7B0jWvBlypU8yaG65jnLnRIaGWd8NnA/k3mcHNxhocJMZ@vger.kernel.org
X-Gm-Message-State: AOJu0YweN2aYsDx+LTNkfGONhPjCsoqIAbpwBlbaYkvialS3frT10w//
	sKrNFjoiLiX1uVcocSURmm7cHF5/e0NYvQKANXfgTfmzThGz3FAzk3iCQ7nah+pCQBgv84ctOvY
	ilZFFbPcDTO/Hhx3evD3s86hY7gyATyK8Her8+oQCV3YxxA/MUOZJ//HvlEd1D8aq
X-Gm-Gg: ASbGncvsinrTLOMq30hxiHcM5l2JkujPYjEA3ZvN48hKz1V/RE5zdGue79RiA02txsX
	NF6X2OaFGaHff21egRp9bwus+gkEv63euDgRZ20vBh+niHdvAlMwRXyRya+MPSqwJuJgYwngDKc
	imZHj2UjX9ZAzf3zU44ccYMAAtzzbodZf/eoZvFU1M/UeBslPl7epbIYp0cx+6RIJzs7AB+EpHC
	TpyZ1aYnGGr8sZLR/2xqJlO68RlDEq8N7jC+mYDLOuwnr7zx6F3ng/bcWe9io/awk/H39nl+deb
	gLkL4SOGVYxTzRBHtZ1KEnJSpjyJ8mjcG/aswZ63g8+VbIGSIqKttGgw/JveHnO5uBYEDlujBKb
	p1nGH8RNcIHQStN9do6ld4QAczI8QpQdQwjMmSHCSbkfIvqyQkjf0
X-Received: by 2002:ac8:5d0f:0:b0:4a4:41d5:2a03 with SMTP id d75a77b69052e-4b31d7f0a03mr103406331cf.4.1757018722462;
        Thu, 04 Sep 2025 13:45:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH+J8L1I5811Gh82XYHGA2tv3WmCtFswhuFoDmxujp1dacvtjBsEDeCAlLFIU0h8/1YiIUj8Q==
X-Received: by 2002:ac8:5d0f:0:b0:4a4:41d5:2a03 with SMTP id d75a77b69052e-4b31d7f0a03mr103405881cf.4.1757018721940;
        Thu, 04 Sep 2025 13:45:21 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-337f50b0898sm16424661fa.58.2025.09.04.13.45.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 13:45:21 -0700 (PDT)
Date: Thu, 4 Sep 2025 23:45:18 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vladimir Yakovlev <vovchkir@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <quic_jesszhan@quicinc.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Cong Yang <yangcong5@huaqin.corp-partner.google.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] drm/panel: himax-hx83102: add panel starry xr109ia2t
Message-ID: <to4alnxchf56lkvguacmh35bquzbczlonhqi5xoi33alufu36j@4cgkzx3sgzod>
References: <20250904002232.322218-1-vovchkir@gmail.com>
 <20250904002232.322218-3-vovchkir@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250904002232.322218-3-vovchkir@gmail.com>
X-Authority-Analysis: v=2.4 cv=OemYDgTY c=1 sm=1 tr=0 ts=68b9fa63 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=pGLkceISAAAA:8 a=ACYfBu3xzRVhRnfl0NsA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: oVD87O61-ErARFR_y8INocaXWlDDoKun
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyNCBTYWx0ZWRfX4olLcq0zxXnK
 NoWTqzNqigcj/st6/e/0wRu7pLWLXAsKP5PB48CLmbmHeXvw7OsU/RRpV+v4V+PY38+aoGtV9uG
 yhwxlNNQwr4mwl+O7aFp2fpOvCBAourZcYsDxLLwspDK5AKfHe/moGnQQ6BqaNcDMgvLS5eoEz2
 ZklPuKySXwgMUkVgKYHh5N1c09Q8v61m/Dg3xbr4B2HfgZo9oJNoLgtI5f981UyQ1Ov0ieDBowe
 dNWNMO9bPQH6QQVad6BIEBYOHjFcQSnwDr0KHkNV140YnZme1ltKKU38LOXuukbW23aWzCLVpgo
 FU4ghtFoiOiy9/BJuMlfTbiugVm1ZFIg7IQTAcrU1N++sTKzaOyNu2Sux3p/OjjqPMSmB4HVgun
 Wzf5tXz/
X-Proofpoint-ORIG-GUID: oVD87O61-ErARFR_y8INocaXWlDDoKun
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_07,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 spamscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 clxscore=1015 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300024

On Thu, Sep 04, 2025 at 03:22:32AM +0300, Vladimir Yakovlev wrote:
> The STARRY XR109AI2T is a 10.95" 1200x2000 (WUXGA+) TFT LCD panel with
> himax-hx83102 controller. Hence, we add a new compatible with panel
> specific config.
> 
> Signed-off-by: Vladimir Yakovlev <vovchkir@gmail.com>
> ---
>  drivers/gpu/drm/panel/panel-himax-hx83102.c | 193 ++++++++++++++++++++
>  1 file changed, 193 insertions(+)
> 

> +
> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETPOWER, 0x2C, 0xB1,
> +				     0xB1, 0x2D, 0xED, 0x32, 0xD7, 0x43, 0x36,
> +				     0x36, 0x36, 0x36);

The rest of the file uses lower case hex. Could you please follow the
pattern? The rest LGTM.


> +	mipi_dsi_dcs_write_seq_multi(&dsi_ctx, HX83102_SETSPCCMD, 0xD9);

-- 
With best wishes
Dmitry


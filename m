Return-Path: <devicetree+bounces-222852-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A269CBAE613
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 20:56:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 58D0E4A4AB6
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 18:56:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0A1F278150;
	Tue, 30 Sep 2025 18:56:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oTirnR1U"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66FE226CE2F
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 18:56:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759258592; cv=none; b=iWVsr5qqoZSebEBj/nVlq5VKipfY4CTFEJpPotwyfG2yTn3DpUGVYId/5vDQkALbfL7kIxBn75GvQHqnkeZhCFYE4AB6YquKoWT0qGNaJ0xkIYxijHMbFAkYo/kajyVHUXJK3fmyN4KCzdDXf1QU6Rw/YrkbFqtSKy/2zFaB1yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759258592; c=relaxed/simple;
	bh=PXtwsRcd1qYqDjPebUu6RRAgyQt+A86WEtDc3H9/ElY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Gr1JrhwLpG3C1hkobe7UHfI7cquJsqU/ECBzGNd4gKgw115MJvLdBC3yKjxiC23o3cbezIY8ScTCsL1MTClAk+RtYQasQ+AOw2lPhGuMeDQAZEDj9omxNowpIEa+pdvjeQbvtNElmgml4UP4qyTN5C4tliWyV6Yw5DrixI94I3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oTirnR1U; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58UCA4wF031650
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 18:56:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=V/OMvPsmXCvICDYI+aDy61hj
	qbzRWVVGIUnKyYVKzhY=; b=oTirnR1UkTKN58dV8P9Jap/U+OeRj/e/lysnnON8
	3SYP8Lou9EM1WsG7Lw00xyGHA6qvYqjgH0q9rL9mtg5uvFlkCHskkhBGQbA5IhZv
	piCfpgKIo/Be6Vcp9VMymKqKY4etJeBfCSBPZpV2iFUjpMBkQPxBT9xhQQ70kpZW
	l47QLoNbT4D/DR0O1YR3HUFevRB9hWB30ixAN6bNRY6rKPCdXhVPMgfUzUFNWsGm
	XQpLFJmXpoNYMF2xrp2rfzQa54ADdkC63TlQOQY3X5PZW6BsQqEUEKeTFlURgGR4
	dwjcPRJtRs8NZ+pAmXSj3dd5NA9678BU2YVX6P3SSp3YaQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e8pdhvrt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 18:56:30 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4de801c1446so101573641cf.3
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 11:56:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759258589; x=1759863389;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V/OMvPsmXCvICDYI+aDy61hjqbzRWVVGIUnKyYVKzhY=;
        b=R5v9DaEaxL6GtkR/92mTRJbMHxqxAX0ZFvLuniQrR25KTmtf3905G1EseohxQvfd8y
         EiThzzrvGAlkBwlwAtqjF9CqnANkxVh4rDTvj6WHS6Xmytr5W373I61tb/CwG/Ujyu3L
         04qRYdvN+eBLxz9mxc9V3NQj7yAbg5P+tmcBEYOGcGJFxV345NNXJnFyEUTOvTllFBUS
         bGljrWtO+UNEZQp7N8k3LbvyCEYZ0Qlm7xkkKsN0tOrxdA8nbDGidrUVWpuLUEGI3uQU
         T3ye3bJGdGBmUuiuAu1kMx0+cokXlHyjSbmy4sF4eNZwRXBc2J9WTfkCZPWpTwc9kb2i
         x70w==
X-Forwarded-Encrypted: i=1; AJvYcCVe+Fl7NlVSbHW9hn9XAxlgD4BN2gfdvsUqLcCXE7dnlCsgYmuJgEeXxU/UWAMPYRMYSbUv/4i/GjTY@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2JkxPfbW90vOvSL53n85sIq31OLhBhgYtjsDR+ObT8XBmopgQ
	zwS5+cX73gGqLnG9s4td9Tug/KlvLXeku6F8R9tsWBLgYwIBJZsoiJapQzlfb3bacOkkX2mbiwE
	gCXv7swFzS7BRip9I8Q/uwqlVh1Mds4lBWtPwTvIGoC9DtZUDyoq6yWugGCQU/pVK
X-Gm-Gg: ASbGncvkdNBIKcGmp+fbXsD7D1C6ebRE3NrxsXaVGWUH9whURvfYm7ZPLRsoGEJpAjE
	l5DreGy2B4qKzH+8BmXMlgNmR2YZlkNwJ2uecRDOzP4qBVL3f+iCHWNW2+nJjruDpHpWMV0vtMi
	Ro/psMN0cuHwP1aiA1zgXfKVNyRqJrNegXuXratp/aBMH6djnv+gP9mc2BeciMI5S+M2ZX0G04T
	uehHlNZW5hxGGvDrS6ZyiACvv9wyJ+Q4sOSN/pO6eI3VGj6QEhze+8YenxPk8vbCZ27+YCdkZWp
	1MYK5xJXCP/1UGu1z2trMcZhy6eCY5nqagMrPKTxURArVKIPXY964dJRlm/DumvcTrngSSX7mMW
	I8YSgYIT1SlnpIUqT6ocjKbOnCH7QqRff9gP85j0b/bhCCsUTO7AsEb3/vA==
X-Received: by 2002:ac8:5a49:0:b0:4b7:a8a1:3f2b with SMTP id d75a77b69052e-4e41e825e31mr9552061cf.64.1759258589025;
        Tue, 30 Sep 2025 11:56:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHtCiYt7FMAzWgeneawmAeX/wzn69Dw7nDlfMUDs8bcGjbCrdSrmalKVFRpAjd5R/gcKR6Agw==
X-Received: by 2002:ac8:5a49:0:b0:4b7:a8a1:3f2b with SMTP id d75a77b69052e-4e41e825e31mr9551721cf.64.1759258588450;
        Tue, 30 Sep 2025 11:56:28 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-586a064a22bsm2621293e87.59.2025.09.30.11.56.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 11:56:27 -0700 (PDT)
Date: Tue, 30 Sep 2025 21:56:25 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Xilin Wu <sophon@radxa.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/3] phy: qcom: qmp-combo: get the USB3 & DisplayPort
 lanes mapping from DT
Message-ID: <uozgwot7yuwmaiwmqoo6ickblpqe52tnj44tnxcorygqxwou52@hksvktgq5zp7>
References: <20250930-topic-x1e80100-hdmi-v4-0-86a14e8a34ac@linaro.org>
 <20250930-topic-x1e80100-hdmi-v4-2-86a14e8a34ac@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250930-topic-x1e80100-hdmi-v4-2-86a14e8a34ac@linaro.org>
X-Proofpoint-GUID: M1JUsW57gTSwpCELFQgCXx80ETQCUs_7
X-Authority-Analysis: v=2.4 cv=MYZhep/f c=1 sm=1 tr=0 ts=68dc27de cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=jDN6A-fuz-j-nsQmgYgA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: M1JUsW57gTSwpCELFQgCXx80ETQCUs_7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAzNiBTYWx0ZWRfX4be0Lba5Xz64
 ugmaXi33w9Q043/wpnaNnsdfWZbp/Gjxrfy6wMlsTLwUPXOZUrr8ZTHJH/gYbatX+KBgQb6Qe+W
 EN3VIk6DzPSqGRTTCnYwNoCTVbEqnnP9K8fVPPjojAPTNFF/kXOEO+VicU8HF+SC2bForE03H38
 pWFSCIKYtkOIAjODftWwy21fYICTOJkz5+NyYGISikuIdmk54QJ06RMwWmOhKVxYKYuNh53rdjV
 k0Ye3MS76atpYZoeIx9MHZY+ceReHkLkB02+wa/qwSaOZTBqmJEOfgOjRZVGhNL66e+chFHdXh6
 oSQ4BOBEBhYEEJTvd49F+6oRyuoca85gVbdrFkHDkqcOvsZ5sO7Y0FX1ac+jifqnmdM3jXtjBGL
 1aBgRpqdCJcBJ2EeDYfZ0waJOAMRNg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-30_04,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 bulkscore=0 lowpriorityscore=0
 priorityscore=1501 phishscore=0 malwarescore=0 spamscore=0 impostorscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509270036

On Tue, Sep 30, 2025 at 09:39:48AM +0200, Neil Armstrong wrote:
> The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
> of a combo glue to route either lanes to the 4 shared physical lanes.
> 
> The routing of the lanes can be:
> - 2 DP + 2 USB3
> - 4 DP
> - 2 USB3
> 
> Get the lanes mapping from DT and stop registering the USB-C
> muxes in favor of a static mode and orientation detemined
> by the lanes mapping.
> 
> This allows supporting boards with direct connection of USB3 and
> DisplayPort lanes to the QMP Combo PHY lanes, not using the
> USB-C Altmode feature.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 145 ++++++++++++++++++++++++++++--
>  1 file changed, 137 insertions(+), 8 deletions(-)
> 
> @@ -4167,9 +4269,41 @@ static int qmp_combo_probe(struct platform_device *pdev)
>  	if (ret)
>  		goto err_node_put;
>  
> -	ret = qmp_combo_typec_register(qmp);
> -	if (ret)
> -		goto err_node_put;
> +	qmp->qmpphy_mode = QMPPHY_MODE_USB3DP;
> +
> +	if (of_find_property(dev->of_node, "mode-switch", NULL) ||
> +	    of_find_property(dev->of_node, "orientation-switch", NULL)) {
> +		ret = qmp_combo_typec_register(qmp);
> +		if (ret)
> +			goto err_node_put;
> +	} else {
> +		enum typec_orientation dp_orientation = TYPEC_ORIENTATION_NONE;
> +		enum typec_orientation usb3_orientation = TYPEC_ORIENTATION_NONE;
> +
> +		ret = qmp_combo_get_dt_dp_orientation(dev, &dp_orientation);
> +		if (ret)
> +			goto err_node_put;
> +
> +		ret = qmp_combo_get_dt_usb3_orientation(dev, &usb3_orientation);
> +		if (ret)
> +			goto err_node_put;
> +
> +		if (dp_orientation == TYPEC_ORIENTATION_NONE &&
> +		    usb3_orientation != TYPEC_ORIENTATION_NONE) {
> +			qmp->qmpphy_mode = QMPPHY_MODE_USB3_ONLY;
> +			qmp->orientation = usb3_orientation;
> +		} else if (usb3_orientation == TYPEC_ORIENTATION_NONE &&
> +			 dp_orientation != TYPEC_ORIENTATION_NONE) {
> +			qmp->qmpphy_mode = QMPPHY_MODE_DP_ONLY;
> +			qmp->orientation = dp_orientation;
> +		} else if (dp_orientation != TYPEC_ORIENTATION_NONE &&
> +			 dp_orientation == usb3_orientation) {
> +			qmp->qmpphy_mode = QMPPHY_MODE_USB3DP;
> +			qmp->orientation = dp_orientation;
> +		} else {
> +			dev_warn(dev, "unable to determine orientation & mode from data-lanes");
> +		}
> +	}
>  
>  	ret = drm_aux_bridge_register(dev);
>  	if (ret)
> @@ -4189,11 +4323,6 @@ static int qmp_combo_probe(struct platform_device *pdev)
>  	if (ret)
>  		goto err_node_put;
>  
> -	/*
> -	 * The hw default is USB3_ONLY, but USB3+DP mode lets us more easily
> -	 * check both sub-blocks' init tables for blunders at probe time.
> -	 */
> -	qmp->qmpphy_mode = QMPPHY_MODE_USB3DP;

SHouldn't this still be a default in the 'normal' USB-C case?

>  
>  	qmp->usb_phy = devm_phy_create(dev, usb_np, &qmp_combo_usb_phy_ops);
>  	if (IS_ERR(qmp->usb_phy)) {
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry


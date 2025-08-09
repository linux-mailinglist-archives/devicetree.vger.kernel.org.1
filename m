Return-Path: <devicetree+bounces-202898-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D0D0AB1F30D
	for <lists+devicetree@lfdr.de>; Sat,  9 Aug 2025 10:13:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9A9C118C3ED8
	for <lists+devicetree@lfdr.de>; Sat,  9 Aug 2025 08:13:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA7C627CCF2;
	Sat,  9 Aug 2025 08:13:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QnmxysSA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 697ED27C869
	for <devicetree@vger.kernel.org>; Sat,  9 Aug 2025 08:13:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754727200; cv=none; b=Yll9VwROQPLQmWcpH4X3K9OybWtnF+89w+FcCYBmHvLNoYOYCohF4j5/VMPIRULLSFgQ0kHAldBTdiO2sVDOb7VXteqcHNKXtDJzT6e6W1d9/ZpHC/ZBZV4cFHUqgGRDKG90LjzpDtnG39zt9xIlwu+uVcpEUTgalkBR54UiMFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754727200; c=relaxed/simple;
	bh=Zo8mlEHVKK7r3dcAcUMCIDPk9nysi03jQvXkxi4PMQA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kSCYrrjWFUVjPcW6rB6qUyfe5cbdD2E/Wzlw+iWiHK/eI1lDqZtvO2MXbMr1iBAyZ7FFN1LpSpw3jJMhm/eJJKbHWFmUZk7K/HqkzHRfXXyLykBRUFLZprRkKNAjOaAARltxjOooPmkpVvudrpQY9dJINeX8InixmXTjlcQE6ZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QnmxysSA; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5794oOK8028448
	for <devicetree@vger.kernel.org>; Sat, 9 Aug 2025 08:13:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=O2W0/Uola8XxJxiRMnFlST/E
	5qvZKRamukaTM8REaeY=; b=QnmxysSAIisuS80ghUv9HK8lNGCT2nUbWyl8EGdo
	4HKaFSgJ2PFxvBX/dxZ3ySjEZD+CtXFCRTKbpfqdS7QN7fMf4D4J0bpvIMwV0dC+
	7y2BLgWFuRicSPYqtZ05z/I0UH89CmegqfEwF0rJtwSI0VkOHVNX0LpOGvIacdYx
	W96E1m0sCbSsG+cgOgRl8j7YdH6ZJQsafLBPSv0IDgsF0ZWQG4Sr2QnxEFqyq7V4
	pZi3inLWRgdmEJBqXXKeXW3UUikzp1hyh4nEWw5OTKcVogtGgC3+AQhbv8Zm/RsY
	WPVfunSG/ESBGC/C8ovd8Nd7tnvkh4Q6L7wlEdDMhZF9dA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dym9g7r5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 09 Aug 2025 08:13:18 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b0884559cdso39930741cf.2
        for <devicetree@vger.kernel.org>; Sat, 09 Aug 2025 01:13:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754727197; x=1755331997;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O2W0/Uola8XxJxiRMnFlST/E5qvZKRamukaTM8REaeY=;
        b=OdZ7w7FrVUfS5sCHjtdMF3rR8ZVf18AwA8f3oE538jd/kflOtcJJvzWveh2PpQAhPb
         s2fuTLyCjgQns0IqC3hSfq1KLdCk1lvWlaLa+yjwvwyeVRHibYVCVUGlbf6ErbzAVvJr
         ZUyZb/cllHADTTOCFEY5KiXT78NUWiaHYZV7WjMJi280wEUHeObgwta3FWpn9fnJP6sa
         FGO/La3bbI7eUh80UrAsYfKsVfSsfD8ZUdeEbbrhS3Y8sgcBbT/qzaOW48zGCbKYXBYm
         C/m+K1Rpa87Ze5GG1vmj6IWZxkU56B2Exll7ndw99g+B5ngyhZl0eMIEfFX8+yx/2Gn7
         D6QQ==
X-Forwarded-Encrypted: i=1; AJvYcCWBQw9wa6GdFMh+rH66GQb3uuQRt3FmnpZj08zrOGGTPKteWERTLmwf8qtswAc2fpIzKudF+hyayQct@vger.kernel.org
X-Gm-Message-State: AOJu0Ywt9ppeJKEe+eaRgl9eRxFb3YxOCCZoZioIIsTRX47HhNXmAHX0
	WcYxhRzqQO7C8cbOyt/phZoV/2KGIosExwobb+9MAIqmXDqLXX/6NcDlkv0uY/eaKLCbXXNmMRS
	P68HqNwcSuIHPsOKo6rsg15pjmlMKTPoiVlQkghj+VkNlOSal2Urew/V0Z2utzmoW
X-Gm-Gg: ASbGncuz8Uzt2hlCR8vguF/iBc/HR6ja64wzP5yLm9iL70cOaO2TrmoZZ62Vc7TB09a
	coPJVXCIvtxID/D46+o6aYD7fIiLU0PmhBUUJuqghN0gfk0Pz1GaMOYIgX7a3apVfv1rQlm1+P0
	RFUUueDz0tOFB6kevVm52WMp+qb+Xr5SV39rb1m3KztLzH1cdXdDv0yYCqCh7SKCDbAPGlyBnmU
	1b78ujdAnlJKz9pc9TBodphphw9Mg8cWIpYstPqXreFJBYFAe9W6+rmURUX4uqrGTuA8c5+e7BO
	xfDTB67vXV4mw7VBJcxArhV/qUY1Ida91mGokoGaAezRfoVTK0s1Qo8RGwwLwH42/It+Pqdwi4T
	e6pKLPp1HSTardDj2qqtAGZnADPfbU2SivzEIia2MPOfDyeYNA8fd
X-Received: by 2002:a05:622a:514b:b0:4b0:761a:6c2a with SMTP id d75a77b69052e-4b0aed0bfe6mr93340811cf.11.1754727196947;
        Sat, 09 Aug 2025 01:13:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHGWYFgm3/KyGXb3VuNmzRZloNCLps1V2yzQNaYINb8ch8ribH0OaG2k0Toez8ZWQTKm+Sc4Q==
X-Received: by 2002:a05:622a:514b:b0:4b0:761a:6c2a with SMTP id d75a77b69052e-4b0aed0bfe6mr93340531cf.11.1754727196459;
        Sat, 09 Aug 2025 01:13:16 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cc8592678sm169601e87.31.2025.08.09.01.13.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Aug 2025 01:13:15 -0700 (PDT)
Date: Sat, 9 Aug 2025 11:13:13 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v4 5/6] phy: qcom: qmp-combo: register a typec mux to
 change the QMPPHY_MODE
Message-ID: <ibrupwvn5frzb4vo3eukb7p7pzonaxwhygshz743wmyrbprkcq@xcpt4ryzvwqr>
References: <20250807-topic-4ln_dp_respin-v4-0-43272d6eca92@oss.qualcomm.com>
 <20250807-topic-4ln_dp_respin-v4-5-43272d6eca92@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250807-topic-4ln_dp_respin-v4-5-43272d6eca92@oss.qualcomm.com>
X-Proofpoint-GUID: zpkXfySPrJDT1Sb58r1nZcdqQek7LvgA
X-Proofpoint-ORIG-GUID: zpkXfySPrJDT1Sb58r1nZcdqQek7LvgA
X-Authority-Analysis: v=2.4 cv=YZ+95xRf c=1 sm=1 tr=0 ts=6897031e cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=k9OlTz8o9ZlVdqEcvcAA:9
 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAzNiBTYWx0ZWRfXxmA66GdHN7Jo
 0Y0Gy8bmX/asaZFM9tCEbTxJXvqer2GQmrmbgYjGujkdXhU/TwRHQnSYwdEbx3waSSoHjbUqx/y
 et/KuWVjeUHYc/9KnfLyGOtWwZqKaTxKDKCwtd1cStweCnEZ4FgwV11vQrGkzcEiJWlTBBZ/KI+
 mCOiekW7+quKIQyCCQE3a2rAc1ft7/qVbxTfdWis7eV44Vme0NIYuXrQFgIUkGIlBpIlexwvBUP
 1KMLz5JaoSGiygzniuidySgkukOZDMNlUnXC+i8OxX45D5T+KFrZWCqNQB4deUL2LIYWI8zq7bL
 jj79CLFEoYD3CGqEwfZhjzdxV/XUmA79hRnaUSefCNYlTj/xabrDEJJwwv9xj++/i+cSHxeyfbl
 SyJNCKV2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-09_02,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 spamscore=0 suspectscore=0 clxscore=1015
 malwarescore=0 adultscore=0 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508090036

On Thu, Aug 07, 2025 at 06:33:23PM +0200, Konrad Dybcio wrote:
> From: Neil Armstrong <neil.armstrong@linaro.org>
> 
> Register a typec mux in order to change the PHY mode on the Type-C
> mux events depending on the mode and the svid when in Altmode setup.
> 
> The DisplayPort phy should be left enabled if is still powered on
> by the DRM DisplayPort controller, so bail out until the DisplayPort
> PHY is not powered off.
> 
> The Type-C Mode/SVID only changes on plug/unplug, and USB SAFE states
> will be set in between of USB-Only, Combo and DisplayPort Only so
> this will leave enough time to the DRM DisplayPort controller to
> turn of the DisplayPort PHY.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> [konrad: renaming, rewording, bug fixes]
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 118 ++++++++++++++++++++++++++++--
>  1 file changed, 113 insertions(+), 5 deletions(-)
> 
> +
> +	if (qmp->qmpphy_mode != QMPPHY_MODE_USB3_ONLY && qmp->dp_powered_on) {
> +		dev_dbg(qmp->dev, "typec_mux_set: DP PHY is still in use, delaying switch\n");
> +		return 0;
> +	}

I can't say that I'm fully happy about it, nevertheless:

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry


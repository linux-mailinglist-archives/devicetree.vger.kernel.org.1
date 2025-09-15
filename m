Return-Path: <devicetree+bounces-217122-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 19C98B56DB2
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 03:00:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6159F18977B8
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 01:00:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69E5D1D86FF;
	Mon, 15 Sep 2025 01:00:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OxpcoiT4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 214917260A
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 01:00:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757898032; cv=none; b=PsqeTbaAlaSrBxev4ayNewdKbj/jn0/RraMr2/SqpdqIpeEAfEJ+XCYksnNyrs1M85HTWzWyIP41aUCMQO7moQ6jtyHm8JbYYOgxRFYOw1+fNpmce7Pg7fCkBUcoWnbT6/1RHcsVWEZk0OIehW8LfaV27JchSbRMlhx85H14u3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757898032; c=relaxed/simple;
	bh=0s5pIJRj2Ly706SK/vH8OJ7sZK45JIuAC7nedl4x0/g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ERXwDEhbySGvVGfecuSFE5MwH3GYBvAWmwImGrMai35iTv5Qa8um/inaYsAC1E34TyP211vp0o6+7/FV3EInN4oAaaTba+IvN9aprYPh2wrxCcw2fPpw96GYeKd6dkQEiYZw1xABZoTZ9Mx6B0xrHYAgkQkbfHkytyxkQsT5lWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OxpcoiT4; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ENSBts012501
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 01:00:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yqfHnDEOnUdvEnKTky9oFQEnKcCdVMPVRKAhxqjE5l8=; b=OxpcoiT4hM+IRFi7
	bb6Fi9SXD6Seu0hGf8gqbpPvTbnhR54ccyNBLgEsGN2kWQ5TGy0FycY9D6j72HiT
	XaUYOypQsYYOd6GGFeOwSA7FOKDquOE7AlC9hsIIya92+yHZeXpDQ8uT9xvP835g
	1DQZFTx3qYU3qgZ+c71zKGHp5zXX+W1EhpDQiRzyGZryZPO6HCE8NccvHxD5HUL0
	b1/dnyyekBkzFiz8cPfdR36xJnJl3x50U/l/25TrGIJLOB4DqFGk8zP92G90DgwV
	LgIMd/vvxCrmokP/GpyYtKjezPwJbVq2k4yh6FUK60WxUAXp5kCN6ohpZMqlBaPQ
	mfCJ2g==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 495eqpsu69-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 01:00:29 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b5fb1f057fso53100031cf.0
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 18:00:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757898028; x=1758502828;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yqfHnDEOnUdvEnKTky9oFQEnKcCdVMPVRKAhxqjE5l8=;
        b=J6veLOJoLo3Ob/OTkBLoacKctD5O2Fpnvh69/xhcaKkYwHxL80wapMVBs4JGkiSXsN
         8oSvW5Le1DRakMBZPFhNpc2XkOoTtLcaxqSd3DAZ110RUIQkirdYm5bSM4MX3jw5/P7t
         UPMS8nq4qPK1sE7mkJUdHXracj2yFLGRMcnQoJt8fsznQSiwzgVOb+6XQD30PMRYjUt1
         dH33+EURs8ld6wVnHZeZz+mA+oPGUAmxhioy/2y2w7c57ftqPVxbz9wEjRhFuT328UpA
         PlcM1IzZPkBerh0tsn61XXSX8F8TfGCBWcV8m90lYeTe3Ylod1D35ZmvNjOm89Cs4AI6
         dhhw==
X-Forwarded-Encrypted: i=1; AJvYcCV3/2wfvFkSbHfUEeE8AHC0P90kERwH5k/Zx5XZvpISLt1cEFIw6NxapzwJBVjLAOF0lDWQUvziEFP9@vger.kernel.org
X-Gm-Message-State: AOJu0YzlGNsk3BRBYo9xI31zSEwaEcAuquRSBeTZ+1Q5sta0iIwKzhi4
	+yrmMLmglXpEIiPcZF2GwPUp6vFB+zscO+MH8O9J2JANDR7SO5hLR9N4GdYyeAw/+yS8rHxj1tH
	40lJIaAEPy/Za/iKyOBMeL4tV82eshBQYcr3SLDBo9gwGescEdbWu0PVDj0jM5wyE
X-Gm-Gg: ASbGncvmEO8rCZpeHkWqRUCZCtk93YRZx5oNH4GSqOC9UxZv9XzN5OT77Dlzf4HUSQt
	4qiLgpbfLw7qM6RfZz9m14/KLN9WZKdgVPKo8q/zjlMI+mA2nh4lNRJtzjEtPoMmEpBZB01Sqvs
	OIre5/JJmBPMPZP+zcPzsTTkk1WVLGBJCf/nw+pDLvB15nA02+Aid4C3Abws5159qGjKTJYrviD
	IA1S6PxmQskAoIYRf/Kz0rWjlAvEO/PpylR6cAsYnTNohuSSrnDie3TMcYplxWBP0aNXTkpi8hj
	cCruR5emdmgHS3qWGhUzRlSG8iK4l5vSc3vB0FKMIoh1Hp5cur0sTwNrG3rPfVwWvKBKrLdQbau
	bt2OIgHJl6fvEUDwflIvkqr+/iL0UzdOVTIdW7iaBi1hE8KRBa7RU
X-Received: by 2002:a05:622a:15d4:b0:4b4:9062:69a4 with SMTP id d75a77b69052e-4b77d018f7cmr125417781cf.35.1757898027823;
        Sun, 14 Sep 2025 18:00:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEQoKXTfHUZm4ewMDtxrD3cLgoJBG5H4zVtX42N1as3HFiF8AaH1mekFLSfDZC/KfKVIHKxMQ==
X-Received: by 2002:a05:622a:15d4:b0:4b4:9062:69a4 with SMTP id d75a77b69052e-4b77d018f7cmr125417221cf.35.1757898027212;
        Sun, 14 Sep 2025 18:00:27 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e5c3b628bsm3230962e87.15.2025.09.14.18.00.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 18:00:25 -0700 (PDT)
Date: Mon, 15 Sep 2025 04:00:22 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Frank Li <Frank.Li@nxp.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
        open list <linux-kernel@vger.kernel.org>, imx@lists.linux.dev
Subject: Re: [PATCH 1/1] dt-bindings: display: simple: Add innolux,
 n133hse-ea1 and nlt, nl12880bc20-spwg-24
Message-ID: <ufmwjrlnaq6tucfpqishzvdpgsxartxgohjrgyr4eccahb5jrc@5ausrm3osivb>
References: <20250912185159.1118209-1-Frank.Li@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250912185159.1118209-1-Frank.Li@nxp.com>
X-Proofpoint-GUID: bht6iqBs3797_UYW_TuRbW-gqCY4aX0F
X-Proofpoint-ORIG-GUID: bht6iqBs3797_UYW_TuRbW-gqCY4aX0F
X-Authority-Analysis: v=2.4 cv=XJIwSRhE c=1 sm=1 tr=0 ts=68c7652d cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=yJojWOMRYYMA:10 a=8AirrxEcAAAA:8 a=CqteVLWsAxVuTjZik0AA:9 a=3ZKOabzyN94A:10
 a=wPNLvfGTeEIA:10 a=kacYvNCVWA4VmyqE58fU:22 a=ST-jHhOKWsTCqRlWije3:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDE4NiBTYWx0ZWRfX6N+9TehnSXBL
 NcvpMDUSiYuvhh3F8g2cJTuo9vctVs90o4Q1nMb710nxs3sK6BswhDwhdoVNQq5Tdab9Vv0egEs
 fa8swQKP6DkkPXhMjgnOGBpbaU+KDwRrAebZEjq0/WCMoLHuI2BP32R9/zwk4Q59igwEmM7qiVZ
 CBKce/ygMbMYN2gkQ+1LNxy+XM/MznIizMTKH/AP7YOjWS0ITE83rykobFBz/oaQ46CnA6qWx23
 P9wCUaBws/E9PcjeRrpk5ogt8QuAxgBdKjbdt9toKBshyTr3/EuyQDVMt8su5vEE9h0l3CetG8g
 g5TBEANmPL9BK/xDumLewsHdiD0CUFPryQ4KSx/i+YnXVxiMk8w7GjXE9xIFqcevaTujBzZHAj2
 wCkjsVHy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-14_08,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 priorityscore=1501 phishscore=0 impostorscore=0
 malwarescore=0 spamscore=0 bulkscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509130186

On Fri, Sep 12, 2025 at 02:51:59PM -0400, Frank Li wrote:
> Add innolux,n133hse-ea1 13.3" TFT LCD panel and nlt,nl12880bc20-spwg-24
> 12.1" WXGA (1280 x 800) LVDS TFT LCD panel.
> 

And no driver bits?

> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
>  .../devicetree/bindings/display/panel/panel-simple.yaml       | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> index 48344ce74a6e7..742ec6033b724 100644
> --- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> @@ -180,6 +180,8 @@ properties:
>        - innolux,g121xce-l01
>          # InnoLux 15.6" FHD (1920x1080) TFT LCD panel
>        - innolux,g156hce-l01
> +        # InnoLux 13.3" FHD (1920x1080) TFT LCD panel
> +      - innolux,n133hse-ea1
>          # InnoLux 15.6" WXGA TFT LCD panel
>        - innolux,n156bge-l21
>          # Innolux Corporation 7.0" WSVGA (1024x600) TFT LCD panel
> @@ -230,6 +232,8 @@ properties:
>        - netron-dy,e231732
>          # Newhaven Display International 480 x 272 TFT LCD panel
>        - newhaven,nhd-4.3-480272ef-atxl
> +        # NLT Technologies, Ltd. 12.1" WXGA (1280 x 800O LVDS TFT LCD panel
> +      - nlt,nl12880bc20-spwg-24
>          # NLT Technologies, Ltd. 15.6" WXGA (1366×768) LVDS TFT LCD panel
>        - nlt,nl13676bc25-03f
>          # New Vision Display 7.0" 800 RGB x 480 TFT LCD panel
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry


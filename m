Return-Path: <devicetree+bounces-206060-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 467A1B2B5E3
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 03:24:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D17687A2B19
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 01:22:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30B6819F121;
	Tue, 19 Aug 2025 01:24:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="btW3Q6Go"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9071419ABC6
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 01:24:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755566653; cv=none; b=XiT6W2SqhKWK1mRQDouIr9S9ec8zmoYmN/mAuQ0BIlhdYFYldsmb0a9pAPC9zdDTNU00xLkd+m8R8c8JZ7eUX9bsmn7pPJUxNP2sCz1S+YgGfToFHxrm/oYvgRHul97aJKSUS/I27PtLSoF+Ys9QyAfhVzRQjYk/Ku1JF511cXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755566653; c=relaxed/simple;
	bh=8y6/2txZdauQeF98uuNTACygV6J3PcJ0uSif+AiQmp4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hBEHd1DOdclxeJN3epYPl8anxy3wHLal3WUqRh2oONTNwP51rot7AWgBQ7uWI26yvuU8LBAA6hVlXL06sJ/yjxWjGuRXrbtl4S0p4LmX+1lwWvE9vR1fgqM657Tyqai7TPOG9ipgCRovLqwo4IcsuO4Bg0rFWIRTJEAJtEGzdSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=btW3Q6Go; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57IFHpAc015694
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 01:24:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=dmdLF4KW1eFiICY+4ZeOl5FJ
	qXEjQMPENqtFLrW0CqU=; b=btW3Q6GoCg5RsaGSRldv98B0HsbjVBVTgfsPp9lO
	atXtSb7ME1pwAmfsFHA392o3miHbw/orstXDeEUvPL9wc3pEWqBocgA8Mu7wn3/M
	6dQ4mcwann4i6W801aROI6foxVnltb3pbEuLjijVr410ukaKAaWeHaOoCbshORU3
	n2uy+Jzu2itm5ziGYc6UkdTA3yUOlD11KakeSt2XqfbVrZ2WgCY4AxnZ+eCz4Li7
	M6mL+SZZi6crjOBaNGlau2WOtV5HD21MzhTa4zUjQRgiZTQM1qBsdprwuim46jfy
	BBbT3RXbcVarW0Np7O/hj5EOlFjD0UAZa56SHnNMbBCdww==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48jhagxnm7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 01:24:10 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-70a88d99c1cso108297196d6.0
        for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 18:24:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755566650; x=1756171450;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dmdLF4KW1eFiICY+4ZeOl5FJqXEjQMPENqtFLrW0CqU=;
        b=bRYWIaIlagHyLoeRaitzZfvWUwvd4WJ63dniMH/NlPO6nl/x+MN9jo3GvZi1U2pm9h
         lHdhAhxWemZwu+R0caAw4PvtEnerHugK8h5uGMLbac8OLWowAKz7N+f1pzf1pxkZAUei
         ZXtyRwHhKwKAraLozmfDMnGG7gc6+GtYyKhBAwJGAidL1xejci64gCnYcXSb1hrTY5NY
         Z3rByAYYXOBa+qwCC2F1nw2YYy4MTUw5E5UtlZoxGeh5fP0fQTLoQZKFIgszNYDZDTCx
         X52E4Zafb/zPjdyN+ctUEQtKHArkUOyMakYKWr7me2GCPxXO+abNJCJrRQFKqA72Jbcx
         OS3A==
X-Forwarded-Encrypted: i=1; AJvYcCXhtM0DzhRHtQ8aTBTNBhoR7OV7WkPbD+DWW40dPUWiw238TAKOHVNDA4ESqqVJ0Jyf91SzfJ3tz9RB@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0lpXo8MvpwXp0uGxTHW/hWqmKUnwz5/a8yjGwXSOC7kXlSYg/
	84Fo6vwUsC3ro16de1E+SgUqLWJQsXmNChMmBMQuPs31N5VyqYjIMiwYj5OEXARIhUw+LouHSdu
	rEZiUCcnwDrvk4JMsqokfbfqtmFdzCq4yp1eFdefc2W2CBOuBtVGwNk2DbwHYEohY
X-Gm-Gg: ASbGnctDDPZT/ZhzA7ABVb2JgTjo6dIXPK0i8DjVOcgz0rpnbDZBGm/nz+JZRUgBD/L
	Q2xuFwmisAAulEfDJO+irfOnrrPdskSnbIcTgzEDxmHeA5kDExun/R5qpigecXvqmit0kH+b780
	oq+7ZvMPuen3S/AP6tpXivwVsFIoOqopIiWGabo8utWXuht/U6CGxotLrSKS1v8QPcK14DcE3mb
	g0CnnSnUQj+EtWHWjYxpWTi00Q+5b+rOEMqk4rXglunoMLIfm5KjS/lGOtKYDdO7kzKRQMd5bM8
	OK33lD8aeBf/3ke0T4c8q9C3Rqrgae4JNlADDS2IVMvaiQPf02BVc1qF3CRgr78ZoJGN8PTH2eA
	/XWqD+MKLpRvPt3B3QwYdpKY618vQWjiALIqAiRNxw/btBvV6NLOC
X-Received: by 2002:ad4:5c88:0:b0:709:b92d:e84 with SMTP id 6a1803df08f44-70c35b748d0mr9519586d6.16.1755566649678;
        Mon, 18 Aug 2025 18:24:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHGMoeyP+XpKHjrRDIijE6EvbuuoJlGOgnOnsy2Ba3WttV2NVri7TEuVqrOX54DMtuIZmLoDQ==
X-Received: by 2002:ad4:5c88:0:b0:709:b92d:e84 with SMTP id 6a1803df08f44-70c35b748d0mr9519306d6.16.1755566649212;
        Mon, 18 Aug 2025 18:24:09 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef351579sm1871216e87.4.2025.08.18.18.24.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Aug 2025 18:24:08 -0700 (PDT)
Date: Tue, 19 Aug 2025 04:24:06 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Harikrishna Shenoy <h-shenoy@ti.com>
Cc: neil.armstrong@linaro.org, jessica.zhang@oss.qualcomm.com,
        airlied@gmail.com, simona@ffwll.ch, maarten.lankhorst@linux.intel.com,
        mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, nm@ti.com, vigneshr@ti.com,
        kristo@kernel.org, thierry.reding@gmail.com, sam@ravnborg.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, s-jain1@ti.com, devarsht@ti.com,
        u-kumar1@ti.com
Subject: Re: [RFC PATCH 1/3] devicetree: bindings: dsiplay: panel:
 panel-simple.yaml: Add Raspberry pi dsi panel compatible
Message-ID: <td7d5mldzdunb4sxs5rxa4tfnvvpolcmpwurcv5ubn47whnqek@azedwe6h3y5r>
References: <20250818154746.1373656-1-h-shenoy@ti.com>
 <20250818154746.1373656-2-h-shenoy@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250818154746.1373656-2-h-shenoy@ti.com>
X-Authority-Analysis: v=2.4 cv=D9xHKuRj c=1 sm=1 tr=0 ts=68a3d23a cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=RF00TdSWAAAA:8 a=sozttTNsAAAA:8 a=YApXqb8GNPtt5Rl-DmUA:9
 a=CjuIK1q_8ugA:10 a=OIgjcC2v60KrkQgK7BGD:22 a=_nx8FpPT0le-2JWwMI5O:22
X-Proofpoint-ORIG-GUID: zeQmWdAjQA_kq0PUHxuvMSGU_06sdpnv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE2MDAyNCBTYWx0ZWRfXzt6EYfKENyQ8
 ZnpQ4hlp3sO2AE9tho3AxUyYvBrQ27/gpCMuXknHtY4aXQU1ln3afx1dM6m6Gex7t/hjU1HsWzE
 l1eB9LJJCEAa4t3eeLSuoXVI/7IatwWdFRUzS89xu+4tTcYEZgZzVq839eK2/AYQGBGzSIoq836
 Z08R+c5w/7wyPgBRF510tgrl2QvS68yHS4BP5+RiT0QxW+K3VBWwlV/0B4Q0h7EdVEOoK1hK2yl
 uYw0EnqjQ7krImed83La3HWP332DkL2/yzSGeAI4F2JsJ4iYHFla5s/l0BPSaybDMOFitjeEkOb
 oNpoPb3mrWadEPyi0j7g/xMl3pjwZfxc3BVk4Dg4CFulx4e5Aya4iamAwZhj43jWsNw4UYMhW3T
 foaG10c7
X-Proofpoint-GUID: zeQmWdAjQA_kq0PUHxuvMSGU_06sdpnv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-19_01,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 phishscore=0 impostorscore=0 bulkscore=0
 priorityscore=1501 spamscore=0 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508160024

On Mon, Aug 18, 2025 at 09:17:44PM +0530, Harikrishna Shenoy wrote:
> Add RPi DSI panel[0] as a valid compatible for simple-panel.
> 
> [0]: https://www.raspberrypi.com/products/raspberry-pi-touch-display/
> 
> Signed-off-by: Harikrishna Shenoy <h-shenoy@ti.com>
> ---
>  .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> index 1ac1f0219079..65f486f2bc9d 100644
> --- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> @@ -268,6 +268,8 @@ properties:
>        - rocktech,rk070er9427
>          # Rocktech Display Ltd. RK043FN48H 4.3" 480x272 LCD-TFT panel
>        - rocktech,rk043fn48h
> +        # Raspberry, 7" dsi panel
> +      - rpi,7inch-dsi

It's powertip,ph800480t013-idf02

>          # Samsung Electronics 10.1" WXGA (1280x800) TFT LCD panel
>        - samsung,ltl101al01
>          # Samsung Electronics 10.1" WSVGA TFT LCD panel
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry


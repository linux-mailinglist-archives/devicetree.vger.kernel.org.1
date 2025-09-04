Return-Path: <devicetree+bounces-212956-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3814EB4437B
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 18:47:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D3B4A5C1256
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 16:45:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D9DB30FC19;
	Thu,  4 Sep 2025 16:43:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OodcnVPr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311001917CD
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 16:43:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757004215; cv=none; b=bO96jp55KBDrELg0DOJzn8kI+hBaUPjQm5fM7CHW0ifFmHG/uL9uFbueuSgfiqxgb0sNs/dsgcFVgzZwSTulkOQNZkAIFTZ/erJH49unVKoLvdWvUOK/HbsrNjFjatxGVDkTp2h6KE9uCHfcm3W9Dk6W51OiQXwjO1Wm6WBRCoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757004215; c=relaxed/simple;
	bh=w2dejdkgkOfnR6ZZTToOeg39YeTLEfhrSvr2kuE6Luk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IlLwvPWdlYAjZNmMF6rNZCSXvTynbsEKmDG5pyEEgleel7gDcjdSzB5OOHvAqJ0Xgd5jpX9toTGHWvWtffmS8OycG6hiRNCjoXC5dP7JApa/yKxaB3LcgVYU5z3Zcq759Mwkxd6Q2FGcjYjb3/aS8JEYOQXWs65bTDb5yc3GpSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OodcnVPr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5849X7ww012042
	for <devicetree@vger.kernel.org>; Thu, 4 Sep 2025 16:43:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=194cO1GmvVxOIcn8RfAnyM1k
	UF1gEHExRQSWfZpXVr8=; b=OodcnVPrmCsLxy2Ifo65URS3b/n7rJGtjCtQrPr5
	W0/TwIJsPKYuipsemCHLWxwqDYvck4Q65+3QQ3Nu59kBnc+YuocNLB7DqX54Z7k7
	5PPbczjGmEifemYZq/NRv2bV7ySZG/bNC79Ftn13pmGDQCzolsfjT9CFjFFnmMqe
	b6Va5R3e1WqqbePZYivyGv728YorPdGIWJQOxfuTezpM0gO6ZWtdUJL6eTL527T0
	A8wC9B6xhzsxwnJDnb4cuVC+b7FeKUyz8LuKD3LK1vXkcka4grf9Mae0Doo+UtmK
	4z1dnxQfgzGfHWIBRhWArTqtx1X1rnQoEedB1BbWcpHk6g==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48xmxj4p8u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 16:43:31 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b47b4d296eso26085901cf.1
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 09:43:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757004210; x=1757609010;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=194cO1GmvVxOIcn8RfAnyM1kUF1gEHExRQSWfZpXVr8=;
        b=I2iS88+6/KZ54Ey6ebmiGbLAHBCSUfLD0jdzRrCzEt4exBiqetRvgj3WrWCDdAhIQr
         +59K4fp4Lb1HVqOnURhJZpc9QWTwNTKdTDlX8tPGrvm2H4KhS43UOGU9idgvEE0oKdJZ
         yLC/9mh6ZurwsnlzUMxTpThAvOZjQ0MWjdFj53OxUryh7aWavuHjRy0gQMxjn5rWqCOO
         KCIN7qlkPm221arpkvouhy4OZyP6LOlw7RokumBGefuRfV++RpS2D1njU3ZguTAEDLYY
         pROPKg6kdZIRs+qMMoZCmJjR4+IjYNP3bKq7n+Y8gNhEDuXytWc03iCH8xHq2gWbWHRC
         1tgA==
X-Forwarded-Encrypted: i=1; AJvYcCU5Iudhu+6CLMxpWQKyhFjwGXPNi6T3/XW2yRL3l4kAHbywYzSZoQMNgLgGYVVAJmhiYMqVjT4G59L3@vger.kernel.org
X-Gm-Message-State: AOJu0YwO9J4chmEK3MfZiJ+vep9yNP+wFaBVixa/st27ZIjogeJ/syJ9
	gagfLTyiDTfWuuQw4VRyvP3NgtU73T+TnAB39N5h8vDPxPMAuaSM/nIf3dgBQ3aLytv0boJvyZt
	8QtA72qrtXBeKEfJLo6PugarqjJUmGfGk6lGIGhzFUlyM/+Y6C7LHcyu3J9tVkPMO
X-Gm-Gg: ASbGncsJrAFnTqjd3gPfxZdbGqEPMZwE0z9ukcdGBEtkgmfVnhKcr1P92o/8O7Dc5iB
	pCekrofgGsD/3KCaIGqNK/d5+kreDhZT4VCVd+ZoGxjuMCASbhp6T2r760/d1K4PkyThhM4lnqk
	Iif0cFWpVsYkNwtSnZU8+vsRngb1X+OmiURaj3utTBHUHXP9opLOq2ofihsryvy8TK4DU6aEAYe
	4yqVKSkj6uldgiqaZG0T1575Y3Nn3KNvUy1Sd/hOgvPRebOjFGfzQJDxC/mxameJwtXnV9smo7j
	8dKVttv4F58hMap5gvjQlepSPhfAXLZE9+f5JGxiVoEeHFi9xwWVPFCEUPOkJZtmFbIGK8QEHe4
	wyJbE9HC9gVk7CRRzQiE5fsKcMG9PdsWkmkhHcFh5HTE1JXEWjeB/
X-Received: by 2002:a05:622a:1350:b0:4b5:8c8:11a3 with SMTP id d75a77b69052e-4b508c814f3mr64210811cf.50.1757004210452;
        Thu, 04 Sep 2025 09:43:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGoXhcaDoqYlrzIzgBJXwbTTQZl4p3OH3mRMEaeJAudeMwawR3Sn0KzCcUZMEdXKJuLkxKt0g==
X-Received: by 2002:a05:622a:1350:b0:4b5:8c8:11a3 with SMTP id d75a77b69052e-4b508c814f3mr64210331cf.50.1757004209938;
        Thu, 04 Sep 2025 09:43:29 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608ab5e28csm1307921e87.17.2025.09.04.09.43.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 09:43:29 -0700 (PDT)
Date: Thu, 4 Sep 2025 19:43:27 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>, kernel@oss.qualcomm.com,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        netdev@vger.kernel.org, linux-i2c@vger.kernel.org
Subject: Re: [PATCH v3 05/14] dt-bindings: eeprom: at24: Add compatible for
 Giantec GT24C256C
Message-ID: <qya226icirpzue4k2nh6rwcdoalipdtvrxw6esdz4wdyzwhcur@c2bmdwnekmlv>
References: <20250904-lemans-evk-bu-v3-0-8bbaac1f25e8@oss.qualcomm.com>
 <20250904-lemans-evk-bu-v3-5-8bbaac1f25e8@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250904-lemans-evk-bu-v3-5-8bbaac1f25e8@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTAzMDExNyBTYWx0ZWRfX0Y8UC00hNapj
 pp5iDBu+ArFCyK7A3CJ2C3CcNvIDILEXdErk6G/NjTXUL9P1TIuHG+4zXSUXjDK7u/tvjl8YKsf
 CpmMDtxZxNieDO7Wyjy7iKFHiv/SYEu8dS0JJuy8jRDf1yAuM24V7AN9nRO1M281UAZSfAFO7/b
 xf6t9jfup+p/fo3Xe8MSTNlIQvygaE5mfP59l42Mc68eejWWyumjDOSP6v3kaqspwOKcv2Hp7nE
 V2G0RrcHC6FAn1bgnxdOs2/cimUvXuH1tphBsP+DdHwfhp2ClPhRP7y+/v1BGZf0m0QVx/fwdwX
 qtBKB5ZR1rmVcrIh/2tv5cRI40iG3chKTXkU1d+bgXhMNMzNyuqzh5DzaJnNyNk9RwkFpHrCpiT
 EgX0tta6
X-Authority-Analysis: v=2.4 cv=a5cw9VSF c=1 sm=1 tr=0 ts=68b9c1b3 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=E0jHSIb16-xZ11K09xUA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: n8uDsHLERjNKelHEPXSJuVjcFSUFCsdr
X-Proofpoint-ORIG-GUID: n8uDsHLERjNKelHEPXSJuVjcFSUFCsdr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_06,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 clxscore=1015 bulkscore=0 priorityscore=1501
 phishscore=0 impostorscore=0 adultscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509030117

On Thu, Sep 04, 2025 at 10:09:01PM +0530, Wasim Nazir wrote:
> Add the compatible for 256Kb EEPROM from Giantec.

Why? Don't describe the change, describe the reason for the change.

> 
> Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/eeprom/at24.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/eeprom/at24.yaml b/Documentation/devicetree/bindings/eeprom/at24.yaml
> index 0ac68646c077..50af7ccf6e21 100644
> --- a/Documentation/devicetree/bindings/eeprom/at24.yaml
> +++ b/Documentation/devicetree/bindings/eeprom/at24.yaml
> @@ -143,6 +143,7 @@ properties:
>            - const: atmel,24c128
>        - items:
>            - enum:
> +              - giantec,gt24c256c
>                - puya,p24c256c
>            - const: atmel,24c256
>        - items:
> 
> -- 
> 2.51.0
> 

-- 
With best wishes
Dmitry


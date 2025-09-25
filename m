Return-Path: <devicetree+bounces-221624-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 68714BA16ED
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 22:51:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0AB981771F9
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 20:51:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E1E432126B;
	Thu, 25 Sep 2025 20:51:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FXUzJHpY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A7751F0E3E
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 20:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758833515; cv=none; b=IiaDPZKTOKVAapxPkhzFPUTDJ6hbZHcGQGtdvoKCnOrV4hvWfnbk2U5cIdi5aR+OHQsNV8q8A5dqr/NLzqXssKocC8tw3VJFgqBP0XedPwIBT63e46j2NMWuVZw2Iq6Ateq1yNMzrDRfUls+K1kCC+BnXQQEE3/DUOrKnotMWU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758833515; c=relaxed/simple;
	bh=60h+PvBhk9ZCE1dSaYvz/x8//Zfi4LUenDLYPEMUE7E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VtjN89cy98rFrILOyrYmpLzObe+oRfx45rAwdZ6fo1iBEorLemTWcqqkkrFSFFJV5tHcWFo1lBw7bGKBasdOUYmHCux9OS1+tjXJuBJFz/PU5sWlUf6khIqyPaN2/Ac7AmoGLe64JccaG/KfKvP/U9QmhYL/lxdqH/KBL9iJWaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FXUzJHpY; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58PIPs21004169
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 20:51:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=B1RTyPEbqMfs/M5EeZCCAWjw
	5x88kEh2vuNN32oz2GY=; b=FXUzJHpYu348w/mgaXf8/0uvnYFcbJEqSliTBTPt
	zTGCstM0WZVIM7M8GrsGavu+lwOCgZ/RF0wpVXNtVOT5x+r7/DEdr71Par6LH1Gh
	wKnwwtqE6YlVQ5A2LBbUaivNBJ/RMNq03Cn7ci2B/wK092g/UovboP903xs4Du+r
	K1v6KOiz0OvuvGVoYoHHTwiHSXjUU4VDbmTFSHTAihcks3Ly9BR4Yu2ksZ+SPp0v
	vrXw7MMUHizrjugYAkjEyWVBsYldc91QbYbqYPE5JyTayRa3fESYAyTzpz60J/xy
	rNFin6fnuwYKPWnqaWk+ml3DbqIl5q90wFYbde4byiqMIw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0u0c2u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 20:51:52 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4bf1e8c996eso29861321cf.1
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 13:51:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758833512; x=1759438312;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B1RTyPEbqMfs/M5EeZCCAWjw5x88kEh2vuNN32oz2GY=;
        b=vvy3FgcjqH07icxhvoKkxzvowghbQMe8xBrmNMtOZTWD2t6Kcdj0CoGMiR96cAy7UV
         91joc1PuiqKEj1Qfs78WnVzkxMuj9cUiAK1kTTWT3gA4NgnzV33Cth85BJ3ahfS1nW76
         PO9mkaTJuTk+b7j9zZt8JWOYww/fSS060EMhiPF8r8gzieiGezK72D/L1zrCWx3IANpj
         Is2JwQ9T/JGvgH0uEvDwBjy7mcqVD2wmD5wo4F630ZXk1CubKSVk/C1Picc2lnqjfvt/
         0iYMtGjIrqGXXL1YK04rtL1aOK/4tkYiG+NDM2mgENTeK5j/TnEe+NpQGMZfDpdOGs/a
         s0ZA==
X-Forwarded-Encrypted: i=1; AJvYcCVzSV0nrZv1M7baoyZHMjKFrYpUuOadibRoZ2cRbXutDE2sMqGAE3h7tm2UvkwopRS2jC+5c+PzJUif@vger.kernel.org
X-Gm-Message-State: AOJu0YyUDyeOHTAue2FLhvOZ7TyD8UK9RBaWVsk0MrkLdxxRVt/liSfc
	zugje6OrQQ8p69IPUHe7OcxVTfytXyWo/HAPQ9wlb6kEvUO+s8N38pjlX3lFDYlq/w0EuBeBtIo
	eom99o91sIkInWt3ypDYFIn6pQgIo1Q+/uRxpP/YCChLmnxTaL68sRORnE6yVBUIr
X-Gm-Gg: ASbGnctMy6TI2udjo5aCa1Xij1iHUye2yeJBCddNEPVk1MRJRxrOk3TaNqPlcbz9JpZ
	bD/gjxESdTL4E+u1t6DcpoFKdkIIK49/0iMmxT97uYIzvkgLWxlE5AmJMRGWAObw5xjirvKIAYw
	fMcNRKSDGifIK8oqgEiqofYyESuStGNpmM4sLbczXUxtYnM+uX9j8a1zeT1LfvlhDIbs0h32Cfx
	q8RBAtfmCMlD7hc6JUbRVuZJvcqawCpLGP2dk548HBq7REXXsND5hXtgu2qSY1wbmRRMxewDj9x
	HhbEpQl4aV0/6Kgdz/vZF6o4Xm7s43uD9LU5PDuEC+vE+NBdom6mDSz9uqPfuNdcIDwkvN4H6xa
	2aoZhma49JUo/85S1LEi4I2ovaoZP17Ad7OmJGtktLS7SMbQYofp5
X-Received: by 2002:a05:622a:14:b0:4b5:f1e0:2a6 with SMTP id d75a77b69052e-4da4cb59235mr61629841cf.58.1758833511687;
        Thu, 25 Sep 2025 13:51:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGKR5yjoppC91j/VvrgzF8NVXXjanhDCZEwgkr9/7TQbyr8UNZPPV3fhtTNkrc+EffTq5DWqw==
X-Received: by 2002:a05:622a:14:b0:4b5:f1e0:2a6 with SMTP id d75a77b69052e-4da4cb59235mr61629311cf.58.1758833511042;
        Thu, 25 Sep 2025 13:51:51 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58316a31e48sm1076929e87.110.2025.09.25.13.51.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 13:51:48 -0700 (PDT)
Date: Thu, 25 Sep 2025 23:51:47 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: david@ixit.cz
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Casey Connolly <casey.connolly@linaro.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        phone-devel@vger.kernel.org
Subject: Re: [PATCH 2/8] dt-bindings: display: panel-simple-dsi: Remove
 Samsung S6E3FC2 compatible
Message-ID: <mdgdqm4qurstamxyt4nvkrabf2k57sf6so7qp7plmhtpqh4qtk@vohj4ofwhyt7>
References: <20250925-s6e3fc2x01-v1-0-9293016768f7@ixit.cz>
 <20250925-s6e3fc2x01-v1-2-9293016768f7@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250925-s6e3fc2x01-v1-2-9293016768f7@ixit.cz>
X-Proofpoint-GUID: sNcXle7wb2qbNdJ2PiL9KHkG9YAdpFtS
X-Authority-Analysis: v=2.4 cv=PYXyRyhd c=1 sm=1 tr=0 ts=68d5ab68 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=RREAxZkodCCEBgaENwQA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfX5+MjEZ0L4o8b
 uFZ6PP4LkAbGA+V/NrjwRY5dmwbIazgfQ+ZOV+Z+NVagPoQ6EHoUcLJ6hoBcucP237Q1T+YBtFd
 i3LeyUbW55DHEsUarzaJtEWbVXpE3PG6rNVQ94XUut+88e0PfTrFJByxKXFUHuqjExidwgb/xE2
 Ti0D6IdekIvLYz3S425H0B1FPzn/u9c9FnStw2kJJi16KsvePQ66jT0hVLixMyR5pPaDalE2neE
 gfauhxO02Fje9uPhEiW9SY6ZbOrXuGd454c2LL6xnP9CfP3jpdA+e6H+1sSd+/8BlYkdi4e0fjB
 tvC/VomIMVk7OxDZqUGIO0ZKJNfhIA3T/1mJo+WwV05n8bOwV8jqIWufRhDkVDtwFqokeI20kth
 U8dhbbtrvOFz7LlU8/uLITGQK8Ev2A==
X-Proofpoint-ORIG-GUID: sNcXle7wb2qbNdJ2PiL9KHkG9YAdpFtS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-25_01,2025-09-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 phishscore=0 adultscore=0 impostorscore=0
 lowpriorityscore=0 malwarescore=0 bulkscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171

On Thu, Sep 25, 2025 at 11:12:48AM +0200, David Heidelberg via B4 Relay wrote:
> From: David Heidelberg <david@ixit.cz>
> 
> Follow up commit introduce the proper device tree definition for the DDIC.

And the reason being?

> 
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml
> index 9b92a05791ccf99061ab7a1e01937bb832a96fe6..6c1249a224c8a170b33fd3f331f985f16914cb2c 100644
> --- a/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/panel-simple-dsi.yaml
> @@ -56,8 +56,6 @@ properties:
>        - panasonic,vvx10f034n00
>          # Samsung s6e3fa7 1080x2220 based AMS559NK06 AMOLED panel
>        - samsung,s6e3fa7-ams559nk06
> -        # Samsung s6e3fc2x01 1080x2340 AMOLED panel
> -      - samsung,s6e3fc2x01
>          # Samsung sofef00 1080x2280 AMOLED panel
>        - samsung,sofef00
>          # Shangai Top Display Optoelectronics 7" TL070WSH30 1024x600 TFT LCD panel
> 
> -- 
> 2.51.0
> 
> 

-- 
With best wishes
Dmitry


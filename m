Return-Path: <devicetree+bounces-240078-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AD36C6D1DC
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 08:30:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1F0E04F1B2C
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 07:29:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BA1A322C89;
	Wed, 19 Nov 2025 07:29:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WL+x2GdQ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="RS+kszBi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5597321F54
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 07:29:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763537380; cv=none; b=VukrL+V7A50dxh3SkG3G1gg08WhzzevR+qSRyI4ALNjN1w4dnpsebu+HNwPL6YDcyIE4ob9VVwyA61GDZPu3CXWtUTHrdU3i4z6yXCTwpIBqf9rvXqe+YMAB3dT5Z8HxYsH6XTE8XD7Hafe/2p4BRmJB5HSZarmV7ucW29ftOb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763537380; c=relaxed/simple;
	bh=zg/ZWTxcyR3E8ps5zz0SNuakKqCsCLPwWf6gsRPSY/A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=f2wuTQRcVyG+DLdkNRMVIpICZLMdUnaqN/Y4dSd9dKardJvp5XB01OT35L5UCX2LcUofDagVYZK9ReFsZh4Aui409LWe54Cv+C1sDs8dMMBuA0qXn+jXbJS3mAL5pukBEcqMPoT432z+UXuIwzDrgWMBhkrzhKvlcjWMOkBXuP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WL+x2GdQ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RS+kszBi; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AJ2q8V02755578
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 07:29:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=R0I0UG4zGGjNwh/RIuy9/Cv4
	md8bLt+9za1Gu7nmthw=; b=WL+x2GdQEMmowdQurSYGLt+bx6s4g4MN0XdG5Jtm
	0gkXU76EjdeWu6aznZqPR3MrtazsOfncLPxCUc0gnMtub+xmM03z9ruxCdYziC7I
	x0ayru3OONZQuHHuBtxkMrvPh5VPaEVnSaWO1O++fJbWrj/MoA94xFJeevTe2zKT
	+JfAPvOSlyciRedVdqFz68x3PUa+uBnpn93Iv6GHp3vKmAHZ2dcN1A2N7VQ20a/p
	qVnRT7E4LctLhnyVspOA4hMd3DAPbXvkRlXzun+8yJDRobQEhFr4hVQShxhPTwkW
	9w4muAmwEk33omR5A5AgN8TCJvdDpeEWKscEHvBurgRmGw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4agnkj3mj6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 07:29:36 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ed6ff3de05so204563981cf.3
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 23:29:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763537376; x=1764142176; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=R0I0UG4zGGjNwh/RIuy9/Cv4md8bLt+9za1Gu7nmthw=;
        b=RS+kszBivInjrBI/W5LZn4NjZmTCiHpigp9kyz1Y6uTlarHDTn8EjmCZc+AM7Mp6q3
         Mu9aWqqZrAHSy7G4wIc4ox69VvuX7cj7KviX6yVxo9jBcTBomjksJ70qbeI6/VvEGvc8
         gZ7TOXOcyoq9Jy0j51Em3F4ygygxSt9tjfw35gXORzCIcbfy1Gfstr6UL5ura47DS6j0
         wc8+XHe4nIhevQJqMSvfXE47WfuzsHb+scq5tQRVKQAjI/xGe1qhwmM/1HhRJRwNL6wO
         eBBq3xq3NNDScfE7Vp/W+f2jf0frukBP2OFaYEj1V/icyvbInHV80uZ/fQBeGmsSuNnG
         KGlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763537376; x=1764142176;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R0I0UG4zGGjNwh/RIuy9/Cv4md8bLt+9za1Gu7nmthw=;
        b=nXIBRQmMXEXetGYOtlq5iSPeyA0dvEQ2++5QylAnDK3sSKFBRN1PmMsyYT6CRxAldM
         tWr53HtQrWz1FgBr7XYQCpdqGy5Oq6UK/u4fjsvXEzs+tWOIBPam95UbEa2lj9y6SDzp
         uK+beSPqScR7Cul87j4Wa71+7wCSKk6fyl7X4QOQbSy7+3OMGOgOayrjKLXC9r1cuiwF
         unLgtjKD+scok59CZilpn9FBL7lIo4IWVP9LfSh38nh12fWJW4RuAM9/cWLlRebqGHc/
         quOEXAU2ftJR+PAeaOdIOZCGn7UiTfuizVR6aKkehdoW13nU/dYaF1d9Si0AarAvYRAz
         tKrQ==
X-Forwarded-Encrypted: i=1; AJvYcCXvsUct4EvtziPBqHWw+qLPD9kLkaGUo6406Ive0j4lLbqKjsXaGW6h3vSBmfGfC3J4W/jm6psVGGja@vger.kernel.org
X-Gm-Message-State: AOJu0YwnoxgRss4erlGAajIupUfkI4NQc9usseFb0s6WevrOQrX0isMT
	4t46Bp/wfPmcaLIfXR04bnkJmA56a21/Lr5u6ObQvyHS5iD9sxILbJWNTP6jIWyvMy6XrO/xPPx
	o9KCJGdpPsHBlf7bYDsXT1zM2UX81jOWmSCVEeT7FlGOMV7NGDVidmOSLeglZezXO
X-Gm-Gg: ASbGncs9Nbg5cEqSM++9EurfzDlqmFEmBRT/yk68lF17nhIxLS6GuCyQ333KeSGlO/M
	LagKUAI7DNUgt4kHroTc+R4nzsAv5K1ON/K4PF2WFXD4TgoWXPg9XnW6MdFjcX1LUyo3Tgg+TN6
	F+MgKN9zFkLh2eUN5ifQTAq44pkatIFhN30v1B0XANT+NQ87AhkICY7kkRjkINnVuXG0mph1ioR
	0tZZMv8jMvK08ujbi/wQK0wQEtwWYeiXeURLPM2ZiCJD6PFRONMEqgI/g+4TUGiqQX7CHgmUxl+
	ULBnXwC8DsAWHNEQ3fF9jSSwSGiznjPYFBnsElITd8DYRjke4STKkzqMTqWeWZM9AV7rFQ2JZia
	ShQ2hxcyWVBHvEND0XrEDHHfBumR2mxwIOHmsUpHIdqjy68Sam8nisNcTCE5/lbOWNyXMbOLqMI
	EZXRuZt/bw0VvRzw3B1O065Hw=
X-Received: by 2002:a05:622a:15d1:b0:4ed:2edb:92b9 with SMTP id d75a77b69052e-4edf215c83fmr244114951cf.81.1763537375830;
        Tue, 18 Nov 2025 23:29:35 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFictIHYpBDF3F1JcOpRfw7SDn9ivbKXF+srwLX7+H+SCRJ4BCDfaThoIwHFC5rvT+6K9oHOQ==
X-Received: by 2002:a05:622a:15d1:b0:4ed:2edb:92b9 with SMTP id d75a77b69052e-4edf215c83fmr244114741cf.81.1763537375408;
        Tue, 18 Nov 2025 23:29:35 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-595803b33acsm4552020e87.33.2025.11.18.23.29.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 23:29:34 -0800 (PST)
Date: Wed, 19 Nov 2025 09:29:33 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: david@ixit.cz
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        Casey Connolly <casey.connolly@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        phodina@protonmail.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        phone-devel@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v3 6/8] drm/panel: sw43408: Switch to
 devm_regulator_bulk_get_const
Message-ID: <nrudzu7r7mzvjni7xt32owix7dd2arpimelk2a73h6eviekptw@fcbvniyakvg2>
References: <20251118-pixel-3-v3-0-317a2b400d8a@ixit.cz>
 <20251118-pixel-3-v3-6-317a2b400d8a@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251118-pixel-3-v3-6-317a2b400d8a@ixit.cz>
X-Proofpoint-GUID: 1E6nOLozirRf9tQSIgcPsGlBidbYXoJY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE5MDA1NyBTYWx0ZWRfX75Qh6DWMQfCj
 WB1/lz/6OEEFU1Ky5H1sPQbFhgNxZy0GHNQBVC0cruIN7e3GD46sPIr02dKBA3riTPa8cizW3LP
 7OZX+aJWpDOprqlmZWRSWA2z44rw4XMZZjkOuOniuYSu91a2DYIRklfSWJKyl725kmEADdDe0Kk
 Yu+If+I3RwuONzvSk3LyhmOVzklNUJDHa1ZzPrkuq6Ha1POkFXPXPyMTgpMHnIl0y8/9hhDzEh+
 jJDKDkAANzEpfG4NDj2n7e/jnAE+FBi10ndSGIEL07Yy/Zbmjmmn3R7HysTTZkeEA39EY9H+gWX
 xFDsnv4P6fCintCklNs8DYe4uVKHQmUAf0khdKu0uyh6bamcTCydqJ9FOzrocw3rwtX5rZDcdYY
 VbODHcgU37iZ79rVjY+Ah0TqmqAJ7Q==
X-Authority-Analysis: v=2.4 cv=cs+WUl4i c=1 sm=1 tr=0 ts=691d71e0 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=dnSpDUa8s3b1Pn1JWGwA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: 1E6nOLozirRf9tQSIgcPsGlBidbYXoJY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-19_01,2025-11-18_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 phishscore=0 malwarescore=0 priorityscore=1501
 bulkscore=0 adultscore=0 clxscore=1015 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511190057

On Tue, Nov 18, 2025 at 12:30:41PM +0100, David Heidelberg via B4 Relay wrote:
> From: David Heidelberg <david@ixit.cz>
> 
> Switch to devm_regulator_bulk_get_const() to stop setting the supplies
> list in probe(), and move the regulator_bulk_data struct in static const.
> 
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  drivers/gpu/drm/panel/panel-lg-sw43408.c | 26 ++++++++++++++------------
>  1 file changed, 14 insertions(+), 12 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry


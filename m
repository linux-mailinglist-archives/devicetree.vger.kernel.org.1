Return-Path: <devicetree+bounces-211605-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ECE95B3FA3F
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 11:24:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AABD57B1614
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 09:22:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9274A2E9EBE;
	Tue,  2 Sep 2025 09:23:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iifSQy9p"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C75582E1EFD
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 09:23:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756805017; cv=none; b=oF5Rer2BBbVMNos9Tib+uHk+u4YdVbABT87di9hXINA9YJFCHThALr36sucDXdEMYj58/C5DmoDLDwG4Upsv8EiRiYvLezD6BptGODo2dtHqU2XgfOyhVce3eIehxYnha8E+sSbulBcMix+iggLJndtCm5MhymDTVtIot22aHVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756805017; c=relaxed/simple;
	bh=tX3BCUzFmHYIg0myhvow09MB4ccfm98eYBIQHxNimfA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SPslTxzJVgyaX7XL6a7FMLvVBIawe+t8+b3HxkNNaG/n8w3XUbPJk9fx2G2RfHNGJJwf4PBvS3810AgV/KKZcEOI+1lhZWXOn7agBxBISZ+eQYj4ydvhh8iZel10aQpzlvY3DT3bamH20vsBbvfKSxinTt6FOJOty/bV+qLHeUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iifSQy9p; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5822SJ2N015457
	for <devicetree@vger.kernel.org>; Tue, 2 Sep 2025 09:23:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Ch/LhY4Ftoj00uev1yGdlcFF
	tJHZQ9xg8w0D9kgtUtE=; b=iifSQy9p3IEu5hNQ/ysGtvHwuEFAAtMxJbSFFxCS
	1HDtjhOMn4NA5Wwok95SBz9wNOiakQBHMMAtX9eObaDZT7dnRahZoOHXnTrMyVQD
	+zKZ7DKnPxghc4nF5imAfu1x+SY6qI6m3CBSh7V0QqIMgWeOJhFBFqUWUBmN/chX
	vRCgSRsi6u0n6lXU9UbuO+Iyz8cw/xKJg2lNUscGlabDJlZt9Va4jKcW3u/TO6ow
	d/MAq2L9C+wAXlY2vU5r3M+bj3qmjfb0oDEEDJdGRWvmbt8olJacHDFZCYwB6oLS
	Oh3G0mT8xmIm9jo3HG/t305jCNRGdvOVrvyBdH/7+KGb5A==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48urvyy9h3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 09:23:33 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b32a58c3f9so49296141cf.0
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 02:23:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756805013; x=1757409813;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ch/LhY4Ftoj00uev1yGdlcFFtJHZQ9xg8w0D9kgtUtE=;
        b=AD/0FVM8C0iWXDPRfx1bz4qX48puo8WYdmgCEHirKJe15OvNLhWFQnCdG6+nirh9Be
         leYMmc+rBNT8+/FZdGGXD3P8JWoUNONy2om2MTGOfJ0TUQOrbOAxs4OpL/a9CfbH7bk0
         NLt7SM6Fz2JNtqgDDtBNcpwkuRk01LOaZXFrkwAHD+S0fMvDlcfDWf3V/SnEfyggyhop
         dh8+PbGEDDgINWYNVvm/PxOB1qIt9aKFP5Axy5jberWMVpbStgKtgbeUJfvltYpCc0Uk
         UjzcndP6a+AYxwaO3dzRo0cz6fXYJAOmxc4BMYqDipu6be3btosGuZRYO9j+x3ROchLk
         nG8g==
X-Forwarded-Encrypted: i=1; AJvYcCXcOT5kd65XUpwnh8EvbSF5Ztx7E/vu+MXa+trsYTEwHnnDH90AW4haK2GfNG2Md+xEKnF9ugsmnIWh@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4X8gSvbdDIq0IosVZtlcHuQeaZ6w4nOD6OZBqUZFLjiqOzUde
	yowfi+i6v6D6PJhgsMOCpQHGTTSmocGO0KeAsU8qy4Wmu4OtwNiE8O6mHzDvN5VSRIiys9vqgoz
	IOHZYFSbgdRfbXnwMtbls57m51mDrvkHEoaRwkkgqQVmqXfZ55kgbLGeJ0AapgZqt
X-Gm-Gg: ASbGncvcvGlrm4IWxlpkXnDxK1veTRkRNC0sPdgO9dSPnBJDKuDnTAYBJ3qU24LfP5F
	j2+xXDmOxLjr/NDf5uhR6xhELqJAn+9cIVVXQ3TTwzR+H9waaqFAfYvzqzSNBFTdyHtGzGKTkHX
	onA4L9RGQRZMQhgCq8w3ChAn4L5hxmFYJIDboXfmZlPM6A93umAopEq0Pbu9WQa1LcqlP29gl1x
	Z1ASxqilTlKcbMwJLwMF2nZIKMLGgzdM7HGXVkkP7Z9ohsOldry6n0lLXWtnmrdaYkVRQLRaT6J
	mzgL7poNoEIb3mJMvf6Lam7frorkOTR0AdmN9SgCehWuHjy9+KZrvKBdU1SOJE1iJOhk9rpgzUT
	u7OhbdAiriOdQq/1//6HaS+b7U47nlohrV0MJBBC9QF8vbMhyV0yO
X-Received: by 2002:a05:622a:104:b0:4b2:9bd2:8176 with SMTP id d75a77b69052e-4b31d84444emr121691151cf.27.1756805012784;
        Tue, 02 Sep 2025 02:23:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IECcy5unw6WFIHBHq5iOWTGUfamDps6b170cwBunY645CsFBbNJrcuVd5piaxYGqW0iNZ5IXg==
X-Received: by 2002:a05:622a:104:b0:4b2:9bd2:8176 with SMTP id d75a77b69052e-4b31d84444emr121690831cf.27.1756805012345;
        Tue, 02 Sep 2025 02:23:32 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608279ceb6sm546116e87.100.2025.09.02.02.23.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 02:23:31 -0700 (PDT)
Date: Tue, 2 Sep 2025 12:23:29 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 2/5] drm/bridge: simple: add Realtek RTD2171
 DP-to-HDMI bridge
Message-ID: <w7lf26lyltduionxhckld76xhi4dsxzhmyfzz5notzt7cu3ixi@xns65dvdejb6>
References: <20250902-topic-x1e80100-hdmi-v2-0-f4ccf0ef79ab@linaro.org>
 <20250902-topic-x1e80100-hdmi-v2-2-f4ccf0ef79ab@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250902-topic-x1e80100-hdmi-v2-2-f4ccf0ef79ab@linaro.org>
X-Proofpoint-GUID: NO-tBCM-5G7I98QJX4ViloBPi7FN7afN
X-Proofpoint-ORIG-GUID: NO-tBCM-5G7I98QJX4ViloBPi7FN7afN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyNyBTYWx0ZWRfXzlg77fkBGxPt
 BMfaDBptE/BU71+vCZPsDdDF+Hu6Zy9T6r6Fpp9grz3JaRMYMOIzMUW4yo/tGegISQqRVjAQyan
 /ppYKL4JR1GHay6FT5lNYNyuLi4pmZKGcRUmP64FS6inwm5kIPdEwzs9GWR+fOe4+AwWq7uxfCI
 ReMVkpbM9LLup7Vl63flsPctYStTd3AXT3/AA4SZZF3LE+/KD0zGMD1fLE+X76C4k02ViLPrPb9
 OdazBVdvUSAt2N4NpAKWj+39M51doXRj7rnrgyFxhMr4NYiW/aFKV+p+yOYbDIX7w6Gv1a9668E
 DgqfxW0BJYN5R/D9kcBv98ocpxNq8K48fSjvyiRyZPkCqXURL7rpSKIK7ObzIRTVT9N2qpVuPew
 q1ARoqmW
X-Authority-Analysis: v=2.4 cv=NrDRc9dJ c=1 sm=1 tr=0 ts=68b6b795 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=eHZZoxIKThfaNsFTWoEA:9
 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-02_03,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 impostorscore=0 spamscore=0 bulkscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300027

On Tue, Sep 02, 2025 at 11:00:29AM +0200, Neil Armstrong wrote:
> Add support for the transparent Realtek RTD2171 DP-to-HDMI bridge.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  drivers/gpu/drm/bridge/simple-bridge.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry


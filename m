Return-Path: <devicetree+bounces-256667-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 40DA3D39E9E
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 07:36:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9AA8C300C141
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 06:36:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A74EA26B76A;
	Mon, 19 Jan 2026 06:36:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="M+du7hDn";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BD55g0GI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 500BF26E71F
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 06:36:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768804592; cv=none; b=tYIZ0hSviWYA9adWq4rhd8xevvvIhgzqh+h6a+H1SDfCR9HbdYVtOjTwiZMwIeUPYltA3WJdlfWK4H5DvX3lvA1GfXO4Gnh+tchgQ2DawzF2gqvtA99VlpSsvvGlpZxdF7C2/In1XMYrZW87ibzdWL6KWW0BTqVXLtiykiso37s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768804592; c=relaxed/simple;
	bh=yL4JxwiAYaS2zFZ51kyB7iARRAZuWSzfY9ooZK72zuU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AriETsa+w4qA07nbJ8JE8q7huXO5rFGbGetO/sUJynYtr1VbA57kZjv077OwngvjXss/XsieTXwIU9sPtvim4IdlPTh7OQYUnmXoQCljeVeDMbtwQsgFnZIW6xc9rccty8gUdouCToKgeTnO61eO9tMu9ioDIDP8C3qtJMLE/1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=M+du7hDn; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BD55g0GI; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60ILo2mT3003473
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 06:36:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=tATD7wOoM3Z8pbmvBPDfQvzN
	dL2yaPTze8xkJNTHRvA=; b=M+du7hDnJhAUq2JBMskNYy5zri+Du2kSKrGD1Img
	py5Ljp//IITKwObyVru7l4Q/UzrJ/0ex64BlLGiwuQP8X3K9b05Y8bz0296ssp0y
	IS+xXbM+ySI+boLokiSydkaGCNYtJ98kOW0dy+2whsjnglTJIRIHn7o1LD6/WMu3
	JjdUzthDaH9zmwU/fwjvu+Y9oQQxRTg0zhHixPbeTbSV0s/hysHLBNCYU9o8+seJ
	aouJvDb9zmjIiWB+mp0hDiXYAUQiHrtjFHnKBpYm0qi6nfrub69OgaKrUzLEccaI
	lcB7tXgPjFjOKcESkk/AEBz4wzyoXTaSGG2d0g3LlwsZlA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4br20x424s-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 06:36:20 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c6a87029b6so671293085a.1
        for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 22:36:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768804580; x=1769409380; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=tATD7wOoM3Z8pbmvBPDfQvzNdL2yaPTze8xkJNTHRvA=;
        b=BD55g0GItjQ2Hf1YrUxfq1Ia6DJmzVJNnIBYI2r2aBUyq03SyWeCeaNnlE/0LkmZJ3
         2PDxxdXg4V910tFmIc6ZrAUVuBKrk/yjlEaCSck/5F3Z527T5Z/rVhsxpVIh6muGA7DO
         lMcK9sUs6bAD9kiM9UzdOK5xR2w5voxnFkRGLHZpPI19JuCFnpIR2W6KTmUqf2RTxwve
         xghg/NOs4bxYg8pvxLEVKzic6N1nhX2FDvbDO6GoxTGpYg+HsmhJpl3m0ZJKxHkMBVBA
         N6q0JQyt7UkN8ygqUK6XbLBNYP9ststFEiGZbRHGiTcNeX3tE8+qcakY/c89lMzXnwpJ
         wnJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768804580; x=1769409380;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tATD7wOoM3Z8pbmvBPDfQvzNdL2yaPTze8xkJNTHRvA=;
        b=i368qcFtiJMb5CJ1rw5uTPw0T8QkPafJ2IlVWWSd/JbBQBhB1uyGaQiRP1L6vtlTAw
         BkQ5QId+voO3i4H+Mh7k9ryAmGColnSo5mPXZJKcTiM+WCJepNN/udTcHMGmYB1bPL9Q
         eYxgQXsGZvCbTl/FiY1TDxLsMxqOWk9r1eGw4nGXFju1XaHGX2K5cdsfJjtpZg539cuJ
         Vp6+fJiukluYS/zmphgzgAnh3s1ABTXOwKB6iAhK41Ut/dARipQkDz1UKti+XmDJPmnu
         CQNC1ZI+OYUixEl/PyVSPYhybL+qU/niuvzxMO2qL1xl2cK8u4vzoUkN50v8J8oXfXmw
         Q2Cg==
X-Forwarded-Encrypted: i=1; AJvYcCWRQ1mhJN3+sJY8RbJUVCB1vCmYQocE0lnjbs8inxwV4dA4jnMa3dAwu1Ycg7OwnGbzEaCB9Mv5GDRu@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+zzX+0HQJchJM/zn2VQ5Q/ywiSh2bYR5sUiglbex9ARsWjYkk
	aeVyRT1HOiCmpavb8H5mwEbuojKJH96XKP14UhDbRYtfPH+uwONAKkB/ibsErcZXUgCqKd/HvBy
	x2nKaWkIYQcFo0dhjbllMeFzyCjhpDh76Wk0uR15gxMolX2VoHDzVNaRntpXOZPOA
X-Gm-Gg: AY/fxX4kRP2C9V7toCTrYOsOuFeC8K6lvqMSw8zxmLJEQ8Lp8Jt3Y29ynjK7OwfvzzQ
	Wu/8MatJlzCj/Q8YcJ7iOFARqbC8GoYTrM3biW/r7Wx7RDFXS10c6LnW7ACkwG5G91wfhom0n9n
	HxAOYZPBA0ni1wAZeAP5Mu18GFwKsHatEaYq+BCceGSaJfLyAPofeNytMH9iG7Ea1dBxDODmjvR
	DPTdx0Jf0CH/Gt4naC5xyEJWFNGsxbiGHhyy6Dt77kVhWY+cKxkPcwwsN9sxjcSTiRFpffsBiD6
	OQYYB3NuUmJtAOrU2aaCOfkJCKqQap6w+YbgHynQKR73I+6OVpZU1gpZDMGiZpksIRFsEcUdBf/
	ERXGdIvRUlJr12jP1R/VC9304U7TADDv+FJphp/JFJBqrwkXX+wVV5aPqAStu2zFkhe+gFszKZ9
	O5620XoU9iaEm/iFN4AKZyRgE=
X-Received: by 2002:a05:620a:c4b:b0:8c6:a608:5abc with SMTP id af79cd13be357-8c6a670532dmr1413550985a.28.1768804580322;
        Sun, 18 Jan 2026 22:36:20 -0800 (PST)
X-Received: by 2002:a05:620a:c4b:b0:8c6:a608:5abc with SMTP id af79cd13be357-8c6a670532dmr1413548885a.28.1768804579771;
        Sun, 18 Jan 2026 22:36:19 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59baf39c046sm3072685e87.71.2026.01.18.22.36.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jan 2026 22:36:19 -0800 (PST)
Date: Mon, 19 Jan 2026 08:36:17 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Val Packett <val@packett.cool>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/5] dt-bindings: display: bridge: simple: document the
 Algoltek AG6311 DP-to-HDMI bridge
Message-ID: <h2vft6wwp7765i7rxtsr2yddnx52a52nv5acfg3l2mm5vmjbz4@d3aossnwdkjf>
References: <20260111085726.634091-2-val@packett.cool>
 <20260111085726.634091-4-val@packett.cool>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260111085726.634091-4-val@packett.cool>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE5MDA1MiBTYWx0ZWRfXyZH4jGii53wx
 sXp9SfDuMMyN3rZBlHypBLcUIGT0YSnWuZCTBYipNuwxOsQerUWMgqTceJyjJPyWV7NiOYCs7oC
 wMhPQT5FQd6Ymg9ZqyeyyLSJZpwLGjLNNuW5ibvkueIE7Ft5VKsPudOXtJT0OIVANzulLLJXSrU
 rgCRZd77GtCIwd6NRTULVgfzTD9sL6XBAcOlqe2FtXMCnyPEVfAW/JKkzusfzmNYGMnKMD33Frx
 2lYvIsWKER4ADeGjutQjCNu59TbqHXtud0ud+5XUmIncBs0BWxgBwInHRz4hmIw6Bf85rcuKS+4
 LWgHy4S/ImRwofuM+Zi0F1XJ4PRfmNnUKnXPzAZL0zy9X9EUbiEFgkmx3IU79mGXSVekA3TgYUX
 Fjlmp6JaOQShXti/Lfzbw0XYKnZNVnAFiiJ12waz2tKvwYhMnJ8dG6YhA/mXlq6fZ/vZ4gzCARl
 7ZzYZ0uiRaD2flxAYyg==
X-Proofpoint-ORIG-GUID: Hz-0Mmutqlo32oeeD6my9-_g4cYYQHK-
X-Proofpoint-GUID: Hz-0Mmutqlo32oeeD6my9-_g4cYYQHK-
X-Authority-Analysis: v=2.4 cv=abRsXBot c=1 sm=1 tr=0 ts=696dd0e4 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=pCw0iXYVZR7UqAz3H7UA:9 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-19_01,2026-01-18_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0
 clxscore=1015 bulkscore=0 priorityscore=1501 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601190052

On Sun, Jan 11, 2026 at 05:35:10AM -0300, Val Packett wrote:
> The Algoltek AG6311 is a transparent DisplayPort to HDMI bridge.
> 
> Signed-off-by: Val Packett <val@packett.cool>
> ---
>  .../devicetree/bindings/display/bridge/simple-bridge.yaml        | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml b/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
> index 20c7e0a77802..e6808419f625 100644
> --- a/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
> @@ -27,6 +27,7 @@ properties:
>            - const: adi,adv7123
>        - enum:
>            - adi,adv7123
> +          - algoltek,ag6311

I tried to pick this up and got an immediate error from checkpatch:

-:22: WARNING:UNDOCUMENTED_DT_STRING: DT compatible string vendor "algoltek" appears un-documented -- check ./Documentation/devicetree/bindings/vendor-prefixes.yaml
#22: FILE: drivers/gpu/drm/bridge/simple-bridge.c:264:
+               .compatible = "algoltek,ag6311",


>            - asl-tek,cs5263
>            - dumb-vga-dac
>            - parade,ps185hdm
> -- 
> 2.51.2
> 

-- 
With best wishes
Dmitry


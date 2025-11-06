Return-Path: <devicetree+bounces-235514-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 09359C398B5
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 09:17:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 4214D4EED02
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 08:15:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 749D823236D;
	Thu,  6 Nov 2025 08:15:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TRIG0v0x";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="a/qSs8af"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFFB94CB5B
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 08:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762416925; cv=none; b=O3AVkzLo+f7mDvJD4uW0Tg8j3W3KM0q9/MfRk8YIXWlIFWaUdYagGhuV0RvlRSB5tPdTArZnTbG0EPXdILH3s9P7buQtJg0G30CLFkGB2BeKQWA3mGoqrxrxiYPnE1wjep7AaB39dPnq8jwkyZRAbg/mVV7GPVIWzufIJuwpQLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762416925; c=relaxed/simple;
	bh=TEB/7a9w0Hr+5IV/G4sPDzy8gkB3PgxJH7obQIdD1bE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cdlwlNE+W45jWe7vaAHE+Dmwg/4zL7tdkvgsQJEXsjMdkjhDubzKk+JQ3teZlC5oC8IXquo4HB5gMqThH4IlaESMP6OM72QiT55LAgxdtW5tg6lIxwyap1LOtk22na0R3zfMEIpiO1E9j2qQcNLQnsy4oo9WXXX80tyRlEvu888=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TRIG0v0x; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=a/qSs8af; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A61O4xM2798828
	for <devicetree@vger.kernel.org>; Thu, 6 Nov 2025 08:15:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=E2nTnkeSWlK4jeMAATj6ukfy
	ZvRvO60TtToxYqfsucY=; b=TRIG0v0xYSJK7xWSpUeY2FG2p1xUN5EW5P8bE31T
	DhsTOhS6byZpXzsBh+06OC87iQiM2SJdKBdLPuPDZxdJtWUa8aJO023w7Im3r5G1
	SOZuM7BzkAHcbFTIhHpiIPhs47HN7iFNkuTT9B4sgwCx45ihjkXR21FMKZ7TzroZ
	7b6jwcJwnvBDll+Nob38sn7gu+zhJSMdEdqTOhBL0ZG/tFXXZe5kpNYV1ecxFkql
	SgwsMjsNmvxVg1YJGxEBqnhcr6aJ8wsrvL2FhTql6rfVW/raquJuqLNYcsV9O8Nt
	C2kjR8P4sYWuBT4JDF0Vh9fLZ2YTBH6bJCC2F4zLpcR8Ow==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a8hyts0mq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 08:15:23 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2956510d04cso10027875ad.3
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 00:15:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762416923; x=1763021723; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=E2nTnkeSWlK4jeMAATj6ukfyZvRvO60TtToxYqfsucY=;
        b=a/qSs8af6gU4byHNa54uHcFJ0r/C5/w3H5Jy3ucIy/HjwiwP/mhZiOzDepcSnj5StP
         u/dqAALNsDMHxDXNKFKk58X6SYdbWSU310eboinEr07eggviL28nVk2H+WVKnbIdqt7K
         9AnEfzArwCeIgIj3hHupltPpvPiGOkNhxoRSg9cxvRbjtVZS4t5oMPUK/QHn5XGT+zr+
         +9IM5iUfYczgzBFtf7bmBgKpEzss6JhrDGTr9cFkfRuHJGbR5L/f0brggYJdG2Q65cLY
         Az3yIx98G+ckJihGk3ml65qdIEfRez+MOLu8elyeo2hfGfMWocRspbhfWGrwB8hdrubm
         Jmgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762416923; x=1763021723;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E2nTnkeSWlK4jeMAATj6ukfyZvRvO60TtToxYqfsucY=;
        b=pf97AxTGAHOcr+bMAWUt6iKEnBCDb8Yk7F0n8FLI94YktH9dzAqHcfFTrYp7CmAvYd
         PupmAO9TG67EK3NByup6I48sxCey+i5iN3dbkrmuDL5Si5ktkS2TozsfIGgnmc+iAU0k
         wr4aSTn8Jgh043kvxvTUJrPZwD+687n20qfp+KKc1Xz7br0mNq4W4NRJlkasC95e/zji
         pRfzvs6HjoZIX3nHDhlVG5Zd4NV/rE2wpYgBgjWu747trYKurdCHRzio7jbFdceprNI5
         9nW1J8GsgVZyLpTu7HyIvc/KlsxTqA1xUNqtBhQwEJPrnbbNU2bewmNvjgeDRNv7+tTu
         U3VA==
X-Forwarded-Encrypted: i=1; AJvYcCXzbQd5n4x5rdqGuffOivy7akpfI64A4TZd8kqslnQYe9yxSm/aqYopY9eLLHGvmVnTMAw2wHdVvS2+@vger.kernel.org
X-Gm-Message-State: AOJu0YzGPrG0DQmhnmyIrIyydpChwtXc/B3lKIR55YU/aJWIKO6Ven3A
	suXGDLOfgQ+fCOyXJCoj318hR9iSDbpEW58jcCB5lYwEEyJ6APnjSSWd5PXRcQG8CCyBXrhq6i+
	/62RMHLWzxLuacSjVm7Rk9iTBhgLyNMuLMTGvJY1UfqDHfcD/nCXLx+lM3yVLjSEs
X-Gm-Gg: ASbGnct09ThMfnLmMPv/SEBDn6EmggAy960hU4UJK6Tk/5O4098WYQmsgIALMU4UMVi
	nXjcHa+EHLvlPH0raJ+oIiwPS+F96NvlT8rM+HDKSAtOfjQjM1f0jzNe0Zs8qSgAoQh84Y+dgsD
	BwbyTQegB3wI6+4w2g/DNkQEYWzR0Sz1DNQkMmNIYwYQNX34SEselOSFvMB2s/P3OS+f5LyWSU7
	NEmqfuo1rGKospxswoxpx6dQqH20yqrrolGTJIGAznHOq1EYbB3tjbV/fhsmLWurEscIDYNf6az
	epE4ShEMy2vSSI/v0CB1gQag9LV1VpVPghfy4gbzKSaqS/DzNxiSTWcircQWujCaMQuQNTwCkS+
	6y+H3jJ2/iLQYrjageDKxrLzCO16PYM7SJlc=
X-Received: by 2002:a17:903:2f44:b0:272:f9c3:31fb with SMTP id d9443c01a7336-2962ae94115mr86504915ad.58.1762416922676;
        Thu, 06 Nov 2025 00:15:22 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG0r4zBjWbLh4JTzVOhjkocrbeoCzUB4DY4f4S0D0wECmNRrPl3V9nkwaxCedsZqCk4kkR8uA==
X-Received: by 2002:a17:903:2f44:b0:272:f9c3:31fb with SMTP id d9443c01a7336-2962ae94115mr86504495ad.58.1762416922173;
        Thu, 06 Nov 2025 00:15:22 -0800 (PST)
Received: from hu-vvalluru-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2965096dbe4sm19486625ad.11.2025.11.06.00.15.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Nov 2025 00:15:21 -0800 (PST)
Date: Thu, 6 Nov 2025 13:45:14 +0530
From: Prahlad Valluru <venkata.valluru@oss.qualcomm.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tomi Valkeinen <tomi.valkeinen@ti.com>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>, Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] drm: bridge: add enable gpio for display-connector
Message-ID: <aQxZEi5oHsJUb/GR@hu-vvalluru-hyd.qualcomm.com>
References: <20251028-enable-gpio-dp-connector-v1-0-2babdf1d2289@oss.qualcomm.com>
 <20251028-enable-gpio-dp-connector-v1-2-2babdf1d2289@oss.qualcomm.com>
 <20251028154929.GA797@pendragon.ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251028154929.GA797@pendragon.ideasonboard.com>
X-Proofpoint-GUID: 6XG168lAbOl0oUmawSULtr80rMEmExBI
X-Proofpoint-ORIG-GUID: 6XG168lAbOl0oUmawSULtr80rMEmExBI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA2MDA2NSBTYWx0ZWRfX1yafJGodRGAY
 5LimFeZfnNWmZwVFg5AlHJDC5pnkXdStu+/NZrcgIOoL4V8OgnNFjtAobRbUrf0wwrk5Nt7KKHh
 f76TJRVRCLh+CvKGwe1+qLnKV4nvbQeso6zzxd2GNBKmjZQwZbrqHGpGa2G9SjnMecunhoVWOjs
 akn1IdxhQu339dIyxXlBqVXQZwv0EC9p4mNJRAFJH3yW9W/VLACV/jsgqJ5/4ITNXSNck60E8hw
 MRgoL9Dxm7RBHYlGfQYfsrzUXJSnzZtUnIaxLP4JsyMf90DzLPst324RfSmZeouv/Zp8doXJlP1
 FJjFO0osCOpNveJ/9pq0VH7Vhf7g9Px8YD95mwXOfCAZXizBwot8mIHmsb7bbGsaghnF0DRNLNU
 UGCTbZY8A4fsnLbbeJoQ7cfohpn/wg==
X-Authority-Analysis: v=2.4 cv=X+Rf6WTe c=1 sm=1 tr=0 ts=690c591b cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=kj9zAlcOel0A:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=2BB3o41RQBCR0pyYnt8A:9
 a=CjuIK1q_8ugA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-06_01,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 bulkscore=0 impostorscore=0 priorityscore=1501
 clxscore=1015 malwarescore=0 adultscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511060065

On Tue, Oct 28, 2025 at 05:49:29PM +0200, Laurent Pinchart wrote:
> On Tue, Oct 28, 2025 at 08:56:50PM +0530, Prahlad Valluru wrote:
> > In some cases, need gpio to be set for the connector
> > enable. Add optional enable gpio to display-connector.
> > 
> > Signed-off-by: Prahlad Valluru <venkata.valluru@oss.qualcomm.com>
> > ---
> >  drivers/gpu/drm/bridge/display-connector.c | 7 +++++++
> >  1 file changed, 7 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/bridge/display-connector.c b/drivers/gpu/drm/bridge/display-connector.c
> > index e9f16dbc9535..52f5e4175e64 100644
> > --- a/drivers/gpu/drm/bridge/display-connector.c
> > +++ b/drivers/gpu/drm/bridge/display-connector.c
> > @@ -21,6 +21,7 @@ struct display_connector {
> >  	struct drm_bridge	bridge;
> >  
> >  	struct gpio_desc	*hpd_gpio;
> > +	struct gpio_desc	*enable_gpio;
> >  	int			hpd_irq;
> >  
> >  	struct regulator	*supply;
> > @@ -298,6 +299,12 @@ static int display_connector_probe(struct platform_device *pdev)
> >  					     "Unable to retrieve HPD GPIO\n");
> >  
> >  		conn->hpd_irq = gpiod_to_irq(conn->hpd_gpio);
> > +
> > +		conn->enable_gpio = devm_gpiod_get_optional(&pdev->dev, "enable",
> > +							 GPIOD_OUT_HIGH);
> 
> What does it mean to "enable the connector" ? Given that you don't set
> the GPIO value at runtime, this seems to be a hack that is probably
> better handled with GPIO hogs in the device tree.
DP_PWR 3.3v for the connector is enabled by a gpio. gpio hog will perfectly
work for this scenario, thanks for the suggestion.
> 
> > +		if (IS_ERR(conn->enable_gpio))
> > +			return dev_err_probe(&pdev->dev, PTR_ERR(conn->enable_gpio),
> > +					     "Unable to retrieve enable GPIO\n");
> >  	} else {
> >  		conn->hpd_irq = -EINVAL;
> >  	}
> 
> -- 
> Regards,
> 
> Laurent Pinchart


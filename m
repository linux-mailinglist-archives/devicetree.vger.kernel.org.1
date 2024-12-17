Return-Path: <devicetree+bounces-131835-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7302A9F4B04
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 13:34:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BA5EB16DF93
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 12:34:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E6821F131A;
	Tue, 17 Dec 2024 12:34:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fVcqKKLT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 843501EB9E3
	for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 12:34:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734438860; cv=none; b=n39h9nBgdQ/fg7n8M+7nRD6YiNVymlr3X4SoC+L3RVBI6GoCy3VvI9hyvyWh+TAK65HVhde7IzpizinHVg4hv+Sb7UOezHnpj8jqG/NqEE1QqPWjNt2dlcFsNx/c79uW/t0UUqEZns9+ZH7sINwJNidF6ADlzJisZ6PmEE4Iv38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734438860; c=relaxed/simple;
	bh=CMlp17l4PkA1uATiuWDxdImH8buvcpFHedH+6uapBXQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=F+R+VEJRyF+z3WnG2Uj23luK//1y6U5lniaUDzsajE14gT1v2+lTNRXUwMyTVb3yfeiw9uga+TBeiJVL/SoqweF+4BL4GvVLaHewuc1xKH0oG8WjtrmYJHIQmwfkltNe4jk1ugmJXCzxtsrjagpSupvwa3K/b3Sm1wdgf5J098M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fVcqKKLT; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-5401d3ea5a1so5797832e87.3
        for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 04:34:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734438856; x=1735043656; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mN6TqIzQhCMb/TWw6EiGfX8Yr9HpJyuJZ+GjX/D3t3Q=;
        b=fVcqKKLTys5d5UvUaRROnXU6+ZSTn+zlLkyok4xBFyI5r6jE4Q0vOuo2HfmQZrLHOT
         XHvqgWFEoMf8+bUniqP5Mfuqq6fcL+T2ijjZ/A13IwiMXNzReS68a1qJ9ftL0ZQ2P6MH
         Q30colqqQHBEnEwuGlW0+s/z3SWAfTOXlj5hTGoiu0EsnqPkOAhwaQIUsz/GxzlYhekA
         OmNVPFVhBKiHQ4D/rDlaMKIyQLLoEDz7WLqQ8Rp+fAwGbQE5DLK8Zc6e/2Wq5NkvdlL0
         vcCKTWXVrAoF9DUJmoc+BfCx+Rfr8uARU6UUgOwlgT5D8k+PIkolkJs0mU3X2XJ8/+2U
         Kezw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734438856; x=1735043656;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mN6TqIzQhCMb/TWw6EiGfX8Yr9HpJyuJZ+GjX/D3t3Q=;
        b=boHhVBbYSCD+jNnf0RtPmL/TEGAWph5yMcyzQIFSYPjA7tI/xfPMjewKCrjOc0HGMR
         3y1Y+TdAcW064bhgFCvQ2EVLD1ZsXHHRUUJH5gxUp4iEpy21Y67SSOiRAMj5ccV5dZC3
         0rmgfUn18Ihf3c2vHmcvAuW1UBmVLFGj1/YUOjMmuWNLTlrE/p0fPe0oPWdz1HT+ciJt
         iFwQgHA+9I59tMyxt5nTwp138kkZtPJ1J2ePZhJt5MtCrlq0zVnQJp3PQUXIOFlGZciN
         QQ/Kb4LJpGVJBdbRKH+wrWQuBhuqiHPsBSdU2GLWGQtAo8BN+frtZUPoHKwxuAa/6uyw
         ztKQ==
X-Forwarded-Encrypted: i=1; AJvYcCXPnF4VFzTaAp9FFT7tX9eEeQfgVrEIVeHIsxGBJv6pok+VZELtQ4lKPehE4q4c4m0uOaYjIKViIgkY@vger.kernel.org
X-Gm-Message-State: AOJu0YyZ3hpBPSWzvHScYNkL4XIxd8VwBQExmn2/0G1bUImzAVAQha0A
	+CloWPr2UtgJ24y0Qakoi+EdMXexWmKULnCj8WnCffCg44fEhVpkDakw9+wn3To=
X-Gm-Gg: ASbGncsWjqeFT2xfSK8sXtG6nt0VaBH3gGc6EWf+pBu7JWPQpopFKvsgLMAUjAF8eRj
	FFEXJwkxhpfTt9vZ0c7rlOjZTfF2Xow4DiJeYYga2bXw22hv9JRA5AXgZ/Qs0/v8DO8wLRYdbnF
	A5TkiL5H8yJ+gjLa71prEcyMArHPCRtV5OnCMhkjdFigiEJmSDXcdLvXcSri43/SgRktRcyHFmR
	6D/F8vasbnDs/FCKot5kdah7L7sNNxO0LbmEwqmzCLuxCssZI3pHHaV43ZLzL639buButtBKUq/
	OdEMUrI1A/339k6qh0Kplgkb8P9JFX7vvo6B
X-Google-Smtp-Source: AGHT+IG64fF0VZRsJVb2QKgF7su3lKSHe/E+XJ0mDICTjJVwLxaJk7I7Yc82GJIWZQCARYb0bWVA7w==
X-Received: by 2002:a05:6512:3c8f:b0:540:1a33:ded8 with SMTP id 2adb3069b0e04-54090555550mr4911457e87.17.1734438855594;
        Tue, 17 Dec 2024 04:34:15 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54120c20e64sm1119838e87.277.2024.12.17.04.34.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2024 04:34:14 -0800 (PST)
Date: Tue, 17 Dec 2024 14:34:11 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: CK Hu =?utf-8?B?KOiDoeS/iuWFiSk=?= <ck.hu@mediatek.com>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	"chunkuang.hu@kernel.org" <chunkuang.hu@kernel.org>, "robh@kernel.org" <robh@kernel.org>, 
	"jie.qiu@mediatek.com" <jie.qiu@mediatek.com>, "kernel@collabora.com" <kernel@collabora.com>, 
	"simona@ffwll.ch" <simona@ffwll.ch>, "mripard@kernel.org" <mripard@kernel.org>, 
	"tzimmermann@suse.de" <tzimmermann@suse.de>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"conor+dt@kernel.org" <conor+dt@kernel.org>, 
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, 
	"linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>, 
	"maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>, "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>, 
	Jitao Shi =?utf-8?B?KOefs+iusOa2myk=?= <jitao.shi@mediatek.com>, "airlied@gmail.com" <airlied@gmail.com>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, 
	"junzhi.zhao@mediatek.com" <junzhi.zhao@mediatek.com>
Subject: Re: [PATCH v2 15/15] drm/mediatek: Introduce HDMI/DDC v2 for
 MT8195/MT8188
Message-ID: <fm5rbujzu5og25x3nnxnhabrf4mppyy4nakxrskqtug774llnm@j47ce2zz6xsx>
References: <20241205114518.53527-1-angelogioacchino.delregno@collabora.com>
 <20241205114518.53527-16-angelogioacchino.delregno@collabora.com>
 <803bc2bd802506635dfa9ea9b26a6ca40a7f4912.camel@mediatek.com>
 <e5788187-e894-4aab-a41e-a3d7a64762c6@collabora.com>
 <d64ff9f1525fe3563502e470b2a31303de08a7c6.camel@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <d64ff9f1525fe3563502e470b2a31303de08a7c6.camel@mediatek.com>

On Tue, Dec 17, 2024 at 06:40:11AM +0000, CK Hu (胡俊光) wrote:
> On Mon, 2024-12-16 at 12:04 +0100, AngeloGioacchino Del Regno wrote:
> > External email : Please do not click links or open attachments until you have verified the sender or the content.
> > 
> > 
> > Il 16/12/24 09:57, CK Hu (胡俊光) ha scritto:
> > > Hi, Angelo:
> > > 
> > > On Thu, 2024-12-05 at 12:45 +0100, AngeloGioacchino Del Regno wrote:
> > > > External email : Please do not click links or open attachments until you have verified the sender or the content.
> > > > 
> > > > 
> > > > Add support for the newer HDMI-TX (Encoder) v2 and DDC v2 IPs
> > > > found in MediaTek's MT8195, MT8188 SoC and their variants, and
> > > > including support for display modes up to 4k60 and for HDMI
> > > > Audio, as per the HDMI 2.0 spec.
> > > > 
> > > > HDCP and CEC functionalities are also supported by this hardware,
> > > > but are not included in this commit and that also poses a slight
> > > > difference between the V2 and V1 controllers in how they handle
> > > > Hotplug Detection (HPD).
> > > > 
> > > > While the v1 controller was using the CEC controller to check
> > > > HDMI cable connection and disconnection, in this driver the v2
> > > > one does not.
> > > > 
> > > > This is due to the fact that on parts with v2 designs, like the
> > > > MT8195 SoC, there is one CEC controller shared between the HDMI
> > > > Transmitter (HDMI-TX) and Receiver (HDMI-RX): before eventually
> > > > adding support to use the CEC HW to wake up the HDMI controllers
> > > > it is necessary to have support for one TX, one RX *and* for both
> > > > at the same time.
> > > > 
> > > > Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> > > > ---
> > > 
> > > [snip]
> > > 
> > > > +static int mtk_hdmi_v2_bridge_atomic_check(struct drm_bridge *bridge,
> > > > +                                          struct drm_bridge_state *bridge_state,
> > > > +                                          struct drm_crtc_state *crtc_state,
> > > > +                                          struct drm_connector_state *conn_state)
> > > > +{
> > > 
> > > I would like v1 and v2 has the same behavior.
> > > Why v2 has atomic check but v1 has no?
> > > If this is better to have, add atomic check to v1, and this function would be common function.
> > > 
> > 
> > That's because v2 uses the new helpers, while v1 does not.
> > The v1 must be converted to the new helpers in order to use atomic_check() like v2.
> 
> I just find the description here, and I don't know why new helper need atomic_check().
> Would you provide more information how new helper need atomic_check()?

The HDMI helpers requires the driver to use
drm_atomic_helper_connector_hdmi_check() in order to maintain
HDMI-specific connector and CRTC state. Thus drivers using HDMI
Connector framework have to provide .atomic_check() callback which calls
the mentioned function.

> For example, the call stack to atomic_check(). (You could use dump_stack() to show it)

-- 
With best wishes
Dmitry


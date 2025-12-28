Return-Path: <devicetree+bounces-249921-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 42AB3CE49CB
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 08:46:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8CA9B3004D11
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 07:46:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76C4123183B;
	Sun, 28 Dec 2025 07:46:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dl/nZitU";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="c6rxAguq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13E7B3B7A8
	for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 07:45:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766907962; cv=none; b=Me4ybEsw9Bn/dnolzKdRUgwIUbbmrWx77LM263M3Kl6oBCFpxwYMALuFazVZE2ixSnsyCOVXUsKB/MeqeSh5Eo22xw7zTJvOLVs3fEUq6koxjEaJQUGekX/3V5/8yy6h9WxBFOw8Ms2USdojxkaZ/8Q0i9yzsxPN3xebgnZpVb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766907962; c=relaxed/simple;
	bh=fpPZTbdSxd2097bZihzYXG7Mvu5QSk6Oo5YqeEw4/Lo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ugEuWbQzX8DReP7Gdpb61kdaTEbFqL7/gMNL3XYFJmENKJqH0KqiH0SAARBwNYDRPmAOnv9knBhdR0OQLFl7k8NmUSgB50InT7WbgZOi8FwaAqwYkJvada19RCfu7MTi45bu0BlzFXhhQ/tpuLMuQOtqYfHl+46d0GoB/3n7s+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dl/nZitU; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=c6rxAguq; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BS5ubYT2066347
	for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 07:45:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=911PxicXRw/YXN7BWAEfskql
	dsFlE5nQHFBZgnxctpM=; b=dl/nZitUkhF4GZko/PamZZpWN3naXNBzXiSWul7R
	xV9+QLDAjMfSRx4TPcO9A1joVwJaZIL9rxwf92x0qWnhfuzb/1i59n4BrN4oavYd
	l/9RJA77v69N0lhUaqVJBSbEmrR179chRer0hua6iS6Sta2XxTb3DTzbF2eDy8K7
	JsosyCld5H++Zjj8VrpTgmTNTjQdpuYckCccMuCgaWYdhU47KiTy4FH5pz9T7yms
	Y7o3RD0gMb12UF6mvM2iPIY7oGvnolMlZQXOhv5DiGrMzb4FbfaZZvu6b9RPxURz
	5DItqqdbCHhm+WwxBEdl/IUnXA3UEV2tPIDi8w2++1u6rQ==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ba87bsv0t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 07:45:59 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-34b3f876290so2783794a91.1
        for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 23:45:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766907958; x=1767512758; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=911PxicXRw/YXN7BWAEfskqldsFlE5nQHFBZgnxctpM=;
        b=c6rxAguqMDT6vG86XvB5Y4LS5Gz7zMCV1kBKEis/i894JcX7mwIoJal/oG+MnBYDOl
         cfL4zzIPPqODACLOqoPwHC+zM2SkVCwELzUb+PaHP+F/UWC5QTbokiqS5uCaMReGbazR
         rontP3YFk174BubkKe56PGKTDTSGl1tOa3ciVUXDtt4MlEMy6yjIGALaLATy+TkxA8DF
         GOL+OAT/kpD5ODnzbY7CVoJUlUYpt104GQkMAKHdXuT35NN5QZceVme0aiZb49hHireW
         k9mEiKbUbQdu9/5/Vt+i/UJhC2BAcUcvxomqBQJQ7rslfxX+pEDYsZ7rwlIGgHDiDKOk
         seyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766907958; x=1767512758;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=911PxicXRw/YXN7BWAEfskqldsFlE5nQHFBZgnxctpM=;
        b=skeiAq62CWeN+Rv1GBkQGTjGXR1j8ywvWit6A92BotvpG3jbFxhjaZQtI+yw8FYncV
         W3DE8aQps6rhtFh0002S8oge4WHDPwOY02Ir658woiG+JE7ZBQJTt8dTSV+dqKuabnt6
         lT/XnF7F8cwG+4m1tZnXa5o9hxAv75/cwCA3A1aYGwOmwKEeCdZ7QamnaAv5iLW+TLPh
         NsYBDFXdsKHF+rgua7xUQE6bkzBzcPgrZSLMtmSpSAf0UBOd8gLhylpJVfHXYcWtlZ+T
         L9xRBBHr+s/Y0Jn8TpfOteyWxRUw2rS4Fp3lgkQaYRALaNP3v6m8SLdDtxTJrQblb16U
         g/sQ==
X-Forwarded-Encrypted: i=1; AJvYcCVCTq8zrr903FOtARh1ISQ8Ph1ueTnX5PMpvgnX16YuplHZ0P5mGAGxc5bYvBxFKNnXn/xoFNgqjWPE@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6jHxHDQYAW7e72y2f+Ju41OfsMj3frfZdQ7XSw18HCHjVlpXQ
	5hFRAcuaU1eNFDinvkUukPkfURrweyKxrk12zBAae7AlMjBmfAACloGF59k7zebkdUG3cea4A8G
	z9AWih8PxAwJhSJnMbSfku55JuwfvEnqsNPcpBsm2Qk7QVS/x3jjGL20818i8bOgQ
X-Gm-Gg: AY/fxX4gOvwkyLGWA6SUYB3RrbFhBDWQDsimGBySkv8AUViBdpz9aTPRKmTlsIPmDE3
	GJ3IgfoLaZdMY2j7bkkh6BvR3mQfgMo/qPYJP41LgRINrKQDIQrNzeCdi0rX2TyRTGmq8EZPamZ
	LPDEewPmDDFM4rRpb8d7R+KnPz3yZIw97opu7Mq8KrVq2SoTDqNIBlfAbsMLe0CDMEHGllGggE+
	lgvwwlpiF6iEcnYJ6xa0UziHAHYIa4Z4ci+ks2ne5TUGjKBtIpZ57uHN/IRg3QXRadjVyImmE3A
	IZ6vSrzj7nbaSTPOEjQTaH/9/VNSwS8n5RuERm7/sIrK8YrpEOhZ8BerbeAXbud4pVfD380L2n7
	0gB689UMMuEtmh6VrMWjwkIow4yUwawZEtzUMPiYpOYvKJcGfTyScDwjj6jZjnKAakNiUd//UoW
	RiGKE8SPnukobV+kuDkTLsVyK2ddZStQ==
X-Received: by 2002:a17:90a:e18d:b0:340:aa74:c2a6 with SMTP id 98e67ed59e1d1-34e921c7036mr18511727a91.6.1766907958198;
        Sat, 27 Dec 2025 23:45:58 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHuNu9T/kt5m6FteANkAfJt4+NHwKyTYTJep2aeqTQvMXP1EymtWNFZiddcweH7oOSZzYZMMw==
X-Received: by 2002:a17:90a:e18d:b0:340:aa74:c2a6 with SMTP id 98e67ed59e1d1-34e921c7036mr18511705a91.6.1766907957582;
        Sat, 27 Dec 2025 23:45:57 -0800 (PST)
Received: from hu-vishsain-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34ec6615d44sm18013027a91.6.2025.12.27.23.45.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Dec 2025 23:45:57 -0800 (PST)
Date: Sun, 28 Dec 2025 13:15:50 +0530
From: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
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
        Conor Dooley <conor+dt@kernel.org>, Tony <syyang@lontium.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, prahlad.valluru@oss.qualcomm.com,
        Prahlad Valluru <vvalluru@qti.qualcomm.com>
Subject: Re: [PATCH v2 2/2] drm/bridge: add support for lontium lt8713sx
 bridge driver
Message-ID: <aVDgLqPufpElbVHW@hu-vishsain-blr.qualcomm.com>
References: <20251118-lt8713sx-bridge-driver-v2-0-25ad49280a11@oss.qualcomm.com>
 <20251118-lt8713sx-bridge-driver-v2-2-25ad49280a11@oss.qualcomm.com>
 <weiap7wal3jsz5ge3v6diq5gcboyvhm3kql7bi7x5luioklxbw@fsdvjra65pfk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <weiap7wal3jsz5ge3v6diq5gcboyvhm3kql7bi7x5luioklxbw@fsdvjra65pfk>
X-Proofpoint-ORIG-GUID: S7j99A9ngtp2e2GeZ0RtrcR45NbvBGZo
X-Proofpoint-GUID: S7j99A9ngtp2e2GeZ0RtrcR45NbvBGZo
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI4MDA3MCBTYWx0ZWRfXw379PuhNpkgy
 +A1MmGKj44t+tapxfx0nlt9S2w0m9mJvobRwBZ24NgZdEFPHBtxGFmolWCvlEW3e6P3tuIdTyex
 oEB8zJ070rn7cNBytO0casPmWVozr63+rTCiavDNJx1ZtvpKgNh1AG9Du206Nfws1ZIcz8NeZrc
 AQ4kKhxpDy0Lrm8TPrixH4Z1WoOc+7GaOAtDQsQOe6UQQaGU3QxNvwSNWy3xyrUFtPt7dRCwN/D
 skeFGmvR5/9i/pX7HioJBMkalxDM8d7cyNssnyHDNbVKqASn0R8xnE8nH4FPadR647H8XuxkPfp
 lLjtTQsu9dV7DETr28GppPYTetf5oTf/bnJMbIynxxXtZmIMwMHwfFpLklWhZGAhNm/TCWd2P/g
 4oQNSKNqF0Nu5E0QnR0ctN4XbQON8/sQiMddm32AGlK6obfGTUOABKxtWnok/NmPyG8qLQsRJ6i
 hK306AX3wNMK6zLp0vA==
X-Authority-Analysis: v=2.4 cv=do7Wylg4 c=1 sm=1 tr=0 ts=6950e037 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=kj9zAlcOel0A:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Kz8-B0t5AAAA:8
 a=tYdLPL5UvuvyS7b8EFEA:9 a=CjuIK1q_8ugA:10 a=iS9zxrgQBfv6-_F4QbHw:22
 a=RuZk68QooNbwfxovefhk:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-28_03,2025-12-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 bulkscore=0 clxscore=1015 lowpriorityscore=0
 adultscore=0 spamscore=0 suspectscore=0 phishscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512280070

On Fri, Nov 20, 2025 at 02:55:07PM +0200, Dmitry Baryshkov wrote:
> On Tue, Nov 18, 2025 at 10:07:09AM +0530, Vishnu Saini wrote:
> > The lt8713sx is a Type-C/DP1.4 to Type-C/DP1.4/HDMI2.0 converter,
> > with three configurable DP1.4/HDMI2.0/DP++ output interfaces and
> > audio output interface.
> > 
> > Driver is required for firmware upgrade in the bridge chip.
> > 
> > Co-developed-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
> > Signed-off-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
> > Signed-off-by: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
> > ---
> >  drivers/gpu/drm/bridge/Kconfig            |  10 ++
> >  drivers/gpu/drm/bridge/Makefile           |   1 +
> >  drivers/gpu/drm/bridge/lontium-lt8713sx.c | 713 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
> >  3 files changed, 724 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/bridge/Kconfig b/drivers/gpu/drm/bridge/Kconfig
> > index a250afd8d662..7fef383ed7cb 100644
> > --- a/drivers/gpu/drm/bridge/Kconfig
> > +++ b/drivers/gpu/drm/bridge/Kconfig
> > @@ -184,6 +184,16 @@ config DRM_LONTIUM_LT9611UXC
> >  	  HDMI signals
> >  	  Please say Y if you have such hardware.
> >  
> > +config DRM_LONTIUM_LT8713SX
> > +	tristate "Lontium LT8713SX DP MST bridge"
> > +	depends on OF
> > +	select REGMAP_I2C
> > +	help
> > +	  Driver for Lontium LT8713SX DP MST bridge
> > +	  chip firmware upgrade, which converts Type-C/DP1.4
> > +	  to 3 configurable Type-C/DP1.4/HDMI2.0 outputs
> > +	  Please say Y if you have such hardware.
> > +
> >  config DRM_ITE_IT66121
> >  	tristate "ITE IT66121 HDMI bridge"
> >  	depends on OF
> > diff --git a/drivers/gpu/drm/bridge/Makefile b/drivers/gpu/drm/bridge/Makefile
> > index c7dc03182e59..07eeb13fa497 100644
> > --- a/drivers/gpu/drm/bridge/Makefile
> > +++ b/drivers/gpu/drm/bridge/Makefile
> > @@ -16,6 +16,7 @@ obj-$(CONFIG_DRM_LONTIUM_LT8912B) += lontium-lt8912b.o
> >  obj-$(CONFIG_DRM_LONTIUM_LT9211) += lontium-lt9211.o
> >  obj-$(CONFIG_DRM_LONTIUM_LT9611) += lontium-lt9611.o
> >  obj-$(CONFIG_DRM_LONTIUM_LT9611UXC) += lontium-lt9611uxc.o
> > +obj-$(CONFIG_DRM_LONTIUM_LT8713SX) += lontium-lt8713sx.o
> >  obj-$(CONFIG_DRM_LVDS_CODEC) += lvds-codec.o
> >  obj-$(CONFIG_DRM_MEGACHIPS_STDPXXXX_GE_B850V3_FW) += megachips-stdpxxxx-ge-b850v3-fw.o
> >  obj-$(CONFIG_DRM_MICROCHIP_LVDS_SERIALIZER) += microchip-lvds.o
> > diff --git a/drivers/gpu/drm/bridge/lontium-lt8713sx.c b/drivers/gpu/drm/bridge/lontium-lt8713sx.c
> > new file mode 100644
> > index 000000000000..a5aed2474a2e
> > --- /dev/null
> > +++ b/drivers/gpu/drm/bridge/lontium-lt8713sx.c
> > @@ -0,0 +1,713 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> > + */
> > +
> > +#include <linux/firmware.h>
> > +#include <linux/gpio/consumer.h>
> > +#include <linux/i2c.h>
> > +#include <linux/interrupt.h>
> > +#include <linux/module.h>
> > +#include <linux/mutex.h>
> > +#include <linux/of_graph.h>
> > +#include <linux/platform_device.h>
> > +#include <linux/regmap.h>
> > +#include <linux/regulator/consumer.h>
> > +#include <linux/wait.h>
> > +#include <linux/workqueue.h>
> > +
> > +#define FW_FILE "lt8713sx_fw.bin"
> 
> Is it going to be submitted to linux-firmware? If not, why?
Yes, if needed will submit. 
> > +
> > +#define LT8713SX_PAGE_SIZE 256
> > +#define FW_12K_SIZE        (12  * 1024)
> > +#define FW_64K_SIZE        (64  * 1024)
> > +#define FW_256K_SIZE       (256 * 1024)
> 
> See <linux/sizes.h> and drop these defines.
done. 
> > +
> > +struct crc_config {
> > +	u8 width;
> > +	u32 poly;
> > +	u32 crc_init;
> > +	u32 xor_out;
> > +	bool ref_in;
> > +	bool ref_out;
> > +};
> > +
> > +struct lt8713sx {
> > +	struct device *dev;
> > +
> > +	struct regmap *regmap;
> > +	/* Protects all accesses to registers by stopping the on-chip MCU */
> > +	struct mutex ocm_lock;
> > +
> > +	struct gpio_desc *reset_gpio;
> > +	struct gpio_desc *enable_gpio;
> > +
> > +	struct regulator_bulk_data supplies[2];
> > +
> > +	struct i2c_client *client;
> > +	const struct firmware *fw;
> > +
> > +	u8 *fw_buffer;
> > +
> > +	u32 main_crc_value;
> > +	u32 bank_crc_value[17];
> > +
> > +	int bank_num;
> > +};
> > +
> > +static void lt8713sx_reset(struct lt8713sx *lt8713sx);
> > +
> > +static const struct regmap_range lt8713sx_ranges[] = {
> > +	{
> > +		.range_min = 0,
> > +		.range_max = 0xffff
> > +	},
> > +};
> > +
> > +static const struct regmap_access_table lt8713sx_table = {
> > +	.yes_ranges = lt8713sx_ranges,
> > +	.n_yes_ranges = ARRAY_SIZE(lt8713sx_ranges),
> > +};
> > +
> > +static const struct regmap_config lt8713sx_regmap_config = {
> > +	.reg_bits = 8,
> > +	.val_bits = 8,
> > +	.volatile_table = &lt8713sx_table,
> > +	.cache_type = REGCACHE_NONE,
> > +};
> > +
> > +static void lt8713sx_i2c_enable(struct lt8713sx *lt8713sx)
> > +{
> > +	regmap_write(lt8713sx->regmap, 0xff, 0xe0);
> > +	regmap_write(lt8713sx->regmap, 0xee, 0x01);
> 
> Is 0xff page-swapping register? If so, please declare it so and use
> 16-bit addressing (see other Lontium drivers as an example).
done. 
> > +}
> > +
> > +static void lt8713sx_i2c_disable(struct lt8713sx *lt8713sx)
> > +{
> > +	regmap_write(lt8713sx->regmap, 0xff, 0xe0);
> > +	regmap_write(lt8713sx->regmap, 0xee, 0x00);
> > +}
> > +
> > +static unsigned int bits_reverse(u32 in_val, u8 bits)
> > +{
> > +	u32 out_val = 0;
> > +	u8 i;
> > +
> > +	for (i = 0; i < bits; i++) {
> > +		if (in_val & (1 << i))
> > +			out_val |= 1 << (bits - 1 - i);
> > +	}
> > +
> > +	return out_val;
> > +}
> > +
> > +static unsigned int get_crc(struct crc_config crc_cfg, const  u8 *buf, u64 buf_len)
> > +{
> > +	u8 width    = crc_cfg.width;
> > +	u32  poly   = crc_cfg.poly;
> > +	u32  crc    = crc_cfg.crc_init;
> > +	u32  xorout = crc_cfg.xor_out;
> > +	bool refin  = crc_cfg.ref_in;
> > +	bool refout = crc_cfg.ref_out;
> > +	u8 n;
> > +	u32  bits;
> > +	u32  data;
> > +	u8 i;
> > +
> > +	n    =  (width < 8) ? 0 : (width - 8);
> > +	crc  =  (width < 8) ? (crc << (8 - width)) : crc;
> > +	bits =  (width < 8) ? 0x80 : (1 << (width - 1));
> > +	poly =  (width < 8) ? (poly << (8 - width)) : poly;
> > +
> > +	while (buf_len--) {
> > +		data = *(buf++);
> > +		if (refin)
> > +			data = bits_reverse(data, 8);
> > +		crc ^= (data << n);
> > +		for (i = 0; i < 8; i++) {
> > +			if (crc & bits)
> > +				crc = (crc << 1) ^ poly;
> > +			else
> > +				crc = crc << 1;
> > +		}
> > +	}
> > +	crc = (width < 8) ? (crc >> (8 - width)) : crc;
> > +	if (refout)
> > +		crc = bits_reverse(crc, width);
> > +	crc ^= xorout;
> > +
> > +	return (crc & ((2 << (width - 1)) - 1));
> > +}
> 
> NAK for the manual CRC calculation. Use <linux/crc8.h>
done.  
> > +
> > +static u32 calculate_64K_crc(const u8 *upgrade_data, u64 len)
> > +{
> > +	struct crc_config crc_cfg = {
> > +		.width = 8,
> > +		.poly  = 0x31,
> > +		.crc_init = 0,
> > +		.xor_out = 0,
> > +		.ref_out = false,
> > +		.ref_in = false,
> > +	};
> > +	u64 crc_size = FW_64K_SIZE - 1;
> > +	u8 default_val = 0xFF;
> 
> Please use consistent style, It's recommended to use lower case hex.
done. 
> > +
> > +	crc_cfg.crc_init = get_crc(crc_cfg, upgrade_data, len);
> > +
> > +	crc_size -= len;
> > +	while (crc_size--)
> > +		crc_cfg.crc_init = get_crc(crc_cfg, &default_val, 1);
> > +
> > +	return crc_cfg.crc_init;
> > +}
> > +
> > +static u32 calculate_12K_crc(const u8 *upgrade_data, u64 len)
> > +{
> > +	struct crc_config crc_cfg = {
> > +		.width = 8,
> > +		.poly  = 0x31,
> > +		.crc_init = 0,
> > +		.xor_out = 0,
> > +		.ref_out = false,
> > +		.ref_in = false,
> > +	};
> > +	u64 crc_size = FW_12K_SIZE;
> > +	u8 default_val = 0xFF;
> > +
> > +	crc_cfg.crc_init = get_crc(crc_cfg, upgrade_data, len);
> > +
> > +	crc_size -= len;
> > +	while (crc_size--)
> > +		crc_cfg.crc_init = get_crc(crc_cfg, &default_val, 1);
> > +
> > +	return crc_cfg.crc_init;
> > +}
> 
> The only difference from the previous function is the crc_size. Merge
> them.
done. 
> > +
> > +static int lt8713sx_prepare_firmware_data(struct lt8713sx *lt8713sx)
> > +{
> > +	int ret = 0;
> > +
> > +	ret = request_firmware(&lt8713sx->fw, FW_FILE, lt8713sx->dev);
> > +	if (ret < 0) {
> > +		pr_err("request firmware failed\n");
> > +		return ret;
> > +	}
> > +
> > +	pr_debug("Firmware size: %zu bytes\n", lt8713sx->fw->size);
> > +
> > +	if (lt8713sx->fw->size > FW_256K_SIZE - 1) {
> > +		pr_err("Firmware size exceeds 256KB limit\n");
> > +		release_firmware(lt8713sx->fw);
> > +		return -EINVAL;
> > +	}
> > +
> > +	lt8713sx->fw_buffer = kzalloc(FW_256K_SIZE, GFP_KERNEL);
> 
> I think 256k is already big enough to be used for vmalloc instead. Also,
> there is no need to zero-fill it, if you are going to fill it with 0xff
> in the next line.
done. 
> > +	if (!lt8713sx->fw_buffer) {
> > +		release_firmware(lt8713sx->fw);
> > +		return -ENOMEM;
> > +	}
> > +
> > +	memset(lt8713sx->fw_buffer, 0xFF, FW_256K_SIZE);
> > +
> > +	if (lt8713sx->fw->size < FW_64K_SIZE) {
> > +		/*TODO: CRC should be calculated with 0xff also */
> 
> Is this still relevant?
removed it. 
> > +		memcpy(lt8713sx->fw_buffer, lt8713sx->fw->data, lt8713sx->fw->size);
> > +		lt8713sx->fw_buffer[FW_64K_SIZE - 1] =
> > +				calculate_64K_crc(lt8713sx->fw->data, lt8713sx->fw->size);
> 
> You have already put your firmware into 0xff-filled 256k buffer. It's
> safe to pass SZ_64K here. Then you can drop the 'tail' CRC calculation
> from calculate_64K_crc() and calculate_12K_crc().
I tried doing this, CRC calculation in driver is not matching with the CRC values returned from HW.
Existing calculation is as per bridge chip requirement and HW is always returning the same CRC.
I have updated crc calculation using linux/crc8.h in next patch.

> > +		lt8713sx->main_crc_value = lt8713sx->fw_buffer[FW_64K_SIZE - 1];
> > +		pr_debug("Main Firmware Data  Crc=0x%02X\n", lt8713sx->main_crc_value);
> > +
> > +	} else {
> > +		//main firmware
> > +		memcpy(lt8713sx->fw_buffer, lt8713sx->fw->data, FW_64K_SIZE - 1);
> > +		lt8713sx->fw_buffer[FW_64K_SIZE - 1] =
> > +				calculate_64K_crc(lt8713sx->fw_buffer, FW_64K_SIZE - 1);
> > +		lt8713sx->main_crc_value = lt8713sx->fw_buffer[FW_64K_SIZE - 1];
> > +		pr_debug("Main Firmware Data  Crc=0x%02X\n", lt8713sx->main_crc_value);
> > +
> > +		//bank firmware
> > +		memcpy(lt8713sx->fw_buffer + FW_64K_SIZE,
> > +		       lt8713sx->fw->data + FW_64K_SIZE,
> > +		       lt8713sx->fw->size - FW_64K_SIZE);
> > +
> > +		lt8713sx->bank_num = (lt8713sx->fw->size - FW_64K_SIZE + FW_12K_SIZE - 1) /
> > +					FW_12K_SIZE;
> > +		pr_debug("Bank Number Total is %d.\n", lt8713sx->bank_num);
> > +
> > +		for (int i = 0; i < lt8713sx->bank_num; i++) {
> > +			lt8713sx->bank_crc_value[i] =
> > +				calculate_12K_crc(lt8713sx->fw_buffer + FW_64K_SIZE +
> > +						  i * FW_12K_SIZE,
> > +						  FW_12K_SIZE);
> > +			pr_debug("Bank number:%d; Firmware Data  Crc:0x%02X\n",
> > +				 i, lt8713sx->bank_crc_value[i]);
> > +		}
> > +	}
> > +	return 0;
> > +}
> > +
> > +static void lt8713sx_config_parameters(struct lt8713sx *lt8713sx)
> > +{
> > +	regmap_write(lt8713sx->regmap, 0xFF, 0xE0);
> > +	regmap_write(lt8713sx->regmap, 0xEE, 0x01);
> > +	regmap_write(lt8713sx->regmap, 0x5E, 0xC1);
> > +	regmap_write(lt8713sx->regmap, 0x58, 0x00);
> > +	regmap_write(lt8713sx->regmap, 0x59, 0x50);
> > +	regmap_write(lt8713sx->regmap, 0x5A, 0x10);
> > +	regmap_write(lt8713sx->regmap, 0x5A, 0x00);
> > +	regmap_write(lt8713sx->regmap, 0x58, 0x21);
> > +}
> > +
> > +static void lt8713sx_wren(struct lt8713sx *lt8713sx)
> > +{
> > +	regmap_write(lt8713sx->regmap, 0xff, 0xe1);
> > +	regmap_write(lt8713sx->regmap, 0x03, 0xbf);
> > +	regmap_write(lt8713sx->regmap, 0x03, 0xff);
> > +	regmap_write(lt8713sx->regmap, 0xff, 0xe0);
> > +	regmap_write(lt8713sx->regmap, 0x5a, 0x04);
> > +	regmap_write(lt8713sx->regmap, 0x5a, 0x00);
> > +}
> > +
> > +static void lt8713sx_wrdi(struct lt8713sx *lt8713sx)
> > +{
> > +	regmap_write(lt8713sx->regmap, 0x5A, 0x08);
> > +	regmap_write(lt8713sx->regmap, 0x5A, 0x00);
> > +}
> > +
> > +static void lt8713sx_fifo_reset(struct lt8713sx *lt8713sx)
> > +{
> > +	regmap_write(lt8713sx->regmap, 0xff, 0xe1);
> > +	regmap_write(lt8713sx->regmap, 0x03, 0xbf);
> > +	regmap_write(lt8713sx->regmap, 0x03, 0xff);
> > +}
> > +
> > +static void lt8713sx_disable_sram_write(struct lt8713sx *lt8713sx)
> > +{
> > +	regmap_write(lt8713sx->regmap, 0xff, 0xe0);
> > +	regmap_write(lt8713sx->regmap, 0x55, 0x00);
> > +}
> > +
> > +static void lt8713sx_sram_to_flash(struct lt8713sx *lt8713sx)
> > +{
> > +	regmap_write(lt8713sx->regmap, 0x5a, 0x30);
> > +	regmap_write(lt8713sx->regmap, 0x5a, 0x00);
> > +}
> > +
> > +static void lt8713sx_i2c_to_sram(struct lt8713sx *lt8713sx)
> > +{
> > +	regmap_write(lt8713sx->regmap, 0x55, 0x80);
> > +	regmap_write(lt8713sx->regmap, 0x5e, 0xc0);
> > +	regmap_write(lt8713sx->regmap, 0x58, 0x21);
> > +}
> > +
> > +static u8 lt8713sx_read_flash_status(struct lt8713sx *lt8713sx)
> > +{
> > +	u32 flash_status = 0;
> > +
> > +	regmap_write(lt8713sx->regmap,  0xFF, 0xE1);//fifo_rst_n
> > +	regmap_write(lt8713sx->regmap,  0x03, 0x3F);
> > +	regmap_write(lt8713sx->regmap,  0x03, 0xFF);
> > +
> > +	regmap_write(lt8713sx->regmap,  0xFF, 0xE0);
> > +	regmap_write(lt8713sx->regmap,  0x5e, 0x40);
> > +	regmap_write(lt8713sx->regmap,  0x56, 0x05);//opcode=read status register
> > +	regmap_write(lt8713sx->regmap,  0x55, 0x25);
> > +	regmap_write(lt8713sx->regmap,  0x55, 0x01);
> > +	regmap_write(lt8713sx->regmap,  0x58, 0x21);
> > +
> > +	regmap_read(lt8713sx->regmap, 0x5f, &flash_status);
> > +	pr_debug("flash_status:%x\n", flash_status);
> > +
> > +	return flash_status;
> > +}
> > +
> > +static void lt8713sx_block_erase(struct lt8713sx *lt8713sx)
> > +{
> > +	u32 i = 0;
> > +	u8 flash_status = 0;
> > +	u8 blocknum = 0x00;
> > +	u32 flashaddr = 0x00;
> > +
> > +	for (blocknum = 0; blocknum < 8; blocknum++) {
> > +		flashaddr = blocknum * 0x008000;
> 
> SZ_32K
done. 
> > +		regmap_write(lt8713sx->regmap,  0xFF, 0xE0);
> > +		regmap_write(lt8713sx->regmap,  0xEE, 0x01);
> > +		regmap_write(lt8713sx->regmap,  0x5A, 0x04);
> > +		regmap_write(lt8713sx->regmap,  0x5A, 0x00);
> > +		regmap_write(lt8713sx->regmap,  0x5B, flashaddr >> 16);//set flash address[23:16]
> > +		regmap_write(lt8713sx->regmap,  0x5C, flashaddr >> 8);//set flash address[15:8]
> > +		regmap_write(lt8713sx->regmap,  0x5D, flashaddr);//set flash address[7:0]
> > +		regmap_write(lt8713sx->regmap,  0x5A, 0x01);
> > +		regmap_write(lt8713sx->regmap,  0x5A, 0x00);
> > +		msleep(100); //delay 100ms
> 
> Please drop useless comments. It's clear that msleep delays for 100ms.
done. 
> > +		i = 0;
> > +		while (1) {
> > +			flash_status = lt8713sx_read_flash_status(lt8713sx); //wait erase finish
> > +			if ((flash_status & 0x01) == 0)
> > +				break;
> > +
> > +			if (i > 50)
> > +				break;
> > +
> > +			i++;
> > +			msleep(50); //delay 50ms
> > +		}
> > +	}
> > +	pr_debug("erase flash done.\n");
> > +}
> > +
> > +static void lt8713sx_load_main_fw_to_sram(struct lt8713sx *lt8713sx)
> > +{
> > +	regmap_write(lt8713sx->regmap, 0xff, 0xe0);
> > +	regmap_write(lt8713sx->regmap, 0xee, 0x01);
> > +	regmap_write(lt8713sx->regmap, 0x68, 0x00);
> > +	regmap_write(lt8713sx->regmap, 0x69, 0x00);
> > +	regmap_write(lt8713sx->regmap, 0x6a, 0x00);
> > +	regmap_write(lt8713sx->regmap, 0x65, 0x00);
> > +	regmap_write(lt8713sx->regmap, 0x66, 0xff);
> > +	regmap_write(lt8713sx->regmap, 0x67, 0xff);
> > +	regmap_write(lt8713sx->regmap, 0x6b, 0x00);
> > +	regmap_write(lt8713sx->regmap, 0x6c, 0x00);
> > +	regmap_write(lt8713sx->regmap, 0x60, 0x01);
> > +	msleep(200);
> > +	regmap_write(lt8713sx->regmap, 0x60, 0x00);
> > +}
> > +
> > +static void lt8713sx_load_bank_fw_to_sram(struct lt8713sx *lt8713sx, u64 addr)
> > +{
> > +	regmap_write(lt8713sx->regmap, 0xff, 0xe0);
> > +	regmap_write(lt8713sx->regmap, 0xee, 0x01);
> > +	regmap_write(lt8713sx->regmap, 0x68, ((addr & 0xFF0000) >> 16));
> > +	regmap_write(lt8713sx->regmap, 0x69, ((addr & 0x00FF00) >> 8));
> > +	regmap_write(lt8713sx->regmap, 0x6a, (addr & 0x0000FF));
> > +	regmap_write(lt8713sx->regmap, 0x65, 0x00);
> > +	regmap_write(lt8713sx->regmap, 0x66, 0x30);
> > +	regmap_write(lt8713sx->regmap, 0x67, 0x00);
> > +	regmap_write(lt8713sx->regmap, 0x6b, 0x00);
> > +	regmap_write(lt8713sx->regmap, 0x6c, 0x00);
> > +	regmap_write(lt8713sx->regmap, 0x60, 0x01);
> > +	msleep(50);
> > +	regmap_write(lt8713sx->regmap, 0x60, 0x00);
> > +}
> > +
> > +static int lt8713sx_write_data(struct lt8713sx *lt8713sx, const u8 *data, u64 filesize)
> > +{
> > +	int page = 0, num = 0, i = 0, val;
> > +
> > +	page = (filesize % LT8713SX_PAGE_SIZE) ?
> > +			((filesize / LT8713SX_PAGE_SIZE) + 1) : (filesize / LT8713SX_PAGE_SIZE);
> > +
> > +	pr_debug("Writing to Sram=%u pages, total size = %llu bytes\n", page, filesize);
> > +
> > +	for (num = 0; num < page; num++) {
> > +		pr_debug("page[%d]\n", num);
> > +		lt8713sx_i2c_to_sram(lt8713sx);
> > +
> > +		for (i = 0; i < LT8713SX_PAGE_SIZE; i++) {
> > +			if ((num * LT8713SX_PAGE_SIZE + i) < filesize)
> > +				val = *(data + (num * LT8713SX_PAGE_SIZE + i));
> > +			else
> > +				val = 0xFF;
> > +			regmap_write(lt8713sx->regmap, 0x59, val);
> > +		}
> > +
> > +		lt8713sx_wren(lt8713sx);
> > +		lt8713sx_sram_to_flash(lt8713sx);
> > +	}
> > +
> > +	lt8713sx_wrdi(lt8713sx);
> > +	lt8713sx_disable_sram_write(lt8713sx);
> > +
> > +	return 0;
> > +}
> > +
> > +static void lt8713sx_main_upgrade_result(struct lt8713sx *lt8713sx)
> > +{
> > +	u32 main_crc_result;
> > +
> > +	regmap_write(lt8713sx->regmap, 0xff, 0xe0);
> > +	regmap_read(lt8713sx->regmap, 0x23, &main_crc_result);
> > +
> > +	pr_debug("Main CRC HW: 0x%02X\n", main_crc_result);
> > +	pr_debug("Main CRC FW: 0x%02X\n", lt8713sx->main_crc_value);
> > +
> > +	if (main_crc_result == lt8713sx->main_crc_value)
> > +		pr_debug("Main Firmware Upgrade Success.\n");
> > +	else
> > +		pr_err("Main Firmware Upgrade Failed.\n");
> > +}
> > +
> > +static void lt8713sx_bank_upgrade_result(struct lt8713sx *lt8713sx, u8 banknum)
> > +{
> > +	u32 bank_crc_result;
> > +
> > +	regmap_write(lt8713sx->regmap, 0xff, 0xe0);
> > +
> > +	regmap_read(lt8713sx->regmap, 0x23, &bank_crc_result);
> > +
> > +	pr_debug("Bank %d CRC Result: 0x%02X\n", banknum, bank_crc_result);
> > +
> > +	if (bank_crc_result == lt8713sx->bank_crc_value[banknum])
> > +		pr_debug("Bank %d Firmware Upgrade Success.\n", banknum);
> > +	else
> > +		pr_err("Bank %d Firmware Upgrade Failed.\n", banknum);
> > +}
> > +
> > +static void lt8713sx_bank_result_check(struct lt8713sx *lt8713sx)
> > +{
> > +	int i;
> > +	u64 addr = 0x010000;
> > +
> > +	for (i = 0; i < lt8713sx->bank_num; i++) {
> > +		lt8713sx_load_bank_fw_to_sram(lt8713sx, addr);
> > +		lt8713sx_bank_upgrade_result(lt8713sx, i);
> > +		addr += 0x3000;
> > +	}
> > +}
> > +
> > +static int lt8713sx_firmware_upgrade(struct lt8713sx *lt8713sx)
> > +{
> > +	int ret;
> > +
> > +	lt8713sx_config_parameters(lt8713sx);
> > +
> > +	lt8713sx_block_erase(lt8713sx);
> > +
> > +	if (lt8713sx->fw->size < FW_64K_SIZE) {
> > +		ret = lt8713sx_write_data(lt8713sx, lt8713sx->fw_buffer, FW_64K_SIZE);
> > +		if (ret < 0) {
> > +			pr_err("Failed to write firmware data: %d\n", ret);
> > +			return ret;
> > +		}
> > +	} else {
> > +		ret = lt8713sx_write_data(lt8713sx, lt8713sx->fw_buffer, lt8713sx->fw->size);
> > +		if (ret < 0) {
> > +			pr_err("Failed to write firmware data: %d\n", ret);
> > +			return ret;
> > +		}
> > +	}
> > +
> > +	pr_debug("Write Data done.\n");
> > +
> > +	return 0;
> > +}
> > +
> > +static int lt8713sx_firmware_update(struct lt8713sx *lt8713sx)
> > +{
> > +	int ret = 0;
> > +
> > +	mutex_lock(&lt8713sx->ocm_lock);
> > +	lt8713sx_i2c_enable(lt8713sx);
> > +
> > +	ret = lt8713sx_prepare_firmware_data(lt8713sx);
> > +	if (ret < 0) {
> > +		pr_err("Failed to prepare firmware data: %d\n", ret);
> > +		goto error;
> > +	}
> > +
> > +	ret = lt8713sx_firmware_upgrade(lt8713sx);
> > +	if (ret < 0) {
> > +		pr_err("Upgrade failure.\n");
> > +		goto error;
> > +	} else {
> > +		/* Validate CRC */
> > +		lt8713sx_load_main_fw_to_sram(lt8713sx);
> > +		lt8713sx_main_upgrade_result(lt8713sx);
> > +		lt8713sx_wrdi(lt8713sx);
> > +		lt8713sx_fifo_reset(lt8713sx);
> > +		lt8713sx_bank_result_check(lt8713sx);
> > +		lt8713sx_wrdi(lt8713sx);
> > +	}
> > +
> > +error:
> > +	lt8713sx_i2c_disable(lt8713sx);
> > +	if (!ret)
> > +		lt8713sx_reset(lt8713sx);
> > +
> > +	kfree(lt8713sx->fw_buffer);
> > +	lt8713sx->fw_buffer = NULL;
> > +
> > +	if (lt8713sx->fw) {
> > +		release_firmware(lt8713sx->fw);
> > +		lt8713sx->fw = NULL;
> > +	}
> > +	mutex_unlock(&lt8713sx->ocm_lock);
> > +
> > +	return ret;
> > +}
> > +
> > +static void lt8713sx_reset(struct lt8713sx *lt8713sx)
> > +{
> > +	pr_debug("reset bridge.\n");
> > +	gpiod_set_value_cansleep(lt8713sx->reset_gpio, 1);
> > +	msleep(20);
> > +
> > +	gpiod_set_value_cansleep(lt8713sx->reset_gpio, 0);
> > +	msleep(20);
> > +
> > +	gpiod_set_value_cansleep(lt8713sx->reset_gpio, 1);
> > +	msleep(20);
> > +	pr_debug("reset done.\n");
> > +}
> > +
> > +static int lt8713sx_regulator_init(struct lt8713sx *lt8713sx)
> > +{
> > +	int ret;
> > +
> > +	lt8713sx->supplies[0].supply = "vdd";
> > +	lt8713sx->supplies[1].supply = "vcc";
> > +
> > +	ret = devm_regulator_bulk_get(lt8713sx->dev, 2, lt8713sx->supplies);
> > +	if (ret < 0)
> > +		return dev_err_probe(lt8713sx->dev, ret, "failed to get regulators\n");
> > +
> > +	ret = regulator_set_load(lt8713sx->supplies[0].consumer, 200000);
> > +	if (ret < 0)
> > +		return dev_err_probe(lt8713sx->dev, ret, "failed to set regulator load\n");
> > +
> > +	return 0;
> > +}
> > +
> > +static int lt8713sx_regulator_enable(struct lt8713sx *lt8713sx)
> > +{
> > +	int ret;
> > +
> > +	ret = regulator_enable(lt8713sx->supplies[0].consumer);
> > +	if (ret < 0)
> > +		return dev_err_probe(lt8713sx->dev, ret, "failed to enable vdd regulator\n");
> > +
> > +	usleep_range(1000, 10000);
> > +
> > +	ret = regulator_enable(lt8713sx->supplies[1].consumer);
> > +	if (ret < 0) {
> > +		regulator_disable(lt8713sx->supplies[0].consumer);
> > +		return dev_err_probe(lt8713sx->dev, ret, "failed to enable vcc regulator\n");
> > +	}
> > +	return 0;
> > +}
> > +
> > +static int lt8713sx_gpio_init(struct lt8713sx *lt8713sx)
> > +{
> > +	struct device *dev = lt8713sx->dev;
> > +
> > +	lt8713sx->reset_gpio = devm_gpiod_get(dev, "reset", GPIOD_OUT_HIGH);
> > +	if (IS_ERR(lt8713sx->reset_gpio))
> > +		return dev_err_probe(dev, PTR_ERR(lt8713sx->reset_gpio),
> > +				     "failed to acquire reset gpio\n");
> > +
> > +	/* power enable gpio */
> > +	lt8713sx->enable_gpio = devm_gpiod_get_optional(dev, "enable", GPIOD_OUT_HIGH);
> > +	if (IS_ERR(lt8713sx->enable_gpio))
> > +		return dev_err_probe(dev, PTR_ERR(lt8713sx->enable_gpio),
> > +				     "failed to acquire enable gpio\n");
> > +	return 0;
> > +}
> > +
> > +static ssize_t lt8713sx_firmware_store(struct device *dev,
> > +				       struct device_attribute *attr,
> > +				       const char *buf, size_t len)
> > +{
> > +	struct lt8713sx *lt8713sx = dev_get_drvdata(dev);
> > +	int ret;
> > +
> > +	ret = lt8713sx_firmware_update(lt8713sx);
> > +	if (ret < 0)
> > +		return ret;
> > +	return len;
> > +}
> > +
> > +static DEVICE_ATTR_WO(lt8713sx_firmware);
> > +
> > +static struct attribute *lt8713sx_attrs[] = {
> > +	&dev_attr_lt8713sx_firmware.attr,
> > +	NULL,
> > +};
> > +
> > +static const struct attribute_group lt8713sx_attr_group = {
> > +	.attrs = lt8713sx_attrs,
> > +};
> > +
> > +static const struct attribute_group *lt8713sx_attr_groups[] = {
> > +	&lt8713sx_attr_group,
> > +	NULL,
> > +};
> > +
> > +static int lt8713sx_probe(struct i2c_client *client)
> > +{
> > +	struct lt8713sx *lt8713sx;
> > +	struct device *dev = &client->dev;
> > +	int ret;
> > +
> > +	if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C))
> > +		return dev_err_probe(dev, -ENODEV, "device doesn't support I2C\n");
> > +
> > +	lt8713sx = devm_kzalloc(dev, sizeof(*lt8713sx), GFP_KERNEL);
> > +	if (!lt8713sx)
> > +		return dev_err_probe(dev, -ENOMEM, "failed to allocate lt8713sx struct\n");
> > +
> > +	lt8713sx->dev = dev;
> > +	lt8713sx->client = client;
> > +	i2c_set_clientdata(client, lt8713sx);
> > +
> > +	mutex_init(&lt8713sx->ocm_lock);
> 
> devm_mutex_init().
done. 
> > +
> > +	lt8713sx->regmap = devm_regmap_init_i2c(client, &lt8713sx_regmap_config);
> > +	if (IS_ERR(lt8713sx->regmap))
> > +		return dev_err_probe(dev, PTR_ERR(lt8713sx->regmap), "regmap i2c init failed\n");
> > +
> > +	ret = lt8713sx_gpio_init(lt8713sx);
> > +	if (ret < 0)
> > +		goto err_of_put;
> 
> err_of_put is just a return. Please inline it.
done. 
> > +
> > +	ret = lt8713sx_regulator_init(lt8713sx);
> > +	if (ret < 0)
> > +		goto err_of_put;
> > +
> > +	ret = lt8713sx_regulator_enable(lt8713sx);
> > +	if (ret)
> > +		goto err_of_put;
> > +
> > +	lt8713sx_reset(lt8713sx);
> > +
> > +	return 0;
> > +
> > +err_of_put:
> > +	return ret;
> > +}
> > +
> > +static void lt8713sx_remove(struct i2c_client *client)
> > +{
> > +	struct lt8713sx *lt8713sx = i2c_get_clientdata(client);
> > +
> > +	mutex_destroy(&lt8713sx->ocm_lock);
> > +
> > +	regulator_bulk_disable(ARRAY_SIZE(lt8713sx->supplies), lt8713sx->supplies);
> 
> Use devm_regulator_get_enable(), then you can drop this line.
done. 
> > +}
> > +
> > +static struct i2c_device_id lt8713sx_id[] = {
> > +	{ "lontium,lt8713sx", 0 },
> > +	{ /* sentinel */ }
> > +};
> > +
> > +static const struct of_device_id lt8713sx_match_table[] = {
> > +	{ .compatible = "lontium,lt8713sx" },
> > +	{ /* sentinel */ }
> > +};
> > +MODULE_DEVICE_TABLE(of, lt8713sx_match_table);
> > +
> > +static struct i2c_driver lt8713sx_driver = {
> > +	.driver = {
> > +		.name = "lt8713sx",
> > +		.of_match_table = lt8713sx_match_table,
> > +		.dev_groups = lt8713sx_attr_groups,
> > +	},
> > +	.probe = lt8713sx_probe,
> > +	.remove = lt8713sx_remove,
> > +	.id_table = lt8713sx_id,
> > +};
> > +
> > +module_i2c_driver(lt8713sx_driver);
> > +MODULE_LICENSE("GPL");
> > +MODULE_DESCRIPTION("lt8713sx drm bridge driver");
> > +MODULE_AUTHOR("Tony <syyang@lontium.com>");
> > +MODULE_FIRMWARE(FW_FILE);
> > 
> > -- 
> > 2.34.1
> >  
> -- 
> With best wishes
> Dmitry


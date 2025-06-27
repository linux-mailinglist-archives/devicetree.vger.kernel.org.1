Return-Path: <devicetree+bounces-190208-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 833B5AEB093
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 09:52:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D02067A9178
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 07:50:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A6A422A7E0;
	Fri, 27 Jun 2025 07:51:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="LmXn5LPi"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0B3E22A4E5
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 07:51:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751010709; cv=none; b=AoVQkIHzy9P0bpIqs9+8s09a6AwIZ72/vDUb9MOOyJR6UIzpjUdZNQ5EbZNdSD5huFJUn4+hUEvjHLbRoxDOuo07ykaYUF+W9ClbzVjWZfNfqjyvDxr4+JojgzcsafzJ2eRbsXfBvPv25JMQ+N8gColvSG0J4Ww6Rk3XdhHoRXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751010709; c=relaxed/simple;
	bh=CmJByLtbVpwLLdyZCpUwCmCAxS6jbpT0as7eKt5fi5w=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=K7Ud1rKh4p8W0h8/x68BlqO0UwLcMjiivFcDgWsXWwse0wz7mEUPvb3DJmNGv5JsIygiTFuvWVyCjvZj18cENWxoFmpi2m4mI9fGfE+sLQ3RUKR75XGe/nMx19JF15dLnIvs6OFhN+ShaoHpe6T2VRwgRkFAlk2dkuXkBMMusl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=LmXn5LPi; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1751010706;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=ri0+PoGBbyLJmIsWOHAGRErY0fpNzrIikLK+X0yMjKY=;
	b=LmXn5LPixTX2Q5OODSmEVTOeZWjytL4+l7tvZAW71QHK1oDx3F4fmtmo1mufgTZewB1RD2
	LaUcCrmAhikSSsZnI1SuXQ8welQRm2Zw1NdDijNRa3kImovqkSItpUp6jxLejsvynK1bvr
	EX9z3Zgq0GbfhjtjxxPqAkSWFrLaxNI=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-378-IvRAmlEPM0W4Q2R39Z8evg-1; Fri, 27 Jun 2025 03:51:45 -0400
X-MC-Unique: IvRAmlEPM0W4Q2R39Z8evg-1
X-Mimecast-MFC-AGG-ID: IvRAmlEPM0W4Q2R39Z8evg_1751010704
Received: by mail-wm1-f72.google.com with SMTP id 5b1f17b1804b1-4535d300d2dso14709275e9.1
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 00:51:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751010704; x=1751615504;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ri0+PoGBbyLJmIsWOHAGRErY0fpNzrIikLK+X0yMjKY=;
        b=qVy2rOY8PUCM9YLiQqodcBF/B75WiAhU1aIJEZlkFTSJlq+fcl9T0NFjfnYskuPa0Z
         Ix9GLLP9BqGspNWdiUYhrEA91a8Q77QyK6exS4swWyobb3DsKw93XRpyUDLm4ybL0QAL
         IlbsZr4g8gBVcDh9HILYGEZCfAlLajm/Fja4QEHL/DYQcpuv+xH2BlQpfHpOnEeDnJ1+
         Qtvr3he1Ow50Qn38LJcdK9qg5GbxhzQLEyd8aF25uv+PU9jU32CaXFnqT82e7Ww8pZVs
         cnOqsd3Y3oOmJjzd/J9no60FvwMq7n+DaxaXoBcYZ4fZLIKIRDyAVB0KrrYxGiaFTjXR
         KXBA==
X-Forwarded-Encrypted: i=1; AJvYcCWD5vRu0LmYaP6/WI5X2U/9YmwB6yqhMf3z1r7j0qx+AcdRyAUYDccC0EtM7yKPtbKkrKtxWvJwU3uN@vger.kernel.org
X-Gm-Message-State: AOJu0YyS8/TNcMsRkh9lKPNx38wbM6sU29jO4fjRPlcC3XFPYLG2E3la
	/z7dqXEgMeyUC+5TuAGFQqrmI4+ki1IWkcgJv1h5cQIRsHNAgbQ99c0yTMsGPbyKvzETx1Eg9b4
	qud6/n3cn5lbQcSUzEQ74cTrAF0NMRcrx72EbppQ9J+6MA1iaBjeQl+nO8Y99BhE=
X-Gm-Gg: ASbGncu06oKmWaT/mB7JAtYLtbL0ru1R3+DHqKnaT347Z1pk0rPVQJhRE8aGkhXsWuT
	zWn5zX/iwXbEWOpyBlTmou0K6T//61/bFoe/H6cEjInC0qVL2T2Q5LMfO5OSQxTF7oEOOalgn6C
	XUzU4IAA5FFquF2jmcTfeNMh1HUGBkhwn009m3s3IXze24W3g5AQn5qW1HeovMNE7z5V7fNo91z
	1gnk7n7Vh42pg7BDx9KhndHQa187zDZ4gcTbpqyBIOpJJmid8tRbCMgknRFSzEcHIA34L3K/j5F
	Tecf59bb2OU0XNutdAWf6IS9ZLfgTcfMCougIBYUgvDvsxQR+h7+F8dPS65EcEq1zBiA3X65lyN
	Z3gha
X-Received: by 2002:a05:600c:3ba2:b0:441:b00d:e9d1 with SMTP id 5b1f17b1804b1-4538ee15a09mr27052125e9.2.1751010703344;
        Fri, 27 Jun 2025 00:51:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG84NMS43tLU4/bepm0RU/vh1jVbKdij5j7ryp5JJCNaNfJj8+Z/Tw54L4wr9lRRNPbvhEdWQ==
X-Received: by 2002:a05:600c:3ba2:b0:441:b00d:e9d1 with SMTP id 5b1f17b1804b1-4538ee15a09mr27051735e9.2.1751010702905;
        Fri, 27 Jun 2025 00:51:42 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4538233c5fasm74208765e9.8.2025.06.27.00.51.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jun 2025 00:51:42 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Luca Weiss <luca.weiss@fairphone.com>, Hans de Goede
 <hdegoede@redhat.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Helge
 Deller <deller@gmx.de>
Cc: linux-fbdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Luca Weiss
 <luca.weiss@fairphone.com>
Subject: Re: [PATCH v2 3/5] drm/sysfb: simpledrm: Add support for
 interconnect paths
In-Reply-To: <20250623-simple-drm-fb-icc-v2-3-f69b86cd3d7d@fairphone.com>
References: <20250623-simple-drm-fb-icc-v2-0-f69b86cd3d7d@fairphone.com>
 <20250623-simple-drm-fb-icc-v2-3-f69b86cd3d7d@fairphone.com>
Date: Fri, 27 Jun 2025 09:51:41 +0200
Message-ID: <87qzz5d3le.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Luca Weiss <luca.weiss@fairphone.com> writes:

> Some devices might require keeping an interconnect path alive so that
> the framebuffer continues working. Add support for that by setting the
> bandwidth requirements appropriately for all provided interconnect
> paths.
>
> Reviewed-by: Thomas Zimmermann <tzimmermann@suse.de>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  drivers/gpu/drm/sysfb/simpledrm.c | 83 +++++++++++++++++++++++++++++++++++++++
>  1 file changed, 83 insertions(+)
>
> diff --git a/drivers/gpu/drm/sysfb/simpledrm.c b/drivers/gpu/drm/sysfb/simpledrm.c
> index 349219330314e3421a6bb26ad5cf39a679a5cb7a..47d213e20cab1dd1e19528674a95edea00f4bb30 100644
> --- a/drivers/gpu/drm/sysfb/simpledrm.c
> +++ b/drivers/gpu/drm/sysfb/simpledrm.c
> @@ -2,6 +2,7 @@
>  
>  #include <linux/aperture.h>
>  #include <linux/clk.h>
> +#include <linux/interconnect.h>
>  #include <linux/minmax.h>
>  #include <linux/of_address.h>
>  #include <linux/of_clk.h>
> @@ -225,6 +226,10 @@ struct simpledrm_device {
>  	struct device **pwr_dom_devs;
>  	struct device_link **pwr_dom_links;
>  #endif

Can you add a /* interconnects */ comment here? Similarly how there is one
for clocks, regulators, power domains, etc.

> +#if defined CONFIG_OF && defined CONFIG_INTERCONNECT
> +	unsigned int icc_count;
> +	struct icc_path **icc_paths;
> +#endif
>  

...

> +static int simpledrm_device_attach_icc(struct simpledrm_device *sdev)
> +{
> +	struct device *dev = sdev->sysfb.dev.dev;
> +	int ret, count, i;
> +
> +	count = of_count_phandle_with_args(dev->of_node, "interconnects",
> +							 "#interconnect-cells");
> +	if (count < 0)
> +		return 0;
> +
> +	/* An interconnect path consists of two elements */
> +	if (count % 2) {
> +		drm_err(&sdev->sysfb.dev,
> +			"invalid interconnects value\n");
> +		return -EINVAL;
> +	}
> +	sdev->icc_count = count / 2;
> +
> +	sdev->icc_paths = devm_kcalloc(dev, sdev->icc_count,
> +					       sizeof(*sdev->icc_paths),
> +					       GFP_KERNEL);
> +	if (!sdev->icc_paths)
> +		return -ENOMEM;
> +
> +	for (i = 0; i < sdev->icc_count; i++) {
> +		sdev->icc_paths[i] = of_icc_get_by_index(dev, i);
> +		if (IS_ERR_OR_NULL(sdev->icc_paths[i])) {
> +			ret = PTR_ERR(sdev->icc_paths[i]);
> +			if (ret == -EPROBE_DEFER)
> +				goto err;
> +			drm_err(&sdev->sysfb.dev, "failed to get interconnect path %u: %d\n",
> +				i, ret);

You could use dev_err_probe() instead that already handles the -EPROBE_DEFER
case and also will get this message in the /sys/kernel/debug/devices_deferred
debugfs entry, as the reason why the probe deferral happened.

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat



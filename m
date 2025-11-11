Return-Path: <devicetree+bounces-237160-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 25726C4D8C5
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 12:59:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5A0124F6AFA
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 11:49:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86848302747;
	Tue, 11 Nov 2025 11:49:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="Hgy/cESx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EBBB2FA0ED
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 11:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762861765; cv=none; b=nLxPAyQnByEMRO83bZuSAy3nedH7tC3VZy+L6b6CYTt3gNPRQUj4d7I/MaXVn6YaCmzCZvGAbn/d5R7RE19vOnyrYp7N+SxxmF4IfoIoQ4jaEes2y9uOIZQmw62bs4OxwEhFFjGulECInb86EuobDHnojhD4sjVWG+z/ma6ozUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762861765; c=relaxed/simple;
	bh=lc2UdYjJR0sjNTBD2oKa4cB+uC349vhWvRxB6lMSxjE=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HhVHdXb5iWDixgsu/ETwV/eRO8b/Jo2I0fjiXZbQ8xSXR+QI9RZ+wvfotZNiPPedWZ2G5+s9onyrihI6sfsuLfjfIohnoLe6esqUNtw/objUj6iUxnCbDZM3Jthmz0MHUYMQ6TFHOf0wmTYa/p8tIUtjxMAuRuUiReVslyHlQ5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=Hgy/cESx; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-b72b495aa81so491492366b.2
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 03:49:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1762861761; x=1763466561; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NW0M5blI1g+flfpcZDgej7OD3G98bZF6Q7a2G0Rxs40=;
        b=Hgy/cESxvhIMfJUSZcbzV7sQ4VvfqIKedfzurl+VrnVCJv0QfsS3rER1JFFvmqhLTX
         k8mm0hFnENTVc6QbqbjNDDUSplhro6O7eDQtM9RfyJ2XAf0M9oIIXuVcNh8AEdGzm0Jj
         qFMdZ96Onjb3T3ohZC/nT3VDMyqmpvoklxUvAwWlf532c8lg+OmgMdgpO6+aqMRA5jOU
         r9Es/+79E1KWn1Z/iadfeNCRNoiZUSMLmFmH+LHHqsQo/C88W4uTLpc2oo0DupGRxiED
         f+87qmu+nEznoVJ1NRzfZQLTZ40d+9Evqh92y7D00UT4beKh1smr4hegWU/Rf3jOxkN+
         q4VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762861761; x=1763466561;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NW0M5blI1g+flfpcZDgej7OD3G98bZF6Q7a2G0Rxs40=;
        b=MQytXcuWkg4ALo6W9TmjRQCcnPZ4rG0XFFZcvFFKx/LRfChtUIZHj/V9ZxfGCL7/SL
         cCTs2ytoKoqWc0zyCdj5GDoEQzusQDb3p6GJ20dQhIzBpAXB7Ie8onxPicJF4F2ckvtR
         WJ4gYOmN1ODn2umywe9/pgiZxAx9HQAQmDVzq/r2c+sXIovdeceutfZEtyM+u4X5PVyE
         KLeUoYehf58OQoy/FmoPwf3qjOgB7ac60W5MN0MtAI1YPEhqPOaNU+mVYZwL8MoRl2/i
         S+g5nalV8YyLi+LO0ahjFQmbyCl8fRc05gVUAZtg9VVsIOUE5dyFivrCco3Lki/Ic1jD
         6sWw==
X-Forwarded-Encrypted: i=1; AJvYcCVlFh7iSVUwB9ppdL1RY8ZCGzd9xhUj8lTPXniIZdiIo9qyCOrBG2AQ9JiEs4cT3fqN4oS8eYcpDOFI@vger.kernel.org
X-Gm-Message-State: AOJu0YzgluAA/LONTRX/SEx1b4kLwe3QUh5N21qNDNRUdMbC2//x+pnR
	ufanmpaiH7+bRC+N+bhcTp1Oy5YT6HX3e16paog8NXh2NLnEvUhVuz3IjbLoBMN1KUehFGYixDe
	EsPbE
X-Gm-Gg: ASbGncvO25AKGcyBeKyLLFtfuNNs6+5aWtJ4zkdTfrG1y1iVRkDIX9OvUlh/q8ya6yk
	DDxnO0ZgQSRf/su/AZXqFrsTad+5A0cxC4N/wYD4HnOUPEe2fejRNXgCbfK6pB54HsPSJWHhbzx
	9fQX25ON9bz1RSt0cz/1zeP/1engsD9GC0b66RRHVQ4uFwU3zsSQlXtoaHJSiacIr0WfsTp7gFc
	nu4Ov+MzIAoxBb4mPr6gOG0US4qs6iM6GWRaEkATm2F7Q9AvL00BbB87vkl6V08+nA00Z5/mtJO
	BIiBEY/8iYXYjDcNnoE8asb2vYjj985+Uoqc35Qf4vvY/2h7v61rD3HX8ZyA4b9C+8FP4XyQoo2
	4SIJqJpmqFd8xm2YXI343cYOVS+AjbOI8at5Gg5krt3seUpNUbk5mwIPv6yrWjmfezIre+2+IFv
	gn7rrHKKIkPfl1g5FfGIJ9H6OPiXVbpQwwOEo7l5+mWJg60Q==
X-Google-Smtp-Source: AGHT+IEur0fUlJ4dCFXlsi8JzvD/wZ2A9nQhErrr7cgLwLwwk3uLtEzsliARx6fvO2CXD/kozSEzLQ==
X-Received: by 2002:a17:907:9716:b0:b70:f2c4:bdf7 with SMTP id a640c23a62f3a-b72e04154acmr1265627866b.31.1762861761499;
        Tue, 11 Nov 2025 03:49:21 -0800 (PST)
Received: from localhost (host-79-49-235-115.retail.telecomitalia.it. [79.49.235.115])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b72bdbcea51sm1319505466b.4.2025.11.11.03.49.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Nov 2025 03:49:21 -0800 (PST)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Tue, 11 Nov 2025 12:51:40 +0100
To: Stanimir Varbanov <svarbanov@suse.de>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rpi-kernel@lists.infradead.org,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	linux-pm@vger.kernel.org, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	Lee Jones <lee@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
	Willow Cunningham <willow.e.cunningham@gmail.com>,
	Stefan Wahren <wahrenst@gmx.net>,
	Saenz Julienne <nsaenz@kernel.org>,
	Andrea della Porta <andrea.porta@suse.com>,
	Phil Elwell <phil@raspberrypi.com>,
	Jonathan Bell <jonathan@raspberrypi.com>,
	Dave Stevenson <dave.stevenson@raspberrypi.com>
Subject: Re: [PATCH 1/4] pmdomain: bcm: bcm2835-power: Prepare to support
 BCM2712
Message-ID: <aRMjTHnmsw98G4iX@apocalypse>
References: <20250917063233.1270-1-svarbanov@suse.de>
 <20250917063233.1270-2-svarbanov@suse.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250917063233.1270-2-svarbanov@suse.de>

Hi Stan,

On 09:32 Wed 17 Sep     , Stanimir Varbanov wrote:
> BCM2712 has a PM block but lacks asb and rpivid_asb register
> spaces. To avoid unwanted results add a check for asb existence
> during probe and also add a new register offset for bcm2712 to
> control grafx_v3d power domain. The decision to use the new
> register is implicit - if asb register base is null then the
> driver is probed for bcm2712 (the other supported SoCs have
> asb register space).
> 
> Signed-off-by: Stanimir Varbanov <svarbanov@suse.de>
> ---
>  drivers/pmdomain/bcm/bcm2835-power.c | 17 +++++++++++++----
>  1 file changed, 13 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/pmdomain/bcm/bcm2835-power.c b/drivers/pmdomain/bcm/bcm2835-power.c
> index f5289fd184d0..1d29addfe036 100644
> --- a/drivers/pmdomain/bcm/bcm2835-power.c
> +++ b/drivers/pmdomain/bcm/bcm2835-power.c
> @@ -79,6 +79,7 @@
>  #define PM_IMAGE			0x108
>  #define PM_GRAFX			0x10c
>  #define PM_PROC				0x110
> +#define PM_GRAFX_2712			0x304
>  #define PM_ENAB				BIT(12)
>  #define PM_ISPRSTN			BIT(8)
>  #define PM_H264RSTN			BIT(7)
> @@ -381,6 +382,9 @@ static int bcm2835_power_pd_power_on(struct generic_pm_domain *domain)
>  		return bcm2835_power_power_on(pd, PM_GRAFX);
>  
>  	case BCM2835_POWER_DOMAIN_GRAFX_V3D:
> +		if (!power->asb)
> +			return bcm2835_asb_power_on(pd, PM_GRAFX_2712,
> +						    0, 0, PM_V3DRSTN);
>  		return bcm2835_asb_power_on(pd, PM_GRAFX,
>  					    ASB_V3D_M_CTRL, ASB_V3D_S_CTRL,
>  					    PM_V3DRSTN);
> @@ -447,6 +451,9 @@ static int bcm2835_power_pd_power_off(struct generic_pm_domain *domain)
>  		return bcm2835_power_power_off(pd, PM_GRAFX);
>  
>  	case BCM2835_POWER_DOMAIN_GRAFX_V3D:
> +		if (!power->asb)
> +			return bcm2835_asb_power_off(pd, PM_GRAFX_2712,
> +						     0, 0, PM_V3DRSTN);
>  		return bcm2835_asb_power_off(pd, PM_GRAFX,
>  					     ASB_V3D_M_CTRL, ASB_V3D_S_CTRL,
>  					     PM_V3DRSTN);
> @@ -635,10 +642,12 @@ static int bcm2835_power_probe(struct platform_device *pdev)
>  	power->asb = pm->asb;
>  	power->rpivid_asb = pm->rpivid_asb;
>  
> -	id = readl(power->asb + ASB_AXI_BRDG_ID);
> -	if (id != BCM2835_BRDG_ID /* "BRDG" */) {
> -		dev_err(dev, "ASB register ID returned 0x%08x\n", id);
> -		return -ENODEV;
> +	if (power->asb) {
> +		id = readl(power->asb + ASB_AXI_BRDG_ID);
> +		if (id != BCM2835_BRDG_ID /* "BRDG" */) {
> +			dev_err(dev, "ASB register ID returned 0x%08x\n", id);
> +			return -ENODEV;
> +		}
>  	}
>  
>  	if (power->rpivid_asb) {
> -- 
> 2.47.0
>

Tested-by: Andrea della Porta <andrea.porta@suse.com>

Cheers,
Andrea 


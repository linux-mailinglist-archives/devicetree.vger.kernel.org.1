Return-Path: <devicetree+bounces-297011-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0CAIOVW8BGrmNQIAu9opvQ
	(envelope-from <devicetree+bounces-297011-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 20:00:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 64B9F5387F6
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 20:00:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D25AC3143BA8
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 17:51:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C02F54DD6C5;
	Wed, 13 May 2026 17:51:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabladev.com header.i=@nabladev.com header.b="Nb+SAPpT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx.nabladev.com (mx.nabladev.com [178.251.229.89])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA3E4DC55D;
	Wed, 13 May 2026 17:51:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.251.229.89
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778694691; cv=none; b=iVENmYuty/6wc4zUBXCVqwC4ziNdbff7mNwV1eal77KyVG0oIxkcYb05/5RLF1lDZqm4Cp8+XViYukuughdb35A/GCeA1JrptYvWqZUqBqCHfKHf9Z8ULdnTt2l4hzU4bIw0xhT5unIiU0RysoY1yWTmUP+9TjjPYkyJVAdHWZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778694691; c=relaxed/simple;
	bh=wz+QN8d/1V0gYh8rdt5F5dxrF/uh9SjclvLADwZuFAc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=leaoexfctLB0DXBKB/oIzqMMEWvLQhS2YoMNJkRYeUB3igIy/fnBKK0eQvkkyLZrxzT5GS9VWisDOPSzXyl9+kD4yb0WljJ4kJHcdl3h2G5ycgyPMzSr8lluisDs4QMIoS4/ngGwl6WfDxY7hoJAkLBjpVX5Kdf0UiPMCEDIzUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nabladev.com; spf=pass smtp.mailfrom=nabladev.com; dkim=pass (2048-bit key) header.d=nabladev.com header.i=@nabladev.com header.b=Nb+SAPpT; arc=none smtp.client-ip=178.251.229.89
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nabladev.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabladev.com
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 41CE210C60C;
	Wed, 13 May 2026 19:51:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nabladev.com;
	s=dkim; t=1778694688;
	h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=8MGutkJzH3tL1e7FoYMZxWfgfLXwJS9p0dK0UEKDi/8=;
	b=Nb+SAPpTCOZW6xpv3sumBScy+e9HNZiAou5XQ9QzWLpx9ZxwGWU5dEFEVMehg0CHDD/AhI
	U7YrADNnTHivEwoCN863aQEOhIeAA+VNk7IuWT2LhLN0eIJv+/hksE2rXQTguomln6yyAG
	9gAwgpUY3bOS+ogfdao0DSKra8c2oFqaioZ8UfHRzSK0zouWZyu9DCcnsnIwRa5QIwVRUV
	Mm3xNMZ/bl1mlBdKzNLzS+E0FBtUXKd/OA77i8q+p9ncuLB3CLKNdPjZ+3aNbHwN9g9fbL
	6dmiRWTgDmHBk8oVGHD4wL70eQHlFIiP/wvvvUMhTFqdH7RaLSf1rwcxKKCUFw==
Message-ID: <8bf05bf2-66a3-49e0-972e-4ab7ad9f0ff0@nabladev.com>
Date: Wed, 13 May 2026 15:45:43 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] drm/bridge: lt9211: Add drive-strength-microamp DT
 property
To: Boerge Struempfel <bstruempfel@data-modul.com>,
 Marek Vasut <marex@denx.de>, Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260513133127.376458-1-bstruempfel@data-modul.com>
 <20260513133127.376458-3-bstruempfel@data-modul.com>
Content-Language: en-US
From: Marek Vasut <marex@nabladev.com>
In-Reply-To: <20260513133127.376458-3-bstruempfel@data-modul.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Queue-Id: 64B9F5387F6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[nabladev.com,reject];
	R_DKIM_ALLOW(-0.20)[nabladev.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-297011-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[data-modul.com,denx.de,intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,suse.de,ffwll.ch];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[marex@nabladev.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[nabladev.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nabladev.com:mid,nabladev.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action

On 5/13/26 3:31 PM, Boerge Struempfel wrote:

[...]

> @@ -666,6 +675,26 @@ static int lt9211_parse_dt(struct lt9211 *ctx)
>   
>   	ctx->panel_bridge = panel_bridge;
>   
> +	ctx->lvds_hsdrv_isel = 8; /* default: 25 uA */
> +	ret = of_property_read_u32(dev->of_node, "drive-strength-microamp",
> +				   &microamp);

if (ret && ret != -EINVAL) {
   ... error handling ...
   return ret;
}

Then you won't need the if (!ret) conditional and can reduce indent.

I also wonder whether it wouldn't be better to simply bail with 
dev_err_probe() if the property is invalid, let the user know they 
should fix their DTs before it is too late.

> +	if (!ret) {
> +		for (i = 0; i < ARRAY_SIZE(lt9211_hsdrv_microamp); i++) {
> +			if (lt9211_hsdrv_microamp[i] == microamp) {
> +				ctx->lvds_hsdrv_isel = i;
> +				break;
> +			}
> +		}
> +		if (i == ARRAY_SIZE(lt9211_hsdrv_microamp)) {
> +			dev_err(dev, "Invalid drive-strength-microamp value %u\n",
> +				microamp);
> +			return -EINVAL;
> +		}

[...]

> +
>   	return 0;
>   }


Return-Path: <devicetree+bounces-318156-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Q5jSB2C6RGqezgoAu9opvQ
	(envelope-from <devicetree+bounces-318156-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 08:57:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E4DA6EA5EA
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 08:57:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=j4v9iG2F;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318156-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-318156-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6FEDF30548B6
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 06:53:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA1B63B14CA;
	Wed,  1 Jul 2026 06:53:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8DF0394464;
	Wed,  1 Jul 2026 06:53:18 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782888799; cv=none; b=OVQQmyWrRPQfWZcq4oCj23jALwEWzXXiTW3MGIFrdHhOem1AQoH3Ps/DOq1s1WZZTG6H4+mL3bMNvEhdFw+zOnN6+uT7ddvlBWQwPN+6qmVnuAvOFR1cje0K4upL/hzvHIvJj3Ma0nDqXJAcDJ7Sk6J1aPrAN00PUR64zO6ti6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782888799; c=relaxed/simple;
	bh=gGurYXJfUUqGftMkPGD91QxHXM2O5VPeZQg+fG57YiE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VfmSWBh3ptRvB5n8KvwBphcuUICwrM3L0SXkkSMxX7j8/LrSpstDzvKt8ae3bWuE6ayouBDCfv553eBnP9uoRG9TgJj8Edxt4aUp4Lj64F36nIG+dgyT1D/fjoSqHsyS+IlqKgkoGJSVPkiC5g97aOO5iItcal9074nuOC0/l2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j4v9iG2F; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0383C1F000E9;
	Wed,  1 Jul 2026 06:53:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782888798;
	bh=lZ+udqVIluSYBeOCKXukOv71mZNtvaTQQLcm7V1DnVk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=j4v9iG2FinLdFar0grVOb2kDdfriPOXj/QhlWDM/mMRB1SfBTIBMXisCzuQD5HzJl
	 5cJUOGONJQvlesk17pZtYfqiwq2i5zv5TBgLu0BtpIGaonS0Bi5CHDzkuP5OMUzdbN
	 YFnhg9u6qEzRgJwH82rY2fyZWE714Tz/uChTjyQXI3DxBRYyYC3V0baAF6o6+GOLp9
	 t8MdGh4t/r1WaDIM78tdBllOBTFjxzP2My32MQGH6EMA2lrjh1rMQhp/LzcJBQX4wz
	 Uu4/jiVpke+gbXzGscXiDc1HRb6dKGxOdixTHUAXUIFLCROUiEZS4X8vUmAG3L6iQx
	 7O9jKKI4jPTIg==
Date: Wed, 1 Jul 2026 08:53:15 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Yashas D <y-d@ti.com>
Cc: andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org, 
	Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, 
	luca.ceresoli@bootlin.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org, 
	tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, tomi.valkeinen@ideasonboard.com, 
	dmitry.baryshkov@oss.qualcomm.com, kees@kernel.org, xiqi2@huawei.com, r-ravikumar@ti.com, 
	sjakhade@cadence.com, yamonkar@cadence.com, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, u-kumar1@ti.com, devarsht@ti.com, 
	s-jain1@ti.com, d-mittal@ti.com, b-padhi@ti.com
Subject: Re: [PATCH v4 1/2] dt-bindings: display/bridge: cdns-mhdp8546: Add
 no-hpd property to the cadence bridge
Message-ID: <20260701-red-nautilus-of-masquerade-8fea13@quoll>
References: <20260630102610.1849902-1-y-d@ti.com>
 <20260630102610.1849902-2-y-d@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260630102610.1849902-2-y-d@ti.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[31];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:y-d@ti.com,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:luca.ceresoli@bootlin.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:tomi.valkeinen@ideasonboard.com,m:dmitry.baryshkov@oss.qualcomm.com,m:kees@kernel.org,m:xiqi2@huawei.com,m:r-ravikumar@ti.com,m:sjakhade@cadence.com,m:yamonkar@cadence.com,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:u-kumar1@ti.com,m:devarsht@ti.com,m:s-jain1@ti.com,m:d-mittal@ti.com,m:b-padhi@ti.com,m:jernejskrabec@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-318156-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,bootlin.com,linux.intel.com,suse.de,ffwll.ch,oss.qualcomm.com,huawei.com,ti.com,cadence.com,lists.freedesktop.org,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,quoll:mid,ti.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8E4DA6EA5EA

On Tue, Jun 30, 2026 at 03:56:09PM +0530, Yashas D wrote:
> From: Rahul T R <r-ravikumar@ti.com>
> 
> The mhdp bridge can work without its HPD pin hooked up to the connector,
> but the current bridge driver throws an error when hpd line is not
> connected to the connector. For such cases, we need an indication for
> no-hpd, using which we can bypass the hpd detection and instead use the
> auxiliary channels connected to the DP connector to confirm the
> connection.
> So add no-hpd property to the bindings, to disable hpd when not
> connected or cannot be used for hotplug detection.

Subject prefixes: There is no such file cdns-mhdp8546. I already pointed
this out at v2. This is a nit, but I do not understand why the same
feedback has to be repeated third time (v3 also ignored it).

Please use subject prefixes matching the subsystem. You can get them for
example with 'git log --oneline -- DIRECTORY_OR_FILE' on the directory
your patch is touching. For bindings, the preferred subjects are
explained here:
https://www.kernel.org/doc/html/latest/devicetree/bindings/submitting-patches.html#i-for-patch-submitters

Best regards,
Krzysztof



Return-Path: <devicetree+bounces-310836-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id k4diJJjSK2oEFwQAu9opvQ
	(envelope-from <devicetree+bounces-310836-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 11:34:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EA50B678578
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 11:34:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=w+TU6xwt;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310836-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310836-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=bootlin.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5E49B350BEB7
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 09:27:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C2B138736A;
	Fri, 12 Jun 2026 09:26:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 694763A6B66
	for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 09:26:45 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781256407; cv=none; b=jcnqe6hph+URW/UDdu74sCcPWL1aLmNFpM0Dr+l6OYrI8RwSZn5zFv5cH+dsZxzA9yxAD0EyB0R79kaRSHiaN6nM/LIAMZICAkTNPNlykqe2/alZsZqBngKHqjBlfV6uXfRWjjqA4LaerhZuno/eFWWPOw3AGg3Imw9MuKi1OfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781256407; c=relaxed/simple;
	bh=lVB453GqtxNOW/m9ttHbJ1KHp31i0++asr+XpLQywXQ=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:Cc:To:From:
	 References:In-Reply-To; b=DaMeV2R2bHW703y4ZuTfH/eMyraIOhGih3gi5ZX2Uo6+nWoiuUklCRhKxg2YXq++AcZeMvRnmuFNhouSdG2Y8MGkW7KEbUfIFA0lCRiL76J9NEely+szqI7rL1oX8MvnP+CA3iw1KXUShPDX2vjuED4cBH/AepCdjRZ9BWfc/b4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=w+TU6xwt; arc=none smtp.client-ip=185.246.84.56
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 206BD1A38E2;
	Fri, 12 Jun 2026 09:26:44 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id E52FF60012;
	Fri, 12 Jun 2026 09:26:43 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id C60A9106C859C;
	Fri, 12 Jun 2026 11:26:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1781256402; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=fL33FL+aMUdA5kyqvTOXYyFEl0LYSHOsvxw7TOmrhQw=;
	b=w+TU6xwtAK71NAhdf7a38P76w9cqKNMgO2Jlk3AlahPESi+cVCrfOF3ORQCqI5uCbkvqo4
	2vKRRjKuBRnj/X4wMOHAMU+FYitPhSlFPx39Q3T+6aoqNaXozZ+rHl1nDBj+0tPNXNp+aU
	xlzCy/j5HToPF8ZAAc9ytw5tKWcQw8sP4tG863iM8W6x82AGBlzf/kTdkdTNQpeFgdllMg
	MhVI5EdEd0rMw90A46TUXYWM/0c3WRV2lZaKMDPJrtdSEC+R4VbWadPJBZ3Hvz9aTH8Cyo
	isQnVbCxdD5nDVjyh/KYMTO4fmizkUufU3chAmg5Msv9d7WOIOBiD6AmRy1akw==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 12 Jun 2026 11:26:34 +0200
Message-Id: <DJ6YOZ4G73A3.37QF618MHAR4F@bootlin.com>
Subject: Re: [PATCH 3/4] drm-bridge: lontium lt9611c: fixes and improvements
Cc: <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <boss@oss.qualcomm.com>,
 <qc-display-maintainer@oss.qualcomm.com>
To: "Mohit Dsor" <mohit.dsor@oss.qualcomm.com>, "Andrzej Hajda"
 <andrzej.hajda@intel.com>, "Neil Armstrong" <neil.armstrong@linaro.org>,
 "Robert Foss" <rfoss@kernel.org>, "Laurent Pinchart"
 <Laurent.pinchart@ideasonboard.com>, "Jonas Karlman" <jonas@kwiboo.se>,
 "Jernej Skrabec" <jernej.skrabec@gmail.com>, "Luca Ceresoli"
 <luca.ceresoli@bootlin.com>, "David Airlie" <airlied@gmail.com>, "Simona
 Vetter" <simona@ffwll.ch>, "Maarten Lankhorst"
 <maarten.lankhorst@linux.intel.com>, "Maxime Ripard" <mripard@kernel.org>,
 "Thomas Zimmermann" <tzimmermann@suse.de>, "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley"
 <conor+dt@kernel.org>, "Vinod Koul" <vkoul@kernel.org>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
X-Mailer: aerc 0.21.0
References: <20260611-lt9611-b4-send-v1-0-42abbcd3bb1e@oss.qualcomm.com>
 <20260611-lt9611-b4-send-v1-3-42abbcd3bb1e@oss.qualcomm.com>
In-Reply-To: <20260611-lt9611-b4-send-v1-3-42abbcd3bb1e@oss.qualcomm.com>
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-310836-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[luca.ceresoli@bootlin.com,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:boss@oss.qualcomm.com,m:qc-display-maintainer@oss.qualcomm.com,m:mohit.dsor@oss.qualcomm.com,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:luca.ceresoli@bootlin.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:vkoul@kernel.org,m:jernejskrabec@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,bootlin.com,ffwll.ch,linux.intel.com,suse.de];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.ceresoli@bootlin.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,bootlin.com:dkim,bootlin.com:mid,bootlin.com:url,bootlin.com:from_mime,qualcomm.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EA50B678578

On Wed Jun 10, 2026 at 11:14 PM CEST, Mohit Dsor wrote:
> Remove two redundant lt9611c_reset() calls:
>
> 1. In lt9611c_bridge_atomic_pre_enable(): a reset is already performed
>    during probe and resume; calling it again on every display enable
>    adds ~440ms of unnecessary latency.
>
> 2. At the end of lt9611c_probe(): a reset was already performed earlier
>    in probe before lt9611c_lock(). The second reset is redundant.
>
> Also, the DRM HDMI bridge framework requires hdmi_write_hdmi_infoframe an=
d
> hdmi_clear_hdmi_infoframe callbacks for HDMI vendor-specific infoframe
> (VSI) support, used for features such as HDR metadata signalling.
>
> This patch add stub implementations that return success. Wire them into t=
he bridge
> function table.
>
> Also, Store the chip variant enum value in the of_match_table .data field=
 and
> retrieve it via of_device_get_match_data() when probing from a DT node.
> Fall back to i2c_device_id.driver_data for non-DT (e.g. ACPI) probe
> paths.
>
> This is the standard kernel pattern for passing per-compatible data
> through the OF match table, and avoids relying solely on the I2C device
> ID table for chip type detection when DT is available.
>
> Populate bridge.vendor and bridge.product so the DRM HDMI framework can
> report the correct manufacturer and product name in the HDMI connector
> properties (visible via xrandr --prop and related sysfs entries).
>
> Signed-off-by: Mohit Dsor <mohit.dsor@oss.qualcomm.com>

These are several unrelated changes and should be separate commits.

Luca

--
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


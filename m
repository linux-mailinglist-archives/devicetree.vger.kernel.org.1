Return-Path: <devicetree+bounces-283966-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qFgnGQo/zmkImQYAu9opvQ
	(envelope-from <devicetree+bounces-283966-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Apr 2026 12:03:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 23CA738769E
	for <lists+devicetree@lfdr.de>; Thu, 02 Apr 2026 12:03:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E52EC3084591
	for <lists+devicetree@lfdr.de>; Thu,  2 Apr 2026 09:57:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3196395D8B;
	Thu,  2 Apr 2026 09:57:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="yfijbib2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9BB03D9048;
	Thu,  2 Apr 2026 09:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775123847; cv=none; b=Fg4Zkuko5r6gutxVraLq0ZLaks9h4itK7nuvCsa6jKt5ATcCcu62PmffLTWn/6ZEfp5J0EDLq2dCx1TY77VGCgBQIzpIqL4DZ2R3/M/pbERlN5srVCAdE5WHKOOf04Mpp+H/+oDAlmenhiysFTfuY8jNMNa90/WZotRpSsFeoJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775123847; c=relaxed/simple;
	bh=qN55qyi151Z2WjW3JkqhczNInnenaAJJPjh3YpSr1Jc=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:Cc:To:From:
	 References:In-Reply-To; b=uBf1xZ2T/+yat+LiesUTYKBh5Pgh/+/V/BzMDJnC/eau45VOyyYQr30cKo2unKHZCAe00+reM72lk+UZvcTNaqoxhzc8m57U3ADfx/AYFlWmjD/Mlta6SDQT9Bq655/TWYxCSClBpvF3xYspCxZJleeZGb67ABPe21LViZ4nfLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=yfijbib2; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id E3FFE4E428AF;
	Thu,  2 Apr 2026 09:57:21 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 9D1985FDEB;
	Thu,  2 Apr 2026 09:57:21 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 7C86B10451269;
	Thu,  2 Apr 2026 11:57:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1775123839; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=TzIlBZUzn8rERbKkbHZzxtwdaqOzw3k+NsqvcFKNCOI=;
	b=yfijbib28QgvpYc1jycPgfP1cf9QlbzNBZPIME3kRP5Xwzo0Fpz2NwFpnPf06+Xjf9yrXM
	6uuWK4eFgEvIZhk76Xf49zo84Sdl+IF0IoEQb5+i1WM2DUb3EusPkbBHlYMeiAA4BJVNiD
	vt47wimSQQrjgiHUnJFI4InJ1gHobtAsHy9LoffndKHE/0YLZZZ/BJwmQYqgbbOZTNQ+vZ
	LURJAa5eADPjbU5jOI1nysQWc1RG3SXKJyJtoMYO9TWdAV4FeQMk9g7nn4ObSocBWzCZzI
	8tJ+zX2CCZC3ytW+hDX0ggKrWl0uTImJlY2zAZfMQzcBxT68f4JFiL8TuprB9g==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 02 Apr 2026 11:57:03 +0200
Message-Id: <DHIKVMUU8P8R.2QUPO5LAU6BLO@bootlin.com>
Subject: Re: [PATCH v2 06/10] drm/bridge: dw-hdmi: warn on unsupported
 attach combination
Cc: "Kory Maincent (TI.com)" <kory.maincent@bootlin.com>,
 =?utf-8?q?Herv=C3=A9_Codina?= <herve.codina@bootlin.com>, "Hui Pu"
 <Hui.Pu@gehealthcare.com>, "Ian Ray" <ian.ray@gehealthcare.com>, "Thomas
 Petazzoni" <thomas.petazzoni@bootlin.com>,
 <dri-devel@lists.freedesktop.org>, <imx@lists.linux.dev>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>, "Adam Ford" <aford173@gmail.com>, "Alexander
 Stein" <alexander.stein@ew.tq-group.com>, "Christopher Obbard"
 <christopher.obbard@linaro.org>, "Daniel Scally"
 <dan.scally@ideasonboard.com>, "Emanuele Ghidoli"
 <emanuele.ghidoli@toradex.com>, "Fabio Estevam" <festevam@denx.de>,
 "Francesco Dolcini" <francesco.dolcini@toradex.com>, "Frieder Schrempf"
 <frieder.schrempf@kontron.de>, "Gilles Talis" <gilles.talis@gmail.com>,
 =?utf-8?q?Goran_Ra=C4=91enovi=C4=87?= <goran.radni@gmail.com>, "Heiko
 Schocher" <hs@denx.de>, "Josua Mayer" <josua@solid-run.com>, "Kieran
 Bingham" <kieran.bingham@ideasonboard.com>, "Marco Felsch"
 <m.felsch@pengutronix.de>, "Martyn Welch" <martyn.welch@collabora.com>,
 "Oleksij Rempel" <o.rempel@pengutronix.de>, "Peng Fan" <peng.fan@nxp.com>,
 "Richard Hu" <richard.hu@technexion.com>, "Shengjiu Wang"
 <shengjiu.wang@nxp.com>, "Stefan Eichenberger"
 <stefan.eichenberger@toradex.com>, "Vitor Soares"
 <vitor.soares@toradex.com>
To: "Damon Ding" <damon.ding@rock-chips.com>, "Marek Vasut" <marex@denx.de>,
 "Stefan Agner" <stefan@agner.ch>, "Maarten Lankhorst"
 <maarten.lankhorst@linux.intel.com>, "Maxime Ripard" <mripard@kernel.org>,
 "Thomas Zimmermann" <tzimmermann@suse.de>, "David Airlie"
 <airlied@gmail.com>, "Simona Vetter" <simona@ffwll.ch>, "Frank Li"
 <Frank.Li@nxp.com>, "Sascha Hauer" <s.hauer@pengutronix.de>, "Pengutronix
 Kernel Team" <kernel@pengutronix.de>, "Fabio Estevam" <festevam@gmail.com>,
 "Andrzej Hajda" <andrzej.hajda@intel.com>, "Neil Armstrong"
 <neil.armstrong@linaro.org>, "Robert Foss" <rfoss@kernel.org>, "Laurent
 Pinchart" <Laurent.pinchart@ideasonboard.com>, "Jonas Karlman"
 <jonas@kwiboo.se>, "Jernej Skrabec" <jernej.skrabec@gmail.com>, "Liu Ying"
 <victor.liu@nxp.com>, "Rob Herring" <robh@kernel.org>, "Saravana Kannan"
 <saravanak@kernel.org>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
X-Mailer: aerc 0.20.1
References: <20260330-drm-lcdif-dbanc-v2-0-c7f2af536a24@bootlin.com>
 <20260330-drm-lcdif-dbanc-v2-6-c7f2af536a24@bootlin.com>
 <d9b5c826-e0eb-4c0a-989b-48aa12fdbaef@rock-chips.com>
In-Reply-To: <d9b5c826-e0eb-4c0a-989b-48aa12fdbaef@rock-chips.com>
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[bootlin.com,gehealthcare.com,lists.freedesktop.org,lists.linux.dev,lists.infradead.org,vger.kernel.org,gmail.com,ew.tq-group.com,linaro.org,ideasonboard.com,toradex.com,denx.de,kontron.de,solid-run.com,pengutronix.de,collabora.com,nxp.com,technexion.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-283966-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[rock-chips.com,denx.de,agner.ch,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,nxp.com,pengutronix.de,intel.com,linaro.org,ideasonboard.com,kwiboo.se];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	RCPT_COUNT_GT_50(0.00)[52];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.ceresoli@bootlin.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	NEURAL_HAM(-0.00)[-0.962];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tq-group.com:email,bootlin.com:dkim,bootlin.com:mid,bootlin.com:email,bootlin.com:url,0.0.0.1:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,collabora.com:email,nxp.com:email]
X-Rspamd-Queue-Id: 23CA738769E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello Damon,

On Thu Apr 2, 2026 at 11:14 AM CEST, Damon Ding wrote:
> Hi Luca,
>
> On 3/31/2026 3:25 AM, Luca Ceresoli wrote:
>> dw-hdmi can operate in two different modes, depending on the platform da=
ta
>> as set by the driver:
>>
>>   A. hdmi->plat_data->output_port =3D 0:
>>      the HDMI output (port@1) in device tree is not used
>>
>>   B. hdmi->plat_data->output_port =3D 1:
>>      the HDMI output (port@1) is parsed to find the next bridge
>>
>> Only case B is supported when the DRM_BRIDGE_ATTACH_NO_CONNECTOR flag is
>> passed to the attach callback. Emit a warning when this is violated. Als=
o
>> return -EINVAL which would be returned by drm_bridge_attach() right afte=
r
>> anyway.
>>
>> Reviewed-by: Liu Ying <victor.liu@nxp.com>
>> Tested-by: Martyn Welch <martyn.welch@collabora.com>
>> Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com> # TQMa8MPxL=
/MBa8MPxL
>> Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
>> ---
>> Note: Returning when the warning triggers does not change the functional
>> behaviour of this function. It is not strictly necessary in this patch b=
ut
>> it will have to be done anyway in the following patch.
>> ---
>>   drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 4 ++++
>>   1 file changed, 4 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm=
/bridge/synopsys/dw-hdmi.c
>> index 0296e110ce65..ab1a6a8783cd 100644
>> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
>> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
>> @@ -2910,6 +2910,10 @@ static int dw_hdmi_bridge_attach(struct drm_bridg=
e *bridge,
>>   {
>>   	struct dw_hdmi *hdmi =3D bridge->driver_private;
>>
>> +	/* DRM_BRIDGE_ATTACH_NO_CONNECTOR requires a remote-endpoint to the ne=
xt bridge */
>> +	if (WARN_ON((flags & DRM_BRIDGE_ATTACH_NO_CONNECTOR) && !hdmi->plat_da=
ta->output_port))
>> +		return -EINVAL;
>> +
>>   	if (flags & DRM_BRIDGE_ATTACH_NO_CONNECTOR)
>>   		return drm_bridge_attach(encoder, hdmi->bridge.next_bridge,
>>   					 bridge, flags);
>>
>
> Since many older Rockchip platforms (RK3288, RK3399, etc.) lack a
> hdmi-connector node linked to the HDMI DT node, which corresponds to
> case A. Could we relax this restriction and treat cases where
> DRM_BRIDGE_ATTACH_NO_CONNECTOR is set but hdmi->plat_data->output_port =
=3D
> 0 as a new case C?
>
> For Rockchip platforms, the HDMI driver invokes dw_hdmi_bind() to attach
> the Synopsys bridge. This sequence differs from that on the XNP
> platform, but is similar to the Allwinner implementation.
>
> If we treat the case where DRM_BRIDGE_ATTACH_NO_CONNECTOR is set and
> hdmi->plat_data->output_port =3D 0 as -EINVAL, I will have to modify the
> HDMI DT configuration for all Rockchip platforms when adapting to the
> bridge-connector framework.
>
> The patch that adapts to the bridge-connector framework and has been
> verified OK on RK3399 is attached.

I saw this only after sending v3. Anyway, replying now.

I'm not sure I follow completely your reasoning, but one aspect is that we
can (and should) convert drivers in small groups independently as I'm doing
with this series for the i.MX8MP and involved drivers and you are doing for
the analogix_dp in another series. Converting all (or large sets) at once
would just be not doable realistically.

And so I suggest you send a separate series to convert the Rockchip drivers
based on dw-hdmi. Please Cc me, I'll be glad to review it.

Also, it's not clear to me why we need a case C. We already have two cases
(A and B, the old and new way) and we should convert to case B unless there
is a strong reason. If Rockchip dts are missing a hdmi-connector node you
can reuse the fixup module in patch 8.

Luca

--
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


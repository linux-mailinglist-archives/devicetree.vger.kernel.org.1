Return-Path: <devicetree+bounces-274679-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SHk4LlXgsmncQQAAu9opvQ
	(envelope-from <devicetree+bounces-274679-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:48:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FF1A274D7B
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:48:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B5326300D950
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 15:46:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 962F137DE85;
	Thu, 12 Mar 2026 15:46:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="Q4myv7Q3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC2A03630B6
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 15:46:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773330416; cv=none; b=T/5MaOCphCzM5milz3tMTqxs2Upu3k21Dh4o+mA56cd8sI080JnJPiYtiCLJMIqby7qsoHC+NjD//D9ZlXWeYYFUNCkqhvd8d5IVqnJ8nKVhA9+2s3FAHY3k02pmaighDE+KT8VYCv0ZCZ5XUb2/XmJiJ/zbo8GKg4rTS28B1HQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773330416; c=relaxed/simple;
	bh=RaMOsynCsn93mYTvApYebxNDLrcdQ+IgNS/nSjwopls=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:Cc:To:From:
	 References:In-Reply-To; b=bIiPgSM11lELTruG3j1KjQL+iKQ/JoAn63KquxPbmZgdHb4pIytnlGtCHoyiHOdEjulJd9pswr5vBinPc0YU3beh79wkLviPPrrSYezwsg9laFCBNxUJNpQNfG/saZAT9WaRQEG1wkk0QFM8FPUx1zo00zrQ3yZMOstp2qKIoRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=Q4myv7Q3; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id D2FF51A2E25;
	Thu, 12 Mar 2026 15:46:49 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 971EF6001B;
	Thu, 12 Mar 2026 15:46:49 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 8AAD310369D79;
	Thu, 12 Mar 2026 16:46:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1773330408; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=MWdg4BhJ+7F+9FCrWKRj8s9/rhYwQNXXGRventZwAEU=;
	b=Q4myv7Q3jmBIpFayuRbc1VAZahFwONpn1Q0uiw6Fqgq3+8n3V7hwWSlD5SMiqhLIMYXMXO
	Ol300JGEPbNXWeAKyZ8juWsnl/BjpRUTiZDYLQoQSI6Cm+jD0VP9KK61cEZ9UcZ2K/hVWm
	/GacI1kwhiOlqJ8KY3n4L/ICFDi5jzE9XaRn8SS8P6bpRNnx6hXCo72LIeuhWN/XC9knG6
	nZrPY6buOnsb4UsST4xwTjtMfr612fPvdleOaN3sMOEoV85UTWYxdqvtyLqmbSfZdfb0MR
	wsWKiHKHdeng3GourvLuvI1H3q//T6KrMmPAeWRqHmFe00GQVuCPbPKF3qlK1g==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 12 Mar 2026 16:46:40 +0100
Message-Id: <DH0X5VHW15QI.XOHUGC314J1P@bootlin.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: display: bridge: ti, sn65dsi83: Add
 dual-link video mode property
Cc: <Laurent.pinchart@ideasonboard.com>, <jonas@kwiboo.se>,
 <jernej.skrabec@gmail.com>, <maarten.lankhorst@linux.intel.com>,
 <mripard@kernel.org>, <tzimmermann@suse.de>, <airlied@gmail.com>,
 <simona@ffwll.ch>, <robh@kernel.org>, <krzk+dt@kernel.org>,
 <conor+dt@kernel.org>, <marex@denx.de>, <valentin@compulab.co.il>,
 <philippe.schenker@toradex.com>, <dri-devel@lists.freedesktop.org>,
 <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>, "dri-devel"
 <dri-devel-bounces@lists.freedesktop.org>
To: "Sudarshan Shetty" <tessolveupstream@gmail.com>,
 <andrzej.hajda@intel.com>, <neil.armstrong@linaro.org>, <rfoss@kernel.org>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
X-Mailer: aerc 0.20.1
References: <20260312043743.261475-1-tessolveupstream@gmail.com>
 <20260312043743.261475-2-tessolveupstream@gmail.com>
In-Reply-To: <20260312043743.261475-2-tessolveupstream@gmail.com>
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274679-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,intel.com,linaro.org,kernel.org];
	FREEMAIL_CC(0.00)[ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,denx.de,compulab.co.il,toradex.com,lists.freedesktop.org,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[22];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.ceresoli@bootlin.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[bootlin.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.3:email,0.0.0.2:email,bootlin.com:dkim,bootlin.com:mid,bootlin.com:url]
X-Rspamd-Queue-Id: 1FF1A274D7B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello Sudarshan,

On Thu Mar 12, 2026 at 5:37 AM CET, Sudarshan Shetty wrote:
> Add a new optional device tree property `ti,dual-link-video-mode`
> to indicate that the bridge should configure the device for
> dual-link LVDS video mode.
>
> In dual-link configurations, some panels require the horizontal
> timing parameters to be adjusted before programming them into
> the device. In such cases, the horizontal timing values must be
> divided by two when operating in dual-link mode.
>
> Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>

This is not needed. Dual link mode is already implied by the presence of
port@2 and port@3.

Also, the driver implements that already, and handles even/odd pixel swap
as well:

	ctx->lvds_dual_link =3D false;
	ctx->lvds_dual_link_even_odd_swap =3D false;
	if (model !=3D MODEL_SN65DSI83) {
		struct device_node *port2, *port3;
		int dual_link;

		port2 =3D of_graph_get_port_by_id(dev->of_node, 2);
		port3 =3D of_graph_get_port_by_id(dev->of_node, 3);
		dual_link =3D drm_of_lvds_get_dual_link_pixel_order(port2, port3);
		of_node_put(port2);
		of_node_put(port3);

		if (dual_link =3D=3D DRM_LVDS_DUAL_LINK_ODD_EVEN_PIXELS) {
			ctx->lvds_dual_link =3D true;
			/* Odd pixels to LVDS Channel A, even pixels to B */
			ctx->lvds_dual_link_even_odd_swap =3D false;
		} else if (dual_link =3D=3D DRM_LVDS_DUAL_LINK_EVEN_ODD_PIXELS) {
			ctx->lvds_dual_link =3D true;
			/* Even pixels to LVDS Channel A, odd pixels to B */
			ctx->lvds_dual_link_even_odd_swap =3D true;
		}
	}

(https://elixir.bootlin.com/linux/v7.0-rc3/source/drivers/gpu/drm/bridge/ti=
-sn65dsi83.c#L895-L916)

Luca

--
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


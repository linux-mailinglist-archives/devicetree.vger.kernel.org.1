Return-Path: <devicetree+bounces-283800-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WJL1AQUdzml7lAYAu9opvQ
	(envelope-from <devicetree+bounces-283800-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Apr 2026 09:38:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 006B83854C3
	for <lists+devicetree@lfdr.de>; Thu, 02 Apr 2026 09:38:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9C14F3043A47
	for <lists+devicetree@lfdr.de>; Thu,  2 Apr 2026 07:31:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A71F935F16E;
	Thu,  2 Apr 2026 07:31:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="lOIces2p"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9749342C80
	for <devicetree@vger.kernel.org>; Thu,  2 Apr 2026 07:31:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775115062; cv=none; b=c/qYgR5P+qxwrfUy4ul8qv3DlgIA2P3UQP7IXWE2lmHY0JznlmHQ1353BYzVlfK6sU1V7ouF6KlaugtNzVRS7sJUQ/EwMuihB59vz0bT3gh0ZAl593gmnuRpwBAEAzR0xf7OQXS2nsUEX2nONLutNKqJ6ojVbmZJEp1UYDE2Oxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775115062; c=relaxed/simple;
	bh=Vv0bM/0wobSQl6a7mqsQiVnAnKdoPJxPdWNB9DGJtXI=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:Cc:To:From:
	 References:In-Reply-To; b=tk+AHaCq6XE+MtDcrolYvvKV4fn48dm+u4A3zTY/CnBv0e9wru835F9SEEYP4dAO8zkwRNC1TZsZxQA8lltISLTr6MkAm8SSZt8MuaBqAHwTFgBsL+JCU+RL1jeNwQOgQi3BCWWmr+z7IpIqFFywiiyL99AawCCAjwWyE0mLr5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=lOIces2p; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 22F341A30E5;
	Thu,  2 Apr 2026 07:30:59 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id D49CD5FDEB;
	Thu,  2 Apr 2026 07:30:58 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id C2188104502A6;
	Thu,  2 Apr 2026 09:30:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1775115056; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=mg5DRpO1I9IqFL1uCpjacL1h8jGxnPseFHkiTvt8JGg=;
	b=lOIces2p65XZz1GzTxchohBGLhitrJz1Myv8zRLJM1v6cIfed1WNrgMEJXqF3MbP88hDoR
	KqtNcnSwaaCUoEoZGF30CL7bUv9jXEd2fMK0phlo4H2vZBGYVQ/bpHjHui3GWkBWQyYG68
	ijXqB2tMRuBEsnMuY5MJUchw90gufWormGbWF+EoyqaqrM20LefjoVMUjOjyh6wU63XWzv
	aaVEv8xLr7LctY2kG0TGdzhYkCmen7GK5U2FK0TjXTPnShz4J0aErMdVBVuzSPmlwBMGHw
	ybAIQv531K0SvBsw2H0oOPPVUtEpHZ2jgUKFAXil/tYBte54Dru/mRMZba4m2w==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 02 Apr 2026 09:30:38 +0200
Message-Id: <DHIHRIPV0BD1.1117AH7B5HKKL@bootlin.com>
Subject: Re: [PATCH v2 08/10] drm/bridge: imx8mp-hdmi-tx: add an
 hdmi-connector when missing using a DT overlay at boot time
Cc: "Damon Ding" <damon.ding@rock-chips.com>, "Kory Maincent (TI.com)"
 <kory.maincent@bootlin.com>, =?utf-8?q?Herv=C3=A9_Codina?=
 <herve.codina@bootlin.com>, "Hui Pu" <Hui.Pu@gehealthcare.com>, "Ian Ray"
 <ian.ray@gehealthcare.com>, "Thomas Petazzoni"
 <thomas.petazzoni@bootlin.com>, <dri-devel@lists.freedesktop.org>,
 <imx@lists.linux.dev>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>, "Adam Ford"
 <aford173@gmail.com>, "Alexander Stein" <alexander.stein@ew.tq-group.com>,
 "Christopher Obbard" <christopher.obbard@linaro.org>, "Daniel Scally"
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
To: "Liu Ying" <victor.liu@nxp.com>, "Marek Vasut" <marex@denx.de>, "Stefan
 Agner" <stefan@agner.ch>, "Maarten Lankhorst"
 <maarten.lankhorst@linux.intel.com>, "Maxime Ripard" <mripard@kernel.org>,
 "Thomas Zimmermann" <tzimmermann@suse.de>, "David Airlie"
 <airlied@gmail.com>, "Simona Vetter" <simona@ffwll.ch>, "Frank Li"
 <Frank.Li@nxp.com>, "Sascha Hauer" <s.hauer@pengutronix.de>, "Pengutronix
 Kernel Team" <kernel@pengutronix.de>, "Fabio Estevam" <festevam@gmail.com>,
 "Andrzej Hajda" <andrzej.hajda@intel.com>, "Neil Armstrong"
 <neil.armstrong@linaro.org>, "Robert Foss" <rfoss@kernel.org>, "Laurent
 Pinchart" <Laurent.pinchart@ideasonboard.com>, "Jonas Karlman"
 <jonas@kwiboo.se>, "Jernej Skrabec" <jernej.skrabec@gmail.com>, "Rob
 Herring" <robh@kernel.org>, "Saravana Kannan" <saravanak@kernel.org>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
X-Mailer: aerc 0.20.1
References: <20260330-drm-lcdif-dbanc-v2-0-c7f2af536a24@bootlin.com>
 <20260330-drm-lcdif-dbanc-v2-8-c7f2af536a24@bootlin.com>
 <167408cb-2ae8-4863-b8aa-6af7961dd133@nxp.com>
In-Reply-To: <167408cb-2ae8-4863-b8aa-6af7961dd133@nxp.com>
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[rock-chips.com,bootlin.com,gehealthcare.com,lists.freedesktop.org,lists.linux.dev,lists.infradead.org,vger.kernel.org,gmail.com,ew.tq-group.com,linaro.org,ideasonboard.com,toradex.com,denx.de,kontron.de,solid-run.com,pengutronix.de,collabora.com,nxp.com,technexion.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-283800-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[nxp.com,denx.de,agner.ch,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,pengutronix.de,intel.com,linaro.org,ideasonboard.com,kwiboo.se];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	RCPT_COUNT_GT_50(0.00)[52];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.ceresoli@bootlin.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	NEURAL_HAM(-0.00)[-0.966];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,bootlin.com:dkim,bootlin.com:mid,bootlin.com:url]
X-Rspamd-Queue-Id: 006B83854C3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello Liu,

On Thu Apr 2, 2026 at 6:05 AM CEST, Liu Ying wrote:
> Hi Luca,
>
> On Mon, Mar 30, 2026 at 09:25:49PM +0200, Luca Ceresoli wrote:
>
> [...]
>
>> Changes in v2:
>> - don't apply the overlay if the SoC is not i.MX8MP
>> - build unconditionally, but depend on DRM_IMX_LCDIF
>> - remove useless error check
>> - add missing cleanup.h and init.h includes, remove unneeded includes
>> - avoid dtc warnings on overlay
>> - fix typo in Kconfig help text
>> - not added the Tested-bys because the code has changed
>> - split the 'plat_data->output_port =3D 1' line to a separate patch
>
> v2 also changes commit mesg.

Good to see someone looks at the changelog! :)

Im updating the v2 changelog in v3 to mention this.

>> +	return of_overlay_fdt_apply(dtbo_start, dtbo_size, &ovcs_id, NULL);
>
> Kernel doc of of_overlay_fdt_apply() says:
>
>  * On error return, the changeset may be partially applied.  This is espe=
cially
>  * likely if an OF_OVERLAY_POST_APPLY notifier returns an error.  In this=
 case
>  * the caller should call of_overlay_remove() with the value in *@ret_ovc=
s_id.
>
> Need a bailout?

Indeed! I mistakenly removed it in v2, re-adding it in v3.

Luca

--
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


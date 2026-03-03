Return-Path: <devicetree+bounces-270371-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2IpCBSaipmmvSAAAu9opvQ
	(envelope-from <devicetree+bounces-270371-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 09:56:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 66CE31EB54A
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 09:56:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D58CC30677BA
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 08:49:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63430388E4E;
	Tue,  3 Mar 2026 08:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="yyl4e3Bk"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8160F282F05
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 08:49:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772527794; cv=none; b=UDzVxvgvK8VqWPMrleXJvxzHazbJHKma5rfNpWDaHt+APEnPz6vC0fA0PfH0hq7aLu/xFtKfdo8iLZ/0Jhvz+UltRvT9YtTZGvcjNmUsqjMeRjpMdTF6PARkci9c3vlKdF1HuB56krCy/gJqAEKZCxWDOHUzfL05zoxekCNrjYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772527794; c=relaxed/simple;
	bh=5MWhkdi4EnpIv5O5Lk9CmyyLKWnUH2vFRIZIMto4/So=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:Cc:To:From:
	 References:In-Reply-To; b=aOr/rgvIGmIF6lmoAWA3Op0FHJRCbBMBnAckGDPxV2Axht5ISrRcA1UYUJ0KIhLlXqNRW0Cn0nr5FiII4CCqaOnlH7+fmY9ms498SL/E6rqi0ZcWJ8bIy4snnCwOdnW95F6MoPdfvNBLgRv6xBxIF6Fj6wqzuBhS3ZyDVdzpBO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=yyl4e3Bk; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id C9C7A4E424F4;
	Tue,  3 Mar 2026 08:49:44 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 826CE5FF29;
	Tue,  3 Mar 2026 08:49:44 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 3958310368535;
	Tue,  3 Mar 2026 09:49:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1772527783; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=k2kixXIwzcfNbHwd5w2xvnLJwKD/ZbAoWYUhKmFOtFY=;
	b=yyl4e3BkR1c9BpSKwiVJqWmRzxe1nONWInzsUl0vHpDj/Y6GdrEQS0g9cfjJFo4KIQZ7pf
	os9iwf+5+dn+7O6sZ8RFeOuYxf9FGwhr/8BicW8+2LmpBElfkk2DWv/51uSamKfjjHzOEh
	oKstnDmp5aZfKrkMfom9KtEXx5Cbo2CJIT/6XhLv052oWbtj/4oT/kQAv6yqu5eKaMyX3I
	ajDAfKFGPOoIbAK6vX6BiDRgTAclk42XXhxGSToB7onZ5OaAGGVI71XjIwFdK/cPhZgmwh
	yg6Hxi69iunSOOXCEteDKlnHkkAyZ79E4iaZ4TzUAVb12VnxxIuE/7l2M9BjjQ==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 03 Mar 2026 09:49:26 +0100
Message-Id: <DGT0NIR1EE4J.242LILLFFMDJ7@bootlin.com>
Subject: Re: [PATCH v10 2/3] drm/bridge: imx: Add i.MX93 parallel display
 format configuration support
Cc: "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Shawn Guo"
 <shawnguo@kernel.org>, "Sascha Hauer" <s.hauer@pengutronix.de>,
 "Pengutronix Kernel Team" <kernel@pengutronix.de>, "Fabio Estevam"
 <festevam@gmail.com>, "Peng Fan" <peng.fan@nxp.com>, "Andrzej Hajda"
 <andrzej.hajda@intel.com>, "Neil Armstrong" <neil.armstrong@linaro.org>,
 "Robert Foss" <rfoss@kernel.org>, "Laurent Pinchart"
 <Laurent.pinchart@ideasonboard.com>, "Jonas Karlman" <jonas@kwiboo.se>,
 "Jernej Skrabec" <jernej.skrabec@gmail.com>, "Maarten Lankhorst"
 <maarten.lankhorst@linux.intel.com>, "Maxime Ripard" <mripard@kernel.org>,
 "Thomas Zimmermann" <tzimmermann@suse.de>, "David Airlie"
 <airlied@gmail.com>, "Simona Vetter" <simona@ffwll.ch>,
 <devicetree@vger.kernel.org>, <imx@lists.linux.dev>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <dri-devel@lists.freedesktop.org>, <frank.li@nxp.com>
To: "Marco Felsch" <m.felsch@pengutronix.de>, "Liu Ying"
 <victor.liu@nxp.com>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
X-Mailer: aerc 0.20.1
References: <20260302-v6-18-topic-imx93-parallel-display-v10-0-634fe2778c7a@pengutronix.de> <20260302-v6-18-topic-imx93-parallel-display-v10-2-634fe2778c7a@pengutronix.de> <d97a9c0c-bdda-466a-8131-73799cdb20cd@nxp.com> <jyawx2cllg2jecdvx6bdfv4qiinfiwb6cuuwdhditpr2g2evee@qiox37ahgczd>
In-Reply-To: <jyawx2cllg2jecdvx6bdfv4qiinfiwb6cuuwdhditpr2g2evee@qiox37ahgczd>
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Queue-Id: 66CE31EB54A
X-Rspamd-Server: lfdr
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
	TAGGED_FROM(0.00)[bounces-270371-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,pengutronix.de,gmail.com,nxp.com,intel.com,linaro.org,ideasonboard.com,kwiboo.se,linux.intel.com,suse.de,ffwll.ch,vger.kernel.org,lists.linux.dev,lists.infradead.org,lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,bootlin.com:dkim,bootlin.com:email,bootlin.com:url,bootlin.com:mid,pengutronix.de:email]
X-Rspamd-Action: no action

Hello Marco,

On Tue Mar 3, 2026 at 9:05 AM CET, Marco Felsch wrote:
> On 26-03-03, Liu Ying wrote:
>> On Mon, Mar 02, 2026 at 05:10:41PM +0100, Marco Felsch wrote:
>> > From: Liu Ying <victor.liu@nxp.com>
>> >
>> > NXP i.MX93 mediamix blk-ctrl contains one DISPLAY_MUX register which
>> > configures parallel display format by using the "PARALLEL_DISP_FORMAT"
>> > field. Add a DRM bridge driver to support the display format configura=
tion.
>> >
>> > Signed-off-by: Liu Ying <victor.liu@nxp.com>
>> > [m.felsch@pengutronix.de: port to v7.0-rc1]
>> > [m.felsch@pengutronix.de: add review feedback (Alexander)]
>> > [m.felsch@pengutronix.de: fix to short Kconfig description (checkpath)=
]
>> > [m.felsch@pengutronix.de: use "GPL" instead of "GPL v2" (checkpatch)]
>> > [m.felsch@pengutronix.de: add bus-width support]
>> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

With the GFP_KERNEL and double space dropped you can add:

  Reviewed-by: Luca Ceresoli <luca.ceresoli@bootlin.com>

Luca

--
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


Return-Path: <devicetree+bounces-285304-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QKS2GTP81GmgzQcAu9opvQ
	(envelope-from <devicetree+bounces-285304-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 14:44:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 66F313AE93A
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 14:44:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0BD3F3007ADD
	for <lists+devicetree@lfdr.de>; Tue,  7 Apr 2026 12:44:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD5AC3B47C1;
	Tue,  7 Apr 2026 12:44:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="xpJfVE+D"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FB883947A9
	for <devicetree@vger.kernel.org>; Tue,  7 Apr 2026 12:44:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775565848; cv=none; b=ryMXfMMAdRgWEMluZ5Vb9jVG+4QcbYLkIfOh0KH2vFuoMMWo5hTV3zdJj+nqUUuFl6C1oTX3cLBX6m97sjHa7D6uOMnSRyCw95lre4WuBbXqF3Ds0lMrdYzXf/ylq855fwftwXpCRbbn7fj3ZbH5AjRAG27rQ8VTaOy7Rj7oSnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775565848; c=relaxed/simple;
	bh=4eCfqGoK6C2ueQZKx6S7NXcX2FQyyva+vuYu0Lvkkro=;
	h=Mime-Version:Content-Type:Date:Message-Id:From:Subject:Cc:To:
	 References:In-Reply-To; b=gTzJdQP92zb1txi5jcumQ/7BkHfF2EuplJmv4T5M7bT103EA558y3//LjDRqjonRlAhKtj/VfpGkJ/SP8iQAoTchVQZYa2k4f9ihUAedCSuOLdhNSDaVahMfqEr404n6Mw+gyNU352P2RxGBeGiAFlOuqeP5ILXHn5GUJLAC5IY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=xpJfVE+D; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id D0FE94E4294F;
	Tue,  7 Apr 2026 12:44:05 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 9CE4B603C7;
	Tue,  7 Apr 2026 12:44:05 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 2B93C104500CD;
	Tue,  7 Apr 2026 14:43:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1775565842; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=93hW5u7kA6zQFXa6aVbYkWf1SP6enbNwj09rJ/uKnY0=;
	b=xpJfVE+DhfpK6BJKwTs6G+k4orXAFM7qXHNM122mw7BmUf/+v8aWArISlO1AxW1py4zL0D
	l3eDoGsEeqfBg1NKMbO9sgJ4S7D6zRz49ioXvYzduYmPkCOilbY5pk+yTQcDsWpiF8RnXY
	IvAdF6hzJNMVcF/WwhBVJfWIdcyNRuoSdJfleLTioAxZEyY1+v1FmsBfCjyJ+6cyfJ020Y
	nnkewI+ugG+AwkXlJxkwrmjE1GtDuuHqFU1LCKorXBcpdBQgApB3iEY9zbt66+ARnv2mi8
	OnFqql8fiZh+ZZsIEtR6zuX+LesqN6VQWFDWaZi1M8Rtn2gIZNgpSpvHjWJtHA==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 07 Apr 2026 14:43:51 +0200
Message-Id: <DHMXK2CNE9M8.W9BXCX4I7WR5@bootlin.com>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
Subject: Re: [PATCH v3 08/11] drm/bridge: imx8mp-hdmi-tx-connector-fixup:
 add an hdmi-connector when missing using a DT overlay at boot time
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
X-Mailer: aerc 0.20.1
References: <20260402-drm-lcdif-dbanc-v3-0-27cd247a0847@bootlin.com>
 <20260402-drm-lcdif-dbanc-v3-8-27cd247a0847@bootlin.com>
 <88cf4526-ca8f-4b25-acea-347d92539a2b@nxp.com>
In-Reply-To: <88cf4526-ca8f-4b25-acea-347d92539a2b@nxp.com>
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[rock-chips.com,bootlin.com,gehealthcare.com,lists.freedesktop.org,lists.linux.dev,lists.infradead.org,vger.kernel.org,gmail.com,ew.tq-group.com,linaro.org,ideasonboard.com,toradex.com,denx.de,kontron.de,solid-run.com,pengutronix.de,collabora.com,nxp.com,technexion.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-285304-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[nxp.com,denx.de,agner.ch,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,pengutronix.de,intel.com,linaro.org,ideasonboard.com,kwiboo.se];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	RCPT_COUNT_GT_50(0.00)[52];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.ceresoli@bootlin.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,0.0.0.1:email,32fd8000:email,bootlin.com:dkim,bootlin.com:mid,bootlin.com:email,bootlin.com:url,0.0.0.0:email,32c00000:email]
X-Rspamd-Queue-Id: 66F313AE93A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello Liu,

On Fri Apr 3, 2026 at 11:28 AM CEST, Liu Ying wrote:

>> +++ b/drivers/gpu/drm/bridge/imx/imx8mp-hdmi-tx-connector-fixup.dtso
>> @@ -0,0 +1,33 @@
>> +// SPDX-License-Identifier: GPL-2.0+
>> +/*
>> + * DTS overlay adding an hdmi-connector node to boards using the imx8mp=
 hdmi_tx
>> + *
>> + * Copyright (C) 2026 GE HealthCare
>> + * Author: Luca Ceresoli <luca.ceresoli@bootlin.com>
>> + */
>> +
>> +/dts-v1/;
>> +/plugin/;
>> +
>> +&{/} {
>> +	#address-cells =3D <2>;
>> +	#size-cells =3D <2>;
>> +
>> +	fixup-hdmi-connector {
>> +		compatible =3D "hdmi-connector";
>> +		label =3D "HDMI";
>> +		type =3D "a";
>> +
>> +		port {
>> +			fixup_hdmi_connector_in: endpoint {
>> +				remote-endpoint =3D <&hdmi_tx_out>;
>> +			};
>> +		};
>> +	};
>> +};
>> +
>> +&{/soc@0/bus@32c00000/hdmi@32fd8000/ports/port@1} {
>> +	hdmi_tx_out: endpoint {
>> +		remote-endpoint =3D <&fixup_hdmi_connector_in>;
>> +	};
>> +};
>>
>
> There is a build warning(W=3D1):
>
>   DTC     drivers/gpu/drm/bridge/imx/imx8mp-hdmi-tx-connector-fixup.dtbo
> drivers/gpu/drm/bridge/imx/imx8mp-hdmi-tx-connector-fixup.dtso:12.6-27.3:=
 Warning (avoid_unnecessary_addr_size): /fragment@0/__overlay__: unnecessar=
y #address-cells/#size-cells without "ranges", "dma-ranges" or child "reg" =
or "ranges" property

Ouch, my bad, forgot to run W=3D1 after the last edit. Fix incoming v4,
toghether with the other improvements you have suggested.

Luca

--
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


Return-Path: <devicetree+bounces-265791-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uO/YKRUik2kX1wEAu9opvQ
	(envelope-from <devicetree+bounces-265791-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 14:56:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 474E114447A
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 14:56:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id CD4F030219C6
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 13:55:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E2EF3101BC;
	Mon, 16 Feb 2026 13:54:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A17A21F2BAD
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 13:54:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771250084; cv=none; b=G27dLfBFsIjCqVMW19Zh/MuGgj/TsyiPbXn7D5+5++oVnJ7vwROsYZUrfs9ttxcUt1Oq3bAJHzsajkL9UebEPDMAJOzhRIyjf4P/tyImaV1ue2s3W1b/F2wg207zC+boQTIpP5YprV5Ti1IqGEqHAX6/rqCt/9xNoMOgk31g3zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771250084; c=relaxed/simple;
	bh=FPB/t/4dXtoElZjivEI4yh2qyLN1y6Lp7yePQvtRVKk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=K//eqURA6Tss5YRtul4EEMZgmB3PV/HvTpFJVWIFb3x1+OjXDPAch5nrJZWlbn10MCeuDhtm6H8f7E/nZFbX/N5O2+N3I/djRZp8IhZ7+qRT0BYsbsJFtEKQJi0I6J3SwgBUcGznWf9oRZqTWJMjiLOhY4W6ePTqCEcA2iRmPiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1vrz3e-0003du-HS; Mon, 16 Feb 2026 14:54:38 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1vrz3b-0014kk-2H;
	Mon, 16 Feb 2026 14:54:37 +0100
Received: from mtr by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1vrz3c-00000005sA5-3uTO;
	Mon, 16 Feb 2026 14:54:36 +0100
Date: Mon, 16 Feb 2026 14:54:36 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Sam Ravnborg <sam@ravnborg.org>, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	kernel@pengutronix.de, Neil Armstrong <neil.armstrong@linaro.org>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v2 2/3] dt-bindings: display: panel: add YAML schema for
 LXD M9189A
Message-ID: <aZMhnIE3gmvIr3Aq@pengutronix.de>
References: <20241025141130.3179166-1-r.czerwinski@pengutronix.de>
 <20241025141130.3179166-2-r.czerwinski@pengutronix.de>
 <m2jrr3stleuals5iadxn6yu5j77wxufavvdqo3e7244ckefrk5@kbvo6fbsref2>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <m2jrr3stleuals5iadxn6yu5j77wxufavvdqo3e7244ckefrk5@kbvo6fbsref2>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: m.tretter@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-265791-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[pengutronix.de,quicinc.com,ravnborg.org,lists.freedesktop.org,vger.kernel.org,linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m.tretter@pengutronix.de,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,devicetree.org:url,pengutronix.de:mid,pengutronix.de:email,bootlin.com:url]
X-Rspamd-Queue-Id: 474E114447A
X-Rspamd-Action: no action

On Sat, 26 Oct 2024 14:29:27 +0200, Krzysztof Kozlowski wrote:
> On Fri, Oct 25, 2024 at 04:11:28PM +0200, Rouven Czerwinski wrote:
> 
> A nit, subject: drop second/last, redundant "YAML schema for". The
> "dt-bindings" prefix is already stating that these are bindings in
> schema and YAML.
> See also:
> https://elixir.bootlin.com/linux/v6.7-rc8/source/Documentation/devicetree/bindings/submitting-patches.rst#L18

Ack. I'll change the subject to "dt-bindings: display: panel: add LXD
M9189A" in v4.

> 
> > +++ b/Documentation/devicetree/bindings/display/panel/lxd,m9189a.yaml
> > @@ -0,0 +1,68 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/display/panel/lxd,m9189a.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: LXD M9189A DSI Display Panel
> > +
> > +maintainers:
> > +  - Rouven Czerwinski <r.czerwinski@pengutronix.de>
> > +
> > +properties:
> > +  compatible:
> > +    const: lxd,m9189a
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  standby-gpios:
> > +    description: GPIO used for the standby pin
> > +    maxItems: 1
> > +
> > +  reset-gpios:
> > +    description: GPIO used for the reset pin
> > +    maxItems: 1
> > +
> > +  vdd-supply:
> > +    description: Power regulator
> > +
> > +  backlight:
> > +    description: Backlight used by the panel
> > +    $ref: /schemas/types.yaml#/definitions/phandle
> > +
> > +  port: true
> 
> This misses it's definition. You should reference proper panel schema in
> top-level.

Fixed in v3 by referring to panel-common.yaml as base.

> 
> Best regards,
> Krzysztof
> 


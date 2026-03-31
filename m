Return-Path: <devicetree+bounces-282993-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KH73OQ7Gy2mnLgYAu9opvQ
	(envelope-from <devicetree+bounces-282993-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 15:03:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C92B369E60
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 15:03:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8975130B6803
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 12:48:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DBD73E0256;
	Tue, 31 Mar 2026 12:45:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CBB51A6800
	for <devicetree@vger.kernel.org>; Tue, 31 Mar 2026 12:45:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774961123; cv=none; b=kdn3dQLnPSwThyvW7QmFoaVg+Xe7ASnK8S4mKW2emk5g9jaRO8atQbaoswGOw6Ud6MhbI0eD1/KOhdpr/vRElRRDuo4boIEFqy/f1P/bzczGcblSIWqJkdfgLDxv43VnyD4uhQETqqbgVKlzzoJBMZonciKQuV1v4Wm/QbKA6eg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774961123; c=relaxed/simple;
	bh=o8FVivU4Xqh6mQiTq1kCcqbBD36cUXHehs/6f1QTY1E=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=F/j/71Iop1R8il4V7Fk0miP0prO4ftlvO+5ZCytvvS2gRfJWyRicfT5OwCcZoE1M4ILzjb0+pOwwFMuZ9SKdcX0LFx6HCghMU0U1Ggi97sziPBRcB5VnMPbHoARHe1FXnIsMlgwsXdIfKRFUSUXJFxIUlOVBfWdIOhyXb+FMYgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1w7YSy-0004rB-3T; Tue, 31 Mar 2026 14:45:08 +0200
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1w7YSx-0032jD-16;
	Tue, 31 Mar 2026 14:45:07 +0200
Received: from pza by lupine with local (Exim 4.98.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1w7YSx-00000000Ab8-13OI;
	Tue, 31 Mar 2026 14:45:07 +0200
Message-ID: <d6cdea5f1a4f2eb3f7b73e6136c77020f444d8f0.camel@pengutronix.de>
Subject: Re: [PATCH 1/2] dt-bindings: reset: imx8mq: Add _N suffix to
 IMX8MQ_RESET_MIPI_CSI*_RESET
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Robby Cai <robby.cai@nxp.com>, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, Frank.Li@nxp.com, s.hauer@pengutronix.de,
 festevam@gmail.com
Cc: devicetree@vger.kernel.org, kernel@pengutronix.de, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	aisheng.dong@nxp.com
Date: Tue, 31 Mar 2026 14:45:07 +0200
In-Reply-To: <20260331101331.1405588-2-robby.cai@nxp.com>
References: <20260331101331.1405588-1-robby.cai@nxp.com>
	 <20260331101331.1405588-2-robby.cai@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-282993-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FREEMAIL_TO(0.00)[nxp.com,kernel.org,pengutronix.de,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[p.zabel@pengutronix.de,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.556];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[pengutronix.de:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6C92B369E60
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Di, 2026-03-31 at 18:13 +0800, Robby Cai wrote:
> The assert logic of the MIPI CSI reset signals is active-low on i.MX8MQ,
> but the existing names do not indicate this explicitly. To improve
> consistency and clarity, append the _N suffix to all
> IMX8MQ_RESET_MIPI_CSI*_RESET definitions. The deprecated
> IMX8MQ_RESET_MIPI_CSI*_RESET versions remain temporarily for DT ABI
> compatibility and will be removed at an appropriate time in the future.

The register description in the latest reference manual I can download,
IMX8MDQLQRM Rev. 3.1 (06/2021), still call these bits
MIPI_CSI1_CORE_RESET and so on (without _N). There is no mention of
polarity in the bitfield description. Is a documentation update
planned?

Right now I'd say this improves clarity, but reduces consistency with
existing documentation.

Are these bits self-clearing, or can the reset be asserted by writing
0? As it stands, the CSI driver using these resets, imx8mq-mipi-csi2.c,
only calls reset_control_assert() in imx8mq_mipi_csi_sw_reset():

          /*                                                         =20
           * these are most likely self-clearing reset bits. to make it
           * more clear, the reset-imx7 driver should implement the  =20
           * .reset() operation.                                     =20
           */                    =20
          ret =3D reset_control_assert(state->rst);

This will probably have to be turned into a deassert together with the
reset driver change.

regards
Philipp


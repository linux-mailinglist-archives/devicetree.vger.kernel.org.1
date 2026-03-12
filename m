Return-Path: <devicetree+bounces-274526-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0K7TL4yfsmkOOQAAu9opvQ
	(envelope-from <devicetree+bounces-274526-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 12:12:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id C18DD270ACC
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 12:12:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DA9593006004
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 11:12:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D8033921FD;
	Thu, 12 Mar 2026 11:12:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5E1239BFF6
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 11:12:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773313925; cv=none; b=MfG2d6iUDYJ5YxQEiPRuUdvkxNm3uAFQy7Ka1V31IZqkwgTDJ7MKqhvMUISyErk0WRcPZFvAk4LTB8MkmA+lLF8P4sIP/eJ5mIQvTBL2d/VnKIh7uGIBp9Uk9l9uEvVRZV7bsrMPEdqbKqstT2V5B36HGRYYzzheIpebahx0c9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773313925; c=relaxed/simple;
	bh=jA+08dlgyeYHMMOWgtTt6FqHityvM6f2gc/ee0hecsE=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=KJ7bHZW9IjgLxe+Rsb3HRjYYFaoYvcpQ6C5OjkZy43F1HCLVrHJUQkPuyYMapHr021rhBAamygxaMTnKMCL3BBKSmi/BY41XzZoQO4/JL7INq4engYxNXstbNtMGBDTY2gDd8G37wRa6dsefIDom0+FBI5z9PisI5Yslch+npUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1w0dxE-0002E1-LA; Thu, 12 Mar 2026 12:11:48 +0100
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1w0dxD-0050dx-0B;
	Thu, 12 Mar 2026 12:11:48 +0100
Received: from pza by lupine with local (Exim 4.98.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1w0dxE-000000006Ie-1L98;
	Thu, 12 Mar 2026 12:11:48 +0100
Message-ID: <075052918fdd3c279347b0a2ffd85c8a0db36379.camel@pengutronix.de>
Subject: Re: [PATCH 2/2] reset: spacemit: k3: Add individual reset lines for
 USB, PCIe
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Yixun Lan <dlan@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Junzhong Pan <junzhong.pan@spacemit.com>, Guodong Xu
 <guodong@riscstar.com>, 	devicetree@vger.kernel.org,
 linux-riscv@lists.infradead.org, 	spacemit@lists.linux.dev,
 linux-kernel@vger.kernel.org
Date: Thu, 12 Mar 2026 12:11:48 +0100
In-Reply-To: <20260312-01-k3-reset-usb-pci-v1-2-022b24b7340f@kernel.org>
References: <20260312-01-k3-reset-usb-pci-v1-0-022b24b7340f@kernel.org>
	 <20260312-01-k3-reset-usb-pci-v1-2-022b24b7340f@kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-274526-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[p.zabel@pengutronix.de,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.976];
	RCPT_COUNT_SEVEN(0.00)[10];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,pengutronix.de:mid]
X-Rspamd-Queue-Id: C18DD270ACC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Do, 2026-03-12 at 10:34 +0000, Yixun Lan wrote:
> The DWC3 USB host controller in K3 SoC has three reset lines - AHB,
> VCC, PHY. The PCIe controller also has three reset lines - DBI, Slave,
> Master. So, decouple USB and PCIe reset line to individual ones.
>=20
> Signed-off-by: Yixun Lan <dlan@kernel.org>
> ---
>  drivers/reset/spacemit/reset-spacemit-k3.c | 50 ++++++++++++++++++------=
------
>  1 file changed, 30 insertions(+), 20 deletions(-)
>=20
> diff --git a/drivers/reset/spacemit/reset-spacemit-k3.c b/drivers/reset/s=
pacemit/reset-spacemit-k3.c
> index e9e32e4c1ba5..9f58526b0119 100644
> --- a/drivers/reset/spacemit/reset-spacemit-k3.c
> +++ b/drivers/reset/spacemit/reset-spacemit-k3.c
> @@ -112,16 +112,21 @@ static const struct ccu_reset_data k3_apmu_resets[]=
 =3D {
>  	[RESET_APMU_SDH0]	=3D RESET_DATA(APMU_SDH0_CLK_RES_CTRL,	0, BIT(1)),
>  	[RESET_APMU_SDH1]	=3D RESET_DATA(APMU_SDH1_CLK_RES_CTRL,	0, BIT(1)),
>  	[RESET_APMU_SDH2]	=3D RESET_DATA(APMU_SDH2_CLK_RES_CTRL,	0, BIT(1)),
> -	[RESET_APMU_USB2]	=3D RESET_DATA(APMU_USB_CLK_RES_CTRL,	0,
> -				BIT(1)|BIT(2)|BIT(3)),
> -	[RESET_APMU_USB3_PORTA]	=3D RESET_DATA(APMU_USB_CLK_RES_CTRL,	0,
> -				BIT(5)|BIT(6)|BIT(7)),
> -	[RESET_APMU_USB3_PORTB]	=3D RESET_DATA(APMU_USB_CLK_RES_CTRL,	0,
> -				BIT(9)|BIT(10)|BIT(11)),
> -	[RESET_APMU_USB3_PORTC]	=3D RESET_DATA(APMU_USB_CLK_RES_CTRL,	0,
> -				BIT(13)|BIT(14)|BIT(15)),
> -	[RESET_APMU_USB3_PORTD]	=3D RESET_DATA(APMU_USB_CLK_RES_CTRL,	0,
> -				BIT(17)|BIT(18)|BIT(19)),

If there are already APMU reset users around, these either need to stay
or the driver needs an of_xlate that makes sure the deprecated ranges
are never given out to consumers.

Or, if there are no RESET_APMU users whatsoever yet, we might be
allowed to renumber RESET_APMU_* into a contiguous range.


regards
Philipp


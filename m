Return-Path: <devicetree+bounces-306198-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PH3sFhobIGrovwAAu9opvQ
	(envelope-from <devicetree+bounces-306198-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 14:16:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AE593637682
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 14:16:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=fpqD51Qd;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306198-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306198-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CFDDC32C14A9
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 12:05:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7041F46AEEF;
	Wed,  3 Jun 2026 12:04:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5792C46AED3;
	Wed,  3 Jun 2026 12:04:48 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780488289; cv=none; b=gNsSrTLPMZb0SEWuwXKznfS8RbH5wMX/0UaShQ2sgKpcsvU+9y9KjpMDTdjdsBOTKLENz34CkxteZfJOLzP7DAtN5fWZ8x15xapYncoAOmzYfRIOdsTOhgcuxccvYA66v18ph2hvYlJwJ0IU2pMbL5gbBJRYHeR0wTufjHQYXkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780488289; c=relaxed/simple;
	bh=tmzM3aIRokwYAmw4P0SVJnKcLqZxDOUfE89jumiT9U4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=A5MbQkm/TUfgb3k9mZoM8P1GWoImHpxHVmpLoMSba/gxFTEHPIEjHZ79D8xFL4h0BWLZwyxa6HfeSzy6xs8yFYRg2vrq9qPDWAa7qvJcfIfyzr30C3ul1A+KpSlZvZps/UtXB0/LO9+bu/EZ7WOZFEuT68b+Ggo48C7FkC9nKLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fpqD51Qd; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DEA0D1F00893;
	Wed,  3 Jun 2026 12:04:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780488288;
	bh=xsm4QVSqvdKpc9KMVJ/nHMhqv3iq6OfD4f2lFZGwn3w=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=fpqD51QdXRvIB8WMX7sGtp+dw1UlVYhLqTMJP1YSqujSOR32HX9/pIhHyWG42Lvxc
	 QEkh3KHeUrlSEAi25n/+VGJHFa6fwav9ExBMIt9gfma6B61sKbVFaaMbSgBdQyVFrH
	 g6l3obnlx4EwuYVl5YbWgN9xr/vHvdTWdpEpruEnFidW6yAGWAZNY4WxBTWfAc6b6V
	 qklPi5B72wbn5Yngp8nJ/oo7WU7DH08H5L0OfTvDvpidkfS2nqug8V9+yItqSbm41Y
	 ZAxhkNTltrZ6+Gj3eF+DkPNCFNwVePO1Gs726raZ34if4U7wPlJOyFL/xDlXlyssBI
	 TVnoHQCAJe9EQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v1 10/12] arm64: dts: imx8mp-var-som-symphony: keep
 RGB_SEL low
Reply-To: sashiko-reviews@lists.linux.dev
To: "Stefano Radaelli" <stefano.radaelli21@gmail.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, Frank.Li@kernel.org, robh@kernel.org, imx@lists.linux.dev
In-Reply-To: <642c165fa5ce0951352d7d164ae7d871120e8631.1780487415.git.stefano.r@variscite.com>
References: <642c165fa5ce0951352d7d164ae7d871120e8631.1780487415.git.stefano.r@variscite.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 03 Jun 2026 12:04:46 +0000
Message-Id: <20260603120446.DEA0D1F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-306198-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp,smtp.kernel.org:mid,sashiko.dev:url,variscite.com:email,lists.linux.dev:replyto];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:stefano.radaelli21@gmail.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:Frank.Li@kernel.org,m:robh@kernel.org,m:imx@lists.linux.dev,m:stefanoradaelli21@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AE593637682

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The gpio-hog DT node is named 'lvds-brg-enable-hog' while the line-=
name and comments refer to 'rgb_sel'. This mismatch creates confusion regar=
ding the hardware's actual configuration and may be a copy-paste error.
--

commit 1f0ff0206f69fa2f47bd286b774f7b26db9168ed
Author: Stefano Radaelli <stefano.r@variscite.com>

arm64: dts: imx8mp-var-som-symphony: keep RGB_SEL low

This commit drives the RGB_SEL line low on the Symphony carrier board.
It ensures the board remains in the expected display configuration rather
than leaving the line floating.

> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts b/=
arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts
> index df4409af26a26..d796c32f50cc6 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts
> @@ -191,6 +191,14 @@ pcal6408: gpio@21 {
>  		reg =3D <0x21>;
>  		#gpio-cells =3D <2>;
>  		gpio-controller;
> +
> +		/* RGB_SEL */
> +		lvds-brg-enable-hog {

[Severity: Low]
This isn't a bug, but is the node name lvds-brg-enable-hog intentional here?

The comment and line-name both refer to rgb_sel. Naming the node
lvds-brg-enable-hog creates a mismatch that looks like it might be a
leftover from a copy-paste.

> +			gpio-hog;
> +			gpios =3D <7 GPIO_ACTIVE_HIGH>;
> +			output-low;
> +			line-name =3D "rgb_sel";
> +		};
>  	};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/cover.1780487415.gi=
t.stefano.r@variscite.com?part=3D10


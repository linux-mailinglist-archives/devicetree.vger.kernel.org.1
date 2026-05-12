Return-Path: <devicetree+bounces-295931-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CEgqHF+NAmrzuAEAu9opvQ
	(envelope-from <devicetree+bounces-295931-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 04:15:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F4AA518CD8
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 04:15:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2FCF9301B4D1
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 02:14:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E557E313551;
	Tue, 12 May 2026 02:14:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kug6yplD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C21017083C
	for <devicetree@vger.kernel.org>; Tue, 12 May 2026 02:14:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778552083; cv=none; b=gdfM7azAf9LV+NpKl4Let+6FzCLYI4fLUUOOu7W15IjFOH5D0/eYe2Zt7Sid3UJOzxxwHUyul5ZydOXsNDUh+lK5KAnsJhQ+o157aVEbiURjLZaHT3DzIJz7+oIS5gOYNbhe4Sx5k04mBFxS9SI7V6doS9sS3YjJO72ki/9r9yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778552083; c=relaxed/simple;
	bh=7gMp63dIVb8F+8U2aJkcMlxC6FtgrMdN5nWsztx9wV4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=JmgGBzSXZIciHWoWfIjBwiAay+9SjsiwnvnRBMM0SgZTnKUy9ByBXDnfVyjuFb/5xHlYxwb36htlQN7lZhuYGY+zHpGMX1/MF/LtKxu/RfDCPmi8YttHqBfAQLFz1rQwvGH2WCuHYEpZ+fDSJ4P2AFzw8O0NKKsAJYICh0guCsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kug6yplD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 347D1C2BCB0;
	Tue, 12 May 2026 02:14:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778552083;
	bh=7gMp63dIVb8F+8U2aJkcMlxC6FtgrMdN5nWsztx9wV4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=Kug6yplDc27PbmWQKX1j3PzQtBq4JzkiylDafHW63GcQBRrr+LXrox5qpnEgJIgXG
	 Z6qdps4gMC+dEDg525DRSkctaMA2we1bEVbEwV/1NLI2gd19AGaUG+idvep6ET6GWR
	 QQKudI11mySduU7DAXdwfqWnzQeG1qfQkRSq6NPtU/PoPgL/HOz2+O/tAyUPhP0maF
	 FBGkj7JNUfJDSXWfnxsjAnHyjtqHYJ2vWZDqNBJipicHP9NwsuLdKDJdK+SYC156xh
	 KLdq5TRbT85HKpjkfr51gktn+kNPddm4Rb3qEJhLdTi4+vSGBTEHPAtGgOn6IXhpqQ
	 xhWksbLr9E03w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/6] riscv: dts: spacemit: k1-musepi-pro: add PMIC
 and power infrastructure
Reply-To: sashiko@lists.linux.dev
To: "Andre Heider" <a.heider@gmail.com>
Cc: krzk+dt@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260511111116.1109643-2-a.heider@gmail.com>
References: <20260511111116.1109643-2-a.heider@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 12 May 2026 02:14:42 +0000
Message-Id: <20260512021443.347D1C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 5F4AA518CD8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-295931-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,lists.linux.dev:replyto,smtp.kernel.org:mid,sashiko.dev:url];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The node name `regulator-vcc-40v` incorrectly implies a 40V regulat=
or, whereas it is configured for 4.0V.
--

commit 31559fd8aa980bcda8336aa1515122f80207c34b
Author: Andre Heider <a.heider@gmail.com>

riscv: dts: spacemit: k1-musepi-pro: add PMIC and power infrastructure

This commit enables i2c8 and adds the connected SpacemiT P1 PMIC with
its related regulators for the board's power infrastructure.

> diff --git a/arch/riscv/boot/dts/spacemit/k1-musepi-pro.dts b/arch/riscv/=
boot/dts/spacemit/k1-musepi-pro.dts
> --- a/arch/riscv/boot/dts/spacemit/k1-musepi-pro.dts
> +++ b/arch/riscv/boot/dts/spacemit/k1-musepi-pro.dts

[ ... ]

> +	reg_vcc_4v0: regulator-vcc-40v {

This isn't a bug, but there appears to be a typo in the node name. The 40v
suffix implies a 40V regulator, whereas the regulator properties configure
it for 4.0V. Should this be named regulator-vcc-4v0 or similar to match the
label and configuration?

> +		compatible =3D "regulator-fixed";
> +		regulator-name =3D "VCC4V0";
> +		regulator-min-microvolt =3D <4000000>;
> +		regulator-max-microvolt =3D <4000000>;
> +		regulator-boot-on;
> +		regulator-always-on;
> +		vin-supply =3D <&reg_usb_vbus>;
> +	};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260511111116.1109=
643-1-a.heider@gmail.com?part=3D1


Return-Path: <devicetree+bounces-325441-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id G0FBJ1jHVGpwSwAAu9opvQ
	(envelope-from <devicetree+bounces-325441-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 13:09:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 089F674A27C
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 13:09:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ErdDRiIy;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325441-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-325441-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 896033003E81
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 11:07:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00C4837E2E1;
	Mon, 13 Jul 2026 11:07:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D31AF30AACD
	for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 11:07:43 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783940864; cv=none; b=uAXu2kDp3e+mAMb/AqKvOV3/HiEBUDYTRL4C+To+EmehfSHo06tiO0BMMwfBVOKMocSrzYSzqcC6KkQzPjnNXyJZu95Ke+UqzQYeLJOIZHjPyAMp3Lg4MSGBBsbA6Hx7lx+6hr6YQPNZl0vL0MKkwqbdyixdeCt4yIkw/oSWxG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783940864; c=relaxed/simple;
	bh=7nX9DM7G5kX8iz7Wd8cgPhTaFNeHJDgBhY1EQrpAAno=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=NxPT79XyZo3ZEq78EX3DpcnJjvvO+NfzeKNOlg0C72+JHRoq1sACI4fDhRsp+0RW7TFac8E79rVPGWZFfSQLVbc2xSxvy5uSPThc0U1sZWgLAVFU0YpTYnV6IlNa9meRFCvNr7Sn10yfh1Pg10tCh1rZ7aS8deKV3lMdbDzq8n8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ErdDRiIy; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2348B1F000E9;
	Mon, 13 Jul 2026 11:07:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783940863;
	bh=VNwibY/K2KQYxTvlrD7WBiXc6oby0lC/w73kbJExj8s=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ErdDRiIy+WlEsFuqLKgvl5fxctqiPw1BL0AjkHcoucF/83W1sGSleTpoO9RelPDeI
	 7vTwuehuRatJndYkM2MuDZPU0Ktykkoyy0NxLiq1qSjzS9XWT1g30Pe2MakRaM5Etp
	 0Aq16c9IeujTX/DYmwjzsOU8n+auA3vmWWuW7eMyLLC2zWRFuK7tWkIISQslwZDa3X
	 ai3mwvbcHDStn/EyeYIXCMa4yJeFKx3wu/5ydPpiGexzcanq78649a9eBAessnw6nk
	 YQa9Wx0BJ64OAfYB4zdD7iVj4FF4+jzFZ3ehO51UjzwMGnC1Y3LK7kxouEfOu6gaKU
	 tzWR1Dbt9Qatg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 4/8] ARM: dts: mstar: unitv2: Link cpu to core regulator
Reply-To: sashiko-reviews@lists.linux.dev
To: "Daniel Palmer" <daniel@thingy.jp>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260713105950.1346962-5-daniel@thingy.jp>
References: <20260713105950.1346962-1-daniel@thingy.jp>
 <20260713105950.1346962-5-daniel@thingy.jp>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 13 Jul 2026 11:07:42 +0000
Message-Id: <20260713110743.2348B1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-325441-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:daniel@thingy.jp,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,0x0f.com:email,smtp.kernel.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 089F674A27C

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Incomplete hardware description: `cpu-supply` is omitted for `cpu1`=
 on a dual-core SoC.
--

--- Patch [4]: [PATCH 4/8] ARM: dts: mstar: unitv2: Link cpu to core regula=
tor ---
commit 15b5fb30c26091d181dfb33beb3faccbf6865c52
Author: Daniel Palmer <daniel@0x0f.com>

ARM: dts: mstar: unitv2: Link cpu to core regulator

This commit adds a reference to the core voltage regulator as the CPU
supply, ensuring the regulator is correctly described as feeding the CPU.

> diff --git a/arch/arm/boot/dts/sigmastar/mstar-infinity2m-ssd202d-unitv2.=
dts b/arch/arm/boot/dts/sigmastar/mstar-infinity2m-ssd202d-unitv2.dts
> --- a/arch/arm/boot/dts/sigmastar/mstar-infinity2m-ssd202d-unitv2.dts
> +++ b/arch/arm/boot/dts/sigmastar/mstar-infinity2m-ssd202d-unitv2.dts

[ ... ]

> @@ -85,6 +85,10 @@ reg_vcc_wifi: regulator-vcc-wifi {
>  	};
>  };
> =20
> +&cpu0 {
> +	cpu-supply =3D <&reg_vcc_core>;
> +};
> +

[Severity: Low]
Since the SSD202D is a dual-core SoC and both Cortex-A7 cores share the same
physical voltage domain fed by reg_vcc_core, should there also be a matching
cpu-supply property added for &cpu1?

While the cpufreq-dt driver might infer the shared supply via the opp-shared
property when processing cpu0, would adding it for cpu1 provide a more
complete OS-agnostic hardware description for the device tree?

>  &pm_uart {
>  	status =3D "okay";
>  };

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260713105950.1346=
962-1-daniel@thingy.jp?part=3D4


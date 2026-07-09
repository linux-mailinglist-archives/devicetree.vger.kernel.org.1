Return-Path: <devicetree+bounces-323255-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9Jt4NNrzTmo0XgIAu9opvQ
	(envelope-from <devicetree+bounces-323255-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 03:05:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 444AC72B894
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 03:05:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=G92lW6wH;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323255-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-323255-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3A3EC302EAAC
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 01:02:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04F1D38656C;
	Thu,  9 Jul 2026 01:02:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7D573612FE
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 01:02:12 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783558933; cv=none; b=eLbEc9MPRE6ouT+6QqX8LFk7CdPe8s8vNLtd8g/Ez5LYqev/fl3VFAhWKJEKoiu9SI2PNeOLasf71k2yYejHRQAg8JBtwvG/Sss/oKIfdGrGui4xI8vczxxTWqqrsTNa0HKWV1itCFKKzXguwhxuBeVCs1Yiptj1ojNQ7/Jj+rQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783558933; c=relaxed/simple;
	bh=vgc6bChoJEv8+j1nBt63NiI/+BNM6Ny6yhqwx0Uh5wU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Lhq/mhlQkC+NhNR0UZS3kW2cmwCko2ve8U5x/jf9b3/lVYCoiyzCinmZ1GSzLXfhwRQcxNjOuHERQAaNTZOdsmvGURp87oMyfioKkImrvWOAGx9OA1cN1lQpkepHn5afIpiIqx/ehVVsRIVOoxySiBGrv5NiDE/VRkqKMGIjKeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G92lW6wH; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3D7C41F000E9;
	Thu,  9 Jul 2026 01:02:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783558932;
	bh=PVc6/Lecgx8lpMGW8KqX8JAW6CeU7CmbJF1zzJ/MCsU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=G92lW6wHp1tDT5qGcEUXho/0LncyJa3s0dNgVamxgyFO4KHN84yYqTxPT5fcxG3Eb
	 es94w/tZ0OsJQHt39BARc+j9SLCYAs4icV0iHF0uDhSIyd+mTCDzY9rjrkF51Tx77b
	 Fj8il0d4+1dfuwwUZ9h38Za9bh29Z00R3d/UsrEyt8cQMq9BKj7DsWsota3kbOo7vF
	 60eK1XQMVMyBLBJky1PrXwxhxsFoQ36GE1EyaLjRJZXzV0WQGfTJm9F3QI94ZhQbLc
	 Z4iOLD/3sFDhNpEyhfRS58imEpVvbmF9QEMwczy6ItCn7SLTBhKEM9COdQKcZfVqZD
	 /gJN/PEMP2TzQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCHv2 3/3] ARM: dts: helios4: add SATA regulator supplies
Reply-To: sashiko-reviews@lists.linux.dev
To: "Rosen Penev" <rosenp@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260709005005.1587852-4-rosenp@gmail.com>
References: <20260709005005.1587852-1-rosenp@gmail.com>
 <20260709005005.1587852-4-rosenp@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 01:02:11 +0000
Message-Id: <20260709010212.3D7C41F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-323255-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:rosenp@gmail.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,smtp.kernel.org:mid,sashiko.dev:url,vger.kernel.org:from_smtp,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 444AC72B894

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] The struct device reference acquired by of_find_device_by_node() i=
s never released, causing a memory leak.
--

--- Patch [1]: [PATCHv2 3/3] ARM: dts: helios4: add SATA regulator supplies=
 ---
commit 737d149c64d97348e97b79fed6b2378d4f1a140f
Author: Rosen Penev <rosenp@gmail.com>

ARM: dts: helios4: add SATA regulator supplies

The ahci-mvebu driver and libahci_platform request three supplies
on SATA controller and port nodes to avoid regulator core boot notices.
The SATA controller and PHY are powered by the 3.3V I/O rail, while the
four disk bays are powered by the 5V HDD rail.

> diff --git a/arch/arm/boot/dts/marvell/armada-388-helios4.dts b/arch/arm/=
boot/dts/marvell/armada-388-helios4.dts
> index ec134e22bae3e..af1e81638f829 100644
> --- a/arch/arm/boot/dts/marvell/armada-388-helios4.dts
> +++ b/arch/arm/boot/dts/marvell/armada-388-helios4.dts
> @@ -217,13 +217,17 @@ sata@a8000 {
>  				status =3D "okay";
>  				#address-cells =3D <1>;
>  				#size-cells =3D <0>;
> +				ahci-supply =3D <&reg_3p3v>;
> +				phy-supply =3D <&reg_3p3v>;
> =20
>  				sata0: sata-port@0 {
>  					reg =3D <0>;
> +					target-supply =3D <&reg_5p0v_hdd>;

[Severity: High]
This is a pre-existing issue and was not introduced by this patch, but does=
n't
adding these supplies increase the chance of memory leaks during probe
deferrals?

In drivers/ata/libahci_platform.c:ahci_platform_get_resources(), the device
reference acquired by of_find_device_by_node() is never released:

			port_dev =3D of_find_device_by_node(child);

			if (port_dev) {
				rc =3D ahci_platform_get_regulator(hpriv, port,
								&port_dev->dev);
				if (rc =3D=3D -EPROBE_DEFER)
					goto err_out;
			}

If the newly added target-supply regulators return -EPROBE_DEFER, the probe
fails and is retried. This unconditionally leaks a struct platform_device
reference on every retry because put_device() is never called for port_dev.

>  				};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709005005.1587=
852-4-rosenp@gmail.com?part=3D1


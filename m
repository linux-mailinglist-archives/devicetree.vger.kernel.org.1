Return-Path: <devicetree+bounces-303188-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ONM+H74/FmpMjwcAu9opvQ
	(envelope-from <devicetree+bounces-303188-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 02:50:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D0F315DE0DC
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 02:50:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 94347302AC14
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 00:50:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 181981A681C;
	Wed, 27 May 2026 00:50:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="miVHJqBL"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C37EA288D0
	for <devicetree@vger.kernel.org>; Wed, 27 May 2026 00:50:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779843004; cv=none; b=Hu5C7dfGsLiCcqo56Q03rT2Brc8CnAwuaWtcXf4VQE/EGCjeoL1OHFjFC4Z/XTeMN73nFwSqUDlAPe09j5lFcc1eULAnHeVhxQ7P0FpFJtPYzlOuFxeGFuRPDLdMUVwICoZ9CDc53ZjEawqRy6xYbOkneIop+YrTLdqYlCvDyQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779843004; c=relaxed/simple;
	bh=ce0yjqMv4COw48D5+OEIAz6uIeowog+dKuy1z6kwP8U=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=H5RbcXt7VKyQdZfrk3sYsXndz6OLnF6zvNeWnsB86PdoFeMUA7f611wGKUUosHo0X0fhoTftOYD30Mu+514AIZ/4v9LkOKmN9tgoiicY54QCwjr9ANpJOV81lwa0mwBL881a5lHIbvctuqqnENNDU5LRhXE9NccTXYTtDWjCycc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=miVHJqBL; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 439FD1F000E9;
	Wed, 27 May 2026 00:50:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779843002;
	bh=5c7sfKRLViQypIQL5h6H6accNKuGiItFxMq82Qph+C0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=miVHJqBLfTwtF6y5gwaHj3K1uBlgmCa75j//EQYh1AfXjRYtf5B1z3qpOokLcC/05
	 1L5fQQNeXvRsYAk121YoojNBCVAYIJ2FQDCGPJJ+xBo6wgy4thBiwUxjS4Vup7CKwB
	 aW7qvcloyp/Iw55Ro8FKBATWIEPyhO86qmDxKXRD7TdI1RuNYT5szn/gXu1Pvr1b1W
	 qJIiLfjkpg8bV+aaRao8/3utmghMth+atPIeticM8bcU5ZA49GK8gZ3MuQnATD121v
	 oQq4E4wyWW9p6Iy6n6yV7za2/h21oWIX0yQVwHLP8BLLcLTVbEC04J68kDaQ+ol+Cl
	 Oy3hAuzQCEyWQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 3/3] arm64: defconfig: Enable drivers for BeagleBadge
Reply-To: sashiko-reviews@lists.linux.dev
To: "Judith Mendez" <jm@ti.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260526235417.1326187-4-jm@ti.com>
References: <20260526235417.1326187-4-jm@ti.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 27 May 2026 00:50:01 +0000
Message-Id: <20260527005002.439FD1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-303188-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url,lists.linux.dev:replyto,beagleboard.org:url]
X-Rspamd-Queue-Id: D0F315DE0DC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] The sht4x hwmon driver registers sysfs attributes outside the core=
 hwmon locking but fails to implement its own locks, leading to race condit=
ions on driver state and I2C communications.
--

commit f3062b5d533df41f751a64a30b3c9b20072c21e4
Author: Judith Mendez <jm@ti.com>

arm64: defconfig: Enable drivers for BeagleBadge

This commit enables drivers used on the BeagleBadge as modules in the
arm64 defconfig. This includes drivers for the LED PWM Multicolor,
MCP SPI IO Expander, Seven Segment display GPIO, and Temperature Sensor.

Link: https://www.beagleboard.org/boards/beaglebadge

> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index d905a0777f939..5cfb7f6f2ae78 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig

[ ... ]

> @@ -766,6 +767,7 @@ CONFIG_SENSORS_LM90=3Dm
>  CONFIG_SENSORS_PWM_FAN=3Dm
>  CONFIG_SENSORS_RASPBERRYPI_HWMON=3Dm
>  CONFIG_SENSORS_SL28CPLD=3Dm
> +CONFIG_SENSORS_SHT4x=3Dm
[Severity: High]
This is a pre-existing issue, but does the sht4x driver lack locking for
its sysfs attributes?

The hardware monitoring subsystem guidelines state that drivers must
implement their own locking for attributes registered outside the core,
such as those in extra_groups. The sht4x driver registers heater attributes
like heater_enable via extra_groups but does not appear to provide locking.

If a write to heater_enable occurs during the usleep_range() of a
temperature read:

sht4x_read_values() {
    ret =3D i2c_master_send(client, cmd, SHT4X_CMD_LEN);
    ...
    usleep_range(SHT4X_MEAS_DELAY_HPM, ...);
    ...
    ret =3D i2c_master_recv(client, raw_data, SHT4X_RESPONSE_LENGTH);
}

Concurrent with a write to the heater:

heater_enable_store() {
    ret =3D i2c_master_send(data->client, &cmd, SHT4X_CMD_LEN);
    ...
    data->heating_complete =3D jiffies + msecs_to_jiffies(heating_time_boun=
d);
    data->data_pending =3D true;
}

Could this interleave I2C traffic and cause the subsequent
i2c_master_recv() to read the wrong response or abort the measurement?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260526235417.1326=
187-1-jm@ti.com?part=3D3


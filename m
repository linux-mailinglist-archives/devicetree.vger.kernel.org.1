Return-Path: <devicetree+bounces-325024-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id dmJoGQZkU2r5aQMAu9opvQ
	(envelope-from <devicetree+bounces-325024-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 11:53:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C872274451F
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 11:53:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=e2OnnNkb;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325024-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325024-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B1022300D605
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 09:53:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8CE0373BEE;
	Sun, 12 Jul 2026 09:53:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AFB82F39B5
	for <devicetree@vger.kernel.org>; Sun, 12 Jul 2026 09:53:06 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783849987; cv=none; b=GZOdOwXYCDI06jWm6AMMEsD5gjE61+u1l5vRJSIaEbRT44LLS2fH+FY1bspHeS5S5pXxwuz8y4YMwLV/lTdpC1FtBsifvwU+C1s/D2apwzf0NbpabSREFLbXk6LLqkP9j/fgNgT2QjEkAsQBGhRuvrrJTO6uKjjFS2Fs3nUUKcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783849987; c=relaxed/simple;
	bh=oYwcdM+FW7H4Ym9GEN20MESRtKTVs/HAvOI0waX8Ktg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=TRVKC4lYpP2ntDUezhzuT1kvfB838HcdxQ2L/dzJjLo4hgEOS/seWcriEBLDxRbybMegjjKr6rEyrEQ3vR2e6RyzfIeU2kKLqEGyDqXV5lC0H4PzrUtc0BXSnG2EE4z7kf3e9gPTW8lGhCXBN3fnxxzBMcQcQgNRn5A1ENe9ZMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e2OnnNkb; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 011D21F000E9;
	Sun, 12 Jul 2026 09:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783849986;
	bh=M4pmzuZiQ2iGlTf1I5rCLAUvTv4hVD9Fig0TepluapI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=e2OnnNkbkEV5n0g9jAPj0HmTP1azHWgvOcRpkigrP+oZY6a3tp4Lr9KHVY1bj7Aiz
	 V9OomAJ76fvXIZyH1NvZpaVFj5h6E56B9kueIrJNIqEQvcrpFuuVlAlcxvhzsj4KO2
	 Ja7+L9PWPfFdTOw2iVqWJKO6g4qeCuh6n0K4d/ZV2DIyCL5u6H5HdsJAnNC2GHwuvy
	 2S0HFJ03b4+WDqwu4ZTZFQWHeAmY8BSOUGja06o3PiUkohe2TRWNE6Oqsf3J6m8SCU
	 1CD52ReeVLYrrLx40aKq8E7s+5DFWTVRvqD2pdomRMSwkHvS8wM3ePjxPP2nxcPFZx
	 ccqQsC5+pOSFg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 01/12] arm64: dts: apple: t8112: Add SMC hwmon node
Reply-To: sashiko-reviews@lists.linux.dev
To: "James Calligeros" <jcalligeros99@gmail.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260712-smc-subdev-dt-v1-1-7763006d57c7@gmail.com>
References: <20260712-smc-subdev-dt-v1-0-7763006d57c7@gmail.com>
 <20260712-smc-subdev-dt-v1-1-7763006d57c7@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 12 Jul 2026 09:53:05 +0000
Message-Id: <20260712095306.011D21F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-325024-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:jcalligeros99@gmail.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,lists.linux.dev:replyto,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C872274451F

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Adding an unconditionally enabled `smc_hwmon` node without child=
 sensors triggers a spurious `dev_err` on boot on all T8112 platforms.
--

--- Patch [1]: [PATCH 01/12] arm64: dts: apple: t8112: Add SMC hwmon node -=
--
commit 98dce99825d4d377b6a5ac4bb63591402516eb04
Author: James Calligeros <jcalligeros99@gmail.com>

arm64: dts: apple: t8112: Add SMC hwmon node

This commit adds the SMC hwmon subdevice node to the Apple T8112 device tre=
e.

> diff --git a/arch/arm64/boot/dts/apple/t8112.dtsi b/arch/arm64/boot/dts/a=
pple/t8112.dtsi
> index 85c47422d4e8e..a3241c816c26b 100644
> --- a/arch/arm64/boot/dts/apple/t8112.dtsi
> +++ b/arch/arm64/boot/dts/apple/t8112.dtsi
> @@ -921,6 +921,10 @@ smc_reboot: reboot {
>  					"boot_error_count", "panic_count";
>  			};
> =20
> +			smc_hwmon: hwmon {
> +				compatible =3D "apple,smc-hwmon";
> +			};
> +

[Severity: Medium]
Will this unconditionally enabled node trigger a spurious error on boot?

Because this node is added without any child sensors and lacks a
status =3D "disabled" property, the SMC MFD core will instantiate the
macsmc-hwmon platform device.

When the probe function runs, it won't find any sensors, and will print an
error message to the kernel log before returning -ENODEV:

drivers/hwmon/macsmc-hwmon.c:macsmc_hwmon_probe() {
    ...
	if (!hwmon->curr.count && !hwmon->fan.count &&
	    !hwmon->power.count && !hwmon->temp.count &&
	    !hwmon->volt.count) {
		dev_err(hwmon->dev,
			"No valid sensors found of any supported type\n");
		return -ENODEV;
	}
    ...
}

Should this node be added with status =3D "disabled" to prevent the
macsmc-hwmon driver from probing and polluting dmesg on platforms
without sensors?

>  			rtc {
>  				compatible =3D "apple,smc-rtc";
>  				nvmem-cells =3D <&rtc_offset>;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260712-smc-subdev=
-dt-v1-0-7763006d57c7@gmail.com?part=3D1


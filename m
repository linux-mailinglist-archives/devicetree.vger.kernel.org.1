Return-Path: <devicetree+bounces-310738-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1wRNJL62K2qNCgQAu9opvQ
	(envelope-from <devicetree+bounces-310738-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 09:35:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 86B6767745D
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 09:35:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=RRW9ptBS;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310738-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-310738-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E75E63007AEF
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 07:35:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C1253DD866;
	Fri, 12 Jun 2026 07:35:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 023B13D648A
	for <devicetree@vger.kernel.org>; Fri, 12 Jun 2026 07:35:09 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781249711; cv=none; b=OcagXaH6g05Ir4IPWL1A+g51rg7tJs4Up1SLYME+hFKIhR1tCkkVbimkveHoFebFlPgIxZ9Ow0pp9oG8QJTu65Q9KwxbHyDz6JOVRBpwEycB81S/8QIZFJrF33y+nll5yeLT03UAZJuO4QBYmlS6EsKjh3PR5z3pD8uyRhz2TL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781249711; c=relaxed/simple;
	bh=yTi4xoeNLv4HCtFs8ddppMVnAC97Xqg9a9YnVmtQmFQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=H1oehw93Bn091YeO98H3o5jGM3ZGc77MRFGqrAFeGjP6vAlqMcG5K+PeCNsVU82U2iwoeTdqOLq+q6qh0vwDxuP8QdgVJMrHNK+OuVek7CFRE/3H4ezPIluzYNXuiD34xw94oGPLpYnRF9zSJHV2v9gam0Et5yIpUogGGw3YgeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RRW9ptBS; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 64CEE1F000E9;
	Fri, 12 Jun 2026 07:35:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781249709;
	bh=59osaEr4Bd/zo4prh1RU77wzZTgUcUQEgVofCmWAREg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=RRW9ptBSRNho5FQCImU9LgJ6Cy9gEBm7MGIUsmSnoVyazXJ70xfyzf+hS2YZMP36P
	 K8A4IhNPQTMuMmKsj8bHIq/M4zDp2LL0WM8+uDxZ2CRKSc5pGviJsfe3nn9G1e+UDE
	 gX87o80pOKTqFnUUD/bXHyub01EFKmWdEjEBqenmXkbqdedOlesK8QDAUBds3kbhoL
	 XBZis56iMfOStIZofl4q7fDKYBItaRvvaRSDB3bkAo0VqYFPlX/D9fJowUCmdgHUH0
	 083siSjvrJ6wAZ37tM2W+S4rx5MqOrtDcD/QlCSUHXCYtDu4rHpf0hW5maqI8+XWh1
	 oXMl5UkmwEL5Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/1] ARM: dts: aspeed: g6: Add AST2600 pwm tacho
 controller
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?R3LDqWdvaXJlIExheWV0?= <gregoire.layet@9elements.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260612072341.278591-1-gregoire.layet@9elements.com>
References: <20260612072341.278591-1-gregoire.layet@9elements.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 12 Jun 2026 07:35:09 +0000
Message-Id: <20260612073509.64CEE1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-310738-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:gregoire.layet@9elements.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 86B6767745D

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:

Pre-existing issues:
- [Critical] The driver's RPM calculation function does not guard against a=
 zero tachometer value, potentially causing a kernel panic via divide-by-ze=
ro.
- [High] The driver incorrectly shares a single `tach_divisor` variable acr=
oss all 16 independent fan channels, leading to incorrect RPM calculations.
- [High] If any child fan node fails to parse, the driver silently aborts i=
nitialization but returns success from probe, skipping hwmon registration e=
ntirely.
--

commit 557da8ba2550852a62a5729f5acc74635465209e
Author: Gr=C3=A9goire Layet <gregoire.layet@9elements.com>

ARM: dts: aspeed: g6: Add AST2600 pwm tacho controller

This patch adds the device tree node for the AST2600 PWM tachometer
controller, placed according to bus address ordering. It enables the use of
the existing ast2600-pwm-tach driver.

> diff --git a/arch/arm/boot/dts/aspeed/aspeed-g6.dtsi b/arch/arm/boot/dts/=
aspeed/aspeed-g6.dtsi
> index 189bc3bbb47c9..818d486b94ac7 100644
> --- a/arch/arm/boot/dts/aspeed/aspeed-g6.dtsi
> +++ b/arch/arm/boot/dts/aspeed/aspeed-g6.dtsi
> @@ -102,6 +102,15 @@ ahbc: bus@1e600000 {
>  			reg =3D <0x1e600000 0x100>;
>  		};
> =20
> +		pwm_tach: pwm-tach-controller@1e610000 {
> +			compatible =3D "aspeed,ast2600-pwm-tach";

[Severity: Critical]
This isn't a bug introduced by this patch, but since this newly added node
enables the use of the ast2600-pwm-tach driver, could the driver trigger a
divide-by-zero panic?

In drivers/hwmon/aspeed-g6-pwm-tach.c:aspeed_get_fan_tach_ch_rpm(), the
hardware status register is read and its raw value is passed to the RPM
calculation function without verifying it is non-zero:

    val =3D FIELD_GET(TACH_ASPEED_VALUE_MASK, val);
    return aspeed_tach_val_to_rpm(priv, val);

If the hardware reports 0, tach_div evaluates to 0 in
aspeed_tach_val_to_rpm():

    tach_div =3D tach_val * priv->tach_divisor * DEFAULT_FAN_PULSE_PR;
    ...
    rpm =3D (u64)priv->clk_rate * 60;
    do_div(rpm, tach_div);

Since this evaluates to 0 and is directly passed to do_div() without any
checks, will this result in a kernel panic?

[Severity: High]
This is another pre-existing issue in the driver enabled by this node, but
does the driver incorrectly share a single tach_divisor variable across all=
 16
independent fan channels?

In drivers/hwmon/aspeed-g6-pwm-tach.c:aspeed_tach_hwmon_write(), updating a
channel's divisor blindly overwrites the global state variable:

    priv->tach_divisor =3D val;

When calculating RPM for any channel in aspeed_tach_val_to_rpm(), it uses t=
his
global divisor instead of retrieving the per-channel hardware configuration:

    tach_div =3D tach_val * priv->tach_divisor * DEFAULT_FAN_PULSE_PR;

Will this corrupt the RPM calculations for all other fan channels if a new
divisor is written to a specific channel?

[Severity: High]
This is also a pre-existing issue, but does the probe function silently abo=
rt
initialization on child node parsing failure?

In drivers/hwmon/aspeed-g6-pwm-tach.c:aspeed_pwm_tach_probe():

    if (ret) {
        dev_warn(dev, "Failed to create fan %d", ret);
        return 0;
    }

This early return with a 0 (success) code inappropriately exits the probe
function, completely skipping crucial device registration steps like
devm_hwmon_device_register_with_info().

Should the driver either propagate the error or continue to skip the malfor=
med
node instead of aborting hwmon registration entirely?

> +			reg =3D <0x1e610000 0x100>;
> +			clocks =3D <&syscon ASPEED_CLK_AHB>;
> +			resets =3D <&syscon ASPEED_RESET_PWM>;
> +			#pwm-cells =3D <3>;
> +			status =3D "disabled";
> +		};
> +
>  		fmc: spi@1e620000 {
>  			reg =3D <0x1e620000 0xc4>, <0x20000000 0x10000000>;
>  			#address-cells =3D <1>;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260612072341.2785=
91-1-gregoire.layet@9elements.com?part=3D1


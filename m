Return-Path: <devicetree+bounces-322732-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id luVrIP8rTmolEgIAu9opvQ
	(envelope-from <devicetree+bounces-322732-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 12:52:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id E8460724899
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 12:52:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=aLFptjvA;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322732-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-322732-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7EF11302DCC6
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 10:51:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B92943C077;
	Wed,  8 Jul 2026 10:48:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1ED3F4DE7
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 10:48:40 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783507725; cv=none; b=oTjow2ZHDpEdBBMiaWCtBMUWKXQXmGV2eRI8wLJgZEt+y+bOsvU9Fi6ZskGm16xZGuufo/EkyP7ynQx5e2Gx6Vaty99j74Mbp3XB63bRSf0VoHexOphb0qU7vKd/Nm0w6oGbW8x0nJdMmyTA9ebp4I/Up60kSyF2TxYogwUSu6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783507725; c=relaxed/simple;
	bh=+yMZv9+ViNOR07Kj4Y+g+iNLg/v3yzXABha/48/kzz4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Z8Ex4ZTLYDDcxEE+0pD7g8mHSMiUCgJ6QJRkhVe8+ZrmX8jEJIYIzns56u2RE3B2//7bWgHL1GO0tYO/+YFp4JXirWvDxm2F4kAmqdWtKoKodfmsEtNWPUcA2o62iyXMqvRQpigx7t300hkdtUGatl+qKOGZ2RSqGzXU/wDyvaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aLFptjvA; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B884A1F00A3A;
	Wed,  8 Jul 2026 10:48:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783507719;
	bh=o4So7Cf7kYzIH9Z/gJk/m0AVk6AkVNYXfnVjBlj2KBQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=aLFptjvA3gXlczH+v38u/vpMGl/inUzloo+w/yfYWnOa6iDo+IcN7c69lAqi5m6+M
	 j8Hmj7ncHoQlaGufDgyldwroxO9Rrqxh1hfWF/rpHAYhr3tEieqiiQG4rSfWY8YEm6
	 WIgZtg/P1/aRwhcxNKau6kMWGs7u/7krjN3+4fmCCXlVOXL84NB9B4hfZYgK6nebVr
	 oXZ6b2TWxLA9910dJZnpleLKXBeG8A7ToCxRzPxArGP3qSRhq0NJk5Owni21X5OA0v
	 ZZRjs+AHOFo0DQVXHH3GnrZUtt4iRMKsB4szrMCo/1wPXQ38ujmj2XnR1cH26oisOU
	 zkLoyyNI8jDLA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 2/3] arm64: dts: nuvoton: ma35d1: add USB controllers
 and dual-port PHY node
Reply-To: sashiko-reviews@lists.linux.dev
To: "Joey Lu" <a0987203069@gmail.com>
Cc: devicetree@vger.kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org, robh@kernel.org, linux-phy@lists.infradead.org, conor+dt@kernel.org, vkoul@kernel.org
In-Reply-To: <20260708103606.1462960-3-a0987203069@gmail.com>
References: <20260708103606.1462960-1-a0987203069@gmail.com>
 <20260708103606.1462960-3-a0987203069@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jul 2026 10:48:38 +0000
Message-Id: <20260708104838.B884A1F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-322732-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:a0987203069@gmail.com,m:devicetree@vger.kernel.org,m:olteanv@gmail.com,m:neil.armstrong@linaro.org,m:robh@kernel.org,m:linux-phy@lists.infradead.org,m:conor+dt@kernel.org,m:vkoul@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,linaro.org,kernel.org,lists.infradead.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sashiko.dev:url,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E8460724899

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The DT changes add dual-port USB PHY support but the underlying PH=
Y driver only supports a single port, breaking USB port 1.
--

--- Patch [2]: [PATCH v3 2/3] arm64: dts: nuvoton: ma35d1: add USB controll=
ers and dual-port PHY node ---
commit ae86165665a697c5181c72ed4e3f8f74bcf0beed
Author: Joey Lu <a0987203069@gmail.com>

arm64: dts: nuvoton: ma35d1: add USB controllers and dual-port PHY node

This commit adds USB controller (DWC2, EHCI, OHCI) and dual-port PHY nodes
to the ma35d1 device tree. It also adds pin control configurations for the
HSUSB signals to the ma35d1-iot-512m and ma35d1-som-256m board files.

> diff --git a/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi b/arch/arm64/boot/dt=
s/nuvoton/ma35d1.dtsi
> --- a/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi
> +++ b/arch/arm64/boot/dts/nuvoton/ma35d1.dtsi
[ ... ]
> @@ -88,6 +88,14 @@ sys: system-management@40460000 {
>  			#reset-cells =3D <1>;
>  		};
> =20
> +		usb_phy: usb-phy {
> +			compatible =3D "nuvoton,ma35d1-usb2-phy";
> +			clocks =3D <&clk HUSBH0_GATE>;
> +			nuvoton,sys =3D <&sys>;
> +			#phy-cells =3D <1>;
> +			status =3D "disabled";
> +		};
> +
[ ... ]
> +		ehci1: usb@401c0000 {
> +			compatible =3D "generic-ehci";
> +			reg =3D <0x0 0x401c0000 0x0 0x1000>;
> +			interrupts =3D <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks =3D <&clk HUSBH1_GATE>;
> +			phys =3D <&usb_phy 1>;
[Severity: High]
Is the ma35d1 USB PHY driver fully capable of supporting dual ports?

Looking at ma35_usb_phy_probe() in drivers/phy/nuvoton/phy-ma35d1-usb2.c,
it registers the provider with of_phy_simple_xlate, which ignores the index
in `<&usb_phy 1>` and unconditionally returns the first PHY instance.

Furthermore, ma35_usb_phy_power_on() hardcodes the power-on routine
to PHY0:

drivers/phy/nuvoton/phy-ma35d1-usb2.c:ma35_usb_phy_power_on() {
    ...
    regmap_update_bits(p_phy->sysreg, MA35_SYS_REG_USBPMISCR, 0x7, (PHY0POR=
 | PHY0SUSPEND));
    ...
}

Will this cause port 1 to fail to initialize since the driver will
incorrectly share PHY0's refcount and leave PHY1 completely uninitialized?

> +			phy-names =3D "usb";
> +			companion =3D <&ohci1>;
> +			status =3D "disabled";
> +		};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260708103606.1462=
960-1-a0987203069@gmail.com?part=3D2


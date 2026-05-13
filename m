Return-Path: <devicetree+bounces-296547-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kDoNEBDIA2qh+gEAu9opvQ
	(envelope-from <devicetree+bounces-296547-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 02:38:40 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A62A52B964
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 02:38:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2BCE4302BA5B
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 00:38:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 852BC1D798E;
	Wed, 13 May 2026 00:38:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IqzjhkqY"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60B9529408;
	Wed, 13 May 2026 00:38:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778632716; cv=none; b=ljQNHrKFqsMaZyeNL8JpgTskyw+jyeYPhTE6eMI5PA4x616mlYlBvQIxGuTXLNgLg4L8oFYwgfMmHxWNBR60rrNIrLHrMnV/jwXihBwL80iAnqAiIQh37ZGMpu3COtUWhgEZjcZy1+ziTrDph/Z50bU5rb7SIJ/Sx2Qe/bBwSMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778632716; c=relaxed/simple;
	bh=yWYfOBMDuiH7DiV7DAbCJw8Ew2Ma9AQ6OS/bGgdcIsQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=fyjRk7CJ+aV9BXLEHx287HLhX5uJy3vCBUbzGqgEDGuNjScQPZZTY6cX8xk2ubM1eenHBCvRZ05BwpQ/k8iSihY0I4qwyqKvodIA9jskCrls7wF9kL0rLrqsOMSl0uonEErhCvLRmZtoeLJe7s9uerD2EQjQy9xrjVBxE61A8SE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IqzjhkqY; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A8C00C2BCB0;
	Wed, 13 May 2026 00:38:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778632716;
	bh=yWYfOBMDuiH7DiV7DAbCJw8Ew2Ma9AQ6OS/bGgdcIsQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=IqzjhkqYHo4jjoy0WeS0A7nwyX2FcktM8WfxvpKEQ+AYIAHVNQpODkfqgPKAtos3S
	 wjXjTNZmkm5+netIgEMbT8XlPOSSTXGvtdLC3TORx19/MhdtQ9M557tiEitjWDUjIP
	 Bs23YpHxfJaYuY3o1VucOldbV4xqmo+zw/VWywSzGRHlYX1RvaJNUQbzGTYzgJBwmB
	 ujdr7s0gAI7l5GvctQy5Ul8wwHXgsa0aitbpAShc7SlnJN1c+FutG0LYXlugCnB2IB
	 dNF1QfLeMJ+7uwfdXCl23UrUh5ttL8JpWncrGBzQ3sHpP393BIArnU6YCYCKUHxfQL
	 gylrYLRvTvAmw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/4] ARM: dts: imx: add ti,deskew = <0> for ti,tfp410
Reply-To: sashiko-reviews@lists.linux.dev
To: "Frank Li" <Frank.Li@nxp.com>
Cc: krzk+dt@kernel.org, Frank.Li@kernel.org, imx@lists.linux.dev, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260511-b4-imx25_dts_simple_warning-v1-2-01b855a5ce25@nxp.com>
References: <20260511-b4-imx25_dts_simple_warning-v1-2-01b855a5ce25@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 13 May 2026 00:38:35 +0000
Message-Id: <20260513003835.A8C00C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 8A62A52B964
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-296547-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,smtp.kernel.org:mid,sashiko.dev:url]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Hardcoding incorrect hardware description based on a software dr=
iver bug
--

commit e68637a2ada078494e7ee776597edfdccd03a72c
Author: Frank Li <Frank.Li@nxp.com>

ARM: dts: imx: add ti,deskew =3D <0> for ti,tfp410

This commit adds the required ti,deskew property to ti,tfp410 nodes
to fix dt_binding_check warnings. The value 0 is chosen based on the
default value found in the driver.

>     Add required proprety ti,deskew for ti,tfp410, which have not defined

This isn't a bug, but there's a typo (proprety) in the commit message.

>     default value in yaml. 0 is default value according to
>     drivers/gpu/drm/bridge/ti-tfp410.c.

Does this accurately describe the hardware, or is it mirroring a driver
bug?

Device Tree properties are intended to describe the physical hardware
configuration, rather than reflecting software driver fallbacks.

> diff --git a/arch/arm/boot/dts/nxp/imx/imx51-babbage.dts b/arch/arm/boot/=
dts/nxp/imx/imx51-babbage.dts
> index b17264e06e691..a02e9cd0b3fa0 100644
> --- a/arch/arm/boot/dts/nxp/imx/imx51-babbage.dts
> +++ b/arch/arm/boot/dts/nxp/imx/imx51-babbage.dts
> @@ -126,6 +126,7 @@ dvi_connector_in: endpoint {
> =20
>  	dvi-encoder {
>  		compatible =3D "ti,tfp410";
> +		ti,deskew =3D <0>;

The driver fallback of 0 appears to be a bug introduced in 2020 by commit
"drm/bridge: tfp410: fix de-skew value retrieval from DT". That commit
changed the ti,deskew scale from -4..3 to 0..7 but did not update the
fallback value from 0 to 4.

As a result, missing properties inadvertently apply maximum negative skew
instead of neutral skew.

By copying this fallback into the device trees, does this permanently
enshrine maximum negative skew into the hardware description?=20

If the driver is later fixed to use the correct neutral default, these
boards will still apply maximum negative skew.

Should the physical board schematics be consulted to determine the actual
DK[3:1] pin strapping instead? If the pins are strapped for neutral skew,
the value should likely be <4>.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260511-b4-imx25_d=
ts_simple_warning-v1-0-01b855a5ce25@nxp.com?part=3D2


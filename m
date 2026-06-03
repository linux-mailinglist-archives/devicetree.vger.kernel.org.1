Return-Path: <devicetree+bounces-306131-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 17BcGmL8H2p1tgAAu9opvQ
	(envelope-from <devicetree+bounces-306131-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 12:05:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B4A0E636666
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 12:05:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=T0wE9Zft;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306131-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306131-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 652AA3032756
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 10:00:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CC2535676E;
	Wed,  3 Jun 2026 10:00:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0ED8449EB2
	for <devicetree@vger.kernel.org>; Wed,  3 Jun 2026 10:00:08 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780480810; cv=none; b=B1t9oJ5AV/h+AfiFdqWRe3LBbryvjAAXWM91u1Kq+fX9bZ2KKaFSgnYrEczQaqJfrCyOpsvQY/sO17EMAHT91eXhZvL24dKTzQwuQeM+CDFJWppdBCrMjw7ffT6QaTKxQMR4vHqBh5YQx6eXSKcxnYWT+lAdjyB1qF+4Jx+RNxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780480810; c=relaxed/simple;
	bh=Gc3W7gnu38kBjeQxYRWqB9dtLxcsm3u2zCydK9qDpBY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=X1ccU0P434LGfmJ75vNUDoG6HJ4yK6/LIEYCp5WZX1D7DwBmPq7NDkqNcX3b/v+saty+tNRU00sTRTe3HTpuSQ4Lt8+PQVFHsYuSWgk8W0R3Keb2ViLI2t5ap1caEZz2yVLHJhWilmoVyvrFuqazk2PIViWxVwUMP0+EdzkSI7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T0wE9Zft; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2CF491F00893;
	Wed,  3 Jun 2026 10:00:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780480808;
	bh=myEbd3fjy7vndpEIDZ/HRwh1E7ChcTtNbpFn3Y7tJ7g=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=T0wE9ZftiwCs3Gu97pExD48mYXdbjQHJTLLiHtYgJn0mOyC55tkbA7P1HZLkVJFsS
	 qQqVvUxCoQZ5NXU/x5fTr8RI+bMLQUiW8FCX3yHfwugT8j9GWbhrWiFlVmvZvz4auR
	 qwRyU/53nBz6jEKPwzaAj9Xf9Elouxk+GkXa+K82iFBRSghBjWJfmTFKm3NxkpNKUX
	 v09NwNDFff8qQw3vb7AIAQf/JWYyFn4VLya+ckwW2SPqpAHHk41kv6ARZinDt1s7Cj
	 LoSzkuCaPX5KJNju2XTXICsqqA/9ZKN7Vvkco0SHyQ20fZ41s46WKP7/c67rTeY4ru
	 aRA/rRusR+gag==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/2] ASoC: dt-bindings: cirrus,cs42xx8: Add SPI bus
 support
Reply-To: sashiko-reviews@lists.linux.dev
To: chancel.liu@oss.nxp.com
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260603095041.3906558-2-chancel.liu@oss.nxp.com>
References: <20260603095041.3906558-2-chancel.liu@oss.nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 03 Jun 2026 10:00:07 +0000
Message-Id: <20260603100008.2CF491F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-306131-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:chancel.liu@oss.nxp.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B4A0E636666

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Conflicting GPIO cell counts for the '&gpio' phandle in the newly a=
dded SPI example.
--

commit f4759f9ac7c7f10e085045f8fabd1df333354abf
Author: Chancel Liu <chancel.liu@nxp.com>

ASoC: dt-bindings: cirrus,cs42xx8: Add SPI bus support

This commit adds SPI control interface support to the CS42448/CS42888 codec
bindings, which can operate at up to 6MHz. It updates the schema with SPI
properties and provides a new SPI example configuration.

> diff --git a/Documentation/devicetree/bindings/sound/cirrus,cs42xx8.yaml =
b/Documentation/devicetree/bindings/sound/cirrus,cs42xx8.yaml
> --- a/Documentation/devicetree/bindings/sound/cirrus,cs42xx8.yaml
> +++ b/Documentation/devicetree/bindings/sound/cirrus,cs42xx8.yaml

[ ... ]

> @@ -86,3 +90,22 @@ examples:
>            reset-gpios =3D <&gpio 1>;
>        };
>      };
> +
> +    spi {
> +      #address-cells =3D <1>;
> +      #size-cells =3D <0>;
> +      cs-gpios =3D <&gpio 8 0>;
> +
> +      codec@0 {
> +          compatible =3D "cirrus,cs42888";
> +          reg =3D <0>;
> +          spi-max-frequency =3D <6000000>;
> +          clocks =3D <&codec_mclk 0>;
> +          clock-names =3D "mclk";
> +          VA-supply =3D <&reg_audio>;
> +          VD-supply =3D <&reg_audio>;
> +          VLS-supply =3D <&reg_audio>;
> +          VLC-supply =3D <&reg_audio>;
> +          reset-gpios =3D <&gpio 1>;

[Severity: Low]
Will this cause a dt_binding_check failure due to a cell size mismatch?

The cs-gpios property uses 2 argument cells for the &gpio phandle, but
reset-gpios uses 1 argument cell for the exact same &gpio label.

A single device tree node can only have a single #gpio-cells value. When
dt_binding_check auto-generates a dummy node for the unresolved &gpio
reference, it will infer a #gpio-cells value that conflicts with one of
these references.=20

Should a different label (e.g., &gpio2) be used for cs-gpios, or should
reset-gpios be updated to use 2 cells?

> +      };
> +    };

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260603095041.3906=
558-1-chancel.liu@oss.nxp.com?part=3D1


Return-Path: <devicetree+bounces-295822-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oGojCURNAmrIqgEAu9opvQ
	(envelope-from <devicetree+bounces-295822-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 23:42:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 91C30516707
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 23:42:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 901933022F62
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 21:42:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BC2A3644C6;
	Mon, 11 May 2026 21:42:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TXu+AQzi"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BF774D90D7
	for <devicetree@vger.kernel.org>; Mon, 11 May 2026 21:42:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778535745; cv=none; b=dOVGHmVR6htQO8x971P1i3fe3aM73UisG2D5U1MXWpkrKtrRdl+JL+tOpl+D9qFuevqQJ978bkJWgRXI5Ft4nK5N0loBdhhFEEdc2WE5RFuqmpQZWvz+7ofj1Dd5KnjHD0rdnjzHN69RpdjgjxWy6Mvb494DJvXP98Z1RBMzhz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778535745; c=relaxed/simple;
	bh=bMgmH0cX4uqze+aH3mSr3MnSC2EmLLaqnP9xWJUrBAk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Snt36UtfUx5xxRc0F963c5sAQi1qZm8mepftT8ZY9dhHoZMsbSwhUrBRjdBPlUiWlk1fCrRHnfYerZe8vSd1Ve+3BGxHGU9TFvlVOgvqW2wDi4YZ1pLlI1+6pQ/bTS5IliqOyFu3Wj8kZWOTBxKdXa0aFKzs0iE4YYc+WewY7yY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TXu+AQzi; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 47D72C2BCB0;
	Mon, 11 May 2026 21:42:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778535744;
	bh=bMgmH0cX4uqze+aH3mSr3MnSC2EmLLaqnP9xWJUrBAk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=TXu+AQzimxrobmDD/HFg3fp6fuSD11g+SJAfwTPZYHFqdbaeqEO5+HDURZeOUh5j3
	 I0wZpdw0yTUObpqkiR2TG/4pUTkYPzGhCPLfyz+2dBCH5hprNIzc52vmPd9eujU1+5
	 UwcatnqnWVWixS+DoDE5Dilmptzoh+22FoFfFLwciu0d4MOXeDkgcLJgitVufUxNIz
	 Pswo4wrwjX0KH59r+mPJM9fbqWhFj+topoMks42sBtCGN2DdgQHsVa80ctwN6P9ink
	 Qi2Zn7JKS+rE4YDnxRXlw4XVviZizlkOZrq1tDRhtAz2bP/mN4YWPjYkHBTOE2Bbdl
	 DRKB/8e7ReBhQ==
From: sashiko-bot@kernel.org
Subject: Re: [RFC PATCH 1/2] dt-bindings: iio: magnetometer: add Melexis
 MLX90393
Reply-To: sashiko@lists.linux.dev
To: "Nikhil Gautam" <nikhilgtr@gmail.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org
In-Reply-To: <20260510191010.155380-2-nikhilgtr@gmail.com>
References: <20260510191010.155380-2-nikhilgtr@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 11 May 2026 21:42:23 +0000
Message-Id: <20260511214224.47D72C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 91C30516707
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-295822-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sashiko.dev:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,lists.linux.dev:replyto];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] The devicetree binding documents only the I2C interface for a de=
vice that supports both I2C and SPI, artificially restricting valid hardwar=
e descriptions.
- [Medium] Essential physical hardware connections, such as power supplies =
and interrupts, are omitted from the schema and actively forbidden by `addi=
tionalProperties: false`.
--

commit 8e952d4236837623faf2f1c5e7d285f977fcfe5a
Author: Nikhil Gautam <nikhilgtr@gmail.com>

dt-bindings: iio: magnetometer: add Melexis MLX90393

This commit adds devicetree bindings for the Melexis MLX90393 3-axis
magnetometer and temperature sensor. It currently documents the I2C
interface for the device.

> diff --git a/Documentation/devicetree/bindings/iio/magnetometer/melexis,m=
lx90393.yaml b/Documentation/devicetree/bindings/iio/magnetometer/melexis,m=
lx90393.yaml
> new file mode 100644
> index 0000000000000..b99629ff25855
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/magnetometer/melexis,mlx90393=
.yaml
[ ... ]
> +properties:
> +  compatible:
> +    enum:
> +      - melexis,mlx90393
> +
> +  reg:
> +    maxItems: 1

Are essential physical hardware connections, such as power supplies
(vdd-supply, vddio-supply) and optional interrupt pins missing here?

Because the schema enforces additionalProperties: false, any downstream boa=
rd
devicetree that accurately models these physical connections to regulators =
or
interrupt controllers will fail schema validation. Could these properties be
explicitly listed to permit complete hardware descriptions, even if the
current driver does not yet use them?

> +
> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false

Does this artificially restrict valid hardware descriptions by omitting the
SPI interface?

The commit message and subsequent driver commit (iio: magnetometer: add
support for Melexis MLX90393) explicitly state that the MLX90393 hardware
supports both I2C and SPI interfaces. However, the schema enforces
additionalProperties: false without referencing standard SPI properties like
spi-max-frequency.

Consequently, any valid board devicetree that connects the device via an
SPI bus will fail dtbs_check validation. Should the binding describe the
hardware component's full capabilities rather than just the limits of the
initial driver implementation?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260510191010.1553=
80-1-nikhilgtr@gmail.com?part=3D1


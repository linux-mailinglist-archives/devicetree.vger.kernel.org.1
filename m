Return-Path: <devicetree+bounces-299968-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gN9dLg0wDGpuZAUAu9opvQ
	(envelope-from <devicetree+bounces-299968-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 11:40:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D47E57B745
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 11:40:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D7CDD307558B
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 09:34:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C0123FBED9;
	Tue, 19 May 2026 09:34:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D/qeO0bc"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0956D3F0AB3
	for <devicetree@vger.kernel.org>; Tue, 19 May 2026 09:34:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779183271; cv=none; b=QBHOLd3psHxXLc2nJiQGEyIUe/zPWwvBNbEdWfVD4fqhAYQm3ixIh9/rEha1ooU8kZw9FNn96TuQee9m1yL8zIK6YYKsChV0dGLeUFAZyfW1rMRT8ha9Cgqraa9bEG4xaJM+6nzfLTOblhgRxZrScZgrXKiOud7STyI5Vn8wjrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779183271; c=relaxed/simple;
	bh=D3X4RgvDKb4wFrgJXrbkhIBIcdkVoxnPGHDaGgZVOc0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=mK4V3YeAezjSZbAw1JsLYhnjmcjayJWrTwg5gK5X6ni7fPeEk/tLEIxvtSRFgP2BXQOnIYs8tVHQRezw7+hinrP0B/kWCzZkgZLQ7LbwC2OjB5xwivT/pSs98dpuNvCJivUp4kzpVHcWRSMJzZSFb4fOd8ocuRT3m1//CdwgCZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D/qeO0bc; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2748C2BCB3;
	Tue, 19 May 2026 09:34:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779183270;
	bh=D3X4RgvDKb4wFrgJXrbkhIBIcdkVoxnPGHDaGgZVOc0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=D/qeO0bcJcGc3THBPDijUw/Nur4BvzAihFLplyGv6EsJW9Rgf64QuQuZhcClBol+K
	 zLRfPw1j4A+JuLzeL58ELkeOT2HrVX5GzWCMSMvrmo5/G6qhIi+UBNsYxSBI3VkAmn
	 BOlnlZPeA3/i2d5LGmom+Er/L9PbSCFBKlDB8ImjIh5o+4aTTEpLmp5JIbhkwLEIBl
	 ZosSzrvttxAa7TuOaKxEims3VEHcdevaZAeaprkjCvXCaJFsqswJWb3BWZOJHdy/AC
	 mXoIEnHp9vC5OoJtoSxlskPiA9RW5qNoVFet/UPyBByKdKVLeobCPUm0XXxbvdjAxs
	 p4kuI0Mze2NCg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: iio: light: add Broadcom APDS9999
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jose A. Perez de Azpillaga" <azpijr@gmail.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <12b145839a1a9c5381946a9e5237bfe6fe0ae9a7.1779181370.git.azpijr@gmail.com>
References: <12b145839a1a9c5381946a9e5237bfe6fe0ae9a7.1779181370.git.azpijr@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 May 2026 09:34:30 +0000
Message-Id: <20260519093430.B2748C2BCB3@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-299968-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,lists.linux.dev:replyto,sashiko.dev:url]
X-Rspamd-Queue-Id: 2D47E57B745
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Unnecessary schema split and contradiction regarding the vled-su=
pply property.
--

commit 16ae176ed1deb8d1509cb369a4821fa40c4b1e66
Author: Jose A. Perez de Azpillaga <azpijr@gmail.com>

dt-bindings: iio: light: add Broadcom APDS9999

This commit adds a new device tree binding for the Broadcom APDS9999 ambient
light and proximity sensor. The commit message states that a separate bindi=
ng
file is used rather than merging with the existing APDS9300 binding due to
the addition of a vled-supply property.

> A separate binding file is used rather
> than merging with avago,apds9300.yaml because the APDS9999
> has an additional vled-supply for the VCSEL.

Does the implementation match this justification?

> diff --git a/Documentation/devicetree/bindings/iio/light/brcm,apds9999.ya=
ml b/Documentation/devicetree/bindings/iio/light/brcm,apds9999.yaml
> new file mode 100644
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/light/brcm,apds9999.yaml
[ ... ]
> +properties:
[ ... ]
> +  vled-supply:
> +    description: VCSEL power supply
> +
> +  interrupts:
> +    maxItems: 1
> +
> +additionalProperties: false
> +
> +required:
> +  - compatible
> +  - reg
> +  - vdd-supply
> +
> +examples:

If the vled-supply property is the primary hardware difference that warrant=
s a
separate schema file, should it be included in the required properties list?

Alternatively, if the supply is genuinely optional, could this have been
handled with a simple conditional in the existing avago,apds9300.yaml schema
instead of splitting into a new file? The device tree binding guidelines
recommend splitting bindings into separate files only when the conditionals
become too unwieldy.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/cover.1779181370.gi=
t.azpijr@gmail.com?part=3D1


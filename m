Return-Path: <devicetree+bounces-319271-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id I6MUGKQ5RmquMAsAu9opvQ
	(envelope-from <devicetree+bounces-319271-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 12:12:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E31346F5B1D
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 12:12:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="jFr/BDZS";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319271-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319271-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1D009303DCB6
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 10:06:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2D9248B372;
	Thu,  2 Jul 2026 09:54:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B330647ECF8
	for <devicetree@vger.kernel.org>; Thu,  2 Jul 2026 09:54:47 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782986088; cv=none; b=Dbeg8BKvaXHZYm4QRbfCCSX6lMuaGUrvNyWMKSjsDrnlflg0kezqFKwjNJRRWuuoR3/MUicjxBjrmAy+37aN52E9GaYoLRjw9+NUbYjeYLINsTKSzKMTqtY4eB7YemQidnQMkMe07LGsS1lGyJYFdhThsmmjJZt9ZKkjmYB7G/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782986088; c=relaxed/simple;
	bh=e/TuqT3odxENflUq4nELweue3ysV9mVZKR6/9T8pVMI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=b/KcgGSK0IIHrE0KUNfVb70lfHS/VCfOWGCY7Ggep+8BUYfj3RIZzttmji0riP9UHtG3kE+AWISgoOYBxuurL0UKC0ZOtdGOxoeIP3YZycTe2cCyjA57puoqU435lK+valG6Vlol8KgxairrJ5iEQO2MYEAF4Hj9c+2YcdyYRNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jFr/BDZS; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1214F1F00A3A;
	Thu,  2 Jul 2026 09:54:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782986087;
	bh=ro0zTJboIfGrRuxPQGgkKGLyXmwoOATJUe2tUHEOc3E=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=jFr/BDZSdLoqWm6hw36EvhFoVFrfUrDeIXXO+Z4ntlOlProf9tACD+0UL1jbft8/Z
	 l1GP29NLAM/3AfhrISONIY1E1gSHMEdggALxY0iJz5c/nIZjohPmI9qijGzST7KqkJ
	 b+6baoBRXZho9G+SAswulveCE424eKd1yewVpKCuBkFlCKPCVQjDCNHbF+R/yckyIg
	 RquylLBBk+RXyVfxCCdWgUOjOFh7Nm3NH/viN7H8+piY7EIdcG4NOAjWjlt3/669t8
	 XIll9xr5YJ+HLos/fDPZSdTsK94zFLQEcfWBKG/ABDYm7YJ+lwewXO29UC74aysI2t
	 RfHNnCxSyKuMQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 2/5] dt-bindings: phy: Add documentation for Airoha
 AN7581 USB PHY
Reply-To: sashiko-reviews@lists.linux.dev
To: "Christian Marangi" <ansuelsmth@gmail.com>
Cc: robh@kernel.org, vkoul@kernel.org, olteanv@gmail.com, neil.armstrong@linaro.org, conor+dt@kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org
In-Reply-To: <20260702093812.15918-3-ansuelsmth@gmail.com>
References: <20260702093812.15918-1-ansuelsmth@gmail.com>
 <20260702093812.15918-3-ansuelsmth@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 02 Jul 2026 09:54:46 +0000
Message-Id: <20260702095447.1214F1F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-319271-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:ansuelsmth@gmail.com,m:robh@kernel.org,m:vkoul@kernel.org,m:olteanv@gmail.com,m:neil.armstrong@linaro.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-phy@lists.infradead.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,linaro.org,vger.kernel.org,lists.infradead.org];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,lists.linux.dev:replyto,vger.kernel.org:from_smtp,sashiko.dev:url,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E31346F5B1D

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Encoding fixed internal SoC routing in the device tree via the `air=
oha,usb2-monitor-clk-sel` property.
--

commit 82d75d6a8695c967604982f45c3db95efe45a784
Author: Christian Marangi <ansuelsmth@gmail.com>

dt-bindings: phy: Add documentation for Airoha AN7581 USB PHY

This commit adds device tree binding documentation for the Airoha AN7581
USB PHY. It details properties for configuring the always-supported USB 2.0
mode and the optional USB 3.0 mode, including slew rate calibration and
Serdes configuration.

> diff --git a/Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.=
yaml b/Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml
> new file mode 100644
> index 0000000000000..f42e3d49a61fd
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/airoha,an7581-usb-phy.yaml
> @@ -0,0 +1,62 @@
[ ... ]
> +  reg:
> +    maxItems: 1
> +
> +  airoha,usb2-monitor-clk-sel:
> +    description: Describe what oscillator across the available 4
> +      should be selected for USB 2.0 Slew Rate calibration.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum: [0, 1, 2, 3]

[Severity: Low]
Since the commit message mentions that each port has only one of the 4 moni=
tor
clocks actually connected in HW, does this property encode a fixed internal
SoC routing rather than a board-specific configuration?

Could the driver deduce the correct clock selection internally (for example,
from the port's register address) instead of requiring a DT property for a
fixed SoC hardware characteristic?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260702093812.1591=
8-1-ansuelsmth@gmail.com?part=3D2


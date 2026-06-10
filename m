Return-Path: <devicetree+bounces-309412-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lMWCJrQDKWpvOwMAu9opvQ
	(envelope-from <devicetree+bounces-309412-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 08:27:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D5E56663BD
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 08:27:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=km68t2iL;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309412-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309412-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1F2783086DB6
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 06:24:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 643C0372670;
	Wed, 10 Jun 2026 06:24:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 515AA3019BA
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 06:24:16 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781072657; cv=none; b=Fl/lPhOEOjYAmELzVTUZculN5CsmfxWkwgIBOjrOlN3hxlrN2enTIXo4NNFKoWjKt26QfprgCPPNKz5FYncMNcu/utu8KUOtb+ZG2dSLIh4o5mKQSn5VZYYayKdbSP9pJlYFRr4KVoBRhwssZBaN6hXBB8eG2+dXoS24P5gTgKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781072657; c=relaxed/simple;
	bh=Ji+Y9S1gns4/Us2kyxnnXCXVEvbToU5JSMTdsm1PS/0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=tIuWlQFvM90gr+PsM35S+ZQbNh/+cLe9J0KDAt/cfAPN0f1D+MH7/SUtP2rs2e1bs+zf2JT6XtOAXYfTfrYxyOdLSzXhxwyTjym7bfH3ZDEPSWcHr3EXJUOrmI+eFhLRp+SsMO2wuBubydH1IIdvBDJhrDrCL2NKsO1+Y/aHq5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=km68t2iL; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C28A91F00893;
	Wed, 10 Jun 2026 06:24:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781072656;
	bh=W9c3A1HN7GQ5wHtCSxnx/uCofDdQpuQh7NjRzv91E9U=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=km68t2iLIxkOL6zUfcTU/x3SPWiny+mVD4KYSijUFlvkuv2teSQ4zy8qdi705Cdju
	 bsCHOTZFBd+7RHc7iRrSG5qwNTt97exKWv/z22UReROjHFL+1Es2G4eE5gvAFr5ZEZ
	 ATlmK/mmo0dwkT60nMFeMDEt2qZwniT0gcQ/WOQIXqXpSnQ5+stJBeD1BO70ihV0qo
	 99q1zqAkuDUodj9tP/nDy9BzEgKSVhfhyB4jdCGMzZnF8EeANIaWw/fleL2NoAaNBL
	 QCycD/piq3EF2CxRRw1Gp6VfN4Np70RN827f+2iR5T8zF3nJyK01P5mlBndsOhStf5
	 WV+JhnC9lSCgg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 3/5] dt-bindings: clock: cix,sky1-audss-clock: add
 audss clock controller
Reply-To: sashiko-reviews@lists.linux.dev
To: joakim.zhang@cixtech.com
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260610061712.3203984-4-joakim.zhang@cixtech.com>
References: <20260610061712.3203984-4-joakim.zhang@cixtech.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 10 Jun 2026 06:24:15 +0000
Message-Id: <20260610062415.C28A91F00893@smtp.kernel.org>
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-309412-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:joakim.zhang@cixtech.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp.kernel.org:mid,devicetree.org:url,vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,cixtech.com:email,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2D5E56663BD

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The newly introduced `cix,sky1-audss-clock` schema causes a `dt_bin=
ding_check` validation failure in the parent `cix,sky1-system-control.yaml`=
 example.
--

commit 266331103ef923d7816fb4abbe0e462ec90cdfb6
Author: Joakim Zhang <joakim.zhang@cixtech.com>

dt-bindings: clock: cix,sky1-audss-clock: add audss clock controller

The AUDSS CRU contains an internal clock tree of muxes, dividers and
gates for DSP, I2S, HDA, DMAC and related blocks. The clock provider is
a child node of the cix,sky1-audss-system-control syscon and accesses
registers through the parent MMIO region.

> diff --git a/Documentation/devicetree/bindings/clock/cix,sky1-audss-clock=
.yaml b/Documentation/devicetree/bindings/clock/cix,sky1-audss-clock.yaml
> new file mode 100644
> index 0000000000000..dff56f3a425b9
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/cix,sky1-audss-clock.yaml
> @@ -0,0 +1,80 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/cix,sky1-audss-clock.yaml#

[ ... ]

> +required:
> +  - compatible
> +  - '#clock-cells'
> +  - clocks
> +  - clock-names
> +  - resets
> +  - power-domains

[Severity: Low]
Will this cause a dt_binding_check validation failure in the parent
cix,sky1-system-control.yaml example?

The parent binding contains an incomplete subnode example that will fail
validation against this newly introduced clock schema:

Documentation/devicetree/bindings/soc/cix/cix,sky1-system-control.yaml:
        clock-controller {
            compatible =3D "cix,sky1-audss-clock";
        };

Could the example in cix,sky1-system-control.yaml be updated to include the=
se
newly required properties to prevent validation errors?

> +
> +additionalProperties: false

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260610061712.3203=
984-1-joakim.zhang@cixtech.com?part=3D3


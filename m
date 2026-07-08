Return-Path: <devicetree+bounces-322589-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +7GbFur+TWp/BQIAu9opvQ
	(envelope-from <devicetree+bounces-322589-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 09:40:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 48693722B95
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 09:40:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=brO7LuMM;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322589-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-322589-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 048983001CD9
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 07:37:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D82753F23A1;
	Wed,  8 Jul 2026 07:37:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4668A3E022B
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 07:37:27 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783496263; cv=none; b=YqeOygIba8Qqloik59gOYjNYUqBHfdOMzXAXWpSZ0ZwToE42VY2inHaQx2GLVU3NWM4n9TiK04oo17whb9CisFk0cFzqgeCvR0bk1qrTxd8tPILzuf8hYjerEVdFek6OYZ9IjUdMT8/Cq0eebFjpJbRO901HFlJtKhPGon48RxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783496263; c=relaxed/simple;
	bh=9gHCQV0T5VCcBQUb3C8BtfqNrbZuEtNtrAiBRv4Iov4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=rC/R4wtiSp9VcEB+n5mvhfF89VQkQXqII5DVDvtuEYs18S7HCSfp0j7OyKzuL4YM20MMrMbsbQyuInSVfMOd2s9N3BZBBxIZxRloHzuVKlJIZQiS7HkdxT67acs5lrG5j25IaGmen4Xs8iTAkfVexVhEAwDRCIuB3MEhMfZ7fks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=brO7LuMM; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F029C1F000E9;
	Wed,  8 Jul 2026 07:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783496243;
	bh=bjcIGL5rubnbWxGIVL9f7wVleS/B3gXTu/rLVKJC/CA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=brO7LuMMXc/1hlw41DW8qVfVoCJHIqESA/mlM/mDUGjKb87gAIFBQqfFEi9h18Myg
	 Fsou2GD1ZyfXUNK1zIVIcUt40Fn+oZ95ycBMW3nrxObA4RMoq8ibtnp6oJS42FbzHk
	 p8hYsBsTc6VfaHjdTpw3EO/2/hOONBXHc46kX/84QO6IhyZJbqFolnezLoafvUujQ/
	 y04KzSccYQI3ZRhlCRbx6NFta6OzAAaCE6Pt/mYA7XfCYqVpllMleRQTzZATUG2igH
	 nbnChY8mdVwdHm8LuP8C905OywdAFTdZclflU4uxJIfVn3ICFxytYFPfL2wmLDH0p4
	 wBd166cZq8Vjw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 3/5] dt-bindings: clock: Move xlnx,zynqmp-clk to its
 own schema
Reply-To: sashiko-reviews@lists.linux.dev
To: "Michal Simek" <michal.simek@amd.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <f6fc3f65475888cd5726e3f2795a110e9f7a79c3.1783495122.git.michal.simek@amd.com>
References: <cover.1783495122.git.michal.simek@amd.com>
 <f6fc3f65475888cd5726e3f2795a110e9f7a79c3.1783495122.git.michal.simek@amd.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jul 2026 07:37:22 +0000
Message-Id: <20260708073722.F029C1F000E9@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-322589-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:michal.simek@amd.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amd.com:email,smtp.kernel.org:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,sashiko.dev:url,vger.kernel.org:from_smtp,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 48693722B95

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] The regex pattern for `mio_clk` in `clock-names` contains a logi=
c error that fails to correctly constrain the index to 00-77.
- [Low] The example in `xlnx,versal-clk.yaml` fails schema validation becau=
se it wraps a `versal-clk` clock controller in a `zynqmp-firmware` node.
--

--- Patch [3]: [PATCH v4 3/5] dt-bindings: clock: Move xlnx,zynqmp-clk to i=
ts own schema ---
commit 718990212b2e54a25ccb16a23d741b1b1a896e2d
Author: Michal Simek <michal.simek@amd.com>

dt-bindings: clock: Move xlnx,zynqmp-clk to its own schema

The ZynqMP clock controller binding shares only #clock-cells with the
Versal bindings. Move it to a dedicated xlnx,zynqmp-clk.yaml schema.
Also remove "(Optional clock)" from clock description because it is visible
from schema itself.

> diff --git a/Documentation/devicetree/bindings/clock/xlnx,versal-clk.yaml=
 b/Documentation/devicetree/bindings/clock/xlnx,versal-clk.yaml
> index b1623c2ab0f69..12d060c39bfc4 100644
> --- a/Documentation/devicetree/bindings/clock/xlnx,versal-clk.yaml
> +++ b/Documentation/devicetree/bindings/clock/xlnx,versal-clk.yaml
[ ... ]
>  examples:
>    - |
>      firmware {
>        zynqmp_firmware: zynqmp-firmware {
>          compatible =3D "xlnx,zynqmp-firmware";
>          method =3D "smc";
>          versal_clk: clock-controller {
>            #clock-cells =3D <1>;
>            compatible =3D "xlnx,versal-clk";

[Severity: Low]
Will this example now fail make dt_binding_check validation?

Because xlnx,zynqmp-firmware.yaml is modified in this patch to add an allOf
rule requiring the clock-controller child of zynqmp-firmware to use
compatible =3D "xlnx,zynqmp-clk", this xlnx,versal-clk node inside a
zynqmp-firmware example seems like it will trigger a schema validation erro=
r.

>            clocks =3D <&pss_ref_clk>, <&video_clk>, <&pss_alt_ref_clk>;
>            clock-names =3D "pss_ref_clk", "video_clk", "pss_alt_ref_clk";
>          };
>        };
>      };
[ ... ]
> diff --git a/Documentation/devicetree/bindings/clock/xlnx,zynqmp-clk.yaml=
 b/Documentation/devicetree/bindings/clock/xlnx,zynqmp-clk.yaml
> new file mode 100644
> index 0000000000000..c64550471581c
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/xlnx,zynqmp-clk.yaml
[ ... ]
> +  clock-names:
> +    minItems: 5
> +    items:
> +      - const: pss_ref_clk
> +      - const: video_clk
> +      - const: pss_alt_ref_clk
> +      - const: aux_ref_clk
> +      - const: gt_crx_ref_clk
> +      - pattern: "^mio_clk([0-6][0-9]|7[0-7])+.*$"

[Severity: Medium]
Does this pattern correctly constrain the clock index to 00-77?

By combining the + quantifier with .*, this regex allows strings like
"mio_clk100" to validate, since the "10" matches the capturing group and the
remaining "0" matches ".*". Could this be corrected to avoid permitting out=
 of
bounds values?

> +      - pattern: "gem[0-3]+_emio_clk.*$"
> +      - pattern: "swdt[0-1]+_ext_clk.*$"

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/cover.1783495122.gi=
t.michal.simek@amd.com?part=3D3


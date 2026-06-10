Return-Path: <devicetree+bounces-309413-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LlaSJvEDKWqHOwMAu9opvQ
	(envelope-from <devicetree+bounces-309413-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 08:28:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 399376663FB
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 08:28:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=eoGl7A6M;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309413-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-309413-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id AD6773009F47
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 06:25:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DAB934F279;
	Wed, 10 Jun 2026 06:25:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91BA030F7FB
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 06:25:23 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781072724; cv=none; b=SnM8YqsN2SOUNDFG9mnL15XOh/PNFqwK+Junvx/W+trqqHj2cG3D2vpwO5B549ySe/+6axdKhM+x8lKSl+AdnrAvfC5qpDWN2OA6mmaGfzBNu7iJz/NjpDihjLsblZNEGS0fQIq1dglFcPcVG/I0rvI2ScSO6BSuHSuKS37TTA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781072724; c=relaxed/simple;
	bh=r4EEl9to2Q+g6KMGDu4LPSujVZYu6Q1ysqGcQpmb9Kg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=RXv+tsu2P4Cu4iiA4nPoZBAvEZ6DfTYGAhq44L5qM404ONVCdvsAmXIlQYCptk9ueI6CDsVw6wVVf/qudZ1Ou0oj9qewkHVJ4OVDhZQ2aizp8y9LvJwF1QC4cF2cIEGWLwZvK0/udtUMF27jsABelPTwvCxDgOSyvJ8V9BKTGPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eoGl7A6M; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3DD8C1F00893;
	Wed, 10 Jun 2026 06:25:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781072723;
	bh=hWg3VoNneS5i9u47NdoRjx8gV74NNC1IoVPL0A0EQks=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=eoGl7A6MhdkiUCGjhWSxfMtJI1OCJ894FIAPmDhdYwyRNO5CyDe17uZyOlq85T3uu
	 YuHNYTZPp2odT/KXfzePrV4ofCYmleDdCB62BnqNCPOcObs7JWUuHiIOTtDqeiMHF/
	 uLxlRB0XE6a2XdwG7X4tsKnTO61w8ZmnXSu4vtT453iTt6osWlbzYL3b4mUh4hv6rx
	 eASF6XNqy4Qu69b/OsBhcijqdAjV+lNQ75vKK8iNfmWLepS+lqcalfp/xRJf2gHrjp
	 wChT1GtUXVmmXU6pjVWCznuYX2xUG37cu9dNR6f240KOTHX+4/Jf66ZEhy583BtRXG
	 f97CMT6SkoTKQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 1/5] dt-bindings: soc: cix,sky1-system-control: add
 audss system control
Reply-To: sashiko-reviews@lists.linux.dev
To: joakim.zhang@cixtech.com
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260610061712.3203984-2-joakim.zhang@cixtech.com>
References: <20260610061712.3203984-2-joakim.zhang@cixtech.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 10 Jun 2026 06:25:22 +0000
Message-Id: <20260610062523.3DD8C1F00893@smtp.kernel.org>
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-309413-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:joakim.zhang@cixtech.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,smtp.kernel.org:mid,vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,cixtech.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 399376663FB

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The `clock-controller` child node in the `cix,sky1-audss-system-con=
trol` example completely omits `#clock-cells` and other properties (`clocks=
`, `clock-names`, `resets`, `power-domains`) required by its schema. Accord=
ing to subsystem guidelines, the `examples` section must include all requir=
ed properties to pass schema validation.
--

commit f2cf10fde483506768695633b3e23cc67dd4acf0
Author: Joakim Zhang <joakim.zhang@cixtech.com>

dt-bindings: soc: cix,sky1-system-control: add audss system control

This commit adds a new compatible string cix,sky1-audss-system-control to t=
he
cix,sky1-system-control device tree binding schema. It represents the Sky1
audio subsystem system control block, which acts as a syscon parent and
simple-mfd for audio-related clocks and resets. It also adds a new reset in=
dices
header file for the software resets.

> diff --git a/Documentation/devicetree/bindings/soc/cix/cix,sky1-system-co=
ntrol.yaml b/Documentation/devicetree/bindings/soc/cix/cix,sky1-system-cont=
rol.yaml
> --- a/Documentation/devicetree/bindings/soc/cix/cix,sky1-system-control.y=
aml
> +++ b/Documentation/devicetree/bindings/soc/cix/cix,sky1-system-control.y=
aml

[ ... ]

> @@ -40,3 +67,13 @@ examples:
>        reg =3D <0x4160000 0x100>;
>        #reset-cells =3D <1>;
>      };
> +  - |
> +    audss_syscon: system-controller@7110000 {
> +        compatible =3D "cix,sky1-audss-system-control", "simple-mfd", "s=
yscon";
> +        reg =3D <0x7110000 0x10000>;
> +        #reset-cells =3D <1>;
> +
> +        clock-controller {
> +            compatible =3D "cix,sky1-audss-clock";
> +        };

[Severity: Low]
Are required properties like #clock-cells, clocks, clock-names, resets, and
power-domains omitted from this clock-controller child node?

According to subsystem guidelines, the examples section must include all
required properties to pass schema validation. Will this incomplete node ca=
use a
regression during make dt_binding_check when the example is evaluated again=
st
the cix,sky1-audss-clock schema?

> +    };

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260610061712.3203=
984-1-joakim.zhang@cixtech.com?part=3D1


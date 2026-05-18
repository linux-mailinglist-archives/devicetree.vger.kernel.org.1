Return-Path: <devicetree+bounces-299086-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cGttKid/Cmoo2AQAu9opvQ
	(envelope-from <devicetree+bounces-299086-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 04:53:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E790565313
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 04:53:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0871A3001D65
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 02:53:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62F0B37BE7D;
	Mon, 18 May 2026 02:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JOmJCpJ5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4078718DB37
	for <devicetree@vger.kernel.org>; Mon, 18 May 2026 02:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779072803; cv=none; b=QmkxI+sW1siAC4UEP1HopJsIfYaSyX7pByoNwQU0L3kzRZ4aiXtSIFEU6MQ3NERnTTMXSbDOihFXBTQgeKfI+vCS5spHtxsRp2VDxeXExlO4xUjJh5BTlfg7/GLUTdPBGEzloCh2dgNxhDo+4z2tau5/lIE7MUfKPCPprEHFh28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779072803; c=relaxed/simple;
	bh=9xM1dWan0am3Xhs+rRzcoKb9gx69y+vZfq8Wk7LSxmk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=hNgAlCOj9Fdv3oRQ9Z4Fuq1kdcG24cnrU0bnwfdlpR0/LnqqdLtBS+4GGHgdb3TTQqvXJGey1eERQJKkQJZYU+aUmMarhZuU2/+84F2LxbhlwSlKEF3WLgyt75tMbr8VTVK7BVZOz//020CGKyrZrPHfY6oktYtvEMmeuiqoHKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JOmJCpJ5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AECFEC2BCB0;
	Mon, 18 May 2026 02:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779072802;
	bh=9xM1dWan0am3Xhs+rRzcoKb9gx69y+vZfq8Wk7LSxmk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=JOmJCpJ5XaMQONxD7l6ceiczNFVpf+aZSXeqVOCd1ObZ+hBXXlsUzrif6tn+oyzwL
	 72GT2At9foHhLBrwZb2xCaFC9GsbLfltf4wK7u6Z8g6f6A1I5YzKBh9uQj9jS8VLQ6
	 xSQn0dfU2/nsJSxvq5eqn5GoaqUy0jmqEZhyrzNaOQ4XUDtWmJmvhYGjwqgvn26UQl
	 ocm2arQgcOTQbFByDfF8BsTRhFaXjmgIUsMDD6K147dVly4PWLVYY09RIMH2eU2upH
	 7DhMPv5UcC2eeR79bnShizO1h1haciJF5pI52O6DO+tKppVlNam979hwYYjHb7pKyO
	 BSv2PUZrQ3/Mw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/2] ASoC: dt-bindings: nuvoton,nau8360: Add NAU83G60
Reply-To: sashiko-reviews@lists.linux.dev
To: "Neo Chang" <YLCHANG2@nuvoton.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260518024704.118613-2-YLCHANG2@nuvoton.com>
References: <20260518024704.118613-2-YLCHANG2@nuvoton.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 18 May 2026 02:53:22 +0000
Message-Id: <20260518025322.AECFEC2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 3E790565313
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-299086-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,sashiko.dev:url,smtp.kernel.org:mid,nuvoton.com:email,1a:email]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Property name typo: schema defines `firmware-names` but example use=
s standard `firmware-name`.
--

commit 79af2c3efbc97d2f61f76b26b50c0f08ac0264e4
Author: Neo Chang <YLCHANG2@nuvoton.com>

ASoC: dt-bindings: nuvoton,nau8360: Add NAU83G60

This commit adds device tree bindings documentation for the Nuvoton NAU83G60
audio amplifier.

> diff --git a/Documentation/devicetree/bindings/sound/nuvoton,nau8360.yaml=
 b/Documentation/devicetree/bindings/sound/nuvoton,nau8360.yaml
> new file mode 100644
> index 0000000000000..756b3e9c43215
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/nuvoton,nau8360.yaml
[ ... ]
> +  firmware-names:
> +    minItems: 2
> +    maxItems: 2
> +    description:
> +      Assign firmware filenames for left and right DSP cores.
[ ... ]
> +        codec@1a {
> +            #sound-dai-cells =3D <0>;
> +            compatible =3D "nuvoton,nau8360";
> +            reg =3D <0x1a>;
> +            nuvoton,dsp-bypass;
> +            nuvoton,pbtl-enable;
> +            nuvoton,dac-cur-enable;
> +            firmware-name =3D "NAU83G60.kcs.bin.l" , "NAU83G60.kcs.bin.r=
";

Will this pass the dt_binding_check validation?

The schema defines firmware-names in the properties block, but the example
uses firmware-name.

Since unevaluatedProperties is set to false, this mismatch will cause a
validation error when checking the example, or silently pass validation on
actual device trees without enforcing the minItems and maxItems constraints.

> +        };
> +    };

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260518024704.1186=
13-1-YLCHANG2@nuvoton.com?part=3D1


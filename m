Return-Path: <devicetree+bounces-298170-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ULZ1GkL/BmpiqgIAu9opvQ
	(envelope-from <devicetree+bounces-298170-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 13:10:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 43E6454E249
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 13:10:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3B1693147CBD
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 10:52:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 273BD472776;
	Fri, 15 May 2026 10:52:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tfrD7YWe"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04C2346AEE2
	for <devicetree@vger.kernel.org>; Fri, 15 May 2026 10:52:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778842325; cv=none; b=Qd71qfus//Yh+uOQWFBnmm7RCDPRk/lpTmoco/ysVBNT+o3AMS+Imw3sX3b0bcMFlHwnONdgnDhG0jJVnT9En1HJ+JW1Cgbx56MP9mtZxWRfZKlU7J/Kp5k4tr62u5CcfFgzKEXB2Z3+Du/y+1YQWut2Jt6Ic4lWHB1+hRhh9ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778842325; c=relaxed/simple;
	bh=EkWP4MQXRsxUe7DwYNJKZnTlyJkySaF5yIh8AiOKcH8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=qzXEFe6UD24Mcc1He9lacFu6DynvLlMW/6fBI3BWrOHJK+mSrsWIJXS0rPWqzATb7p/W/ALVJSLb2PBtb/PHD5jVFrKjCajtvms2zgvhQm3nR6i3fPtXN3fFcxxxlgyJ2VfS4ZLHPDpc8tEbdUe3vE6ninnF3RSGLD8o52JfjUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tfrD7YWe; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 572DCC2BCB0;
	Fri, 15 May 2026 10:52:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778842324;
	bh=EkWP4MQXRsxUe7DwYNJKZnTlyJkySaF5yIh8AiOKcH8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=tfrD7YWel4byQer4Me+IncdaVdOdzb6CBW767Q6R//9uVpcXz2haV8tGJkOrsGddb
	 9zSBLc/TuwVr7lskmwE0tf+fiVU4d044NCOP6GaASpdBGSPAl1LerBxgwPTHTL2rw8
	 X4jwLazud/ZWVLyOwXzjjPZrmwPqsSgEiFWUPz3Ea+6MHDblw7HedoBR4J8ZQWfIok
	 7eVCxEXkgfl9ErpNIJNCWU/74v6WRlu+rvpyt/RmTGhbeyFua4QrRX1KZufRrkmXP3
	 lT8fUuodeagUsVowYQA9gvDr/kYY014lRnYdzMnDInrKj/LGnOL7BERfKzRYnpHLL7
	 ObdDFFielVVDA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 03/11] dt-bindings: mfd: add documentation for
 S2MU005 PMIC
Reply-To: sashiko-reviews@lists.linux.dev
To: "Kaustabh Chakraborty" <kauschluss@disroot.org>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org, krzk+dt@kernel.org
In-Reply-To: <20260515-s2mu005-pmic-v6-3-1979106992d4@disroot.org>
References: <20260515-s2mu005-pmic-v6-3-1979106992d4@disroot.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 15 May 2026 10:52:03 +0000
Message-Id: <20260515105204.572DCC2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 43E6454E249
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-298170-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[disroot.org:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,lists.linux.dev:replyto,sashiko.dev:url,smtp.kernel.org:mid];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The `$ref` for the `flash` child node schema is missing a trailing =
`#`.
--

commit af977d3436c72dabe8294eb2a16ebaa919887d37
Author: Kaustabh Chakraborty <kauschluss@disroot.org>

dt-bindings: mfd: add documentation for S2MU005 PMIC

Samsung's S2MU005 PMIC includes subdevices for a charger, an MUIC, and
flash and RGB LED controllers. This commit adds the device tree binding
documentation for the S2MU005 PMIC and its supported sub-devices.

> diff --git a/Documentation/devicetree/bindings/mfd/samsung,s2mu005-pmic.y=
aml b/Documentation/devicetree/bindings/mfd/samsung,s2mu005-pmic.yaml
> new file mode 100644
> index 0000000000000..0e6afb7d2017b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mfd/samsung,s2mu005-pmic.yaml

[ ... ]

> +properties:
> +  compatible:
> +    const: samsung,s2mu005-pmic
> +
> +  flash:
> +    $ref: /schemas/leds/samsung,s2mu005-flash.yaml

Is this missing a trailing `#`?

Device tree schema conventions and tooling expect file references to end
with `#` to explicitly reference the root of the target schema document.=20
Other references in this file, such as the muic node, include it.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260515-s2mu005-pm=
ic-v6-0-1979106992d4@disroot.org?part=3D3


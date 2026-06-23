Return-Path: <devicetree+bounces-314842-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Sl8iAviFOmr2+wcAu9opvQ
	(envelope-from <devicetree+bounces-314842-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 15:11:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 38B896B7575
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 15:11:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=H0VkgAnr;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314842-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314842-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E0583317D568
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 13:05:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DC862D77E6;
	Tue, 23 Jun 2026 13:05:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A9EC2D7380
	for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 13:05:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782219943; cv=none; b=NMrsJFwaKIUf4RY650P1iJTf6fl1Y1+HzBQvi2V3Pe+QWcY5YEt8K+ZStHD52Fn5bmjF3174ANPOJfkwGF3L9DBmtm4twq2rbvOGWiyjFhh/9ndkWzGiVtfCoCEb6v9rBr8TnwT6/IqMfMxGy6t/5E+uTx35rftSjG9kvUH+Xjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782219943; c=relaxed/simple;
	bh=0fu0mJIifLNhiHu+YZQhT5uwip0KfuxEr4p7POR/ixI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=QkanwciOzMA8mXDDCgAMjcEaBOqrVmeP0CzPdzKOzZejSPaGs3kaxOkCctyuyIiPo+n3/6QHeDq2L4ulPnPp85HgL2T7wuo7djKZ/gRvxqsWnTfiuX86a5PDg4gOBS5fH0m73I9Xhu+d9SBB7EjBnNtDfNyS+3K70m31vHGDfRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H0VkgAnr; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 571971F00A3A;
	Tue, 23 Jun 2026 13:05:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782219939;
	bh=ze28JD50alvxXZwc/HNL/lGT2C57B5B8UKznsdMKOfg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=H0VkgAnrgGvFY38EjpZWeMsQbxY8Lvysw0K3uwPCXeGXKVwhEBWMs3rqjold6blTa
	 p/GwtNj/Kz9421g4yka/qHXABWdb/SKYw9H0k9nrgtvFCKqHAsjABruMQHbqnlJvA9
	 MlDMKS2X10VH4SsCl5pT7fOQksJ1Fngd0FE8BIed5qUkxph9vKwwgEYLMOmBRZaE0J
	 kEKbdne+bfT3DHsTD5W/8NKmPsRIhBGNKS3cqVtXKbtH+sUeOmAbHnPED+DgQo1Il/
	 Me2Lnt17c3OKWVS1KzdQf4gnuF43FkXv7VValVDEBAVo9WFanm6eac80OeAv+OPkyL
	 4IAhra/uQd6mg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 02/12] dt-bindings: iio: dac: ad5696: rework on power
 supplies
Reply-To: sashiko-reviews@lists.linux.dev
To: "Rodrigo Alencar via B4 Relay" <devnull+rodrigo.alencar.analog.com@kernel.org>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260623-ad5686-new-features-v4-2-28962a57db0f@analog.com>
References: <20260623-ad5686-new-features-v4-0-28962a57db0f@analog.com>
 <20260623-ad5686-new-features-v4-2-28962a57db0f@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 23 Jun 2026 13:05:38 +0000
Message-Id: <20260623130539.571971F00A3A@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-314842-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:devnull+rodrigo.alencar.analog.com@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:devnull@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,rodrigo.alencar.analog.com,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sashiko.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 38B896B7575

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] Unconditionally requiring new `vdd-supply` and `vlogic-supply` p=
roperties breaks validation for existing device trees.
- [Medium] Conditionally requiring `vref-supply` for `adi,ad5696` breaks sc=
hema validation for legacy device trees that use the deprecated `vcc-supply=
`.
--

commit 7082ab254ab9eb0509320518d5cb786825dd6cbb
Author: Rodrigo Alencar <rodrigo.alencar@analog.com>

dt-bindings: iio: dac: ad5696: rework on power supplies

This commit updates the AD5696 DAC binding to include vdd-supply,
vlogic-supply, and vref-supply, while deprecating the misleading vcc-supply.
It also updates the required property lists and conditionally requires
vref-supply for specific variants.

> diff --git a/Documentation/devicetree/bindings/iio/dac/adi,ad5696.yaml b/=
Documentation/devicetree/bindings/iio/dac/adi,ad5696.yaml
> index cc343cdf6085a..e10f8596f9d3f 100644
> --- a/Documentation/devicetree/bindings/iio/dac/adi,ad5696.yaml
> +++ b/Documentation/devicetree/bindings/iio/dac/adi,ad5696.yaml

[ ... ]

> @@ -62,8 +75,21 @@ properties:
>  required:
>    - compatible
>    - reg
> +  - vdd-supply
> +  - vlogic-supply

[Severity: Medium]
Does unconditionally adding vdd-supply and vlogic-supply to the required
list break schema validation for existing device trees?

Legacy device trees that legitimately omitted these properties will now fail
schema validation during make dtbs_check.

> =20
>  allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - adi,ad5693
> +              - adi,ad5694
> +              - adi,ad5696
> +    then:
> +      required:
> +        - vref-supply

[Severity: Medium]
Does conditionally requiring vref-supply for these compatible strings break
schema validation for legacy device trees that use the deprecated vcc-suppl=
y?

Since vcc-supply was valid under the previous schema, making vref-supply
strictly required here will cause validation failures for existing device
trees. Should the schema allow either vref-supply or the deprecated
vcc-supply to preserve DT ABI compatibility?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260623-ad5686-new=
-features-v4-0-28962a57db0f@analog.com?part=3D2


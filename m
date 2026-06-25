Return-Path: <devicetree+bounces-315723-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1IdWOEM/PWp/0AgAu9opvQ
	(envelope-from <devicetree+bounces-315723-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 16:46:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 364D26C6C93
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 16:46:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Qxn2Sh6B;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315723-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-315723-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8E3A83057042
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 14:43:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 283573E1211;
	Thu, 25 Jun 2026 14:43:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2BA01E7C18
	for <devicetree@vger.kernel.org>; Thu, 25 Jun 2026 14:43:54 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782398636; cv=none; b=l7jqfEngulhSvGoJUdqTSNu9WXY0NBkrzIWB3yvnvdVCflp+OJUcpjBKq9q3HMT8Eg/55FUHBphUkdyQCXiqzDWgnIJxXg6rfYCE8jo7pzuaF4wkqMDUDRtUVHUyFtGtjki2cdzRkwNruDocu83zQyKD56c5+qV7kYEMJWRPY04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782398636; c=relaxed/simple;
	bh=E66PysMZe1jx0qsGDzzFcsZTFxnc8bdwBi19BAsiRG8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=FxKdGIamFRV5mQb2HSEaRSjV0W42HkX/C0j2UStsL2wvFusUCHmws7c5hRbKslFj/VQRmn4BVImKMsQSMh1BZ3kQp4ja2pb0ek+4SnEYvNV/ELJVFrO8mCOe058t11MM531/VvWmUPnwXp8PF+AhUOn3B+bJKak5NsUM47D4J5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qxn2Sh6B; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A47561F000E9;
	Thu, 25 Jun 2026 14:43:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782398634;
	bh=Pg6PAzEEf+PfrC1bEjjyrN5XGdo21fICTgOpIicGDzs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Qxn2Sh6B3dxm+h1BBXqwrRe4zhQHCtDwKmsi+rCnsoKqakLTQ8dUzsTT9QgCd5K+E
	 PrbVuHSYrspTpG8aFLXFCAHcbtM/ZTE/6bDXC71DUZrxgI2zMf1ppomyJUjJFbgQ02
	 SEs/oiwxhqAcxaXenVz5JY6LFZtrhnJNoEzWxSet9Bwji9siNAHAmDKkFI9B6lQOT2
	 +D0VpRsEqBFm9wpl1ciAmQ3d+6xKyI2TSgviP7SFZkR4nTfM6ZOnqiEm7jhcLb+ESt
	 P3QCiKzOAreGf7odXgzRyPKoSiDSeLGHepfjwNXKCq7HvH1y3IGc6sYWy8D5z9XPIe
	 t+4DQzSy4xTHQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 1/4] dt-bindings: iio: adc: Add ltc2378
Reply-To: sashiko-reviews@lists.linux.dev
To: "Marcelo Schmitt" <marcelo.schmitt@analog.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <b08eabad7a56056dafa42f58a755c8d4320f5113.1782397418.git.marcelo.schmitt@analog.com>
References: <cover.1782397418.git.marcelo.schmitt@analog.com>
 <b08eabad7a56056dafa42f58a755c8d4320f5113.1782397418.git.marcelo.schmitt@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 25 Jun 2026 14:43:52 +0000
Message-Id: <20260625144353.A47561F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-315723-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:marcelo.schmitt@analog.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[analog.com:email,lists.linux.dev:replyto,sashiko.dev:url,vger.kernel.org:from_smtp,smtp.kernel.org:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 364D26C6C93

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The compatible string 'adi,ltc2338-18' incorrectly specifies 'ad=
i,ltc2376-18' as a fallback despite conflicting hardware constraints for 'r=
ef-supply', breaking backward compatibility.
--

commit aa175408226610e4bc2c27ed8ee768b0307ee6fa
Author: Marcelo Schmitt <marcelo.schmitt@analog.com>

dt-bindings: iio: adc: Add ltc2378

This commit documents the device tree bindings for the Analog Devices LTC23=
78
and similar series of ADCs. It specifies the compatible strings, required
properties, and voltage reference constraints.

> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ltc2378.yaml b=
/Documentation/devicetree/bindings/iio/adc/adi,ltc2378.yaml
> new file mode 100644
> index 0000000000000..9adc420fe142b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/adc/adi,ltc2378.yaml
[ ... ]
> +      # Low sample rate fallback for 18-bit bipolar sensors.
> +      - items:
> +          - enum:
> +              - adi,ltc2379-18 # 1.6 MSPS
> +              - adi,ltc2338-18 # 1 MSPS
> +              - adi,ltc2378-18 # 1 MSPS
> +              - adi,ltc2377-18 # 500 kSPS
> +          - const: adi,ltc2376-18 # fallback (250 kSPS)
[ ... ]
> +allOf:
> +  # Except for LTC2338, all designs require a voltage reference input
> +  - if:
> +      properties:
> +        compatible:
> +          not:
> +            contains:
> +              enum:
> +                - adi,ltc2338-18
> +    then:
> +      required:
> +        - ref-supply
> +      properties:
> +        refin-supply: false
> +    else:
> +      properties:
> +        ref-supply: false

[Severity: Medium]
Will this cause probe failures on older kernels when using the fallback?

The compatible string adi,ltc2338-18 is configured to use adi,ltc2376-18 as=
 a
fallback. However, this conditional block strictly forbids the ref-supply
property for adi,ltc2338-18.

Because adi,ltc2376-18 requires a ref-supply, a device tree correctly follo=
wing
this binding for adi,ltc2338-18 will lack that property.

When an older kernel attempts to bind using the adi,ltc2376-18 fallback str=
ing,
will it fail to find the expected ref-supply regulator and abort probing?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/cover.1782397418.gi=
t.marcelo.schmitt@analog.com?part=3D1


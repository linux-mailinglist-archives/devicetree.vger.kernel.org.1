Return-Path: <devicetree+bounces-326906-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /k2bBtF0V2rrOQEAu9opvQ
	(envelope-from <devicetree+bounces-326906-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 13:53:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 86EFD75DCF8
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 13:53:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="eI1Hz/Ch";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326906-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326906-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 92BE13037BEF
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 11:48:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2455640D587;
	Wed, 15 Jul 2026 11:48:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4739370D6E
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 11:48:22 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784116104; cv=none; b=SOuMcUNi0ZJ0p2eYTMHPzGnSMy/SkmBRrmW/1QpmmUh9hPbJdR1v72668HWgAJn/BmNXn6ARv1cPFqaOsOa9rG8jdWcl7bw26JqeAq8zKMoU5/ubBFS+Nz2GewkysZvJS+qej/ESDKDed0a1GVg2va51idf2R7yN0zbZUEZotsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784116104; c=relaxed/simple;
	bh=ZVuLnLhZc0rNxL5r7SVr4trvrCJNAsWCrRjfwQZjBAE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=IxMUOkJ5reRQAzbNaxxIIDCUET+8GpRIxuoYY+KamwQA6ayTRwJISSmkG4KynCfYI+wkPM4DD3WOR6TE+eAun4BvvMAxfbFVUxB2ag1QAd1nKhB47mH3j8LVaSl0O/Y9DtOkqxUgVuEewRQ4Ss5zdM7xqf8j+9Q8yPLe3cC5NPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eI1Hz/Ch; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6019C1F000E9;
	Wed, 15 Jul 2026 11:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784116102;
	bh=T8sCsMXfa9157Qkdw5sWCiNhTIoNf9bti3kRSbSgEmU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=eI1Hz/ChQRKxNaamJsmjHS9eu0DN3tfQ1jcy9dhHAcmyQyl9SgE1Amad5uH3pJngy
	 AOj/0WhaLan2u4inWPKo2e12ZElmdDReJGG2zvWIEY7sr4Gkm9N1iEc7UvrWXR9utt
	 E+DPy5B+0paoH/3RA+AujKlWSPIVjpueW1XcN3IV4TVGKdAFioB6+8qKIMZJ/LYV0p
	 M+XNTPSwOO4Ytqc2wbopDQ0Qe3bqnoe3GdpK5BEC7RK/GiAfRP2acKSzqVvNO40gC4
	 QCXCNOwO6oMRLHnQtog7C6x4MStavBq21qV6wxybQt/MwpuXdoKeNyCmtReFaNt0/F
	 AiWwdQUHwv7CA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 1/5] spi: dt-bindings: Add spi-device-addr peripheral
 property
Reply-To: sashiko-reviews@lists.linux.dev
To: "Janani Sunil" <janani.sunil@analog.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260715-ad5529r-driver-v6-1-cfdf8b9f5ee3@analog.com>
References: <20260715-ad5529r-driver-v6-0-cfdf8b9f5ee3@analog.com>
 <20260715-ad5529r-driver-v6-1-cfdf8b9f5ee3@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 15 Jul 2026 11:48:21 +0000
Message-Id: <20260715114822.6019C1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-326906-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:janani.sunil@analog.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,lists.linux.dev:replyto,analog.com:email,sashiko.dev:url,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 86EFD75DCF8

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The `spi-device-addr` array property groups multiple physical ch=
ips under a single Device Tree node, which violates core DT architecture an=
d precludes describing per-chip resources.
--

--- Patch [1]: [PATCH v6 1/5] spi: dt-bindings: Add spi-device-addr periphe=
ral property ---
commit 039a81f5133684e72f9b6f61fd5df1550f9b8b54
Author: Janani Sunil <janani.sunil@analog.com>

spi: dt-bindings: Add spi-device-addr peripheral property

This commit adds a generic spi-device-addr property to describe multiple
hardware addresses for SPI devices that share a single chip select. The
property is defined as a uint32-array to be placed on the SPI peripheral
node.

> diff --git a/Documentation/devicetree/bindings/spi/spi-peripheral-props.y=
aml b/Documentation/devicetree/bindings/spi/spi-peripheral-props.yaml
> --- a/Documentation/devicetree/bindings/spi/spi-peripheral-props.yaml
> +++ b/Documentation/devicetree/bindings/spi/spi-peripheral-props.yaml

[ ... ]

> @@ -142,6 +142,11 @@ properties:
>      minItems: 2
>      maxItems: 4
> =20
> +  spi-device-addr:
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    description:
> +      Device address used when multiple peripherals share a single chip =
select.

[Severity: Medium]
Does grouping multiple physical chips under a single Device Tree node using=
 an
array property conflict with core DT architecture?

If multiple addresses are listed here, it becomes impossible to describe
distinct per-chip hardware resources, such as individual interrupts, clocks,
or power supplies for those physical chips.

Would it be more appropriate to model the shared CS as a bridge or bus node
with #address-cells =3D <1>, and represent each physical chip as a distinct
child node with its own reg and discrete properties?=20

Since Device Tree bindings form a permanent ABI, establishing this array
pattern might permanently constrain drivers needing to represent per-chip
resources on shared chip selects.

> +
>    st,spi-midi-ns:
>      deprecated: true
>      description: |

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260715-ad5529r-dr=
iver-v6-0-cfdf8b9f5ee3@analog.com?part=3D1


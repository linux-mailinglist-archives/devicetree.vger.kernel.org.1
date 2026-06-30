Return-Path: <devicetree+bounces-317982-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id cUevMDf4Q2qAmQoAu9opvQ
	(envelope-from <devicetree+bounces-317982-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 19:09:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C41876E6C39
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 19:09:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ElepC66P;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317982-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317982-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9001D3004400
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 17:08:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58C153DB322;
	Tue, 30 Jun 2026 17:08:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F1B0330B11;
	Tue, 30 Jun 2026 17:08:53 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782839334; cv=none; b=kDlNsl5wHFvf7wZ/8JsInE9eYdSzGPkCormVzq/7KryTNUxdFLnQaQuq5qUG1SQ1BnVaHrYOl8/olEcnZNX2kTWi5vtmXUu1dAQw5Xb/EJG3M3+q1BPT0YJAcQqBjIj3sMq4Lq9Y5RZcLMxx5+tMSuRQPOPj2TRnWAecIYZWQTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782839334; c=relaxed/simple;
	bh=fIMm8C/TgI5nAa47LMm9rPL7P0R3u5OOub/jUFPcc/g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DDvcYMcNuX1uDS8EsGemxwN9YiBAAtyz6IRmYB9M3ZmWuUHgqcD2xGvJKcA80icSHss19+7R9ucpgPyjoVQT8mDcK4u4uRbynfwAjS62+QopmV6g3TN4Qm2J5QV2vi86eJUz4zl28KoVXYi0XYilQmiSOKdzmzUMd25zqan8o/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ElepC66P; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 426B01F000E9;
	Tue, 30 Jun 2026 17:08:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782839333;
	bh=vjXeeeCYeiUa7yMAifq5hXz1HtFrjFiorCgExnyzF2g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ElepC66Pcuk267CvYmyn28I9bk3zHpHX2THxl8aq57IkCJXnUQBuLeA6ND3uVCtTf
	 UlsYWTk73uWhMnNjlC3jg7P7lrIeReoQ2Tkh/ciYapoig73EeiF8QJBmoO7qrOOLS3
	 NKLlS35VZ6hjxu9MmJNkIekPkp1KqgYq//PM5WhXMYWKriEt/31sSkCCmD40/pAOlS
	 05zkuCb6z+w5gIIVSvIxQpXSk0BXKpIC3Mta5W+PTFsDc39nkgqsqy74x5osEmFFHO
	 zubBFB+x5qzDhL5Hq2AETvLb/xv8yiWruG5/H0jWez/ZtOhekY1W/5OOmtBTziILS2
	 C4Pl3MgFtpIbg==
Date: Tue, 30 Jun 2026 18:08:47 +0100
From: Conor Dooley <conor@kernel.org>
To: michael.reeves077@gmail.com
Cc: Sven Peter <sven@kernel.org>, Janne Grunau <j@jannau.net>,
	Neal Gompa <neal@gompa.dev>, Jassi Brar <jassisinghbrar@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Hector Martin <marcan@marcan.st>,
	"Joerg Roedel (AMD)" <joro@8bytes.org>,
	Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Jiri Kosina <jikos@kernel.org>,
	Benjamin Tissoires <bentiss@kernel.org>, asahi@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, iommu@lists.linux.dev,
	linux-input@vger.kernel.org
Subject: Re: [PATCH 04/10] dt-bindings: input: apple: Add DockChannel HID
 transport
Message-ID: <20260630-halves-magnesium-856f9c7d60b2@spud>
References: <20260630-apple-mtp-keyboard-final-v1-0-506d936a1707@gmail.com>
 <20260630-apple-mtp-keyboard-final-v1-4-506d936a1707@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="IFgQppRoGRqlg1/V"
Content-Disposition: inline
In-Reply-To: <20260630-apple-mtp-keyboard-final-v1-4-506d936a1707@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:michael.reeves077@gmail.com,m:sven@kernel.org,m:j@jannau.net,m:neal@gompa.dev,m:jassisinghbrar@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:marcan@marcan.st,m:joro@8bytes.org,m:will@kernel.org,m:robin.murphy@arm.com,m:dmitry.torokhov@gmail.com,m:jikos@kernel.org,m:bentiss@kernel.org,m:asahi@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:iommu@lists.linux.dev,m:linux-input@vger.kernel.org,m:michaelreeves077@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:dmitrytorokhov@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[21];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-317982-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,jannau.net,gompa.dev,gmail.com,marcan.st,8bytes.org,arm.com,lists.linux.dev,lists.infradead.org,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,spud:mid,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,microchip.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C41876E6C39

--IFgQppRoGRqlg1/V
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 30, 2026 at 10:54:32PM +1000, Michael Reeves via B4 Relay wrote:
> From: Michael Reeves <michael.reeves077@gmail.com>
>=20
> Apple internal keyboards and trackpads behind MTP are exposed through a
> DockChannel HID transport.
>=20
> Add the client binding tying together the RTKit ASC mailbox,
> DockChannel mailbox, and MTP DART. The keyboard child can provide the
> HID country code used by hid-apple to distinguish layout variants.
>=20
> Signed-off-by: Michael Reeves <michael.reeves077@gmail.com>
> ---
>  .../bindings/input/apple,dockchannel-hid.yaml      | 91 ++++++++++++++++=
++++++
>  MAINTAINERS                                        |  1 +
>  2 files changed, 92 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/input/apple,dockchannel-hi=
d.yaml b/Documentation/devicetree/bindings/input/apple,dockchannel-hid.yaml
> new file mode 100644
> index 000000000000..dbba4fc38971
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/input/apple,dockchannel-hid.yaml

Same thing here about the filename. Looks good otherwise, so please
change that.
pw-bot: changes-requested
=02
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

--IFgQppRoGRqlg1/V
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCakP4HwAKCRB4tDGHoIJi
0rC1AP9CivYKeIXifyJKmjFVsB20Z3JWxax7appciOgjNqympgEAs/E2+BjCEf/S
gRxK6PCZN+rd05T+GWJvwgvz+22GFQg=
=VmHn
-----END PGP SIGNATURE-----

--IFgQppRoGRqlg1/V--


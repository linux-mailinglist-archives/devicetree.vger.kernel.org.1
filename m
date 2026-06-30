Return-Path: <devicetree+bounces-317979-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 65H4HYL4Q2qxmQoAu9opvQ
	(envelope-from <devicetree+bounces-317979-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 19:10:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AA8D36E6C5C
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 19:10:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=SubIErM6;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317979-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317979-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 13A32300E268
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 17:07:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D10DB3DA7F3;
	Tue, 30 Jun 2026 17:07:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD18E3C1973;
	Tue, 30 Jun 2026 17:07:06 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782839227; cv=none; b=GCP6OvOcq1u6CVIBI+MKc6959ZlQHtQ+7jN/haylxebTVV3IWcoXxyS4T0SzF+58lr2XOP5hAP7sn6/kdLQF+k9j3udXtR+CmFc1SJscKrDQukCqzYY6Mq0kta1YSFJ+QsS+bixlQsIzcZFbRp5M+B67+EKoF+9vJkah4gbr30s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782839227; c=relaxed/simple;
	bh=uiv/MQy+bsUwjaZfvhdwuG1YReHC8DRhAmOkht8FjnE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pkKl+JoOoh1WKgoyR7CsRo30TMMJLqNh2A2yAfK/h589ClVXSW+GIeXFrK6YZ4smYzbx6qJC3TWD3//A/0teiSYqd3RkZo/cCgcuZbmcACbdnPbEflr3MSslw//HjcDh2onm8JyukxOA3HMUkRoZWh6R+3OLQFgaeBK483EZ/js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SubIErM6; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7F9621F000E9;
	Tue, 30 Jun 2026 17:07:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782839226;
	bh=KUt9xvrobGC1g8ep6yGQsb6675NZBAP2ejFkWc8jgUQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=SubIErM6OY/nb2I7a7mQa5SIcfQTpE4YTLOyvIpyeIB6PeUG3Lv4jF54i2MGGmdCh
	 wgl9ejCIKKFHKzm3brvHXwKMxMAyx+Hm+ohaq8CLBP4BuBp7+RssCBNkLGNDNFrh1s
	 Xp8obx4mdhNWPOSpPO+e6vcGDC2FHX0eqoolO6JD+NQ29QBbmU+8EfMqs0B/awPTZi
	 zgHwv9uiKZRWH2/c+3GCb7oAdOiyS2TAJC2XRKQ4QXErxmmREKGcUsADIZTUzmc5+Y
	 EnJGY7PSkzy/M2X09lRHaWizlACWC0UghIHGpS1r1UkHFCGslJibnLf1bkH6RcLjZz
	 fzNjBevOQDa6w==
Date: Tue, 30 Jun 2026 18:07:00 +0100
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
Subject: Re: [PATCH 02/10] dt-bindings: mailbox: apple: Add DockChannel
 mailbox
Message-ID: <20260630-tattling-pacify-3b990261b8b5@spud>
References: <20260630-apple-mtp-keyboard-final-v1-0-506d936a1707@gmail.com>
 <20260630-apple-mtp-keyboard-final-v1-2-506d936a1707@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="0g22oMjV9TukVVJO"
Content-Disposition: inline
In-Reply-To: <20260630-apple-mtp-keyboard-final-v1-2-506d936a1707@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
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
	TAGGED_FROM(0.00)[bounces-317979-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,microchip.com:email,spud:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AA8D36E6C5C

--0g22oMjV9TukVVJO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 30, 2026 at 10:54:30PM +1000, Michael Reeves via B4 Relay wrote:
> From: Michael Reeves <michael.reeves077@gmail.com>
>=20
> DockChannel is a FIFO and interrupt block used by Apple coprocessors
> to exchange byte-stream traffic with the AP.
>=20
> Describe it as a mailbox provider so HID and future serial clients can
> use the common mailbox API.
>=20
> Signed-off-by: Michael Reeves <michael.reeves077@gmail.com>
> ---
>  .../bindings/mailbox/apple,dockchannel.yaml        | 75 ++++++++++++++++=
++++++
>  MAINTAINERS                                        |  1 +
>  2 files changed, 76 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/mailbox/apple,dockchannel.=
yaml b/Documentation/devicetree/bindings/mailbox/apple,dockchannel.yaml
> new file mode 100644
> index 000000000000..4f326d8f3d5a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mailbox/apple,dockchannel.yaml

Please name this file matching the t8112 compatible (since that's your
fallback).
Otherwise, this looks good.
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

pw-bot: changes-requested

--0g22oMjV9TukVVJO
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCakP3tAAKCRB4tDGHoIJi
0tpsAP9yh09xpXCe3hdbIXOFLGIAYGngvFJx/GaejeLl6sq6dwEAl0uB3079qxBT
RmiRaPZl5o6Er07zy4XhqIYj9j9MBQE=
=XGKy
-----END PGP SIGNATURE-----

--0g22oMjV9TukVVJO--


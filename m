Return-Path: <devicetree+bounces-316252-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +zeJLBE1P2rfPwkAu9opvQ
	(envelope-from <devicetree+bounces-316252-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 27 Jun 2026 04:27:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 110626D0C91
	for <lists+devicetree@lfdr.de>; Sat, 27 Jun 2026 04:27:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=MLLUejDD;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316252-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316252-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9A62B3034B0F
	for <lists+devicetree@lfdr.de>; Sat, 27 Jun 2026 02:26:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3BA9276049;
	Sat, 27 Jun 2026 02:26:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 971D71E8342;
	Sat, 27 Jun 2026 02:26:48 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782527209; cv=none; b=k0S7+4huujzFwSZNpOoxUcT0ViHlc/NEIde7Kiyb34gquG18T7tKPJU7vidvV7dhV7+wU9nkFT7BMfmlsyMmQuFHFSRwmrgcX/0VkAJi1i0PL5bR/pLdSh34QbrXiFpaRiVqSaq68f2au+nU3B4CkohpxjUz8OzDDux7aS15rI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782527209; c=relaxed/simple;
	bh=sDPHVJjdulQ4r+d8ZcCiNwaQOzZHakjY96t8iqrPOxw=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=cGWQD0g0OEju3U8dSqL/AlWat8NG+Jn70HiLzVS8q3G9PJBsqEJ0sLCq5JSCelOf64ZSxdLjI2uNdev/k7vLsz9t8P4C9JvFLBxm29cvmtVTeHlFdYGu87rz5gjld8Vlb7qjPBkpqoQfl5+Mua1lc4liH3SwAcl6M0jS+EznYBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MLLUejDD; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 163141F000E9;
	Sat, 27 Jun 2026 02:26:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782527208;
	bh=pgRkJcI6ARJUQs4Qfha5UWNrGrgc+e1+I8b/XPfz1KU=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject;
	b=MLLUejDD4JLsy/BevEddQ+r7TXeSR5tcr+HmyM4uK35fgzDkPmn78UCF2d4ibJ6Lg
	 BGMKqYKc3P2fHDsBbIxmY5SNOa98XywpUWiXPSMQa8XdyUEB/1u36kLsJMeEMZzGqb
	 FTomNopRUPbd4Mc3Ixy07zwF7rTMEQWg8IxO0ZTvC6CDxYf8hIMWORlcTzGT/nMKum
	 RU671g045UxIytYge8Ux+ckaOqZcXRXTtD60a5GXV960EVrRRxl2D2tb2SINn0sCGK
	 zPt1/0n/4udrGHN/UdDQ7M9UEg/Yu7bPlMchDX1ywooOFgpFlotyIW+ufS4PzHgqmE
	 pgyY2Wr1W+bcA==
Date: Fri, 26 Jun 2026 21:26:47 -0500
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: jic23@kernel.org, krzk+dt@kernel.org, nuno.sa@analog.com, 
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 dlechner@baylibre.com, linux-kernel@vger.kernel.org, 
 u.kleine-koenig@baylibre.com, conor+dt@kernel.org, andy@kernel.org
To: Nikhil Gautam <nikhilgtr@gmail.com>
In-Reply-To: <20260627005843.7786-2-nikhilgtr@gmail.com>
References: <20260627005843.7786-1-nikhilgtr@gmail.com>
 <20260627005843.7786-2-nikhilgtr@gmail.com>
Message-Id: <178252720722.3777229.4684783659523044583.robh@kernel.org>
Subject: Re: [PATCH v3 1/2] dt-bindings: iio: magnetometer: add Melexis
 MLX90393
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-316252-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:jic23@kernel.org,m:krzk+dt@kernel.org,m:nuno.sa@analog.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:dlechner@baylibre.com,m:linux-kernel@vger.kernel.org,m:u.kleine-koenig@baylibre.com,m:conor+dt@kernel.org,m:andy@kernel.org,m:nikhilgtr@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 110626D0C91


On Sat, 27 Jun 2026 06:28:42 +0530, Nikhil Gautam wrote:
> Add devicetree bindings for the Melexis MLX90393
> 3-axis magnetometer and temperature sensor.
> 
> The device supports magnetic field and temperature
> measurements over I2C and SPI interfaces.
> 
> This initial binding documents the I2C interface.
> 
> Signed-off-by: Nikhil Gautam <nikhilgtr@gmail.com>
> ---
>  .../iio/magnetometer/melexis,mlx90393.yaml    | 54 +++++++++++++++++++
>  MAINTAINERS                                   |  6 +++
>  2 files changed, 60 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/iio/magnetometer/melexis,mlx90393.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/iio/magnetometer/melexis,mlx90393.example.dtb: magnetometer@c (melexis,mlx90393): 'vdd-supply' is a required property
	from schema $id: http://devicetree.org/schemas/iio/magnetometer/melexis,mlx90393.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/iio/magnetometer/melexis,mlx90393.example.dtb: magnetometer@c (melexis,mlx90393): 'vddio-supply' is a required property
	from schema $id: http://devicetree.org/schemas/iio/magnetometer/melexis,mlx90393.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260627005843.7786-2-nikhilgtr@gmail.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.



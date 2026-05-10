Return-Path: <devicetree+bounces-295122-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iCpeCFaWAGrUKgEAu9opvQ
	(envelope-from <devicetree+bounces-295122-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 10 May 2026 16:29:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 76405504977
	for <lists+devicetree@lfdr.de>; Sun, 10 May 2026 16:29:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3A13C300AB2F
	for <lists+devicetree@lfdr.de>; Sun, 10 May 2026 14:29:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94D8F39D6CE;
	Sun, 10 May 2026 14:29:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fsNoK5Jf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E73B39BFFA;
	Sun, 10 May 2026 14:29:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778423378; cv=none; b=OVWHhiV3/sEmIA/Mv6h+hy53cDD3rK8EAdTEUuNtYfWhMEmh4ppzpNLSwgeQjE/Bz4pKhoxGC/Oc0o3y5TcE9FaCf6seOwK+t1Wo4oFF4hKx2QTtZYV2WppM6fIjiI8bDe1vHmG0GsXuBdyTlE2OicqsiMvKNMQCisNVooLTW6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778423378; c=relaxed/simple;
	bh=J9x5Zq1feVMCz1e9blpo9bKtXjLvRhT6RXenXzKJpf8=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=HdeQX73nci6Savscuq6TVP/J8tfAbojJAmL/znmPAfyCMcN10QvfoDp6bnXORKH7885+8paMBk8M5TULg0dHunupa4MWNnkoVs2/nhgPwtCb8Z4pV5tXr8C/V8Wdm5PIeUfBZh1n0pxoRf+vLInffwnQ7MWoo+/zMD/UfftbOcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fsNoK5Jf; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C0D56C2BCB8;
	Sun, 10 May 2026 14:29:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778423378;
	bh=J9x5Zq1feVMCz1e9blpo9bKtXjLvRhT6RXenXzKJpf8=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=fsNoK5JfADw841vdnXE/g+KKIiFiOXAKlxi9AuHUdkXsjaQ/j8lxfVEAbKdf833qW
	 bBdqvL1tKquII/vyO5XfBwD2uYKLFDuaQWCGKT2aEU8fmN91zKponkZfFz2W4eSAa+
	 kmt1a4lJ3JyxLqMrn4buMFyHKUvbtjidRElrrpKR0Yn9doEYlUjXiUJQHfT2A49gsu
	 E+0a6rRVYGS3FU8hya851KL2vcZKrGfiFEh30g0jAIOQxi/gex7ToTIh9q48mTQwH9
	 gd6LaQi4gsTYROFNhgINY9PnhwC2CAGsWQZEX63RHCHDhOxGj+08uApiameLjOvFZu
	 eDos1MjST5rqw==
Date: Sun, 10 May 2026 09:29:35 -0500
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, 
 Samuel Holland <samuel@sholland.org>, Chen-Yu Tsai <wens@kernel.org>, 
 linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
 Jonathan Cameron <jic23@kernel.org>, Maksim Kiselev <bigunclemax@gmail.com>, 
 Andy Shevchenko <andy@kernel.org>, David Lechner <dlechner@baylibre.com>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-iio@vger.kernel.org, 
 linux-sunxi@lists.linux.dev, =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 devicetree@vger.kernel.org
To: Michal Piekos <michal.piekos@mmpsystems.pl>
In-Reply-To: <20260510-sunxi-a523-gpadc-v1-1-4f6b0f4000fb@mmpsystems.pl>
References: <20260510-sunxi-a523-gpadc-v1-0-4f6b0f4000fb@mmpsystems.pl>
 <20260510-sunxi-a523-gpadc-v1-1-4f6b0f4000fb@mmpsystems.pl>
Message-Id: <177842337581.2778271.6474369403443019233.robh@kernel.org>
Subject: Re: [PATCH 1/3] dt-bindings: iio: adc: Add GPADC for Allwinner
 A523
X-Rspamd-Queue-Id: 76405504977
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,sholland.org,kernel.org,vger.kernel.org,gmail.com,baylibre.com,lists.linux.dev,analog.com];
	TAGGED_FROM(0.00)[bounces-295122-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mmpsystems.pl:email]
X-Rspamd-Action: no action


On Sun, 10 May 2026 14:57:22 +0200, Michal Piekos wrote:
> Add support for the GPADC for the Allwinner A523. It differs from the
> D1/T113s/R329/T507 by having two clocks.
> 
> Signed-off-by: Michal Piekos <michal.piekos@mmpsystems.pl>
> ---
>  .../iio/adc/allwinner,sun20i-d1-gpadc.yaml         | 37 +++++++++++++++++++++-
>  1 file changed, 36 insertions(+), 1 deletion(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/iio/adc/allwinner,sun20i-d1-gpadc.yaml: allOf:0:then:properties:clocks: {'minItems': 2, 'maxItems': 2, 'items': [{'description': 'Bus clock'}, {'description': 'Module clock'}]} should not be valid under {'required': ['maxItems']}
	hint: "maxItems" is not needed with an "items" list
	from schema $id: http://devicetree.org/meta-schemas/items.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/iio/adc/allwinner,sun20i-d1-gpadc.yaml: allOf:0:then:properties:clocks: 'oneOf' conditional failed, one must be fixed:
	False schema does not allow 2
	[{'description': 'Bus clock'}, {'description': 'Module clock'}] is too long
	[{'description': 'Bus clock'}, {'description': 'Module clock'}] is too short
	1 was expected
	hint: "minItems" is only needed if less than the "items" list length
	from schema $id: http://devicetree.org/meta-schemas/items.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/iio/adc/allwinner,sun20i-d1-gpadc.yaml: allOf:0:then:properties:clock-names: {'minItems': 2, 'maxItems': 2, 'items': [{'const': 'bus'}, {'const': 'mod'}]} should not be valid under {'required': ['maxItems']}
	hint: "maxItems" is not needed with an "items" list
	from schema $id: http://devicetree.org/meta-schemas/items.yaml
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/iio/adc/allwinner,sun20i-d1-gpadc.yaml: allOf:0:then:properties:clock-names: 'oneOf' conditional failed, one must be fixed:
	False schema does not allow 2
	[{'const': 'bus'}, {'const': 'mod'}] is too long
	[{'const': 'bus'}, {'const': 'mod'}] is too short
	1 was expected
	hint: "minItems" is only needed if less than the "items" list length
	from schema $id: http://devicetree.org/meta-schemas/items.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260510-sunxi-a523-gpadc-v1-1-4f6b0f4000fb@mmpsystems.pl

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


